/*
Alias: WORK
LiveAnswer: false

*/

SELECT         NNameParent.NaklName, NParent.DocN as ОтецN,
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo as ОтецКолво,
                           NNameSon.NaklName,                           
                          sum(RSon.Kolvo) as СынКолво                 
                              
		 
From Nakl NSon, RecNakl RSon,
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent, Naklname NNameSon

where  RSon.NaklCod=NSon.Cod and
           NSon.Cod in (Select P.SonCod
                                       From  Parent P
                                       /* Where P.ParentCod=790 */ ) and 
           RParent.NaklCod=NSon.ParentCod and
           RSon.TovarCod=RParent.TovarCod and RSon.Kolvo<>RParent.Kolvo and
           RSon.TovarCod=T.Cod and NNameParent.Cod=NParent.Kind and NNameSon.Cod=NSon.Kind
          /* and NParent.Cod=790 */
                                            
Group by NNameParent.NaklName, NParent.DocN, 
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo ,
                           NNameSon.NaklName
                            


