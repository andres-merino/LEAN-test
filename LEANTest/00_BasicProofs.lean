-- LEANTest/00_BasicProofs.lean
module

-- Demostración básica
example
  -- objetos
  (P Q : Prop)
  -- hipótesis
  (h1 : P)
  (h2 : P → Q)
  -- conclusión
  : Q := by
  -- tácticas
  have h3 := h2 h1 -- toma h1 y lo aplica a h2, guarda en h3 : Q
  exact h3  -- compara h3 con la conclusión

-- Reescrita de forma regresiva
example
  (P Q : Prop)
  (h1 : P)
  (h2 : P → Q)
  : Q := by
  -- tácticas
  apply h2 -- aplica h2 a la conclusión, PD: P
  exact h1 -- compara h1 con la conclusión

-- Reescrita de forma compacta
example
  (P Q : Prop)
  (h1 : P)
  (h2 : P → Q)
  : Q := by
  exact h2 h1 -- aplica h1 a h2 y compara con la conclusión
