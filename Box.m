function [y] = Box(a,n,N)
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
    error_message_badband = 'n is selected out of band you should select in a+1<n<N-a';
    if(n >= a & N-a >= n)
        for x=0:N-1
            if(x >= n-a-1 & x <= n+a-1)
                z=[z 1];
            else
                z=[z 0];
            end
        end
        y=z;
    else
        if(N>n)
            error(error_message);
        end
        if(n <= a & N-a <= n)
            error(error_message_badband);
        end
        y=[];
    end
end