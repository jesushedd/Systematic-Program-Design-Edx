;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname listOfNums) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Data Definitions:


;ListOFNumber is one of:
; -empty
; -(cons Number ListOfNumber)
; interp. each number in the list is an owl weight in grames
(define lon1 empty)
(define lon2 (cons 60 (cons 42 empty)))

#;
(define (fn-for-lon lon)
  (cond [(empty? lon) (...)]
        [else
         (... (first lon)
              (fn-for-lon (rest lon)))]))

;;Templates rules used:
;; - one of : 2 cases
;; - atomic distict : empty
;; - compound: (cons Number ListOfNumber)
;; - self-refernce: (rest lon) is ListOfNumber

;; Functions:

;ListOfNumbers -> Number
; Consumes a list of number, produce the total sum of numbers in that list
(check-expect (sum-of-list empty) 0)
(check-expect (sum-of-list (cons 5 empty)) 5)
(check-expect (sum-of-list (cons 10 (cons 9 empty))) 19)
(check-expect (sum-of-list (cons 10 (cons 9 (cons 5 empty)))) 24)


;(define (sum-of-list lon) 0)

(define (sum-of-list lon)
  (cond [(empty? lon) 0]
        [else
         (+ (first lon)
              (sum-of-list (rest lon)))]))

;ListOfNumbers -> Natural
; Cosnumes a list of owls , and procuce numbers of owls in list
(check-expect (count empty) 0)
(check-expect (count (cons 5 (cons 10 empty))) 2)
(check-expect (count (cons 10 (cons 9 (cons 8 empty)))) 3)

;(define (count lon) 0)


(define (count lon)
  (cond [(empty? lon) 0]
        [else
         (+ 1 (count (rest lon)))]))

