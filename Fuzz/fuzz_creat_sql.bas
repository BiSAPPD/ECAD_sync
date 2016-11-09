Sub sql_upd_()
Dim ShIn As String
Dim arData() As Variant
Dim Item As String
Dim minusCells As String



myLib.VBA_Start
ShOut = "Fuzz"
Sheets(ShOut).Select

LRow = myLib.GetLastRow
LColumn = myLib.GetLastColumn
ReDim arData(1 To LRow * 3, 1 To 1)

For f_rw = 2 To LRow
    tr_brand = Cells(f_rw, 1)
    tr_Row = Cells(f_rw, 11)
    tr_ECADid = Cells(f_rw, 3)
    ec_ECADid = Cells(f_rw, 14)
    tr_Name = Cells(f_rw, 4)
    ec_Name = Cells(f_rw, 15)
    tr_City = Cells(f_rw, 5)
    ec_City = Cells(f_rw, 16)
    tr_Street = Cells(f_rw, 6)
    ec_Street = Cells(f_rw, 17)
    tr_House = Cells(f_rw, 7)
    ec_House = Cells(f_rw, 18)
    simul = Cells(f_rw, 23)

If tr_ECADid = ec_ECADid Then
    If tr_Name <> ec_Name Then
        i = i + 1
        arData(i, 1) = "UPDATE clients  SET Name = '" & ec_Name & "'" & " WHERE brand = '" & tr_brand & "' and row = '" & tr_Row & "';"
    End If

    If tr_City <> ec_City Then
        i = i + 1
        arData(i, 1) = "UPDATE clients  SET city_name_geographic = '" & ec_City & "'" & " WHERE brand = '" & tr_brand & "' and row = '" & tr_Row & "';"
    End If

    If tr_Street <> ec_Street Then
        i = i + 1
        arData(i, 1) = "UPDATE clients  SET street = '" & ec_Street & "'" & " WHERE brand = '" & tr_brand & "' and row = '" & tr_Row & "';"
    End If

    If tr_House <> ec_House Then
        i = i + 1
        arData(i, 1) = "UPDATE clients  SET house = '" & ec_House & "'" & " WHERE brand = '" & tr_brand & "' and row = '" & tr_Row & "';"
    End If
Else
    If  isEmpty(tr_ECADid) and not isEmpty(ec_ECADid) and simul > 0.84 and not isEmpty(tr_Street) Then
    arData(i, 1) = "UPDATE clients  SET id_ecad = '" & ec_ECADid & "'" & " WHERE brand = '" & tr_brand & "' and row = '" & tr_Row & "';"
    Else
    Range(Cells(f_rw, 1), Cells(f_rw, LColumn)).Select
    End If
With Selection.Interior

            .ThemeColor = xlThemeColorDark1
            .TintAndShade = -0.1
    End With
End If
Next f_rw

ShIn = "sql_upd"
myLib.CreateSh (ShIn)
myLib.sheetActivateCleer (ShIn)
ActiveSheet.Cells(1, 1).Resize(f_rw, 1) = arData()
myLib.VBA_End
End Sub




