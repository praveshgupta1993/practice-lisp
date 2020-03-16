;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun make-pairs (&key a b c (d 'last))
  (list (list a b) (list c d)))