P=[0 0 1 1;0 1 0 1;0 0 0 0;1 1 1 1]
N=[0 0 1 1;0 1 0 1;1 1 1 1;0 0 0 0]
%Inicio
w = rand(1,4)
while((sum(w*P > 0) + sum(w*N < 0))~=8)
    if(rand(1)>=0.5)
        %Tomar x de P
        col = ceil(rand(1)*4);
        if(w*P( : , col )<=0)
            w=w+P(:,col)';
        end
    else
        %Tomar x de N
        col = ceil(rand(1)*4);
        if(w*N(:,col)>=0)
            w=w-N(:,col)';
        end
    end
end
w