(defparameter *biblioteca*
              '(((:titulo . "A Republica") (:autor . "Platao") (:raro . t))
                ((:titulo . "Categorias") (:autor . "Aristoteles") (:raro . nil))
                ((:titulo . "Metafisica") (:autor . "Aristoteles") (:raro . t))
                ((:titulo . "Banquete") (:autor . "Platao") (:raro . nil))))

(defun processar-biblioteca (lista)
  (mapcar #' (lambda (livro)
               (let ((titulo (cdr (first livro)))
                     (autor (cdr (second livro))))
                 (format nil "LIVRO: ~a | AUTOR: ~a" titulo autor))) lista))

(processar-biblioteca *biblioteca*)
