/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT  T.TovarName, T.Cod, T.Fasovka, P.ProizvName, N.DocDate, R.Kolvo, R.Zena0, R.Zena
From    Nakl N, RecNakl R, Tovar T, Proizv P
where   N.Cod = R.NaklCod and (N.Kind=3 ) and R.TovarCod=T.Cod and T.ProizvCod=P.Cod and
               (R.Zena0 is null)
order by T.TovarName, T.Fasovka, P.ProizvName, N.DocDate