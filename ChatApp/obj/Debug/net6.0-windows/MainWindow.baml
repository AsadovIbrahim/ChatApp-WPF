   M S B A M L   `   `   `  ����B  >ChatApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:ChatAppChatApp  5   	   7 clr-namespace:ChatApp.ViewModelsChatApp.ViewModels  6-       ChatApp.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:ChatApp     5   	   7
viewmodels clr-namespace:ChatApp.ViewModels     6-     � Title$  
MainWindow��5   	   $	��650��5	   	   $
��1200��6    � WindowStartupLocation$ CenterScreen=�5
   	   ���#36393F � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	    � 
ResizeMode$ CanResizeWithGrip=�5   	    � DataContext 5      &    ChatApp.ViewModels.MainViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $��25 �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   �� -   5        $��2��5      ���#252525._�5       � $��Stretch=�6   .+�5!      �� $��	BunnyChat��6   
�������$��SemiBold"�5#      �� 5%      $��Right=�6    �� Orientation$ 
Horizontal=�5&      .+�5'      �� -   5        $��20��5'      $��20��5(      $��Center=�5)      $��_��5*      
������ $��0,0,0,3q�5,      $��0q�5-      
�������$
��Bold"�5/      50      �� 52      -   5        
������ $��0q�52   6   $��18��53      $��18��54      .��56      �� $!��/StaticFiles/fullScreen.png��6    58      �� 5:      -   5        $��20��5:      $��20��5;      $��X��5<      
������ $��0q�5>      
�������$
��Bold"�5@      5A      5D      5E      5F      � 5H   
   ���#2F3136$��1��6$    5I      �� 5J      $��50 �6    �� 5K      �� 5L      $��60 �6    .+�5O      �� $��Contacts��6   $��Center=�5P      $��Medium"�5Q      
�������$��8,0,0,0q�5S      �� 5T      
������ $��0q�5W      $��1��5X         contactCard#��[  5Y      ��5T      �� *
Contacts+	 �� SelectedItem	 5U      �� *SelectedContact+5Y      �� 5[      $��2��6   $ 
Horizontal=�5\      ���#292B2F.+�5_      �� 
 �� CornerRadius$
 25��6   $��30��5`      $��30��5a      ���#3bff6f$��18,0,0,0q�5c      �� 5e      $��Center=�6   .+�5f      �� $��Username��6   
�������$��SemiBold"�5h      �� 5j      $��Custom Status��6   
�������$��SemiBold"�5l      $��10(�5m      $��	0,-8,0,-5q�5n      5q      5r      5t      � 5u   
   $��1��6   $��1��5v       5x      �� 5y      $��50 �6    �� 5z      �� 5{      $��70 �6    .+�5}      �� ���#2F3136$��0,0,0,2q�5~      ._�5      � $��Stretch=�6   $��8q�5�      .+�5�      �� $��	@Username��6   
�������$
��Bold"�5�      $��5,0,5,0q�5�      $��Center=�5�      5�      5�      �� 5�      
������ $��0q�5�        ChatItem#��[ 5�      $��8,0,0,0q�5�      $��1��5�      ��5�      �� *SelectedContact.Messages+5�      � 5�      $��2��6    5�      �� 5�      �� 5�      $��90 �6'   .+�5�      �� $��1��6   $��50��5�      $��Message @Username��5�        
MessageBox#��[ 5�      $��2��5�      �� 5�      $ 
Horizontal=�6   $��Right=�5�      $��1��5�      $��0,0,16,0q�5�      .+�5�      �� $��/StaticFiles/send.png��6   $��30��6;    �� BitmapScalingMode$
 Fant=�5�      5�      5�      5�      5�      5�      