;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun product (lst)
  (cond ((null lst) 1)
        (t (* (car lst) (product (cdr lst))))))