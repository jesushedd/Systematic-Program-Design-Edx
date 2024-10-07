;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname images) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(circle 12 "solid" "red")
(rectangle 20 60 "outline" "blue")
(text "hello" 24 "orange")
(above (circle 10 "solid" "red")
       (circle 20 "solid" "green")
       (circle 30 "solid" "yellow"))
(overlay (circle 10 "solid" "red")
       (circle 20 "solid" "green")
       (circle 30 "solid" "yellow"))

(text "QUESTION 1" 30 "black")
(overlay (text "STOP" 48 "white")
         (regular-polygon 60 8 "solid" "red"))
(text "QUESTION 2" 30 "black")
(beside (square 20 "outline" "blue")
        (above (circle 15 "solid" "red")
               (triangle 20 "solid" "green")))
(text "SNOWMAN" 30 "black")
(above (text "snowman" 30 "black") (overlay (beside (circle 5 "solid" "black") (circle 5 "solid" "black")) (circle 50 "outline" "blue")) (circle 70 "outline" "blue"))

