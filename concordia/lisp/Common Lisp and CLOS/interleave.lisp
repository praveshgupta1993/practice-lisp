;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun interleave (lst1 lst2)
  (cond ((null lst1) lst2)
        ((null lst2) lst1)
        (t (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2)))))))
