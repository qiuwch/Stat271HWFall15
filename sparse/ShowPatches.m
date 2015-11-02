% illustrate the patches for training
load('patchsin_highfre.mat');
row=16;col=16;
NumShow=8;
sampledpatch=zeors(NumShow*row,NumShow*col);
for ii=1:NumShow^2
    thispatch=reshape(patchsin(:,ii),[row, col]);
    rowidx=mod(ii,NumShow);
    colidx=(ii-rowidx)/NumShow+1;
    sampledpatch((rowidx-1)*row+1:rowidx*row,...
        (colidx-1)*col+1:colidx*col)=thispatch;
end
imshow(sampledpatch,[]);