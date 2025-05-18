function [h_final, n_comp] = FIRdesign(wl, wu, N)
    alpha = (N-1)/2;   
    n = -alpha:alpha;  
    h = zeros(1, length(n));
    
    for i = 1:length(n)
        if n(i) == 0
            h(i) = (wu - wl) / pi; 
        else
            h(i) = ((sin(wu * n(i)) - sin(wl * n(i))) / (pi * n(i)));
        end
    end
    [h_r, n_r] = reverse(h, n);
    [h_comp, h_r_comp, n_comp] = compsig(h, n, h_r, n_r);
    h_comp = h_comp + h_r_comp;

    % áp dụng cửa sổ
     n = -(N-1)/2 :(N-1)/2
    box = ones(1, length(h_comp));

    hanning = 0.5 + 0.5 * cos(2 * pi * n/(N-1))

    hamming = 0.54 + 0.46 * cos(2 * pi * n/(N-1))
    
    blackman = 0.42 + 0.5 * cos(2 * pi * n/(N-1))

    if n <= 0
    barlett = 1 + 2*n/(N-1)
    else
    barlett = 1 - 2*n/(N-1)
    end

    h_final = h_comp .* barlett;



 end
 