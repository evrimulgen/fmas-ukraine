const
       Debug = True;

var
       GroupNo: Integer;            // номер группы
       MasterHeight: array of Extended;  // массив высот строк с данными
       HeaderHeight: array of Extended;  // массив высот заголовок группы + первая запись
       GFHeight: array of Extended; // массив высот итогов по группе
       LastGroupLine: array of Integer; // последняя строка в группе
       LastLine: Integer;           // номер последней записи в главном наборе
       FHeight: Extended;           // высота итогов
       LastGroup: Integer;          // номер последней группы
       LastGroupOneRow: Boolean;    // последня группа из одной строки?
       NeededHeight: Extended;      // нужная высота
       HeaderHeightFilled: Boolean;      // заполняли ли высоту групп
       GFHeightFilled: Boolean;     // заполняли ли высоту итогов по группе
       HeaderHeightUsed:   Boolean;      // используется ли высота групп
       FHeightFilled: Boolean;      // заполняли ли высоту итогов
       LineNo:  Integer;            // порядковый номер записи
       LineInGroup: Integer;        // порядковый номер записи в группе


    // отладочная процедура
procedure DebugMessage(before: String; after: String);
var
    pass: String;
begin
    if Debug then
    begin
        if Engine.FinalPass then pass := 'Pass 2'
        else pass := 'Pass 1';

        ShowMessage(before + '| ' + pass + '|Page: ' + IntToStr(<Page>) +
            '|LineNo: ' + IntToStr(LineNo) + '|LineInGroup: ' +
            IntToStr(LineInGroup) + '|FreeSpace: ' + FloatToStr(Engine.FreeSpace)
            + '|' + after);
    end;
end;
    // инициализировать номер группы в начале отчета
procedure pfInit;
begin
    GroupNo := 0;
    LineNo := 0;
    LineInGroup := 0;
   
    if not Engine.FinalPass then
    begin
		LastLine := 0;
		FHeight := 0;
	end;
end;

    // установить флаг "последняя строка в группе",
    // проверить не сделать ли разрыв
procedure pfMasterCheck(Sender: TfrxComponent);
begin
    if not ( Sender is TfrxBand) then Exit;

    inc(LineNo);
    inc(LineInGroup);
    
        // проверить, одна ли строка данных в последней группе
    if not Engine.FinalPass then
    begin
        if LineInGroup > 1 then LastGroupOneRow := False
        else LastGroupOneRow := True;
        LastGroupLine[GroupNo] := LineInGroup;
        LastLine := LineNo;
    end;

        // если не хватает места для последней записи
		// с итогами по группе или вообще, сформировать новую страницу
    if Engine.FinalPass then
    begin
        NeededHeight := MasterHeight[LineNo];

        if FHeightFilled and ( LineNo = LastLine ) then
        begin
            NeededHeight := NeededHeight + FHeight;
            //DebugMessage(FloatToStr(FHeight), '');
        end;
        if GFHeightFilled and ( LineInGroup = LastGroupLine[GroupNo] ) then
            NeededHeight := NeededHeight + GFHeight[GroupNo];
  
//        DebugMessage(FloatToStr(NeededHeight), FloatToStr(Engine.FreeSpace));

        if Engine.FreeSpace < NeededHeight then Engine.NewPage;
	end;
end;

    // инициализировать данные по группе
procedure pfGroupInit;
begin
        // увеличить номер группы
    inc(GroupNo);
    LineInGroup := 0;

        // обновить номер последней группы
    if not Engine.FinalPass then LastGroup := GroupNo;
        // выделить место под высоту
    if not Engine.FinalPass then
    begin
        SetLength(HeaderHeight, GroupNo+1);
        HeaderHeight[GroupNo] := 0;
        SetLength(GFHeight, GroupNo+1);
        GFHeight[GroupNo] := 0;
        SetLength(LastGroupLine, GroupNo+1);
        LastGroupLine[GroupNo] := 0;
    end;
end;

    // проверить, хватит ли места для заголовка группы с прочим геморроем
procedure pfGroupCheck;
begin
        // 2й проход: если не хватает места для
        // заголовка группы и первой записи,
        // перейти на следующую страницу
        // а если группа последняя, и только одна
        // строка с данными, проверить, хватит ли
        // места для группы, данных и итогов
        // если в текушей группе одна запись, проверить, хватит
        // ли места для заголовка, записи и итогов
    if Engine.FinalPass and HeaderHeightFilled then
    begin
        NeededHeight := HeaderHeight[GroupNo];

        if ( GroupNo = LastGroup ) and LastGroupOneRow and FHeightFilled then
            NeededHeight := NeededHeight + FHeight;

        if LastGroupLine[GroupNo] = 1 then
            NeededHeight := NeededHeight + GFHeight[GroupNo];

      if Engine.FreeSpace < NeededHeight then Engine.NewPage;
    end;
end;

    // запомнить высоту итогов
procedure pfSaveSummaryHeight(Sender: TfrxComponent);
begin
    if not ( Sender is TfrxBand ) then Exit;

    if not Engine.FinalPass and TfrxBand(Sender).Visible then
    begin
		FHeight := FHeight + TfrxBand(Sender).Height;
		//DebugMessage(FloatToStr(FHeight), '');
        FHeightFilled := True;
    end;
end;

    // запомнить высоту строки с данными
procedure pfSaveMasterDataHeight(Sender: TfrxComponent);
begin
    if not ( Sender is TfrxBand ) then Exit;

        // 1й проход: прибавить к высоте заголовка группы
        // высоту первой записи
    if not Engine.FinalPass and ( LineInGroup = 1 ) and HeaderHeightUsed then
    begin
        HeaderHeight[GroupNo] := HeaderHeight[GroupNo] + TfrxBand(Sender).Height;
        HeaderHeightFilled := True;
    end;

        // сохранить высоту мастера (т.к. на втором проходе в OnBeforePrint
        // высота без учета растягивания)
    if not Engine.FinalPass then
    begin
        SetLength(MasterHeight, LineNo+1);
        MasterHeight[LineNo] := TfrxBand(Sender).Height;
    end;
end;

    // запомнить высоту заголовка группы
procedure pfSaveGroupHeight(Sender: TfrxComponent);
begin
    if not ( Sender is TfrxBand ) then Exit;

        // 1й проход: запомнить высоту заголовка группы
    if not Engine.FinalPass then
    begin
        HeaderHeight[GroupNo] := HeaderHeight[GroupNo] + TfrxBand(Sender).Height;
        HeaderHeightUsed := True;
    end;
end;

    // запомнить высоту итогов по группе
procedure pfGroupFooterSaveHeight(Sender: TfrxComponent);
begin
    if not ( Sender is TfrxBand ) then Exit;

        // 1й проход: запомнить высоту итогов по группе
    if not Engine.FinalPass then
    begin
        GFHeight[GroupNo] := GFHeight[GroupNo] + TfrxBand(Sender).Height;
        GFHeightFilled := True;
    end;         
end;

// -----------------------основные процедуры------------------------------- //
procedure pfBeforePrint(Sender: TfrxComponent);
begin
        // перед печатью заголовка - инициализация
	if ( Sender is TfrxReportTitle) then
        pfInit
	else
        // перед печатью данных
	if ( Sender is TfrxMasterData) then
        pfMasterCheck(Sender);

        // перед печатью заголовка группы
    if ( Sender is TfrxGroupHeader ) then
    begin
        pfGroupInit;
        pfGroupCheck;
    end;
end;

procedure pfCalcHeight(Sender: TfrxComponent);
begin
        // строка с данными
    if Sender is TfrxMasterData then
          pfSaveMasterDataHeight(Sender);

        // заголовок группы - запомнить высоту
    if Sender is TfrxGroupHeader then
            pfSaveGroupHeight(Sender);

        // запомнить высоту итогов
    if Sender is TfrxReportSummary then
        pfSaveSummaryHeight(Sender);
end;

begin
end.