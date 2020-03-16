;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun setdifference (lst1 lst2)
  (cond
    ((null lst1) '())
    ((null lst2) lst1)
    ((member (car lst1) lst2)(setdifference (cdr lst1) lst2))
    (t (cons (car lst1) (setdifference (cdr lst1) lst2)))))
