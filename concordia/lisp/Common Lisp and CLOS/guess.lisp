;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun guess (arg1 arg2)
  (cond ((null arg1) arg2)
        ((null arg2) arg1)
        ((< (car arg1) (car arg2)) (cons (car arg2) 
                                         (guess (cdr arg1) (cdr arg2))))
        (t (cons (car arg1) (guess (cdr arg1) (cdr arg2))))))