;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun filter (lst el)
  (cond 
    ((not (listp lst)) nil)
    ((null lst) '())
    ((not (atom el)) nil)
    ((or (<= el 0)  (not (integerp el))) nil)
    ((<= (car lst) el) (filter (cdr lst) el))
    (t (cons (car lst) (filter (cdr lst) el)))))
