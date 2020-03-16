;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun setp (lst)
  (cond
   ((not (listp lst)) nil) 
   ((null lst) t)
   ((not(member (car lst) (cdr lst))) (setp (cdr lst)))
   (t   nil)))