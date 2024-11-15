P=[1 1;0 1;1 1]
N=[0 0;0 1;1 1]
%Inicio
w = rand(1,3)
while((sum(w*P > 0) + sum(w*N < 0))~=4)
    if(rand(1)>=0.5)
        %Tomar x de P
        col = ceil(rand(1)*2);
        if(w*P( : , col )<=0)
            w=w+P(:,col)';
        end
    else
        %Tomar x de N
        col = ceil(rand(1)*2);
        if(w*N(:,col)>=0)
            w=w-N(:,col)';
        end
    end
end
w