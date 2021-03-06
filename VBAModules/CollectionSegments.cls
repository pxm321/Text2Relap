VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "CollectionSegments"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'
' MEMBER VARIABLES
Private pSegments As Collection
'
'
' PROPERTIES
Public Property Get NewEnum() As IUnknown
Attribute NewEnum.VB_UserMemId = -4
Attribute NewEnum.VB_MemberFlags = "40"
' Action: Enables for each loops (VB_UserMemId = -4)
    Set NewEnum = pSegments.[_NewEnum]
End Property
'
'
' CLASS EVENT METHODS
Private Sub Class_Initialize()
    Set pSegments = New Collection
End Sub

Public Sub Add(ByVal NewSegment As PropertiesHydroCompSegment)
    pSegments.Add NewSegment
End Sub

Public Function Item(index As Variant) As PropertiesHydroCompSegment
Attribute Item.VB_UserMemId = 0
    Set Item = pSegments(index)
End Function

Public Function Count() As Long
    Count = pSegments.Count
End Function
'
'
' CLASS METHODS

