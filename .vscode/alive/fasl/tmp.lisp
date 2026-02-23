(defparameter *distancia-asteroide* 500.0)
(defparameter *escudo-ativo* nil)

(setf *distancia-asteroide* 80)

(when (< *distancia-asteroide* 100)
      (print "PERIGO! Ativando escudos!")
      (setf *escudo-ativo* t)
      (format nil "Os escutos estao Ativados!"))
