/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' ���������', Nakl.DocN as NNakl, Nakl."DocDate",sum(RecNakl .Kolvo*RecNakl .Zena) as ��������� 
		 
From   Nakl Nakl, RecNakl RecNakl 
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=5 and 
              Nakl.UnitCodFrom=3 and
              Nakl."DocDate" < '28.02.2004'         
  
GROUP BY Nakl.DocN, Nakl."DocDate"

UNION

Select '.�����    ',Count(Distinct Nakl.DocN) as Itog, Max(Nakl."DocDate"), sum(RecNakl .Kolvo*RecNakl .Zena) as ���������
From   Nakl Nakl, RecNakl RecNakl 
		 
where  Nakl.Cod=RecNakl .NaklCod and 
              Nakl.Kind=5 and 
              Nakl.UnitCodFrom=3 and
              Nakl."DocDate" < '28.02.2004'         
