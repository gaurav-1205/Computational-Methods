disp('gaussian elimination of 1')
H = hilb(20);
b = ones(20, 1);
H = [H b];
gauss_EP17BTECH11007_Gaurav(H)

disp('gaussian elimination of 0.99')
H = hilb(20);
b = ones(20, 1)-0.01;
H = [H b];
gauss_EP17BTECH11007_Gaurav(H)

