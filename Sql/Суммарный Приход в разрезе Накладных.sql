/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' Накладная',NPr.DocN as NNakl, NPr."DocDate",sum(Pr.Kolvo*Pr.Zena) as СуммаНакл 
		 
From   Nakl NPr, RecNakl Pr		 
		 
where  NPr.Cod=Pr.NaklCod and NPr.Kind=3
  
GROUP BY NPr.DocN,NPr."DocDate"

UNION

Select '.Итого    ',Count(Distinct NPr.DocN) as Itog, Max(NPr."DocDate"), sum(Pr.Kolvo*Pr.Zena) as СуммаНакл
From   Nakl NPr, RecNakl Pr		 
		 
where  NPr.Cod=Pr.NaklCod and NPr.Kind=3
