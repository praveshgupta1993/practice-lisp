;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun isequalp (list1 list2)
  (cond ((and (null list1) (null list2)) t)
        (equal (car list1) (car list2)) (isequal(cdr list1)(cdr list2))
        (t nil)))