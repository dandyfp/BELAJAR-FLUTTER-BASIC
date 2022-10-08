object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Salary Karyawan'
  ClientHeight = 278
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 41
    Align = alTop
    Caption = 'Perhitungan Gaji Karyawan PT.CJDW'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 237
    Width = 719
    Height = 41
    Align = alBottom
    Caption = 'Gaji Bersih :'
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 337
    Height = 196
    Align = alLeft
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 21
      Width = 68
      Height = 13
      Caption = 'NIK Karyawan'
    end
    object Label2: TLabel
      Left = 6
      Top = 49
      Width = 78
      Height = 13
      Caption = 'Nama Karyawan'
    end
    object Label3: TLabel
      Left = 22
      Top = 73
      Width = 62
      Height = 13
      Caption = 'Banyak Anak'
    end
    object Label4: TLabel
      Left = 11
      Top = 101
      Width = 73
      Height = 13
      Caption = 'Gaji Pokok (Rp)'
    end
    object EditNikKar: TEdit
      Left = 128
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyPress = EditNikKarKeyPress
    end
    object EditNama: TEdit
      Left = 128
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
      OnKeyPress = EditNamaKeyPress
    end
    object EditBnykAnak: TEdit
      Left = 128
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 2
      OnKeyPress = EditBnykAnakKeyPress
    end
    object EditGP: TEdit
      Left = 128
      Top = 97
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object BtnInputLg: TButton
      Left = 168
      Top = 152
      Width = 97
      Height = 38
      Caption = 'Input Lagi'
      TabOrder = 4
      OnClick = BtnInputLgClick
    end
    object BtnHitungGj: TButton
      Left = 65
      Top = 152
      Width = 97
      Height = 38
      Caption = 'Hitung Gaji'
      TabOrder = 5
      OnClick = BtnHitungGjClick
    end
  end
  object Panel4: TPanel
    Left = 337
    Top = 41
    Width = 382
    Height = 196
    Align = alClient
    TabOrder = 3
    object Label5: TLabel
      Left = 23
      Top = 17
      Width = 73
      Height = 13
      Caption = 'Tunjangan Istri'
    end
    object Label6: TLabel
      Left = 18
      Top = 44
      Width = 78
      Height = 13
      Caption = 'Tunjangan Anak'
    end
    object Label7: TLabel
      Left = 18
      Top = 71
      Width = 78
      Height = 13
      Caption = 'Total Tunjangan'
    end
    object Label8: TLabel
      Left = 49
      Top = 98
      Width = 47
      Height = 13
      Caption = 'Gaji Kotor'
    end
    object Label9: TLabel
      Left = 69
      Top = 125
      Width = 27
      Height = 13
      Caption = 'Zakat'
    end
    object EditTIstri: TEdit
      Left = 112
      Top = 14
      Width = 121
      Height = 21
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object EditTAnak: TEdit
      Left = 112
      Top = 41
      Width = 121
      Height = 21
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object EditTotalTunj: TEdit
      Left = 112
      Top = 68
      Width = 121
      Height = 21
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object EditGajiKotor: TEdit
      Left = 112
      Top = 95
      Width = 121
      Height = 21
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EditZakat: TEdit
      Left = 112
      Top = 122
      Width = 121
      Height = 21
      Color = clWindowText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
end
