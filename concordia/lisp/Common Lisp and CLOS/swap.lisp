;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun swap (lst)
  (if (or (null lst) (null (cdr lst))) 
      lst
    (cons (car (cdr lst)) 
          (cons (car lst) (swap (cdr (cdr lst)))))))