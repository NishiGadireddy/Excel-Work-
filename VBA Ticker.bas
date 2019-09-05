Attribute VB_Name = "Module1"
Sub Ticker()
  Dim Ticker_Name As String
  Dim Ticker_Total As Double
  Ticker_Total = 0

  Dim Summary_Table_Row As Integer
  Summary_Table_Row = 2
Dim lastrow As Long
lastrow = Cells(Rows.Count, 1).End(xlUp).Row

  For i = 2 To lastrow

    If Cells(i + 1, 1).Value <> Cells(i, 1).Value Then

      Ticker_Name = Cells(i, 1).Value

      Ticker_Total = Ticker_Total + Cells(i, 3).Value
      Range("I" & Summary_Table_Row).Value = Ticker_Name
      Range("J" & Summary_Table_Row).Value = Ticker_Total

      Summary_Table_Row = Summary_Table_Row + 1
      
      Ticker_Total = 0

    Else

      Brand_Total = Brand_Total + Cells(i, 3).Value

    End If

  Next i

End Sub

