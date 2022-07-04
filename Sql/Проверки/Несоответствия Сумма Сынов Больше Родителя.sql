/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, NPr.DocN, NPr."DocDate", Pr.Kolvo as Колво, 
		 T.ZenaZakupka as СпрЦенаЗак,		 
		 Pr.Zena,
                                            (Pr.Kolvo*Pr.Zena) as СуммаПрихода,
                                             (1-T.ZenaZakupka/Pr.Zena) as PerCent
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            Pr.PerentCod=6 and
                                           NPr.DocN>0 


