;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun power (a n)
    (if (zerop n)
        1
        (* a (power a (- n 1)))))