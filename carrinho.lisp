(defparameter *taxa-imposto* 0.12)
(defparameter *frete-fixo* 25.00)

(let* ((fogao 600.0)
       (geladeira 2900)
       (valor-compra (+ fogao geladeira))
       (valor-com-frete (+ valor-compra *frete-fixo*)))

  (+ (* valor-com-frete *taxa-imposto*) valor-com-frete))
