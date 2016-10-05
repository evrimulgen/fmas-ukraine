unit SpCostAddChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxLookAndFeelPainters, StdCtrls, cxButtons, Un_R_file_Alex, SpCostClass, SpCostForm,
  cxCheckBox;

type
  TfmAddMode = (Add , Change);

  TfmSpCostAddChange = class(TForm)
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
    myform : TfmSpCostForm;
  public
    myclass : TSpCostClass;
    constructor Create(AOwner: TComponent; mclass: TSpCostClass; mform : TfmSpCostForm; m : TfmAddMode; long, short : string; id, linkto : int64); reintroduce; overload;
  end;

implementation

{$R *.dfm}

procedure TfmSpCostAddChange.cxButtonCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TfmSpCostAddChange.cxButtonAddClick(Sender: TObject);
var
    j : int64;
    sut : integer;
begin
    if (cxEditShortName.Text = '') or (cxEditLongName.Text = '') then
         ShowMessage(Un_R_file_Alex.J4_ADD_VETKA_ERROR_MESS)
    else
    begin
        //if cxCheckBox1.Checked then sut := 1 else sut := 0;
        if Flag = Add then
        begin
            j := myclass.AddVetka(cxEditLongName.Text, cxEditShortName.Text, old_linkto, sut);
            If j > 0 then
            begin
                myform.ActionRefreshExecute(Sender);;
                myform.DataSetMain.Locate('ID_SP_AO_COST', j, []);
            end else
            begin
                myform.ActionRefreshExecute(Sender);;
                myform.DataSetMain.Locate('ID_SP_AO_COST', old_linkto, []);
            end;
            close;
        end;
        if Flag = Change then
        begin
            j := myclass.ChangeVetka(cxEditLongName.Text, cxEditShortName.Text, old_id, old_linkto, sut);
            if j > 0 then
            begin
                myform.ActionRefreshExecute(Sender);
                myform.DataSetMain.Locate('ID_SP_AO_COST', j, []);
            end else
            begin
                myform.ActionRefreshExecute(Sender);;
                myform.DataSetMain.Locate('ID_SP_AO_COST', old_id, []);
            end;
            close;
        end;
    end;
end;

constructor TfmSpCostAddChange.Create(AOwner: TComponent;
  mclass: TSpCostClass; mform : TfmSpCostForm; m: TfmAddMode; long, short : string; id, linkto : int64);
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
