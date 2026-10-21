# Project State & Architecture Memory · Simulador SAD

## 1. Project Overview
- **Name:** Simulador SAD & Quadern de Casos Pràctics (UF0122 & UF0123)
- **Summary:** Plataforma interactiva d'entrenament clínic i psicosocial per a professionals i estudiants del Certificat de Professionalitat SSCS0108 (Atenció Sociosanitària a Persones al Domicili).
- **Core Methodology:** Atenció Centrada en la Persona (ACP), principi d'ajuda mínima, respecte al ritme individual, seguretat a la llar i dinamització social comunitària.
- **Primary Deliverables:**
  - `index.html` / `quadern_amigable.html`: Aplicació web interactiva amb els 25 casos pràctics complets, disseny càlid en color, caixes d'escriptura amb auto-guardat en `localStorage`, botó d'impressió/PDF, pistes reflexives desplegables i resolució tècnica model detallada.
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

## 4. Current Milestone
- [x] Extracció del model i patró a partir de l'exercici manuscrit (Teresa, 83a - UF0123).
- [x] Creació i redacció dels 25 casos clínicament diferenciats.
- [x] Redacció del solucionari tècnic oficial complet.
- [x] Redisseny humà, càlid i en color de la interfície.
- [x] Implementació del sistema de pistes i resolució interactiva a cada fitxa.
- [x] Creació de la carpeta de projecte independent `L:\Simulador-SAD\`.
- [x] Publicació i sincronització a GitHub Pages (`OroMediterraneo/simulador-sad`).
