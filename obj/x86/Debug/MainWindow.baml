   M S B A M L   `   `   `  ����  Automatic File Move V01.1+    %Automatic_File_Move_V01._1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   ;   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6x     � Title$  Automatically Move Files��6	    � SizeToContent$ WidthAndHeight=�6�    � WindowStartupLocation$ CenterScreen=�6   � 	Resources 5         CheckBoxStyle1 �� 
TargetType �� Property �� Value �� 
TargetType � 	Resources  Key	 g� 	BeginTime
 �� 
TargetName �� TargetProperty O� KeyTime O� Value p� KeyTime p� Value ]�Name J� SnapsToDevicePixels �� ContentStringFormat �� ContentStringFormat ��Name �� CornerRadius J� RenderTransformOrigin �� ScaleX �� ScaleY �� AngleX �� AngleY �� Angle T� X T� Y �� EndPoint �� 
StartPoint  � Color! � Offset" �� Triggers# P� Property$ P� Value% N� ExitActions& ��Name  OnUnchecking' N� EnterActions  
OnChecking��%�  &	        7  7  �� 5   
   " ��6'   .�5      ��  � ��# � ��6+   �� 5	       � ��# � ��6+   �� 5
       � �� 5      �� 5      " ��6&    5      ���� 5      
OnChecking .��5   "   U� $	 00:00:00X�6@   $
 slider��6U   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6t   .\�5   &   �� $ 00:00:00.3000000��6;   $ 25Q�6V   5   #   5      �� 5      OnUnchecking .��5   "   U� $	 00:00:00X�6@   $
 slider��6U   $U O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6t   .\�5   &   �� $ 00:00:00.3000000��6;   $ 0Q�6V   5   #   r� 5   "   $	 00:00:00X�6C   $
 slider��6X   $ (FrameworkElement.Margin)�6w   .	�5   &   �� $ 00:00:00.3000000��6>   $ 1,1,1,1q�6Y   5   #   5      5      .R�5      ]� $ 	dockPanel��6$   .+�5      �� # z 6/   #��z��6k   # z 6�   #��z��6�   ��. $��Center=�6  � 5      $��5,5,0,5q�6#   $��50��64   ���	#FFC0CCD9.+�5    "   �� $	��OFF��6,   $
��Wrap=�67   $
��Bold"�6K   $��12(�6]   $��Right=�6k   $��0,0,3,0q�6�   �� 5!   "   $
��Left=�6,   $��2,0,0,0q�6G   $��12(�6X   $
��Bold"�6f   $��ON��6x   $
��Wrap=�6�   �� 5"   "   $ slider��6D   $
��Left=�6)   $��23��6T   $��1,1,1,1q�6_   $ 3,3,3,3��6y   $ 0.5,0.5&�6�   $��1,1,1,1q�6�   z�5#   &   V� 5$   *   .~�5%   .   �� $ 1Q�6=   $ 1Q�6H   �� 5&   .   $ 0Q�6<   $ 0Q�6G   �� 5'   .   $ 0Q�6>   T� 5(   .   $ 0Q�6A   $ 0Q�6G   5)   +   ��5+   &   �� 5,   *   $ 0.5,1&�6>   $ 0.5,0&�6O   .��5-   .   � $  	#FFFFFFFF��6;   $! 0Q�6M   � 5.   .   $  	#FF4490FF��6;   $! 1Q�6M   5/   +   ��51   &   �� 52   *   $ 0.5,1&�6>   $ 0.5,0&�6O   .��53   .   � $  	#FF8AB4FF��6;   $! 1Q�6M   � 54   .   $  	#FFD1E2FF��6;   $! 0Q�6M   55   +   57   #   58      59      " 5;      P� 5<      # �@d�	IsChecked$
$ TrueY�6;   % 5=   "   �� 5>   &   $"& OnUnchecking_BeginStoryboard��6a   8��  ' 5@   "   �� 5A   &   $ & OnChecking_BeginStoryboard��6_   8�� 5C      P� 5D      # � {�$ .  . �5E   "   �� # � ��6?    � ��5F      5H      5J      5K      5L      .��5N      � $	��160��6   $	��285��6   .+�5O   
   �� -   5        $��
textBlock1��5O   L   $��25��6   $
��Left=�6    $��5,5,0,0q�6;   $��Source Folder��6^   $	��Top=�6s   $	��150��6�   ( �� TextAlignment$
( Left=�6�   $��14(�6�   �� 5P   
   -   5        $��txtSourcePath��5P   K   $��25��6   $
��Left=�6   $��5,35,0,0q�69   $	��Top=�6`   $	��220��6x   �� 5Q   
   -   5        $��btnSourcePath��5Q   ]   $��Browse��6   $��25��6"   $
��Left=�6.   $��
230,35,0,0q�6I   $	��Top=�6r   $��50��6�   6�   �� 5R   
   -   5        $��
textBlock2��5R   M   $��25��6   $
��Left=�6    $��5,70,0,0q�6;   $��Destination Folder��6_   $	��Top=�6y   $	��150��6�   $
( Left=�6�   $��14(�6�   �� 5S   
   -   5        $��txtDestinationPath��5S   L   $��25��6   $
��Left=�6   $��	5,100,0,0q�69   $	��Top=�6f   $	��220��6~   �� 5T   
   -   5        $��btnDestinationPath��5T   ^   $��Browse��6   $��25��6"   $
��Left=�6.   $��230,100,0,0q�6I   $	��Top=�6x   $��50��6�   6�   �� 5U   
   -   5        $��btnStart��5U   a   $��Start��6   $��25��6!   $��Center=�6-   $��120,130,115,0q�6J   $	��Top=�6q   $��50��6�   6�   �� 5V   
   -   5        $��btnStop��5V   _   $
��Stop��6   $��25��6    $��Center=�6,   $��175,130,60,0q�6I   $	��Top=�6n   $��50��6�   {�.  6�   �� 5W   
   -	   5        $��btnClose��5W   _   $��Close��6   $��25��6!   $��Center=�6-   $��230,130,5,0q�6J   $	��Top=�6o   $��50��6�   6�   �� 5X   
   -
   5        $��chkShowConsole��5X   �   $
��Left=�6   $��	5,130,0,0q�6.   #���   6A   $��Center=�6j   ) d� 	IsChecked$) FalseY�6�   $��Console��6�   $��14(�6�   5Y      5Z      