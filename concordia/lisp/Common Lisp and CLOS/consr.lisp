;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun consr (lst elt)
    (if (null lst) (list elt)
       (cons (car lst) (consr (cdr lst) elt))))