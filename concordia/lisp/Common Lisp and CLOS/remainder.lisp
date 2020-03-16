;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun remainder (n m)
  (cond ((< n m) n)
        (t (remainder (- n m) m))))