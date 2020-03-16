;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun remove-first-occurrence (lst elt)  ; remove element elt from list lst
  (cond ((null lst) nil)                  ; if lst is empty then return nil
        ((equal (car lst) elt) (cdr lst)) ; if elt is head of lst, then return tail
        (t (cons (car lst)                ; else keep the head and recur on tail
              (remove-first-occurrence (cdr lst) elt)))))