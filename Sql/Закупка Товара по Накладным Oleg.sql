/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, NZak.DocN, NZak."DocDate", Zak.Kolvo as Êîëâî, 
		 Zak.Zena as ÖåíàÇàê,
                                            Avg(Zak.Zena*Zak.Kolvo) as ÑóììàÇàê,		 
		 T.ZenaRozn as Ðîçí,
                                           Avg(T.ZenaRozn*Zak.Kolvo) as   ÑóììàRozn
		 
From   Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		 NZak.DocN>0 and NZak.AgentCodFrom=5

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, NZak.DocN, Zak.Kolvo, NZak."DocDate", 
			Zak.Zena, T.ZenaRozn
UNION

SELECT                          Max(T.TovarName), 
                                            Max(T.Fasovka),
                                            Max( P.ProizvName), 
                                             Max(NZak.DocN), 
                                             Max(NZak."DocDate"), 
                                             Max(Zak.Kolvo) as Êîëâî, 
		 Max(Zak.Zena) as ÖåíàÇàê,
                                            Sum(Zak.Zena*Zak.Kolvo) as ÑóììàÇàê,		 
		 Max(T.ZenaRozn) as Rozn,
                                           Sum(T.ZenaRozn*Zak.Kolvo) as   ÑóììàRozn
		 
From   Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		 NZak.DocN>0 and NZak.AgentCodFrom=5


			
