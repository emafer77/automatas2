# automatas2


Design Doc: Mobile Gym Trainer App
Link: https://github.com/emafer77/automatas2/blob/main/README.md

Author(s):fernado Emanuel Ramirez Ahumada

Status: Draft

Ultima actualización: 2024-02-22
Objetivo
El objetivo principal es proporcionar a los usuarios una experiencia de entrenamiento personalizada y respaldada por datos científicos, fomentando un estilo de vida saludable y activo.

Nota: Este es un diseño inicial y puede requerir ajustes y revisiones a medida que el proyecto avanza. Se espera que este diseño sirva como guía para el desarrollo del proyecto de la aplicación móvil del entrenador de gimnasio.

Contenido
Goals
  Proporcionar orientación personalizada sobre los mejores ejercicios para cada grupo muscular.
  Ofrecer vídeos explicativos para asegurar la correcta ejecución de los ejercicios.
  Integrar datos científicos para respaldar la efectividad de los ejercicios recomendados.
  Generar rutinas automáticas adaptadas a la intensidad y repeticiones adecuadas para cada usuario.
  Incluir una tabla de progreso para que los usuarios puedan rastrear su mejora física.

Non-Goals


Background
  eh visto aplicaciones moviles que su funcionalidad se asemeja mucho a la aplicacion que deseo desarrollar, la 
  diferencia de mi aplicacion  tendra una interfaz amigable facil de entender , tendra videos de expertos en el tema  ademas que contara con inteligencia 
  artificial  que brindara soporte a preguntas asi como creara rutinas de acuerdo a las necesidades de cada persona.

Overview
  se requiere una app movil que guarde videos en secciones  dependiendo la zona del cuerpo humano que se quiere entrenar
  las secciones seran:
    piernas
    espalda
    brazos
    hombros
    pecho
  se agregara una inteligencia artificial capaz de dar rutinas 
  las rutinas hechas tendran una conexion con los videos  para que asi el usuario tenga una mejor vision del entrenamiento a realizar.

Detailed Design
  Solution 1
    Frontend
      en la pantalla principal se visualizara una lista de la parte del cuerpo al que se quiere enfocar que al darle click  despliegara lista de musculos especificos
        ejemplo
        pecho:
          pecho superior:
            -desplegar videos 
            -informacion del musculo
          pecho medio:
          pecho bajo:
      tambien en la misma pantalla habra una seccion para crear rutina 
        -se despliegara un asistente virtual que le hara prenguntas al usuario
          ejemplo:
            ¿que edad tienes?
            ¿cual es tu peso actual?
            ¿cuanto mides actualmente?
            ¿cual es tu meta?
              -perder grasa
              -ganar musculo
              -perder grasa y ganar musculo
            ¿que deseas entrenar hoy?
            ¿cual es el tiempo con el que dispones?
            
   De acuerdo con la informacion obtenida buscara los videos de ejercicio y creara una rutina expesifica
    
  para hacer esto posible se pretende usar la libreria de openIA 
        https://api.openai.com/v1/chat/completions
   
          
  Base de datos para almacenar información sobre ejercicios, vídeos y datos científicos.
  Lógica para generar rutinas automáticas basadas en las preferencias y niveles de fitness de los usuarios.
  
  Solution 2
    (En caso de expandir el proyecto con un nutricionista virtual)
    Frontend
    Pantallas para el ingreso de datos nutricionales y seguimiento de la ingesta diaria.
    Módulo para la visualización de recomendaciones nutricionales personalizadas.

Backend

  Integración con una base de datos nutricional.
  Algoritmo para generar recomendaciones nutricionales basadas en los objetivos de fitness y la información del usuario.
  Consideraciones
  Trade-offs entre la complejidad de la rutina automática y la experiencia del usuario.
  Equilibrio entre la cantidad de información científica y la simplicidad para el usuario promedio.
  Posible deuda técnica relacionada con la integración de nuevas funciones en el futuro.

Métricas
  Número de usuarios activos.
  Participación en la visualización de vídeos instructivos.
  Mejora en la retención de usuarios a lo largo del tiempo.
  Evaluación de la satisfacción del usuario mediante encuestas o comentarios.
  Links
