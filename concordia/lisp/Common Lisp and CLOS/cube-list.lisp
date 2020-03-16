;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun cube-list (lst)
  (cond ((null lst) nil)
        (t (let ((elt (car lst)))
             (cons (* elt elt elt)
                   (cube-list (cdr lst)))))))