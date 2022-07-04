/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT '.����� ',T.TovarName, T.Fasovka, P.ProizvName,
		 T.ZenaZakupka as ����������,		 
                                            sum(Pr.Kolvo) as ������,
		 T.ZenaMelkOpt,
                                            sum(Pr.Kolvo*Pr.Zena) as ������������,
                                            Ost.Kolvo as �������,
                                            Avg(Ost.Kolvo*Ost.Zena) as ������������,
                                            sum(Pr.Kolvo*Pr.Zena)-(Ost.Kolvo*Ost.Zena) as ������������
                                            
		 
From   Nakl NPr, RecNakl Pr,		 
             Tovar T, Proizv P,
             Nakl NOst, RecNakl Ost

where  NPr.Cod=Pr.NaklCod and 
             ((NPr.Kind=3 and NPr.DocN>=55)  or (NPr.Kind=4 and NPr.DocN=4)) and		 
             Pr.TovarCod=T.Cod and 
             T.ProizvCod=P.Cod and 
             NPr.UnitCodTo=3 and

             Ost.TovarCod=Pr.TovarCod and
             NOst.Cod=Ost.NaklCod and
             (NOst.Kind=4 and NOst.DocN=5) and
            NOst.UnitCodTo=3

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, T.ZenaZakupka, T.ZenaMelkOpt, Ost.Kolvo


