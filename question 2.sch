;Write a function (everySecond L) that takes a list L as input and returns a list containing every second element from L, starting from the first element.  For example (everySecond '(1 a 2 b 3 c 4)) should return '(1 2 3 4), and (everySecond '(a b c d e)) should return '(a c e).

;A hint: think carefully about the stopping conditions.  There are three stopping conditions here (three cases where the function can give an answer immediately with no further work): when the list L is empty, when the list L has just one element in it, and when ????


;Another hint: (null? L) is true if L is empty.  (cdr L) is L with the first element missing.  (null?  (cdr L)) is therefore true if L contains exactly 1 element.

;A final hint: to make a list containing a given element X, use the function (list X).  (list 'a) returns '(a),   (list 1) returns '(1).  More importantly for this function, (list (car L)) returns a list containing the first element of the list L.  This is useful for one of the stopping conditions.

(define everySecond
    (lambda(L)
        (cond( (null? L)            L)
	    ( (null? (cdr L))                                     car L)
        ( #t              (cons (car L) (everySecond (cdr (cdr L)))))
        )
    )
)

