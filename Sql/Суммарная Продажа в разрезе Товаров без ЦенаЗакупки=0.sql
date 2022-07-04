/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' Товар', T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, 
		 sum(Pr.Kolvo) as Приход,
		 T.ZenaZakupka as СпрЗакупка,
                                            sum(Pr.Kolvo*T.ZenaZakupka) as СуммаЗакупки,
                                            sum(Pr.Kolvo*T.ZenaMelkOpt) as СуммаПрихода,

		 Ost.Kolvo as Остаток,
 
                                            sum(Pr.Kolvo)-Ost.Kolvo as Продано,
		 T.ZenaMelkOpt,
                                            (sum(Pr.Kolvo)-Ost.Kolvo)*T.ZenaMelkOpt as СуммаПродажи,

		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as Доход

From   Nakl NPr,Nakl NOst, RecNakl Pr, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and 
                                            NPr.Kind=3 and
                                            NPr.UnitCodTo=3 and
                                            NPr.DocN<50 and
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and NOst.DocN=3 and Ost.TovarCod=Pr.TovarCod and
		 (T.ZenaZakupka<>0) and  (Not T.ZenaZakupka is Null) 
								  
GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, 
		T.ZenaZakupka, T.ZenaMelkOpt, Ost.Kolvo

Union

SELECT '.Итого', Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), Max(A.AgentName), 
		 sum(Pr.Kolvo) as Приход,
		 Min(T.ZenaZakupka) as СпрЗакупка,
                                           sum(Pr.Kolvo)*T.ZenaZakupka as СуммаЗакупки,
                                            sum(Pr.Kolvo)*T.ZenaMelkOpt as СуммаПрихода,

		 sum(Ost.Kolvo) as Остаток, 

                                            sum(Pr.Kolvo)-Ost.Kolvo  as Продано,
		 Max(T.ZenaMelkOpt),
                                            (sum(Pr.Kolvo)-Ost.Kolvo)*T.ZenaMelkOpt as СуммаПродажи,

		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as Доход

From   Nakl NPr,Nakl NOst, RecNakl Pr, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and 
                                            NPr.Kind=3 and
                                            NPr.UnitCodTo=3 and
 
                                           NPr.DocN<50 and
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and NOst.DocN=3 and Ost.TovarCod=Pr.TovarCod and
		 (T.ZenaZakupka<>0) and  (Not T.ZenaZakupka is Null) 