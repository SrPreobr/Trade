/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName, 
                                            NZak."DocDate",
                                            A.AgentName,
                                            NZak.DocN, 
                                            Zak.Kolvo as Колво, 
		 Zak.Zena as ЦенаЗак,		 
		 T.ZenaMelkOpt,
                                            1-Zak.Zena/T.ZenaMelkOpt as PerCent
		 
From   Nakl NZak, RecNakl Zak,		 
		 Tovar T, Proizv P, Agent A

where  NZak.Cod=Zak.NaklCod and NZak.Kind=1  and		 
		 Zak.TovarCod=T.Cod and T.ProizvCod=P.Cod and
                                            NZak.AgentCodFrom=A.Cod

Order by T.TovarName, T.Fasovka, P.ProizvName, 
                                            NZak."DocDate",
                                            A.AgentName
