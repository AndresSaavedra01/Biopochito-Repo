# Biopochito: La Odisea Ecológica

> **Un plataformas de acción y aventuras en 3D desarrollado en Godot Engine 4.**  
> Inspirado en las dinámicas de plataformas y combate de *Ratchet & Clank* y la exploración oceánica entre islas de *The Legend of Zelda: The Wind Waker*.

---

# 1. Objetivos del Proyecto

- **Sensibilización:** Concienciar activamente sobre los peligros de la sobreexplotación de recursos, la contaminación indiscriminada y el cambio climático.
- **Alfabetización Ecológica:** Proveer conocimientos prácticos e intuitivos sobre reciclaje, compostaje, separación de residuos en la fuente y eficiencia energética.
- **Gamificación Proactiva:** Promover acciones sustentables (desconectar dispositivos en standby, cerrar grifos abiertos, reparar y reutilizar antes de desechar o consumir objetos nuevos).

---

# 2. Historia y Estructura Narrativa

## 2.1. Sinopsis

Tras librar a la Tierra de amenazas pasadas, **Biopochito** es reclutado por **Jack**, un oso astronauta inteligente que llega en su nave espacial. Jack revela que su planeta de origen (**Verdalia**) ha colapsado bajo los desechos. La polución concentrada ha cobrado conciencia propia bajo la forma de **«La Mancha»**, un ente parasitario cuyo único propósito es consumir y corromper el universo.

Para expandir su infección hacia la Tierra y el cosmos, La Mancha ha reactivado conductos que drenan los recursos de las islas hacia un volcán central inactivo, el cual pretende usar como cañón de lanzamiento espacial. Biopochito debe restaurar el equilibrio isla por isla antes de que sea tarde.

## 2.2. Estructura Narrativa (Kishōtenketsu)

1. **Ki (Introducción):** Biopochito llega a la nave de Jack y a la **Isla Tutorial**, donde aprende los fundamentos de limpieza, recolección y combate.
2. **Shō (Desarrollo):** Exploración y sanación no lineal de las tres islas principales del archipiélago (Agua, Tierra y Aire).
3. **Ten (Giro / Clímax):** Al limpiar las tres islas, una mega-isla volcánica emerge de las profundidades del océano. La Mancha concentra toda la polución restante para un lanzamiento inminente.
4. **Ketsu (Desenlace):** Infiltración en el volcán, derrota definitiva de La Mancha, siembra de la **Semilla del Árbol Madre** en el núcleo planetario y despegue de la purificación masiva del aire y los mares.

---

# 3. Archipiélago y Diseño de Niveles

Cada isla cuenta con un foco ambiental y un contraste visual evidente: el mapa pasa de un páramo industrial corrompido por fango tóxico a un ecosistema vivo y restaurado a medida que se completan las zonas.

---

# 4. Guía de Desarrollo

Esta sección establece las convenciones y reglas técnicas que deben seguir todos los integrantes del equipo al desarrollar nuevas funcionalidades.

El objetivo es mantener un proyecto modular, legible, reutilizable y fácil de ampliar.

## 4.1. Principios generales de programación

El desarrollo debe seguir los siguientes principios:

- **Responsabilidad única:** Cada clase, componente o sistema debe tener una responsabilidad claramente definida.
- **Bajo acoplamiento:** Las entidades y componentes no deben depender innecesariamente de implementaciones internas de otros elementos.
- **Alta cohesión:** El código relacionado con una misma funcionalidad debe estar agrupado.
- **Reutilización:** Los componentes deben poder utilizarse en distintas entidades siempre que tenga sentido.
- **Configurabilidad:** Los parámetros que puedan variar entre instancias deben exponerse mediante propiedades configurables.
- **Legibilidad:** El código debe ser comprensible para cualquier integrante del equipo.
- **Escalabilidad:** Las nuevas funcionalidades deben poder incorporarse sin modificar innecesariamente sistemas existentes.

Se priorizará una arquitectura basada en composición frente a jerarquías de herencia profundas.

### Reglas de programación

1. Evitar funciones excesivamente largas que mezclen distintas responsabilidades.
2. Evitar duplicar lógica que pueda encapsularse en una función, componente o sistema reutilizable.
3. No utilizar valores constantes directamente en múltiples lugares si deberían ser configurables.
4. Evitar referencias rígidas a nodos mediante rutas profundas o dependencias innecesarias de la estructura de la escena.
5. Utilizar tipado estático en GDScript siempre que sea posible.
6. Utilizar `@export` para parámetros que deban configurarse desde el Inspector.
7. Utilizar señales para comunicar eventos cuando no sea necesario que un objeto conozca directamente al receptor.
8. No crear componentes, sistemas o escenas sin una responsabilidad definida.

---

## 4.2. Convenciones de nomenclatura

Todos los archivos, clases, variables, funciones y nodos deben seguir las siguientes convenciones.

| Elemento | Convención | Ejemplo |
|---|---|---|
| Carpetas | `snake_case` | `player/` |
| Archivos | `snake_case` | `health_component.gd` |
| Scripts de escenas | `snake_case` | `player.gd` |
| Clases (`class_name`) | `PascalCase` | `HealthComponent` |
| Nodos | `PascalCase` | `CameraPivot` |
| Variables | `snake_case` | `current_health` |
| Funciones | `snake_case` | `take_damage()` |
| Constantes | `UPPER_SNAKE_CASE` | `MAX_HEALTH` |
| Señales | `snake_case` | `health_changed` |
| Enums | `PascalCase` | `WasteCategory` |
| Valores de enums | `UPPER_SNAKE_CASE` | `PLASTIC` |
| Recursos | `snake_case` | `plastic_bottle.tres` |
| Escenas | `snake_case` | `player.tscn` |

### Nombres de scripts y clases

Los nombres de los archivos deben indicar claramente qué representan.

Ejemplos:

```text
movement_component.gd
health_component.gd
collector_component.gd
player_input_controller.gd
score_manager.gd
waste_data.gd
```

Dentro de cada script, el nombre de la clase debe escribirse en PascalCase:

```gdscript
class_name MovementComponent
extends Node
```

### Nombres de nodos

Los nodos deben tener nombres semánticos que describan su función.

Correcto:

```text
Player
├── CollisionShape3D
├── MovementComponent
├── CameraPivot
│   └── SpringArm3D
│       └── Camera3D
└── InteractionArea
```

Evitar nombres genéricos como:

```text
Node
Node2
Area3D2
NewNode
```

### Prefijos para recursos de Blender

Para facilitar la identificación de objetos dentro de Blender:

| Prefijo | Significado | Ejemplo |
|---|---|---|
| `MESH_` | Malla | `MESH_Player` |
| `ARM_` | Esqueleto | `ARM_Player` |
| `MAT_` | Material | `MAT_Plastic` |
| `ACT_` | Animación | `ACT_PlayerRun` |
| `COL_` | Colisión auxiliar | `COL_Player` |

Los nombres deben mantenerse coherentes entre Blender y Godot siempre que sea posible.

---

## 4.3. Arquitectura del proyecto

El proyecto utiliza una arquitectura basada en composición. Las entidades se construyen combinando componentes independientes que proporcionan funcionalidades concretas.

Se diferencian los siguientes elementos:

### Entity (Entidad)

Representa un objeto o actor del mundo del juego.

Ejemplos:
- `Player`
- `Enemy`
- `WasteItem`
- `RecyclingContainer`

Responsabilidades:
- Representar un objeto del mundo.
- Agrupar los componentes necesarios.
- Coordinar el comportamiento de sus componentes cuando corresponda.
- Gestionar las referencias necesarias para su funcionamiento.

Una entidad no debe contener toda la lógica del juego. Su comportamiento debe delegarse en componentes especializados.

### Component (Componente)

Encapsula una responsabilidad concreta que puede incorporarse a una o varias entidades.

Ejemplos:
- `MovementComponent`
- `HealthComponent`
- `CollectorComponent`
- `CollectibleComponent`
- `MeleeAttackComponent`

Responsabilidades:
- Implementar una funcionalidad específica.
- Exponer una API clara mediante funciones y propiedades.
- Mantener sus propios datos cuando corresponda.
- Comunicar eventos mediante señales.
- Evitar depender de una entidad concreta cuando pueda diseñarse de forma reutilizable.

Un componente no debe asumir responsabilidades que pertenezcan a otros componentes.

Por ejemplo, `HealthComponent` debe gestionar la salud, pero no debe encargarse de mostrar la barra de vida ni de gestionar la puntuación.

### Controller (Controlador)

Interpreta entradas o coordina acciones para comunicarlas a las entidades y componentes correspondientes.

Ejemplos:
- `PlayerInputController`
- `EnemyAIController`

Responsabilidades:
- Interpretar entradas del jugador o decisiones de inteligencia artificial.
- Solicitar acciones a los componentes correspondientes.
- No duplicar la lógica interna de los componentes.

Por ejemplo, `PlayerInputController` interpreta la acción de movimiento y se la comunica a `MovementComponent`.

### System (Sistema)

Gestiona procesos que involucran varias entidades o que necesitan una coordinación más global.

Ejemplos:
- `ScoreManager`
- `SpawnSystem`
- `ClassificationSystem`

Responsabilidades:
- Coordinar procesos globales o compartidos.
- Gestionar reglas que no pertenecen a una única entidad.
- Recibir información de los componentes implicados y procesarla.

No todos los sistemas necesitan ser Autoloads. Solo se utilizarán singletons cuando exista una necesidad real de acceso global y persistente.

### Resource (Recurso)

Almacena datos y configuraciones reutilizables.

Ejemplos:
- `WasteData`
- `WeaponData`
- `EnemyData`

Se utilizarán recursos de Godot (`Resource`) para separar los datos de la lógica.

Por ejemplo, los distintos residuos pueden compartir la misma escena y comportamiento, pero utilizar diferentes recursos `WasteData`.

### Scene (Escena)

Representa una composición de nodos que puede instanciarse y reutilizarse.

Ejemplos:
- `player.tscn`
- `enemy.tscn`
- `waste_item.tscn`
- `recycling_container.tscn`

Las escenas deben organizar los nodos y componentes necesarios para representar una entidad, interfaz o nivel.

No es necesario crear una escena independiente para cada componente. Se creará una cuando el componente necesite una estructura de nodos propia, configuración reutilizable o una composición independiente.

---

## 4.4. Reglas para diseñar componentes

Antes de crear un componente, se deben responder estas preguntas:

1. ¿Qué responsabilidad concreta tiene?
2. ¿Puede utilizarse en más de una entidad?
3. ¿Qué datos necesita?
4. ¿Qué funciones ofrece a otros elementos?
5. ¿Qué señales debe emitir?
6. ¿De qué otros elementos depende?
7. ¿Puede funcionar sin conocer la estructura interna de su entidad?

### Reglas obligatorias

- Un componente debe tener una responsabilidad principal.
- No debe gestionar funcionalidades ajenas a su propósito.
- Debe exponer funciones públicas con nombres claros.
- Debe utilizar señales para notificar eventos cuando corresponda.
- Debe evitar referencias rígidas a otros nodos.
- Debe permitir configurar los parámetros que puedan variar.
- No debe acceder a otros componentes mediante rutas de nodos rígidas si puede recibir una referencia explícita.

### Ejemplo de componente

```gdscript
class_name HealthComponent
extends Node

signal health_changed(current_health: float, max_health: float)
signal died

@export var max_health: float = 100.0

var current_health: float


func _ready() -> void:
	current_health = max_health


func take_damage(amount: float) -> void:
	if amount <= 0.0 or is_dead():
		return

	current_health = maxf(current_health - amount, 0.0)
	health_changed.emit(current_health, max_health)

	if is_dead():
		died.emit()


func heal(amount: float) -> void:
	if amount <= 0.0 or is_dead():
		return

	current_health = minf(current_health + amount, max_health)
	health_changed.emit(current_health, max_health)


func is_dead() -> bool:
	return current_health <= 0.0


func get_health_percentage() -> float:
	if max_health <= 0.0:
		return 0.0

	return current_health / max_health
```

En este ejemplo, `HealthComponent` gestiona exclusivamente la salud. No conoce la interfaz gráfica ni decide qué debe hacer la entidad cuando muere.

La entidad o el controlador correspondiente puede escuchar la señal `died` y reaccionar al evento.

---

## 4.5. Comunicación entre entidades y componentes

La comunicación debe realizarse mediante métodos públicos, señales o referencias explícitas.

### Métodos públicos

Se utilizarán cuando un elemento necesite solicitar una acción concreta a otro.

Ejemplo:

```gdscript
movement_component.move(direction)
```

### Señales (Signals)

Se utilizarán para notificar eventos sin obligar al emisor a conocer quién los recibe.

Ejemplo:

```gdscript
signal item_collected(item: WasteItem)
```

Un componente puede emitir la señal y la entidad o sistema correspondiente puede escucharla.

### Referencias explícitas

Cuando un componente necesite acceder directamente a otro elemento, se utilizarán referencias configuradas o asignadas de manera clara.

### Prácticas que deben evitarse

- Utilizar `get_parent()` repetidamente para acceder a nodos concretos.
- Buscar nodos mediante rutas profundas que dependan de una estructura rígida.
- Crear dependencias circulares entre componentes.
- Hacer que un componente conozca toda la estructura interna de una entidad.
- Utilizar Autoloads como solución automática para cualquier comunicación.

---

## 4.6. Separación entre entrada, lógica y movimiento

El procesamiento de entradas debe estar separado de la lógica de movimiento.

Se utilizará el sistema **Input Map de Godot** para definir las acciones del juego.

Acciones iniciales:

| Acción | Identificador |
|---|---|
| Mover hacia delante | `move_forward` |
| Mover hacia atrás | `move_backward` |
| Mover a la izquierda | `move_left` |
| Mover a la derecha | `move_right` |
| Saltar | `jump` |
| Esquivar / Rodar | `dodge` |
| Interactuar | `interact` |
| Atacar | `attack` |
| Disparar | `shoot` |

Los controles físicos podrán cambiar sin necesidad de modificar la lógica de movimiento.

### Ejemplo de organización del jugador

```text
Player
├── CollisionShape3D
├── PlayerInputController
├── MovementComponent
├── JumpComponent
├── DodgeComponent
├── CollectorComponent
├── CameraPivot
│   └── SpringArm3D
│       └── Camera3D
└── InteractionArea
```

### Flujo de funcionamiento

1. `PlayerInputController` interpreta las entradas.
2. Comunica la dirección o acción solicitada a los componentes.
3. `MovementComponent` calcula el movimiento.
4. La entidad `Player` aplica el movimiento físico mediante `move_and_slide()` cuando utiliza `CharacterBody3D`.

El controlador no debe implementar directamente toda la lógica de movimiento, y el componente de movimiento no debe leer las entradas del teclado por su cuenta.

---

## 4.7. Recursos y datos

Los datos que puedan compartirse entre diferentes instancias deben almacenarse en recursos reutilizables.

Por ejemplo, los residuos tendrán un recurso `WasteData`:

```gdscript
class_name WasteData
extends Resource

enum WasteCategory {
	ORGANIC,
	PLASTIC,
	PAPER,
	GLASS,
	METAL
}

@export var waste_name: String
@export var category: WasteCategory
@export var icon: Texture2D
@export var points_value: int = 10
```

Se podrán crear recursos independientes:

```text
organic_apple.tres
plastic_bottle.tres
paper_box.tres
glass_bottle.tres
metal_can.tres
```

Cada recurso contendrá sus propios datos, pero podrá utilizarse en la misma escena `waste_item.tscn`.

**Regla:** evitar duplicar escenas y scripts cuando una misma estructura puede configurarse mediante recursos.

---

## 4.8. Organización de carpetas

La siguiente estructura será la referencia para organizar el proyecto:

```text
biopochito/
│
├── addons/
│   └── csg_mesh_editor/
│
├── assets/
│   ├── models/
│   ├── materials/
│   ├── textures/
│   ├── animations/
│   ├── audio/
│   └── fonts/
│
├── scenes/
│   ├── entities/
│   │   ├── player/
│   │   ├── enemies/
│   │   ├── items/
│   │   └── containers/
│   │
│   ├── components/
│   │   ├── movement/
│   │   ├── health/
│   │   ├── interaction/
│   │   └── combat/
│   │
│   ├── levels/
│   ├── ui/
│   └── effects/
│
├── scripts/
│   ├── entities/
│   ├── components/
│   │   ├── movement/
│   │   ├── health/
│   │   ├── interaction/
│   │   └── combat/
│   │
│   ├── controllers/
│   ├── systems/
│   └── utilities/
│
├── resources/
│   ├── characters/
│   ├── enemies/
│   ├── weapons/
│   └── items/
│
├── core/
│   └── autoloads/
│
├── project.godot
└── README.md
```

### Responsabilidad de cada carpeta

| Carpeta | Contenido |
|---|---|
| `addons/` | Plugins y herramientas externas. |
| `assets/` | Archivos originales y recursos audiovisuales. |
| `scenes/` | Escenas y composiciones de nodos. |
| `scripts/` | Lógica GDScript organizada por responsabilidad. |
| `resources/` | Recursos `.tres` y configuraciones reutilizables. |
| `core/` | Funcionalidades centrales y Autoloads. |
| `controllers/` | Controladores de entrada e inteligencia artificial. |
| `systems/` | Sistemas que coordinan procesos globales o multi-entidad. |
| `utilities/` | Funciones auxiliares realmente reutilizables. |

Los scripts asociados a una escena deben mantenerse organizados de manera coherente. Las escenas y sus scripts pueden estar en carpetas separadas, pero sus nombres y relaciones deben ser claros.

---

## 4.9. Gestión de modelos y recursos en Blender

Blender será la herramienta utilizada para crear y modificar los modelos 3D.

### Normas de trabajo

- Conservar los archivos originales `.blend`.
- Exportar los modelos destinados a Godot preferentemente en formato `.glb`.
- Mantener nombres coherentes entre Blender y Godot.
- Comprobar la escala y orientación de los modelos antes de exportar.
- Aplicar transformaciones cuando sea necesario.
- Revisar los pivotes y orígenes de los objetos.
- Mantener correctamente organizados los materiales y las texturas.
- Comprobar las animaciones y los esqueletos después de importar.
- Evitar incluir geometría innecesaria o excesivamente compleja.

### Flujo recomendado

1. Crear o modificar el modelo en Blender.
2. Organizar sus objetos y nombres.
3. Revisar escala, orientación, pivotes y materiales.
4. Exportar en `.glb`.
5. Importar en Godot.
6. Comprobar que se visualiza y funciona correctamente.
7. Guardar los archivos fuente y los recursos exportados según la organización del proyecto.

Los archivos `.blend` deben conservarse para futuras modificaciones. Los `.glb` serán los recursos utilizados habitualmente por Godot.

---

# 5. Control de versiones y trabajo en equipo

El proyecto utilizará Git y GitHub para gestionar el código y facilitar el trabajo paralelo.

## 5.1. Organización de ramas

Se utilizará el siguiente esquema:

| Rama | Propósito |
|---|---|
| `main` | Versión estable del proyecto. |
| `develop` | Integración de funcionalidades durante el desarrollo. |
| `feature/nombre` | Desarrollo de nuevas funcionalidades. |
| `fix/nombre` | Corrección de errores. |

Ejemplos:

```text
feature/player-movement
feature/waste-classification
feature/score-manager
fix/camera-collision
```

Las funcionalidades nuevas se desarrollarán en ramas independientes y se integrarán mediante Pull Requests a `develop`.

No se trabajará directamente sobre `main`.

## 5.2. Commits

Los mensajes de commit deben ser breves y describir claramente el cambio realizado.

Se recomienda utilizar prefijos:

| Prefijo | Uso |
|---|---|
| `feat:` | Nueva funcionalidad. |
| `fix:` | Corrección de errores. |
| `refactor:` | Reestructuración del código. |
| `docs:` | Cambios en documentación. |
| `assets:` | Incorporación o modificación de recursos. |
| `test:` | Pruebas. |
| `chore:` | Tareas de mantenimiento. |

Ejemplos:

```text
feat: add player movement component
fix: correct waste collection detection
refactor: separate input from movement logic
docs: update development guidelines
assets: add plastic bottle model
```

## 5.3. Pull Requests

Todos los cambios que se integren en `develop` deberán realizarse mediante Pull Requests.

Cada PR debe:

- Describir los cambios realizados.
- Referenciar el Issue o historia de usuario correspondiente.
- Comprobar los criterios de aceptación aplicables.
- Incluir las pruebas realizadas.
- Indicar las evidencias cuando sean relevantes.
- Comprobar que se respetan las convenciones de programación.
- Ser revisada por el otro integrante.

### Reglas de revisión

1. El desarrollador crea la Pull Request.
2. El otro integrante revisa el código y las modificaciones.
3. Si existen problemas, solicita cambios.
4. El desarrollador corrige las observaciones.
5. Cuando se aprueba, se integra en `develop`.

Ningún integrante debe aprobar su propia Pull Request.

Se utilizará una plantilla común de Pull Request almacenada en:

```text
.github/pull_request_template.md
```

---

# Metodología de trabajo

El equipo utilizará una metodología basada en Scrum, adaptada a dos integrantes.

Se trabajará mediante:

- **Product Backlog:** listado priorizado de historias de usuario y necesidades del proyecto.
- **Sprint Backlog:** historias y tareas seleccionadas para el sprint.
- **Sprints:** periodos de trabajo con un objetivo concreto.
- **Revisión del sprint:** comprobación de las funcionalidades desarrolladas.
- **Retrospectiva:** identificación de problemas y mejoras para el siguiente sprint.

No se establecerán reuniones diarias obligatorias. La coordinación se realizará mediante GitHub Projects, Issues, Pull Requests y reuniones de planificación y revisión cuando sean necesarias.

## Historias de usuario

Las funcionalidades se documentarán mediante historias de usuario con el siguiente formato:

**Como** [tipo de usuario],  
**quiero** [funcionalidad],  
**para** [beneficio o finalidad].

Cada historia deberá incluir:

- Identificador y título.
- Descripción funcional.
- Valor para el juego.
- Prioridad.
- Criterios de aceptación.
- Reglas de negocio, cuando corresponda.
- Componentes y elementos técnicos relacionados.
- Dependencias.
- Definición de terminado.

### Product Backlog

Las historias inicialmente registradas pueden tener una descripción general y criterios de aceptación preliminares.

Su objetivo es identificar y priorizar las funcionalidades que necesita el juego.


## Definition of Done (DoD)

Una historia se considerará terminada cuando:

- Todos sus criterios de aceptación estén cumplidos.
- La funcionalidad esté integrada correctamente.
- No existan errores críticos conocidos relacionados con la funcionalidad.
- El código respete las convenciones y la arquitectura del proyecto.
- Las decisiones técnicas relevantes estén documentadas.
- La Pull Request haya sido revisada y aprobada.
- Los cambios estén integrados en `develop`.

---

# Calidad y mantenimiento del proyecto

Todos los integrantes deben procurar que el código sea fácil de entender y mantener.

Se establecen las siguientes recomendaciones:

- Evitar crear abstracciones innecesarias.
- No crear componentes que solamente repliquen una función sencilla sin aportar una responsabilidad propia.
- No utilizar sistemas globales cuando una referencia local o una señal sea suficiente.
- Revisar el código existente antes de crear una funcionalidad duplicada.
- Mantener las escenas organizadas y eliminar nodos que ya no se utilicen.
- Mantener los recursos correctamente nombrados y clasificados.
- Probar las funcionalidades en el contexto real del juego, no únicamente de forma aislada.
- Actualizar esta documentación cuando se modifiquen las convenciones o decisiones arquitectónicas.

**La prioridad es desarrollar un videojuego funcional y mantener una arquitectura comprensible. No se busca añadir complejidad técnica innecesaria, sino organizar el código para que ambos integrantes puedan trabajar, revisar y ampliar el proyecto sin generar dependencias difíciles de mantener.**
