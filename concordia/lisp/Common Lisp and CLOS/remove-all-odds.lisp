;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun remove-all-odds (lst)
 (cond
   ((not (listp lst)) nil)
   ((null lst) '())
   ((oddp (car lst)) (remove-all-odds (cdr lst)))
   (t (cons (car lst) (remove-all-odds (cdr lst))))))