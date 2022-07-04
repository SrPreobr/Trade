/*
Alias: WORK
LiveAnswer: FALSE

*/

DELETE		 
From   RecNakl 

where          NaklCod= ANY
               ( SELECT Cod
                 from    Nakl
                 where 
                    (Nakl.UnitCodTo=2 or  Nakl.UnitCodTo=3 or  Nakl.UnitCodTo=6 or  Nakl.UnitCodTo=8  )   
                                      and Nakl.AgentCodTo=2 )
                                           
                                        


