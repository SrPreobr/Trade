/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT         NSon.DocN as СынN, NSon.DocDate,
                          RSon.N, 
                          T.TovarName, T.Fasovka,
                           RSon.Kolvo as СынКолво,
 
                           RParent.Kolvo as ОтецКолво,
                          NNameParent.NaklName, NParent.DocN as ОтецN, NParent.Cod, NParent.DocDate,
                          RParent.N  
                                  
                              
		 
From Nakl NSon, RecNakl RSon,
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent 

where 
   RSon.NaklCod=NSon.Cod and
   RSon.TovarCod=T.Cod and   
   RSon.ParentCod=RParent.Cod      
             and
   RSon.Kolvo<>RParent.Kolvo and 

  RParent.NaklCod=NParent.Cod and
  NParent.Kind=1 and
  NParent.Kind=NNameParent.Cod and
  NNameParent.Cod=NParent.Kind
 and NParent.DocDate>'11.10.2011'
 
 Order by  NSon.DocN, RSon.N
 ;