/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT         Ost.N, T.Cod, T.TovarName, T.Fasovka, P.ProizvName, 
                          Ost.Kolvo, Ost.Zena, Avg(Ost.Kolvo*Ost.Zena) as —ÛÏÏ‡,
                          Avg(1-Ost.Zena0/Ost.Zena) as PerCent

From                Nakl N, RecNakl Ost, Tovar T, Proizv P
where              N.Cod=Ost.NaklCod and 
                          N.Kind=4 and 
                          N.Cod=826 and 
                          Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                          T.AgentCod=11

GROUP BY  Ost.N, T.Cod, T.TovarName, T.Fasovka, P.ProizvName, Ost.Kolvo,Ost.Zena 

Union

SELECT         Max(Ost.N),Max( T.Cod),  Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), 
                          Max(Ost.Kolvo), Max(Ost.Zena), Sum(Ost.Kolvo*Ost.Zena) as —ÛÏÏ‡,
                         (1-Sum(Ost.Kolvo*Ost.Zena0)/Sum(Ost.Kolvo*Ost.Zena)) as PerCent

From                Nakl N, RecNakl Ost, Tovar T, Proizv P
where              N.Cod=Ost.NaklCod and
                          N.Kind=4 and
                          N.Cod=826 and 
                         Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                          T.AgentCod=11

