function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 18-Dec-2022 14:24:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
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


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in changeSlide1.
function changeSlide1_Callback(hObject, eventdata, handles)
% hObject    handle to changeSlide1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%-----------------------------------------------------------------
%Declare variables
global nv gamar ta kqknm e tk dentat pa pk lamda1 lamda2 lamdat pr tr anpha ez eb phid phis phi1 phi2 phi3 phi4
global pc tc tz po to stroke Nep sd n i lamda 

e = str2num(get(handles.edte,'string'));
Nep = str2num(get(handles.edtnep,'string'));
tk = str2num(get(handles.edtto,'string'));
dentat = str2num(get(handles.edtdentat,'string'));
pa = str2num(get(handles.edtpa,'string'));

phid = str2num(get(handles.edtphid,'string'));
phis = str2num(get(handles.edtphis,'string'));
phi1 = str2num(get(handles.edtphi1,'string'));
phi2 = str2num(get(handles.edtphi2,'string'));
phi3 = str2num(get(handles.edtphi3,'string'));
phi4 = str2num(get(handles.edtphi4,'string'));


sd = str2num(get(handles.edtsd,'string'));
stroke = str2num(get(handles.edtstroke,'string'));
to = str2num(get(handles.edtto,'string'));
po = str2num(get(handles.edtpo,'string'));
n = str2num(get(handles.edtn,'string'));
i = str2num(get(handles.edti,'string'));
pk = str2num(get(handles.edtpo,'string'));
lamda1 = str2num(get(handles.edtlamda1,'string'));
lamda2 = str2num(get(handles.edtlamda2,'string'));
lamdat = str2num(get(handles.edtlamdat,'string'));
lamda =str2num(get(handles.edtlamda,'string'));
pr = str2num(get(handles.edtpr,'string'));
tr = str2num(get(handles.edttr,'string'));
anpha = str2num(get(handles.edtanpha,'string'));
eb = str2num(get(handles.edteb,'string'));
ez = str2num(get(handles.edtez,'string'));


%change slide
close main
run main1



function edtn_Callback(hObject, eventdata, handles)
% hObject    handle to edtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtn as text
%        str2double(get(hObject,'String')) returns contents of edtn as a double


% --- Executes during object creation, after setting all properties.
function edtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edte_Callback(hObject, eventdata, handles)
% hObject    handle to edte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edte as text
%        str2double(get(hObject,'String')) returns contents of edte as a double


% --- Executes during object creation, after setting all properties.
function edte_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edte (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtnep_Callback(hObject, eventdata, handles)
% hObject    handle to edtnep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtnep as text
%        str2double(get(hObject,'String')) returns contents of edtnep as a double


% --- Executes during object creation, after setting all properties.
function edtnep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtnep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edti_Callback(hObject, eventdata, handles)
% hObject    handle to edti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edti as text
%        str2double(get(hObject,'String')) returns contents of edti as a double


% --- Executes during object creation, after setting all properties.
function edti_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edti (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtsd_Callback(hObject, eventdata, handles)
% hObject    handle to edtsd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtsd as text
%        str2double(get(hObject,'String')) returns contents of edtsd as a double


% --- Executes during object creation, after setting all properties.
function edtsd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtsd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtanpha_Callback(hObject, eventdata, handles)
% hObject    handle to edtanpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtanpha as text
%        str2double(get(hObject,'String')) returns contents of edtanpha as a double


% --- Executes during object creation, after setting all properties.
function edtanpha_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtanpha (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtstroke_Callback(hObject, eventdata, handles)
% hObject    handle to edtstroke (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtstroke as text
%        str2double(get(hObject,'String')) returns contents of edtstroke as a double


% --- Executes during object creation, after setting all properties.
function edtstroke_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtstroke (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtphis_Callback(hObject, eventdata, handles)
% hObject    handle to edtphis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtphis as text
%        str2double(get(hObject,'String')) returns contents of edtphis as a double


% --- Executes during object creation, after setting all properties.
function edtphis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtphis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtphi1_Callback(hObject, eventdata, handles)
% hObject    handle to edtphi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtphi1 as text
%        str2double(get(hObject,'String')) returns contents of edtphi1 as a double


% --- Executes during object creation, after setting all properties.
function edtphi1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtphi1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtphi2_Callback(hObject, eventdata, handles)
% hObject    handle to edtphi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtphi2 as text
%        str2double(get(hObject,'String')) returns contents of edtphi2 as a double


% --- Executes during object creation, after setting all properties.
function edtphi2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtphi2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtphi3_Callback(hObject, eventdata, handles)
% hObject    handle to edtphi3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtphi3 as text
%        str2double(get(hObject,'String')) returns contents of edtphi3 as a double


% --- Executes during object creation, after setting all properties.
function edtphi3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtphi3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtphi4_Callback(hObject, eventdata, handles)
% hObject    handle to edtphi4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtphi4 as text
%        str2double(get(hObject,'String')) returns contents of edtphi4 as a double


% --- Executes during object creation, after setting all properties.
function edtphi4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtphi4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edteb_Callback(hObject, eventdata, handles)
% hObject    handle to edteb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edteb as text
%        str2double(get(hObject,'String')) returns contents of edteb as a double


% --- Executes during object creation, after setting all properties.
function edteb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edteb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtez_Callback(hObject, eventdata, handles)
% hObject    handle to edtez (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtez as text
%        str2double(get(hObject,'String')) returns contents of edtez as a double


% --- Executes during object creation, after setting all properties.
function edtez_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtez (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtphid_Callback(hObject, eventdata, handles)
% hObject    handle to edtphid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtphid as text
%        str2double(get(hObject,'String')) returns contents of edtphid as a double


% --- Executes during object creation, after setting all properties.
function edtphid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtphid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtdentat_Callback(hObject, eventdata, handles)
% hObject    handle to edtdentat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtdentat as text
%        str2double(get(hObject,'String')) returns contents of edtdentat as a double


% --- Executes during object creation, after setting all properties.
function edtdentat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtdentat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpo_Callback(hObject, eventdata, handles)
% hObject    handle to edtpo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpo as text
%        str2double(get(hObject,'String')) returns contents of edtpo as a double


% --- Executes during object creation, after setting all properties.
function edtpo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtpa_Callback(hObject, eventdata, handles)
% hObject    handle to edtpa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpa as text
%        str2double(get(hObject,'String')) returns contents of edtpa as a double


% --- Executes during object creation, after setting all properties.
function edtpa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtto_Callback(hObject, eventdata, handles)
% hObject    handle to edtto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtto as text
%        str2double(get(hObject,'String')) returns contents of edtto as a double


% --- Executes during object creation, after setting all properties.
function edtto_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtlamda_Callback(hObject, eventdata, handles)
% hObject    handle to edtlamda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtlamda as text
%        str2double(get(hObject,'String')) returns contents of edtlamda as a double


% --- Executes during object creation, after setting all properties.
function edtlamda_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtlamda (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtlamda1_Callback(hObject, eventdata, handles)
% hObject    handle to edtlamda1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtlamda1 as text
%        str2double(get(hObject,'String')) returns contents of edtlamda1 as a double


% --- Executes during object creation, after setting all properties.
function edtlamda1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtlamda1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtlamda2_Callback(hObject, eventdata, handles)
% hObject    handle to edtlamda2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtlamda2 as text
%        str2double(get(hObject,'String')) returns contents of edtlamda2 as a double


% --- Executes during object creation, after setting all properties.
function edtlamda2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtlamda2 (see GCBO)
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



function edtpr_Callback(hObject, eventdata, handles)
% hObject    handle to edtpr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtpr as text
%        str2double(get(hObject,'String')) returns contents of edtpr as a double


% --- Executes during object creation, after setting all properties.
function edtpr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtpr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edtlamdat_Callback(hObject, eventdata, handles)
% hObject    handle to edtlamdat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edtlamdat as text
%        str2double(get(hObject,'String')) returns contents of edtlamdat as a double


% --- Executes during object creation, after setting all properties.
function edtlamdat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edtlamdat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in engineType.
function engineType_Callback(hObject, eventdata, handles)
% hObject    handle to engineType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns engineType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from engineType


% --- Executes during object creation, after setting all properties.
function engineType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to engineType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit35_Callback(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit35 as text
%        str2double(get(hObject,'String')) returns contents of edit35 as a double


% --- Executes during object creation, after setting all properties.
function edit35_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit35 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
