Attribute VB_Name = "Geo2TR"

Sub Geo2TR()
JsonConverter.JsonOptions.AllowUnquotedKeys = True
Dim json As Object
Dim data As DaDataObject
Dim response As String
Dim address As String
Dim strFullAdress As String
Dim f_i As Double, f_c As Double
Dim lngIdEcad As Long

    
    WBk = ActiveWorkbook.Name
    myLib.VBA_Start
    ShIn = "in_TR"  
    ShOut = "out_TR"  
    Sheets(ShIn).Select
    For f_c = 1 To myLib.GetLastColumn
        Select Case Cells(1, f_c)
                Case "id": clm_id = f_c
                Case "row": clm_row = f_c
                Case "name": clm_name = f_c
                Case "address": clm_address = f_c
                Case "city_name_geographic": clm_city_name_geographic = f_c
                Case "salon_code": clm_salon_code = f_c
                Case "partner_code": clm_partner_code = f_c
                Case "open_date": clm_open_date = f_c
                Case "representative_full_name": clm_representative_full_name = f_c
                Case "chain_name": clm_chain_name = f_c
                Case "com_mreg": clm_com_mreg = f_c
                Case "com_reg": clm_com_reg = f_c
                Case "com_sect": clm_com_sect = f_c
                Case "crer": clm_crer = f_c
                Case "technolog_full_name": clm_technolog_full_name = f_c
                Case "region_name": clm_region_name = f_c
                Case "partner": clm_partner = f_c
                Case "partner_private_code": clm_partner_private_code = f_c
        End Select
    Next f_c
  
    end_f = myLib.GetLastRow
    r = 0
    For f_i = 1 To end_f
    Application.StatusBar = "Progress: " & f_i & " of " & end_f & ": " & Format(f_i / end_f, "0%"): DoEvents
    
        Sheets(ShIn).Select

            strFullAdress = Cells(f_i, clm_city_name_geographic) & " " & Cells(f_i, clm_address)
            
            response = myLib.getResponse(strFullAdress, "address", "f21c3e7d77083b1d0d18d3f6a4b0ee5c18e521a8", "")
            Set json = JsonConverter.ParseJson(response)

            Set data = New DaDataObject
        
            On Error Resume Next
            data.InitiateProperties json
            Sheets(ShOut).Select
            
            n = 0
            
            With data
                r = r + 1: If f_i = 1 Then myLib.sheetActivateCleer ("out")
                
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "id", Cells(f_i, clm_id))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "brand", Empty)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "name", Cells(f_i, clm_name))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "address", IIf(Not IsNull(.street), .street_with_type, Empty) & IIf(Not IsNull(.house), ", " & .house_type & " " & .house, Empty) & IIf(Not IsNull(.block), ", " & .block_type & " " & .block, Empty))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "street", IIf(Not IsNull(.street), .street_with_type, Empty))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "house", IIf(Not IsNull(.house), .house_type & " " & .house, Empty) & IIf(Not IsNull(.block), ", " & .block_type & " " & .block, Empty))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "ext_address", .unparsed_parts)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "city_name_geographic", IIf(Not IsNull(.city_with_type), .city_with_type, .settlement_with_type))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "city_district", .city_district)                
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "region_name_geographic", .region_with_type)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "area_name_geographic", .area_with_type)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "fias_id", .fias_id)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "fias_level", .fias_level)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "kladr_id", .kladr_id)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "capital_marker", .capital_marker)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "okato", .okato)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "oktmo", .oktmo)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "tax_office", .tax_office)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "timezone", .timezone)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "geo_lat", .geo_lat)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "geo_lon", .geo_lon)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "beltway_hit", .beltway_hit)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "beltway_distance", .beltway_distance)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "qc_geo", .qc_geo)

                n = n + 1: Cells(r, n) = IIf(f_i = 1, "salon_code", Cells(f_i, clm_salon_code))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "partner_code", Cells(f_i, clm_partner_code))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "open_date", Cells(f_i, clm_open_date))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "representative_full_name", Cells(f_i, clm_representative_full_name))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "chain_name", Cells(f_i, clm_chain_name))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "com_mreg", Cells(f_i, clm_com_mreg))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "com_reg", Cells(f_i, clm_com_reg))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "com_sect", Cells(f_i, clm_com_sect))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "crer", Cells(f_i, clm_crer))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "technolog_full_name", Cells(f_i, clm_technolog_full_name))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "region_name", Cells(f_i, clm_region_name))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "partner", Cells(f_i, clm_partner))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "partner_private_code", Cells(f_i, clm_partner_private_code))
                
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "full_adress", strFullAdress)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "response", response)
            End With

    Next f_i
    Sheets("out").Select
    
    
    myLib.VBA_End
End Sub









