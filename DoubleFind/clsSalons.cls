VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsSalons"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False

Option Explicit

Private colSalons As Collection

Private Sub Class_Initialize()
    Set colSalons = New Collection
End Sub

Private Sub Class_Terminate()
    Set colSalons = Nothing
End Sub

Public Property Get NewEnum() As IUnknown
Attribute NewEnum.VB_UserMemId = -4
Attribute NewEnum.VB_MemberFlags = "40"
    Set NewEnum = colSalons.[_NewEnum]
End Property

Public Sub Add(obj As clsSalon)
 colSalons.Add obj
End Sub

Public Sub Remove(Index As Variant)
 colSalons.Remove Index
End Sub

Public Property Get Item(Index As Variant) As clsSalon
Attribute Item.VB_UserMemId = 0
    Set Item = colSalons.Item(Index)
End Property

Property Get Count() As Long
    Count = colSalons.Count
End Property

Public Sub Clear()
    Set colSalons = New Collection
End Sub

Public Sub FillFromSheet(wks As Worksheet)
    Const cFirstRow = 2
    Dim n As Integer
    Dim i As Long, obj As clsSalon
    
    With wks
        For i = cFirstRow To .Cells(Rows.Count, 1).End(xlUp).row
            Set obj = New clsSalon
            n = 0
            n = n + 1: obj.dbl_status = .Cells(i, n)
            n = n + 1: obj.inn = .Cells(i, n)
            n = n + 1: obj.id = .Cells(i, n)
            n = n + 1: obj.name = .Cells(i, n)
            n = n + 1: obj.city_name_geographic = .Cells(i, n)
            n = n + 1: obj.street = .Cells(i, n)
            n = n + 1: obj.house = .Cells(i, n)
            n = n + 1: obj.law_name = .Cells(i, n)
            n = n + 1: obj.countusr = .Cells(i, n)
            n = n + 1: obj.countusreducated = .Cells(i, n)
            n = n + 1: obj.club = .Cells(i, n)
            n = n + 1: obj.activ_users = .Cells(i, n)
            n = n + 1: obj.com_mreg = .Cells(i, n)
            Me.Add obj
        Next
    End With
End Sub

Public Function FilterByDbl(cnt As Integer) As clsSalons
    Dim slns As clsSalons, sln As clsSalon
    Set slns = New clsSalons
        
        For Each sln In Me
        If sln.dbl_status > cnt Then slns.Add sln
    Next

    Set FilterByDbl = slns
End Function

