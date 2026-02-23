(defparameter *recurso-uri* nil)
(defparameter *processamento-autorizado* t)

(unless *recurso-uri*
  (print "ERRO: Recurso sem identificador encontrado!")
  (setf *processamento-autorizado* nil)
  "SISTEMA EM PAUSA")