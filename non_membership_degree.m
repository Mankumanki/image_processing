function output=non_membership_degree(mu,lambda)
[M,N]=size(mu);
power=lambda*(lambda+1);
for i=1:M
    for j=1:N
        vifs(i,j)=((1-mu(i,j))^power);
    end
end
output=vifs;
end