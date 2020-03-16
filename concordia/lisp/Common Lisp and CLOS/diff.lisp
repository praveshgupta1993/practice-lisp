;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun diff (lst1 lst2)
  (cond
    ((or
       (not (and (listp lst1) (listp lst2)))
       (or (null lst1) (null lst2)) 
       (not (= (length lst1) (length lst2)))) nil)
    (t (let
         ((d (- (car lst1) (car lst2))))
         (cons (expt d 3) (diff (cdr lst1) (cdr lst2)))))))





