/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,A.AgentName, 
		 T.ZenaZakupka as СпрЗакупка,
		 sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo) as РеалЗакупка,
		 T.ZenaMelkOpt, sum(Zak.Kolvo) as Закуплено,
		 sum(Pr.Kolvo) as Приход,Ost.Kolvo as Остаток, sum(Pr.Kolvo)-Ost.Kolvo as Продано,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo)) as Доход

From   Nakl NPr,  RecNakl Pr,
		 Nakl NOst, RecNakl Ost,
		 Nakl NZak, RecNakl Zak,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
		 NZak.Cod=Zak.NaklCod and NZak.Kind=1 and Zak.TovarCod=Pr.TovarCod and
		 NZak.Cod=(select Min(NZakup.Cod)
					  from   Nakl Nzakup
					  where  NZakup.Cod=Zak.NaklCod and NZakup.Kind=1 and Zak.TovarCod=Pr.TovarCod 
					  ) and		 
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and NOst.DocN=2 and Ost.TovarCod=Pr.TovarCod

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, 
			T.ZenaZakupka, T.ZenaMelkOpt, Ost.Kolvo, Pr.TovarCod, Zak.TovarCod

 
