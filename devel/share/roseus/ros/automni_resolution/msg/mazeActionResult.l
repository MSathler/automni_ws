;; Auto-generated. Do not edit!


(when (boundp 'automni_resolution::mazeActionResult)
  (if (not (find-package "AUTOMNI_RESOLUTION"))
    (make-package "AUTOMNI_RESOLUTION"))
  (shadow 'mazeActionResult (find-package "AUTOMNI_RESOLUTION")))
(unless (find-package "AUTOMNI_RESOLUTION::MAZEACTIONRESULT")
  (make-package "AUTOMNI_RESOLUTION::MAZEACTIONRESULT"))

(in-package "ROS")
;;//! \htmlinclude mazeActionResult.msg.html


(defclass automni_resolution::mazeActionResult
  :super ros::object
  :slots (_result ))

(defmethod automni_resolution::mazeActionResult
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get automni_resolution::mazeActionResult :md5sum-) "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(setf (get automni_resolution::mazeActionResult :datatype-) "automni_resolution/mazeActionResult")
(setf (get automni_resolution::mazeActionResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
string result

")



(provide :automni_resolution/mazeActionResult "c22f2a1ed8654a0b365f1bb3f7ff2c0f")

