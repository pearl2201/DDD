SELECT   PrescMedicationId As Identifier,
		 NameOrDesc AS NameOrDescription,
         Posology,
         Quantity,
         Code
FROM     PrescMedication
WHERE    PrescriptionId = @PrescriptionId
ORDER BY NameOrDesc