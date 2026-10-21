# Project State & Architecture Memory · Simulador SAD

## 1. Project Overview
- **Name:** Simulador SAD & Quadern de Casos Pràctics (UF0122 & UF0123)
- **Summary:** Plataforma interactiva d'entrenament clínic i psicosocial per a professionals i estudiants del Certificat de Professionalitat SSCS0108 (Atenció Sociosanitària a Persones al Domicili).
- **Core Methodology:** Atenció Centrada en la Persona (ACP), principi d'ajuda mínima, respecte al ritme individual, seguretat a la llar i dinamització social comunitària.
- **Primary Deliverables:**
  - `index.html` / `quadern_amigable.html`: Aplicació web interactiva amb els 25 casos pràctics complets, disseny càlid en color, caixes d'escriptura amb auto-guardat en `localStorage`, botó d'impressió/PDF, pistes reflexives desplegables, resolució tècnica model detallada, capa de seguretat criptogràfica SHA-256 i interruptor d'estat ON/OFF.
  - `status.json`: Fitxer remot d'estat (kill-switch global) que controla si l'aplicació està encesa (`active: true`) o apagada (`active: false`) a nivell mundial a GitHub Pages.
  - `apagar.bat` / `encendre.bat`: Llançadors ràpids d'un sol clic per a Windows que commuten l'estat d'encesa/apagada i ofereixen sincronització immediata amb GitHub.
  - `Solucionari_25_Casos_Practics_UF0122_UF0123.md`: Document oficial de resolució dels 25 casos amb pautes i derivacions interdisciplinars.
  - `README.md`: Guia formativa dels 25 perfils i la filosofia d'intervenció.

## 2. Infrastructure & Live Deployment
- **Local Directory:** `L:\Simulador-SAD\`
- **GitHub Repository:** `https://github.com/OroMediterraneo/simulador-sad`
- **GitHub Pages Live URL (24/7 Web & Mobile):** `https://oromediterraneo.github.io/simulador-sad/`

## 3. Architecture & Functional Components
- **Pedagogical Support System:**
  - **Nivell 1 (Pistes):** Botó `💡 Pistes d'orientació` que activa pistes reflexives sense fer espòiler.
  - **Nivell 2 (Resolució Oficial):** Botó `🎯 Resolució oficial del cas` que desplega la solució completa segmentada en els 5 blocs clau (Necessitats, Riscos, Autonomia, Llar, Xarxa Social) amb l'opció `📋 Aplicar al meu formulari`.
- **Client-Side Persistence:** Desat transparent en `localStorage` (clau `SAD_PRACTICE_RESPONSES_V2`) perquè les respostes dels usuaris romanguin desades a qualsevol dispositiu mòbil o escriptori.

## 4. Security & Power Control Architecture (EAG Security System)
- **Interruptor Mestre Dual (Remote & Local Power Switch):**
  - **Estat Global (`status.json`):** L'aplicació consulta a l'inici `status.json` (sense memòria cau). Quan `active: false`, el DOM complet de l'aplicació es bloqueja i es desplega la pantalla d'apagada / fora de servei.
  - **Interruptor Local d'Administrador:** Des del Panell de Control Mestre, l'administrador pot apagar o encendre immediatament l'aplicació al seu equip, copiar el JSON o descarregar-lo.
  - **Scripts d'un clic per a Windows:** `apagar.bat` i `encendre.bat` commuten l'estat localment i fan push automàtic a GitHub Pages.
- **Accés Restringit (Student Gatekeeper):**
  - L'aplicació requereix un codi PIN d'accés per obrir el quadern clínic i les resolucions.
  - **PIN d'alumnes inicial per defecte:** `SAD2026` (verificat mitjançant hash SHA-256 amb Web Crypto API).
  - **Clau Mestra inicial per defecte:** `AdminSAD2026!` (accés al panell mestre de control).
  - **Protecció Brute-force:** Després de 5 intents fallits consecutius, el sistema es bloqueja temporalment durant 30 segons.
  - **Drecera ràpida per a docents:** `Ctrl + Shift + A` obre directament el formulari d'administració des de qualsevol pantalla.
  - **Botó de Tancament Immediat:** Botó `🔒 Tancar Sessió` a la barra d'eines que bloqueja la pantalla amb 1 sol clic.

## 5. Current Milestones & Progress
- [x] Extracció del model i patró a partir de l'exercici manuscrit (Teresa, 83a - UF0123).
- [x] Creació i redacció dels 25 casos clínicament diferenciats.
- [x] Redacció del solucionari tècnic oficial complet.
- [x] Redisseny humà, càlid i en color de la interfície.
- [x] Implementació del sistema de pistes i resolució interactiva a cada fitxa.
- [x] Creació de la carpeta de projecte independent `L:\Simulador-SAD\`.
- [x] Publicació i sincronització a GitHub Pages (`OroMediterraneo/simulador-sad`).
- [x] Implementació del sistema d'apagada/encesa a voluntat (Kill Switch local i remot `status.json`).
- [x] Implementació de la capa de seguretat criptogràfica SHA-256 (Gatekeeper per PIN, Panell Admin, drecera `Ctrl+Shift+A` i scripts `apagar.bat` / `encendre.bat`).
- [x] Actualització i sincronització del Context Keeper (`STATE.md`).
