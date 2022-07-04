/*
Alias: WORK
LiveAnswer: FALSE

*/

select N.Kind, A.AgentName, N.DocN, N.Cod, N.'DocDate'
from Nakl N,  Agent A
where (  N.Cod Not in 
                                           (select  Distinct Z.DocCod
		  from Zhurnal Z) ) 
       and N.AgentCodFrom=A.Cod
      and N.DocDate>'29.03.2011'

order by  N.'DocDate',N.Kind, A.Agentname, N.DocN, N.Cod