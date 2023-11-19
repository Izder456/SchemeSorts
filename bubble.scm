;; Bubble Up
(define (bubble-up L)
  (if (null? (cdr L))
      L
      (if (< (car L) (cadr L))
      (cons (car L) (bubble-up (cdr L)))
      (cons (cadr L) (bubble-up (cons (car L) (cddr L)))))))

;; Bubble Sort Over _Len(gth) of L(ist)
(define (bubble-sort LS)
  (define (bubble-sort_len L N)
    (if (= N 1)
    L
    (bubble-sort_len (bubble-up L) (- N 1))))
  (bubble-sort_len LS (length LS)))

(define (generate-numbers start end)
  (do ((i start (+ i 1))
       (result '() (cons i result)))
    ((> i end) result)))

(display (bubble-sort (generate-numbers 1 10000)))
