(defstruct tripla
  sujeito
  predicato
  objeto)

(defparameter *minha-tripla* (make-tripla :sujeito "Machado_de_Assis" :predicato "write" :objeto "Dom_Casmurro"))

(tripla-objeto *minha-tripla*)