unit uSp_mesto_Loader;

interface
uses Classes, st_Common_Types, Forms, st_Common_Funcs, uSp_mesto_Main, dialogs;

function ShowSpMesto(AParameter:TstSimpleParams):Variant;stdcall;
exports  ShowSpMesto;

implementation

function ShowSpMesto(AParameter:TstSimpleParams):Variant;stdcall;
var
 ViewForm : Tfrm_mesto_main;
begin
  if IsMDIChildFormShow(Tfrm_mesto_main) then exit;
  ViewForm := Tfrm_mesto_main.Create(AParameter);
  ViewForm.FormStyle := AParameter.Formstyle;
  case ViewForm.FormStyle of
    fsNormal, fsStayOnTop : ViewForm.ShowModal;
    fsMDIChild	          : ViewForm.Show;
  else
   begin
    ViewForm.ShowModal;
    ViewForm.free;
   end;
  end;
  Result := ViewForm.res;
end;

end.


