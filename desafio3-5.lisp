(defparameter *ontologia* nil)

(defmacro definir-que (sujeito predicato objeto)
  `(progn
    (push (list ,sujeito ,predicato ,objeto) *ontologia*)
    (print "Conhecimento Expandido")))

(macroexpand '(definir-que "Socrates" "is-a" "Mortal"))