-- LEANTest/00_BasicProofs.lean
module

-- Para revisar teoremas existentes:
#check Nat.add_zero -- n+0=n
#check Nat.add_succ -- n+m.succ = (n+m).succ

-- Para revisar funciones y constantes existentes:
#check Nat.succ -- funcion N -> N
#check Nat.zero -- constante de N
#check 1
#check Nat.add -- funcion N -> N -> N
#print equations Nat.add -- ecuaciones de la funcion add

-- Lema 6.12 de Pinter
theorem cero_mas_n (n : Nat) : 0 + n = n := by
    induction n with
    | zero =>
        rw [Nat.add_zero]
    | succ n ih =>
        rw [Nat.add_succ]
        rw [ih]
