function output=membership_degree(mu,lambda)
[M,N]=size(mu);
for i=1:M
    for j=1:N
        muifs(i,j)=1-((1-mu(i,j))^lambda);
    end
end
output=muifs;
end
