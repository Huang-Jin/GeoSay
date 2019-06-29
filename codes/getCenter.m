function cpts = getCenter(Jlist)

n = length(Jlist);
cpts = zeros(n,2);

for i=1:n
    cpts(i,:)=Jlist(i).center;
end

end