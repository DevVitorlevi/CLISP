(defparameter *ontologia-grega*
              '((:pessoa ((:nome . "Socrates") (:status . "Mortal") (:mestre-de . "Platao")))
                (:pessoa ((:nome . "Platao") (:status . "Mortal") (:mestre-de . "Aristoteles")))
                (:cidade ((:nome . "Atenas") (:continente . "Europa")))))

(defun quem-e-mestre-de (grafo)
  (let* ((primeira-pessoa (assoc :pessoa grafo))
         (dados-da-pessoa (second primeira-pessoa))
         (par-mestre (assoc :mestre-de dados-da-pessoa))
         (nome-mestre (cdr par-mestre)))
    nome-mestre))

(print (quem-e-mestre-de *ontologia-grega*))