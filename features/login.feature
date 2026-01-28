Feature: Login y validación de tabla de gastos

  Scenario: Login exitoso y validaciones de gastos
    Given el usuario está en la página de login
    When inicia sesión con credenciales válidas
    Then es redirigido a la página de gastos
    And existen 6 transacciones
    And el total balance es 350
    And el crédito disponible es 17800
    And los valores positivos son verdes
    And los valores negativos son rojos
