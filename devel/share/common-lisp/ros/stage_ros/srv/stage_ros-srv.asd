
(cl:in-package :asdf)

(defsystem "stage_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "StageRosGetPoses" :depends-on ("_package_StageRosGetPoses"))
    (:file "_package_StageRosGetPoses" :depends-on ("_package"))
    (:file "StageRosSetPoses" :depends-on ("_package_StageRosSetPoses"))
    (:file "_package_StageRosSetPoses" :depends-on ("_package"))
  ))