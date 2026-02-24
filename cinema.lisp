(defparameter *name-movie* "Inception")
(defparameter *note-movie* 8)
(defparameter *genre-movie* "Sci-Fi")
(defparameter *online-sistem* t)

(defun process-movie ()
  (unless *online-sistem*
    (return-from process-movie "OFFLINE SISTEM"))

  (when (or (< *note-movie* 0) (> *note-movie* 10))
        (print "ERRO: Nota inválida detectada!")
        (setf *note-movie* 0))

  (let ((result (cond
                 ((and (string= *genre-movie* "Terror") (< *note-movie* 5))
                   "Filme de Terror Ruim - Nao Recomendo")
                 ((and (string= *genre-movie* "Sci-Fi") (>= *note-movie* 8))
                   "Clássico Moderno - Altamente recomendado")
                 ((= *note-movie* 10)
                   "Obra-prima Universal")
                 (t "Filme Comum - Adiciona a Biblioteca"))))

    (if (> *note-movie* 0)
        (print "Sucessful Process")
        (print "Erro in Process"))

    result))