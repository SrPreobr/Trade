/*
Alias: WORK
LiveAnswer: false

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
           Tovar T, NaklName NNameParent, Naklname NNameSon

where  RSon.NaklCod=NSon.Cod and

           NSon.Cod in (Select P.SonCod
                                       From  Parent P
                                       Where P.ParentCod=818 ) and 

          RParent.NaklCod=NParent.Cod and
           RSon.TovarCod=RParent.TovarCod and
           RSon.TovarCod=T.Cod and NNameParent.Cod=NParent.Kind and NNameSon.Cod=NSon.Kind
          and NParent.Cod=818 and
          RParent.Kolvo<>(Select sum(RSubSon.Kolvo)
                                             From RecNakl RSubSon, Nakl NSubSon
                                            Where  RSubSon.NaklCod=NSubSon.Cod and
                                                           NSubSon.Cod in (Select P.SonCod
                                                                                             From  Parent P
                                                                                             Where P.ParentCod=818 ) and 
                                                           RSubSon.TovarCod=RParent.TovarCod
                                                           ) 
                                            
Group by NNameParent.NaklName, NParent.DocN, 
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo ,
                           NNameSon.NaklName
                            


