/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT         Ost.N, T.TovarName, T.Fasovka, P.ProizvName, 
                          Ost.Kolvo, Ost.Zena, (Ost.Kolvo*Ost.Zena) as Сумма,

                          Ost1.Kolvo, Ost1.Zena, (Ost1.Kolvo*Ost1.Zena) as Сумма1,
                         (Ost1.Kolvo*Ost1.Zena)- (Ost.Kolvo*Ost.Zena) as Разн

From                RecNakl Ost, Tovar T, Proizv P,
                          RecNakl Ost1

where              Ost.NaklCod=8928 and
                          Ost.TovarCod=T.Cod and
                          T.ProizvCod=P.Cod
and
                          Ost1.NaklCod=9945 and
                          Ost1.TovarCod=T.Cod 
                                         
ORDER  BY   T.TovarName, T.Fasovka

