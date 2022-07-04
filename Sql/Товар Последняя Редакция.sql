/*
Alias: WORK
LiveAnswer: FALSE

*/

Select  T.TovarName, T.Cod, T.Fasovka, max(N.DocDate) as MaxDate
from   Tovar T, Nakl N, RecNakl R
where (R.NaklCod=N.Cod) and (R.TovarCod=T.Cod) 
group by T.TovarName, T.Cod, T.Fasovka
