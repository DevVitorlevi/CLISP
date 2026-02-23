(defun sum (a b)
  (let ((result (+ a b)))
    (format nil "The Sum Between ~A and ~A is ~A" a b result)))

(defun saudar (nome &optional (titulo "Sr"))
  (format nil "Ola, ~A ~A" titulo nome))

(defun cria-personagem (nome &key (classe "Mago") (nivel 1))
  (format nil "Personagem ~A: ~A nível ~A" nome classe nivel))

(sum 10 20)
(saudar "Levi")
(cria-personagem "Levi" :nivel 20 :classe "Humano")