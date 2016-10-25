Sub getData()
Dim ShIn As String
Dim arData() As Variant
Dim Item As String

myLib.VBA_Start
ShOut = "Listdbl"
Sheets(ShOut).Select
LRow = myLib.GetLastRow
LColumn = myLib.GetLastColumn
ReDim arData(1 To LRow + 1, 1 To 1)

r = 0
For f_rw = 1 To LRow
    r = r + 1
    
    strItem = "|"
    For f_clm = 1 To 14
        actCells = Cells(f_rw, f_clm)
        getItem = IIF(f_clm = 3, "(" & actCells & ")[http://e-academie.ru/salons/" & actCells & "/edit]", actCells)
        Select Case r
            Case 2: Item = "---|": f_rw = IIf(f_clm, 1, f_rw - 1)
            Case Else: Item = IIf(IsEmpty(Cells(f_rw, f_clm)), "-", Cells(f_rw, f_clm)) & "|"
        End Select
        strItem = strItem & Item
        Next f_clm
    arData(r, 1) = strItem
Next f_rw
ShIn = "Markdown"
myLib.CreateSh (ShIn)
myLib.sheetActivateCleer (ShIn)
ActiveSheet.Cells(1, 1).Resize(f_rw, 1) = arData()
myLib.VBA_End
End Sub
