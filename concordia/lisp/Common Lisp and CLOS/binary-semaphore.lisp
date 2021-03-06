;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defclass binary-semaphore (semaphore)() )

(defun make-binary-semaphore(name)
  (make-instance 'binary-semaphore :name name))

(defmethod increment :around ((binsem binary-semaphore))
 (if (= (semaphore-count binsem) 1)
  nil
  (call-next-method)))

(defmethod decrement :around ((binsem binary-semaphore))
 (if (= (semaphore-count binsem) 0)
  nil
  (call-next-method)))
