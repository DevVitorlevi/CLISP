(defparameter *status-sistema* "INATIVO")

(defmacro atualizar-status (variavel novo-valor)
  `(progn
    (setf ,variavel ,novo-valor)
    (print "Status Alterado!")))

(macroexpand '(atualizar-status *status-sistema* "ATIVO"))