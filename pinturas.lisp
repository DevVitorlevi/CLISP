(defparameter *rendimento-tinta* 10.0)
(defparameter *preco-mao-obra* 15.0)

(defun calcular-orcamento (largura altura &key (preco-lata 120) (extra-materiais 30))
  (let* ((area (* largura altura))
         (custo-trabalhador (* area *preco-mao-obra*))
         (latas-tintas (/ area *rendimento-tinta*))
         (custo-latas-tintas (* latas-tintas preco-lata))
         (total (+ custo-trabalhador custo-latas-tintas extra-materiais)))
    (format nil "Para uma area de ~A m2, o custo total e de R$ ~A" area total)))

(calcular-orcamento 10 8)
