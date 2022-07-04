/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT N.Kind, N.DocN, N.Cod ,N.'DocDate'
		 		 
From    Nakl N 
				 
Where  N.Cod Not In (select distinct Rec.NaklCod
                                                 from        RecNakl Rec) 
		 


