(defun append2(lst1 lst2)
                   (if (null lst1)
                       lst2
                     (cons (car lst1) (append2 (cdr lst1) lst2))
                     )
                   )

(defun sum(lst)
    (if (null lst)
        0
        (
            + (car lst) (sum (cdr lst))
        )
    )
)

(defun lastElement(lst)
    (cond 
        ((null lst) nil)
        ((null (cdr lst)) (car lst))
        (t (lastElement (cdr lst)))
    )
)

(defun lengthList(lst)
    (if(null (car lst))
    0
    (1+(lengthList (cdr lst))))
)

(defun reversedList(lst)
    (if(null lst)
    '()
    (append (reversedList (cdr lst)) (list (car lst)))
    )
)

(defun multiplyElement(lst)
    (if (null lst)
    1
    (* (car lst) (multiplyElement(cdr lst)))
    )
)

(defun cubeEachElement(lst)
    (if(null lst)
    '()
    (let ((element (car lst)))
        (cons
            (* element element element) 
            (cubeEachElement (cdr lst))
        )
    )
    )
)

(defun interleave(lst1 lst2)
    (cond 
        ((null lst1) lst2)
        ((null lst2) lst1)
        (t (append
                (list (car lst1))
                (list (car lst2))
                (interleave (cdr lst1) (cdr lst2))
            )
        )
    )
)

(defun removeFirstOccurence(lst element)
    (cond
        ((null lst) '())
        ((equal (car lst) element) (cdr lst))
        (t (cons (car lst) (removeFirstOccurence (cdr lst) element)))
    )
)

(defun removeAllOccurences(lst element)
    (cond
        ((null lst) '())
        ((equal (car lst) element) (removeAllOccurences (cdr lst) element))
        (t (cons (car lst) (removeAllOccurences (cdr lst) element)))
    )
)

(defun mergeSortedListsWithoutRecurrences(lst1 lst2)
    (cond 
        (
            (null lst1) 
                lst2
        )
        (
            (null lst2) 
                lst1
        )
        (
            (equal (car lst1) (car (cdr lst1)))
                (mergeSortedListsWithoutRecurrences (cdr lst1) lst2)
        )
        (
            (equal (car lst2) (car (cdr lst2)))
                (mergeSortedListsWithoutRecurrences lst1 (cdr lst2))
        )
        (
            (equal (car lst1) (car lst2))
                (mergeSortedListsWithoutRecurrences (cdr lst1) lst2)
        )
        (
            (< (car lst1) (car lst2))
                (cons (car lst1) (mergeSortedListsWithoutRecurrences (cdr lst1) lst2))
        )
        (
            (> (car lst1) (car lst2))
                (cons (car lst2) (mergeSortedListsWithoutRecurrences lst1 (cdr lst2)))
        )
    )
)

(defun listContainsOnlyNumbers(lst)
    (cond
        ((null lst)
            (equal 1 0)
        )
        ((null (cdr lst))
            (numberp (car lst))
        )
        (t 
            (and (numberp (car lst)) (listContainsOnlyNumbers (cdr lst)))
        )
    )
)

(defun filterElementsInternal(lst element)
    (cond 
        ((null lst)
            '()
        )
        ((< (car lst) element)
            (filterElementsInternal (cdr lst) element)
        )
        ((> (car lst) element)
            (cons (car lst) (filterElementsInternal (cdr lst) element))
        )
    )
)

(defun filter(lst element)
    (cond 
        ((null lst)
            (print "case-1 empty list")
            nil
        )
        ((equal (numberp element) nil)
            (print "case-2 element not a number")
            nil
        )
        ((equal (integerp element) nil)
            (print "case-3 element not an integer")
            nil
        )
        ((< element 1)
            (print "case-4 element not positive")
            nil
        )
        ((equal (listp lst) nil)
            (print "case-5 not a list")
            nil
        )
        ((equal (listContainsOnlyNumbers lst) nil)
            (print "case-6 list contains an element which is not a number")
            nil
        )
        (t
            (filterElementsInternal lst element)
        )
    )
)

(defun fibonacci(n)
    (cond
        ((or (= n 0) (= n 1))
            n
        )
        (t
            (+ (fibonacci (- n 1)) (fibonacci (- n 2)))
        )
    )
)

(defun isSubset(lst1 lst2)
    (if(null lst1)
        t
        (if(member (car lst1) lst2)
            (isSubset (cdr lst1) lst2)
            nil
        )
    )
)

(defun unionList(lst1 lst2)
    (cond 
        ((null lst1)
            lst2
        )
        ((null lst2)
            lst1
        )
        ((member (car lst1) lst2)
                    (unionList (cdr lst1) lst2)
        )
        (t
            (cons
                (car lst1) 
                (unionList (cdr lst1) lst2)
            )
        )
    )
)

(defun intersectionList(lst1 lst2)
    (cond 
        ((null lst1)
            '()
        )
        ((null lst2)
            '()
        )
        ((member (car lst1) lst2)
            (cons
                (car lst1) 
                (intersectionList (cdr lst1) lst2)
            )
        )
        (t
            (intersectionList (cdr lst1) lst2)
        )
    )
)

(defun setdifference (lst1 lst2)
    (cond
        ((null lst1) 
            '()
        )
        ((null lst2) 
            lst1
        )
        ((member (car lst1) lst2)
            (setdifference (cdr lst1) lst2)
        )
        (t 
            (cons (car lst1) (setdifference (cdr lst1) lst2)))
        )
)

(defun setsymmetricdifference (lst1 lst2)
    (setdifference 
        (union lst1 lst2)
        (intersection lst1 lst2)
    )
)

(defun setsymmetricdifference2 (lst1 lst2)
    (union 
        (setdifference lst1 lst2)
        (setdifference lst2 lst1))
)

(defun bagToSet(lst)
    (cond
        ((null lst)
            '()
        )
        ((null (cdr lst))
            (list (car lst))
        )
        ((member (car lst) (cdr lst))
            (bagToSet (cdr lst))
        )
        (t 
            (cons
                (car lst)
                (bagToSet (cdr lst))
            )
        )
    )
)

(print (bagToSet '(a b c a b a a)))
(format t "~%")

(sb-ext:exit)