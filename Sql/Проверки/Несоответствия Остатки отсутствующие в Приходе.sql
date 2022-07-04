/*
Alias: WORK
LiveAnswer: FALSE

*/
 select distinct T.TovarName,T.Fasovka, P.ProizvName, A.AgentName/*, count(T.TovarName)*/
 from  Nakl NPr, RecNakl RPr,Tovar T, Proizv P,Agent A

 where RPr.NaklCod=NPr.Cod and ( NPr.UnitCodTo=3 ) and /* 3-85, 6-21*/
              RPr.TovarCod=T.Cod and
              T.ProizvCod=P.Cod and
             T.AgentCod=A.Cod and

             RPr.TovarCod Not in

            (select ROst.TovarCod
             from      Nakl NOst,  RecNakl ROst
              where ROst.NaklCod=NOst.Cod and NOst.Cod=1239
            )
/*group by T.TovarName,T.Fasovka, P.ProizvName, A.AgentName*/
order by T.TovarName