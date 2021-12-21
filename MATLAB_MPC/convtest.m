function Qconv = convtest(u1,u2,u3,u4,u5)

tau = 10;
C = 191400;
U = [u1 u2 u3 u4 u5];
Qconv = zeros(5,1);
index = 1;

for i=4:-1:1
    if U(i+1)>= U(i)
        index = i+1
        break
    end
end

if i == 1            % if the loop finishes without finding inversion
    Qconv= zeros(5,1);   % no convection flux
    return 
else
    Tmean = sum(U(1:index))/index
    for j= 5:-1:1
        if j>i
            Qconv(j)=0;
        else
            Qconv(j) = (Tmean - U(j))*C/tau;
        end
    end
end