/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT Nakl.Cod, A.AgentName, NaklName."NaklName" , Nakl.DocN, Nakl."DocDate", 
		 Nakl."Sum"
		 
From   Nakl Nakl, RecNakl Rec, 
		 Agent A, NaklName		 

Where  Nakl.Cod=Rec.NaklCod and 
		 Nakl.AgentCodFrom=A.Cod and Nakl.Kind=NaklName."Cod"

GROUP BY Nakl.Cod, A.AgentName, NaklName."NaklName", Nakl.DocN, Nakl."DocDate", 
		 Nakl."Sum"