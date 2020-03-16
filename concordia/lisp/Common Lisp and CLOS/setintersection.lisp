;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun setintersection (lst1 lst2)
  (cond
    ((null lst1) '())
    ((null lst2) '())
    ((member (car lst1) lst2)(cons (car lst1) (setintersection (cdr lst1) lst2)))
    (t (setintersection (cdr lst1) lst2))))