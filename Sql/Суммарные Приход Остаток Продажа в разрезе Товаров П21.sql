/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT      T.TovarName, T.Fasovka, P.ProizvName, A.AgentName,
                                           T.ZenaZakupka as �����������,
		 sum(Pr.Kolvo)  as ������,    
                                            sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo) as �������������,
                                            sum(Pr.Kolvo*Pr.Zena) as �����������,
		 Ost.Kolvo as �������,       
                                            Ost.Zena as �������,		 
		 avg(Ost.Kolvo*Ost.Zena) as �����������,
		 sum(Pr.Kolvo)-Ost.Kolvo as �������,
		 sum(Pr.Kolvo*Pr.Zena)- Ost.Kolvo*Ost.Zena as ������������,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo)-T.ZenaZakupka) as �����,
                                            Avg((Ost.Zena-T.ZenaZakupka)/Ost.Zena) as �������

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
                                           max(T.ZenaZakupka) as �����������,
		 sum(Pr.Kolvo)  as ������,    
                                            sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo) as �������������,
                                            sum(Pr.Kolvo*Pr.Zena) as �����������,
		 max(Ost.Kolvo) as �������,       
                                           max(Ost.Zena) as �������,		 
		 sum(Ost.Kolvo*Ost.Zena) as �����������,
		 sum(Pr.Kolvo)-Ost.Kolvo as �������,
		 sum(Pr.Kolvo*Pr.Zena- Ost.Kolvo*Ost.Zena) as ������������,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as �����,
                                            Avg((Ost.Zena-T.ZenaZakupka)/Ost.Zena) as �������

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

