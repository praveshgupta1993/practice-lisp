;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun issubsetp (set1 set2)
  (if (null set1)
    t
    (if (member (car set1) set2)
      (issubsetp (cdr set1) set2)
      nil)))
