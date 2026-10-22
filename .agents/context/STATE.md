# Project State & Architecture Memory · Simulador SAD

## 1. Project Overview
- **Name:** Simulador SAD & Quadern de Casos Pràctics (UF0122 & UF0123)
- **Summary:** Plataforma interactiva d'entrenament clínic i psicosocial per a professionals i estudiants del Certificat de Professionalitat SSCS0108 (Atenció Sociosanitària a Persones al Domicili).
- **Core Methodology:** Atenció Centrada en la Persona (ACP), principi d'ajuda mínima, respecte al ritme individual, seguretat a la llar i dinamització social comunitària.
- **Primary Deliverables:**
  - `index.html` / `quadern_amigable.html`: Aplicació web interactiva amb els 25 casos pràctics complets enriquits amb imatges contextuals, expedient biogràfic ACP complet, creador ràpid de nous casos amb persistència a `localStorage`, caixes d'escriptura amb auto-guardat en temps real, botó d'impressió/PDF, pistes reflexives desplegables, resolució tècnica model amb xifrat militar AES-GCM 256, protecció anti-hacker en 4 capes, accés d'administrador d'incògnit (Stealth Admin Gateway) i interruptor d'estat ON/OFF.
  - `status.json`: Fitxer remot d'estat (kill-switch global) que controla si l'aplicació està encesa (`active: true`) o apagada (`active: false`) a nivell mundial a GitHub Pages.
  - `apagar.bat` / `encendre.bat`: Llançadors ràpids d'un sol clic per a Windows que commuten l'estat d'encesa/apagada i ofereixen sincronització immediata amb GitHub.
  - `Solucionari_25_Casos_Practics_UF0122_UF0123.md`: Document oficial de resolució dels 25 casos amb pautes i derivacions interdisciplinars.
  - `README.md`: Guia formativa dels 25 perfils i la filosofia d'intervenció.

## 2. Infrastructure & Live Deployment
- **Local Directory:** `L:\Simulador-SAD\`
- **GitHub Repository:** `https://github.com/OroMediterraneo/simulador-sad`
- **GitHub Pages Live URL (24/7 Web & Mobile):** `https://oromediterraneo.github.io/simulador-sad/`

## 3. Architecture & Functional Components
- **Imatges Contextuals & Lightbox:**
  - Cadascun dels 25 casos disposa d'una imatge representativa vinculada al seu repte específic (marxa, caminador, cuina, fisioteràpia, baixa visió, ictus, soledat, dol, oxigenoteràpia, disfàgia, mobilitat al llit, etc.).
  - Miniatura interactiva a la capçalera de la fitxa amb insígnia d'avatar i visor Lightbox a pantalla completa al fer clic.
- **Expedient Biogràfic & Historial de Vida (ACP):**
  - Desplegable accessible a cada cas amb 4 targetes d'Atenció Centrada en la Persona:
    1. *Trajectòria Vital & Qui és:* ofici, records i bagatge de vida.
    2. *Gustos, Preferències i Rutines:* com pren el cafè, música, aficions.
    3. *Què li genera angoixa o rebuig:* detonants a evitar (presses, tuteig no permès, canvis d'objectes).
    4. *Pautes Prèvies de l'Equip (PAI):* indicacions de Treball Social, Fisioteràpia, Infermeria o Psicologia.
- **Creador Ràpid de Casos (Opció "Crear"):**
  - Botó `➕ Crear Nou Cas` a la barra d'eines.
  - Formulari modal intuïtiu amb selector visual de miniatures de la galeria gràfica del projecte (`img/`).
  - Camps estructurats per a dades generals, cita, context, expedient ACP, píndoles ràpides, pistes i solucionari model.
  - Persistència a `localStorage` (`SAD_CUSTOM_CASES`) amb combinació transparent amb els 25 casos base.
  - Accions d'edició (`✏️ Editar`) i eliminació (`🗑️ Eliminar`) a la fitxa dels casos personalitzats.
  - Eina d'exportació (`📤 Exportar Casos JSON`) i importació (`📥 Importar Casos JSON`).
- **Pedagogical Support System:**
  - **Nivell 1 (Pistes):** Botó `💡 Pistes d'orientació` que activa pistes reflexives sense fer espòiler.
  - **Nivell 2 (Resolució Oficial):** Botó `🎯 Resolució oficial del cas` que desxifra dinàmicament en memòria la solució completa segmentada en els 5 blocs clau (Necessitats, Riscos, Autonomia, Llar, Xarxa Social) amb l'opció `📋 Aplicar al meu formulari`.
- **Client-Side Persistence:** Desat transparent en `localStorage` (clau `SAD_PRACTICE_RESPONSES_V2`) amb auto-guardat automàtic per cada pulsació de tecla (debounce de 400ms).

## 4. Anti-Hacker Multi-Layer Security Architecture & Stealth Admin Gateway
- **Capa 1: Escut Perimetral (CSP & Framebusting):**
  - Capçalera estricta `Content-Security-Policy` que restringeix la càrrega de fonts i recursos no autoritzats.
  - Protecció anti-clickjacking `X-Frame-Options: DENY` i script framebuster en temps d'execució que impedeix incrustar el simulador en marcs o iframes externs.
- **Capa 2: Escut Anti-Bot & Força Bruta (Honeypot + PBKDF2):**
  - Camp parany (*honeypot*) per detectar i penalitzar scrapers o eines automatitzades de cracking.
  - Bloqueig exponencial d'intents: 1r bloqueig = 30s, 2n bloqueig = 3 min, 3r bloqueig = 15 min.
  - Derivació criptogràfica lenta PBKDF2 amb 100.000 iteracions SHA-256.
- **Capa 3: Xifrat Militar AES-GCM 256 de les Solucions Oficials:**
  - Totes les solucions oficials dels 25 casos estan empaquetades en un embolcall criptogràfic AES-GCM (`ENCRYPTED_SOLUTIONS_ENVELOPE`).
  - No existeix text pla de les solucions al codi font ni a GitHub; qui obri el fitxer amb `F12` o `Ctrl+U` només troba dades inintel·ligibles encriptades.
  - Només quan s'introdueix el PIN d'alumne (`SAD2026`) o la Clau Mestra (`AdminSAD2026!`), la Web Crypto API desxifra les solucions en memòria RAM de forma efímera.
- **Capa 4: Escut Anti-Inspecció & Stealth Admin Gateway (Accés d'Incògnit):**
  - **Zero visibilitat pública d'administració:** S'ha eliminat qualsevol enllaç de text `"Accés Admin"` i qualsevol botó `"Admin"` de les pantalles públiques.
  - **Entrada Intel·ligent Unificada:** Si l'administrador introdueix la Clau Mestra (`AdminSAD2026!`) a la mateixa casella de PIN comú, el sistema el reconeix a l'instant i obre el Panell de Control Mestre.
  - **Gest Secret Tàctil:** Fent 3 tocs ràpids sobre la icona del candau 🔐 o 🔒, o sobre la insígnia del certificat, s'activa el panell d'administrador des de qualsevol mòbil o tauleta.
  - **URL Secreta d'Administració:** Accés immediat afegint `?admin=1` o `?gestio=1` a l'enllaç del navegador.
  - **Drecera de teclat:** `Ctrl + Shift + A` per a obertura ràpida en PC.
  - Bloqueig de menú contextual sobre solucions i pistes.
  - Segellat `Object.freeze` sobre l'objecte de solucions desxifrades i constants del sistema.

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
- [x] Implementació del blindatge Anti-Hacker en 4 capes (CSP, Framebusting, Honeypot, Bloqueig Exponencial, Xifrat AES-GCM 256 en repòs i Anti-Inspecció).
- [x] Ocultació total de l'accés d'administrador (Stealth Admin Gateway: sense botons públics, entrada unificada per PIN/Clau, 3 tocs al candau, drecera i URL secreta).
- [x] **Integració d'imatges contextuals a cadascun dels 25 casos pràctics amb visor Lightbox ampliat.**
- [x] **Implementació de l'Expedient Biogràfic & Historial de Vida ACP a cadascun dels 25 casos (Trajectòria, Gustos, Aversions, PAI).**
- [x] **Desenvolupament del Creador Ràpid de Casos (Opció "Crear" amb selector visual d'imatges, edició, eliminació, auto-guardat i exportació JSON).**
- [x] Sincronització de memòria d'enginyeria a `STATE.md`.
