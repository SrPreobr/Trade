/*
Alias: WORK
LiveAnswer: FALSE

*/

Select                               Zh.'Date', Zh.Kind, Zh.DocN as ÆóðN, Zh.AgentCodFrom as ÆóðFrom, Zh.AgentCodTo as ÆóðTo,
		 Zh."Sum" as ÆóðÑóììà,
		 N.Cod, N.DocN as ÍàêëN, N.AgentCodFrom as ÍàêëFrom , N.AgentCodTo as ÍàêëTo, 
		 N."Sum"as ÍàêëÑóììà
from                                   Zhurnal Zh,
		 Nakl N
where                              (  Zh.Cod in
				  (select max(Z.Cod)
					from Zhurnal Z
					group by Z.Kind, Z.AgentCodFrom, Z.AgentCodTo, Z.DocN) and
		 N.Cod=Zh.DocCod and 
		 ((N."Sum"-Zh."Sum")>0.01 or (Zh."Sum"-N."Sum")>0.01 or
		  Zh.AgentCodFrom<>N.AgentCodFrom or Zh.AgentCodTo<>N.AgentCodTo or
		  Zh.UnitCodFrom<>N.UnitCodFrom or Zh.UnitCodTo<>N.UnitCodTo or
		  Zh.SkladCodFrom<>N.SkladCodFrom or Zh.SkladCodTo<>N.SkladCodTo or
		  Zh.SotrudnCodFrom<>N.SotrudnCodFrom or Zh.SotrudnCodTo<>N.SotrudnCodTo or

		  Zh.DocN<>N.DocN or Zh.DocDate<>N."DocDate") )
  and N.DocDate>'29.03.2011' 

order by Zh.'Date', Zh.Kind, Zh.AgentCodFrom, Zh.AgentCodTo, Zh.DocN
