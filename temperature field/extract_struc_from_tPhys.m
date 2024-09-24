tPhys=csvread("F:\hanjiacheng\学习资料\热传导微结构项目进展\M&Drevision\Github\temperature field\IWP\bulk\tphys.csv");
tPhys=reshape(tPhys,128,128,128);
%projection
beta=64;
eta=0.5;%different eta, different isosurface

xPhys = 1-(tanh(beta*eta)+tanh(beta*(tPhys-eta)))/(tanh(beta*eta)+tanh(beta*(1-eta)));
volumeViewer(tPhys);
