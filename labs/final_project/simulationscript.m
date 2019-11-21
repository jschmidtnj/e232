[soundIn,freqSamp] = audioread("sound.wav");
% sound(soundIn, freqSamp);
soundOut(:,2) = soundIn;
% sound(soundOut(:,1), freqSamp);
for n = 2:length(soundOut) 
    %create for loop that goes from second value to end 
    soundOut(n,1) = soundOut(n-1,1) +1/freqSamp; %increment each value by the samplingperiod end)
end
% sound(soundOut(:,1), freqSamp);
% plot([0:1:882001], output);
