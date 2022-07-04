/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT                          T.TovarName,
                                           sum(Pr.Kolvo*Pr.Zena) as СумаПрихода,
		 sum(Ost.Kolvo*Ost.Zena) as СумаОстатока,
		 sum(Pr.Kolvo*Pr.Zena)- sum(Ost.Kolvo*Ost.Zena) as Продано,
		 (sum(Pr.Kolvo)-sum(Ost.Kolvo))*(T.ZenaMelkOpt-T.ZenaZakupka) as Доход

From   Nakl NPr, RecNakl Pr,
		 Nakl NOst, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and NOst.DocN=5 and
                                           NPr.DocN>=55 and 
                                           Ost.TovarCod=Pr.TovarCod and
		 (T.ZenaZakupka<>0)and  (Not T.ZenaZakupka is Null) 

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName; 
	
