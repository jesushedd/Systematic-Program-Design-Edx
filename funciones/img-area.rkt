;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname img-area) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;Image -> Natural
; Consumes and image , outputs area of that image

(check-expect(image-area (rectangle 45 90 "solid" "green")) (* 45 90))
(check-expect(image-area (square 45 "solid" "green")) (* 45 45))


#;
(define (image-area img) 0);stub


#;(define (image-area img)
  (... img)); templste

(define (image-area img)
  (*
   (image-width img)
   (image-height img)))
