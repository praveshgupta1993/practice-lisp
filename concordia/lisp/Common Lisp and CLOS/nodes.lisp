;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun nodes (tree)
    (if (null tree)
      0
      (+ 1 (nodes(car (cdr tree))) (nodes (car (cdr (cdr tree)))))))
