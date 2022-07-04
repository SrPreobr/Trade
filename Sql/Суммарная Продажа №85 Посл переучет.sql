/*
Alias: WORK
LiveAnswer: FALSE

*/
/*  */
SELECT                          T.TovarName,T.Fasovka, P.ProizvName, A.AgentName,
                                            /*Pr.Kolvo, Pr.Zena,*/
		 avg(Ost1.Kolvo*Ost1.Zena) as СумаОстат1,
                                           sum(Pr.Kolvo*Pr.Zena) as СумаПрихода,
		 avg(Ost2.Kolvo*Ost2.Zena) as СумаОстат2,

		 sum(Pr.Kolvo*Pr.Zena)+(Ost1.Kolvo*Ost1.Zena)-(Ost2.Kolvo*Ost2.Zena) as Продано,
		 sum(Pr.Kolvo*(Pr.Zena-Pr.Zena0))/sum(Pr.Kolvo*Pr.Zena) as PerCent,
  Sum(Pr.Kolvo*(Pr.Zena-Pr.Zena0))+Ost1.Kolvo*(Ost1.Zena-Ost1.Zena0) -Ost2.Kolvo*(Ost2.Zena-Ost2.Zena0) as Разница,
      
                                           (sum(Pr.Kolvo*Pr.Zena)+(Ost1.Kolvo*Ost1.Zena)-(Ost2.Kolvo*Ost2.Zena))*(sum(Pr.Kolvo*(Pr.Zena-Pr.Zena0))/sum(Pr.Kolvo*Pr.Zena)) as Доход

From   Nakl NPr, RecNakl Pr,
		 Nakl NOst1, RecNakl Ost1,
		 Nakl NOst2, RecNakl Ost2,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
                                            NPr.UnitCodTo=3 and   /* №85*/

                                            NPr.DocN>=126 and NPr.DocN<=203 and
 
		 NOst1.Cod=Ost1.NaklCod and NOst1.Cod=826  and
		 NOst2.Cod=Ost2.NaklCod and NOst2.Cod=1239 and
 
                                           Ost1.TovarCod=Pr.TovarCod and
                                           Ost2.TovarCod=Pr.TovarCod  

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, A.AgentName/*,
                                            Pr.Kolvo, Pr.Zena*/; 
	
