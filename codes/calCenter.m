function Jlist = calCenter(Jlist)

n = length(Jlist);
for i = 1:n
    Jlist(i).center = (Jlist(i).points(2,:)+Jlist(i).points(3,:))./2;
end

end