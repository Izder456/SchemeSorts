(import srfi-1)

(define (quicksort LS)
  (cond
    ((or (null? LS) ; empty list is sorted
         (null? (cdr LS))) ; single-element list is sorted
     LS)
    (else
      (let ((pivot (car LS)) ; Select the first element as the pivot
            (rest (cdr LS)))
        (append
          (quicksort ; Recursively sort the lower partition
            (filter (lambda (x) (< x pivot)) rest)) ; Select the smaller values
          (list pivot) ; Add the pivot in the middle
          (quicksort ; Recursively sort the upper partition
            (filter (lambda (x) (>= x pivot)) rest))))))) ; Select the larger and equal values


(define (generate-numbers start end)
  (do ((i start (+ i 1))
       (result '() (cons i result)))
    ((> i end) result)))

(display (quicksort (generate-numbers 1 10000)))
