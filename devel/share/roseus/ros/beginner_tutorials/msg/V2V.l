;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::V2V)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'V2V (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::V2V")
  (make-package "BEGINNER_TUTORIALS::V2V"))

(in-package "ROS")
;;//! \htmlinclude V2V.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass beginner_tutorials::V2V
  :super ros::object
  :slots (_id _name _batterry_level _car_pose _car_speed ))

(defmethod beginner_tutorials::V2V
  (:init
   (&key
    ((:id __id) 0)
    ((:name __name) "")
    ((:batterry_level __batterry_level) 0.0)
    ((:car_pose __car_pose) (instance geometry_msgs::Pose2D :init))
    ((:car_speed __car_speed) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _name (string __name))
   (setq _batterry_level (float __batterry_level))
   (setq _car_pose __car_pose)
   (setq _car_speed __car_speed)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:batterry_level
   (&optional __batterry_level)
   (if __batterry_level (setq _batterry_level __batterry_level)) _batterry_level)
  (:car_pose
   (&rest __car_pose)
   (if (keywordp (car __car_pose))
       (send* _car_pose __car_pose)
     (progn
       (if __car_pose (setq _car_pose (car __car_pose)))
       _car_pose)))
  (:car_speed
   (&rest __car_speed)
   (if (keywordp (car __car_speed))
       (send* _car_speed __car_speed)
     (progn
       (if __car_speed (setq _car_speed (car __car_speed)))
       _car_speed)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; string _name
    4 (length _name)
    ;; float32 _batterry_level
    4
    ;; geometry_msgs/Pose2D _car_pose
    (send _car_pose :serialization-length)
    ;; geometry_msgs/Twist _car_speed
    (send _car_speed :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _batterry_level
       (sys::poke _batterry_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose2D _car_pose
       (send _car_pose :serialize s)
     ;; geometry_msgs/Twist _car_speed
       (send _car_speed :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _batterry_level
     (setq _batterry_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose2D _car_pose
     (send _car_pose :deserialize buf ptr-) (incf ptr- (send _car_pose :serialization-length))
   ;; geometry_msgs/Twist _car_speed
     (send _car_speed :deserialize buf ptr-) (incf ptr- (send _car_speed :serialization-length))
   ;;
   self)
  )

(setf (get beginner_tutorials::V2V :md5sum-) "5dadcc72213a11a9b9e3ffee3fcf962b")
(setf (get beginner_tutorials::V2V :datatype-) "beginner_tutorials/V2V")
(setf (get beginner_tutorials::V2V :definition-)
      "int32 id
string name
float32 batterry_level
geometry_msgs/Pose2D car_pose
geometry_msgs/Twist car_speed

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :beginner_tutorials/V2V "5dadcc72213a11a9b9e3ffee3fcf962b")


