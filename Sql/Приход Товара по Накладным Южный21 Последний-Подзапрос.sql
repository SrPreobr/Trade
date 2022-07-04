/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, 
		 Pr.Zena
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where                                NPr.Cod=Pr.NaklCod and 
                                            (NPr.Kind=3  )  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=6 and
                                           NPr."DocDate" in 
                                           ( Select Max(N.DocDate)
                                             From RecNakl R, Nakl N
                                            where 
                                                         R.NaklCod=N.Cod and R.TovarCod=T.Cod
                                           group by R.TovarCod
                                            )
