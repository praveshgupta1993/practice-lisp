;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defun fn (x)
  (cond
    ((numberp x) #'+)
    ((listp  x) #'append)
   )
)

(defun combine (&rest args)
  (apply (fn (car args)) args))