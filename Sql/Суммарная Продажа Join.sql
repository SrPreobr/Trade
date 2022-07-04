/*
Alias: WORK
LiveAnswer: FALSE

*/

SELECT T.TovarName, T.Fasovka, P.ProizvName,
               Sum(Rec.Kolvo)                as ������,
               Sum(Rec.Kolvo*Rec.Zena)       as ������������,
               Ost.Kolvo                     as ���,
               Sum(Rec.Kolvo)-Ost.Kolvo as �������,
               Sum(Rec.Kolvo*Rec.Zena)-(Ost.Kolvo*Ost.Zena) as �����������,
               1-Sum(Rec.Zena0*Rec.Kolvo)/ Sum(Rec.Zena*Rec.Kolvo) as ����,
               Sum(Rec.Kolvo*Rec.Zena)-Sum(Rec.Kolvo*Rec.Zena0)-(Ost.Kolvo*Ost.Zena)+(Ost.Kolvo*Ost.Zena0) as �������,
               (Sum(Rec.Kolvo*Rec.Zena)-Sum(Rec.Kolvo*Rec.Zena0)-(Ost.Kolvo*Ost.Zena)+(Ost.Kolvo*Ost.Zena0))/Sum(Rec.Kolvo*Rec.Zena) as ������������

From     ( RecNakl Rec Full Join RecNakl Ost 
			  on Ost.TovarCod=Rec.TovarCod), 
					  
			Nakl N,  Nakl O,
			Tovar T, Proizv P

where
							  N.Cod=Rec.NaklCod and
							  N.Kind=3 and
							  N.AgentCodTo=2 and
							  N.UnitCodTo=6   and
							  N.DocN<=62 and

							  O.Cod=Ost.NaklCod and
							  O.Kind=4 and O.UnitCodTo=6 and O.AgentCodTo=2 and
							  O.DocN=2 and
				  
				  Rec.TovarCod=T.Cod and T.ProizvCod=P.Cod 

GROUP BY  T.TovarName, T.Fasovka, P.ProizvName,Ost.Kolvo
