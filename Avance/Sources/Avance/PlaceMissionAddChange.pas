unit PlaceMissionAddChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxLookAndFeelPainters, StdCtrls, cxButtons, Un_R_file_Alex, PlaceMissionClass,
  PlaceMissionForm, cxCheckBox;

type
  TfmAddMode = (Add , Change);

  TfmPlaceMissionAddChange = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxEditShortName: TcxTextEdit;
    cxEditLongName: TcxTextEdit;
    cxButtonAdd: TcxButton;
    cxButtonClose: TcxButton;
    procedure cxButtonCloseClick(Sender: TObject);
    procedure cxButtonAddClick(Sender: TObject);
  private
    old_id, old_linkto : int64;
    old_long, old_short : string;
    flag : TfmAddMode;
    myform : TfmPlaceMissionForm;
  public

    myclass : TSpCostClass;
    constructor Create(AOwner: TComponent; mclass: TSpCostClass; mform : TfmPlaceMissionForm; m : TfmAddMode; long, short : string; id, linkto : int64); reintroduce; overload;
  end;

implementation

{$R *.dfm}

procedure TfmPlaceMissionAddChange.cxButtonCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TfmPlaceMissionAddChange.cxButtonAddClick(Sender: TObject);
var
    j : int64;
    sut : integer;
begin
    if (cxEditShortName.Text = '') or (cxEditLongName.Text = '') then
         ShowMessage(Un_R_file_Alex.J4_ADD_VETKA_ERROR_MESS)
    else
    begin
        modalResult := mrOk;
    end;
end;

constructor TfmPlaceMissionAddChange.Create(AOwner: TComponent;
  mclass: TSpCostClass; mform : TfmPlaceMissionForm; m: TfmAddMode; long, short : string; id, linkto : int64);
begin
    inherited Create (AOwner);
    myclass    := mclass;
    old_id     := id;
    old_linkto := linkto;
    old_long   := long;
    old_short  := short;
    flag       := m;
    myform     := mform;

    cxEditShortName.Text := short;
    cxEditLongName.Text  := long;

    if m = Add then
    begin
         Caption             := Un_R_file_Alex.J4_SP_RAZDELENIE_ADD_FORM_BUTTON_ADD;
         cxbuttonAdd.Caption := Un_R_file_Alex.J4_SP_RAZDELENIE_ADD_FORM_BUTTON_ADD;
         cxLabel1.Caption    := Un_R_file_Alex.J4_SP_RAZDELENIE_ADD_FORM_LABLE_SHORT;
         cxLabel2.Caption    := Un_R_file_Alex.J4_SP_RAZDELENIE_ADD_FORM_LABLE_LONG;
    end;
    if m = change then
    begin
         Caption             := Un_R_file_Alex.J4_SP_RAZDELENIE_CHANGE_FORM_CAPTION + short;
         cxButtonAdd.Caption := Un_R_file_Alex.J4_SP_RAZDELENIE_CHANGE_FORM_BUTTON_ADD;
         cxLabel1.Caption    := Un_R_file_Alex.J4_SP_RAZDELENIE_CHANGE_FORM_LABLE_SHORT;
         cxLabel2.Caption    := Un_R_file_Alex.J4_SP_RAZDELENIE_CHANGE_FORM_LABLE_LONG;
         //if myform.DataSetMain.FieldByName('SUTOCHNIE').AsInteger = 1 then cxCheckBox1.Checked := true;
    end;
    cxButtonClose.Caption    := Un_R_file_Alex.J4_PROP_CAPTION_BUTTON_CLOSE;
    //cxCheckBox1.Properties.Caption := Un_R_file_Alex.J4_SUTOCHNIE;
end;


end.
