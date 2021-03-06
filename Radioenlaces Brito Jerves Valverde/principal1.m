function varargout = principal1(varargin)
% PRINCIPAL1 M-file for principal1.fig
%      PRINCIPAL1, by itself, creates a new PRINCIPAL1 or raises the existing
%      singleton*.
%
%      H = PRINCIPAL1 returns the handle to a new PRINCIPAL1 or the handle to
%      the existing singleton*.
%
%      PRINCIPAL1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRINCIPAL1.M with the given input arguments.
%
%      PRINCIPAL1('Property','Value',...) creates a new PRINCIPAL1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before principal1_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to principal1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help principal1

% Last Modified by GUIDE v2.5 20-Jul-2009 09:00:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @principal1_OpeningFcn, ...
                   'gui_OutputFcn',  @principal1_OutputFcn, ...
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


% --- Executes just before principal1 is made visible.
function principal1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to principal1 (see VARARGIN)

% Choose default command line output for principal1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes principal1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = principal1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

set(handles.Tns,'Value',2);
set(handles.Tew,'Value',2);
set(handles.Rns,'Value',2);
set(handles.Rew,'Value',2);

global S03W079;
global S03W080;
global S04W079;
global S04W080;
load('AzuayGEO.mat');



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



function Rlat_g_Callback(hObject, eventdata, handles)
% hObject    handle to Rlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlat_g as text
%        str2double(get(hObject,'String')) returns contents of Rlat_g as a double


% --- Executes during object creation, after setting all properties.
function Rlat_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlat_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlon_g_Callback(hObject, eventdata, handles)
% hObject    handle to Rlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlon_g as text
%        str2double(get(hObject,'String')) returns contents of Rlon_g as a double


% --- Executes during object creation, after setting all properties.
function Rlon_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlon_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlon_m_Callback(hObject, eventdata, handles)
% hObject    handle to Rlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlon_m as text
%        str2double(get(hObject,'String')) returns contents of Rlon_m as a double


% --- Executes during object creation, after setting all properties.
function Rlon_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlon_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlat_s_Callback(hObject, eventdata, handles)
% hObject    handle to Rlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlat_s as text
%        str2double(get(hObject,'String')) returns contents of Rlat_s as a double


% --- Executes during object creation, after setting all properties.
function Rlat_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlat_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlon_s_Callback(hObject, eventdata, handles)
% hObject    handle to Rlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlon_s as text
%        str2double(get(hObject,'String')) returns contents of Rlon_s as a double


% --- Executes during object creation, after setting all properties.
function Rlon_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlon_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in rns.
function rns_Callback(hObject, eventdata, handles)
% hObject    handle to rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns rns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from rns


% --- Executes during object creation, after setting all properties.
function rns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Rew.
function Rew_Callback(hObject, eventdata, handles)
% hObject    handle to Rew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Rew contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Rew


% --- Executes during object creation, after setting all properties.
function Rew_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rew (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Rlat_m_Callback(hObject, eventdata, handles)
% hObject    handle to Rlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Rlat_m as text
%        str2double(get(hObject,'String')) returns contents of Rlat_m as a double


% --- Executes during object creation, after setting all properties.
function Rlat_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rlat_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Rns.
function Rns_Callback(hObject, eventdata, handles)
% hObject    handle to Rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Rns contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Rns


% --- Executes during object creation, after setting all properties.
function Rns_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Rns (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr_Callback(hObject, eventdata, handles)
% hObject    handle to atr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr as text
%        str2double(get(hObject,'String')) returns contents of atr as a double


% --- Executes during object creation, after setting all properties.
function atr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function art_Callback(hObject, eventdata, handles)
% hObject    handle to art (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art as text
%        str2double(get(hObject,'String')) returns contents of art as a double


% --- Executes during object creation, after setting all properties.
function art_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function atr_g_Callback(hObject, eventdata, handles)
% hObject    handle to atr_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr_g as text
%        str2double(get(hObject,'String')) returns contents of atr_g as a double


% --- Executes during object creation, after setting all properties.
function atr_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr_m_Callback(hObject, eventdata, handles)
% hObject    handle to atr_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr_m as text
%        str2double(get(hObject,'String')) returns contents of atr_m as a double


% --- Executes during object creation, after setting all properties.
function atr_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function art_m_Callback(hObject, eventdata, handles)
% hObject    handle to art_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art_m as text
%        str2double(get(hObject,'String')) returns contents of art_m as a double


% --- Executes during object creation, after setting all properties.
function art_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atr_s_Callback(hObject, eventdata, handles)
% hObject    handle to atr_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atr_s as text
%        str2double(get(hObject,'String')) returns contents of atr_s as a double


% --- Executes during object creation, after setting all properties.
function atr_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atr_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function art_s_Callback(hObject, eventdata, handles)
% hObject    handle to art_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art_s as text
%        str2double(get(hObject,'String')) returns contents of art_s as a double


% --- Executes during object creation, after setting all properties.
function art_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function art_g_Callback(hObject, eventdata, handles)
% hObject    handle to art_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of art_g as text
%        str2double(get(hObject,'String')) returns contents of art_g as a double


% --- Executes during object creation, after setting all properties.
function art_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to art_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t_g_lat;
global t_m_lat;
global t_s_lat;
global t_ns_lat
global t_g_lon;
global t_m_lon;
global t_s_lon;
global t_ew_lon;

global r_g_lat;
global r_m_lat;
global r_s_lat;
global r_ns_lat;
global r_g_lon;
global r_m_lon;
global r_s_lon;
global r_ew_lon;

global f

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
%%
t_g_lat=g;
t_m_lat=m;
t_s_lat=s;
t_ns_lat=signo;
%%
xt=dms2degrees([g m s])%tx
%Longitud(Y)
if get(handles.Tew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Tlon_g,'string'));
m=str2double(get(handles.Tlon_m,'string'));
s=str2double(get(handles.Tlon_s,'string'));
yt=dms2degrees([g m s])%ty
%%
t_g_lon=g;
t_m_lon=m;
t_s_lon=s;
t_ew_lon=signo;
%%
[t_x,t_y,utmzone]=deg2utm(xt,yt);

%RECEPTOR
%Latitud(X)
if get(handles.Rns,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Rlat_g,'string'));
m=str2double(get(handles.Rlat_m,'string'));
s=str2double(get(handles.Rlat_s,'string'));
%%
r_g_lat=g;
r_m_lat=m;
r_s_lat=s;
r_ns_lat=signo;
%%
xr=dms2degrees([g m s]);%rx

%Longitud(Y)
if get(handles.Rew,'Value')==1
	signo=1;
else
	signo=-1;
end
g=signo*str2double(get(handles.Rlon_g,'string'));
m=str2double(get(handles.Rlon_m,'string'));
s=str2double(get(handles.Rlon_s,'string'));
%%
r_g_lon=g;
r_m_lon=m;
r_s_lon=s;
r_ew_lon=signo;
%%
yr=dms2degrees([g m s]);%ry
[r_x,r_y,utmzone]=deg2utm(xr,yr);

%CALCULOS
set(handles.D,'string',num2str(deg2km(distance(xt,yt,xr,yr))));

%%
t_h=str2double(get(handles.t_h,'string'));
t_P=str2double(get(handles.t_P,'string'));
t_Ga=str2double(get(handles.t_Ga,'string'));
t_ca=str2double(get(handles.t_ca,'string'));
t_cl=str2double(get(handles.t_cl,'string'));

r_h=str2double(get(handles.r_h,'string'));
r_P=str2double(get(handles.r_P,'string'));
r_Ga=str2double(get(handles.r_Ga,'string'));
r_ca=str2double(get(handles.r_ca,'string'));
r_cl=str2double(get(handles.t_cl,'string'));
r_snstv=str2double(get(handles.r_snstv,'string'));

f=str2double(get(handles.f,'string'));
pol=(get(handles.pol,'value'));
tip_suelo=(get(handles.tip_suelo,'value'));
d_diff=499;
%%

if f<30%onda superficial
    ITU368_GUI;
else%va a la funcion
    [linea_vista, calculo_difr,Ld_difr, PIRE, calculo_lluv_gas,L_ll_g, calculo_refl,Lb_refl, Pr, Er, enlace_pr]=analiza_perfil(t_x,t_y,t_h,t_P,t_Ga,t_ca,t_cl, r_x,r_y,r_h,r_P,r_Ga,r_ca,r_cl,r_snstv, f,pol,tip_suelo, d_diff);

set(handles.PIRE,'string',PIRE);
set(handles.Pr,'string',Pr);
set(handles.Er,'string',Er);
set(handles.Ld_difr,'string',Ld_difr);
set(handles.Lb_refl,'string',Lb_refl);
set(handles.L_ll_g,'string',L_ll_g);

if linea_vista==1
    set(handles.linea_vista,'string','Existe linea_vista');
else
    set(handles.linea_vista,'string','No Existe linea_vista');
end
if enlace_pr==1
    set(handles.enlace_pr,'string','Existe Enlace entre los 2 puntos');
else
    set(handles.enlace_pr,'string','No Existe Enlace entre los 2 puntos');
end

% linea_vista, 
% enlace_pr

% calculo_difr,
% calculo_lluv_gas,
% calculo_refl,

end

function r_h_Callback(hObject, eventdata, handles)
% hObject    handle to r_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_h as text
%        str2double(get(hObject,'String')) returns contents of r_h as a double


% --- Executes during object creation, after setting all properties.
function r_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_P_Callback(hObject, eventdata, handles)
% hObject    handle to r_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_P as text
%        str2double(get(hObject,'String')) returns contents of r_P as a double


% --- Executes during object creation, after setting all properties.
function r_P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_Ga_Callback(hObject, eventdata, handles)
% hObject    handle to r_Ga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_Ga as text
%        str2double(get(hObject,'String')) returns contents of r_Ga as a double


% --- Executes during object creation, after setting all properties.
function r_Ga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_Ga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_ca_Callback(hObject, eventdata, handles)
% hObject    handle to r_ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_ca as text
%        str2double(get(hObject,'String')) returns contents of r_ca as a double


% --- Executes during object creation, after setting all properties.
function r_ca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_cl_Callback(hObject, eventdata, handles)
% hObject    handle to r_cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_cl as text
%        str2double(get(hObject,'String')) returns contents of r_cl as a double


% --- Executes during object creation, after setting all properties.
function r_cl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_h_Callback(hObject, eventdata, handles)
% hObject    handle to t_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_h as text
%        str2double(get(hObject,'String')) returns contents of t_h as a double


% --- Executes during object creation, after setting all properties.
function t_h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_P_Callback(hObject, eventdata, handles)
% hObject    handle to t_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_P as text
%        str2double(get(hObject,'String')) returns contents of t_P as a double


% --- Executes during object creation, after setting all properties.
function t_P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_Ga_Callback(hObject, eventdata, handles)
% hObject    handle to t_Ga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_Ga as text
%        str2double(get(hObject,'String')) returns contents of t_Ga as a double


% --- Executes during object creation, after setting all properties.
function t_Ga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_Ga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_ca_Callback(hObject, eventdata, handles)
% hObject    handle to t_ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_ca as text
%        str2double(get(hObject,'String')) returns contents of t_ca as a double


% --- Executes during object creation, after setting all properties.
function t_ca_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_ca (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_cl_Callback(hObject, eventdata, handles)
% hObject    handle to t_cl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_cl as text
%        str2double(get(hObject,'String')) returns contents of t_cl as a double


% --- Executes during object creation, after setting all properties.
function t_cl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_cl (see GCBO)
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





function r_snstv_Callback(hObject, eventdata, handles)
% hObject    handle to r_snstv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_snstv as text
%        str2double(get(hObject,'String')) returns contents of r_snstv as a double


% --- Executes during object creation, after setting all properties.
function r_snstv_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_snstv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function PIRE_Callback(hObject, eventdata, handles)
% hObject    handle to PIRE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PIRE as text
%        str2double(get(hObject,'String')) returns contents of PIRE as a double


% --- Executes during object creation, after setting all properties.
function PIRE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PIRE (see GCBO)
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



function Ld_difr_Callback(hObject, eventdata, handles)
% hObject    handle to Ld_difr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ld_difr as text
%        str2double(get(hObject,'String')) returns contents of Ld_difr as a double


% --- Executes during object creation, after setting all properties.
function Ld_difr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ld_difr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Lb_refl_Callback(hObject, eventdata, handles)
% hObject    handle to Lb_refl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Lb_refl as text
%        str2double(get(hObject,'String')) returns contents of Lb_refl as a double


% --- Executes during object creation, after setting all properties.
function Lb_refl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Lb_refl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_ll_g_Callback(hObject, eventdata, handles)
% hObject    handle to L_ll_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L_ll_g as text
%        str2double(get(hObject,'String')) returns contents of L_ll_g as a double


% --- Executes during object creation, after setting all properties.
function L_ll_g_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L_ll_g (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)





function edit50_Callback(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit50 as text
%        str2double(get(hObject,'String')) returns contents of edit50 as a double


% --- Executes during object creation, after setting all properties.
function edit50_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


