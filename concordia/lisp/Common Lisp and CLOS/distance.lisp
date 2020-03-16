;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun second2 (lst)
  (car (cdr lst)))

(defun distance (p1 p2)
  (sqrt (+ (expt (- (first p1) (first p2)) 2)
           (expt (- (second2 p1) (second2 p2)) 2))))
