(define (square a) (* a a))

(define (insert-sorted sorted-list item)

(define (sort sorted-list remaining-list)
  (cond ((= 0 (length remaining-list)) sorted-list)
        (else (insert-sorted sorted-list (car remaining-list) (cdr remaining-list)))))
  
(define (nth n lst) (car lst)
  (cond ((= n 1) (car lst))
        (else (nth (- n 1) (cdr lst)))))

(define (largest n lst)
  (nth n (sort (list) lst)))
  
(define (squares-largest-two a b c)
  (+ 
   (square (largest 1 (list a b c)))
   (square (largest 2 (list a b c)))))
  
(squares-largest-two 1 2 3)