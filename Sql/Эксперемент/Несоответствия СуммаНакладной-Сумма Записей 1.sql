/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT Name.NaklName, Ato.AgentName, Uto.UnitName, N.DocN, N.Cod ,N.'DocDate',  N.'Sum',Sum(R.Kolvo*R.Zena),
                  Afr.AgentName as AgentFrom
		 		 
From    Nakl N, NaklName Name, Agent Afr, Agent Ato, Unit Uto, RecNakl R 
				 
Where     N.Kind=Name.Cod and N.AgentCodFrom=Afr.Cod and  N.AgentCodTo=Ato.Cod and N.UnitCodTo=Uto.Cod and
                  Nakl.Cod=R.NaklCod and 
                   N.'Sum'<>  (select Sum(Rec.Kolvo*Rec.Zena)
                                          from        RecNakl Rec
                                          where Rec.NaklCod=N.Cod ) 
Group By	Name.NaklName, Ato.AgentName, Uto.UnitName, N.DocN, N.Cod ,N.'DocDate',  N.'Sum',
                  Afr.AgentName

