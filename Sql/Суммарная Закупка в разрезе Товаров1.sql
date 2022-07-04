/*
Alias: WORK
LiveAnswer: FALSE

*/
SELECT T.TovarName, T.Fasovka, P.ProizvName,
               Rec.Zena as Цена,
               N."DocDate" as Дата,
               A.AgentName,
               N.DocN  as NНк,
               Rec.Kolvo as Колво,
               (Rec.Kolvo*Rec.Zena) as Сумма

From     Nakl N, RecNakl Rec, Tovar T, Proizv P,  Agent A


where   N.Cod=Rec.NaklCod  and N.Kind=1  and Rec.TovarCod=T.Cod  
             and T.ProizvCod=P.Cod
             and N.AgentCodFrom=A.Cod

Order by  T.TovarName, T.Fasovka, P.ProizvName, N."DocDate"