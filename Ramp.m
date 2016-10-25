function [y] = Ramp(a,n,N)
    if ~exist('a', 'var') ||  isempty(a)
        a = 1;
    end    
    if ~exist('n', 'var') ||  isempty(n)
        n = 0;
    end
    if ~exist('N', 'var') ||  isempty(N)
        N = 20;
    end
    z=[];
    error_message = 'n is out of range. you should select 0<n<N';
    if(n >= 0 & N >= n)
        for x=0:N-1
            if(x >= n-1)
                z=[z a*(x-n+1)];
            else
                z=[z 0];
            end
        end
        y=z;
    else
        error(error_message);
        y=[];
    end
end