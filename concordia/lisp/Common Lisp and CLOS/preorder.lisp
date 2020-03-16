;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================



(defun btreep (btree)
  (cond 
    ((null btree) t)  		           	
    ((not (listp btree)) nil)                       
    ((not (= (length btree) 3)) nil)             
    ((listp (car btree)) nil)                    
    ((not (btreep (car (cdr btree)))) nil)       
    ((not (btreep (car(cdr (cdr btree))))) nil)  
    (t t)))

(defun preorder (btree)
  (if (btreep btree)
    (pre btree)
    nil))

(defun pre (btree)
  (cond
    ((null btree) nil)
    (t (append (list (car btree))
               (pre (car(cdr btree)))
               (pre(car (cdr (cdr btree))))))))