/*
Alias: WORK
LiveAnswer: FALSE
*/

Update Tovar
Set EditDate= M
where Cod=
  (Select T.Cod, max(N.DocDate) as M
   from   Tovar T, Nakl N, RecNakl R
   where (R.NaklCod=N.Cod) and (R.TovarCod=T.Cod)
   group by T.Cod)
