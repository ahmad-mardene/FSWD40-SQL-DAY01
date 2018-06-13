

SELECT bus.Driver, route.Destination, stops.fk_Code
FROM bus
INNER JOIN route ON bus.fk_Code = route.Code
INNER JOIN stops ON bus.fk_Code = stops.fk_Code
