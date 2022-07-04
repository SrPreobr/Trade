/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' ���������', Nakl.DocN as NNakl, Nakl."DocDate",
                  sum(RecNakl .Kolvo*RecNakl .Zena) as ���������,
                  sum(RecNakl .Kolvo*Tovar .ZenaZakupka) as ������������, 
                  sum(RecNakl .Kolvo*Tovar .ZenaMelkOpt) as ����������������� 
		 
From   Nakl Nakl, RecNakl RecNakl, Tovar Tovar 
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=3 and 
              Nakl.UnitCodTo=3 and
              RecNakl.TovarCod=Tovar.Cod and
              Nakl."DocN" >0 and
              Nakl."DocN" <50       
  
GROUP BY Nakl.DocN, Nakl."DocDate"

UNION

Select     '.�����    ',Count(Distinct Nakl.DocN) as Itog, Max(Nakl."DocDate"), 
                  sum(RecNakl .Kolvo*RecNakl .Zena) as ���������,
                  sum(RecNakl .Kolvo*Tovar .ZenaZakupka) as ������������, 
                  sum(RecNakl .Kolvo*Tovar .ZenaMelkOpt) as ����������������� 

From   Nakl Nakl, RecNakl RecNakl, Tovar Tovar  
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=3 and 
              Nakl.UnitCodTo=3 and
              RecNakl.TovarCod=Tovar.Cod and
              Nakl."DocN" >0 and
              Nakl."DocN" <50        
