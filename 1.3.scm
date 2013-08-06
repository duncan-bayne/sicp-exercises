(define (square a) (* a a))

(define (largest a b c)
  (cond 
    ((and (>= a b) (>= a c)) a)
    ((and (>= b a) (>= b c)) b)
    (else c)))

(define (second-largest a b c)
  (cond 
    ((and (>= a b) (<= a c)) a)
    ((and (>= a c) (<= a b)) a)
    ((and (>= b a) (<= b c)) b)
    ((and (>= b c) (<= b a)) b)
    (else c)))

(define (squares-largest-two a b c)
  (+ 
   (square (largest a b c))
   (square (second-largest a b c))))
  
(define (assert-equal expected actual)
  (cond
    ((= expected actual) (print "T "))
    (else (print "F (expected " expected ", actual " actual))))
  
(squares-largest-two 1 2 3)
(squares-largest-two 1 1 1)
(squares-largest-two 2 2 5)
