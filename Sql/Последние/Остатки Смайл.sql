/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT          T.TovarName, T.Fasovka, P.ProizvName, 
                          Ost.Kolvo, Ost.Zena, Avg(Ost.Kolvo*Ost.Zena) as �����,
                          Avg(1-Ost.Zena0/Ost.Zena) as PerCent

From                Nakl N, RecNakl Ost, Tovar T, Proizv P
where              N.Cod=Ost.NaklCod and 
                          N.Kind=4 and 
                          N.Cod=9546 and 
                          Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                          T.AgentCod=26

GROUP BY   T.TovarName, T.Fasovka, P.ProizvName, Ost.Kolvo,Ost.Zena 

Union

SELECT           Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), 
                          Max(Ost.Kolvo), Max(Ost.Zena), Sum(Ost.Kolvo*Ost.Zena) as �����,
                         (1-Sum(Ost.Kolvo*Ost.Zena0)/Sum(Ost.Kolvo*Ost.Zena)) as PerCent

From                Nakl N, RecNakl Ost, Tovar T, Proizv P
where              N.Cod=Ost.NaklCod and
                          N.Kind=4 and
                          N.Cod=9546 and 
                         Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                          T.AgentCod=26

