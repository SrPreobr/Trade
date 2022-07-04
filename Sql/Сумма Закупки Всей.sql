/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT sum(Zak.Kolvo*Zak.Zena) as Закупка
		 
From   Nakl NZak, RecNakl Zak		 

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  


