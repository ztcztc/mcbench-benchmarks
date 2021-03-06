clear all; close all;
h_profile_1     = uicontrol('Style', 'text','Position', [50  330 120 10],'BackgroundColor',[0 0 0]);
h_profile_2     = uicontrol('Style', 'text','Position', [170 190 10 150],'BackgroundColor',[0 0 0]);
h_profile_3     = uicontrol('Style', 'text','Position', [170 190 120 10],'BackgroundColor',[0 0 0]);
h_profile_4     = uicontrol('Style', 'text','Position', [290 190 10 150],'BackgroundColor',[0 0 0]);
h_profile_5     = uicontrol('Style', 'text','Position', [290  330 120 10],'BackgroundColor',[0 0 0]);
h_pg0_title     = uicontrol('Style', 'pushbutton','Position', [50  380 20 20],'String','PG','callback','set(h_comment,''String'',''PG = Pressure Group [A-L] e.g. F'');');
h_pg0           = uicontrol('Style', 'edit','Position', [50  350 20 20],'String','');
h_si_title      = uicontrol('Style', 'pushbutton','Position', [80  380 60 20],'String','SI ','callback','set(h_comment,''String'',''SI = Surface Interval [HHMM] e.g. 120 (1 hour 20 min)'');');
h_si            = uicontrol('Style', 'edit','Position', [80  350 60 20],'String','0000');
h_pg1_title     = uicontrol('Style', 'text','Position', [150 380 20 20],'String','PG');
h_pg1           = uicontrol('Style', 'text','Position', [150 350 20 20],'String','');
h_depth_title   = uicontrol('Style', 'text','Position', [120  230 40 20],'String','Depth');
h_depth         = uicontrol('Style', 'edit','Position', [120  200 40 20]);
h_time_title    = uicontrol('Style', 'text','Position', [210 160 60 20],'String','Botom Time');
h_time          = uicontrol('Style', 'edit','Position', [210 130 60 20]);
h_rnt_title     = uicontrol('Style', 'pushbutton','Position', [340 280 30 20],'String','RNT','callback','set(h_comment,''String'',''RNT = Residual Nitrogen Time'');');
h_rnt           = uicontrol('Style', 'text','Position', [380 280 30 20],'String','');
h_abt_title     = uicontrol('Style', 'pushbutton','Position', [340 250 30 20],'String','ABT','callback','set(h_comment,''String'',''ABT = Actual Bottom Time'');');
h_abt           = uicontrol('Style', 'text','Position', [380 250 30 20],'String','');
h_tbt_title     = uicontrol('Style', 'pushbutton','Position', [340 220 30 20],'String','TBT','callback','set(h_comment,''String'',''TBT = Total Bottom Time'');');
h_tbt           = uicontrol('Style', 'text','Position', [380 220 30 20],'String','');
h_pg2_title     = uicontrol('Style', 'text','Position', [340 380 20 20],'String','PG');
h_pg2           = uicontrol('Style', 'text','Position', [340 350 20 20],'String','');
h_comment_title = uicontrol('Style', 'text','Position', [290 80 260 20],'String','Comment');
h_comment       = uicontrol('Style', 'text','Position', [290 30 260 40],'String','');
h_boton1        = uicontrol('Style', 'pushbutton','Position', [50 50 60 30],'String','Calculate','callback','calculate');
h_boton2        = uicontrol('Style', 'pushbutton','Position', [120 50 60 30],'string','Clear','callback','diveprofile');