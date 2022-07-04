/*
Alias: WORK
LiveAnswer: FALSE

*/
Select NN.NaklName, N.DocN, N.DocDate, N.'Sum',  N.Cod,  AFrom.AgentName, ATo.AgentName

from Nakl N, NaklName NN, Agent AFrom, Agent ATo

where(N.Kind=NN.Cod) and (N.AgentCodFrom=AFrom.Cod) and (N.AgentCodTo=ATo.Cod)

Order By N.DocDate
