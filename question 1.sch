;Write a function (remove N L) that takes a list L and a number N and returns the list L but with the first N elements removed.  For example, (remove 2 '(a b c d) ) should return '(c d).

;If the number N is greater than the number of elements in the list L, this function should return the empty list; so (remove 4  '(a b c)) should return '(). 

;The number N may be 0 or may be greater than 0.  It will never be negative.

;A hint for the stopping condition or base case: for what value of N should this function just return the list L, with no elements removed, and do nothing else?

(define remove
    (lambda(N L)
        (cond ( (= N 0)                                     L             ) ; stopping condition 1
	      (	(null? L )                                 '()            ) 

; stopping condition 2, we use null to check if list empty, and ' to make clear () is not a fn		

       	      ( #t                           ( remove (- N 1)( cdr L ))  ) ; 'the always call'
        )
    )
)





