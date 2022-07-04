/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, NPr.DocN, NPr."DocDate", Pr.Kolvo as Колво, 
		 T.ZenaZakupka as СпрЦенаЗак,
                                            T.ZenaMelkOpt as СпрЦена,		 
		 Pr.Zena,
                                            (Pr.Kolvo*Pr.Zena) as СуммаПрихода,
                                             (Pr.Zena/T.ZenaMelkOpt)
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=3 and
                                           NPr.DocN>0 and
                                           ( (T.ZenaMelkOpt/Pr.Zena>1.1) or (T.ZenaMelkOpt/Pr.Zena<0.9) )


UNION

Select  Max(T.TovarName), Max(T.Fasovka), Max(P.ProizvName), Max(NPr.DocN), Max(NPr."DocDate"), Max(Pr.Kolvo) as Колво, 
		 Max(T.ZenaZakupka) as СпрЦенаЗак,
                                            Max(T.ZenaMelkOpt) as СпрЦена,		 		 
		 Max(Pr.Zena),
                                            sum(Pr.Kolvo*Pr.Zena) as СуммаПрихода,
                                            Avg(Pr.Zena/T.ZenaMelkOpt)
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=3 and
                                           NPr.DocN>0

