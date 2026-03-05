(defmacro verificar-importancia (fato nivel)
  (if (equal nivel :alto)
      `(SALVAR-NO-BANCO-DE-DADOS ,fato)
      `(PRINT ,fato)))


(macroexpand '(verificar-importancia "Socrates e mortal" :alto))