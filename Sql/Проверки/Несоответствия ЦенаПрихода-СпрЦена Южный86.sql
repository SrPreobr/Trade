/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, NPr.DocN, NPr."DocDate", Pr.Kolvo as Колво, 
		 T.ZenaZakupka as СпрЦенаЗак,
                                            T.ZenaRozn as СпрЦена,		 
		 Pr.Zena,
                                            (Pr.Kolvo*Pr.Zena) as СуммаПрихода,
                                             (Pr.Zena/T.ZenaRozn)
		 
From   Nakl NPr, RecNakl Pr,		 
		 Tovar T, Proizv P

where  NPr.Cod=Pr.NaklCod and NPr.Kind=3  and		 
		 Pr.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NPr.UnitCodTo=9 and
                                           NPr.DocN>0 and
                                           ( (Pr.Zena/T.ZenaRozn>1.2) or (Pr.Zena/T.ZenaRozn<0.6) )
 and NPr.DocDate>'11.10.2011'


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

