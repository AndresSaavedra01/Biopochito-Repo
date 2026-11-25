# Biopochito: La Odisea Ecológica

> **Un Plataformas de acción y aventuras en 3D desarrollado en Godot Engine 4.**  
> Inspirado en las dinámicas de plataformas y combate de *Ratchet & Clank* y la exploración oceánica entre islas de *The Legend of Zelda: The Wind Waker*.

---

## Objetivos del Proyecto

* **Sensibilización:** Concienciar activamente sobre los peligros de la sobreexplotación de recursos, la contaminación indiscriminada y el cambio climático.
* **Alfabetización Ecológica:** Proveer conocimientos prácticos e intuitivos sobre reciclaje, compostaje, separación de residuos en la fuente y eficiencia energética.
* **Gamificación Proactiva:** Promover acciones sustentables (desconectar dispositivos en standby, cerrar grifos abiertos, reparar y reutilizar antes de desechar o consumir objetos nuevos).

---

## Historia y Estructura Narrativa

### Sinopsis
Tras librar a la Tierra de amenazas pasadas, **Biopochito** es reclutado por **Jack**, un oso astronauta inteligente que llega en su nave espacial. Jack revela que su planeta de origen (**Verdalia**) ha colapsado bajo los desechos. La polución concentrada ha cobrado conciencia propia bajo la forma de **«La Mancha»**, un ente parasitario cuyo único propósito es consumir y corromper el universo. 

Para expandir su infección hacia la Tierra y el cosmos, La Mancha ha reactivado conductos que drenan los recursos de las islas hacia un volcán central inactivo, el cual pretende usar como cañón de lanzamiento espacial. Biopochito debe restaurar el equilibrio isla por isla antes de que sea tarde.

### Estructura Narrativa (Kishōtenketsu)
1. **Ki (Introducción):** Biopochito llega a la nave de Jack y a la **Isla Tutorial**, donde aprende los fundamentos de limpieza, recolección y combate.
2. **Shō (Desarrollo):** Exploración y sanación no lineal de las tres islas principales del archipiélago (Agua, Tierra y Aire).
3. **Ten (Giro / Clímax):** Al limpiar las tres islas, una mega-isla volcánica emerge de las profundidades del océano. La Mancha concentra toda la polución restante para un lanzamiento inminente.
4. **Ketsu (Desenlace):** Infiltración en el volcán, derrota definitiva de La Mancha, siembra de la **Semilla del Árbol Madre** en el núcleo planetario y despegue de la purificación masiva del aire y los mares.

---

## Archipiélago y Diseño de Niveles

Cada isla cuenta con un foco ambiental y un contraste visual evidente: el mapa pasa de un páramo industrial corrompido por fango tóxico a un ecosistema vivo y restaurado a medida que se completan las zonas.

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
