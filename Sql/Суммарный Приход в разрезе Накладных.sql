/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' ���������',NPr.DocN as NNakl, NPr."DocDate",sum(Pr.Kolvo*Pr.Zena) as ��������� 
		 
From   Nakl NPr, RecNakl Pr		 
		 
where  NPr.Cod=Pr.NaklCod and NPr.Kind=3
  
GROUP BY NPr.DocN,NPr."DocDate"

UNION

Select '.�����    ',Count(Distinct NPr.DocN) as Itog, Max(NPr."DocDate"), sum(Pr.Kolvo*Pr.Zena) as ���������
From   Nakl NPr, RecNakl Pr		 
		 
where  NPr.Cod=Pr.NaklCod and NPr.Kind=3
