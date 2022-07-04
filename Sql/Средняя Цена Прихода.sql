/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,  sum(Pr.Kolvo) as Колво, 
		 sum(Pr.Kolvo*Pr.Zena)/sum(Pr.Kolvo) as СрЦенаПрихода,
		 Min(Pr.Zena)    as MinZena	 , 
                                            Max(Pr.Zena) as MaxZena,
		 (Max(Pr.Zena)-Min(Pr.Zena)) / Max(Pr.Zena) as PerCent,
		 T.ZenaZakupka as ТекущЦенаЗакупки,
		 T.ZenaMelkOpt as ТекущМелкоОпт,
                                            Avg((T.ZenaMelkOpt -T.ZenaZakupka) / T.ZenaMelkOpt )  as PerCentОтПродажи      
		 
From                                 Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where                                NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		 (Pr.Zena<>0) and (Not Pr.Zena is Null) and
                                            T.Activ=true and
                                            NPr.UnitCodTo=3 

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, T.ZenaZakupka, T.ZenaMelkOpt
