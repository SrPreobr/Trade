/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,Pr.Kolvo as �����, 
		 Pr.Zena0 as ��������,		 
		  Pr.Zena as ���������,
Pr.Zena-Pr.Zena0 as �������,
Pr.Kolvo*(Pr.Zena-Pr.Zena0) as ������������
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Cod=561  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod

