/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT 
		 sum(Pr.Kolvo*Pr.Zena) as СумаПрихода,
				 
		 sum(Ost.Kolvo*Ost.Zena) as СумаОстатока,
		 
		 sum(Pr.Kolvo*Pr.Zena)- Ost.Kolvo*Ost.Zena as СуммаПродажи,
		 (sum(Pr.Kolvo)-Ost.Kolvo)*(T.ZenaMelkOpt-T.ZenaZakupka) as Доход

From   Nakl NPr,  RecNakl Pr,
		 Nakl NOst, RecNakl Ost,
		 Tovar T, Proizv P, Agent A

where  Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and T.AgentCod=A.Cod and
		 NPr.Cod=Pr.NaklCod and NPr.Kind=3 and 
		 NOst.Cod=Ost.NaklCod and NOst.Kind=4 and NOst.N=2 and Ost.TovarCod=Pr.TovarCod 

	
