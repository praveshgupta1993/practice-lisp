;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun tree-height (tree)
  (if (or (null tree) 
          (and (null (car (cdr tree)))
               (null (car (cdr (cdr tree))))))
      0
    (+ 1 (take-max (tree-height (car (cdr tree)))
                   (tree-height (car (cdr (cdr tree))))))))
                   
(defun take-max (n1 n2)
  (if (> n1 n2)
      n1
    n2))
