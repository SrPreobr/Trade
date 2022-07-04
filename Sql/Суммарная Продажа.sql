/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, 
		 T.ZenaZakupka as СпрЗакупка,
		 T.ZenaMelkOpt,
		 sum(Pr.Kolvo) as Приход,
		 Ost.Kolvo as Остаток, sum(Pr.Kolvo)-Ost.Kolvo as Продано,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as Доход,
		 Avg(1-T.ZenaZakupka/T.ZenaMelkOpt)  as PerCent

From   Nakl NPr,Nakl NOst, RecNakl Pr, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and NOst.DocN=2 and Ost.TovarCod=Pr.TovarCod

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, T.ZenaZakupka, T.ZenaMelkOpt, Ost.Kolvo
