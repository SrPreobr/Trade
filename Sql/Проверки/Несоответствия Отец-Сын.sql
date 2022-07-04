/*
Alias: WORK
LiveAnswer: false

*/

SELECT         NNameParent.NaklName,  
                          T.TovarName, T.Fasovka, 
                           NParent.DocN as ����N, RParent.Kolvo as ���������,
                           NNameSon.NaklName,
                           NSon.DocN as ���N, RSon.Kolvo as ��������                 
                              
		 
From Nakl NSon, RecNakl RSon,
           Nakl NParent, RecNakl RParent,
           Tovar T, NaklName NNameParent, Naklname NNameSon

where  RSon.NaklCod=NSon.Cod and 
/*NSon.ParentCod=482 and*/
           NParent.Cod=NSon.ParentCod and RParent.NaklCod=NSon.ParentCod and
           RSon.TovarCod=RParent.TovarCod and RSon.Kolvo<>RParent.Kolvo and
           RSon.TovarCod=T.Cod and NNameParent.Cod=NParent.Kind and NNameSon.Cod=NSon.Kind
                                            
order by NNameParent.NaklName, NParent.DocN, T.TovarName, T.Fasovka


