;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun last2 (lst) 
  (cond ((null lst) nil)
        ((null (cdr lst)) (car lst)) 
        (t (last2 (cdr lst)))))