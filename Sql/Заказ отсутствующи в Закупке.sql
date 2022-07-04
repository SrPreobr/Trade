/*
Alias: WORK
LiveAnswer: FALSE

*/

select RZakaz.N, T.TovarName
from     Nakl NZakaz,  RecNakl RZakaz,Tovar T
where  (  RZakaz.TovarCod Not in 
                                           (select RZakup.TovarCod
		  from Nakl NZakup, RecNakl RZakup
                                             where RZakup.NaklCod=NZakup.Cod and ( NZakup.Cod=353 )
                                            )
                ) 
                  and RZakaz.NaklCod=NZakaz.Cod and NZakaz.Cod=181 and RZakaz.TovarCod=T.Cod

order by  T.TovarName