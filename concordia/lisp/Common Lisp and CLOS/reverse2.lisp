;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun reverse2 (lst)
  (cond ((null lst) '())
        (t (append (reverse2 (cdr lst)) (list (car lst))))))
