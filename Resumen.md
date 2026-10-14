# Guía rápida de demostraciones en Lean 4

En Lean, las demostraciones se construyen aplicando tácticas que transforman un objetivo en otros más sencillos hasta resolverlos.

La distinción fundamental es entre:

- Reglas de introducción: cuando queremos demostrar una proposición.
- Reglas de eliminación: cuando tenemos una hipótesis y queremos utilizarla.

## 1. Reglas de introducción y eliminación

| Conector lógico        | Para demostrar (introducción) | Para utilizar una hipótesis (eliminación) |
| ---------------------- | ----------------------------- | ----------------------------------------- |
| $\forall x,\ P(x)$ | `intro x`                     | `have h := ha a`                          |
| $\exists x,\ P(x)$ | `use a`                       | `obtain ⟨a, ha⟩ := h`                     |
| $P\implies Q$      | `intro hp`                    | `have hq := h hp`                         |
| $P\land Q$         | `constructor`                 | `obtain ⟨hp, hq⟩ := h`                    |
| $P\lor Q$          | `left` o `right`              | `rcases h with hp \\| hq`                 |
| $\neg P$           | `intro hp`                    | `exact hnot hp`                           |
| $P\iff Q$          | `constructor`                 | `h.mp` y `h.mpr`                          |
| $a=b$              | `rfl` (cuando corresponde)    | `rw [h]`                                  |

## 2. Principales tácticas de Lean

### A. Manipulación de objetivos e hipótesis

| Táctica                | Función                                                         |
| ---------------------- | --------------------------------------------------------------- |
| `intro h`              | Introduce una hipótesis o variable.                             |
| `exact h`              | Cierra un objetivo utilizando una demostración de ese objetivo. |
| `apply h`              | Aplica un teorema y genera los objetivos necesarios.            |
| `have h : P := by ...` | Establece un resultado intermedio.                              |

### B. Igualdades y simplificación

| Táctica              | Función                                                           |
| -------------------- | ----------------------------------------------------------------- |
| `rfl`                | Demuestra una igualdad por reflexividad y reducción definicional. |
| `rw [h]`             | Reescribe utilizando una igualdad.                                |
| `rw [← h]`           | Reescribe en sentido contrario.                                   |
| `nth_rewrite 2 [h]`  | Reescribe la segunda aparición.                                   |
| `unfold f`           | Despliega la definición de `f`.                                   |
| `ring`               | Resuelve igualdades polinómicas.                                  |

