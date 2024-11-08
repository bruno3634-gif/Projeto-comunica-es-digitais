clear all;
close all;
clc;

n_bits = 8;
Fs = 44100;
nChanels = 1;
duration = 5;
v_ref = 1.65;

recObj = audiorecorder(Fs,n_bits,nChanels);
fprintf("\nStart recording")
recordblocking(recObj,duration);
fprintf("\nEnd recording")
audio_data = getaudiodata(recObj,"int8");
plot_x = (0:length(audio_data)-1) / Fs;
plot_x = plot_x';


plot(plot_x,audio_data);
title("Recorded audio")
ylabel("Audio amplitude")
xlabel("S")

binaryaudio = reshape(dec2bin(audio_data,8).' - '0', [], 1);

figure
plot(binaryaudio);





   





