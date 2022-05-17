function A = transfomation_matrix(r,phi,psi)

%syms r; syms phi; syms psi;
%r=1; phi = pi/4; psi = 0;

Rot_z = [ cos(phi), -sin(phi), 0, 0;...
          sin(phi),  cos(phi), 0, 0;...
                 0,         0, 1, 0;...
                 0,         0, 0, 1];
             
Rot_y = [ cos(-psi), 0, sin(-psi), 0;...
                  0, 1,         0, 0;...
         -sin(-psi), 0, cos(-psi), 0;...
                  0, 0,         0, 1];
 
Trans_x = [1 0 0 r;...
           0 1 0 0;...
           0 0 1 0;...
           0 0 0 1];

A = Rot_z*Rot_y*Trans_x;

end