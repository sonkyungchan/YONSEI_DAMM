;; Auto-generated. Do not edit!


(when (boundp 'msgpkg::realVal)
  (if (not (find-package "MSGPKG"))
    (make-package "MSGPKG"))
  (shadow 'realVal (find-package "MSGPKG")))
(unless (find-package "MSGPKG::REALVAL")
  (make-package "MSGPKG::REALVAL"))

(in-package "ROS")
;;//! \htmlinclude realVal.msg.html


(defclass msgpkg::realVal
  :super ros::object
  :slots (_realPos _motPos _command _adc1 _adc2 _fss _par1 _par2 _par3 ))

(defmethod msgpkg::realVal
  (:init
   (&key
    ((:realPos __realPos) 0)
    ((:motPos __motPos) 0)
    ((:command __command) 0.0)
    ((:adc1 __adc1) 0)
    ((:adc2 __adc2) 0)
    ((:fss __fss) 0)
    ((:par1 __par1) 0.0)
    ((:par2 __par2) 0.0)
    ((:par3 __par3) 0.0)
    )
   (send-super :init)
   (setq _realPos (round __realPos))
   (setq _motPos (round __motPos))
   (setq _command (float __command))
   (setq _adc1 (round __adc1))
   (setq _adc2 (round __adc2))
   (setq _fss (round __fss))
   (setq _par1 (float __par1))
   (setq _par2 (float __par2))
   (setq _par3 (float __par3))
   self)
  (:realPos
   (&optional __realPos)
   (if __realPos (setq _realPos __realPos)) _realPos)
  (:motPos
   (&optional __motPos)
   (if __motPos (setq _motPos __motPos)) _motPos)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:adc1
   (&optional __adc1)
   (if __adc1 (setq _adc1 __adc1)) _adc1)
  (:adc2
   (&optional __adc2)
   (if __adc2 (setq _adc2 __adc2)) _adc2)
  (:fss
   (&optional __fss)
   (if __fss (setq _fss __fss)) _fss)
  (:par1
   (&optional __par1)
   (if __par1 (setq _par1 __par1)) _par1)
  (:par2
   (&optional __par2)
   (if __par2 (setq _par2 __par2)) _par2)
  (:par3
   (&optional __par3)
   (if __par3 (setq _par3 __par3)) _par3)
  (:serialization-length
   ()
   (+
    ;; int64 _realPos
    8
    ;; int64 _motPos
    8
    ;; float64 _command
    8
    ;; int64 _adc1
    8
    ;; int64 _adc2
    8
    ;; int64 _fss
    8
    ;; float64 _par1
    8
    ;; float64 _par2
    8
    ;; float64 _par3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _realPos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _realPos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _realPos) (= (length (_realPos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_realPos . bv) 0) 0) s)
              (write-long (ash (elt (_realPos . bv) 1) -1) s))
             ((and (class _realPos) (= (length (_realPos . bv)) 1)) ;; big1
              (write-long (elt (_realPos . bv) 0) s)
              (write-long (if (>= _realPos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _realPos s)(write-long (if (>= _realPos 0) 0 #xffffffff) s)))
     ;; int64 _motPos
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _motPos (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _motPos) (= (length (_motPos . bv)) 2)) ;; bignum
              (write-long (ash (elt (_motPos . bv) 0) 0) s)
              (write-long (ash (elt (_motPos . bv) 1) -1) s))
             ((and (class _motPos) (= (length (_motPos . bv)) 1)) ;; big1
              (write-long (elt (_motPos . bv) 0) s)
              (write-long (if (>= _motPos 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _motPos s)(write-long (if (>= _motPos 0) 0 #xffffffff) s)))
     ;; float64 _command
       (sys::poke _command (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; int64 _fss
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fss (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fss) (= (length (_fss . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fss . bv) 0) 0) s)
              (write-long (ash (elt (_fss . bv) 1) -1) s))
             ((and (class _fss) (= (length (_fss . bv)) 1)) ;; big1
              (write-long (elt (_fss . bv) 0) s)
              (write-long (if (>= _fss 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fss s)(write-long (if (>= _fss 0) 0 #xffffffff) s)))
     ;; float64 _par1
       (sys::poke _par1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _par2
       (sys::poke _par2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _par3
       (sys::poke _par3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _realPos
#+(or :alpha :irix6 :x86_64)
      (setf _realPos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _realPos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _motPos
#+(or :alpha :irix6 :x86_64)
      (setf _motPos (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _motPos (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _command
     (setq _command (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; int64 _fss
#+(or :alpha :irix6 :x86_64)
      (setf _fss (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fss (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _par1
     (setq _par1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _par2
     (setq _par2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _par3
     (setq _par3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get msgpkg::realVal :md5sum-) "759db5aada8af296ae03ce0c58f9ddd5")
(setf (get msgpkg::realVal :datatype-) "msgpkg/realVal")
(setf (get msgpkg::realVal :definition-)
      "int64 realPos
int64 motPos
float64 command
int64 adc1
int64 adc2
int64 fss
float64 par1
float64 par2
float64 par3

")



(provide :msgpkg/realVal "759db5aada8af296ae03ce0c58f9ddd5")


