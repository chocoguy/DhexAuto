CREATE VIEW [dbo].[viewCar]
	AS SELECT        dbo.Car.Id, dbo.Car.Owner, dbo.Car.Mechanic, dbo.Make.Name AS Make, dbo.Model.Name AS Model, dbo.CTrim.Name AS Trim, dbo.Fuel.Name AS Fuel, dbo.CylinderConfig.Name AS CylinderConfig, 
                         dbo.Aspiration.Name AS Aspiration, dbo.Drivetrain.Name AS Drivetrain, dbo.Transmission.Name AS Transmission, dbo.EngineTech.Name AS EngineTech, dbo.Body.Name AS Body, dbo.Car.Mileage, 
                         dbo.Condition.Name AS Condition, dbo.Car.Year, dbo.Car.Doors, dbo.Car.Vin AS VIN, dbo.Car.EngineCode, dbo.Car.CylinderCount, dbo.Car.TransmissionGears, dbo.Car.Wheelbase, dbo.Car.Length, dbo.Car.Width, 
                         dbo.Car.Height, dbo.Car.Color, dbo.Car.MaxHP, dbo.Car.MaxTorque, dbo.Car.PeakRPM, dbo.Car.Redline, dbo.Car.TireSize, dbo.Car.ZeroToSixty, dbo.Car.ZeroToHundred, dbo.Car.QuarterMile, dbo.Car.Added, dbo.Car.Edited, 
                         dbo.Car.BodyCondition, dbo.Car.EngineCondition, dbo.Car.OilCondition, dbo.Car.Cams
FROM            dbo.Car INNER JOIN
                         dbo.Aspiration ON dbo.Car.Aspiration = dbo.Aspiration.Id INNER JOIN
                         dbo.Body ON dbo.Car.Body = dbo.Body.Id INNER JOIN
                         dbo.Condition ON dbo.Car.Condition = dbo.Condition.Id INNER JOIN
                         dbo.Make ON dbo.Car.Make = dbo.Make.Id INNER JOIN
                         dbo.Model ON dbo.Car.Model = dbo.Model.Id AND dbo.Make.Id = dbo.Model.Make INNER JOIN
                         dbo.CTrim ON dbo.Car.Trim = dbo.CTrim.Id AND dbo.Model.Id = dbo.CTrim.Model INNER JOIN
                         dbo.CylinderConfig ON dbo.Car.CylinderConfig = dbo.CylinderConfig.Id INNER JOIN
                         dbo.Drivetrain ON dbo.Car.Drivetrain = dbo.Drivetrain.Id INNER JOIN
                         dbo.EngineTech ON dbo.Car.EngineTech = dbo.EngineTech.Id INNER JOIN
                         dbo.Fuel ON dbo.Car.Fuel = dbo.Fuel.Id INNER JOIN
                         dbo.Transmission ON dbo.Car.Transmission = dbo.Transmission.Id
