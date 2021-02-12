function output=normalization(I)
[M,N]=size(I);
gmin=min(min(I));
gmax=max(max(I));
for i=1:M
    for j=1:N
        mu(i,j)=(I(i,j)-(gmin))./(gmax-gmin);
    end
end
output=mu;
end
