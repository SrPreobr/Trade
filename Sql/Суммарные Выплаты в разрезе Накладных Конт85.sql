/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' ���������', Nakl.DocN as NNakl, Nakl."DocDate",
                                              Nakl.DocTime,
                                               sum(RecNakl .Kolvo*RecNakl .Zena) as ���������,
                                               Nakl.Pr 
		 
From   Nakl Nakl, RecNakl RecNakl 
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=7 and 
              Nakl.UnitCodFrom=3 and
              Nakl."DocDate" < '28.02.2004' and
              Nakl.DocTime>'00:00:00'         
  
GROUP BY Nakl.DocN, Nakl."DocDate", Nakl.DocTime, Nakl.Pr

UNION

Select '.�����    ',Count(Distinct Nakl.DocN) as Itog, Max(Nakl."DocDate"),
                                   Max(Nakl."DocTime"),
                                   sum(RecNakl .Kolvo*RecNakl .Zena) as ���������,
                                   max(Nakl.Pr)
From   Nakl Nakl, RecNakl RecNakl 
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=7 and 
              Nakl.UnitCodFrom=3 and
              Nakl."DocDate" < '28.02.2004'         
