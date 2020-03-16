;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun factorial (n)
  (if (= n 0)
    1
    (* n (factorial (- n 1)))))