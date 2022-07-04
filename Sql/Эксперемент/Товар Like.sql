/*
Alias: WORK
LiveAnswer: FALSE

*/

Select  T.TovarName, T.Cod, T.Fasovka
from   Tovar T, Nakl N, RecNakl R
where (R.NaklCod=N.Cod) and (R.TovarCod=T.Cod) and TovarName Like '%AB%'
group by T.TovarName, T.Cod, T.Fasovka
