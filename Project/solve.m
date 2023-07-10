clc
clear all
syms alpha1 theta2 theta3 alpha4 theta5;
a1=1; a2=3;a3=2;a4=1;a5=1;
x=2;
y=3;
z=0;
eqn=[a1 + a3*cos(theta2 + theta3) + a4*cos(theta2 + theta3) + a2*cos(theta2) - (a5*sin(alpha4 + theta5)*sin(theta2 + theta3))/2 + a5*cos(theta2 + theta3)*cos(theta5) + (a5*sin(alpha4 - theta5)*sin(theta2 + theta3))/2==2,
    a4*sin(theta2 + theta3)*cos(alpha1) - a5*sin(theta5)*(sin(alpha1)*sin(alpha4) - cos(alpha1)*cos(alpha4)*cos(theta2)*cos(theta3) + cos(alpha1)*cos(alpha4)*sin(theta2)*sin(theta3)) + a2*cos(alpha1)*sin(theta2) + a5*sin(theta2 + theta3)*cos(alpha1)*cos(theta5) + a3*cos(alpha1)*cos(theta2)*sin(theta3) + a3*cos(alpha1)*cos(theta3)*sin(theta2)==3,
    a4*sin(theta2 + theta3)*sin(alpha1) + a5*sin(theta5)*(cos(alpha1)*sin(alpha4) + cos(alpha4)*sin(alpha1)*cos(theta2)*cos(theta3) - cos(alpha4)*sin(alpha1)*sin(theta2)*sin(theta3)) + a2*sin(alpha1)*sin(theta2) + a5*sin(theta2 + theta3)*sin(alpha1)*cos(theta5) + a3*sin(alpha1)*cos(theta2)*sin(theta3) + a3*sin(alpha1)*cos(theta3)*sin(theta2)==0];
S=solve(eqn,[alpha1 theta2 theta3 alpha4 theta5])