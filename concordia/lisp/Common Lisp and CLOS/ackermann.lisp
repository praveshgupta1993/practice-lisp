;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun ackermann (m n)
  (cond ((zerop m) (+ n 1))
        ((zerop n) (ackermann (- m 1) 1))
        (t         (ackermann (- m 1) (ackermann m (- n 1))))))