;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defclass queue ()
  ((elements :accessor queue-elements
             :initarg :elements
             :initform '())
   (size     :accessor queue-size
             :initarg :size
             :initform 0)
   (capacity :accessor queue-capacity
             :initform 3
             :allocation :class)))

(defmethod isempty ((s queue))
  (equal (queue-size s) 0))

(defmethod isfull ((s queue))
  (equal (queue-size s) (queue-capacity s)))

(defmethod enqueue ((s queue) element)
  (setf (queue-elements s) (append (queue-elements s) (list element)))
  (setf (queue-size s) (+ 1 (queue-size s))))

(defmethod dequeue ((s queue))
  (let ((top-element  (car (queue-elements s))))
    (setf (queue-elements s) (cdr (queue-elements s)))
    (setf (queue-size s) (- (queue-size s) 1))
    top-element))

(defmethod enqueue :around ((s queue) element)
  (if (isfull s)
      "The queue is already full."
      (call-next-method s element)))

(defmethod dequeue :around ((s queue))
  (if (isempty s)
      "The queue is empty."
      (call-next-method s)))