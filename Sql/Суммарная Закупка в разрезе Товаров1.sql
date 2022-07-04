/*
Alias: WORK
LiveAnswer: FALSE

*/
SELECT T.TovarName, T.Fasovka, P.ProizvName,
               Rec.Zena as ����,
               N."DocDate" as ����,
               A.AgentName,
               N.DocN  as N��,
               Rec.Kolvo as �����,
               (Rec.Kolvo*Rec.Zena) as �����

From     Nakl N, RecNakl Rec, Tovar T, Proizv P,  Agent A


where   N.Cod=Rec.NaklCod  and N.Kind=1  and Rec.TovarCod=T.Cod  
             and T.ProizvCod=P.Cod
             and N.AgentCodFrom=A.Cod

Order by  T.TovarName, T.Fasovka, P.ProizvName, N."DocDate"