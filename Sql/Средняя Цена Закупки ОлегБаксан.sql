/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,  sum(Zak.Kolvo) as �����, 
		 sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo) as �������������,
		 Min(Zak.Zena)		 , Max(Zak.Zena),
		 T.ZenaZakupka as ����������������,
		 T.ZenaMelkOpt as ������������            
		 
From   Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		  NZak.AgentCodFrom=6

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, T.ZenaZakupka, T.ZenaMelkOpt
