;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun absdiff (x y)
  (if (> x y)
    (- x y)
    (- y x)))
