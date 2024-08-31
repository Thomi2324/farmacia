# Modelo Relacional para una Farmacia

## Farmacia (Pharmacy)
    Pharmacy_id (PK): Identificador unico de la farmacia (Numero o alfanumerico)
    Pharmacy_name: nombre de la farmacia (Texto)
    Pharmacy_address: Direccion de la farmacia (Numero o alfanumerico)
    Pharmacy_phone: telefono de la farmacia 

## Farmaceuta (Pharmacist)
    Pharmacist_id (PK): identificador unico del farmaceuta (Numero o alfanumerioco)
    Pharmacist_name: nombre del farmaceuta (Texto) 
    Pharmacist_studies: estudios del farmaceuta(Texto)
    Pharmacist_graduation_day: dia de graduacion del farmaceuta(Texto o numero)

## Cliente (Customer)
    Customer_id (PK): Identificador único del cliente (Numero o alfanumerico)
    Customer_name: Nombre del cliente (Texto)
    Customer_phone: Telefono del cliente (Numero)
    Customer_email: Correo del cliente (Texto o alfanumerico)
    
## Medicamento (Medicine)
    Medicine_id (PK): identificador unico de la medicamento (Numero o alfanumerico)
    Medicine_name: nombre del medicamento (Texto)
    Medicine_price: precio del medicamento (Texto o numero)

## Formula medica (Medical formula)
    Medical formula_id (PK): identificador unico de la formula medica (numero o alfanumerico)
    Medical formula_date: fecha en la que se entrego la formula (Texto o numero)
    Medical formula_customer_id: cliente que debe reclamar la formula medica (Texto)
    Medical formula_pharmacy_id: farmacia en la que debe reclamar los medicamentos (Texto)

## Venta (sale)
    Sale_id (PK): identificador unico de la venta (numero o alfanumerico)
    Sale_date: fecha en la que compro el medicamento (Texto o numero)
    Sale_pharmacy_id: farmacia en la que compro el medicamento (Texto)
    Sale_customer_id: nombre del cliente que compro el medicamento (Texto)
    Sale_total: total del precio a pagar por los medicamentos (numero)