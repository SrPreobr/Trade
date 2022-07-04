/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' �����', T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, 
		 sum(Pr.Kolvo) as ������,
		 T.ZenaZakupka as ����������,
                                            sum(Pr.Kolvo)*T.ZenaZakupka as ������������,
                                            sum(Pr.Kolvo)*T.ZenaMelkOpt as ������������,

		 Ost.Kolvo as �������,
 
                                            sum(Pr.Kolvo)-Ost.Kolvo as �������,
		 T.ZenaMelkOpt,
                                            (sum(Pr.Kolvo)-Ost.Kolvo)*T.ZenaMelkOpt as ������������,

		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as �����

From   Nakl NPr,Nakl NOst, RecNakl Pr, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
                                            NPr.DocN<55 and
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and 
                                           NOst.DocN=4 and NOst.UnitCodTo=3 and
                                           Ost.TovarCod=Pr.TovarCod and
                                            NPr.UnitCodTo=3  
								  
GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName, 
		T.ZenaZakupka, T.ZenaMelkOpt, Ost.Kolvo

Union

SELECT '.�����', Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), Max(A.AgentName), 
		 sum(Pr.Kolvo) as ������,
		 Max(T.ZenaZakupka) as ����������,
                                           sum(Pr.Kolvo)*T.ZenaZakupka as ������������,
                                            sum(Pr.Kolvo)*T.ZenaMelkOpt as ������������,

		 Max(Ost.Kolvo) as �������, 

                                            sum(Pr.Kolvo) as �������,
		 Max(T.ZenaMelkOpt),
                                            (sum(Pr.Kolvo)-Ost.Kolvo)*T.ZenaMelkOpt as ������������,

		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as �����

From   Nakl NPr,Nakl NOst, RecNakl Pr, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and
                                            NPr.DocN<55 and
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and 
                                            NOst.DocN=4 and 
                                            Ost.TovarCod=Pr.TovarCod and
                                            NPr.UnitCodTo=3 