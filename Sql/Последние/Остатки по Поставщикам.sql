/*
Alias: WORK
LiveAnswer: FALSE

*/


SELECT           A.AgentName, Sum(Ost.Kolvo*Ost.Zena0) as Закуп,
                             Sum(Ost.Kolvo*Ost.Zena) as Сумма,
                             1- Sum(Ost.Kolvo*Ost.Zena0)/Sum(Ost.Kolvo*Ost.Zena) as PerCent
                         

From                Nakl N, RecNakl Ost, Tovar T, Agent A
where              N.Cod=Ost.NaklCod and
                          N.Kind=4 and
                          N.Cod=9546 and 
                         Ost.TovarCod=T.Cod and T.AgentCod=A.Cod and
                          T.AgentCod=A.Cod and A.Activ=True

Group by A.AgentName

