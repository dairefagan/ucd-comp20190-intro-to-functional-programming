(define remove
  (lambda (A L)
    (cond (         (null? L)                   '()                                    ) ; Stopping condition 1
          (         (equal? A (car L))          (cdr L)                                ) ; Stopping condition 2
    	  (         #t                          (cons (car L) (remove A (cdr L))       )                                  )
     )
  )
)
