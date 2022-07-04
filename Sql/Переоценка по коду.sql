/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,Pr.Kolvo as Колво, 
		 Pr.Zena0 as СтарЦена,		 
		  Pr.Zena as НоваяЦена,
Pr.Zena-Pr.Zena0 as Разница,
Pr.Kolvo*(Pr.Zena-Pr.Zena0) as СуммаРазницы
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Cod=561  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod

