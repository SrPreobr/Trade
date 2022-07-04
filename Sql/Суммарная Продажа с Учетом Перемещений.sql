/*
Alias: WORK
LiveAnswer: FALSE

*/
/* считает неправильно из-за размножения*/
SELECT T.TovarName,T.Fasovka, P.ProizvName, A.AgentName,
                                            Ost2.Zena as Цена, 
		 sum(Perem.Kolvo*Perem.Zena) as СумаПеремещ,
     sum(Rec.Kolvo*Rec.Zena) as СумаПрихода,
		 avg(Ost2.Kolvo*Ost2.Zena) as СумаОстат2,

		 sum(Rec.Kolvo*Rec.Zena)-sum(Perem.Kolvo*Perem.Zena)-(Ost2.Kolvo*Ost2.Zena) as Продано,
		 sum(Rec.Kolvo*(Rec.Zena-Rec.Zena0))/sum(Rec.Kolvo*Rec.Zena) as PerCent,
     (sum(Rec.Kolvo*Rec.Zena)-sum(Perem.Kolvo*Perem.Zena)-(Ost2.Kolvo*Ost2.Zena))*(sum(Rec.Kolvo*(Rec.Zena-Rec.Zena0))/sum(Rec.Kolvo*Rec.Zena)) as Доход
     
/* ,    Sum(Rec.Kolvo*(Rec.Zena-Rec.Zena0))+Perem.Kolvo*(Perem.Zena-Perem.Zena0) -Ost2.Kolvo*(Ost2.Zena-Ost2.Zena0) as Разница*/
      

From     Nakl N, RecNakl Rec, Tovar T, Proizv P,
         Nakl Per, RecNakl Perem,
         Nakl O2, RecNakl Ost2,
         Agent A

where   N.Cod=Rec.NaklCod and
             N.Kind=3 and
             N.AgentCodTo=:AgentCod1 and
             N.UnitCodTo=:UnitCod1   and
             ((N.DocDate>:DocDate11) or ((N.DocDate=:DocDate111) and (N.DocTime>:DocTime11))) and
             ((N.DocDate<:DocDate12) or ((N.DocDate=:DocDate122) and (N.DocTime<:DocTime12))) and

             Rec.TovarCod=T.Cod and T.ProizvCod=P.Cod and
             T.AgentCod=A.Cod and

           /*  N.Cod> Per.Cod and   */
             
             Per.Cod=Perem.NaklCod and
             Per.Kind=5 and Per.UnitCodFrom=:UnitCod3 and Per.AgentCodFrom=:AgentCod3 and
             Perem.TovarCod=T.Cod and
             ((Per.DocDate>:DocDate21) or ((Per.DocDate=:DocDate211) and (Per.DocTime>:DocTime21))) and
             ((Per.DocDate<:DocDate22) or ((Per.DocDate=:DocDate222) and (Per.DocTime<:DocTime22))) and

             O2.Cod=Ost2.NaklCod and
             O2.Kind=4 and O2.UnitCodTo=:UnitCod4 and O2.AgentCodTo=:AgentCod4 and
             O2.DocN=:ODocN2 and
             Ost2.TovarCod=T.Cod

GROUP BY  T.TovarName, T.Fasovka, P.ProizvName, A.AgentName , Ost2.Zena
ORDER BY  11  Desc
