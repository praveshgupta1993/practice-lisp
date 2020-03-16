;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun dist (n lst)
 (if (null lst)
  nil
  (cons (list n (car lst)) (dist n (cdr lst) ))))