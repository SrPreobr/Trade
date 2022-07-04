/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT A.AgentName, Nakl.Kind, Nakl.DocN, Nakl."DocDate", Nakl.Cod,
		 sum(Rec.Kolvo*Rec.Zena) as Сумма
		 
From   Nakl Nakl, RecNakl Rec, 
		 Agent A		 

Where  Nakl.Cod=Rec.NaklCod and 
		 Nakl.AgentCodFrom=A.Cod 

GROUP BY  Nakl.Kind, Nakl."DocDate", Nakl.DocN, Nakl.Cod, A.AgentName
