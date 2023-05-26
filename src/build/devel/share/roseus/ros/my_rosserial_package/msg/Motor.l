;; Auto-generated. Do not edit!


(when (boundp 'my_rosserial_package::Motor)
  (if (not (find-package "MY_ROSSERIAL_PACKAGE"))
    (make-package "MY_ROSSERIAL_PACKAGE"))
  (shadow 'Motor (find-package "MY_ROSSERIAL_PACKAGE")))
(unless (find-package "MY_ROSSERIAL_PACKAGE::MOTOR")
  (make-package "MY_ROSSERIAL_PACKAGE::MOTOR"))

(in-package "ROS")
;;//! \htmlinclude Motor.msg.html


(defclass my_rosserial_package::Motor
  :super ros::object
  :slots (_speed _direction ))

(defmethod my_rosserial_package::Motor
  (:init
   (&key
    ((:speed __speed) 0)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _speed (round __speed))
   (setq _direction (round __direction))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; int32 _speed
    4
    ;; int32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _speed
       (write-long _speed s)
     ;; int32 _direction
       (write-long _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_rosserial_package::Motor :md5sum-) "c132692a08c074e6ae3270af166b3df3")
(setf (get my_rosserial_package::Motor :datatype-) "my_rosserial_package/Motor")
(setf (get my_rosserial_package::Motor :definition-)
      "int32 speed
int32 direction


")



(provide :my_rosserial_package/Motor "c132692a08c074e6ae3270af166b3df3")


