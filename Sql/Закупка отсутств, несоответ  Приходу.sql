/*
Alias: WORK
LiveAnswer: FALSE

*/
SELECT         NNameParent.NaklName, NParent.DocN as ОтецN,
                          RParent.N,
                          T.TovarName, T.Fasovka,
                            RParent.Kolvo as ОтецКолво,
                           NNameSon.NaklName,
                          sum(RSon.Kolvo) as КолвоУСынов ,
                          RParent.Kolvo- sum(RSon.Kolvo) as Разница


From Nakl NSon, RecNakl RSon,
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent, NaklName NNameSon

where  RSon.NaklCod=NSon.Cod and

       NSon.Cod in (Select P.SonCod
                    From   Parent P
                    Where  P.ParentCod=1524 ) and

       RParent.NaklCod=NParent.Cod and
       RSon.TovarCod=RParent.TovarCod and
       RSon.TovarCod=T.Cod and NNameParent.Cod=NParent.Kind and NNameSon.Cod=NSon.Kind
       and NParent.Cod=1524 and
          RParent.Kolvo<>(Select sum(RSubSon.Kolvo)
                          From   RecNakl RSubSon
                          Where  RSubSon.NaklCod
                           in (Select P.SonCod
                                                 From   Parent P
                                                 Where  P.ParentCod=1524

                                                 ) and
                                                        RSubSon.TovarCod=RParent.TovarCod
                                                 )
                                            
Group by NNameParent.NaklName, NParent.DocN, 
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo ,
                           NNameSon.NaklName
union

SELECT         NNameParent.NaklName, NParent.DocN as ОтецN,
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo as ОтецКолво,
                        '                ',0,0        
                              
		 
From 
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent 

where 
          RParent.TovarCod Not In (Select RSubSon.TovarCod
                          From   RecNakl RSubSon
                          Where  RSubSon.NaklCod in (Select P.SonCod
                                                 From   Parent P
                                                 Where  P.ParentCod=1524
                                                 )) and
  RParent.NaklCod=NParent.Cod and
  NParent.Kind=NNameParent.Cod and

       RParent.TovarCod=T.Cod and  NNameParent.Cod=NParent.Kind and

  NParent.Cod=1524 ;