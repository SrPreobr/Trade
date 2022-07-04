/*
Alias: WORK
LiveAnswer: FALSE

*/

Select   min(R.Cod) as MinCod
From RecNakl R
where R.NaklCod in ( select N.Cod
                                  from    Nakl N
                                  where (N.DocDate > '01.01.2016') and (N.DocDate < '15.01.2016'))
