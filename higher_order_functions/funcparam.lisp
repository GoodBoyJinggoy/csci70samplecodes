
(defun compute(op x y)
   (funcall op x y)
   ; instead of
   ; (op x y)
)

(defun add(x y)
   (+ x y)
)

(defun op(x y)
   (+ (* 2 x) (* 2 y))
)

(print (compute #'add 5 5))
(print (compute #'op 5 5))

