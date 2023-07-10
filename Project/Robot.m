clear all
close all
clc
syms a1 a2 a3 a4 ;
syms d6;
syms alpha1 theta2 theta3 theta4 theta6;
%system 1
Tranx_a1=[1 0 0 a1;0 1 0 0;0 0 1 0;0 0 0 1];
Rotx_alpha1=[1 0 0 0;0 cos(alpha1) -sin(alpha1) 0; 0 sin(alpha1) cos(alpha1) 0;0 0 0 1];


%system 2
Rotz_theta2=[cos(theta2) -sin(theta2) 0 0;sin(theta2) cos(theta2) 0 0;0 0 1 0; 0 0 0 1];
Tranx_a2=[1 0 0 a2;0 1 0 0;0 0 1 0;0 0 0 1];


%system 3
Rotz_theta3=[cos(theta3) -sin(theta3) 0 0;sin(theta3) cos(theta3) 0 0;0 0 1 0; 0 0 0 1];
Tranx_a3=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];


%system 4
Rotz_theta4=[cos(theta4) -sin(theta4) 0 0;sin(theta4) cos(theta4) 0 0;0 0 1 0; 0 0 0 1];
Tranx_a4=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];


%system 5
Rotz_90=[0 -1 0 0;1 0 0 0;0 0 1 0;0 0 0 1];
Rotx_90=[1 0 0 0;0 0 -1 0;0 1 0 0;0 0 0 1];


%system 6
Rotz_theta6=[cos(theta6) -sin(theta6) 0 0;sin(theta6) cos(theta6) 0 0;0 0 1 0; 0 0 0 1];
Tranz_d6=[1 0 0 0;0 1 0 0;0 0 1 d6;0 0 0 1];

%Danavit-Hartenberg Notations
A1=Tranx_a1*Rotx_alpha1;    A1=simplify(A1)
A2=Rotz_theta2*Tranx_a2;    A2=simplify(A2)
A3=Rotz_theta3*Tranx_a3;    A3=simplify(A3)
A4=Rotz_theta4*Tranx_a4;    A4=simplify(A4)
A5=Rotz_90*Rotx_90         %A5=simplify(A5)
A6=Rotz_theta6*Tranz_d6;    A6=simplify(A6)

%Forward kinematic for each joint
T01=A1;
T02=T01*A2;
T03=T02*A3;
T04=T03*A4;
T05=T04*A5; T5=simplify(T05)
T06=T05*A6;
T06=simplify(T06)