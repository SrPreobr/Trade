/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' Накладная', Nakl.DocN as NNakl, Nakl."DocDate",
                  sum(RecNakl .Kolvo*RecNakl .Zena) as СуммаНакл,
                  sum(RecNakl .Kolvo*Tovar .ZenaZakupka) as СуммаЗакупка, 
                  sum(RecNakl .Kolvo*Tovar .ZenaMelkOpt) as СуммаМелкоОптовая 
		 
From   Nakl Nakl, RecNakl RecNakl, Tovar Tovar 
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=3 and 
              Nakl.UnitCodTo=3 and
              RecNakl.TovarCod=Tovar.Cod and
              Nakl."DocN" >0 and
              Nakl."DocN" <50       
  
GROUP BY Nakl.DocN, Nakl."DocDate"

UNION

Select     '.Итого    ',Count(Distinct Nakl.DocN) as Itog, Max(Nakl."DocDate"), 
                  sum(RecNakl .Kolvo*RecNakl .Zena) as СуммаНакл,
                  sum(RecNakl .Kolvo*Tovar .ZenaZakupka) as СуммаЗакупка, 
                  sum(RecNakl .Kolvo*Tovar .ZenaMelkOpt) as СуммаМелкоОптовая 

From   Nakl Nakl, RecNakl RecNakl, Tovar Tovar  
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=3 and 
              Nakl.UnitCodTo=3 and
              RecNakl.TovarCod=Tovar.Cod and
              Nakl."DocN" >0 and
              Nakl."DocN" <50        
