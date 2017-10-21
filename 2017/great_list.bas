Sub x()
Dim f_cl As Integer, f_rw As Integer
Dim arData() As String
Dim ShOut As String

myLib.VBA_Start




iii = 1
Sheets("in").Select
ReDim arData(1 To 1 + myLib.GetLastRow * 2, 1 To myLib.GetLastColumn)

For f_rw = 1 To myLib.GetLastRow
    
    For f_cl = 1 To myLib.GetLastColumn
        
        If Cells(1, f_cl) = "brand" Then
            yyy = 1
            If f_rw <> 1 Then iii = iii + 1
        Else
            yyy = yyy + 1
        End If
        
        arData(iii, yyy) = Cells(f_rw, f_cl)
    Next f_cl
Next f_rw

ShOut = "out"
myLib.CreateSh (ShOut)
myLib.sheetActivateCleer (ShOut)



ActiveSheet.Cells(1, 1).Resize(iii, yyy) = arData

l_cl = myLib.GetLastColumn
For f_rw = 2 To myLib.GetLastRow Step 4
    Range(Cells(f_rw, 1), Cells(f_rw + 1, l_cl + 1)).Select
    
    With Selection.Interior
                .ThemeColor = xlThemeColorDark1
                .TintAndShade = -0.1
    End With
Next f_rw

For f_rw = 2 To myLib.GetLastRow Step 2
    sts_err = 0
    For f_cl = 4 To l_cl
        If Cells(f_rw, f_cl) <> Cells(f_rw + 1, f_cl) Then
            Range(Cells(f_rw, f_cl), Cells(f_rw + 1, f_cl)).Select
            With Selection.Font
                .Color = -16777024
                .TintAndShade = 0
            End With
            sts_err = sts_err + 1
        End If
    Next f_cl
    Cells(f_rw, l_cl + 1) = sts_err
    Cells(f_rw + 1, l_cl + 1) = sts_err
Next f_rw



myLib.VBA_End

End Sub