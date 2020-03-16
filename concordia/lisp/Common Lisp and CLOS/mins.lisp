;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun mins (lst1 lst2 lst3)
  (cond
    ((or 
       (not (and (listp lst1) (listp lst2) (listp lst3)))
       (or (null lst1) (null lst2) (null lst3)) 
       (not (= (length lst1) (length lst2) (length lst3)))) nil)
    (t (let
         ((m (min (car lst1) (car lst2) (car lst3))))
         (cons (expt m 3) (mins (cdr lst1) (cdr lst2)(cdr lst3)))))))