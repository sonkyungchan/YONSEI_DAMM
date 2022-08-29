;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::realVal3)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'realVal3 (find-package "MSGPKG")))
(unless (find-package "MSGPKG::REALVAL3")
  (make-package "MSGPKG::REALVAL3"))

(in-package "ROS")
;;//! \htmlinclude realVal3.msg.html


(defclass msgpkg::realVal3
  :super ros::object
  :slots (_realPos1 _realPos2 _adc1 _adc2 _adc3 _adc4 _command1 _command2 ))

(defmethod msgpkg::realVal3
  (:init
   (&key
    ((:realPos1 __realPos1) 0)
    ((:realPos2 __realPos2) 0)
    ((:adc1 __adc1) 0)
    ((:adc2 __adc2) 0)
    ((:adc3 __adc3) 0)
    ((:adc4 __adc4) 0)
    ((:command1 __command1) 0.0)
    ((:command2 __command2) 0.0)
    )
   (send-super :init)
   (setq _realPos1 (round __realPos1))
   (setq _realPos2 (round __realPos2))
   (setq _adc1 (round __adc1))
   (setq _adc2 (round __adc2))
   (setq _adc3 (round __adc3))
   (setq _adc4 (round __adc4))
   (setq _command1 (float __command1))
   (setq _command2 (float __command2))
   self)
  (:realPos1
   (&optional __realPos1)
   (if __realPos1 (setq _realPos1 __realPos1)) _realPos1)
  (:realPos2
   (&optional __realPos2)
   (if __realPos2 (setq _realPos2 __realPos2)) _realPos2)
  (:adc1
   (&optional __adc1)
   (if __adc1 (setq _adc1 __adc1)) _adc1)
  (:adc2
   (&optional __adc2)
   (if __adc2 (setq _adc2 __adc2)) _adc2)
  (:adc3
   (&optional __adc3)
   (if __adc3 (setq _adc3 __adc3)) _adc3)
  (:adc4
   (&optional __adc4)
   (if __adc4 (setq _adc4 __adc4)) _adc4)
  (:command1
   (&optional __command1)
   (if __command1 (setq _command1 __command1)) _command1)
  (:command2
   (&optional __command2)
   (if __command2 (setq _command2 __command2)) _command2)
  (:serialization-length
   ()
   (+
    ;; int64 _realPos1
    8
    ;; int64 _realPos2
    8
    ;; int64 _adc1
    8
    ;; int64 _adc2
    8
    ;; int64 _adc3
    8
    ;; int64 _adc4
    8
    ;; float64 _command1
    8
    ;; float64 _command2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _realPos1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _realPos1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _realPos1) (= (length (_realPos1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_realPos1 . bv) 0) 0) s)
              (write-long (ash (elt (_realPos1 . bv) 1) -1) s))
             ((and (class _realPos1) (= (length (_realPos1 . bv)) 1)) ;; big1
              (write-long (elt (_realPos1 . bv) 0) s)
              (write-long (if (>= _realPos1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _realPos1 s)(write-long (if (>= _realPos1 0) 0 #xffffffff) s)))
     ;; int64 _realPos2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _realPos2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _realPos2) (= (length (_realPos2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_realPos2 . bv) 0) 0) s)
              (write-long (ash (elt (_realPos2 . bv) 1) -1) s))
             ((and (class _realPos2) (= (length (_realPos2 . bv)) 1)) ;; big1
              (write-long (elt (_realPos2 . bv) 0) s)
              (write-long (if (>= _realPos2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _realPos2 s)(write-long (if (>= _realPos2 0) 0 #xffffffff) s)))
     ;; int64 _adc1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _adc1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _adc1) (= (length (_adc1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_adc1 . bv) 0) 0) s)
              (write-long (ash (elt (_adc1 . bv) 1) -1) s))
             ((and (class _adc1) (= (length (_adc1 . bv)) 1)) ;; big1
              (write-long (elt (_adc1 . bv) 0) s)
              (write-long (if (>= _adc1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _adc1 s)(write-long (if (>= _adc1 0) 0 #xffffffff) s)))
     ;; int64 _adc2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _adc2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _adc2) (= (length (_adc2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_adc2 . bv) 0) 0) s)
              (write-long (ash (elt (_adc2 . bv) 1) -1) s))
             ((and (class _adc2) (= (length (_adc2 . bv)) 1)) ;; big1
              (write-long (elt (_adc2 . bv) 0) s)
              (write-long (if (>= _adc2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _adc2 s)(write-long (if (>= _adc2 0) 0 #xffffffff) s)))
     ;; int64 _adc3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _adc3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _adc3) (= (length (_adc3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_adc3 . bv) 0) 0) s)
              (write-long (ash (elt (_adc3 . bv) 1) -1) s))
             ((and (class _adc3) (= (length (_adc3 . bv)) 1)) ;; big1
              (write-long (elt (_adc3 . bv) 0) s)
              (write-long (if (>= _adc3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _adc3 s)(write-long (if (>= _adc3 0) 0 #xffffffff) s)))
     ;; int64 _adc4
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _adc4 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _adc4) (= (length (_adc4 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_adc4 . bv) 0) 0) s)
              (write-long (ash (elt (_adc4 . bv) 1) -1) s))
             ((and (class _adc4) (= (length (_adc4 . bv)) 1)) ;; big1
              (write-long (elt (_adc4 . bv) 0) s)
              (write-long (if (>= _adc4 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _adc4 s)(write-long (if (>= _adc4 0) 0 #xffffffff) s)))
     ;; float64 _command1
       (sys::poke _command1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _command2
       (sys::poke _command2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _realPos1
#+(or :alpha :irix6 :x86_64)
      (setf _realPos1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _realPos1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _realPos2
#+(or :alpha :irix6 :x86_64)
      (setf _realPos2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _realPos2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _adc1
#+(or :alpha :irix6 :x86_64)
      (setf _adc1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _adc1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _adc2
#+(or :alpha :irix6 :x86_64)
      (setf _adc2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _adc2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _adc3
#+(or :alpha :irix6 :x86_64)
      (setf _adc3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _adc3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _adc4
#+(or :alpha :irix6 :x86_64)
      (setf _adc4 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _adc4 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _command1
     (setq _command1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _command2
     (setq _command2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get msgpkg::realVal3 :md5sum-) "8a1e673a40df61e466a877827a9e4183")
(setf (get msgpkg::realVal3 :datatype-) "msgpkg/realVal3")
(setf (get msgpkg::realVal3 :definition-)
      "int64 realPos1
int64 realPos2
int64 adc1
int64 adc2
int64 adc3
int64 adc4
float64 command1
float64 command2

")



(provide :msgpkg/realVal3 "8a1e673a40df61e466a877827a9e4183")


