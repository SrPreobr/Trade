/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT      T.TovarName, T.Fasovka, P.ProizvName, A.AgentName,
                                           T.ZenaZakupka as ЦенаЗакупка,
		 sum(Pr.Kolvo)  as Приход,    
                                            sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo) as СрЦенаПрихода,
                                            sum(Pr.Kolvo*Pr.Zena) as СумаПрихода,
		 Ost.Kolvo as Остаток,       
                                            Ost.Zena as ЦенаОст,		 
		 avg(Ost.Kolvo*Ost.Zena) as СумаОстатка,
		 sum(Pr.Kolvo)-Ost.Kolvo as Продано,
		 sum(Pr.Kolvo*Pr.Zena)- Ost.Kolvo*Ost.Zena as СуммаПродажи,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo)-T.ZenaZakupka) as Доход,
                                            Avg((Ost.Zena-T.ZenaZakupka)/Ost.Zena) as Процент

From                                  Nakl NPr,  RecNakl Pr,
		  Nakl NOst, RecNakl Ost,
		  Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and 
                                            NOst.DocN=1 and 
                                            Ost.TovarCod=Pr.TovarCod and 
                                            NPr.UnitCodTo=6 and
                                            NPr.DocN<=49


GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, T.ZenaZakupka,
			Ost.Kolvo, Ost.Zena 

UNION

SELECT      max(T.TovarName), max(T.Fasovka), max(P.ProizvName), max(A.AgentName),
                                           max(T.ZenaZakupka) as ЦенаЗакупка,
		 sum(Pr.Kolvo)  as Приход,    
                                            sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo) as СрЦенаПрихода,
                                            sum(Pr.Kolvo*Pr.Zena) as СумаПрихода,
		 max(Ost.Kolvo) as Остаток,       
                                           max(Ost.Zena) as ЦенаОст,		 
		 sum(Ost.Kolvo*Ost.Zena) as СумаОстатка,
		 sum(Pr.Kolvo)-Ost.Kolvo as Продано,
		 sum(Pr.Kolvo*Pr.Zena- Ost.Kolvo*Ost.Zena) as СуммаПродажи,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as Доход,
                                            Avg((Ost.Zena-T.ZenaZakupka)/Ost.Zena) as Процент

From                                  Nakl NPr,  RecNakl Pr,
		  Nakl NOst, RecNakl Ost,
		  Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and 
                                            NOst.DocN=1 and 
                                            Ost.TovarCod=Pr.TovarCod and 
                                            NPr.UnitCodTo=6 and
                                            NPr.DocN<=49

