Attribute VB_Name = "Module2"
Sub data_CC_in_GC()



Dim pathc2file As String
Dim ar_code_Brand(6, 1)
Dim LastRow_CC, LastColumns_CC As Integer
Dim num_month
Dim cd_date As Date

Dim patchTR, actTR, LastRow, sh_in_data, status_head   As String
Dim ALLTIME, EDU_PY, EDU_TY, place, AVG_HD As Variant
Dim b, iii, i, x, y, frqOrder   As Integer
Dim ar_nmAVG_Order(), ar_type_clients(1 To 4, 1 To 12)
Dim cd_data As Date

'Dim   As Worksheet
Dim ar_Data(), brand, ar_nmHead(150), ar_PYPer_PRTN_VAL, ar_TYPer_PRTN_VAL, ar_PYPer_LOR_VAL(), ar_TYPer_LOR_VAL(), ar_nm_monthENG(), ar_nmMregEN(), ar_nmMregLT()

NF = ActiveWorkbook.Name


'colums CA PRTNN VAL for LTM
'---------------------------------------------------------------------------------------------------------

ar_nm_monthENG = Array("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
ar_nm_monthRUS = Array("������", "�������", "����", "������", "���", "����", "����", "������", "��������", "�������", "������", "�������")
ar_nmMregEN = Array("MOSCOW", "GR", "NORTHWEST", "CENTER", "VOLGA", "SOUTH", "URAL", "SIBERIA", "FAR EAST")
ar_nmMregLT = Array("Moscou", "GR", "Nord-Ouest", "Centre", "Volga-Centre", "Sud", "Oural", "Siberie", "EO")


'---------------------------------------------------------------------------------------------------------



'---------------------------------------------------------------------------------------------------------
With Application
.ScreenUpdating = False
.EnableEvents = False
.Calculation = xlCalculationManual
'.DisplayPageBreaks = False
.DisplayAlerts = False
End With
'---------------------------------------------------------------------------------------------------------
brand = InputBox("brand")
status_head = 0

actual_year = 2016

'---------------------------------------------------------------------------------------------------------
'check Sheets and if not - add
'---------------------------------------------------------------------------------------------------------
sh_in_data = "in_TR"
status_head = 0

For Each Sh In ThisWorkbook.Worksheets
If Sh.Name = sh_in_data Then
chek_name = 1
End If
Next Sh

If chek_name <> 1 Then
Set Sh = Worksheets.Add()
Sh.Name = sh_in_data
End If



'---------------------------------------------------------------------------------------------------------



Dim dic_idECAD: Set dic_idECAD = CreateObject("Scripting.Dictionary")
dic_idECAD.RemoveAll
        
patchTR = "p:\DPP\Business development\Book commercial\" & brand & "\Top Russia Total " & actual_year & " " & brand & ".xlsm"
nm_brand = brand

'---------------------------------------------------------------------------------------------------------
'Open Files
'---------------------------------------------------------------------------------------------------------
If Dir(patchTR) = "" Then
Else
Workbooks.Open Filename:=patchTR, Notify:=False
End If
'---------------------------------------------------------------------------------------------------------


actTR = ActiveWorkbook.Name
Sheets(brand).Select
ActiveSheet.AutoFilterMode = False
LastRow = ActiveSheet.UsedRange.Row + ActiveSheet.UsedRange.Rows.Count - 1
'---------------------------------------------------------------------------------------------------------

ReDim ar_Data(LastRow - 4, 150) ' num_colums)

    iii = 0
    
    For i = 4 To LastRow
   
    num_colums = 0
    clm_ecad_id = num_colums
    id_ECAD = Cells(i, 29)
    ar_Data(iii, num_colums) = id_ECAD
    ar_nmHead(num_colums) = "id"
   
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Left(Cells(i, 9), 40)
    ar_nmHead(num_colums) = "name"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Left(Cells(i, 12), 100)
    ar_nmHead(num_colums) = "address"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 20)
    ar_nmHead(num_colums) = "phone"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "manager"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 10)
    ar_nmHead(num_colums) = "law_name"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "inn"

    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 2)
    ar_nmHead(num_colums) = "salon_code"
        
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "description"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 6)
    ar_nmHead(num_colums) = "city_name"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 3)
    ar_nmHead(num_colums) = "partner_code"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = brand
    ar_nmHead(num_colums) = "brand"
    
    
    num_colums = num_colums + 1
    clm_sts_closed = num_colums
    If Cells(i, 8) = 1 Then
    sts_is_closed = "f"
    Else
    sts_is_closed = "t"
    End If
    ar_Data(iii, num_colums) = sts_is_closed
    ar_nmHead(num_colums) = "is_closed"
    
    num_colums = num_colums + 1
    vl_mag = Cells(i, 160)
    If Len(vl_mag) <> 2 Then vl_mag = Null
    ar_Data(iii, num_colums) = vl_mag
    ar_nmHead(num_colums) = "grade"
    
    num_colums = num_colums + 1
    clm_cd_date = num_colums
    nm_month = Trim(Cells(i, 64))
    cdYear = Cells(i, 65)
    
        For f_m = 0 To UBound(ar_nm_monthRUS)
            If nm_month = ar_nm_monthRUS(f_m) Then
            cdMonth = f_m + 1
            Else
            cdMonth = 1
            End If
        Next f_m



    If cdMonth <= 10 Then cdMonth = "0" & cdMonth
    If Len(Cells(i, 65)) = 4 Then cdYear = cdYear Else cdYear = 2008
    cd_date = "01/" & cdMonth & "/" & cdYear
    ar_Data(iii, num_colums) = CDate(cd_date)
    ar_nmHead(num_colums) = "open_date"
    
     
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 7)
    ar_nmHead(num_colums) = "representative_full_name"
       
       
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "street"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "house"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Left(Cells(i, 13), 20)
    ar_nmHead(num_colums) = "ext_address"
    
   ' num_colums = num_colums + 1
   ' ar_Data(iii, num_colums) = Empty
   ' ar_nmHead(num_colums) = "discount"
    
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 64)
    ar_nmHead(num_colums) = "open_month"
    
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 65)
    ar_nmHead(num_colums) = "open_year"
    
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Left(Cells(i, 19), 20)
    ar_nmHead(num_colums) = "chain_name"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 11)
    ar_nmHead(num_colums) = "city_name_geographic"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 27)
    ar_nmHead(num_colums) = "barber_chairs"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 156)
    ar_nmHead(num_colums) = "color_cost"
    
    num_colums = num_colums + 1
    nm_Mreg = Cells(i, 4)
    ar_Data(iii, num_colums) = nm_Mreg
    ar_nmHead(num_colums) = "com_mreg"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 5)
    ar_nmHead(num_colums) = "com_reg"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 6)
    ar_nmHead(num_colums) = "com_sect"
    
    num_colums = num_colums + 1
    type_sln_rus = Trim(Cells(i, 18))
    If Len(type_sln_rus) = 0 Then type_sln_rus = "�����"
    ar_Data(iii, num_colums) = type_sln_rus
    ar_nmHead(num_colums) = "client_type"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "crer"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = "f"
    ar_nmHead(num_colums) = "hide"
    
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "technolog_full_name"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "region_id"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "users_count"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 5)
    ar_nmHead(num_colums) = "region_name"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "technolog_id"
        
    num_colums = num_colums + 1
    nm_Mreg = Cells(i, 4)
    ar_Data(iii, num_colums) = nm_Mreg
    ar_nmHead(num_colums) = "megaregion_name"
    
    num_colums = num_colums + 1
    vl_mag = Cells(i, 160)
    If Len(vl_mag) <> 2 Then vl_mag = Null
    ar_Data(iii, num_colums) = vl_mag
    ar_nmHead(num_colums) = "mag"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Left(Cells(i, 22), 140)
    ar_nmHead(num_colums) = "site"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Left(Cells(i, 21), 140)
    ar_nmHead(num_colums) = "email"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 167)
    ar_nmHead(num_colums) = "partner"
          
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Cells(i, 173)
    ar_nmHead(num_colums) = "partner_private_code"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "manager_phone"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = Empty
    ar_nmHead(num_colums) = "manager_mail"
    
    num_colums = num_colums + 1
    ar_Data(iii, num_colums) = "����������� �����"
    ar_nmHead(num_colums) = "salon_conquer"
    
   '---------------------------------------------------------------------------------------------------------
   ' insert_w = Empty
     '   For f_w = 1 To Len(id_ECAD)
      '      Symbol = Mid(id_ECAD, i, 1)
       '     If Symbol Like "*[0-9]*" Then
        '    insert_w = insert_w & Symbol
         '   End If
        'Next f_w
        
        'id_ECAD = CInt(insert_w)
    '---------------------------------------------------------------------------------------------------------
    num_colums = num_colums + 1
    
    If id_ECAD = 15223 Then
    xcv = 1
    Else
    xcv = 0
    End If
    
    If Len(id_ECAD) > 0 Then
        
        If Not dic_idECAD.Exists(id_ECAD) And Not InStr(1, id_ECAD, "|") Then
        id_ECAD = id_ECAD
        dic_idECAD.Add id_ECAD, iii
        Else
            find_iii = dic_idECAD.Item(id_ECAD)
            dbl_sts_is_closed = ar_Data(find_iii, clm_sts_closed)
            dbl_cd_date = ar_Data(find_iii, clm_cd_date)
                    
            If sts_is_closed = "t" And dbl_sts_is_closed = "f" Then
            O_st_id_ECAD = id_ECAD & "|" & "D" & "|" & find_iii & "|" & "C"
            D_th_id_ECAD = id_ECAD
            End If
            
            If sts_is_closed = "t" And dbl_sts_is_closed = "t" Then
            
                If cd_date > dbl_cd_date Then
                O_st_id_ECAD = id_ECAD
                D_th_id_ECAD = id_ECAD & "|" & "D" & "|" & find_iii & "|" & "C"
                Else
                D_th_id_ECAD = id_ECAD
                O_st_id_ECAD = id_ECAD & "|" & "D" & "|" & find_iii & "|" & "C"
                End If
                
            End If
            
            If sts_is_closed = "f" And dbl_sts_is_closed = "t" Then
            O_st_id_ECAD = id_ECAD
            D_th_id_ECAD = id_ECAD & "|" & "D" & "|" & find_iii & "|" & "C"
            End If
            
            If sts_is_closed = "f" And dbl_sts_is_closed = "f" Then
                
                If cd_date > dbl_cd_date Then
                O_st_id_ECAD = id_ECAD
                D_th_id_ECAD = id_ECAD & "|" & "D" & "|" & find_iii
                Else
                D_th_id_ECAD = id_ECAD
                O_st_id_ECAD = id_ECAD & "|" & "D" & "|" & find_iii
                End If
                
            End If
            
            id_ECAD = O_st_id_ECAD
            ar_Data(find_iii, num_colums) = D_th_id_ECAD
        End If
        
    

        
    End If
    ar_Data(iii, num_colums) = id_ECAD
    
    ar_nmHead(num_colums) = "new_id_ECAD"
    
    
    
   '---------------------------------------------------------------------------------------------------------
   
   
iii = iii + 1
Next i
    
ActiveWindow.Close
Application.DisplayAlerts = False
  
  
    
Workbooks(NF).Activate

'---------------------------------------------------------------------------------------------------------
'check Sheets and if not - add
'---------------------------------------------------------------------------------------------------------


For Each Sh In ThisWorkbook.Worksheets
If Sh.Name = sh_in_data Then
chek_name = 1
End If
Next Sh

If chek_name <> 1 Then
Set Sh = Worksheets.Add()
Sh.Name = sh_in_data
End If



Sheets(sh_in_data).Activate

'clear sheet & create head & create name OR fiil data
'---------------------------------------------------------------------------------------------------------
If status_head = 0 Then
ActiveSheet.UsedRange.Cells.ClearContents
end_POS = iii + 1
start_POS = 2

Dim n As Name
For Each n In ThisWorkbook.Names
    On Error Resume Next
    n.Delete
    Next n

For t = 0 To num_colums
Cells(1, t + 1) = ar_nmHead(t)
Cells(1, t + 1).Select
ActiveWorkbook.Names.Add Name:=ar_nmHead(t), RefersTo:="=" & ActiveSheet.Name & "!" & ActiveCell.Address()
Next t

Else
start_POS = end_POS + 1
end_POS = start_POS + iii - 1
End If

ActiveSheet.Cells(start_POS, 1).Resize(end_POS - start_POS + 1, num_colums + 1) = ar_Data()
status_head = 1


'ActiveWorkbook.Names.Add Name:="SOURCE", RefersToR1C1:="=OFFSET(in_TR!R1C1,0,0,COUNTA(in_TR!R1C1:R65535C1),COUNTA(in_TR!R1C1:R1C255))"
'ActiveWorkbook.Names("SOURCE").Comment = ""
'ActiveWorkbook.RefreshAll

'---------------------------------------------------------------------------------------------------------

With Application
.ScreenUpdating = True
.Calculation = xlCalculationAutomatic
.EnableEvents = True
.DisplayStatusBar = True
.DisplayAlerts = True
End With

End Sub
