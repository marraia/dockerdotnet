   M S B A M L   `   `   `  ����J  FCaixa.Container, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:Caixa.ContainerCaixa.Container  5   	        Caixa.Container.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:Caixa.Container     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgItem��5
         
IsReadOnly$
 True��6#      AutoGenerateColumns$ False��65   
���   �   HeadersVisibility$
 None=�6�      RowBackground
 �   �   GridLinesVisibility$
 None=�6�   ���	#FFF9FBFD   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      -   5        	Image��,  &System.Windows.Controls.DataGridColumn   Header$ Image��5      	   
FontFamily$	 Calibri)�5      
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 180 5      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5      �� *Image+5        5      -   5        ID��$ ID��5      $	 Calibri)�5      $	
 400 5       5      �� *ID+5        5      -   5        	State��$ State��5      $	 Calibri)�5      $
 50 5       5      �� *State+5        5      -   5        
Status��$ Status��5      $	 Calibri)�5      $	
 100 5       5      �� *Status+   ElementStyle 5       �� 5!       �� 
TargetType" ��6    .�5"      ��  �� Property � �� �� Value$ Right=�6D   5#      5%      5'      5(      5)      