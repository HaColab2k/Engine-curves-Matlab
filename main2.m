function varargout = main2(varargin)
% MAIN2 MATLAB code for main2.fig
%      MAIN2, by itself, creates a new MAIN2 or raises the existing
%      singleton*.
%
%      H = MAIN2 returns the handle to a new MAIN2 or the handle to
%      the existing singleton*.
%
%      MAIN2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN2.M with the given input arguments.
%
%      MAIN2('Property','Value',...) creates a new MAIN2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main2

% Last Modified by GUIDE v2.5 18-Dec-2022 13:37:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main2_OpeningFcn, ...
                   'gui_OutputFcn',  @main2_OutputFcn, ...
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


% --- Executes just before main2 is made visible.
function main2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main2 (see VARARGIN)

% Choose default command line output for main2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in CALCULATE.
function CALCULATE_Callback(hObject, eventdata, handles)
% hObject    handle to CALCULATE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%------------Engine characteristics-------------
global nv gamar ta kqknm e tk dentat pa pk lamda1 lamda2 lamdat pr tr anpha ez eb phid pi D
global pc tc tz pmr m1 to po pmi pmr pme m2 ni ne gi ge stroke Nep sd n S w i vh vc va lamda n2 n1
 
%indicated mean pressure
pii1 = pc/(e-1);
pii2 = lamda/(n2-1);
pii3 = 1-(1/(e^(n2-1)));
pii4 = 1/(n1-1);
pii5 = 1-(1/e^(n1-1));
pii6 = pii2*pii3;
pii7 = pii4*pii5;
pii8 = pii6-pii7;
pmi = pii1*pii8;
set(handles.edtpmi_test,'string',pmi);

%ap suat chi thi trung binh thuc te
actual_pmi = phid*pmi;
set(handles.edtpmi,'string',actual_pmi);
%ap suat ton that co khi

pmr = (1-0.9)*pmi;
set(handles.edtpmr,'string',pmr);
%ap suat co ich pme
pme = pmi-pmr;
set(handles.edtpme,'string',pme);
%hieu suat chi thi
ni1 = m1*pmi*to;
ni2 = 43960*po*nv;
ni = 8.314*(ni1/ni2);
set(handles.edtni,'string',ni);
%hieu suat co ich
ne1 = m1*pme*to;
ne2 = 43960*nv*po;
ne = 8.314*(ne1/ne2);
set(handles.edtne,'string',ne);
%tinh suat tieu hao nhien lieu gi
gi = 3600/(43960*ni);
set(handles.edtgi,'string',gi);
%tinh suat tieu hao nhien lieu
ge = 3600/(43960*ne);
set(handles.edtge,'string',ge);
nm = ne/ni;
set(handles.edtnm,'string',nm);
%tinh the tich 1 xylanh
vh1 = 30*stroke*Nep;
vh2 = pme*n*i;
vh = vh1/vh2;
% vh =0.539731;
set(handles.edtvh,'string',vh);
%the tich buong chay
vc = vh/(e-1);
set(handles.edtvc,'string',vc);
%the tich toan bo
va = vh+vc;
set(handles.edtva,'string',va);
%duong kinh piston
pi = 3.14159;
D = ((4*vh)/(pi*sd))^(1/3);
set(handles.edtd,'string',D);
%hanh trinh piston
S = sd*D;
set(handles.edts,'string',S);
%%van toc truc khuyu
w = (pi*n)/30;
set(handles.edtomg,'string',w);
%toc do trung binh pit ton
vtb = (2/pi)*(S/2)*w;
set(handles.edtvtb,'string',vtb);
%cong suat chi thi
power = (pi*vh*i*n)/(30*stroke);
set(handles.edtpower,'string',power);
%mo men co ich
brakeTorque = nm*(30*power)/(pi*n*phid);
set(handles.edtbraketorque,'string',brakeTorque);


% --- Executes on button press in btnback1.
function btnback1_Callback(hObject, eventdata, handles)
% hObject    handle to btnback1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main2
run main1



function edtpmi_test_Callback(hObject, eventdata, handles)
% hObject    handle to edtpmi_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpmi_test as text
%        str2double(get(hObject,'String')) returns contents of edtpmi_test as a double


% --- Executes during object creation, after setting all properties.
function edtpmi_test_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpmi_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpmi_Callback(hObject, eventdata, handles)
% hObject    handle to edtpmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpmi as text
%        str2double(get(hObject,'String')) returns contents of edtpmi as a double


% --- Executes during object creation, after setting all properties.
function edtpmi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpme_Callback(hObject, eventdata, handles)
% hObject    handle to edtpme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpme as text
%        str2double(get(hObject,'String')) returns contents of edtpme as a double


% --- Executes during object creation, after setting all properties.
function edtpme_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpme (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtni_Callback(hObject, eventdata, handles)
% hObject    handle to edtni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtni as text
%        str2double(get(hObject,'String')) returns contents of edtni as a double


% --- Executes during object creation, after setting all properties.
function edtni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtne_Callback(hObject, eventdata, handles)
% hObject    handle to edtne (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtne as text
%        str2double(get(hObject,'String')) returns contents of edtne as a double


% --- Executes during object creation, after setting all properties.
function edtne_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtne (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtnm_Callback(hObject, eventdata, handles)
% hObject    handle to edtnm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtnm as text
%        str2double(get(hObject,'String')) returns contents of edtnm as a double


% --- Executes during object creation, after setting all properties.
function edtnm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtnm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtgi_Callback(hObject, eventdata, handles)
% hObject    handle to edtgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtgi as text
%        str2double(get(hObject,'String')) returns contents of edtgi as a double


% --- Executes during object creation, after setting all properties.
function edtgi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtgi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtge_Callback(hObject, eventdata, handles)
% hObject    handle to edtge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtge as text
%        str2double(get(hObject,'String')) returns contents of edtge as a double


% --- Executes during object creation, after setting all properties.
function edtge_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtvh_Callback(hObject, eventdata, handles)
% hObject    handle to edtvh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtvh as text
%        str2double(get(hObject,'String')) returns contents of edtvh as a double


% --- Executes during object creation, after setting all properties.
function edtvh_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtvh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtvc_Callback(hObject, eventdata, handles)
% hObject    handle to edtvc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtvc as text
%        str2double(get(hObject,'String')) returns contents of edtvc as a double


% --- Executes during object creation, after setting all properties.
function edtvc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtvc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtva_Callback(hObject, eventdata, handles)
% hObject    handle to edtva (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtva as text
%        str2double(get(hObject,'String')) returns contents of edtva as a double


% --- Executes during object creation, after setting all properties.
function edtva_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtva (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtd_Callback(hObject, eventdata, handles)
% hObject    handle to edtd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtd as text
%        str2double(get(hObject,'String')) returns contents of edtd as a double


% --- Executes during object creation, after setting all properties.
function edtd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edts_Callback(hObject, eventdata, handles)
% hObject    handle to edts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edts as text
%        str2double(get(hObject,'String')) returns contents of edts as a double


% --- Executes during object creation, after setting all properties.
function edts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtomg_Callback(hObject, eventdata, handles)
% hObject    handle to edtomg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtomg as text
%        str2double(get(hObject,'String')) returns contents of edtomg as a double


% --- Executes during object creation, after setting all properties.
function edtomg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtomg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtvtb_Callback(hObject, eventdata, handles)
% hObject    handle to edtvtb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtvtb as text
%        str2double(get(hObject,'String')) returns contents of edtvtb as a double


% --- Executes during object creation, after setting all properties.
function edtvtb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtvtb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpower_Callback(hObject, eventdata, handles)
% hObject    handle to edtpower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpower as text
%        str2double(get(hObject,'String')) returns contents of edtpower as a double


% --- Executes during object creation, after setting all properties.
function edtpower_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpower (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtbraketorque_Callback(hObject, eventdata, handles)
% hObject    handle to edtbraketorque (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtbraketorque as text
%        str2double(get(hObject,'String')) returns contents of edtbraketorque as a double


% --- Executes during object creation, after setting all properties.
function edtbraketorque_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtbraketorque (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpmr_Callback(hObject, eventdata, handles)
% hObject    handle to edtpmr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpmr as text
%        str2double(get(hObject,'String')) returns contents of edtpmr as a double


% --- Executes during object creation, after setting all properties.
function edtpmr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpmr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in changeSlide3.
function changeSlide3_Callback(hObject, eventdata, handles)
% hObject    handle to changeSlide3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main2
run main3
