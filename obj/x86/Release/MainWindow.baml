   M S B A M L   `   `   `  ����   Automatic File Move V01.1+    %Automatic_File_Move_V01._1.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  Automatically Move Files�� � SizeToContent$ WidthAndHeight=� � WindowStartupLocation$ CenterScreen=� � 	Resources    CheckBoxStyle1 �� 
TargetType �� Property �� Value �� 
TargetType � 	Resources  Key	 g� 	BeginTime
 �� 
TargetName �� TargetProperty O� KeyTime O� Value p� KeyTime p� Value ]�Name J� SnapsToDevicePixels �� ContentStringFormat �� ContentStringFormat ��Name �� CornerRadius J� RenderTransformOrigin �� ScaleX �� ScaleY �� AngleX �� AngleY �� Angle T� X T� Y �� EndPoint �� 
StartPoint  � Color! � Offset" �� Triggers# P� Property$ P� Value% N� ExitActions& ��Name  OnUnchecking' N� EnterActions  
OnChecking��%w  &	        7  7  �� " ��.���  � ��# � ����  � ��# � ����  � �� �� " �� ���� 
OnChecking .��U� $	 00:00:00X�$
 slider��$U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�.\��� $ 00:00:00.3000000��$ 25Q��� OnUnchecking .��U� $	 00:00:00X�$
 slider��$U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�.\��� $ 00:00:00.3000000��$ 0Q�r� $	 00:00:00X�$
 slider��$ (FrameworkElement.Margin)�.	��� $ 00:00:00.3000000��$ 1,1,1,1q�.R�]� $ 	dockPanel��.+��� # z #��z��# z #��z����. $��Center=�� $��5,5,0,5q�$��50�����	#FFC0CCD9.+��� $	��OFF��$
��Wrap=�$
��Bold"�$��12(�$��Right=�$��0,0,3,0q��� $
��Left=�$��2,0,0,0q�$��12(�$
��Bold"�$��ON��$
��Wrap=��� $ slider��$
��Left=�$��23��$��1,1,1,1q�$ 3,3,3,3��$ 0.5,0.5&�$��1,1,1,1q�z�V� .~��� $ 1Q�$ 1Q��� $ 0Q�$ 0Q��� $ 0Q�T� $ 0Q�$ 0Q����� $ 0.5,1&�$ 0.5,0&�.��� $  	#FFFFFFFF��$! 0Q�� $  	#FF4490FF��$! 1Q����� $ 0.5,1&�$ 0.5,0&�.��� $  	#FF8AB4FF��$! 1Q�� $  	#FFD1E2FF��$! 0Q�" P� # �@d�	IsChecked$
$ TrueY�% �� $"& OnUnchecking_BeginStoryboard��8��  ' �� $ & OnChecking_BeginStoryboard��8�� P� # � {�$ .  . ��� # � �� � ��.��� $	��160��$	��285��.+��� -   $��
textBlock1��$��25��$
��Left=�$��5,5,0,0q�$��Source Folder��$	��Top=�$	��150��( �� TextAlignment$
( Left=�$��14(��� -   $��txtSourcePath��$��25��$
��Left=�$��5,35,0,0q�$	��Top=�$	��220���� -   $��btnSourcePath��$��Browse��$��25��$
��Left=�$��
230,35,0,0q�$	��Top=�$��50���� -   $��
textBlock2��$��25��$
��Left=�$��5,70,0,0q�$��Destination Folder��$	��Top=�$	��150��$
( Left=�$��14(��� -   $��txtDestinationPath��$��25��$
��Left=�$��	5,100,0,0q�$	��Top=�$	��220���� -   $��btnDestinationPath��$��Browse��$��25��$
��Left=�$��230,100,0,0q�$	��Top=�$��50���� -   $��btnStart��$��Start��$��25��$��Center=�$��120,130,115,0q�$	��Top=�$��50���� -   $��btnStop��$
��Stop��$��25��$��Center=�$��175,130,60,0q�$	��Top=�$��50��{�.  �� -	   $��btnClose��$��Close��$��25��$��Center=�$��230,130,5,0q�$	��Top=�$��50���� -
   $��chkShowConsole��$
��Left=�$��	5,130,0,0q�#���   $��Center=�) d� 	IsChecked$) FalseY�$��Console��$��14(�