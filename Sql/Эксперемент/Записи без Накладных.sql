/*
Alias: WORK
LiveAnswer: FALSE

*/
/* ����� ����� �������*/

SELECT RecNakl.Cod,RecNakl.TovarCod
		 
		 
From   Nakl Nakl, RecNakl Rec 
				 

Where  
Nakl.Docdate>'07.04.2010' and
Rec.NaklCod<>all (select Nakl.Cod from Nakl) 
		 


