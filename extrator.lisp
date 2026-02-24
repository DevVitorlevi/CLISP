(defparameter *meu-grafo* ' (("Lisp" "tipo" "Linguagem") ("Linguagem" "status" "Poderosa")))

(defun extrair-status (lista)
  (let ((resultado))
    (setf resultado (third (second lista))) resultado))


(extrair-status *meu-grafo*)