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

## 📂 Estructura del Proyecto

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
