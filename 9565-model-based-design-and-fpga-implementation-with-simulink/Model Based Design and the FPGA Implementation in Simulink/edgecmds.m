function tclcmd = edgecmds
% HDLFILTERLINKCMDS - Creates Tcl cmds for Inverter Model
%   The returned cell array can be passed as parameters ('cmd') to
%   VSIMULINK.  This will start ModelSim and compile the HDL.
%   Also, the model will be loaded for cosimulation with 
%   inverter.MDL
%
% See also VSIMULINK


tmpdir = fullfile(pwd, 'hdlsrc');

% TCL for ModelSim
unixprojdir  = strrep(tmpdir,'\','/'); % ModelSim prefers Unix style pathnames
unixprojdir  = strrep(unixprojdir, ' ', '\ '); % backslash spaces
tclcmd = { ['cd ',unixprojdir],...            
           'vlib work',... %create library (if necessary)
           'vcom filter2d_pkg.vhd',...
           'vcom filter2d.vhd',...
           'vsimulink work.filter2d',...
           'add wave -height 100 -radix decimal -format analog-step -scale 0.3 -offset 0 sim:/filter2d/filter_in',...
           'add wave -height 100 -radix decimal -format analog-step -scale 0.3 -offset 0 sim:/filter2d/filter_out',...
           'add wave -height 100 -radix decimal -format analog-step -scale 0.3 -offset 0 sim:/filter2d/CLK',...
           'add wave -height 100 -radix decimal -format analog-step -scale 0.3 -offset 0 sim:/filter2d/reset',...
           'catch { wm geometry $vsimPriv(WaveWindows) 521x600+10+10 }',...
         };

% [EOF]

