Attribute VB_Name = "Module1"

 
Function UnTranslit(ByVal sValue As String) As String
    Dim sRussian As String, iCount As Integer, sTranslit As Variant
    sTranslit = Array("Zch", "zch", "''", "Ch", "ch", "Eh", "eh", "Ja", "ja", "Jj", "jj", "Jo", "jo", "Ju", "ju", "Sh", "sh", "'Y", "'y", "Zh", "zh", "'", "A", "a", "B", "b", "C", "c", "D", "d", "E", "e", "F", "f", "G", "g", "H", "h", "I", "i", "K", "k", "L", "l", "M", "m", "N", "n", "O", "o", "P", "p", "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "Z", "z", "W", "w")
    sRussian = "Ùùú×÷İıßÿÉé¨¸ŞşØøÛûÆæüÀàÁáÖöÄäÅåÔôÃãÕõÈèÊêËëÌìÍíÎîÏïĞğÑñÒòÓóÂâÇçÂâ"
    For iCount = 1 To 64
        sValue = Replace(sValue, sTranslit(iCount - 1), Mid(sRussian, iCount, 1), , , vbBinaryCompare) 'MS Excel 2000
    Next
    UnTranslit = sValue
End Function
 
Sub tr()
Dim Txt As String
Dim f_r As Range

Set inpdata = Selection
For Each f_r In inpdata

Txt = f_r.Value
Txt = UnTranslit(Txt)
f_r = Txt
Next f_r

End Sub

