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
                                            Nakl.UnitCodTo=9 and Nakl.AgentCodTo=2 )
                                           
                                        


