/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, A.AgentName as Поставщик,NZak.DocN as Nakl, NZak."DocDate",
		 sum(Zak.Kolvo) as Закуплено, 
		 Zak.Zena as ЦенаЗак		 
	
		 
From   Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P,
		 Agent A	

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		 NZak.AgentCodFrom=A.Cod  and
                                           NZak.AgentCodFrom=6

Group BY T.TovarName, T.Fasovka, P.ProizvName,A.AgentName,  NZak.DocN,  NZak."DocDate",  Zak.Zena
