(defparameter *filosofos* '("Socrates" "Platao" "Aristoteles" "Socrates"))

(remove-if-not #'(lambda (nome) (equal nome "Socrates")) *filosofos*)