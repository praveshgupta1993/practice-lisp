;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================




(defun distribute (el lst)
  (cond
     ((null lst) nil)
      (t (cons (list el (car lst))
                (distribute el (cdr lst))))))

;; (distribute '1 '(a b))  =>  ((1 A) (1 B))


(defun cartesian-aux (lst1 lst2)
  (cond
    ((null lst1) '())
    (t  (append (distribute (car lst1) lst2) (cartesian-aux (cdr lst1) lst2)))))


(defun cartesian (lst1 lst2)
  (cond
    ((or
      (or (not (listp lst1)) (not (listp lst2)))
      (not (and (setp lst1) (setp lst2)))
      (not (= (length lst1) (length lst2)))) nil)
    (t (cartesian-aux lst1 lst2))))