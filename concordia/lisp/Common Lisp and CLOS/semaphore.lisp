;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defclass semaphore ()
  ((count :accessor semaphore-count
          :initform 0)
   (name  :reader semaphore-name
          :initarg :name)))

(defun make-semaphore(name)
  (make-instance 'semaphore :name name)) 

(defmethod increment ((sem semaphore))
  (setf (semaphore-count sem) (+ 1 (semaphore-count sem))))

(defmethod decrement ((sem semaphore))
  (setf (semaphore-count sem) (- (semaphore-count sem) 1)))