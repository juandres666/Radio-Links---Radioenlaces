function varargout = Enlace_Fijo_Movil(varargin)
% ENLACE_FIJO_MOVIL M-file for Enlace_Fijo_Movil.fig
%      ENLACE_FIJO_MOVIL, by itself, creates a new ENLACE_FIJO_MOVIL or raises the existing
%      singleton*.
%
%      H = ENLACE_FIJO_MOVIL returns the handle to a new ENLACE_FIJO_MOVIL or the handle to
%      the existing singleton*.
%
%      ENLACE_FIJO_MOVIL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ENLACE_FIJO_MOVIL.M with the given input arguments.
%
%      ENLACE_FIJO_MOVIL('Property','Value',...) creates a new ENLACE_FIJO_MOVIL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Enlace_Fijo_Movil_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Enlace_Fijo_Movil_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Enlace_Fijo_Movil

% Last Modified by GUIDE v2.5 20-Jul-2009 07:31:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Enlace_Fijo_Movil_OpeningFcn, ...
                   'gui_OutputFcn',  @Enlace_Fijo_Movil_OutputFcn, ...
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


% --- Executes just before Enlace_Fijo_Movil is made visible.
function Enlace_Fijo_Movil_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Enlace_Fijo_Movil (see VARARGIN)

% Choose default command line output for Enlace_Fijo_Movil
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Enlace_Fijo_Movil wait for user response (see UIRESUME)
% uiwait(handles.figure1);


%% --- Outputs from this function are returned to the command line.
function varargout = Enlace_Fijo_Movil_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
global f_x;
global f_y;

global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');

set(handles.Tns,'Value',2);
set(handles.Tew,'Value',2);

%%
function Tlat_g_Callback(hObject, eventdata, handles)
% hObject    handle to Tlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlat_g as text
%        str2double(get(hObject,'String')) returns contents of Tlat_g as a double


% --- Executes during object creation, after setting all properties.
function Tlat_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlon_g_Callback(hObject, eventdata, handles)
% hObject    handle to Tlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlon_g as text
%        str2double(get(hObject,'String')) returns contents of Tlon_g as a double


% --- Executes during object creation, after setting all properties.
function Tlon_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlat_m_Callback(hObject, eventdata, handles)
% hObject    handle to Tlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlat_m as text
%        str2double(get(hObject,'String')) returns contents of Tlat_m as a double


% --- Executes during object creation, after setting all properties.
function Tlat_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlon_m_Callback(hObject, eventdata, handles)
% hObject    handle to Tlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlon_m as text
%        str2double(get(hObject,'String')) returns contents of Tlon_m as a double


% --- Executes during object creation, after setting all properties.
function Tlon_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlat_s_Callback(hObject, eventdata, handles)
% hObject    handle to Tlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlat_s as text
%        str2double(get(hObject,'String')) returns contents of Tlat_s as a double


% --- Executes during object creation, after setting all properties.
function Tlat_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tlon_s_Callback(hObject, eventdata, handles)
% hObject    handle to Tlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tlon_s as text
%        str2double(get(hObject,'String')) returns contents of Tlon_s as a double


% --- Executes during object creation, after setting all properties.
function Tlon_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Tns.
function Tns_Callback(hObject, eventdata, handles)
% hObject    handle to Tns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Tns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Tns


% --- Executes during object creation, after setting all properties.
function Tns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Tew.
function Tew_Callback(hObject, eventdata, handles)
% hObject    handle to Tew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Tew contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Tew


% --- Executes during object creation, after setting all properties.
function Tew_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_h_Callback(hObject, eventdata, handles)
% hObject    handle to f_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_h as text
%        str2double(get(hObject,'String')) returns contents of f_h as a double


% --- Executes during object creation, after setting all properties.
function f_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_P_Callback(hObject, eventdata, handles)
% hObject    handle to f_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_P as text
%        str2double(get(hObject,'String')) returns contents of f_P as a double


% --- Executes during object creation, after setting all properties.
function f_P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_Ga_Callback(hObject, eventdata, handles)
% hObject    handle to f_Ga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_Ga as text
%        str2double(get(hObject,'String')) returns contents of f_Ga as a double


% --- Executes during object creation, after setting all properties.
function f_Ga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_Ga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_ca_Callback(hObject, eventdata, handles)
% hObject    handle to f_ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_ca as text
%        str2double(get(hObject,'String')) returns contents of f_ca as a double


% --- Executes during object creation, after setting all properties.
function f_ca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_cl_Callback(hObject, eventdata, handles)
% hObject    handle to f_cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_cl as text
%        str2double(get(hObject,'String')) returns contents of f_cl as a double


% --- Executes during object creation, after setting all properties.
function f_cl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_Callback(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f as text
%        str2double(get(hObject,'String')) returns contents of f as a double


% --- Executes during object creation, after setting all properties.
function f_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_snstv_Callback(hObject, eventdata, handles)
% hObject    handle to m_snstv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m_snstv as text
%        str2double(get(hObject,'String')) returns contents of m_snstv as a double


% --- Executes during object creation, after setting all properties.
function m_snstv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m_snstv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pr_Callback(hObject, eventdata, handles)
% hObject    handle to Pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pr as text
%        str2double(get(hObject,'String')) returns contents of Pr as a double


% --- Executes during object creation, after setting all properties.
function Pr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Er_Callback(hObject, eventdata, handles)
% hObject    handle to Er (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Er as text
%        str2double(get(hObject,'String')) returns contents of Er as a double


% --- Executes during object creation, after setting all properties.
function Er_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Er (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%% --- Executes on button press in A_cobertura.
function A_cobertura_Callback(hObject, eventdata, handles)
% hObject    handle to A_cobertura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global S03W079;
global S03W080;
global S04W079;
global S04W080;

global f_x;
global f_y;
global f_h;
global f_P;
global f_Ga;
global f_ca;
global f_cl;
global f_cp;

global m_snstv;
global f;
global pol;
global tip_suelo;
global theta_dif;
global d_max;
global d_diff;

if get(handles.Tns,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlat_g,'string'));
m=str2double(get(handles.Tlat_m,'string'));
s=str2double(get(handles.Tlat_s,'string'));
xt=dms2degrees([g m s]);%tx

%Longitud(Y)
if get(handles.Tew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlon_g,'string'));
m=str2double(get(handles.Tlon_m,'string'));
s=str2double(get(handles.Tlon_s,'string'));
yt=dms2degrees([g m s]);%ty

[f_x,f_y,utmzone]=deg2utm(xt,yt);


f_h=str2double(get(handles.f_h,'string'));%f_h=50;%altura antena
f_P=str2double(get(handles.f_P,'string'));% f_P=10*log10(100);%dB
f_Ga=str2double(get(handles.f_Ga,'string'));% f_Ga=15.65;
f_ca=str2double(get(handles.f_ca,'string'));% f_ca=0.1;%F cable atenuacion*m dB/m
f_cl=str2double(get(handles.f_cl,'string'));% f_cl=20;%F cable longitud m

f_cp=f_ca*f_cl;%F cable atenuación dB
m_snstv=str2double(get(handles.m_snstv,'string'));%m_snstv=38.5;%sensitividad dBmW

f=str2double(get(handles.f,'string'));%f=400;%en Mhz
pol=(get(handles.pol,'value'));%pol=1;%polarización 1H  2V
tip_suelo=(get(handles.tip_suelo,'value'));%tip_suelo=4;

theta_dif=str2double(get(handles.theta_dif,'string'));%theta_dif=30;
d_max=str2double(get(handles.d_max,'string'));%d_max=20;%d max de analisis en Km
d_diff=str2double(get(handles.d_diff,'string'));%d_diff=2;%d diferencial en km

A_cobertura;

%% --- Executes on button press in ver_perfil.
function ver_perfil_Callback(hObject, eventdata, handles)
% hObject    handle to ver_perfil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



%% Datos estacion fija

global f_x;
global f_y;
global f_h;
global f_P;
global f_Ga;
global f_ca;
global f_cl;
global f_cp;

global m_snstv;
global f;
global pol;
global tip_suelo;
global theta_dif;
global d_max;
global d_diff;

%TRANSMISOR
%Latitud(X)
if get(handles.Tns,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlat_g,'string'));
m=str2double(get(handles.Tlat_m,'string'));
s=str2double(get(handles.Tlat_s,'string'));
xt=dms2degrees([g m s]);%tx

%Longitud(Y)
if get(handles.Tew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlon_g,'string'));
m=str2double(get(handles.Tlon_m,'string'));
s=str2double(get(handles.Tlon_s,'string'));
yt=dms2degrees([g m s]);%ty
[f_x,f_y,utmzone]=deg2utm(xt,yt);


f_h=str2double(get(handles.f_h,'string'));%f_h=50;%altura antena
f_P=str2double(get(handles.f_P,'string'));% f_P=10*log10(100);%dB
f_Ga=str2double(get(handles.f_Ga,'string'));% f_Ga=15.65;
f_ca=str2double(get(handles.f_ca,'string'));% f_ca=0.1;%F cable atenuacion*m dB/m
f_cl=str2double(get(handles.f_cl,'string'));% f_cl=20;%F cable longitud m

f_cp=f_ca*f_cl;%F cable atenuación dB

clear f_lat;clear f_lon;clear utmzone;
%% Datos estacion movil
m_h=1.5;% Altura de la antena receptora
clear utmzone;

m_P=1;
m_Ga=0;
m_ca=0.1;
m_cl=0;
m_cp=m_ca*m_cl;%Tx cable atenuación dB

m_snstv=str2double(get(handles.m_snstv,'string'));%m_snstv=38.5;%sensitividad dBmW


%% Datos Sistema
f=str2double(get(handles.f,'string'));%f=400;%en Mhz
pol=(get(handles.pol,'value'));%pol=1;%polarización 1H  2V
tip_suelo=(get(handles.tip_suelo,'value'));%tip_suelo=4;

%% Datos
theta_dif=str2double(get(handles.theta_dif,'string'));%theta_dif=30;
theta_dif=theta_dif*pi/180

d_max=str2double(get(handles.d_max,'string'));%d_max=20;%d max de analisis en Km
d_max=d_max*1000;%dmax en m

d_diff=str2double(get(handles.d_diff,'string'));%d_diff=2;%d diferencial en km
d_diff=d_diff*1000;%d_diff en m
%% 
m=0;
pts_bk(1,1)=0;
%for a=0:theta_dif:359*pi/180
    a=theta_dif;
    m=m+1;
    n=0;
    m_x1=0;
    m_y1=0;
    for l=d_diff:d_diff:d_max
        [m_x,m_y]=perfil_grados(l,f_x,f_y,a);%[m_x,m_y]=perfil_grados(d,f_x,f_y,theta)
        
        [perfil_intp,perfil_intp_d,rd, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(f_x,f_y,f_h,f_P,f_Ga,f_ca,f_cl, m_x,m_y,m_h,m_P,m_Ga,m_ca,m_cl,m_snstv,f,pol,tip_suelo,499,0);
        
        if enlace_pr==0%pts negros
            n=n+1;
            pts_bk(m,n)=rd;
        end
    end
    
   % figure
    [perfil_intp,perfil_intp_d,rd, linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil_fm(f_x,f_y,f_h,f_P,f_Ga,f_ca,f_cl, m_x,m_y,m_h,m_P,m_Ga,m_ca,m_cl,m_snstv, f,pol,tip_suelo,   499, 1);
    hold on
    
    set(handles.Pr,'string',Pr);
    set(handles.Er,'string',Er);
    if enlace_pr==1
        set(handles.enlace,'string','Existe enlace entre los 2 puntos');
    else
        set(handles.enlace,'string',' No existe enlace entre los 2 puntos')
    end
    hold on

%if ~isempty(pts_bk)
    tam=size(pts_bk);
    for a=1:1:tam(2)
        if pts_bk(m,a)~=0
            plot(pts_bk(m,a),ppval(perfil_intp,pts_bk(m,a)),'r*')
        end
    end
    hold off
%end
%end

%%

% --- Executes on selection change in pol.
function pol_Callback(hObject, eventdata, handles)
% hObject    handle to pol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns pol contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pol


% --- Executes during object creation, after setting all properties.
function pol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in tip_suelo.
function tip_suelo_Callback(hObject, eventdata, handles)
% hObject    handle to tip_suelo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns tip_suelo contents as cell array
%        contents{get(hObject,'Value')} returns selected item from tip_suelo


% --- Executes during object creation, after setting all properties.
function tip_suelo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tip_suelo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_dif_Callback(hObject, eventdata, handles)
% hObject    handle to theta_dif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_dif as text
%        str2double(get(hObject,'String')) returns contents of theta_dif as a double


% --- Executes during object creation, after setting all properties.
function theta_dif_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_dif (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function d_max_Callback(hObject, eventdata, handles)
% hObject    handle to d_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_max as text
%        str2double(get(hObject,'String')) returns contents of d_max as a double


% --- Executes during object creation, after setting all properties.
function d_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_diff_Callback(hObject, eventdata, handles)
% hObject    handle to d_diff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_diff as text
%        str2double(get(hObject,'String')) returns contents of d_diff as a double


% --- Executes during object creation, after setting all properties.
function d_diff_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_diff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




%% --- Executes on button press in cartografia.
function cartografia_Callback(hObject, eventdata, handles)
% hObject    handle to cartografia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%TRANSMISOR
%Latitud(X)

global f_x;
global f_y;

if get(handles.Tns,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlat_g,'string'));
m=str2double(get(handles.Tlat_m,'string'));
s=str2double(get(handles.Tlat_s,'string'));
xt=dms2degrees([g m s]);%tx

%Longitud(Y)
if get(handles.Tew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlon_g,'string'));
m=str2double(get(handles.Tlon_m,'string'));
s=str2double(get(handles.Tlon_s,'string'));
yt=dms2degrees([g m s]);%ty
[f_x,f_y,utmzone]=deg2utm(xt,yt);


CARTOGRAFIA;

