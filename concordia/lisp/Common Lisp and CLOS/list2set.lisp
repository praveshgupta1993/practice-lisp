;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun list2set (lst)

  (cond

    ((not (listp lst)) nil)

    ((null lst) '())

    ((member (car lst) (cdr lst)) (list2set (cdr lst)))

    (t (cons (car lst) (list2set (cdr lst))))))