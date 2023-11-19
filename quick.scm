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
