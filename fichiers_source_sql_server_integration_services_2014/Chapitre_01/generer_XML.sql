SELECT
	Societe.Nom as Societe, 
	Contact.Prenom, Contact.Nom, Contact.Email,
	Adresse.Adresse1 as 'Adresse/Adresse1', 
	Adresse.Adresse2 as 'Adresse/Adresse2',
	Ville.CodePostal as 'Adresse/CP',
	Ville.NomVille as 'Adresse/Ville' 
FROM Contact.Contact Contact
JOIN Contact.Societe Societe ON Contact.SocieteId = Societe.SocieteId
JOIN Contact.Adresse Adresse ON Contact.AdressePostaleId = Adresse.AdresseId
JOIN Reference.Ville Ville ON Adresse.VilleId = Ville.VilleId
ORDER BY Societe.Nom
FOR XML PATH, ROOT ('Contacts');