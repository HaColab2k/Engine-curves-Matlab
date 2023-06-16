function varargout = main4(varargin)
% MAIN4 MATLAB code for main4.fig
%      MAIN4, by itself, creates a new MAIN4 or raises the existing
%      singleton*.
%
%      H = MAIN4 returns the handle to a new MAIN4 or the handle to
%      the existing singleton*.
%
%      MAIN4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN4.M with the given input arguments.
%
%      MAIN4('Property','Value',...) creates a new MAIN4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main4

% Last Modified by GUIDE v2.5 19-Dec-2022 20:31:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main4_OpeningFcn, ...
                   'gui_OutputFcn',  @main4_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main4 is made visible.
function main4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main4 (see VARARGIN)

% Choose default command line output for main4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%----------------------------------------------------------------
% do thi luc ngang N
global sd lamda a P1 Area_piston 
hold on
gocbeta = asind((sd/lamda).*sind(a));
N=P1.*(Area_piston/100).*tand(gocbeta); % doi don vi tu dm2 qua m2
axes(handles.normalForce);
cla;
plot(handles.normalForce,a,N,'b','linewidth',1);
xlabel(handles.normalForce,'Crankshaft angle(degree)');
grid on;
ylabel(handles.normalForce,'N(MN)');
title(handles.normalForce,'NORMAL FORCE ACTING ON THE CYLINDER WALL (N)');
hold off
%-----------------------------------------------------------------
% do thi luc tiep tuyen T tangentialForce
hold on
T=P1.*(Area_piston/100).*sind(a+gocbeta)./cosd(gocbeta);
axes(handles.tangentialForce);
cla;
plot(handles.tangentialForce,a,T,'b','linewidth',1);
xlabel(handles.tangentialForce,'Crankshaft angle(degree)');
ylabel(handles.tangentialForce,'T(MN)');
title(handles.tangentialForce,'TANGENTIAL FORCE ACTING ON THE CRANKSHAFT (T)');
grid on;
hold off
% do thi luc phap tuyen Z
hold on
Z=P1.*(Area_piston/100).*cosd(a+gocbeta)./cosd(gocbeta);
axes(handles.normalForce_Z);
cla;
plot(handles.normalForce_Z,a,Z,'b','linewidth',1);
grid on;
xlabel(handles.normalForce_Z,'Crankshaft angle(degree)');
ylabel(handles.normalForce_Z,'Z(MN)');
title(handles.normalForce_Z,'NORMAL FORCE Z');
hold off
% do thi vecto phu tai tac dung len chot khuyu
axes(handles.spLoadForce);
cla;
hold on
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
plot(handles.spLoadForce,T,-Z,'b','linewidth',1);
grid on;
xlabel(handles.spLoadForce,'Tangential force T(MN)');
ylabel(handles.spLoadForce,'Normal force Z(MN)');
title(handles.spLoadForce,'GRAPH OF SUPPORTING- LOAD VECTOR ON CRANKPIN');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main4
run main3

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main4
run main5
