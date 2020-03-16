;; =================================================
;;  C. Constantinides <cc@cse.concordia.ca>, 2018
;; =================================================


(defclass person () ())

(defmethod speak ((s person) string)
 (format t "~A" string))

(defmethod speak :before ((s person) string)
 (print "Hello!"))

(defmethod speak :after ((s person) string)
 (print "Have a nice day!"))



(defclass speaker (person) ())

(defmethod speak :before ((i speaker) string)
 (print "Bonjour!"))

(defmethod speak :after ((i speaker) string)
 (print "Bonne journee!"))