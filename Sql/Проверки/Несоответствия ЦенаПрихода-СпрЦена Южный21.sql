/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, NPr.DocN, NPr."DocDate", Pr.Kolvo as Колво, 
		 T.ZenaZakupka as СпрЦенаЗак,
                                            T.ZenaOpt as СпрЦена,		 
		 Pr.Zena,
                                            (Pr.Kolvo*Pr.Zena) as СуммаПрихода,
                                             (Pr.Zena/T.ZenaOpt)
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=6 and
                                           NPr.DocN>0 and
                                           ( (T.ZenaOpt/Pr.Zena>1.1) or (T.ZenaOpt/Pr.Zena<0.9) )


UNION

Select  Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), Max(NPr.DocN), Max(NPr."DocDate"), Max(Pr.Kolvo) as Колво, 
		 Max(T.ZenaZakupka) as СпрЦенаЗак,
                                            Max(T.ZenaOpt) as СпрЦена,		 		 
		 Max(Pr.Zena),
                                            sum(Pr.Kolvo*Pr.Zena) as СуммаПрихода,
                                            Avg(Pr.Zena/T.ZenaOpt)
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=6 and
                                           NPr.DocN>0

