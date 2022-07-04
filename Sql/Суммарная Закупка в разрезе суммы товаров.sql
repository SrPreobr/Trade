/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT ' Накладная', A.AgentName, NZak.DocN, NZak."DocDate",NZak.Cod, 
		 sum(Zak.Kolvo*Zak.Zena) as СуммаНакл 
		 
From   Nakl NZak, RecNakl Zak, 
		 Agent A		 

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1 and
		 NZak.AgentCodFrom=A.Cod

GROUP BY A.AgentName, NZak.DocN,NZak."DocDate",NZak.Cod

UNION

SELECT '.Итого    ',Max(A.AgentName), Count( Distinct NZak.DocN), Max(NZak."DocDate"), Max(NZak.Cod), 
		 sum(Zak.Kolvo*Zak.Zena) as СуммаНакл 
		 
From   Nakl NZak, RecNakl Zak, 
		 Agent A		 

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1 and
		 NZak.AgentCodFrom=A.Cod

