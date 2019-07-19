(define remove
  (lambda (A L)
    (cond (         (null? L)                   '()                                    ) ; Stopping condition
          (         (equal? A (car L))          (remove A (cdr L))             )
    	  (         #t                          (cons (car L) (remove A (cdr L))  )    )
    )
  )
)
