function [output,IF]=entropy(mu)
[M,N]=size(mu);
v=1-mu;
pi=1-v-mu;
for i=1:M
    for j=1:N
        entrop(i,j)=(2.*mu(i,j).*v(i,j)+(pi(i,j)).^2)./((pi(i,j)).^2+(v(i,j))^2+(mu(i,j)).^2);
    end
end
IFE=(1/(M*N))*sum(entrop,2);
lambdaoptimum=max(IFE);
output=lambdaoptimum;
IF=IFE;
end
