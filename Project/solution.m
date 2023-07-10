clear all
close all
clc
alpha1=-pi/2; theta2=-pi/2; theta3=(pi/2); alpha4=0; theta5=0;
a1=1; a2=1;a3=1;a4=1;a5=1;
x=a1 + a3*cos(theta2 + theta3) + a4*cos(theta2 + theta3) + a2*cos(theta2) - (a5*sin(alpha4 + theta5)*sin(theta2 + theta3))/2 + a5*cos(theta2 + theta3)*cos(theta5) + (a5*sin(alpha4 - theta5)*sin(theta2 + theta3))/2
y=a4*sin(theta2 + theta3)*cos(alpha1) - a5*sin(theta5)*(sin(alpha1)*sin(alpha4) - cos(alpha1)*cos(alpha4)*cos(theta2)*cos(theta3) + cos(alpha1)*cos(alpha4)*sin(theta2)*sin(theta3)) + a2*cos(alpha1)*sin(theta2) + a5*sin(theta2 + theta3)*cos(alpha1)*cos(theta5) + a3*cos(alpha1)*cos(theta2)*sin(theta3) + a3*cos(alpha1)*cos(theta3)*sin(theta2)
z=a4*sin(theta2 + theta3)*sin(alpha1) + a5*sin(theta5)*(cos(alpha1)*sin(alpha4) + cos(alpha4)*sin(alpha1)*cos(theta2)*cos(theta3) - cos(alpha4)*sin(alpha1)*sin(theta2)*sin(theta3)) + a2*sin(alpha1)*sin(theta2) + a5*sin(theta2 + theta3)*sin(alpha1)*cos(theta5) + a3*sin(alpha1)*cos(theta2)*sin(theta3) + a3*sin(alpha1)*cos(theta3)*sin(theta2)
