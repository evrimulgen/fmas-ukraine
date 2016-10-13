unit ManHospExceptDates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxLabel, cxLookAndFeelPainters, StdCtrls, cxButtons, Ztypes;

type
  TfmManHospExceptDates = class(TForm)
    DateBegLabel: TcxLabel;
    DateBegEdit: TcxDateEdit;
    DateendLabel: TcxLabel;
    DateEndEdit: TcxDateEdit;
    YesBtn: TcxButton;
    CancelBtn: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure YesBtnClick(Sender: TObject);
   private
   PParameter:THospRMovingParameter;

  public
    { Public declarations }

  end;

{var
  fmManHospExceptDates: TfmManHospExceptDates; }

implementation

{$R *.dfm}



procedure TfmManHospExceptDates.FormCreate(Sender: TObject);
begin
     DateBegEdit.Date:=PParameter.AData;//Date;
     DateEndEdit.Date:=PParameter.AData;//Date;
end;

procedure TfmManHospExceptDates.YesBtnClick(Sender: TObject);
begin
    ModalResult:=mrYes;
end;

end.
