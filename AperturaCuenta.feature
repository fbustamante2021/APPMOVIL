Feature: Apertura de cuenta de Ahorros ExtraCash
#Scenario (+)Positivo
  Scenario: Solicitud de Apertura de cuenta de Ahorros del tipo cuenta simple en moneda Soles
    Given: El cliente selecciona prodcutos
    When: El cliente selecciona abre tu cuenta aqui
    And Se habilita una nueva ventana Te ofrecemos tipos de cuenta
    Then: El cliente selecciona el tipo de producto cuenta simple
    And El cliente selecciona la opcion me interesa
    And El cliente acepta los terminos y condiciones
#Scenario (-) Negativo
  Scenario: Solicitud de Apertura de cuenta de Ahorros del tipo cuenta simple en moneda Soles
    Given: El cliente selecciona prodcutos
    When: El cliente selecciona abre tu cuenta aqui
    And Se habilita una nueva ventana Te ofrecemos tipos de cuenta
    Then: El cliente selecciona el tipo de producto cuenta simple
    And El cliente selecciona la opcion me interesa
    And El cliente no puede continuar la operación mostrando el mensaje ocurrio un problema de conexion de internet
