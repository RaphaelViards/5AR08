model = [ [1;1;1] [2;5;7] [47;2;64] [4;5;7] [87;6;1] [98;6;4]];

data = model + 1;

weights = ones(1,size(model,2));

rndvec=uint32(randperm(size(model,2))-1);


[tmp, tmp, TreeRoot] = kdtree( model', []);

sizernd=ceil(1.45*size(model,2));

iter = 40;

[R,T]=icpCpp(model,data,weights,rndvec,sizernd,TreeRoot,iter);

