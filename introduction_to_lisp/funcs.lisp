(defun square(n) (* n n))

; abs is already defined as a builtin
(defun absval(n)
  "absolute value"
  (if (< n 0) (- n) n )
)


(defun factorial(n)
    (if (= n 0)
		  1
        (* n (factorial (- n 1 )))
    )
)

; reverse is already defined as a builtin
(defun rev (x)
  (if (null x)
     nil
     (append (rev (rest x))
             (list (first x))
     )
  )	  
)

; removes nested lists and returns a list of all atoms in the original list
(defun flatten (l)
   (if (null l)
        nil
        (if (atom (first l))
            (cons (first l) (flatten (rest l)))
            (append (flatten (first l)) (flatten (rest l)))
	)
   )
)

; retrieves/retains only those elements from a list less than a value
(defun filter (a x)
    (if (null x)
	nil
	(if (< (first x) a)
	    (cons (first x) (filter a (rest x)))
	    (filter a (rest x))
        )
    )
)
