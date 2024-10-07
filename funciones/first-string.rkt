;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname first-string) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> String
;; extract first character from a string
(check-expect (string-first "hola") "h")
(check-expect (string-first "tango") "t")
(check-expect (string-first "greca") "g")


;(define (string-first str) " ");stub


#;(define (string-first str);template
  (... str))


(define (string-first str)
  (string-ith str 0))



