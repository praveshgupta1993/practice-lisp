;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun product (lst1 lst2)
  (if (or (null lst1) (null lst2))
    nil
    (let ((a (* (car lst1) (car lst2))))
       (cons a (product (cdr lst1) (cdr lst2))))))
