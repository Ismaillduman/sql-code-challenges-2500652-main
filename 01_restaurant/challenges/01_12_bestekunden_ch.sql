-- Erstellen Sie eine Liste von Kundinnen/Kunden,
-- die die meisten Bestellungen abgegeben haben,
-- sodass wir ihnen einen Coupon schenken können.

-- Geben Sie die Anzahl der Bestellungen, 
-- den Vornamen, Nachnamen sowie die Email-Adresse an.

SELECT COUNT(Bestellungen.BestellungsID) as AnzahlDerBestellungen, Kunden.Vorname, Kunden.Nachname, Kunden.Email
FROM Bestellungen JOIN Kunden ON Kunden.KundenID=Bestellungen.KundenID
GROUP BY Bestellungen.KundenID
Order BY AnzahlDerBestellungen DESC
LIMIT 15;
