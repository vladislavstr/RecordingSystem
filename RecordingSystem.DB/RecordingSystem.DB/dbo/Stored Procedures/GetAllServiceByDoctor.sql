﻿CREATE procedure [dbo].[GetAllServiceByDoctor]
@Id_Doctor Int
AS
select D.Id AS DoctorId, D.Name AS DoctorName, D.LastName AS DoctorLastName, S.Id AS ServiceId, S.Name AS ServiceName, S.Price from dbo.[Doctor] AS D
Inner Join dbo.Specialization AS Sp ON D.SpecializationId = Sp.Id 
Inner Join dbo.Service AS S ON Sp.Id = S.SpecializationId
where @Id_Doctor = D.Id