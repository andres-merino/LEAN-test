<!-- Encabezado -->
[![Colaboradores][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Estrellas][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- Título -->
<br />
<div align="center">

  <h1 align="center">LEAN-test</h1>
  <p align="center">
    Ejemplos y apuntes introductorios para construir demostraciones formales con Lean 4.
    <br />
    <a href="https://github.com/andres-merino/LEAN-test/issues">Reportar un problema</a>
  </p>
</div>

<!-- Cuerpo -->
## Sobre el proyecto

**LEAN-test** es un repositorio de aprendizaje para practicar la escritura y verificación de demostraciones matemáticas en Lean 4. Reúne ejemplos comentados de razonamiento proposicional, uso de tácticas e inducción sobre números naturales, además de una guía rápida de consulta.

El material permite aprender a:

- Formular hipótesis y conclusiones como proposiciones (`Prop`).
- Aplicar implicaciones mediante `exact`, `have` y `apply`.
- Consultar definiciones y teoremas existentes con `#check` y `#print`.
- Reescribir igualdades con `rw`.
- Probar resultados sobre `Nat` mediante inducción.

### Construido con

![Lean Badge](https://img.shields.io/badge/Lean-4.35.0-0D6AA8?logo=lean&logoColor=white&style=for-the-badge)
![Mathlib Badge](https://img.shields.io/badge/mathlib-v4.35.0-5C2D91?style=for-the-badge)
![Lake Badge](https://img.shields.io/badge/Lake-gestor%20de%20proyectos-4B8BBE?style=for-the-badge)
![GitHub Actions Badge](https://img.shields.io/badge/GitHub_Actions-automatización-2088FF?logo=githubactions&logoColor=white&style=for-the-badge)

## Descripción

Los ejemplos siguen una progresión corta y práctica. Primero se demuestra que, dadas `P`, `P → Q` y una prueba de `P`, se puede obtener `Q`. Después se presentan tres estilos equivalentes: resultado intermedio con `have`, razonamiento regresivo con `apply` y una versión compacta con `exact`.

El segundo archivo introduce herramientas de exploración del entorno y demuestra el teorema `cero_mas_n`: para todo natural `n`, se cumple `0 + n = n`. La prueba utiliza inducción y los lemas `Nat.add_zero` y `Nat.add_succ`.

## Contenido del repositorio

- `LEANTest/00_BaseProof.lean`: demostraciones básicas de implicación proposicional.
- `LEANTest/01_MathProof.lean`: consultas de teoremas y funciones de `Nat`, y una demostración por inducción.
- `Resumen.md`: guía rápida de reglas de introducción y eliminación, tácticas e igualdades en Lean 4.
- `lakefile.toml`: configuración del proyecto, Lean 4 y la dependencia `mathlib`.
- `lean-toolchain`: versión de Lean requerida por el proyecto.
- `.github/workflows/`: automatizaciones de integración continua, actualización de dependencias y publicación.

## Requisitos e instalación

Se necesita [elan](https://github.com/leanprover/elan) —el gestor de versiones de Lean— y Git. El proyecto está fijado a **Lean 4.35.0**.

```bash
git clone https://github.com/andres-merino/LEAN-test.git
cd LEAN-test
lake update
```

> `lake update` descarga y sincroniza las dependencias indicadas en el proyecto, incluida `mathlib`.

## Uso

Comprueba los ejemplos directamente desde la raíz del repositorio:

```bash
lake env lean LEANTest/00_BaseProof.lean
lake env lean LEANTest/01_MathProof.lean
```

También puedes abrir los archivos `.lean` en Visual Studio Code con la extensión oficial de Lean para recibir información de objetivos, errores y sugerencias mientras escribes las demostraciones.

## Material de apoyo

Consulta [Resumen.md](Resumen.md) para una tabla de reglas de introducción y eliminación de conectores lógicos, y para ejemplos de las tácticas `intro`, `exact`, `apply`, `have`, `rfl`, `rw`, `unfold` y `ring`.

## Créditos

**Andrés Merino**<br>
Docente-Investigador — Pontificia Universidad Católica del Ecuador

[![LinkedIn][linkedin-shield]][linkedin-url-aemt]

## Licencia

Este repositorio no incluye actualmente un archivo de licencia. Antes de reutilizar o distribuir el material, consulta con el autor o añade la licencia que corresponda.

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/andres-merino/LEAN-test.svg?style=for-the-badge
[contributors-url]: https://github.com/andres-merino/LEAN-test/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/andres-merino/LEAN-test.svg?style=for-the-badge
[forks-url]: https://github.com/andres-merino/LEAN-test/forks
[stars-shield]: https://img.shields.io/github/stars/andres-merino/LEAN-test?style=for-the-badge
[stars-url]: https://github.com/andres-merino/LEAN-test/stargazers
[issues-shield]: https://img.shields.io/github/issues/andres-merino/LEAN-test.svg?style=for-the-badge
[issues-url]: https://github.com/andres-merino/LEAN-test/issues
[linkedin-shield]: https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url-aemt]: https://www.linkedin.com/in/andrés-merino-010a9b12b/
