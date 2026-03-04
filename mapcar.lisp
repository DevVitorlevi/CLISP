(defparameter *fatos*
              '((:pessoa (:nome . "Socrates") (:is-a . "Mortal"))
                (:pessoa (:nome . "Platao") (:is-a . "Humano"))
                (:cidade (:nome . "Atenas") (:is-a . "Cidade"))))


(mapcar #'(lambda (item)
            (cdr (third item)))
  *fatos*)
