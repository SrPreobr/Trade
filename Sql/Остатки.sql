/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT         Ost.N, T.TovarName, T.Fasovka, P.ProizvName, 
                          Ost.Kolvo, Ost.Zena, Avg(Ost.Kolvo*Ost.Zena) as —ÛÏÏ‡

From                Nakl N, RecNakl Ost, Tovar T, Proizv P

where              N.Cod=Ost.NaklCod and 
                          N.Kind=4 and 
                          N.DocN=4 and
                          N.UnitCodTo=9 and    
                          Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod

GROUP BY  Ost.N, T.TovarName, T.Fasovka, P.ProizvName, Ost.Kolvo,Ost.Zena 

Union

SELECT         Max(Ost.N), Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), 
                          Max(Ost.Kolvo), Max(Ost.Zena), Sum(Ost.Kolvo*Ost.Zena) as —ÛÏÏ‡

From                Nakl N, RecNakl Ost, Tovar T, Proizv P
where              N.Cod=Ost.NaklCod and
                          N.Kind=4 and
                          N.DocN=4 and
                          N.UnitCodTo=9 and 
                         Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod

