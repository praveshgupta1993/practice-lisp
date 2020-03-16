;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun insert (n lst)
 (cond   ((null lst) (list n))
        ;; ((and (null (cdr lst)) (< (car lst) n)) (append lst (list n)))
         ((< n (car lst)) (cons n lst))
         (t (cons (car lst) (insert n (cdr lst))))))