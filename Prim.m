function Fk=Prim(fk)
    sum_f=0;
    n=size(fk,2);
    for i=1:n
        sum_f=sum_f+fk(i);
    end
    Fk=sum_f;   
end