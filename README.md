# Biopochito-Repo
un videojuego 3D desarrollado en **Godot Engine 4** diseñado como caso de estudio y plantilla de arquitectura modular basada en **Composición sobre Herencia** (*Component-Based Architecture*).

# Objetivos
- Concienciar y sensibilizar sobre el medio ambiente y la contaminación y explotación de recursos
- Ofrecer conocimientos para comprender el medioambiente y sus problemas
- Motivar al uso de las diferentes medidas para combatir el cambio climático y la contaminación


## Estructura del Proyecto (Scaffolding)

El proyecto sigue una estructura limpia, escalable y modular organizada por dominios y responsabilidades:

```text
prototipo-componentes/
├── addons/                         # Plugins y herramientas de terceros
│   └── csg_mesh_editor/            # Editor de mallas CSG para prototipado rápido
├── assets/                         # Recursos audiovisuales crudos
├── components/                     # COMPONENTES MODULARES (Lógica pura y reutilizable)
├── core/                           # Sistemas centrales globales
│   └── autoloads/                  # Singletons y Event Buses
├── data/                           # Definiciones de datos y recursos instanciados
│   ├── definitions/                # Scripts que extienden de Resource (schemas)
│   └── resources/                  # Instancias .tres de los datos
├── entities/                       # ACTORES Y ENTIDADES (Composiciones)
├── scenes/                         # Niveles, mapas y pantallas de juego
│   └── levels/
│       └── TestLevel.tscn          # Nivel principal de pruebas y sandbox
├── ui/                             # Interfaces de usuario, menús y HUDs
├── project.godot                   # Configuración del proyecto Godot
└── README.md                       # Documentación técnica
```

---
