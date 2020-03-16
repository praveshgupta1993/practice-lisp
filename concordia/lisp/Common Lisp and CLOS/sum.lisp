;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun sum (lst)
  (cond ((null lst) 0)
        (t (+ (car lst) (sum (cdr lst))))))