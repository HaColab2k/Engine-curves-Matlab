function varargout = main3(varargin)
% MAIN3 MATLAB code for main3.fig
%      MAIN3, by itself, creates a new MAIN3 or raises the existing
%      singleton*.
%
%      H = MAIN3 returns the handle to a new MAIN3 or the handle to
%      the existing singleton*.
%
%      MAIN3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN3.M with the given input arguments.
%
%      MAIN3('Property','Value',...) creates a new MAIN3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to main3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main3

% Last Modified by GUIDE v2.5 18-Dec-2022 15:10:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main3_OpeningFcn, ...
                   'gui_OutputFcn',  @main3_OutputFcn, ...
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


% --- Executes just before main3 is made visible.
function main3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main3 (see VARARGIN)

% Choose default command line output for main3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main3_OutputFcn(hObject, eventdata, handles) 
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
global phid phis phi1 phi2 phi3 phi4 
global n e Nep i stroke anpha gamar beta dentat D
global eb ez 
global lamda lamdat lamda1 lamda2 
global pa po pr pz pb pme pmi pmr pc 
global ta to tr tz tb n2 kntr 
global n1 n2 ni ne  nv m1 
global vc vh va w S pi pz Area_piston a0 R
global x1 x2 x4 
R = S/2;
Area_piston = ((D/2).^2).*pi;
vz = vc; % for gasoline engine
%IVO r-> r'
ahc1=[0 phi4/2 phi4];
phc1=[pr (pr+pa)/2 pa];
a1=linspace(0,phi4,phi4+1);
x1=R.*(1-cosd(a1)+(1-cosd(2.*a1))./14);
v1=x1.*Area_piston+vc;
p1=interp1(ahc1,phc1,a1,'spline');
hold on;
plot(v1,p1);
%---------------------------------------------------------------
%doan2 goc danh lua som den dong xupap nap r'->a
noisuy1=a1(1,phi4+1);
ahc2=[noisuy1 180];
phc2=[pa pa];
a2=linspace(noisuy1,180,180-noisuy1+1);
x2=R.*(1-cosd(a2)+(1-cosd(2.*a2))./14);
v2=x2.*Area_piston+vc;
p2=interp1(ahc2,phc2,a2);
%plot(v2,p2);
%---------------------------------------------------------------
%doan3 180 den diem c': duong nen
a4=linspace(180,(360-phis),(360-phis)-180+1);
x4=R.*(1-cosd(a4)+(1-cosd(2.*a4))./14);
v4=x4.*Area_piston+ vc;
p4 = pa.*((va./v4).^ n1);
%plot(v4,p4);
%---------------------------------------------------------------
%doan 5 c'-c
a5=linspace((360-phis),360,360-(360-phis)+1);
x5=R.*(1-cosd(a5)+(1-cosd(2.*a5))./14);
v5=x5.*Area_piston+ vc;
p5 = pa.*((va./v5).^ n1);
%plot(v5,p5);
%---------------------------------------------------------------
%tim diem c''
x52=R.*(1-cosd(360)+(1-cosd(2.*360))./14);
v52=x52.*Area_piston+ vc;
p52 = pa.*((va./v52).^ n1);
pzphay=0.85*pz;
pc2phay=(pzphay-p52+(3*p52))/3;

%---------------------------------------------------------------
x41=R.*(1-cosd(180)+(1-cosd(2.*180))./14);
v41=x41.*Area_piston+ vc;
p41=pa.*((va./v41).^ n1);
%---------------------------------------------------------------
x42=R.*(1-cosd((360-phis))+(1-cosd(2.*(360-phis)))./14);
v42=x42.*Area_piston+ vc;
p42=pa.*((va./v42).^ n1);
%---------------------------------------------------------------
pchia=linspace(p41,p42,(360-phis)-245+1);%chia nhieu doan p
gocchia=linspace(180,360-phis,(360-phis)-180+1);
goc180=gocchia(1,1); %goc 180
gocphis=gocchia(1,(360-phis)-180+1); %goc 360-phis
pcphay=pchia(1,(360-phis)-245+1); %diem pc'
%---------------------------------------------------------------
%%%%doan c'-c"
ahc6=[gocphis (gocphis+gocphis+360)/3 (gocphis+360+360)/3 360];
phc6=[pcphay, (pcphay+pcphay+pc2phay)/3, (pcphay+pc2phay+pc2phay)/3, pc2phay];
a6=linspace(gocphis,360,(360-gocphis+1));
x6=R.*(1-cosd(a6)+(1-cosd(2.*a6))./14);
v6=x6.*Area_piston+vc;
p6=interp1(ahc6,phc6,a6,'spline');
%plot(v6,p6);
%---------------------------------------------------------------
%doan c''-diem dau gian no
a7=[360 360];
x7=R.*(1-cosd(a7)+(1-cosd(2.*a7))./14);
v7=x7.*Area_piston+vc;
p7=[pc2phay pzphay];
%plot(v7,p7);
%---------------------------------------------------------------
%duong gian no
a8=linspace(370,540-phi3,(540-phi3)-370+1);
x8=R.*(1-cosd(a8)+(1-cosd(2.*a8))./14);
v8=x8.*Area_piston+vc;
p8=pz.*((vz./v8).^n2);
%plot(v8,p8);
%---------------------------------------------------------------
%duong dinh pz
x81=R.*(1-cosd(370)+(1-cosd(2.*370))./14);
v81=x81.*Area_piston+vc;
p81=pz.*((vz./v81).^n2);
%---------------------------------------------------------------
ahc10=[360 365 370];
phc10=[pzphay pz p81];
a10=linspace(360,370,11);
x10=R.*(1-cosd(a10)+(1-cosd(2.*a10))./14);
v10=x10.*Area_piston+vc;
p10=interp1(ahc10,phc10,a10,'spline');
%plot(v10,p10);
%---------------------------------------------------------------
%duong ve pr
a11=linspace(590,720,161);
x11=R.*(1-cosd(a11)+(1-cosd(2.*a11))./14);
v11=x11.*Area_piston+vc;
p11=linspace(pr,pr,161);
%plot(v11,p11);
%---------------------------------------------------------------
x82=R.*(1-cosd(540-phi3)+(1-cosd(2.*(540-phi3)))./14);
v82=x82.*Area_piston+vc;
p82=pz.*((vz./v82).^n2);
p88=linspace(p81,p82,((540-phi3)-380)+1);
noisuy8 = p88(1,(540-phi3)-380+1);
%---------------------------------------------------------------
ahc9=[540-phi3 (590+(540-phi3))/2 590];
phc9=[noisuy8 (noisuy8+pr)/2 pr];
a9=linspace(540-phi3,590,590-(540-phi3)+1);
x9=R.*(1-cosd(a9)+(1-cosd(2.*a9))./14);
v9=x9.*Area_piston+vc;
p9=interp1(ahc9,phc9,a9,'spline');
%plot(v9,p9);
%---------------------------------------------------------------
a=[a1 a2 a4 a6 a7 a10 a8 a9 a11];
v=[v1 v2 v4 v6 v7 v10 v8 v9 v11];
p=[p1 p2 p4 p6 p7 p10 p8 p9 p11];
a0=[a1 a2 a4];
axes(handles.axpv);
cla;
plot(handles.axpv,v,p,'b','linewidth',1);
xlabel(handles.axpv,'Cylinder volume V(dm3)')
ylabel(handles.axpv,'Pressure(MN/m2)');
title(handles.axpv,'INDICATED WORK P-V DIAGRAM');
grid on;
hold off;

% do thi Pkt Pj P1
global sd a P1
a=[a1 a2 a4 a6 a7 a10 a8 a9 a11];
v=[v1 v2 v4 v6 v7 v10 v8 v9 v11];
p=[p1 p2 p4 p6 p7 p10 p8 p9 p11];
a0=[a1 a2 a4];
Pkt = p;
hold on;
Pj = ((-23.5*10^(-5))*(R*10^(-1))*(w^2)).*(cosd(a) + ((sd/lamda).*cosd(2.*a))); 
%R doi tu dm qua m
P1 = Pkt + Pj;
axes(handles.axpkt);
cla;
plot(handles.axpkt,a,Pkt,'b',a,Pj,'g',a,P1,'r','linewidth',1);
xlabel(handles.axpkt,'Crankshaft angle alpha(degree)');
ylabel(handles.axpkt,'Pkt, Pj, P1 (MN/m2)');
title(handles.axpkt,'GAS PRESSURE FORCE Pkt, INERTIA FORCE Pj, TOTAL FORCE P1');
grid on
legend(handles.axpkt,'Pkt','Pj','P1');
hold off;



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


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
close main3
run main2

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close main3
run main4
