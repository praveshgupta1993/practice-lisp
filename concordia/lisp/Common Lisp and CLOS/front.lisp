;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun front (lst)
     (cond ((null lst)       nil)
           ((null (cdr lst)) '())
           (t                (cons (car lst) (front (cdr lst))))))