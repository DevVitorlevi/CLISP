(defparameter *entrada-bruta* 150)
(defparameter *usuario-autorizado* t)
(defparameter *categoria-final* nil)

(unless (not *usuario-autorizado*)

  (when (stringp *entrada-bruta*)
        (print "Limpando espaços em branco..."))

  (setf *categoria-final*
    (cond
     ((numberp *entrada-bruta*)
       (if (> *entrada-bruta* 100) "ID-ALTO" "ID-BAIXO"))

     ((stringp *entrada-bruta*)
       (if (string= *entrada-bruta* "ADMIN") "USUARIO-MESTRE" "STRING-COMUM"))

     ((null *entrada-bruta*)
       (print "Aviso: Dado vazio recebido")
       "VAZIO")

     (t "TIPO-DESCONHECIDO"))))