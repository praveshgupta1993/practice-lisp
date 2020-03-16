;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun length2 (lst)
  (if (null lst)
    0 
    (+ 1 (length2 (cdr lst)))))
