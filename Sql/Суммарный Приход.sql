/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,
		 sum(Pr.Kolvo) as ������, 
		 sum(Zak.Kolvo) as �������,
		 T.ZenaZakupka as ����������,
		 sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo) as �����������,		 
		 T.ZenaMelkOpt

From   Nakl NPr, RecNakl Pr,
		 Nakl NZak, RecNakl Zak,
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and
		 NZak.Cod=Zak.NaklCod and NZak.Kind=1 and Zak.TovarCod=Pr.TovarCod and
		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, T.ZenaZakupka,T.ZenaMelkOpt
