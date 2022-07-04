/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT      Distinct      T.TovarName, T.Fasovka, P.ProizvName,
		 sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo) as СрЗакупка,
		 sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo) as СрМелкОпт, 
		 sum(Zak.Kolvo) as Закуплено,
		 sum(Pr.Kolvo) as Приход,
		 avg(Ost.Kolvo) as Остаток, 
		 sum(Pr.Kolvo)-Ost.Kolvo as Продано,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo)) as Доход

From                                 Nakl NPr,  RecNakl Pr,
		 Nakl NOst, RecNakl Ost,
		 Nakl NZak, RecNakl Zak,
		 Tovar T, Proizv P, Agent A

where                                T.ProizvCod=P.Cod          and  T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod       and  NPr.Kind=3     and Pr.TovarCod=T.Cod     and 
		 NZak.Cod=Zak.NaklCod and  NZak.Kind=1 and Zak.TovarCod=T.Cod and
		 NOst.Cod=Ost.NaklCod   and  NOst.Kind=4   and Ost.TovarCod=T.Cod  and
		 NOst.DocN=4 and
		 NPr."DocDate" <='23.03.2004' and
		 NZak."DocDate"<='23.03.2004'and
 NPr.DocTime<'23:59:59' and
		 (T.ZenaZakupka<>0) and  (Not T.ZenaZakupka is Null) and
		 NPr.Cod<NZak.Cod and NPr.Cod<NOst.Cod and NZak.Cod<NOst.Cod and 
                                           NPr.UnitCodTo=3 and NOst.UnitCodTo=3 

GROUP BY T.TovarName, T.Fasovka, P.ProizvName 
			

 
