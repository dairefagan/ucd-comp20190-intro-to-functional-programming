(define removeAll
  (lambda (A L)
    (cond (         (null? L)                   '()                                                ) ; Stopping condition 1
          (         (equal? A (car L))          (removeAll A (cdr L))                              )
	  (         (list? (car L) )		(cons (removeAll A (car L)) (removeAll A (cdr L)) )) 
    	  (         #t                          (cons (car L) (removeAll A (cdr L))  )             )
    )
  )
)
