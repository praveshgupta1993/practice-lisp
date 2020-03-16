;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun binary-search (lst elt)
  (cond ((null lst) nil)
        ((= (car lst) elt) t)
        ((< elt (car lst)) (binary-search (car (cdr lst)) elt))
        ((> elt (car lst)) (binary-search (car (cdr (cdr lst))) elt))))
