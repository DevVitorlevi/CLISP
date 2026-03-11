(defparameter *lista* '(10 20 30))

(defun somar-lista (lista)
  (if (null lista) 0 (+ (first lista) (somar-lista (rest lista)))))

(somar-lista *lista*)