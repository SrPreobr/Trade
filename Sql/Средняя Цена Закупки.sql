/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,  sum(Zak.Kolvo) as �����, 
		 sum(Zak.Kolvo*Zak.Zena)/sum(Zak.Kolvo) as �������������,
		 Min(Zak.Zena)	 as MinZena	 , 
                                            Max(Zak.Zena) as MaxZena,
		 (Max(Zak.Zena)-Min(Zak.Zena)) / Max(Zak.Zena) as PerCent,
		 T.ZenaZakupka as ����������������,
		 T.ZenaMelkOpt as �������������,
                                            Avg((T.ZenaMelkOpt -T.ZenaZakupka) / T.ZenaMelkOpt )  as PerCent���������      
		 
From                                 Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
		 (Zak.Zena<>0) and (Not Zak.Zena is Null) and
                                            T.Activ=true 

GROUP BY T.TovarName, T.Fasovka, P.ProizvName, T.ZenaZakupka, T.ZenaMelkOpt
