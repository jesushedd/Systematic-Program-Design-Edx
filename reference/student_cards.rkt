;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname student_cards) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define-struct student (name id))
;; Student is (make-student String Natural)
;; interp. a student with name and student id
(define S1 (make-student "Eva" 3124))
(define S2 (make-student "John" 7893))

#;
  (define (fn-for-student s)
    (... (student-name s)
         (student-id s)))

;; ListOfStudent is one of:
;; -empty
;; - (cons Student ListOfStudent)
;; interp. a list of students
(define LOS1 empty)
(define LOS2 (cons S1 empty))
(define LOS3 (cons S1 (cons S2 empty)))

#;
  (define (fn-for-los los)
    (cond [(empty? los) (...)]
          [else
           (... (fn-for-student (first los))
                (fn-for-los (rest los)))]))

;; ListOfStudent -> ListOfString
;; a list of card is a list of String, in the form "<name> <id>"
(check-expect (student-cards empty) empty)
(check-expect (student-cards LOS2) (cons "Eva 3124" empty))
(check-expect (student-cards LOS3) (cons "Eva 3124" (cons "John 7893" empty)))

#;
(define (student-cards los) empty)

(define (student-cards los)
  (cond [(empty? los) empty]
        [else (cons (student-card (first los))
                    (student-cards (rest los)))]))


;; Student -> String
;; produce a  String inthe form "<name> <id>"
(check-expect (student-card (make-student "Victor" 412)) "Victor 412")
(check-expect (student-card (make-student "YoNo" 1767)) "YoNo 1767")

#;
(define (student-card st) "")

(define (student-card s)
    (string-append (student-name s)
                   " "
                   (number->string (student-id s))))


  



