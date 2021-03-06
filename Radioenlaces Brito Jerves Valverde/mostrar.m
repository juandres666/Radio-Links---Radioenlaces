function varargout = mostrar(varargin)
% MOSTRAR M-file for mostrar.fig
%      MOSTRAR, by itself, creates a new MOSTRAR or raises the existing
%      singleton*.
%
%      H = MOSTRAR returns the handle to a new MOSTRAR or the handle to
%      the existing singleton*.
%
%      MOSTRAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MOSTRAR.M with the given input arguments.
%
%      MOSTRAR('Property','Value',...) creates a new MOSTRAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mostrar_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mostrar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mostrar

% Last Modified by GUIDE v2.5 16-Jul-2009 13:38:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mostrar_OpeningFcn, ...
                   'gui_OutputFcn',  @mostrar_OutputFcn, ...
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


% --- Executes just before mostrar is made visible.
function mostrar_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mostrar (see VARARGIN)

% Choose default command line output for mostrar
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mostrar wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mostrar_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%
% Get default command line output from handles structure
varargout{1} = handles.output;

global CNo_u;
global CNo_d;
global CNo_totaldb;
global CNtotaldb;
global EbN;
global A_sub;
global Agas_sub;
global A_baj;
global Agas_baj;

global PIREe;
global lbs;
global d;
global PIREsat;
global lbd;
global d_sub;

global B;
global n;
global tilt;
%global d;
global si;
global lb;
global z;
global l;
global zbaj;
global lbaj;
global TR;

global B_sub;
global n_sub;
global tilt_sub;
%global d_subida;
global si_sub;
global lb_sub;

axes(handles.axes1);
background = imread('sat1.jpg');
axis off;
imshow(background);

axes(handles.axes2);
background = imread('Angulo.jpg');
axis off;
imshow(background);

axes(handles.axes3);
background = imread('Angulo1.jpg');
axis off;
imshow(background);

set(handles.CNosubida,'string',CNo_u);
set(handles.CNobajada,'string',CNo_d);
set(handles.CNototal,'string',CNo_totaldb);

set(handles.CNtotaldb,'string',CNtotaldb);
set(handles.EbN,'string',EbN);

set(handles.A_sub,'string',A_sub);
set(handles.Agas_sub,'string',Agas_sub);
set(handles.A_baj,'string',A_baj);
set(handles.Agas_baj,'string',Agas_baj);

set(handles.PIREsub,'string',PIREe);
set(handles.lbfsub,'string',lbs);
set(handles.dsub,'string',d);
set(handles.PIREbaj,'string',PIREsat);
set(handles.lbfbaj,'string',lbd);
set(handles.dbaj,'string',d_sub);
%%%%%%%%%%%%%

set(handles.B,'string',B);
set(handles.n,'string',n);
set(handles.tilt,'string',tilt);
set(handles.d,'string',d);
set(handles.si,'string',si);
set(handles.Lb,'string',lb);


if z==1
    set(handles.hemis1,'string','Hemisferio Norte');
    if zbaj==1
        set(handles.hemis,'string','Satelite Oeste-Estacion Terrena');
    elseif zbaj==2
        set(handles.hemis,'string','Satelite Este-Estacion Terrena');
    end
elseif z==-1
    set(handles.hemis1,'string','Hemisferio Sur');
    if zbaj==3
        set(handles.hemis,'string','Satelite Oeste-Estacion Terrena');
    elseif zbaj==4
        set(handles.hemis,'string','Satelite Este-Estacion Terrena');
    end
end

    
if TR==1
    set(handles.B_sub,'Enable','On');
    set(handles.n_sub,'Enable','On');
    set(handles.tilt_sub,'Enable','On');
    set(handles.d_subida,'Enable','On');
    set(handles.si_sub,'Enable','On');
    set(handles.lb_sub,'Enable','On');
    
   if l==1
        set(handles.hemis1_sub,'string','Hemisferio Norte');
        if lbaj==1
            set(handles.hemis_sub,'string','Satelite Oeste-Estacion Terrena');
        elseif lbaj==2
           set(handles.hemis_sub,'string','Satelite Este-Estacion Terrena');
        end
    elseif l==-1
        set(handles.hemis1_sub,'string','Hemisferio Sur');
        if lbaj==3
            set(handles.hemis_sub,'string','Satelite Oeste-Estacion Terrena')
        elseif lbaj==4
            set(handles.hemis_sub,'string','Satelite Este-Estacion Terrena');  
        end
    end
    set(handles.B_sub,'string',B_sub);
    set(handles.n_sub,'string',n_sub);
    set(handles.tilt_sub,'string',tilt_sub);
    set(handles.d_subida,'string',d_sub);
    set(handles.si_sub,'string',si_sub);
    set(handles.lb_sub,'string',lb_sub);
else
    
    set(handles.B_sub,'Enable','Off');
    set(handles.n_sub,'Enable','Off');
    set(handles.tilt_sub,'Enable','Off');
    set(handles.d_subida,'Enable','Off');
    set(handles.si_sub,'Enable','Off');
    set(handles.lb_sub,'Enable','Off');
    
end

%%

function CNosubida_Callback(hObject, eventdata, handles)
% hObject    handle to CNosubida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNosubida as text
%        str2double(get(hObject,'String')) returns contents of CNosubida as a double


% --- Executes during object creation, after setting all properties.
function CNosubida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNosubida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNobajada_Callback(hObject, eventdata, handles)
% hObject    handle to CNobajada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNobajada as text
%        str2double(get(hObject,'String')) returns contents of CNobajada as a double


% --- Executes during object creation, after setting all properties.
function CNobajada_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNobajada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNototal_Callback(hObject, eventdata, handles)
% hObject    handle to CNototal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNototal as text
%        str2double(get(hObject,'String')) returns contents of CNototal as a double


% --- Executes during object creation, after setting all properties.
function CNototal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNototal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CNtotaldb_Callback(hObject, eventdata, handles)
% hObject    handle to CNtotaldb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CNtotaldb as text
%        str2double(get(hObject,'String')) returns contents of CNtotaldb as a double


% --- Executes during object creation, after setting all properties.
function CNtotaldb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CNtotaldb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EbN_Callback(hObject, eventdata, handles)
% hObject    handle to EbN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EbN as text
%        str2double(get(hObject,'String')) returns contents of EbN as a double


% --- Executes during object creation, after setting all properties.
function EbN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EbN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function Agas_sub_Callback(hObject, eventdata, handles)
% hObject    handle to Agas_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Agas_sub as text
%        str2double(get(hObject,'String')) returns contents of Agas_sub as a double


% --- Executes during object creation, after setting all properties.
function Agas_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Agas_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_sub_Callback(hObject, eventdata, handles)
% hObject    handle to A_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A_sub as text
%        str2double(get(hObject,'String')) returns contents of A_sub as a double


% --- Executes during object creation, after setting all properties.
function A_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Agas_baj_Callback(hObject, eventdata, handles)
% hObject    handle to Agas_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Agas_baj as text
%        str2double(get(hObject,'String')) returns contents of Agas_baj as a double


% --- Executes during object creation, after setting all properties.
function Agas_baj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Agas_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_baj_Callback(hObject, eventdata, handles)
% hObject    handle to A_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A_baj as text
%        str2double(get(hObject,'String')) returns contents of A_baj as a double


% --- Executes during object creation, after setting all properties.
function A_baj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_baj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function PIREsub_Callback(hObject, eventdata, handles)
% hObject    handle to PIREsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PIREsub as text
%        str2double(get(hObject,'String')) returns contents of PIREsub as a double


% --- Executes during object creation, after setting all properties.
function PIREsub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PIREsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dsub_Callback(hObject, eventdata, handles)
% hObject    handle to dsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dsub as text
%        str2double(get(hObject,'String')) returns contents of dsub as a double


% --- Executes during object creation, after setting all properties.
function dsub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lbfsub_Callback(hObject, eventdata, handles)
% hObject    handle to lbfsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lbfsub as text
%        str2double(get(hObject,'String')) returns contents of lbfsub as a double


% --- Executes during object creation, after setting all properties.
function lbfsub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lbfsub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PIREbaj_Callback(hObject, eventdata, handles)
% hObject    handle to PIREbaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PIREbaj as text
%        str2double(get(hObject,'String')) returns contents of PIREbaj as a double


% --- Executes during object creation, after setting all properties.
function PIREbaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PIREbaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dbaj_Callback(hObject, eventdata, handles)
% hObject    handle to dbaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dbaj as text
%        str2double(get(hObject,'String')) returns contents of dbaj as a double


% --- Executes during object creation, after setting all properties.
function dbaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dbaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lbfbaj_Callback(hObject, eventdata, handles)
% hObject    handle to lbfbaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lbfbaj as text
%        str2double(get(hObject,'String')) returns contents of lbfbaj as a double


% --- Executes during object creation, after setting all properties.
function lbfbaj_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lbfbaj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function si_Callback(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of si as text
%        str2double(get(hObject,'String')) returns contents of si as a double


% --- Executes during object creation, after setting all properties.
function si_CreateFcn(hObject, eventdata, handles)
% hObject    handle to si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit45_Callback(hObject, eventdata, handles)
% hObject    handle to si_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of si_sub as text
%        str2double(get(hObject,'String')) returns contents of si_sub as a double


% --- Executes during object creation, after setting all properties.
function edit45_CreateFcn(hObject, eventdata, handles)
% hObject    handle to si_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B as text
%        str2double(get(hObject,'String')) returns contents of B as a double


% --- Executes during object creation, after setting all properties.
function B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tilt_Callback(hObject, eventdata, handles)
% hObject    handle to tilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tilt as text
%        str2double(get(hObject,'String')) returns contents of tilt as a double


% --- Executes during object creation, after setting all properties.
function tilt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tilt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Lb_Callback(hObject, eventdata, handles)
% hObject    handle to Lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lb as text
%        str2double(get(hObject,'String')) returns contents of Lb as a double


% --- Executes during object creation, after setting all properties.
function Lb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_sub_Callback(hObject, eventdata, handles)
% hObject    handle to n_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_sub as text
%        str2double(get(hObject,'String')) returns contents of n_sub as a double


% --- Executes during object creation, after setting all properties.
function n_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_sub_Callback(hObject, eventdata, handles)
% hObject    handle to B_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B_sub as text
%        str2double(get(hObject,'String')) returns contents of B_sub as a double


% --- Executes during object creation, after setting all properties.
function B_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tilt_sub_Callback(hObject, eventdata, handles)
% hObject    handle to tilt_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tilt_sub as text
%        str2double(get(hObject,'String')) returns contents of tilt_sub as a double


% --- Executes during object creation, after setting all properties.
function tilt_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tilt_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function si_sub_Callback(hObject, eventdata, handles)
% hObject    handle to si_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of si_sub as text
%        str2double(get(hObject,'String')) returns contents of si_sub as a double


% --- Executes during object creation, after setting all properties.
function si_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to si_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Lb_sub_Callback(hObject, eventdata, handles)
% hObject    handle to Lb_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lb_sub as text
%        str2double(get(hObject,'String')) returns contents of Lb_sub as a double


% --- Executes during object creation, after setting all properties.
function Lb_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lb_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function lb_sub_Callback(hObject, eventdata, handles)
% hObject    handle to lb_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lb_sub as text
%        str2double(get(hObject,'String')) returns contents of lb_sub as a double


% --- Executes during object creation, after setting all properties.
function lb_sub_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lb_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function d_subida_Callback(hObject, eventdata, handles)
% hObject    handle to d_subida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d_subida as text
%        str2double(get(hObject,'String')) returns contents of d_subida as a double


% --- Executes during object creation, after setting all properties.
function d_subida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d_subida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


