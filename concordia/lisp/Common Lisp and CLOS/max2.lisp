;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================

(defun max2 (lst)
  (cond ((null lst) nil)       
        ((null (cdr lst)) (car lst)) 
        (t (let ((a (car lst))
                (b (max2 (cdr lst))))
                (if (> a b) a b)))))


(defun max3 (lst)
  (cond ((null lst) nil)
        ((null (cdr lst)) (car lst))
        ((> (car lst) (car (cdr lst))) (max3 (cons (car lst) (cdr (cdr lst)))))
        (t (max3 (cdr lst)))))



(defun max4 (lst)
  (cond ((null lst) nil)
        ((null (cdr lst)) (car lst))
        (t (greater (car lst) (max4 (cdr lst))))))

(defun greater (a b)
   (if (> a b)
      a
      b))

(defun max5 (lst)
  (cond ((null lst) nil)
        ((null (cdr lst)) (car lst))
        ((> (car lst) (max5 (cdr lst))) (car lst))
        (t (max5 (cdr lst)))))

(defun max6 (lst)
  (cond ((null lst) nil)
        ((null (cdr lst)) (car lst))
        ((< (car lst) (max6 (cdr lst))) (max6 (cdr lst)))
        (t (max6 (cons (car lst) (cdr (cdr lst)))))))