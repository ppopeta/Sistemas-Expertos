# Sistema Experto: Clasificacion de Animales
> Proyecto desarrollado en SWI-Prolog para identificar animales mediante preguntas y mostrar su clasificacion taxonomica completa.


Hecho por:
### Glenn Alexander Ward Ante
### Bibiana Sofía Cortés montilla

---

## Requisitos

- Tener instalado [SWI-Prolog]
- Los cuatro archivos deben estar en la misma carpeta:

```
sistemas-expertos/
 ├── main.pl
 ├── hechos_taxonomicos.pl
 ├── reglas_identificacion.pl
 └── reglas_taxonomicas.pl
```

---

## Como ejecutar

### Opcion 1 — Interfaz grafica de SWI-Prolog

1. Abre SWI-Prolog
2. Ve a `File` → `Consult...`
3. Selecciona el archivo `main.pl`
4. En la consola escribe:

```
?- iniciar.
```

### Opcion 2 — Terminal / Consola

1. Abre una terminal y navega hasta la carpeta del proyecto:

2. Inicia SWI-Prolog con el archivo principal:

```bash
swipl main.pl
```

3. En la consola de Prolog escribe:

```prolog
?- iniciar.
```

---

## Como usar el programa

Al iniciar, el sistema mostrara un mensaje de bienvenida y comenzara a hacer preguntas sobre el animal que tienes en mente. Debes responder cada pregunta escribiendo tu respuesta **seguida de un punto**.

### Formato de respuestas

| Pregunta | Respuestas validas |
|---|---|
| Preguntas si/no | `si.` o `no.` |
| Tamano del animal | `pequeno.` o `mediano.` o `grande.` |
| Tipo de piel | `pelaje.` o `plumas.` o `humeda.` o `escamas.` |

> **Importante:** el punto al final es obligatorio, es la forma en que Prolog detecta que terminaste de escribir.

---

## Consultas taxonomicas 


Funciones disponibles:

- Verificar pertenencia a una categoria:
  `?- pertenece(conejo, mammalia).`
- Listar especies por categoria:
  `?- listar_todas(aves).`
- Ver jerarquia completa de una especie:
  `?- jerarquia(sapo).`
- Consultar categoria de una especie:
  `?- categoria(conejo, X).`
- Ver nombres comunes disponibles:
  `?- todos.`
- Ver informacion completa de un animal:
  `?- info(conejo).`
- Mostrar menu de consultas:
  `?- menu_taxonomico.`

---

## Ejemplo de uso del sistema experto

```
=== SISTEMA EXPERTO: CLASIFICACION DE ANIMALES ===
--- Responde cada pregunta con: si. | no.
--- Para tamano escribe:        pequeno. | mediano. | grande.
--- Para piel escribe:          pelaje. | plumas. | humeda. | escamas.

¿El animal tiene columna vertebral? (si/no)
> si.
¿De que tamano es? (pequeno/mediano/grande)
> pequeno.
¿Que tipo de piel tiene? (pelaje/plumas/humeda/escamas)
> pelaje.
¿Es un roedor? (si/no)
> si.
¿Tiene orejas largas? (si/no)
> si.

======================================================
              ESPECIE IDENTIFICADA
======================================================
  Animal: conejo

  Clasificacion taxonomica:
    -> Oryctolagus cuniculus         (Especie)
    -> Oryctolagus                   (Genero)
    -> Leporidae                     (Familia)
    -> Lagomorpha                    (Orden)
    -> Mammalia                      (Clase)
    -> Chordata                      (Filo)
    -> Animalia                      (Reino)
======================================================
```

---

## Animales que el sistema puede identificar

| Categoria | Animales |
|---|---|
| Mamiferos | Gato, Conejo, Cuy, Jabali, Cabra, Oveja, Hipopotamo |
| Aves | Loro, Paloma, Pavo, Pato, Gallina, Avestruz |
| Anfibios | Rana, Ajolote, Sapo, Hipopotamo |
| Reptiles | Lagarto, Tortuga, Iguana, Serpiente |
| Insectos | Abeja, Mariposa, Hormiga |
| Moluscos | Pulpo, Calamar, Caracol, Almeja |

---

## Volver a ejecutar

Para identificar otro animal sin cerrar SWI-Prolog, simplemente escribe de nuevo:

```
?- iniciar.
```


---

## Estructura de archivos

| Archivo | Descripcion |
|---|---|
| `main.pl` | Interfaz de usuario, motor de preguntas y reporte final |
| `hechos_taxonomicos.pl` | Cadena taxonomica de todos los animales y nombres legibles |
| `reglas_identificacion.pl` | Reglas logicas para identificar cada animal |