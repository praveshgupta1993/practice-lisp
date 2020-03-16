;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

;(defun copy-list2 (lst)
;  (if (null lst)
;      lst
;      (cons (car lst) (copy-list2 (cdr lst)))))

(defun copy-list2 (lst)
  (if (atom lst)
    lst
    (cons (car lst) (copy-list2 (cdr lst)))))