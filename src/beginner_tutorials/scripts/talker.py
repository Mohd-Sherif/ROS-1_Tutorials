#!/usr/bin/env python

import rospy
from std_msgs.msg import String

from beginner_tutorials.msg import V2V

def talker():
    pub = rospy.Publisher("chatter", String, queue_size=10)

    car_pub = rospy.Publisher("car_channel", V2V, queue_size=10)

    rospy.init_node("talker", anonymous=True)
    #rate = rospy.Rate(freq)
    rate = rospy.Rate(10)

    passat_car_info = V2V()
    passat_car_info.id = 3
    passat_car_info.name = "Passat2022"
    passat_car_info.batterry_level = 0.95
    passat_car_info.car_pose.x = 5
    passat_car_info.car_pose.y = 4
    passat_car_info.car_pose.theta = .4

    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        #rospy.loginfo(hello_str)
        pub.publish(hello_str)

        car_pub.publish(passat_car_info)

        rate.sleep()

if __name__ == '__main__':
    #global freq
    #freq = rospy.get_param("freq")
    try:
        talker()
    except rospy.ROSInterruptException:
        pass