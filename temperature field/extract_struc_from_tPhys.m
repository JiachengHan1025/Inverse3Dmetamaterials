tPhys=csvread("IWP\bulk\tphys.csv");%change the path to the tPhys.csv you want
tPhys=reshape(tPhys,128,128,128);
%projection
beta=256;
eta=0.5;%different eta, different isosurface

xPhys = 1-(tanh(beta*eta)+tanh(beta*(tPhys-eta)))/(tanh(beta*eta)+tanh(beta*(1-eta)));
volumeViewer(xPhys);
