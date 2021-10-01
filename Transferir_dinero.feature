#Autor: FBS
@MVP-AppMovil @Android @Iphone
Feature: Transferir Dinero
  Como Cliente del Banco IBK
  Quiero Transferir Dinero entre mis cuentas
  Para financiar mi tarjeta de credito

Rule: El cliente debe ser mayor de edad o igual a 18 años

  # Uso de Background
Background:
  Given El cliente esta en la página Transferir
  # El Primer Scenario (+) Positivo
  @SRT-2021-OptimizacionAppMovil
  Scenario: Cuando el Cliente tiene disponible Dinero
    #Given El cliente esta en la página Transferir
    And El Cliente tiene cuenta bancaria con tipo de moneda en soles
    And El Cliente tiene Dinero disponible en cuenta bancaria
    When El Cliente solicita Transferir Dinero entre sus cuentas
    Then El Dinero es Transferido a la segunda cuenta bancaria
  # El Segundo Scenario (-) Negativo
  Scenario: Cuando el Cliente no tiene disponible Dinero
  #Given El cliente esta en la página Transferir
    And El Cliente tiene cuenta bancaria con tipo de moneda en soles
    And El Cliente no tiene Dinero disponible en cuenta bancaria
    When El Cliente solicita Transferir Dinero entre sus cuentas
    Then El Cliente no puede Transferir a la segunda cuenta bancaria
    And El mensaje debería mostrar: No cuenta con monto disponible para realizar dicha operación
  #Scenario Outline
  Scenario Outline: Transferir Dinero
  Given La cuenta Bancaria tiene <dineroDisponiblePrimeraCuenta>
  And El cliente tiene cuenta bancaria con tipo <moneda>
  When EL Cliente solicita transferir Dinero <dineroTransferido>
  Then El Dinero es Transferido a la Segunda cuenta bancaria <mensaje>
  Examples:
  |dineroDisponiblePrimeraCuenta |moneda |dineroTransferido |mensaje
  |1000.00                       |Soles  |100.00            |Transferencia realizada con éxito
