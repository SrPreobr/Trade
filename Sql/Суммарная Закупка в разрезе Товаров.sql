/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka,  NZak."DocDate", NZak.DocN as Nakl, A.AgentName,
		 Zak.Kolvo as Закуплено, 
		 Zak.Zena as ЦенаЗак, 1- Zak.Zena/T.ZenaMelkOpt as PerCent,  T.ZenaMelkOpt		 
	
		 
From   Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P,
		 Agent A	

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		 NZak.AgentCodFrom=A.Cod  

Order by T.TovarName,T.Fasovka, NZak."DocDate"
