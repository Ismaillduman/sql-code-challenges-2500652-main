-- Ertstellen Sie eine Liste von Büchern, die von 1890 bis 1899  
-- veröffentlicht wurden und im Moment ausgeliehen werden können. 

SELECT Buecher.Titel, Buecher.Erscheinungsdatum, Buecher.Barcode From Buecher
Where BuchID NOT IN (SELECT BuchID FROM Ausleihung WHERE RueckgabeDatum ISNULL)
AND Buecher.Erscheinungsdatum BETWEEN 1890 AND 1899;
