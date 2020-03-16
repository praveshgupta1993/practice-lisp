;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defclass collection ()
  ((els  :accessor elements
         :initarg :els
         :initform '())))

(defmethod display ((c collection))
  (elements c))

(defmethod insert (el (c collection))
   (if (memberp el (elements c))
      "error: duplicate element."
      (setf (elements c) (cons el (elements c)))))

(defun memberp (element lst)
  (cond
   ((null lst) nil)   
   ((equal element (car lst)) t)     
   (t (memberp element (cdr lst)))))

(defmethod erase (el (c collection))
   (if (null (elements c))
      "error: list empty."
      (if (memberp el (elements c))
         (setf (elements c) (remove-element el (elements c)))
         "error: element does not exist." )))

(defun remove-element (el lst)
   (if (equal el (car lst))
       (cdr lst)
       (cons (car lst) (remove-element el (cdr lst)))))
