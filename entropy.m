function output=entropy(mu,lambda)
[M,N]=size(mu);
    for i=1:M
        for j=1:N
             muifs(i,j)=1-((1-mu(i,j))^lambda);
             vifs(i,j)=(1-mu(i,j))^(lambda*(1+lambda));
             piifs(i,j)=1-vifs(i,j)-muifs(i,j);
             temp(i,j)=(2*vifs(i,j)*muifs(i,j)+(piifs(i,j))^2)/((piifs(i,j))^2+(vifs(i,j))^2+(muifs(i,j))^2);
        end
    end
entrop=(1/(M*N))*sum(sum(temp));
output=entrop;
end
