function varargout = main5(varargin)
% MAIN5 MATLAB code for main5.fig
%      MAIN5, by itself, creates a new MAIN5 or raises the existing
%      singleton*.
%
%      H = MAIN5 returns the handle to a new MAIN5 or the handle to
%      the existing singleton*.
%
%      MAIN5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN5.M with the given input arguments.
%
%      MAIN5('Property','Value',...) creates a new MAIN5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main5

% Last Modified by GUIDE v2.5 19-Dec-2022 20:31:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main5_OpeningFcn, ...
                   'gui_OutputFcn',  @main5_OutputFcn, ...
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


% --- Executes just before main5 is made visible.
function main5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main5 (see VARARGIN)

% Choose default command line output for main5
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main5_OutputFcn(hObject, eventdata, handles) 
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
global x1 x2 x4 a0 n pi sd lamda R
% do thi chuyen vi piston
x0 = [x1 x2 x4];
% axes(handles.pistonDisplacement);
% cla;
plot(handles.pistonDisplacement,a0,x0,'b','linewidth',1);
xlabel(handles.pistonDisplacement,'Crankshaft angle(degree)');
ylabel(handles.pistonDisplacement,'Piston displacement x(dm)');
title(handles.pistonDisplacement,'GRAPH OF PISTON DISPLACEMENT');
grid on;
% do thi van toc piston
V = R*(n*pi/30).*(sind(a0) + ((sd/lamda)/2).*sind(2*a0));
% axes(handles.pistonSpeed);
% cla;
plot(handles.pistonSpeed,a0,V,'b','linewidth',1);
xlabel(handles.pistonSpeed,'Crankshaft angle(degree)');
ylabel(handles.pistonSpeed,'piston speed v(dm/s)');
title(handles.pistonSpeed,'GRAPH OF PISTON SPEED');
grid on;
% Graph of piston acceleration 
j = (R*(n*pi/30)^2).*(cosd(a0) + (sd/lamda).*cosd(2*a0)); %omg = n*pi/20
plot(handles.pistonAcceleration,a0,j,'b','linewidth',1);
xlabel(handles.pistonAcceleration,'Crankshaft angle(degree)');
ylabel(handles.pistonAcceleration,'Piston acceleration j(dm/s2)');
grid on;
title(handles.pistonAcceleration,'GRAPH OF PISTON ACCELERATION');
% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main5
run main4

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main 5
