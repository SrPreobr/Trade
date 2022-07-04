/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, Max(NPr."DocDate"),Max(Pr.Kolvo) as Колво, 
		  Pr.Zena
                                            
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where                                NPr.Cod=Pr.NaklCod and 
                                            (NPr.Kind=3  )  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=6 and NPr."DocDate" = Max(NPr."DocDate")

Group by T.TovarName, T.Fasovka, P.ProizvName, Pr.Zena