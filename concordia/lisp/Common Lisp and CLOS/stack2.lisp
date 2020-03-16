;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defclass stack2 (stack)
  ((popsemaphore   :accessor popsem
                   :initform 0)))


(defmethod pop2 ((s stack2))
  (pop s))

(defmethod push :after ((s stack2) element)
  (setf (popsem s) 0))


(defmethod pop :after ((s stack2))
   (setf (popsem s) 1))

(defmethod pop2 :after ((s stack2))
   (setf (popsem s) 0))


(defmethod pop2 :around ((s stack2))
  (if (= (popsem s) 1)
     (call-next-method s)
     "Cannot operate: pop2"))