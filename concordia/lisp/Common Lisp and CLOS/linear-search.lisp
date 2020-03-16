;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun search (lst elt pos)
  (if (null lst)
     nil
     (if (equal (car lst) elt)
        pos
        (search (cdr lst) elt (+ 1 pos)))))


(defun linear-search (lst elt)
  (search lst elt 1))
