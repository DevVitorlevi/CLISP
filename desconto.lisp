(defun calcular-desconto (preco &optional (percentagem 0.1))
  (let ((valor-desconto (* preco percentagem)))
    (format nil "O preco eh ~A e o valor do desconto eh ~A" preco valor-desconto)))

(calcular-desconto 100)
