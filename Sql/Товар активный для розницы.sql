/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT Count (*), '�86', T.TovarName, T.Fasovka, P.ProizvName, G.GrupName, 
		 T.ZenaRozn as �������,  0 as ���, 0 �������, 1, '17.04.09'
	 
From    Tovar T, Proizv P,  Grup G,  EdIzmer E

where   T.ProizvCod=P.Cod and T.GrupCod=G.Cod  and T.EdIzmerCod=E.Cod and T.Activ=True
                                           
Group by  T.TovarName, T.Fasovka, P.ProizvName, G.GrupName, 
		 T.ZenaRozn 
Order By  T.TovarName,T.Fasovka, P.ProizvName

