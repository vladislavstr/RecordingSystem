﻿create procedure GetAllActiveRecordingsByPatientId
@id Int
AS
select P.Id, P.Name, P.LastName, A.Id, A.DateTime, A.Coming, D.Id, D.Name, D.LastName, C.Id, C.Number  from dbo.Patient AS P
Inner Join dbo.ActiveRecording AS A ON P.Id = A.PatientId
Inner Join dbo.Doctor AS D ON D.Id = A.DoctorId
Left Join dbo.Cabinet AS C On D.CabinetId = C.Id
where P.Id = @id AND A.Coming is NULL AND P.IsDeleted = 0 AND A.IsDeleted = 0