;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun compress (lst)
  (cond
     ((or (null lst) (null (cdr lst))) lst)
     ((equal (car lst) (car (cdr lst))) (compress (cdr lst)))
     (t (cons (car lst) (compress (cdr lst))))))