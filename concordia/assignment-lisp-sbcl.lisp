(defun list-contains-only-numbers(lst)
    (cond
        ((null lst)
            (equal 1 0)
        )
        ((null (cdr lst))
            (numberp (car lst))
        )
        (t 
            (and (numberp (car lst)) (list-contains-only-numbers (cdr lst)))
        )
    )
)

(defun filter-elements-internal(lst element)
    (cond 
        ((null lst)
            '()
        )
        ((< (car lst) element)
            (filter-elements-internal (cdr lst) element)
        )
        ((> (car lst) element)
            (cons (car lst) (filter-elements-internal (cdr lst) element))
        )
    )
)

(defun filter(lst element)
    (cond 
        ((null lst)
            nil
        )
        ((equal (numberp element) nil)
            nil
        )
        ((equal (integerp element) nil)
            nil
        )
        ((< element 1)
            nil
        )
        ((equal (listp lst) nil)
            nil
        )
        ((equal (list-contains-only-numbers lst) nil)
            nil
        )
        (t
            (filter-elements-internal lst element)
        )
    )
)

(print (filter '5 3))
(format t "~%")

(print (filter '() 5))
(format t "~%")

(print (filter '(7 9 11) '(2)))
(format t "~%")

(print (filter '(3 4 5) '0))
(format t "~%")

(print (filter '(3 4 5) '2.5))
(format t "~%")

(print (filter '(3 4 5) '0))
(format t "~%")

(print (filter '(5 9 3 2 11) '7))
(format t "~%")

(sb-ext:exit)