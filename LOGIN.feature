#Autor: FBS..
@MVP-AppMovil @Android @Iphone
Feature: Login
  Como Cliente,
  Quiero ingresar al AppMovil con credenciales de Usuario & Password
  Para asi poder utilizar el AppMovil
  # Uso de Background
Background:
  Given: Yo estoy en la página Login del AppMovil
  # El primer Scenario (+) Positivo
  @SRT-2021-OptimizacionAppMovil
Scenario: Cuando realizo el Login con credenciales de Usuario & Password Validos
  #Given Yo estoy en la página Login del AppMovil
  When Yo registro la cuenta de email textbox con el valor "fbustamante@canvia.com"
  And Yo registro el Password textbox con valor "123456"
  And Yo doy click en el botón Login
  Then Yo debería estar en la página de nombre Home Page del AppMovil
  And El Título de la página de Home Page es "Bienvenida"
  But El botón login no debería estar presente en la página Home Page
    """
    Nombre: Freddy
    MontoDisponible:1000.00
    LineaDisponible:100.00
    """

  # El Segundo Scenario (-) Negativo
Scenario: Cuando realizo el login con credenciales no Validos
  #Given Yo estoy en la página Login del AppMovil
  When Yo registro la cuenta de email textbox con el valor "email.no.vaido@canvia.com"
  And Yo registro el Password textbox con el valor "1234xx"
  And Yo doy click en el botón login
  Then Yo no puedo acceder a la página de Home Page del AppMovil
  And El mensaje debería mostrar: Usuario y Password no Validos
#Scenario Outline
Scenario Outline: Cuando realizo el Login con credenciales de Usuario & Password Validos
  When Yo registro la cuenta de email textbox con el valor <email>
  And Yo registro el Password textbox con valor <password>
  And Yo doy click en el botón Login
  Then Yo debería estar en la página de nombre Home Page del AppMovil
  And El Título de la página de Home Page es "Bienvenida"
  But El botón login no debería estar presente en la página Home Page
  Examples:
  |email                  |password|
  |fbustamante@canvia.com |123456  |
