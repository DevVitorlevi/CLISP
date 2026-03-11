(defstruct recurso
  id
  nome
  tipo)

(defparameter *banco* (make-array 3 :initial-element nil))
(defparameter *index-id* (make-hash-table))

(let ((r-inicial (make-recurso :id 1 :nome "Dados Antigos" :tipo 'legacy)))
  (setf (aref *banco* 0) r-inicial)
  (setf (gethash (recurso-id r-inicial) *index-id*) 0))

(defun sincronizar-recursos (lista-novos-dados)
  "Percorre a lista e atualiza o banco se o ID existir no índice."
  (dolist (novo-item lista-novos-dados)
    (let ((id-atual (recurso-id novo-item)))
      (let ((posicao (gethash id-atual *index-id*)))
        (if posicao
            (let ((recurso-no-banco (aref *banco* posicao)))
              (setf (recurso-nome recurso-no-banco) (recurso-nome novo-item))
              (setf (recurso-tipo recurso-no-banco) (recurso-tipo novo-item))
              (format t "Recurso [ID ~a] atualizado com sucesso!~%" id-atual))

            (format t "ID [ID ~a] não encontrado no sistema.~%" id-atual))))))

(defparameter *novos-dados* (list (make-recurso :id 1 :nome "Lisp Avançado" :tipo 'estudo)
                                  (make-recurso :id 999 :nome "Intruso" :tipo 'erro)))

(format t "Iniciando Sincronização")
(sincronizar-recursos *novos-dados*)
(format t "Sincronização Finalizada")

(format t "Nome no banco (posição 0): ~a~%" (recurso-nome (aref *banco* 0)))