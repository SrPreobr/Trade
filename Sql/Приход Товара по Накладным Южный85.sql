/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, NPr.DocN, NPr."DocDate", Pr.Kolvo as �����, 
		 Pr.Zena0 as �������,		 
		 Pr.Zena,
                                            (Pr.Kolvo*Pr.Zena) as ������������
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=3 and
                                           NPr.DocN>0


UNION

Select  Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), Max(NPr.DocN), Max(NPr."DocDate"), Max(Pr.Kolvo) as �����, 
		 Max( Pr.Zena0) as �������,		 
		 Max(Pr.Zena),
                                            sum(Pr.Kolvo*Pr.Zena) as ������������
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=3 and
                                           NPr.DocN>0

