/*
Alias: WORK
LiveAnswer: FALSE

*/

Select       sum(Rec.Kolvo*Rec.Zena) SumAll
		 
From   Nakl N, RecNakl Rec		 

where  N.Cod=Rec.NaklCod and 
             N.Kind=3  and		 
             N.UnitCodTo=3 and
             N.DocN>20 and  N.DocN<50



