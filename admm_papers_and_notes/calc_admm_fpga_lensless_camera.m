%---------------------------------------------------
% filename: calc_admm_fpga_lensless_camera
% engineer: rbd
% date: 8/27/22
% descr: Basic calculations on speed for design
% We are planning to run @ 300 Mhz
%---------------------------------------------------
% parameters
iter = 5;           % ADMM algo requires for convergence
num_fft_pairs = 4;
fft_pairs = 2;      % include forward and inverse
dim = 2;
% 512 pt FFT
latency = 7.317e-6;   % From Xilinx 1024 length FFT
rows = 768;         % Camera initial image in Python is 1536x2048
                    % If we decimate by 4 we have 768x1024

time_to_proc = iter*num_fft_pairs*fft_pairs*dim*latency*rows;
freq_to_proc = 1/time_to_proc

debug = 1;