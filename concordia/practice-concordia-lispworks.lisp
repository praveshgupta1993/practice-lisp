(defun fibonacci (k)
  (if (or (zerop k) (= k 1)
    k
    (+ (fibonacci (- k 1)) (fibonacci (- k 2))))))