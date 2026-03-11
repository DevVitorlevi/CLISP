(defparameter *interesses* (make-hash-table :test 'equal))

(setf (gethash "alice" *interesses*) '(musica leitura))
(setf (gethash "bob" *interesses*) '(corrida cinema))

(gethash "alice" *interesses*)