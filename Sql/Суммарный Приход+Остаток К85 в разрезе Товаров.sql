/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT '.Товар ',T.TovarName, T.Fasovka, P.ProizvName,
                                            sum(Pr.Kolvo) as Приход, 
		 T.ZenaZakupka as СпрЦенаЗак,		 
		 T.ZenaMelkOpt,
                                            sum(Pr.Kolvo*Pr.Zena) as СуммаПрихода
		 
From   Nakl NPr, RecNakl Pr,		 
             Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and 
             ((NPr.Kind=3 and NPr.DocN>=55)  or (NPr.Kind=4 and NPr.DocN=4)) and		 
             Pr.TovarCod=T.Cod and 
             T.ProizvCod=P.Cod and 
             NPr.UnitCodTo=3 

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, T.ZenaZakupka, T.ZenaMelkOpt


UNION

Select 'Итого  ',             max(T.TovarName), max(T.Fasovka), max(P.ProizvName),
                                            sum(Pr.Kolvo) as Приход, 
		 max(T.ZenaZakupka) as СпрЦенаЗак,		 
		 max(T.ZenaMelkOpt),
                                            sum(Pr.Kolvo*Pr.Zena) as СуммаПрихода
		 
From   Nakl NPr, RecNakl Pr,		 
             Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and 
             ((NPr.Kind=3 and NPr.DocN>=55)  or (NPr.Kind=4 and NPr.DocN=4)) and		 
             Pr.TovarCod=T.Cod and 
             T.ProizvCod=P.Cod and 
             NPr.UnitCodTo=3 