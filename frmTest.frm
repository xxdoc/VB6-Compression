VERSION 5.00
Begin VB.Form frmTest 
   BackColor       =   &H80000005&
   Caption         =   "Compression demo"
   ClientHeight    =   7815
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14415
   BeginProperty Font 
      Name            =   "Segoe UI"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   521
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   961
   StartUpPosition =   3  'Windows Default
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "LZMS (Win 8+ only)"
      Height          =   375
      Index           =   12
      Left            =   120
      TabIndex        =   20
      Top             =   4800
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "XPress_Huff (Win 8+ only)"
      Height          =   375
      Index           =   11
      Left            =   120
      TabIndex        =   19
      Top             =   4440
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "XPress (Win 8+ only)"
      Height          =   375
      Index           =   10
      Left            =   120
      TabIndex        =   18
      Top             =   4080
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "MSZip (Win 8+ only)"
      Height          =   375
      Index           =   9
      Left            =   120
      TabIndex        =   17
      Top             =   3720
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "ZThunk"
      Height          =   375
      Index           =   8
      Left            =   120
      TabIndex        =   16
      Top             =   3360
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "Brotli"
      Height          =   375
      Index           =   7
      Left            =   120
      TabIndex        =   15
      Top             =   3000
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "Lz4_hc"
      Height          =   375
      Index           =   6
      Left            =   120
      TabIndex        =   14
      Top             =   2640
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "Lz4"
      Height          =   375
      Index           =   5
      Left            =   120
      TabIndex        =   13
      Top             =   2280
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "Zstd"
      Height          =   375
      Index           =   4
      Left            =   120
      TabIndex        =   12
      Top             =   1920
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "libdeflate"
      Height          =   375
      Index           =   3
      Left            =   120
      TabIndex        =   11
      Top             =   1560
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "Zlib-ng"
      Height          =   375
      Index           =   2
      Left            =   120
      TabIndex        =   10
      Top             =   1200
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "Zlib"
      Height          =   375
      Index           =   1
      Left            =   120
      TabIndex        =   9
      Top             =   840
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.CheckBox chkEngine 
      BackColor       =   &H80000005&
      Caption         =   "None (memcmp baseline)"
      Height          =   375
      Index           =   0
      Left            =   120
      TabIndex        =   8
      Top             =   480
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin VB.ComboBox cboLevel 
      Height          =   375
      Left            =   120
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   5640
      Width           =   2775
   End
   Begin VB.ComboBox cboSort 
      Height          =   375
      Left            =   5040
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   7320
      Width           =   9255
   End
   Begin VB.TextBox txtResults 
      Height          =   6735
      Left            =   3120
      MultiLine       =   -1  'True
      OLEDropMode     =   1  'Manual
      ScrollBars      =   2  'Vertical
      TabIndex        =   1
      Top             =   480
      Width           =   11175
   End
   Begin VB.Label lblInfo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Compressor(s) to test:"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   4
      Left            =   120
      TabIndex        =   7
      Top             =   120
      Width           =   2055
   End
   Begin VB.Label lblInfo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Compression level(s) to test:"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   120
      TabIndex        =   5
      Top             =   5280
      Width           =   2655
   End
   Begin VB.Label lblInfo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sort test results by: "
      Height          =   255
      Index           =   2
      Left            =   3240
      TabIndex        =   3
      Top             =   7380
      Width           =   1740
   End
   Begin VB.Label lblInfo 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "(Want to test your own file?  Drag it onto the text box.)"
      Height          =   255
      Index           =   1
      Left            =   8640
      TabIndex        =   2
      Top             =   120
      Width           =   5565
   End
   Begin VB.Label lblInfo 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Compression test results shown below"
      BeginProperty Font 
         Name            =   "Segoe UI"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   3120
      TabIndex        =   0
      Top             =   120
      Width           =   3555
   End
End
Attribute VB_Name = "frmTest"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'***************************************************************************
'Modern Compression Demonstration for VB6
'Copyright 2016-2017 by Tanner Helland
'Created: 02/December/16
'Last updated: 06/May/19
'Last update: rework interface to allow de/selection of individual compression engines during tests
'
'This small project demonstrates a simple interface for a number of major open-source compression
' libraries, as well as the built-in Windows Compression API (if you're on Windows 8 or later).
' The sample project provides a small XML file as a starting point for comparisons, but I obviously
' recommend using larger files on your local PC for a more comprehensive testing experience.
'
'To test your own files, drag/drop them onto the text box.
'
'I know people are curious about "but which compression engine is best?"  The answer is, "it depends
' on your needs."  In general...
'
' - zLib should really only be used in projects that specifically require the DEFLATE algorithm,
'   and where you specifically require zlib's streaming API (not used by this wrapper).
'
' - libdeflate is a smaller, faster, cleaner implementation of the core zlib algorithms, with
'   helper functions to handle zlib's same deflate/zlib/gz formats (which differ only in header
'   and trailer/checksum behavior).  Use it in place of zlib for large performance and compression
'   ratio improvements.
'
' - zLib-ng is a "next-generation" version of zLib, developed by an outside team (w/ additional
'   contributions from Mark Adler, zlib's original author).  While it includes many performance
'   improvements relative to stock zLib, these improvements are unlikely to affect typical workloads.
'   YMMV, but this is not unexpected for 32-bit builds as most of their improvements focus on 64-bit.
'
' - zstd is the best "general purpose" compressor.  It is faster than zLib at both compression and
'   decompression, and also provides better compression ratios.
'
' - lz4 is the fastest compressor/decompressor.  Its compression ratio is not as good as zstd or zLib,
'   but you can use the lz4_hc version of the compressor (provided by the same DLL) to improve
'   compression ratio at some cost to speed.  Decompression speed is the same whether lz4 or lz4_hc
'   is used.
'
' - brotli is a Google-sponsored compression engine that focuses purely on maximizing compression ratios.
'   It is *extremely* slow, but it can compress certain data types (e.g. plain-text) better than other
'   libraries (at default settings, anyway - zstd can do better still if you use its dictionary interface,
'   which I do not do in this project.)
'
' - The Windows Compression API functions are not particularly good at performance *or* compression ratios,
'   but they require no external dependencies, so as long as you're only targeting Win 8 or later, you get
'   them "for free".  I mainly include them here as a curiosity.
'
'Licenses for the provided 3rd-party libraries include:
'
' zLib: BSD-style license (http://zlib.net/zlib_license.html)
' zLib-ng: BSD-style license (https://github.com/Dead2/zlib-ng/blob/develop/LICENSE.md)
' libdeflate: MIT license (https://github.com/ebiggers/libdeflate/blob/master/COPYING)
' zstd: BSD 3-clause license (https://github.com/facebook/zstd/blob/dev/LICENSE)
' lz4/lz4-hc: BSD 2-clause license (https://github.com/lz4/lz4/blob/dev/LICENSE)
' brotli: MIT license (https://github.com/google/brotli/blob/master/LICENSE)
'
'zlib and zlib-ng have been custom-built for this project (with VB-compatible stdcall interfaces).
'
'Brotli and lz4 have also been custom-built because their authors no longer ship official x86 binaries;
' however, they still use standard cdecl interfaces so you can freely drop-in most other x86 builds
' without trouble.
'
'All other libraries are stock releases from their official projects, with DispCallFunc-based wrappers to
' enable VB6 interop.
'
'Most of the VB6-specific code in this project was pulled from my open-source PhotoDemon project
' (www.photodemon.org), which is also BSD-licensed (http://photodemon.org/about/license/).  Just like the
' attached DLLs, you can use this code in any application, commercial or otherwise, as long as you provide
' attribution and warranty disclaimers in your UI or documentation.
'
'Bug reports and requests for additional libraries are always welcome.  Submit an issue on GitHub to reach me:
' https://github.com/tannerhelland/VB6-Compression
'
'All source code in this file is licensed under a modified BSD license.  This means you may use the code in your own
' projects IF you provide attribution.  For more information, please visit
' https://github.com/tannerhelland/VB6-Compression/blob/master/LICENSE.md
'
'***************************************************************************

Option Explicit
Option Base 0

'If the user drags their own file onto the text box, we'll store the filename here.  That way, if they change
' the current compression settings, we can immediately apply the new settings to their sample file.
Private m_LastTestedFile As String

'To make it easier to compare compression engine results, we use a custom struct for storing compression results.
' (This lets us easily sort run data.)
Private Type PD_CompressionResult
    CompressorName As String
    CompressionTime As Double
    DecompressionTime As Double
    CompressionRatio As Double
    CompRatioVsTime As Double
    EngineDetails As String
End Type

'All compression results will be stored in this array; the array can then be sorted before dumping it to the screen.
Private m_CompressionResults() As PD_CompressionResult
Private m_NumOfResults As Long

'The test results can be sorted by several different criteria
Private Enum PD_SortResults
    sr_SortByName = 0
    sr_SortByCompTime = 1
    sr_SortByDecompTime = 2
    sr_SortByCompRatio = 3
    sr_SortByRatioVsTime = 4
End Enum

#If False Then
    Private Const sr_SortByName = 0, sr_SortByCompTime = 1, sr_SortByDecompTime = 2, sr_SortByCompRatio = 3, sr_SortByRatioVsTime = 4
#End If

'Quick flag to ensure all compression engines are loaded before we start running tests.
' (Otherwise, setting the dropdown index at initialization time will start the tests prematurely.)
Private m_ReadyToGo As Boolean

Private Sub cboLevel_Click()
    SetupTest m_LastTestedFile, m_LastTestedFile
End Sub

Private Sub cboSort_Click()
    SortAndDisplayResults
End Sub

Private Sub chkTest3rdParty_Click()
    SetupTest m_LastTestedFile, m_LastTestedFile
End Sub

Private Sub chkTestWindowsLibraries_Click()
    SetupTest m_LastTestedFile, m_LastTestedFile
End Sub

Private Sub chkEngine_Click(Index As Integer)
    SetupTest m_LastTestedFile, m_LastTestedFile
End Sub

Private Sub Form_Load()
    
    'You don't need this line of code in your own project, but here, we want to measure how long each
    ' compression test takes.  We do this with help from some Windows APIs that must be initialized in advance.
    VBHacks.EnableHighResolutionTimers
    
    'Add sort options
    cboSort.AddItem "Compressor name", 0
    cboSort.AddItem "Compression time (lower is better)", 1
    cboSort.AddItem "Decompression time (lower is better)", 2
    cboSort.AddItem "Compression ratio (higher is better)", 3
    cboSort.AddItem "Compression Ratio vs Total Time (higher is better)", 4
    cboSort.ListIndex = 3
    
    'Add compression level options
    cboLevel.AddItem "Minimum levels", 0
    cboLevel.AddItem "Default levels ", 1
    cboLevel.AddItem "Maximum levels", 2
    cboLevel.AddItem "All three levels", 3
    cboLevel.ListIndex = 1
    
    'Initialize the three compression DLLs.  You can store these DLLs wherever you want, but because
    ' these compression libraries are popular, I *strongly* recommend deploying them locally, inside
    ' your program folder (or in any location where you won't mess with other copies deployed on the
    ' system).
    Dim compressionDLLFolder As String
    compressionDLLFolder = App.Path & "\Plugins\"
    
    'Remember that you only need to initialize the compression engines you'll actually be using.  Most people
    ' won't need to deploy all of these - I just do it here so you can see how they all work.
    If Compression.InitializeCompressionEngine(PD_CE_ZLib, compressionDLLFolder) Then AddText "zLib initialized successfully!" Else AddText "zLib initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_ZLibNG, compressionDLLFolder) Then AddText "zLib-ng initialized successfully!" Else AddText "zLib-ng initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_LibDeflate, compressionDLLFolder) Then AddText "libdeflate initialized successfully!" Else AddText "libdeflate initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_Zstd, compressionDLLFolder) Then AddText "zstd initialized successfully!" Else AddText "zstd initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_Lz4, compressionDLLFolder) Then AddText "lz4 initialized successfully!" Else AddText "lz4 initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_Lz4HC, compressionDLLFolder) Then AddText "lz4_hc initialized successfully!" Else AddText "lz4hc initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_Brotli, compressionDLLFolder) Then AddText "brotli initialized successfully!" Else AddText "lz4hc initialization failed (path = " & compressionDLLFolder & ")"
    If Compression.InitializeCompressionEngine(PD_CE_ZThunk, compressionDLLFolder) Then AddText "zthunk initialized successfully!" Else AddText "zthunk initialization failed (path = " & compressionDLLFolder & ")"
    
    'The Windows compression engines come as a whole group - as long as you're on Windows 8 or later,
    ' they should always initialize successfully.
    If Compression.InitializeCompressionEngine(PD_CE_MSZIP, vbNullString) Then
        Compression.InitializeCompressionEngine PD_CE_XPRESS, vbNullString
        Compression.InitializeCompressionEngine PD_CE_XPRESS_HUFF, vbNullString
        Compression.InitializeCompressionEngine PD_CE_LZMS, vbNullString
        AddText "built-in Windows engines initialized successfully!"
    Else
        AddText "built-in Windows engines initialization failed - are you on Windows 8 or later?"
    End If
        
    'Please note that you also need to shut down any initialized compression engines when you're finished with them.
    ' This is demonstrated in the Form_Unload event of this sample project.
    
    'We're now going to do a quick test of all three compression engines, on three different XML files.
    ' For testing purposes, we're going to measure how well each file is compressed, and how long it takes to
    ' compress/decompress them.
    m_ReadyToGo = True
    SetupTest
    
End Sub

Private Sub Form_Unload(Cancel As Integer)

    'When we're done, we need to shut down all compression engines we started
    Compression.ShutDownCompressionEngine PD_CE_ZLib
    Compression.ShutDownCompressionEngine PD_CE_ZLibNG
    Compression.ShutDownCompressionEngine PD_CE_Zstd
    Compression.ShutDownCompressionEngine PD_CE_Lz4
    Compression.ShutDownCompressionEngine PD_CE_LibDeflate
    Compression.ShutDownCompressionEngine PD_CE_Brotli
    
    'Note that you do not need to shut down the built-in Windows compression engines (but if you do, there's no harm)
    
End Sub

'Set up a series of tests.  If no filename is passed, we'll run a series of tests on the small XML files included
' with the project.
Private Sub SetupTest(Optional ByVal srcFilename As String = vbNullString, Optional ByVal testName As String = vbNullString)
    
    'Failsafe check to ensure everything is loaded
    If (Not m_ReadyToGo) Then Exit Sub
    
    'If the caller supplies their own filename, run a test on that file only
    If (LenB(srcFilename) <> 0) Then
        StartTestOnFile srcFilename, testName
    
    'Otherwise, run a test on a highly compressible XML file included with this project
    Else
        Dim srcTestFile As String
        srcTestFile = App.Path & "\test files\Sample.xml"
        SetupTest srcTestFile, "Sample XML file (UTF-8, multiple languages)"
    End If
    
End Sub

Private Sub StartTestOnFile(ByVal srcFilename As String, ByVal testName As String)
    
    AddText vbCrLf & "Results for " & testName & ":"
    
    'Reset our compression results table
    ReDim m_CompressionResults(0 To 15) As PD_CompressionResult
    m_NumOfResults = 0
    
    Dim testMin As Boolean, testDefault As Boolean, testMax As Boolean
    testMin = (cboLevel.ListIndex = 0) Or (cboLevel.ListIndex = 3)
    testDefault = (cboLevel.ListIndex = 1) Or (cboLevel.ListIndex = 3)
    testMax = (cboLevel.ListIndex = 2) Or (cboLevel.ListIndex = 3)
    
    'If the user wants 3rd-party libraries tested, do them now
    Dim i As PD_CompressionEngine
    For i = PD_CE_NoCompression To [_PD_CE_Last] - 1
        
        If Compression.IsCompressionEngineAvailable(i) And (chkEngine(i).Value = vbChecked) Then
            
            'For baseline memcmp mode, only perform one test
            If (i = PD_CE_NoCompression) Then
                TestCompressionEngine i, srcFilename
                
            'For built-in Windows engines, only perform one test (as they do not support variable levels)
            ElseIf (i = PD_CE_MSZIP) Or (i = PD_CE_XPRESS) Or (i = PD_CE_XPRESS_HUFF) Or (i = PD_CE_LZMS) Then
                TestCompressionEngine i, srcFilename
            
            'All 3rd-party libraries support tunable compression levels
            Else
                If testMin Then TestCompressionEngine i, srcFilename, Compression.GetMinCompressionLevel(i)
                If testDefault Then TestCompressionEngine i, srcFilename
                If testMax Then TestCompressionEngine i, srcFilename, Compression.GetMaxCompressionLevel(i)
            End If
            
        End If
        
    Next i
    
    'With all tests complete, sort the output and display it to the window
    SortAndDisplayResults
    
End Sub

Private Sub SortAndDisplayResults()
    
    If (m_NumOfResults = 0) Then Exit Sub
    
    'This bunch of gibberish just prints out some nice headers for the testing data
    Dim columnSeparator As String, headerText As String
    columnSeparator = vbTab & "|" & Space$(3)
    headerText = "Engine" & vbTab & columnSeparator & "Comp. time" & columnSeparator & "Decomp. time" & columnSeparator & "Comp. ratio" & columnSeparator & "Ratio / Time" & columnSeparator & "Level tested" & vbCrLf & String$(140, "-")
    AddText vbCrLf & headerText
    
    'Sort the compression test results by the user's current sort choice
    Dim sortType As PD_SortResults
    sortType = cboSort.ListIndex
    
    Dim i As Long, j As Long
    For i = 0 To m_NumOfResults - 1
    For j = 0 To m_NumOfResults - 1
    
        'Sort based on the selected criteria
        If (sortType = sr_SortByName) Then
            If (StrComp(m_CompressionResults(i).CompressorName, m_CompressionResults(j).CompressorName, vbTextCompare) < 0) Then SwapCompResults i, j
        ElseIf (sortType = sr_SortByCompTime) Then
            If (m_CompressionResults(i).CompressionTime < m_CompressionResults(j).CompressionTime) Then SwapCompResults i, j
        ElseIf (sortType = sr_SortByDecompTime) Then
            If (m_CompressionResults(i).DecompressionTime < m_CompressionResults(j).DecompressionTime) Then SwapCompResults i, j
        ElseIf (sortType = sr_SortByCompRatio) Then
            If (m_CompressionResults(i).CompressionRatio > m_CompressionResults(j).CompressionRatio) Then SwapCompResults i, j
        ElseIf (sortType = sr_SortByRatioVsTime) Then
            If (m_CompressionResults(i).CompRatioVsTime > m_CompressionResults(j).CompRatioVsTime) Then SwapCompResults i, j
        End If
        
    Next j
    Next i
    
    'Post the finished list to the text box
    Dim compRatioTimeText As String
    For i = 0 To m_NumOfResults - 1
        
        '(Sorry for the complexity of this block; it's mostly just to format everything nicely before
        ' dumping it out to the text box.)
        With m_CompressionResults(i)
            
            compRatioTimeText = Format$(.CompRatioVsTime, "0.00")
            If (Len(compRatioTimeText) < 7) Then compRatioTimeText = compRatioTimeText & vbTab
            
            AddText .CompressorName & columnSeparator & MakeTimePretty(.CompressionTime) & columnSeparator & MakeTimePretty(.DecompressionTime) & columnSeparator & Format$(.CompressionRatio, "00.00") & "%" & columnSeparator & compRatioTimeText & columnSeparator & .EngineDetails
            
        End With
        
    Next i
    
    'After the test, move the cursor to the end of the results textbox
    txtResults.SelStart = Len(txtResults.Text)
    
End Sub

Private Sub SwapCompResults(ByVal resOneIndex As Long, ByRef resTwoIndex As Long)
    Dim tmpResult As PD_CompressionResult
    tmpResult = m_CompressionResults(resOneIndex)
    m_CompressionResults(resOneIndex) = m_CompressionResults(resTwoIndex)
    m_CompressionResults(resTwoIndex) = tmpResult
End Sub

Private Sub TestCompressionEngine(ByVal whichEngine As PD_CompressionEngine, ByRef srcFile As String, Optional ByVal compressionLevel As Long = -1)

    'Start by loading the source file into a byte array
    Dim fileNum As Integer
    Dim fileBytes() As Byte
    
    fileNum = FreeFile
    Open srcFile For Binary As #fileNum
        ReDim fileBytes(0 To LOF(fileNum) - 1) As Byte
        Get fileNum, , fileBytes
    Close #fileNum
    
    'Note the original size of the file - we'll use this to calculate a "compression ratio", or how well
    ' this compression engine is able to compress the original data.
    Dim originalSize As Long
    originalSize = UBound(fileBytes) + 1
        
    'We also need to declare a second array; this one receives the compressed bytes
    Dim compressedBytes() As Byte
    
    'To demonstrate that compression is perfectly lossless, we're going to decompress the data into a
    ' separate array, then compare the results to the original file.  If every byte matches, we'll know
    ' our functions are working properly!
    Dim testDecompressionBytes() As Byte
    
    'For testing purposes, we want to know how long compression and decompression takes.
    Dim startTime As Currency, totalCompressionTime As Currency, totalDecompressionTime As Currency
    VBHacks.GetHighResTime startTime
    
    'Now, we test compression!  Note that you *must* pass the compression function an extra Long-type variable.
    ' This variable receives the final size of the compressed data.  Compression always starts with a large array
    ' (because we don't know in advance how small our data is going to be compressed), but it will only use some
    ' sub-portion of that array.  After compression finishes, this Long value tells you how many bytes were
    ' actually filled in the final array.
    Dim finalCompressedSize As Long
    
    'For simplicity, the main compression function asks for a source pointer.  I know this is anathema to most
    ' VB developers, but it greatly simplifies the compression interface.  If you have questions about how to
    ' get the pointer of a VB variable, feel free to ask in the original forum thread.
    If Compression.CompressPtrToDstArray(compressedBytes, finalCompressedSize, VarPtr(fileBytes(0)), originalSize, whichEngine, compressionLevel) Then
    
        'Note the time it took to compress the data
        totalCompressionTime = VBHacks.GetTimerDifferenceNow(startTime)
        
        'Start a new time measurement; this one is for decompression time
        VBHacks.GetHighResTime startTime
        
        'Decompress the data
        If Compression.DecompressPtrToDstArray(testDecompressionBytes, originalSize, VarPtr(compressedBytes(0)), finalCompressedSize, whichEngine) Then
        
            'Note how long it took to decompress the data
            totalDecompressionTime = VBHacks.GetTimerDifferenceNow(startTime)
            
            Dim columnSeparator As String
            columnSeparator = vbTab & "|" & vbTab
            
            'As a failsafe, make sure the decompressed data is a byte-for-byte match against the original data
            Dim posOfMismatch As Long
            If VBHacks.MemCmp(VarPtr(fileBytes(0)), VarPtr(testDecompressionBytes(0)), originalSize, posOfMismatch) Then
                
                'Convert the compression level into something a bit more readable
                Dim cmpLevelText As String
                
                If (whichEngine = PD_CE_NoCompression) Or (whichEngine = PD_CE_MSZIP) Or (whichEngine = PD_CE_XPRESS) Or (whichEngine = PD_CE_XPRESS_HUFF) Or (whichEngine = PD_CE_LZMS) Then
                    cmpLevelText = "n/a"
                Else
                
                    If (compressionLevel = Compression.GetMinCompressionLevel(whichEngine)) Then
                        cmpLevelText = "Minimum (" & CStr(compressionLevel) & ")"
                    ElseIf (compressionLevel = Compression.GetMaxCompressionLevel(whichEngine)) Then
                        cmpLevelText = "Maximum (" & CStr(compressionLevel) & ")"
                    ElseIf (compressionLevel = ((Compression.GetMinCompressionLevel(whichEngine) + Compression.GetMaxCompressionLevel(whichEngine)) \ 2)) Then
                        cmpLevelText = "Middle (" & CStr(compressionLevel) & ")"
                    ElseIf (compressionLevel = -1) Or (compressionLevel = Compression.GetDefaultCompressionLevel(whichEngine)) Then
                        cmpLevelText = "Default (" & CStr(Compression.GetDefaultCompressionLevel(whichEngine)) & ")"
                    Else
                        cmpLevelText = CStr(compressionLevel)
                    End If
                    
                End If
                
                'Add these results to our compression table
                If (m_NumOfResults > UBound(m_CompressionResults)) Then ReDim Preserve m_CompressionResults(0 To m_NumOfResults * 2 - 1) As PD_CompressionResult
                
                With m_CompressionResults(m_NumOfResults)
                    .CompressorName = GetCompressorName(whichEngine)
                    .CompressionTime = totalCompressionTime
                    .DecompressionTime = totalDecompressionTime
                    .CompressionRatio = 100# * (1# - (finalCompressedSize / originalSize))
                    If (.CompressionTime <> 0#) Then
                        .CompRatioVsTime = .CompressionRatio / (.DecompressionTime + .CompressionTime)
                    Else
                        .CompRatioVsTime = 0#
                    End If
                    .EngineDetails = cmpLevelText
                End With
                
                m_NumOfResults = m_NumOfResults + 1
                
            Else
                AddText "WARNING! " & Replace$(GetCompressorName(whichEngine), vbTab, vbNullString) & " compression/decompression cycle (level " & compressionLevel & ") was not lossless; mismatch occured at position " & posOfMismatch & " of " & originalSize & " bytes."
            End If
        
        Else
            AddText "WARNING! " & Replace$(GetCompressorName(whichEngine), vbTab, vbNullString) & " decompression test (level " & compressionLevel & ") failed for unknown reasons."
        End If
    
    Else
        AddText "WARNING! " & Replace$(GetCompressorName(whichEngine), vbTab, vbNullString) & " compression test (level " & compressionLevel & ") failed for unknown reasons."
    End If
    
    'After the test, move the cursor to the end of the results textbox
    txtResults.SelStart = Len(txtResults.Text)
    
End Sub

'This helper function just reports the name of a given compression engine.
Private Function GetCompressorName(ByVal whichEngine As PD_CompressionEngine) As String
    If (whichEngine = PD_CE_NoCompression) Then
        GetCompressorName = "None" & vbTab
    ElseIf (whichEngine = PD_CE_ZLib) Then
        GetCompressorName = "Zlib" & vbTab
    ElseIf (whichEngine = PD_CE_ZLibNG) Then
        GetCompressorName = "Zlib-ng" & vbTab
    ElseIf (whichEngine = PD_CE_LibDeflate) Then
        GetCompressorName = "libdeflate" & vbTab
    ElseIf (whichEngine = PD_CE_Zstd) Then
        GetCompressorName = "Zstd" & vbTab
    ElseIf (whichEngine = PD_CE_Lz4) Then
        GetCompressorName = "Lz4" & vbTab
    ElseIf (whichEngine = PD_CE_Lz4HC) Then
        GetCompressorName = "Lz4_HC" & vbTab
    ElseIf (whichEngine = PD_CE_Brotli) Then
        GetCompressorName = "brotli" & vbTab
    ElseIf (whichEngine = PD_CE_ZThunk) Then
        GetCompressorName = "ZipThunk" & vbTab
    ElseIf (whichEngine = PD_CE_MSZIP) Then
        GetCompressorName = "MSZIP" & vbTab
    ElseIf (whichEngine = PD_CE_XPRESS) Then
        GetCompressorName = "XPRESS" & vbTab
    ElseIf (whichEngine = PD_CE_XPRESS_HUFF) Then
        GetCompressorName = "XPRESS_HUFF"
    ElseIf (whichEngine = PD_CE_LZMS) Then
        GetCompressorName = "LZMS" & vbTab
    End If
End Function

'This helper function just formats a timing result in a human-readable way
Private Function MakeTimePretty(ByRef srcTime As Double) As String
    MakeTimePretty = Format$(srcTime * 1000, "#0000.00") & " ms"
End Function

Private Sub AddText(ByRef srcString As String)
    txtResults.Text = txtResults.Text & srcString & vbCrLf
End Sub

Private Sub txtResults_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Data.GetFormat(vbCFFiles) Then
        m_LastTestedFile = Data.Files(1)
        SetupTest m_LastTestedFile, m_LastTestedFile
    End If
End Sub
