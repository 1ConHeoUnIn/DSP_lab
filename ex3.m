
wl = 0.1 * pi
wu = 0.4* pi  

% There are 4 type of filter
% Basicly, this function create a Banpass filter
% To create a Lowpass filter, make wu = 0
% To create a Highpass filter, use 1 minus Lowpassfilter
% To create a Bandstop filter, use 1 minus Bandpass filter


[h,n] = FIRdesign(wl, wu , 100)
% go to FIRdesign.m to change window type


% sketch h(n)
figure(1)
impz(h,1)

% calculate mag and phase
[h1, w] = freqz(h,1,512)

% mag
bien_do = abs(h1)   % or 1 - abs(h1) to make HPF or BSF


% phase
pha = angle(h1)
pha = wrapTo180(unwrap(pha)) % or 1 - wrapTo180(unwrap(pha)) to make HPF or BSF


%sketch mag
figure(2)
subplot(2,1,1)
plot(w, bien_do)
title('mag')
xlabel('hz')
ylabel('db')

%sketch phase
subplot(2,1,2)
plot(w, pha)
title('phase')
xlabel('hz')







