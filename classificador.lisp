(defparameter *valor-dado* 42)
(defparameter *tipo-inferido* nil)

(cond
 ((numberp *valor-dado*)
   (setf *tipo-inferido* "Literal Numerico"))
 ((stringp *valor-dado*)
   (setf *tipo-inferido* "Literal de Texto"))
 ((null *valor-dado*)
   (setf *tipo-inferido* "Entidade Vazia"))
 (t "Tipo desconhecido"))