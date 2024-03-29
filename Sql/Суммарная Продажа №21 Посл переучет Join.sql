/*
Alias: WORK
LiveAnswer: FALSE

*/
/*  */
SELECT                          T.TovarName,T.Fasovka, P.ProizvName, A.AgentName,
                                            /*Pr.Kolvo, Pr.Zena,*/
		 avg(Ost1.Kolvo*Ost1.Zena) as ���������1,
                                           sum(Pr.Kolvo*Pr.Zena) as �����������,
		 avg(Ost2.Kolvo*Ost2.Zena) as ���������2,

		 sum(Pr.Kolvo*Pr.Zena)+(Ost1.Kolvo*Ost1.Zena)-(Ost2.Kolvo*Ost2.Zena) as �������,
		 sum(Pr.Kolvo*(Pr.Zena-Pr.Zena0))/sum(Pr.Kolvo*Pr.Zena) as PerCent,
                                           (sum(Pr.Kolvo*Pr.Zena)+(Ost1.Kolvo*Ost1.Zena)-(Ost2.Kolvo*Ost2.Zena))*(sum(Pr.Kolvo*(Pr.Zena-Pr.Zena0))/sum(Pr.Kolvo*Pr.Zena)) as �����

From                                ( RecNakl Ost1 Full Join RecNakl Pr
			  on Ost1.TovarCod=Pr.TovarCod ),
                                            Nakl NPr, 
		 Nakl NOst1, 
		 Nakl NOst2, RecNakl Ost2,
		 Tovar T, Proizv P, Agent A

where  
 
                                           
                                           Ost2.TovarCod=Pr.TovarCod  and

                                           Pr.TovarCod=T.Cod and 

T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
                                            NPr.UnitCodTo=6 and   /* �21*/

                                            NPr.DocN>=63 and NPr.DocN<=136 and
 
		 NOst1.Cod=Ost1.NaklCod and NOst1.Cod=829  and
		 NOst2.Cod=Ost2.NaklCod and NOst2.Cod=1249 

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName/*,
                                            Pr.Kolvo, Pr.Zena*/; 
	
