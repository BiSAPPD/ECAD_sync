Attribute VB_Name = "Module1"
Sub creatMergeList()
Dim slns As clsSalons, sln As clsSalon
myLib.VBA_Start
Dim obj As Object

Set slns = New clsSalons

ShOut = "Listdbl"
ShIn = "Data"
Sheets(ShIn).Select

slns.FillFromSheet ActiveSheet
myLib.CreateSh (ShOut)
Sheets(ShOut).Select
myLib.sheetActivateCleer (ShOut)

i = 1
For Each sln In slns.FilterByDbl(1)

    i = i + 1
    With sln
    n = 0
    n = n + 1: Cells(i, n) = .dbl_status
    n = n + 1: Cells(i, n) = .inn
    n = n + 1: Cells(i, n) = .id
    n = n + 1: Cells(i, n) = .name
    n = n + 1: Cells(i, n) = .city_name_geographic
    n = n + 1: Cells(i, n) = .street
    n = n + 1: Cells(i, n) = .house
    n = n + 1: Cells(i, n) = .law_name
    n = n + 1: Cells(i, n) = .countusr
    n = n + 1: Cells(i, n) = .countusreducated
    n = n + 1: Cells(i, n) = .club
    n = n + 1: Cells(i, n) = .activ_users
    n = n + 1: Cells(i, n) = .com_mreg
    
    End With
Next

myLib.VBA_End

End Sub
