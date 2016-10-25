function [y] = Sinfn(f,Ts,n)
    if ~exist('f', 'var') ||  isempty(f)
        f = 10;
    end    
    if ~exist('Ts', 'var') ||  isempty(Ts)
        Ts = 100;
    end
    if ~exist('Ts', 'var') ||  isempty(Ts)
        Ts = 0.01;
    end
    if ~exist('N', 'var') ||  isempty(N)
        n = 1;
    end
    z=[];
    error_message = 'Nyquist rule was not met. define your sampling to meet Ts>=10*(1/f) ';
    if(Ts >= 10*(1/f))
        x=0:1/Ts:1/f;
        z=sin(2*pi*f*n*x);
        y=z;
    else
        error(error_message);
        y=[];
    end
end