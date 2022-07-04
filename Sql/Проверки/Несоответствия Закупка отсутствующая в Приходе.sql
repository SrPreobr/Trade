/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT         NNameParent.NaklName, NParent.DocN as ОтецN, NParent.Cod, NParent.DocDate,
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo as ОтецКолво        
                              
		 
From 
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent 

where 
            
             RParent.TovarCod Not In (Select RSubSon.TovarCod
                          From   RecNakl RSubSon
                          Where  RSubSon.NaklCod in (Select P.SonCod
                                                 From   Parent P
                                                /* Where  P.ParentCod=1524  */
                                                 )) and
  RParent.NaklCod=NParent.Cod and
  NParent.Kind=1 and
  NParent.Kind=NNameParent.Cod and

       RParent.TovarCod=T.Cod and  NNameParent.Cod=NParent.Kind 
          /* and  NParent.Cod=1524 */
 and NParent.DocDate>'31.10.2020'
 
 Order by NNameParent.NaklName, NParent.DocDate
 ;