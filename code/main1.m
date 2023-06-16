function varargout = main1(varargin)
% MAIN1 MATLAB code for main1.fig
%      MAIN1, by itself, creates a new MAIN1 or raises the existing
%      singleton*.
%
%      H = MAIN1 returns the handle to a new MAIN1 or the handle to
%      the existing singleton*.
%
%      MAIN1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN1.M with the given input arguments.
%
%      MAIN1('Property','Value',...) creates a new MAIN1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main1

% Last Modified by GUIDE v2.5 18-Dec-2022 14:05:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main1_OpeningFcn, ...
                   'gui_OutputFcn',  @main1_OutputFcn, ...
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


% --- Executes just before main1 is made visible.
function main1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main1 (see VARARGIN)

% Choose default command line output for main1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edtnv_Callback(hObject, eventdata, handles)
% hObject    handle to edtnv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtnv as text
%        str2double(get(hObject,'String')) returns contents of edtnv as a double


% --- Executes during object creation, after setting all properties.
function edtnv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtnv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtgamar_Callback(hObject, eventdata, handles)
% hObject    handle to edtgamar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtgamar as text
%        str2double(get(hObject,'String')) returns contents of edtgamar as a double


% --- Executes during object creation, after setting all properties.
function edtgamar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtgamar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtta_Callback(hObject, eventdata, handles)
% hObject    handle to edtta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtta as text
%        str2double(get(hObject,'String')) returns contents of edtta as a double


% --- Executes during object creation, after setting all properties.
function edtta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtn1_Callback(hObject, eventdata, handles)
% hObject    handle to edtn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtn1 as text
%        str2double(get(hObject,'String')) returns contents of edtn1 as a double


% --- Executes during object creation, after setting all properties.
function edtn1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpc_Callback(hObject, eventdata, handles)
% hObject    handle to edtpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpc as text
%        str2double(get(hObject,'String')) returns contents of edtpc as a double


% --- Executes during object creation, after setting all properties.
function edtpc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edttc_Callback(hObject, eventdata, handles)
% hObject    handle to edttc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edttc as text
%        str2double(get(hObject,'String')) returns contents of edttc as a double


% --- Executes during object creation, after setting all properties.
function edttc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edttc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtn2_Callback(hObject, eventdata, handles)
% hObject    handle to edtn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtn2 as text
%        str2double(get(hObject,'String')) returns contents of edtn2 as a double


% --- Executes during object creation, after setting all properties.
function edtn2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edttb_Callback(hObject, eventdata, handles)
% hObject    handle to edttb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edttb as text
%        str2double(get(hObject,'String')) returns contents of edttb as a double


% --- Executes during object creation, after setting all properties.
function edttb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edttb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpb_Callback(hObject, eventdata, handles)
% hObject    handle to edtpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpb as text
%        str2double(get(hObject,'String')) returns contents of edtpb as a double


% --- Executes during object creation, after setting all properties.
function edtpb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edttr_Callback(hObject, eventdata, handles)
% hObject    handle to edttr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edttr as text
%        str2double(get(hObject,'String')) returns contents of edttr as a double


% --- Executes during object creation, after setting all properties.
function edttr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edttr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edterror_Callback(hObject, eventdata, handles)
% hObject    handle to edterror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edterror as text
%        str2double(get(hObject,'String')) returns contents of edterror as a double


% --- Executes during object creation, after setting all properties.
function edterror_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edterror (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtm1_Callback(hObject, eventdata, handles)
% hObject    handle to edtm1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtm1 as text
%        str2double(get(hObject,'String')) returns contents of edtm1 as a double


% --- Executes during object creation, after setting all properties.
function edtm1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtm1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtm2_Callback(hObject, eventdata, handles)
% hObject    handle to edtm2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtm2 as text
%        str2double(get(hObject,'String')) returns contents of edtm2 as a double


% --- Executes during object creation, after setting all properties.
function edtm2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtm2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtbo_Callback(hObject, eventdata, handles)
% hObject    handle to edtbo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtbo as text
%        str2double(get(hObject,'String')) returns contents of edtbo as a double


% --- Executes during object creation, after setting all properties.
function edtbo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtbo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtb_Callback(hObject, eventdata, handles)
% hObject    handle to edtb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtb as text
%        str2double(get(hObject,'String')) returns contents of edtb as a double


% --- Executes during object creation, after setting all properties.
function edtb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtbz_Callback(hObject, eventdata, handles)
% hObject    handle to edtbz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtbz as text
%        str2double(get(hObject,'String')) returns contents of edtbz as a double


% --- Executes during object creation, after setting all properties.
function edtbz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtbz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtdentaqh_Callback(hObject, eventdata, handles)
% hObject    handle to edtdentaqh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtdentaqh as text
%        str2double(get(hObject,'String')) returns contents of edtdentaqh as a double


% --- Executes during object creation, after setting all properties.
function edtdentaqh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtdentaqh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edttz_Callback(hObject, eventdata, handles)
% hObject    handle to edttz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edttz as text
%        str2double(get(hObject,'String')) returns contents of edttz as a double


% --- Executes during object creation, after setting all properties.
function edttz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edttz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtmc_vz_Callback(hObject, eventdata, handles)
% hObject    handle to edtmc_vz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtmc_vz as text
%        str2double(get(hObject,'String')) returns contents of edtmc_vz as a double


% --- Executes during object creation, after setting all properties.
function edtmc_vz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtmc_vz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpz_Callback(hObject, eventdata, handles)
% hObject    handle to edtpz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpz as text
%        str2double(get(hObject,'String')) returns contents of edtpz as a double


% --- Executes during object creation, after setting all properties.
function edtpz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnback.
function btnback_Callback(hObject, eventdata, handles)
% hObject    handle to btnback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main1
run main

% --- Executes on button press in btnnext1.
function btnnext1_Callback(hObject, eventdata, handles)
% hObject    handle to btnnext1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 close main1 
 run main2


% --- Executes on button press in cal_intake_compress.
function cal_intake_compress_Callback(hObject, eventdata, handles)
% hObject    handle to cal_intake_compress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-----------------------------------------------------------------
%Calculate some parameters
global nv gamar ta kqknm e tk dentat pa pk lamda1 lamda2 lamdat pr tr anpha ez eb phid
global pc tc tz m1 n2 n1 pz

%-----------------INTAKE PROCESS-----------------
%volumetric efficiency
nv = (1/(e-1))*(tk/(tk+dentat))*(pa/pk)*((e*lamda1)-((lamdat*lamda2)*((pr/pa)^(1/1.5))));
set(handles.edtnv,'string',nv);
%tinh gamar he so khi sot
gamar = ((lamda2*(tk+dentat))/tr)*(pr/pa)*(1/(((e*lamda1)-((lamdat*lamda2)*((pr/pa)^(1/1.5))))));
set(handles.edtgamar,'string',gamar);
%nhiet do cuoi qua trinh nap
ta = ((tk+dentat)+(lamdat*gamar*tr*((pa/pr)^(0.5/1.5))))/(1+gamar);
set(handles.edtta,'string',ta);

%----------------COMPRESSION PROCESS------------------
%tinh ty mol dang nhiet trung binh khi nap moi
a = 19.806;
b = 0.00419;
c = 2;
d = b/c;
kqknm = ['19.806 +' num2str(d),'T'];
% tinh ty mol dang tich trung binh san pham chay

a1 = 17.997+(3.504*anpha);
a2 = (1/2)*(360.34+(252.4*anpha))*(10^(-5));
a3 = [num2str(a2),'T'];
a4 = [num2str(a1)];
a5 = strcat(a4,'+',a3);
%ty nhiet mol dang tich trung binh cua hon hop trong qua trinh nen
gamar = str2num(get(handles.edtgamar,'string'));
mcv = (a+(gamar*a1))/(1+gamar);
mcvt = (d+(gamar*a2))/(1+gamar);
mcvt1 = [num2str(mcvt),'T'];
mcvt2 = [num2str(mcv)];
kqmcv = strcat(mcvt2,'+',mcvt1);
%xac dinh chi so nen da bien trung binh
syms n
%mcv
a = vpasolve((n-1)*(mcv+((0.00419/2)*ta*(e^(n-1)+1)))-8.314);
b = num2str(double(a));
n1=double(a);
set(handles.edtn1,'string',b);
%----------------------------------------
%Pressure at the end of compression process
pc = pa*(e^n1);
pc = num2str(double(pc));
set(handles.edtpc,'string',pc);

%Temperature at the end of compression process
tc = ta*(e^(n1-1));
tc = num2str(double(tc));
set(handles.edttc,'string',tc);

m1=anpha*0.516+(1/114);
set(handles.edtm1,'string',m1);

%--------------COMBUSTION PROCESS--------------
%calculate m1
m1 = anpha*0.516+(1/114);
set(handles.edtm1,'string',m1);

%calculate m2
m2 = (0.855/12)+(0.145/2)+(0.79*anpha*0.516);
set(handles.edtm2,'string',m2);

%calculate bo
bo = m2/m1;
set(handles.edtbo,'string',bo);

%calculate b
b = 1+((bo-1)/(1+gamar));
set(handles.edtb,'string',b);

%calculate bz
bz = 1+(((bo-1)/(1+gamar))*(ez/eb));
set(handles.edtbz,'string',bz);

%calculate dentaqh
dentaqh = 120*(10^3)*(1-anpha)*0.516;
set(handles.edtdentaqh,'string',dentaqh);

%calculate mcv"_vz
a1 = 17.997+(3.504*anpha);
a2 = (1/2)*(360.34+(252.4*anpha))*(10^(-5));
a = 19.806;
b = 0.00419;
c = 2;
d = b/c;
kqknm = ['19.806 +' num2str(d),'T'];

% mvcz
b1 = m2*((ez/eb)+(gamar/bo))*a1;
b2 = m1*(1-(ez/eb))*a;
b3 = m2*((ez/eb)+(gamar/bo))+(m1*(1-(ez/eb)));
kqb = (b1+b2)/b3;
c1 = m2*((ez/eb)+(gamar/bo))*a2;
c2 = m1*(1-(ez/eb))*d;
kqc = (c1+c2)/b3;
numkqb = [num2str(kqb)];
numkqc = [num2str(kqc),'T'];
kqmcvz = strcat(numkqb,'+',numkqc);
set(handles.edtmc_vz,'string',kqmcvz);

%calculate Tz
Qh = 43960;
a1 = 17.997+(3.504*anpha);
a2 = (1/2)*(360.34+(252.4*anpha))*(10^(-5));
mcv = (a+(gamar*a1))/(1+gamar);
mcvt = (d+(gamar*a2))/(1+gamar);
tc = (ta*(e^(n1-1)));
hs(1) = bz*kqc;
hs(2) = bz*kqb;
hs(3) = (-1)*(((ez*(Qh-dentaqh))/(m1*(1+gamar)))+((mcv+(mcvt*tc))*tc));
X = roots(hs);
if X(1) <= 1
set(handles.edttz,'string',X(2));
else
X(1) > 1;
set(handles.edttz,'string',X(1));
end
%tinh pz
bz = 1+(((bo-1)/(1+gamar))*(ez/eb));
tz = str2num(get(handles.edttz,'string'));
ta = str2num(get(handles.edtta,'string'));
tc = (ta*(e^(n1-1)));
pc = pa*(e^n1);
tc = ta*(e^(n1-1));
pz = bz*(tz/tc)*pc;
set(handles.edtpz,'string',pz);

%----------------EXPANSION PROCESS-------------------
%tinh qua trinh gian no n2
syms n
vpa1 = n-1;
vpa2 = (eb-ez)*Qh;
vpa3 = 1+gamar;
vpa4 = tz/(e^(n-1));
vpa5 = tz-vpa4;
vpa6 = tz+vpa4;
vpa7 = mcvt*vpa6;
vpa8 = m1*vpa3*bz*vpa5;
vpa9 = vpa2/vpa8
vpa10 = vpa1*vpa9;
vpa11 = vpa1*mcv;
vpa12 = vpa1*vpa7;
vpa13 = vpa10+vpa11+vpa12;
n2 = double(vpasolve(vpa13-8.314));
n2a = num2str(n2);
set(handles.edtn2,'string',n2a);

%nhiet do cuoi qua trinh gian no
tb = tz/(e^(n2-1));
set(handles.edttb,'string',tb);

%ap suat cuoi qua trinh gian no
pb = pz/(e^n2);
set(handles.edtpb,'string',pb);

%sai sot cho phep
trErr = tb/((pb/pr)^(1/3));
set(handles.edttr,'string',trErr);

%sai so khi sot
testTr = ((trErr-tr)*100)/trErr;
set(handles.edterror,'string',testTr);

% set(handles.t2,'visible','on');
% set(handles.t1,'visible','on');


% --- Executes during object creation, after setting all properties.
function cal_intake_compress_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cal_intake_compress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
