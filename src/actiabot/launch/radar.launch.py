import launch
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, LogInfo
from launch.substitutions import LaunchConfiguration, ThisLaunchFileDir
from launch_ros.actions import Node
import os

def generate_launch_description():
    return LaunchDescription([
        DeclareLaunchArgument('serial_port', default_value='/dev/ttyUSB0', description='Radar serial port'),
        Node(
            package='iwr6843aop_pub',  # Replace with actual radar driver package name
            executable='pcl_pub',  # Replace with actual radar driver node name
            name='radar_driver',
            namespace='radar',
            output='screen',
            parameters=[{'serial_port': LaunchConfiguration('serial_port')}]
        ),
    ])
