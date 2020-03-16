;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun min2 (lst)
  (cond ((null lst) '())
        ((null (cdr lst)) (car lst))
        (t (let ((a (car lst))
                (b (min2 (cdr lst))))
                (if (< b a) b a)))))