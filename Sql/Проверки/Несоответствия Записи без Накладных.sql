/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT RecNakl.Cod,RecNakl.TovarCod, RecNakl.NaklCod
		 
		 
From    RecNakl Rec
				 

Where
Rec.NaklCod Not In (select distinct Nakl1.Cod
                                                          from Nakl Nakl1
                                            )

		 


