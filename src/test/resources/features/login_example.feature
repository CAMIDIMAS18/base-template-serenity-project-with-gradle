# language: es

@Login
Necesidad del negocio: Inicio de sesión
  Como usuario de la página saucedemo,
  quiero poder iniciar sesión con mi nombre de usuario y contraseña,
  para acceder a los productos disponibles y realizar compras.

  Regla de negocio: El nombre de usuario y la contraseña deben ser válidos y estar asociados a una cuenta existente en el sistema.

    Antecedentes: Ingresar a la página de Inicio
      Dado que el usuario se encuentra en la página de inicio del aplicativo

    @SuccessfulLogin
    Esquema del escenario: Inicio de sesión con éxito
      Cuando él ingrese un nombre su usuario <username> y una contraseña <password>
      Entonces el usuario debe ver el mensaje de bienvenida "Productos"
      Ejemplos:
        | username                | password     |
        | standard_user           | secret_sauce |
        | locked_out_user         | secret_sauce |
        | problem_user            | secret_sauce |
        | performance_glitch_user | secret_sauce |

    @UnsuccessfulLogin
    Esquema del escenario: Inicio de sesión con credenciales inválidas
      Cuando él ingrese un usuario <username> o una contraseña <password> inválidas
      Entonces el usuario debe ver el mensaje de error "Epic sadface: Username and password do not match any user in this service"
      Ejemplos:
        | username      | password           |
        | standard_user | password_incorrect |
        | other_user    | secret_sauce       |


    @LoginWithoutEnteringCredentials
    Escenario: Inicio de sesión sin ingresar credenciales
      Cuando él hace clic en el botón "Iniciar sesión" sin escribir sus credenciales
      Entonces el usuario debe ver el mensaje de error "Epic sadface: Username is required"