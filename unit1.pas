unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, TAGraph, TASources, TASeries, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button_Start: TButton;
    Button_New_Random: TButton;
    Chart2LineSeries1: TLineSeries;
    Chart6: TChart;
    Chart6LineSeries1: TLineSeries;
    Chart6LineSeries2: TLineSeries;
    Image_Correlation_Coefficient_of_Source_1: TImage;
    Image_Correlation_Coefficient_of_Source_2: TImage;
    Image_Standard_Deviation: TImage;
    Image_StandardErrorOfTheMean: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3_Equation01: TLabel;
    Label3_Equation02: TLabel;
    Label_CompairSourceDistanceA02: TLabel;
    Label_CompairSourceDistanceB02: TLabel;
    Label_CompairSourceDistanceC02: TLabel;
    Label_CompairSourceDistanceD02: TLabel;
    Label_CompairSourceDistanceE02: TLabel;
    Label_CompairSourceErrorPercentAB02: TLabel;
    Label_CompairSourceErrorPercentBC02: TLabel;
    Label_CompairSourceErrorPercentCD02: TLabel;
    Label_CompairSourceErrorPercentDE02: TLabel;
    Label_CompairSourceErrorPercentE02: TLabel;
    Label_CompairSourceName02: TLabel;
    Label_Correlation_Coefficient_of_Source_1: TLabel;
    Label_AvgSource1: TLabel;
    Label_AvgSource2: TLabel;
    Label_AvgSource3: TLabel;
    Label_AvgSource4: TLabel;
    Label_CloseOrderPriceSource1: TLabel;
    Label_CloseOrderPriceSource2: TLabel;
    Label_CloseOrderPriceSource3: TLabel;
    Label_CloseOrderPriceSource4: TLabel;
    Label_Correlation_Coefficient_of_Source_2: TLabel;
    Label_DistanceAB02: TLabel;
    Label_DistanceAC02: TLabel;
    Label_DistanceBC02: TLabel;
    Label_DistanceBD02: TLabel;
    Label_DistanceCD02: TLabel;
    Label_DistanceCE02: TLabel;
    Label_DistanceDE02: TLabel;
    Label_Source10: TLabel;
    Label_Source1_Avg_Xbar_Mean: TLabel;
    Label_Source1_Standard_S: TLabel;
    Label_Source1_StandardError: TLabel;
    Label_Source2_Avg_Xbar_Mean: TLabel;
    Label_Source2_Standard_S: TLabel;
    Label_Source2_StandardError: TLabel;
    Label_Source9: TLabel;
    Label_SourceName02: TLabel;
    Label_StandardErrorOfTheMean: TLabel;
    Label_Source2_r: TLabel;
    Label_Source1_Summation_X: TLabel;
    Label_Correlation: TLabel;
    Label_Correlation1: TLabel;
    Label_Correlation2: TLabel;
    Label_Correlation2__: TLabel;
    Label_Correlation2__1: TLabel;
    Label_Correlation3: TLabel;
    Label_Correlation_: TLabel;
    Label_Correlation_1: TLabel;
    Label_Dif_Source1_AvgSource1: TLabel;
    Label_Dif_Source1_AvgSource2: TLabel;
    Label_Dif_Source2_AvgSource2: TLabel;
    Label_Dif_Source2_AvgSource3: TLabel;
    Label_I1: TLabel;
    Label_I1_: TLabel;
    Label_I1_1: TLabel;
    Label_I2: TLabel;
    Label_S1: TLabel;
    Label_S1_: TLabel;
    Label_S1_1: TLabel;
    Label_S2: TLabel;
    Label_Serquent: TLabel;
    Label_Counter: TLabel;
    Label_Source1: TLabel;
    Label_Source2_Summation_X: TLabel;
    Label_Source2_Summation_X_power: TLabel;
    Label_Source2_Summation_X_Y: TLabel;
    Label_Source1_Summation_Y: TLabel;
    Label_Source1_Summation_X_power: TLabel;
    Label_Source1_Summation_X_Y: TLabel;
    Label_Source2_Summation_Y: TLabel;
    Label_Source1_Summation_Y_power: TLabel;
    Label_Source1_r: TLabel;
    Label_Source2_Summation_Y_power: TLabel;
    Label_Source2: TLabel;
    Label_Source3: TLabel;
    Label_Source4: TLabel;
    Label_Source5: TLabel;
    Label_Source6: TLabel;
    Label_Source7: TLabel;
    Label_Source8: TLabel;
    Label_Sqrt_I1_S1: TLabel;
    Label_Sqrt_I1_S2: TLabel;
    Label_Zigzag01: TLabel;
    Label_CompairSourceErrorPercentCD01: TLabel;
    Label_CompairSourceErrorPercentDE01: TLabel;
    Label_DistanceAC01: TLabel;
    Label_DistanceCE01: TLabel;
    Label_DistanceBD01: TLabel;
    Label_CompairSourceDistanceA01: TLabel;
    Label_CompairSourceDistanceB01: TLabel;
    Label_CompairSourceDistanceC01: TLabel;
    Label_CompairSourceDistanceD01: TLabel;
    Label_CompairSourceDistanceE01: TLabel;
    Label_SourceName01: TLabel;
    Label_CompairSourceErrorPercentE01: TLabel;
    Label_CompairSourceName01: TLabel;
    Label_DistanceAB01: TLabel;
    Label_DistanceBC01: TLabel;
    Label_DistanceCD01: TLabel;
    Label_DistanceDE01: TLabel;
    Label_CompairSourceErrorPercentAB01: TLabel;
    Label_CompairSourceErrorPercentBC01: TLabel;
    Label_U: TLabel;
    Label_U1: TLabel;
    Label_U_: TLabel;
    Label_U_1: TLabel;
    Label_Zigzag02: TLabel;
    PageControl2: TPageControl;
    Shape1: TShape;
    Shape10: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Source1_1: TEdit;
    Source1_2: TEdit;
    Source1_3: TEdit;
    Source1_4: TEdit;
    Source1_5: TEdit;
    Source2_1: TEdit;
    Source2_2: TEdit;
    Source2_3: TEdit;
    Source2_4: TEdit;
    Source2_5: TEdit;
    TabSheet1_Zigzag02: TTabSheet;
    TabSheet_Zigzag01: TTabSheet;
    TabSheet_StandardErrorOfTheMean: TTabSheet;
    TabSheet_Correlation_Coefficient_of_Source_2: TTabSheet;
    TabSheet_Correlation_Coefficient_of_Source_1: TTabSheet;
    TabSheet_Equation01: TTabSheet;
    TabSheet_Equation02: TTabSheet;
    _Source1_: TListChartSource;
    _Base_: TListChartSource;
    _Source2_: TListChartSource;
    PageControl1: TPageControl;
    TTabSheet_Database: TTabSheet;
    TTabSheet_Chart: TTabSheet;
    Timer1: TTimer;
    procedure Button_StartClick(Sender: TObject);
    procedure Button_New_RandomClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CreateData01();
    procedure Timer1Timer(Sender: TObject);
    procedure Cal_StandardErrorOfTheMean();
    procedure Cal_();
    procedure Cal_CorrelationCoefficient();
    procedure Cal_ZigZag();
    procedure DisplayStatus();
    procedure Source1_Up_To_TargetSource1(Loop_: integer);
    procedure Source1_Down_To_Base(Loop_: integer);
    procedure Source1_Down_To_TargetSource2(Loop_: integer);
    procedure Source1_Up_To_Base(Loop_: integer);
    procedure Source2_Down_To_TarrgetSource2(Loop_: integer);
    procedure Source2_Up_To_Base(Loop_: integer);
    procedure Source2_Up_To_TargetSource1(Loop_: integer);
    procedure Source2_Down_To_Base(Loop_: integer);
    procedure Source1_Up_To_TargetSource1_Source2_Down_To_TargetSource2(Loop_: integer);
    procedure Source1_Down_To_TargetSource2_Source2_Up_To_TargetSource1(Loop_: integer);
    procedure Source1_Up_To_Base_Source2_Down_To_Base(Loop_: integer);
  private

  public

  end;
  Type
  CalFunction = Record
    AvgSource1_:double;
    AvgSource2_:double;
    CloseOrderPriceSource1:double;
    CloseOrderPriceSource2:double;
    Dif_Source1_AvgSource1:double;
    Dif_Source2_AvgSource2:double;
    U_:double;
    I1_:double;
    S1_:Double;
    Sqrt_I1_S1:Double;
    Correlation_:double;
    Correlation2_:double;
  end;

  Type
  Correlation_Coefficient = Record
    Summation_X:double;
    Summation_Y:double;
    Summation_X_Y:double;
    Summation_X_power:double;
    Summation_Y_power:double;
    r_:double;
  end;

  Type
  StandardErrorOfTheMean = Record
    Avg_Xbar_Mean:double;
    Standard_S:double;
    StandardError:double;
  end;

  Type
  Zigzag_data = Record
    SourceName:string;
    CompairSourceName:string;
    DistanceAB:double;
    DistanceBC:double;
    DistanceCD:double;
    DistanceDE:double;
    CompairSourceErrorPercentAB:double;
    CompairSourceErrorPercentBC:double;
    CompairSourceErrorPercentCD:double;
    CompairSourceErrorPercentDE:double;
    DistanceAC:double;
    DistanceCE:double;
    DistanceBD:double;
    CompairSourceDistanceA:double;
    CompairSourceDistanceB:double;
    CompairSourceDistanceC:double;
    CompairSourceDistanceD:double;
    CompairSourceDistanceE:double;
    CompairSourceErrorPercentE:double;
  end;

var
  Form1: TForm1;
  Base_: array of integer;
  CurrentSource1: array of integer;
  TargetSource1: array of integer;
  CurrentSource2: array of integer;
  TargetSource2: array of integer;
  Counter_: integer;
  Serquent_:integer;
  TotalPointerX:integer;
  CalFunction1:CalFunction;
  CalFunction2:CalFunction;

  CorrelationCoefficient1:Correlation_Coefficient;
  CorrelationCoefficient2:Correlation_Coefficient;

  StandardErrorOfTheMean1:StandardErrorOfTheMean;
  StandardErrorOfTheMean2:StandardErrorOfTheMean;

  Zigzag_data1:Zigzag_data;
  Zigzag_data2:Zigzag_data;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  TotalPointerX:=5;

  Randomize();
  Setlength(Base_,TotalPointerX);
  Setlength(CurrentSource1,TotalPointerX);
  Setlength(TargetSource1,TotalPointerX);
  Setlength(CurrentSource2,TotalPointerX);
  Setlength(TargetSource2,TotalPointerX);

  CreateData01();

  Cal_StandardErrorOfTheMean();
  Cal_();
  Cal_CorrelationCoefficient();
  Cal_ZigZag();
  DisplayStatus();
  //Chart6.LeftAxis.Range.UseMax:=True;
  //Chart6.LeftAxis.Range.UseMin:=True;
end;

procedure TForm1.CreateData01();
var
  i: integer;
  TotalBase:integer;
  //TotalTargetSource:integer;
  //Finlish_:boolean;
  Gain_:integer;
begin
  Counter_:=0;
  Serquent_:=0;

  CalFunction1.AvgSource1_:=0;
  CalFunction1.AvgSource2_:=0;
  CalFunction1.CloseOrderPriceSource1:=0;
  CalFunction1.CloseOrderPriceSource2:=0;
  CalFunction1.Dif_Source1_AvgSource1:=0;
  CalFunction1.Dif_Source2_AvgSource2:=0;
  CalFunction1.U_:=0;
  CalFunction1.I1_:=0;
  CalFunction1.S1_:=0;
  CalFunction1.Correlation_:=0;
  CalFunction1.Correlation2_:=0;

  CalFunction2.AvgSource1_:=0;
  CalFunction2.AvgSource2_:=0;
  CalFunction2.CloseOrderPriceSource1:=0;
  CalFunction2.CloseOrderPriceSource2:=0;
  CalFunction2.Dif_Source1_AvgSource1:=0;
  CalFunction2.Dif_Source2_AvgSource2:=0;
  CalFunction2.U_:=0;
  CalFunction2.I1_:=0;
  CalFunction2.S1_:=0;
  CalFunction2.Correlation_:=0;
  CalFunction2.Correlation2_:=0;

  CorrelationCoefficient1.Summation_X:=0;
  CorrelationCoefficient1.Summation_Y:=0;
  CorrelationCoefficient1.Summation_X_Y:=0;
  CorrelationCoefficient1.Summation_X_power:=0;
  CorrelationCoefficient1.Summation_Y_power:=0;
  CorrelationCoefficient1.r_:=0;

  CorrelationCoefficient2.Summation_X:=0;
  CorrelationCoefficient2.Summation_Y:=0;
  CorrelationCoefficient2.Summation_X_Y:=0;
  CorrelationCoefficient2.Summation_X_power:=0;
  CorrelationCoefficient2.Summation_Y_power:=0;
  CorrelationCoefficient2.r_:=0;

  StandardErrorOfTheMean1.Avg_Xbar_Mean:=0;
  StandardErrorOfTheMean1.Standard_S:=0;
  StandardErrorOfTheMean1.StandardError:=0;

  StandardErrorOfTheMean2.Avg_Xbar_Mean:=0;
  StandardErrorOfTheMean2.Standard_S:=0;
  StandardErrorOfTheMean2.StandardError:=0;

  Zigzag_data1.SourceName:='Zigzag_data1';
  Zigzag_data1.CompairSourceName:='';
  Zigzag_data1.DistanceAB:=0;
  Zigzag_data1.DistanceBC:=0;
  Zigzag_data1.DistanceCD:=0;
  Zigzag_data1.DistanceDE:=0;
  Zigzag_data1.CompairSourceErrorPercentAB:=0;
  Zigzag_data1.CompairSourceErrorPercentBC:=0;
  Zigzag_data1.CompairSourceErrorPercentCD:=0;
  Zigzag_data1.CompairSourceErrorPercentDE:=0;
  Zigzag_data1.DistanceAC:=0;
  Zigzag_data1.DistanceCE:=0;
  Zigzag_data1.DistanceBD:=0;
  Zigzag_data1.CompairSourceDistanceA:=0;
  Zigzag_data1.CompairSourceDistanceB:=0;
  Zigzag_data1.CompairSourceDistanceC:=0;
  Zigzag_data1.CompairSourceDistanceD:=0;
  Zigzag_data1.CompairSourceDistanceE:=0;
  Zigzag_data1.CompairSourceErrorPercentE:=0;

  Zigzag_data2.SourceName:='Zigzag_data2';
  Zigzag_data2.CompairSourceName:='';
  Zigzag_data2.DistanceAB:=0;
  Zigzag_data2.DistanceBC:=0;
  Zigzag_data2.DistanceCD:=0;
  Zigzag_data2.DistanceDE:=0;
  Zigzag_data2.CompairSourceErrorPercentAB:=0;
  Zigzag_data2.CompairSourceErrorPercentBC:=0;
  Zigzag_data2.CompairSourceErrorPercentCD:=0;
  Zigzag_data2.CompairSourceErrorPercentDE:=0;
  Zigzag_data2.DistanceAC:=0;
  Zigzag_data2.DistanceCE:=0;
  Zigzag_data2.DistanceBD:=0;
  Zigzag_data2.CompairSourceDistanceA:=0;
  Zigzag_data2.CompairSourceDistanceB:=0;
  Zigzag_data2.CompairSourceDistanceC:=0;
  Zigzag_data2.CompairSourceDistanceD:=0;
  Zigzag_data2.CompairSourceDistanceE:=0;
  Zigzag_data2.CompairSourceErrorPercentE:=0;

  Zigzag_data1.CompairSourceName:=Zigzag_data2.SourceName;
  Zigzag_data2.CompairSourceName:=Zigzag_data1.SourceName;

  if (random(2)<=0) then
  begin    //Start pointer at heigh
    Base_[0]:=random(25)+65;
    Base_[1]:=random(20)+15;
    Base_[2]:=random(35)+60;
    Base_[3]:=random(25)+15;
    Base_[4]:=random(25)+70;
  end
  else
  begin    //Start pointer at low
    Base_[0]:=random(20)+15;
    Base_[1]:=random(25)+65;
    Base_[2]:=random(20)+20;
    Base_[3]:=random(25)+70;
    Base_[4]:=random(25)+15;
  end;

  TotalBase:=0;
  for i:=0 to TotalPointerX-1 do
  begin
   TotalBase:=TotalBase+Base_[i];
  end;

  Gain_:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    Gain_:=Gain_+9;
    TargetSource1[i]:=Round((((100-Base_[i])/100)*Gain_)+Base_[i]);
    TargetSource2[i]:=Round(Base_[i]-(((Base_[i]-0)/100)*Gain_));
  end;

  //Finlish_:=false;
  //while Finlish_=false do
  //begin
  //  TotalTargetSource:=0;
  //  for i:=0 to TotalPointerX-1 do
  //  begin
  //   TargetSource1[i]:=random(101);
  //   TotalTargetSource:=TotalTargetSource+TargetSource1[i];
  //  end;
  //  if(TotalTargetSource>TotalBase+30)then Finlish_:=true;
  //end;
  //showmessage(TotalTargetSource.ToString+'>'+TotalBase.ToString);

  //Finlish_:=false;
  //while Finlish_=false do
  //begin
  //  TotalTargetSource:=0;
  //  for i:=0 to TotalPointerX-1 do
  //  begin
  //   TargetSource2[i]:=random(101);
  //   TotalTargetSource:=TotalTargetSource+TargetSource2[i];
  //  end;
  //  if(TotalTargetSource<TotalBase-30)then Finlish_:=true;
  //end;
  //showmessage(TotalTargetSource.ToString+'<'+TotalBase.ToString);

  for i:=0 to TotalPointerX-1 do
  begin
    CurrentSource1[i]:=Base_[i];
    CurrentSource2[i]:=Base_[i];
  end;

  _Source1_.Clear;
  _Base_.Clear;
  _Source2_.Clear;
  for i:=0 to TotalPointerX-1 do
  begin
    _Source1_.Add(i,Base_[i] );
    _Base_.Add(i,Base_[i] );
    _Source2_.Add(i,Base_[i] );
  end;
end;

procedure TForm1.Cal_ZigZag();
begin
  Zigzag_data1.DistanceAB:=CurrentSource1[0]-CurrentSource1[1];
  Zigzag_data1.DistanceBC:=CurrentSource1[1]-CurrentSource1[2];
  Zigzag_data1.DistanceCD:=CurrentSource1[2]-CurrentSource1[3];
  Zigzag_data1.DistanceDE:=CurrentSource1[3]-CurrentSource1[4];
  Zigzag_data1.DistanceAC:=Sqrt(math.Power(0-2,2)+math.Power(CurrentSource1[0]-CurrentSource1[2],2));
  Zigzag_data1.DistanceCE:=Sqrt(math.Power(2-4,2)+math.Power(CurrentSource1[2]-CurrentSource1[4],2));
  Zigzag_data1.DistanceBD:=Sqrt(math.Power(1-3,2)+math.Power(CurrentSource1[1]-CurrentSource1[3],2));

  Zigzag_data2.DistanceAB:=CurrentSource2[0]-CurrentSource2[1];
  Zigzag_data2.DistanceBC:=CurrentSource2[1]-CurrentSource2[2];
  Zigzag_data2.DistanceCD:=CurrentSource2[2]-CurrentSource2[3];
  Zigzag_data2.DistanceDE:=CurrentSource2[3]-CurrentSource2[4];
  Zigzag_data2.DistanceAC:=Sqrt(math.Power(0-2,2)+math.Power(CurrentSource2[0]-CurrentSource2[2],2));
  Zigzag_data2.DistanceCE:=Sqrt(math.Power(2-4,2)+math.Power(CurrentSource2[2]-CurrentSource2[4],2));
  Zigzag_data2.DistanceBD:=Sqrt(math.Power(1-3,2)+math.Power(CurrentSource2[1]-CurrentSource2[3],2));

  Zigzag_data1.CompairSourceErrorPercentAB:=100-((Zigzag_data1.DistanceAB/Zigzag_data2.DistanceAB)*100);
  Zigzag_data1.CompairSourceErrorPercentBC:=100-((Zigzag_data1.DistanceBC/Zigzag_data2.DistanceBC)*100);
  Zigzag_data1.CompairSourceErrorPercentCD:=100-((Zigzag_data1.DistanceCD/Zigzag_data2.DistanceCD)*100);
  Zigzag_data1.CompairSourceErrorPercentDE:=100-((Zigzag_data1.DistanceDE/Zigzag_data2.DistanceDE)*100);

  Zigzag_data2.CompairSourceErrorPercentAB:=100-((Zigzag_data2.DistanceAB/Zigzag_data1.DistanceAB)*100);
  Zigzag_data2.CompairSourceErrorPercentBC:=100-((Zigzag_data2.DistanceBC/Zigzag_data1.DistanceBC)*100);
  Zigzag_data2.CompairSourceErrorPercentCD:=100-((Zigzag_data2.DistanceCD/Zigzag_data1.DistanceCD)*100);
  Zigzag_data2.CompairSourceErrorPercentDE:=100-((Zigzag_data2.DistanceDE/Zigzag_data1.DistanceDE)*100);

  Zigzag_data1.CompairSourceDistanceA:=(CurrentSource1[0]-CurrentSource2[0]);
  Zigzag_data1.CompairSourceDistanceB:=(CurrentSource1[1]-CurrentSource2[1]);
  Zigzag_data1.CompairSourceDistanceC:=(CurrentSource1[2]-CurrentSource2[2]);
  Zigzag_data1.CompairSourceDistanceD:=(CurrentSource1[3]-CurrentSource2[3]);
  Zigzag_data1.CompairSourceDistanceE:=(CurrentSource1[4]-CurrentSource2[4]);
  Zigzag_data1.CompairSourceErrorPercentE:=100-((CurrentSource1[4]/CurrentSource2[4])*100);

  Zigzag_data2.CompairSourceDistanceA:=(CurrentSource2[0]-CurrentSource1[0]);
  Zigzag_data2.CompairSourceDistanceB:=(CurrentSource2[1]-CurrentSource1[1]);
  Zigzag_data2.CompairSourceDistanceC:=(CurrentSource2[2]-CurrentSource1[2]);
  Zigzag_data2.CompairSourceDistanceD:=(CurrentSource2[3]-CurrentSource1[3]);
  Zigzag_data2.CompairSourceDistanceE:=(CurrentSource2[4]-CurrentSource1[4]);
  Zigzag_data2.CompairSourceErrorPercentE:=100-((CurrentSource2[4]/CurrentSource1[4])*100);
end;

procedure TForm1.Cal_StandardErrorOfTheMean();
var
  i: integer;
begin
  StandardErrorOfTheMean1.Avg_Xbar_Mean:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    StandardErrorOfTheMean1.Avg_Xbar_Mean:=StandardErrorOfTheMean1.Avg_Xbar_Mean+CurrentSource1[i];
  end;
  StandardErrorOfTheMean1.Avg_Xbar_Mean:=StandardErrorOfTheMean1.Avg_Xbar_Mean/TotalPointerX;
  for i:=0 to TotalPointerX-1 do
  begin
    StandardErrorOfTheMean1.Standard_S:= Math.Power(CurrentSource1[i]-StandardErrorOfTheMean1.Avg_Xbar_Mean,2)
  end;
  StandardErrorOfTheMean1.Standard_S:=Sqrt(StandardErrorOfTheMean1.Standard_S/(TotalPointerX-1));
  StandardErrorOfTheMean1.StandardError:=StandardErrorOfTheMean1.Standard_S/Sqrt(TotalPointerX);

  StandardErrorOfTheMean2.Avg_Xbar_Mean:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    StandardErrorOfTheMean2.Avg_Xbar_Mean:=StandardErrorOfTheMean2.Avg_Xbar_Mean+CurrentSource2[i];
  end;
  StandardErrorOfTheMean2.Avg_Xbar_Mean:=StandardErrorOfTheMean2.Avg_Xbar_Mean/TotalPointerX;
  for i:=0 to TotalPointerX-1 do
  begin
    StandardErrorOfTheMean2.Standard_S:= Math.Power(CurrentSource2[i]-StandardErrorOfTheMean2.Avg_Xbar_Mean,2)
  end;
  StandardErrorOfTheMean2.Standard_S:=Sqrt(StandardErrorOfTheMean2.Standard_S/(TotalPointerX-1));
  StandardErrorOfTheMean2.StandardError:=StandardErrorOfTheMean2.Standard_S/Sqrt(TotalPointerX);
end;

procedure TForm1.Cal_();
var
  i: integer;
begin
  CalFunction1.AvgSource1_:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    CalFunction1.AvgSource1_:=CalFunction1.AvgSource1_+CurrentSource1[i];
  end;
  CalFunction1.AvgSource1_:=CalFunction1.AvgSource1_/TotalPointerX;

  CalFunction1.AvgSource2_:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    CalFunction1.AvgSource2_:=CalFunction1.AvgSource2_+CurrentSource2[i];
  end;
  CalFunction1.AvgSource2_:=CalFunction1.AvgSource2_/TotalPointerX;


  CalFunction1.CloseOrderPriceSource1:=CurrentSource1[TotalPointerX-1];
  CalFunction1.CloseOrderPriceSource2:=CurrentSource2[TotalPointerX-1];
  CalFunction1.Dif_Source1_AvgSource1:=CalFunction1.CloseOrderPriceSource1-CalFunction1.AvgSource1_;
  CalFunction1.Dif_Source2_AvgSource2:=CalFunction1.CloseOrderPriceSource2-CalFunction1.AvgSource2_;

  CalFunction1.U_:=CalFunction1.Dif_Source1_AvgSource1+CalFunction1.Dif_Source2_AvgSource2;

  CalFunction1.I1_:=Math.Power(CalFunction1.Dif_Source1_AvgSource1,2);
  if(CalFunction1.I1_=0)then CalFunction1.I1_:=0.000001;

  CalFunction1.S1_:=Math.Power(CalFunction1.Dif_Source2_AvgSource2,2);
  if(CalFunction1.S1_=0)then CalFunction1.S1_:=0.000001;

  CalFunction1.Sqrt_I1_S1:=Sqrt(CalFunction1.I1_+CalFunction1.S1_);

  CalFunction1.Correlation_:=CalFunction1.U_/Sqrt(CalFunction1.I1_+CalFunction1.S1_);
  CalFunction1.Correlation2_:= Math.Power(CalFunction1.Correlation_,2)/2;




  CalFunction2.AvgSource1_:=0;
  CalFunction2.AvgSource2_:=0;
  CalFunction2.U_:=0;
  CalFunction2.I1_:=0;
  CalFunction2.S1_:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    CalFunction2.AvgSource1_:=CalFunction2.AvgSource1_+CurrentSource1[i];
    CalFunction2.AvgSource1_:=CalFunction2.AvgSource1_/(i+1);

    CalFunction2.AvgSource2_:=CalFunction2.AvgSource2_+CurrentSource2[i];
    CalFunction2.AvgSource2_:=CalFunction2.AvgSource2_/(i+1);

    CalFunction2.CloseOrderPriceSource1:=CurrentSource1[i];
    CalFunction2.CloseOrderPriceSource2:=CurrentSource2[i];

    CalFunction2.Dif_Source1_AvgSource1:=CalFunction2.CloseOrderPriceSource1-CalFunction2.AvgSource1_;
    CalFunction2.Dif_Source2_AvgSource2:=CalFunction2.CloseOrderPriceSource2-CalFunction2.AvgSource2_;

    CalFunction2.U_:=CalFunction2.U_+CalFunction2.Dif_Source1_AvgSource1*CalFunction2.Dif_Source2_AvgSource2;

    CalFunction2.I1_:=CalFunction2.I1_+Math.Power(CalFunction2.Dif_Source1_AvgSource1,2);
    if(CalFunction2.I1_=0)then CalFunction2.I1_:=0.000001;

    CalFunction2.S1_:=CalFunction2.S1_+Math.Power(CalFunction2.Dif_Source2_AvgSource2,2);
    if(CalFunction2.S1_=0)then CalFunction2.S1_:=0.000001;

    CalFunction2.Sqrt_I1_S1:=Sqrt(CalFunction2.I1_*CalFunction2.S1_);

    CalFunction2.Correlation_:=CalFunction2.U_/Sqrt(CalFunction2.I1_*CalFunction2.S1_);
    CalFunction2.Correlation2_:= Math.Power(CalFunction2.Correlation_,2)/2;
  end;
end;

procedure TForm1.Cal_CorrelationCoefficient();
var
  i: integer;
begin

  CorrelationCoefficient1.Summation_X:=0;
  CorrelationCoefficient1.Summation_Y:=0;
  CorrelationCoefficient1.Summation_X_Y:=0;
  CorrelationCoefficient1.Summation_X_power:=0;
  CorrelationCoefficient1.Summation_Y_power:=0;
  CorrelationCoefficient1.r_:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    CorrelationCoefficient1.Summation_X:=CorrelationCoefficient1.Summation_X+(i+1);
    CorrelationCoefficient1.Summation_Y:=CorrelationCoefficient1.Summation_Y+CurrentSource1[i];
    CorrelationCoefficient1.Summation_X_Y:=CorrelationCoefficient1.Summation_X_Y+((i+1)*CurrentSource1[i]);
    CorrelationCoefficient1.Summation_X_power:=CorrelationCoefficient1.Summation_X_power+Math.Power(i+1,2);
    CorrelationCoefficient1.Summation_Y_power:=CorrelationCoefficient1.Summation_Y_power+Math.Power(CurrentSource1[i],2);
  end;
  CorrelationCoefficient1.r_:=((TotalPointerX)*CorrelationCoefficient1.Summation_X_Y)-(CorrelationCoefficient1.Summation_X*CorrelationCoefficient1.Summation_Y);
  CorrelationCoefficient1.r_:=CorrelationCoefficient1.r_/Sqrt((((TotalPointerX)*CorrelationCoefficient1.Summation_X_power)-Math.Power(CorrelationCoefficient1.Summation_X,2))*(((TotalPointerX)*CorrelationCoefficient1.Summation_Y_power)-Math.Power(CorrelationCoefficient1.Summation_Y,2)));


  CorrelationCoefficient2.Summation_X:=0;
  CorrelationCoefficient2.Summation_Y:=0;
  CorrelationCoefficient2.Summation_X_Y:=0;
  CorrelationCoefficient2.Summation_X_power:=0;
  CorrelationCoefficient2.Summation_Y_power:=0;
  CorrelationCoefficient2.r_:=0;
  for i:=0 to TotalPointerX-1 do
  begin
    CorrelationCoefficient2.Summation_X:=CorrelationCoefficient2.Summation_X+(i+1);
    CorrelationCoefficient2.Summation_Y:=CorrelationCoefficient2.Summation_Y+CurrentSource2[i];
    CorrelationCoefficient2.Summation_X_Y:=CorrelationCoefficient2.Summation_X_Y+((i+1)*CurrentSource2[i]);
    CorrelationCoefficient2.Summation_X_power:=CorrelationCoefficient2.Summation_X_power+Math.Power(i+1,2);
    CorrelationCoefficient2.Summation_Y_power:=CorrelationCoefficient2.Summation_Y_power+Math.Power(CurrentSource2[i],2);
  end;
  CorrelationCoefficient2.r_:=((TotalPointerX)*CorrelationCoefficient2.Summation_X_Y)-(CorrelationCoefficient2.Summation_X*CorrelationCoefficient2.Summation_Y);
  CorrelationCoefficient2.r_:=CorrelationCoefficient2.r_/Sqrt((((TotalPointerX)*CorrelationCoefficient2.Summation_X_power)-Math.Power(CorrelationCoefficient2.Summation_X,2))*(((TotalPointerX)*CorrelationCoefficient2.Summation_Y_power)-Math.Power(CorrelationCoefficient2.Summation_Y,2)));
end;

procedure TForm1.DisplayStatus();
var
  i: integer;
begin
  Label_Serquent.Caption:='Serquent='+Serquent_.ToString;
  if(Serquent_=1)then Label_Serquent.Caption:=Label_Serquent.Caption+'  Maximum Source1';
  if(Serquent_=5)then Label_Serquent.Caption:=Label_Serquent.Caption+'  Minimum Source1';
  if(Serquent_=9)then Label_Serquent.Caption:=Label_Serquent.Caption+'  Minimum Source2';
  if(Serquent_=13)then Label_Serquent.Caption:=Label_Serquent.Caption+'  Maximum Source2';
  if(Serquent_=17)then Label_Serquent.Caption:=Label_Serquent.Caption+'  Maximum Source1 + Minimum Source2';
  if(Serquent_=19)then Label_Serquent.Caption:=Label_Serquent.Caption+'  Minimum Source1 + Maximum Source2';
  Label_Counter.Caption:='Counter='+Counter_.ToString;

  Source1_1.Caption:=CurrentSource1[0].ToString;
  Source1_2.Caption:=CurrentSource1[1].ToString;
  Source1_3.Caption:=CurrentSource1[2].ToString;
  Source1_4.Caption:=CurrentSource1[3].ToString;
  Source1_5.Caption:=CurrentSource1[4].ToString;

  Source2_1.Caption:=CurrentSource2[0].ToString;
  Source2_2.Caption:=CurrentSource2[1].ToString;
  Source2_3.Caption:=CurrentSource2[2].ToString;
  Source2_4.Caption:=CurrentSource2[3].ToString;
  Source2_5.Caption:=CurrentSource2[4].ToString;


  for i:=0 to TotalPointerX-1 do
  begin
    _Source1_.SetXValue(i,i);
    _Source1_.SetYValue(i,CurrentSource1[i]);
    //_Base_.SetXValue(i,i);
    //_Base_.SetYValue(i,Base_[i]);
    _Source2_.SetXValue(i,i);
    _Source2_.SetYValue(i,CurrentSource2[i]);
  end;

  Label_AvgSource1.Caption:='AvgSource1='+CalFunction1.AvgSource1_.ToString;
  Label_AvgSource2.Caption:='AvgSource2='+CalFunction1.AvgSource2_.ToString;
  Label_CloseOrderPriceSource1.Caption:='CloseOrderPriceSource1='+CalFunction1.CloseOrderPriceSource1.ToString;
  Label_CloseOrderPriceSource2.Caption:='CloseOrderPriceSource2='+CalFunction1.CloseOrderPriceSource2.ToString;
  Label_Dif_Source1_AvgSource1.Caption:='Source1-AvgSource1='+CalFunction1.Dif_Source1_AvgSource1.ToString;
  Label_Dif_Source2_AvgSource2.Caption:='Source2-AvgSource2='+CalFunction1.Dif_Source2_AvgSource2.ToString;
  Label_U.Caption:='U='+CalFunction1.U_.ToString;
  Label_I1.Caption:='I1='+CalFunction1.I1_.ToString;
  Label_S1.Caption:='S1='+CalFunction1.S1_.ToString;
  Label_Sqrt_I1_S1.Caption:=' Sqrt( I1 + S1 )='+ CalFunction1.Sqrt_I1_S1.ToString;
  Label_Correlation.Caption:='Correlation='+CalFunction1.Correlation_.ToString;
  Label_Correlation2.Caption:='Correlation2='+CalFunction1.Correlation2_.ToString;

  Label_AvgSource3.Caption:='AvgSource1='+CalFunction2.AvgSource1_.ToString;
  Label_AvgSource4.Caption:='AvgSource2='+CalFunction2.AvgSource2_.ToString;
  Label_CloseOrderPriceSource3.Caption:='CloseOrderPriceSource1='+CalFunction2.CloseOrderPriceSource1.ToString;
  Label_CloseOrderPriceSource4.Caption:='CloseOrderPriceSource2='+CalFunction2.CloseOrderPriceSource2.ToString;
  Label_Dif_Source1_AvgSource2.Caption:='Source1-AvgSource1='+CalFunction2.Dif_Source1_AvgSource1.ToString;
  Label_Dif_Source2_AvgSource3.Caption:='Source2-AvgSource2='+CalFunction2.Dif_Source2_AvgSource2.ToString;
  Label_U1.Caption:='U='+CalFunction2.U_.ToString;
  Label_I2.Caption:='I1='+CalFunction2.I1_.ToString;
  Label_S2.Caption:='S1='+CalFunction2.S1_.ToString;
  Label_Sqrt_I1_S2.Caption:=' Sqrt( I1 * S1 )='+ CalFunction2.Sqrt_I1_S1.ToString;
  Label_Correlation1.Caption:='Correlation='+CalFunction2.Correlation_.ToString;
  Label_Correlation3.Caption:='Correlation2='+CalFunction2.Correlation2_.ToString;

  Label_Source1_Summation_X.Caption:='Sum of X='+CorrelationCoefficient1.Summation_X.ToString;
  Label_Source1_Summation_Y.Caption:='Sum of Y='+CorrelationCoefficient1.Summation_Y.ToString;
  Label_Source1_Summation_X_Y.Caption:='Sum of X*Y='+CorrelationCoefficient1.Summation_X_Y.ToString;
  Label_Source1_Summation_X_power.Caption:='Sum of X^2='+CorrelationCoefficient1.Summation_X_power.ToString;
  Label_Source1_Summation_Y_power.Caption:='Sum of Y^2='+CorrelationCoefficient1.Summation_Y_power.ToString;
  Label_Source1_r.Caption:='r='+CorrelationCoefficient1.r_.ToString;

  Label_Source2_Summation_X.Caption:='Sum of X='+CorrelationCoefficient2.Summation_X.ToString;
  Label_Source2_Summation_Y.Caption:='Sum of Y='+CorrelationCoefficient2.Summation_Y.ToString;
  Label_Source2_Summation_X_Y.Caption:='Sum of X*Y='+CorrelationCoefficient2.Summation_X_Y.ToString;
  Label_Source2_Summation_X_power.Caption:='Sum of X^2='+CorrelationCoefficient2.Summation_X_power.ToString;
  Label_Source2_Summation_Y_power.Caption:='Sum of Y^2='+CorrelationCoefficient2.Summation_Y_power.ToString;
  Label_Source2_r.Caption:='r='+CorrelationCoefficient2.r_.ToString;

  Label_Source1_Avg_Xbar_Mean.Caption:='Source1_Avg_Xbar_Mean='+StandardErrorOfTheMean1.Avg_Xbar_Mean.ToString;
  Label_Source1_Standard_S.Caption:='Source1_Standard_S='+StandardErrorOfTheMean1.Standard_S.ToString;
  Label_Source1_StandardError.Caption:='Source1_StandardError='+StandardErrorOfTheMean1.StandardError.ToString;

  Label_Source2_Avg_Xbar_Mean.Caption:='Source2_Avg_Xbar_Mean='+StandardErrorOfTheMean2.Avg_Xbar_Mean.ToString;
  Label_Source2_Standard_S.Caption:='Source2_Standard_S='+StandardErrorOfTheMean2.Standard_S.ToString;
  Label_Source2_StandardError.Caption:='Source2_StandardError='+StandardErrorOfTheMean2.StandardError.ToString;

  Label_SourceName01.Caption:='SourceName='+Zigzag_data1.SourceName;
  Label_CompairSourceName01.Caption:='CompairSourceName='+Zigzag_data1.CompairSourceName;
  Label_DistanceAB01.Caption:='DistanceAB='+Zigzag_data1.DistanceAB.ToString;
  Label_DistanceBC01.Caption:='DistanceBC='+Zigzag_data1.DistanceBC.ToString;
  Label_DistanceCD01.Caption:='DistanceCD='+Zigzag_data1.DistanceCD.ToString;
  Label_DistanceDE01.Caption:='DistanceDE='+Zigzag_data1.DistanceDE.ToString;
  Label_CompairSourceErrorPercentAB01.Caption:='CompairErrorAB='+Zigzag_data1.CompairSourceErrorPercentAB.ToString+'%';
  Label_CompairSourceErrorPercentBC01.Caption:='CompairErrorBC='+Zigzag_data1.CompairSourceErrorPercentBC.ToString+'%';
  Label_CompairSourceErrorPercentCD01.Caption:='CompairErrorCD='+Zigzag_data1.CompairSourceErrorPercentCD.ToString+'%';
  Label_CompairSourceErrorPercentDE01.Caption:='CompairErrorDE='+Zigzag_data1.CompairSourceErrorPercentDE.ToString+'%';
  Label_DistanceAC01.Caption:='DistanceAC='+Zigzag_data1.DistanceAC.ToString;
  Label_DistanceCE01.Caption:='DistanceCE='+Zigzag_data1.DistanceCE.ToString;
  Label_DistanceBD01.Caption:='DistanceBD='+Zigzag_data1.DistanceBD.ToString;
  Label_CompairSourceDistanceA01.Caption:='CompairDistanceA='+Zigzag_data1.CompairSourceDistanceA.ToString;
  Label_CompairSourceDistanceB01.Caption:='CompairDistanceB='+Zigzag_data1.CompairSourceDistanceB.ToString;
  Label_CompairSourceDistanceC01.Caption:='CompairDistanceC='+Zigzag_data1.CompairSourceDistanceC.ToString;
  Label_CompairSourceDistanceD01.Caption:='CompairDistanceD='+Zigzag_data1.CompairSourceDistanceD.ToString;
  Label_CompairSourceDistanceE01.Caption:='CompairDistanceE='+Zigzag_data1.CompairSourceDistanceE.ToString;
  Label_CompairSourceErrorPercentE01.Caption:='CompairErrorE='+Zigzag_data1.CompairSourceErrorPercentE.ToString+'%';

  Label_SourceName02.Caption:='SourceName='+Zigzag_data2.SourceName;
  Label_CompairSourceName02.Caption:='CompairSourceName='+Zigzag_data2.CompairSourceName;
  Label_DistanceAB02.Caption:='DistanceAB='+Zigzag_data2.DistanceAB.ToString;
  Label_DistanceBC02.Caption:='DistanceBC='+Zigzag_data2.DistanceBC.ToString;
  Label_DistanceCD02.Caption:='DistanceCD='+Zigzag_data2.DistanceCD.ToString;
  Label_DistanceDE02.Caption:='DistanceDE='+Zigzag_data2.DistanceDE.ToString;
  Label_CompairSourceErrorPercentAB02.Caption:='CompairErrorAB='+Zigzag_data2.CompairSourceErrorPercentAB.ToString+'%';
  Label_CompairSourceErrorPercentBC02.Caption:='CompairErrorBC='+Zigzag_data2.CompairSourceErrorPercentBC.ToString+'%';
  Label_CompairSourceErrorPercentCD02.Caption:='CompairErrorCD='+Zigzag_data2.CompairSourceErrorPercentCD.ToString+'%';
  Label_CompairSourceErrorPercentDE02.Caption:='CompairErrorDE='+Zigzag_data2.CompairSourceErrorPercentDE.ToString+'%';
  Label_DistanceAC02.Caption:='DistanceAC='+Zigzag_data2.DistanceAC.ToString;
  Label_DistanceCE02.Caption:='DistanceCE='+Zigzag_data2.DistanceCE.ToString;
  Label_DistanceBD02.Caption:='DistanceBD='+Zigzag_data2.DistanceBD.ToString;
  Label_CompairSourceDistanceA02.Caption:='CompairDistanceA='+Zigzag_data2.CompairSourceDistanceA.ToString;
  Label_CompairSourceDistanceB02.Caption:='CompairDistanceB='+Zigzag_data2.CompairSourceDistanceB.ToString;
  Label_CompairSourceDistanceC02.Caption:='CompairDistanceC='+Zigzag_data2.CompairSourceDistanceC.ToString;
  Label_CompairSourceDistanceD02.Caption:='CompairDistanceD='+Zigzag_data2.CompairSourceDistanceD.ToString;
  Label_CompairSourceDistanceE02.Caption:='CompairDistanceE='+Zigzag_data2.CompairSourceDistanceE.ToString;
  Label_CompairSourceErrorPercentE02.Caption:='CompairErrorE='+Zigzag_data2.CompairSourceErrorPercentE.ToString+'%';


end;

procedure TForm1.Button_StartClick(Sender: TObject);
begin
  Timer1.Enabled:= not Timer1.Enabled;

  if Timer1.Enabled then Button_Start.Caption:='Stop';
  if Not Timer1.Enabled then Button_Start.Caption:='Start';
end;

procedure TForm1.Button_New_RandomClick(Sender: TObject);
var
  i: integer;
begin
  if(timer1.Enabled=true) then
  begin
    timer1.Enabled:=false;
    Button_Start.Caption:='Start';
    for i:=0 to 10000 do
    begin
      Application.ProcessMessages;
    end;
  end;
  CreateData01();
  Cal_StandardErrorOfTheMean();
  Cal_();
  Cal_CorrelationCoefficient();
  Cal_ZigZag();
  DisplayStatus();
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  Loop_:integer;
begin
  Loop_:=40;
  if(Serquent_=0)then   //Source 1 move up to source 1
  begin
    Source1_Up_To_TargetSource1(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=1)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=2)then   //Source 1 move down to base
  begin
    Source1_Down_To_Base(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=3)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=4)then  //Source 1 move down to source 2
  begin
    Source1_Down_To_TargetSource2(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=5)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=6)then  //Source 1 move up to base
  begin
    Source1_Up_To_Base(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=7)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=8)then  //Source 2 move down to source 2
  begin
    Source2_Down_To_TarrgetSource2(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=9)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=10)then   //Source 2 move up to Base
  begin
    Source2_Up_To_Base(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=11)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=12)then   //Source 2 move up to source 1
  begin
    Source2_Up_To_TargetSource1(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=13)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=14)then   //Source 2 move down to base
  begin
    Source2_Down_To_Base(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=15)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=16)then   //Source 1 move up to source 1 and Source 2 move down to source 2
  begin
    Source1_Up_To_TargetSource1_Source2_Down_To_TargetSource2(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=17)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=18)then   //Source 1 move down to source 2 and Source 2 move up to source 1
  begin
    Source1_Down_To_TargetSource2_Source2_Up_To_TargetSource1(Loop_*2);
    Application.ProcessMessages;
  end;

  if(Serquent_=19)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=20)then   //Source 1 move up to base and Source 2 move down to base
  begin
    Source1_Up_To_Base_Source2_Down_To_Base(Loop_);
    Application.ProcessMessages;
  end;

  if(Serquent_=21)then
  begin
    Counter_:=Counter_+1;
    if Counter_>=(Loop_/4) then begin Serquent_:=Serquent_+1; Counter_:=0; end;
    Application.ProcessMessages;
  end;

  if(Serquent_=22)then
  begin
    Counter_:=0;
    Serquent_:=0;
    Application.ProcessMessages;
  end;

  Cal_StandardErrorOfTheMean();
  Cal_();
  Cal_CorrelationCoefficient();
  Cal_ZigZag();
  DisplayStatus();
end;

procedure TForm1.Source1_Up_To_TargetSource1(Loop_: integer);
var
  Tempo_:double;
  i:integer;
Begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=((((TargetSource1[i]-Base_[i])/Loop_)*Counter_)+Base_[i]);
    CurrentSource1[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source1_Down_To_Base(Loop_: integer);
var
  Tempo_:double;
  i:integer;
Begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=(TargetSource1[i]-(((TargetSource1[i]-Base_[i])/Loop_)*Counter_));
    CurrentSource1[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source1_Down_To_TargetSource2(Loop_: integer);
var
  Tempo_:double;
  i:integer;
begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=(Base_[i]-(((Base_[i]-TargetSource2[i])/Loop_)*Counter_));
    CurrentSource1[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source1_Up_To_Base(Loop_: integer);
var
  Tempo_:double;
  i:integer;
begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=((((Base_[i]-TargetSource2[i])/Loop_)*Counter_)+TargetSource2[i]);
    CurrentSource1[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source2_Down_To_TarrgetSource2(Loop_: integer);
var
  Tempo_:double;
  i:integer;
begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=(Base_[i]-(((Base_[i]-TargetSource2[i])/Loop_)*Counter_));
    CurrentSource2[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source2_Up_To_Base(Loop_: integer);
var
  Tempo_:double;
  i:integer;
begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=((((Base_[i]-TargetSource2[i])/Loop_)*Counter_)+TargetSource2[i]);
    CurrentSource2[i]:=Round(Tempo_);
  end;
    Counter_:=Counter_+1;
    if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source2_Up_To_TargetSource1(Loop_: integer);
var
  Tempo_:double;
  i:integer;
begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=((((TargetSource1[i]-Base_[i])/Loop_)*Counter_)+Base_[i]);
    CurrentSource2[i]:=Round(Tempo_);
  end;
    Counter_:=Counter_+1;
    if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source2_Down_To_Base(Loop_: integer);
var
  Tempo_:double;
  i:integer;
begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=(TargetSource1[i]-(((TargetSource1[i]-Base_[i])/Loop_)*Counter_));
    CurrentSource2[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source1_Up_To_TargetSource1_Source2_Down_To_TargetSource2(Loop_: integer);
var
  Tempo_:double;
  i:integer;
Begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=((((TargetSource1[i]-Base_[i])/Loop_)*Counter_)+Base_[i]);
    CurrentSource1[i]:=Round(Tempo_);

    Tempo_:=(Base_[i]-(((Base_[i]-TargetSource2[i])/Loop_)*Counter_));
    CurrentSource2[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source1_Down_To_TargetSource2_Source2_Up_To_TargetSource1(Loop_: integer);
var
  Tempo_:double;
  i:integer;
Begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=(TargetSource1[i]-(((TargetSource1[i]-TargetSource2[i])/Loop_)*Counter_));
    CurrentSource1[i]:=Round(Tempo_);

    Tempo_:=((((TargetSource1[i]-TargetSource2[i])/Loop_)*Counter_)+TargetSource2[i]);
    CurrentSource2[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

procedure TForm1.Source1_Up_To_Base_Source2_Down_To_Base(Loop_: integer);
var
  Tempo_:double;
  i:integer;
Begin
  for i:=0 to TotalPointerX-1 do
  begin
    Tempo_:=((((Base_[i]-TargetSource2[i])/Loop_)*Counter_)+TargetSource2[i]);
    CurrentSource1[i]:=Round(Tempo_);
    Tempo_:=(TargetSource1[i]-(((TargetSource1[i]-Base_[i])/Loop_)*Counter_));
    CurrentSource2[i]:=Round(Tempo_);
  end;
  Counter_:=Counter_+1;
  if Counter_>=Loop_+1 then begin Serquent_:=Serquent_+1; Counter_:=0; end;
end;

end.

