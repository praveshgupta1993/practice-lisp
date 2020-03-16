;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defclass stack ()
  ((elements :accessor stack-elements
             :initarg :elements
             :initform '())
   (size     :accessor stack-size
             :initarg :size
             :initform 0)
   (capacity :accessor stack-capacity
             :initform 3
             :allocation :class)))

(defmethod isempty ((s stack))
  (equal (stack-size s) 0))

(defmethod isfull ((s stack))
  (equal (stack-size s) (stack-capacity s)))

(defmethod push ((s stack) element)
  (setf (stack-elements s) (cons element (stack-elements s)))
  (setf (stack-size s) (+ 1 (stack-size s))))

(defmethod pop ((s stack))
  (let ((top-element  (car (stack-elements s))))
    (setf (stack-elements s) (cdr (stack-elements s)))
    (setf (stack-size s) (- (stack-size s) 1))
    top-element))

(defmethod top ((s stack))
  (car (stack-elements s)))

(defmethod push :around ((s stack) element)
  (if (isfull s)
      "The stack is already full."
      (call-next-method s element)))

(defmethod pop :around ((s stack))
  (if (isempty s)
      "The stack is empty."
      (call-next-method s)))

(defmethod top :around ((s stack))
  (if (isempty s)
      "The stack is empty."
      (call-next-method s)))

