# QA Automation – Frontend (UI)

## Descripción
Este repositorio contiene la automatización de pruebas **UI (Frontend)** desarrollada como parte de una prueba técnica de QA Automation.

El objetivo principal es validar flujos críticos de negocio desde la perspectiva del usuario final, utilizando un enfoque **BDD (Behavior Driven Development)** y buenas prácticas de automatización.

---

## Stack Tecnológico
- **Ruby** – Lenguaje base
- **Cucumber** – Definición de escenarios BDD
- **Capybara** – Interacción con la UI
- **Selenium WebDriver** – Control del navegador (Chrome)

---

## Estructura del Proyecto

```text
frontend
├── features
│   ├── login.feature
│   ├── step_definition
│   │   └── Login_steps.rb
│   └── support
│       └── env.rb
│
├── pages
│   ├── login_page.rb
│   └── expenses_page.rb
│
└── .env
## Explicación de carpetas

features: escenarios BDD escritos en Gherkin (legibles sin código)

step_definition: implementación de los pasos de negocio

pages: Page Object Model, centraliza selectores y lógica de UI

api/spec: pruebas automatizadas de API

schemas: validación de contratos de respuesta

## Configuración del Entorno
## Requisitos

Ruby 3.x

Google Chrome

Bundler

## Variables de entorno (frontend/.env)
BASE_URL=https://demo.applitools.com
HEADLESS=true
##AUTOR: Nicolas Buitrago
