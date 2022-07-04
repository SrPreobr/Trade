/*
Alias: WORK
LiveAnswer: FALSE

*/

Select *
from   Zhurnal Zh
where  Zh.Cod in
				  (select max(Z.Cod)
					from Zhurnal Z
					group by Z.Kind, Z.AgentCodFrom, Z.AgentCodTo, Z.DocN)
					 
order by Zh.Kind, Zh.AgentCodFrom, Zh.AgentCodTo, Zh.DocN
