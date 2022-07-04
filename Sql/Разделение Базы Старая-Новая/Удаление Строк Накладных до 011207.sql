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
                                            Nakl.DocDate<'1.12.2007'  )
                                           
                                        


