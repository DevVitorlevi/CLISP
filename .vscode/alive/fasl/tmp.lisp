(defmacro meu-nome (nome)
  `(print "Meu nome e" ,nome))

(macroexpand '(meu-nome "Levi"))