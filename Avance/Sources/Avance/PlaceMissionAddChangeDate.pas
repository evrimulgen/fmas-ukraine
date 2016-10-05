unit PlaceMissionAddChangeDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel,
  cxLookAndFeelPainters, StdCtrls, cxButtons, Un_R_file_Alex,
  cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfmAddMode = (Add , Change);

  TfmPlaceMissionAddChangeDate = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxButtonAdd: TcxButton;
    cxButtonClose: TcxButton;
    cxDateBegEdit: TcxDateEdit;
    cxDateEndEdit: TcxDateEdit;
    LabelPlaceMission: TLabel;
    procedure cxButtonCloseClick(Sender: TObject);
    procedure cxButtonAddClick(Sender: TObject);
  private
  public
    end;

implementation

{$R *.dfm}

procedure TfmPlaceMissionAddChangeDate.cxButtonCloseClick(Sender: TObject);
begin
    Close;
end;

procedure TfmPlaceMissionAddChangeDate.cxButtonAddClick(Sender: TObject);
var
    j : int64;
    sut : integer;
begin
    if (cxDateBegEdit.Text = '') or (cxDateBegEdit.Text = '') then
         ShowMessage('Заповніть поля!')
    else
    if (cxDateBegEdit.date > cxDateEndEdit.Date) then
     ShowMessage('Дата початку більше дати кінця!')
    else
    begin
        modalResult := mrOk;
    end;
end;

end.
