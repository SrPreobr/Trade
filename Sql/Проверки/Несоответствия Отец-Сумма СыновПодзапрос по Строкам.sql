/*
Alias: WORK
LiveAnswer: false

*/

SELECT         NNameParent.NaklName as ����,
                          Ag.AgentName as ������,
                          NParent.DocN as ����N,
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo as ���������,
                           NNameSon.NaklName as ���,
                                            
                          sum(RSon.Kolvo) as ����������� ,
                          RParent.Kolvo- sum(RSon.Kolvo) as �������                
                              
		 
From Nakl NSon, RecNakl RSon,
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent, Naklname NNameSon,
            Agent Ag 

where  RSon.ParentCod=RParent.Cod and
              RSon.NaklCod=NSon.Cod and
               
              RParent.NaklCod=NParent.Cod and

           RSon.TovarCod=T.Cod and NNameParent.Cod=NParent.Kind and NNameSon.Cod=NSon.Kind and
           NParent.AgentCodFrom=Ag.Cod and

 NParent.DocDate>'21.07.2004' and
NParent.Cod=802 and
(
          RParent.Kolvo<>(Select sum(RSubSon.Kolvo)
                                             From RecNakl RSubSon
                                            Where  RSubSon.ParentCod=RSon.ParentCod
                                             ) or
         (RSon.ParentCod is Null)
)
                                            
Group by         NNameParent.NaklName,
                         Ag.AgentName,
                          NParent.DocN, 
                          RParent.N,  
                          T.TovarName, T.Fasovka, 
                            RParent.Kolvo ,
                           NNameSon.NaklName

                            


