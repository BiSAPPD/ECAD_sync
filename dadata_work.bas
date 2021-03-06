Sub get_data()
JsonConverter.JsonOptions.AllowUnquotedKeys = True
Dim json As Object
Dim data As DaDataObject
Dim response As String
Dim address As String
Dim strFullAdress As String
Dim f_i As Double, f_c As Double
Dim lngIdEcad As Long


    myLib.VBA_Start
    Sheets("in").Select
    For f_c = 1 To myLib.GetLastColumn
        Select Case Cells(1, f_c)
                Case "id": clm_id = f_c
                Case "name": clm_name = f_c
                Case "address": clm_address = f_c
                Case "city_name_geographic": clm_city_name_geographic = f_c
                Case "geo_lat": clm_geo_lat = f_c
        End Select
    Next f_c
  
    end_f = myLib.GetLastRow
    r = 0
    For f_i = 1 To end_f
    Application.StatusBar = "Progress: " & f_i & " of end_f: " & Format(f_i / end_f, "0%")
    
        Sheets("in").Select
        If IsEmpty(Cells(f_i, clm_geo_lat)) Then
            lngIdEcad = Cells(f_i, clm_id)
            strClientName = Cells(f_i, clm_name)
            strFullAdress = Cells(f_i, clm_city_name_geographic) & " " & Cells(f_i, clm_address)
        
            response = getResponse(strFullAdress, "address", "f21c3e7d77083b1d0d18d3f6a4b0ee5c18e521a8")
            Set json = JsonConverter.ParseJson(response)
        End If
        If IsEmpty(Cells(f_i, clm_geo_lat)) Or f_i = 1 Then
            Set data = New DaDataObject
        
            On Error Resume Next
            data.InitiateProperties json
            Sheets("out").Select
            
            n = 0
            
            With data
                r = r + 1: If f_i = 1 Then myLib.sheetActivateCleer ("out")
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "id", lngIdEcad)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "name", strClientName)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "address", IIf(Not IsNull(.street), .street_with_type, Empty) & IIf(Not IsNull(.house), ", " & .house_type & " " & .house, Empty) & IIf(Not IsNull(.block), ", " & .block_type & " " & .block, Empty))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "street", IIf(Not IsNull(.street), .street_with_type, Empty))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "house", IIf(Not IsNull(.house), .house_type & " " & .house, Empty) & IIf(Not IsNull(.block), ", " & .block_type & " " & .block, Empty))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "ext_address", .unparsed_parts)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "city_name_geographic", IIf(Not IsNull(.city_with_type), .city_with_type, .settlement_with_type))
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "fias_id", .fias_id)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "region_name_geographic", .region_with_type)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "area_name_geographic", .area_with_type)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "city_district", .city_district)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "kladr_id", .kladr_id)
                n = n + 1: Cells(r, n) = IIf(f_i = 1, "fias_level", .fias_level)
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

            End With
        End If
    Next f_i
    Sheets("out").Select
    ipp.CloseMe
    
    myLib.VBA_End
End Sub



Function getResponse(ByVal text As String, request As String, key As String) As String

    Dim result As String
    Dim objHTTP As Object
    
    result = ""
    Set objHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0")
    
    With objHTTP
        URL = "https://suggestions.dadata.ru/suggestions/api/4_1/rs/suggest/" & request
        .Open "POST", URL, False
        .setRequestHeader "Content-Type", "application/json"
        .setRequestHeader "Accept", "application/json"
        .setRequestHeader "Authorization", "Token " & key
        '.setProxy 2, "128.114.0.21:8080", ""
        .send ("{""query"":""" & text & """, " & """count""" & ": 1" & "}")
    End With
    
    result = objHTTP.responseText
    result = Replace(result, "[", "")
    result = Replace(result, "]", "")
    
    If result = "{""suggestions"":}" Then result = "{""suggestions"":null}"
    
    getResponse = result
    
End Function

