/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT   NName.NaklName as Накладная, 
                    Nakl.DocN as Номер, 
                    Nakl."DocDate"  as Дата,
                    Nakl.Cod as Код,
                    AFrom.AgentName as Отпр,
                    UFrom.UnitName as ОтпрПодраздел,
                    ATo.AgentName as Полуатель,
                   UTo.UnitName as ПолуПодраздел,
                   R.Kolvo, R.Zena
                   

From   Nakl Nakl, RecNakl R, 
             Agent  AFrom, Agent  ATo,
             Unit  UFrom, Unit  UTo,
             NaklName NName

where  R.TovarCod=1715
		 and Nakl.AgentCodFrom= AFrom.Cod
                                            and Nakl.AgentCodTo    = ATo.Cod
                                            and Nakl.UnitCodFrom    = UFrom.Cod
                                            and Nakl.UnitCodTo          = UTo.Cod
		 and Nakl.Cod=R.NaklCod
and Nakl.Kind=NName.Cod
order by   NName.NaklName, Nakl.DocDate