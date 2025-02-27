FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��##################################################################

Program:		PapersToBibTeXformat

Function:       Export the Papers library to BibTeX format and runs the script "formatlib" that in
			turn executes the script bibtexformat to format and correct the library
			
Usage:		The formatlib script and bibtexformat configuration files need to be configured with the preferred
			parameters (see the bibtexformat manual). The two files and delays below need to be set, the
			latter settings require adjustments depending on machine speed and library size.

			To run the script, open with the Script Editor and select "Run" or press Cmd-R.

Authors:		Original version by
				Sean Anderson, 2008
				http://seananderson.ca
				sean__at__seananderson__dot__ca
				With code inspiration from:
				http://apps.sourceforge.net/mediawiki/bibdesk/index.php?title=BibDesk_Applescripts
		
			Adaptations to bibtexformat by
				Ben Bulheller
				http://www.bulheller.com
				webmaster__at__bulheller__dot__com

Licence:		This program is free software: you can redistribute it and/or modify
			it under the terms of the GNU General Public License as published by
			the Free Software Foundation, either version 3 of the License, or
			(at your option) any later version.

			This program is distributed in the hope that it will be useful,
			but WITHOUT ANY WARRANTY; without even the implied warranty of
			MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
			GNU General Public License for more details.

			You should have received a copy of the GNU General Public License
			along with this program.  If not, see http://www.gnu.org/licenses/.

##################################################################     � 	 	x # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
 
 P r o g r a m : 	 	 P a p e r s T o B i b T e X f o r m a t 
 
 F u n c t i o n :               E x p o r t   t h e   P a p e r s   l i b r a r y   t o   B i b T e X   f o r m a t   a n d   r u n s   t h e   s c r i p t   " f o r m a t l i b "   t h a t   i n 
 	 	 	 t u r n   e x e c u t e s   t h e   s c r i p t   b i b t e x f o r m a t   t o   f o r m a t   a n d   c o r r e c t   t h e   l i b r a r y 
 	 	 	 
 U s a g e : 	 	 T h e   f o r m a t l i b   s c r i p t   a n d   b i b t e x f o r m a t   c o n f i g u r a t i o n   f i l e s   n e e d   t o   b e   c o n f i g u r e d   w i t h   t h e   p r e f e r r e d 
 	 	 	 p a r a m e t e r s   ( s e e   t h e   b i b t e x f o r m a t   m a n u a l ) .   T h e   t w o   f i l e s   a n d   d e l a y s   b e l o w   n e e d   t o   b e   s e t ,   t h e 
 	 	 	 l a t t e r   s e t t i n g s   r e q u i r e   a d j u s t m e n t s   d e p e n d i n g   o n   m a c h i n e   s p e e d   a n d   l i b r a r y   s i z e . 
 
 	 	 	 T o   r u n   t h e   s c r i p t ,   o p e n   w i t h   t h e   S c r i p t   E d i t o r   a n d   s e l e c t   " R u n "   o r   p r e s s   C m d - R . 
 
 A u t h o r s : 	 	 O r i g i n a l   v e r s i o n   b y 
 	 	 	 	 S e a n   A n d e r s o n ,   2 0 0 8 
 	 	 	 	 h t t p : / / s e a n a n d e r s o n . c a 
 	 	 	 	 s e a n _ _ a t _ _ s e a n a n d e r s o n _ _ d o t _ _ c a 
 	 	 	 	 W i t h   c o d e   i n s p i r a t i o n   f r o m : 
 	 	 	 	 h t t p : / / a p p s . s o u r c e f o r g e . n e t / m e d i a w i k i / b i b d e s k / i n d e x . p h p ? t i t l e = B i b D e s k _ A p p l e s c r i p t s 
 	 	 
 	 	 	 A d a p t a t i o n s   t o   b i b t e x f o r m a t   b y 
 	 	 	 	 B e n   B u l h e l l e r 
 	 	 	 	 h t t p : / / w w w . b u l h e l l e r . c o m 
 	 	 	 	 w e b m a s t e r _ _ a t _ _ b u l h e l l e r _ _ d o t _ _ c o m 
 
 L i c e n c e : 	 	 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y 
 	 	 	 i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y 
 	 	 	 t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r 
 	 	 	 ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 	 	 	 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 	 	 	 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 	 	 	 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 	 	 	 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 	 	 	 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 	 	 	 a l o n g   w i t h   t h i s   p r o g r a m .     I f   n o t ,   s e e   h t t p : / / w w w . g n u . o r g / l i c e n s e s / . 
 
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��������  ��  ��        l     ��  ��    V P For the script to be able to work it needs permission to execute menu commands:     �   �   F o r   t h e   s c r i p t   t o   b e   a b l e   t o   w o r k   i t   n e e d s   p e r m i s s i o n   t o   e x e c u t e   m e n u   c o m m a n d s :      l     ��  ��    ^ X English:  System Preferences => Universal Access => Enable access for assistive devices     �   �   E n g l i s h :     S y s t e m   P r e f e r e n c e s   = >   U n i v e r s a l   A c c e s s   = >   E n a b l e   a c c e s s   f o r   a s s i s t i v e   d e v i c e s      l     ��  ��    \ V German: Systemeinstellungen => Bedienungshilfen => Zugriff f�r Hilfsger�te aktivieren     �   �   G e r m a n :   S y s t e m e i n s t e l l u n g e n   = >   B e d i e n u n g s h i l f e n   = >   Z u g r i f f   f � r   H i l f s g e r � t e   a k t i v i e r e n      l     ��������  ��  ��        l     ��   ��    j d Intermediate file for the export and given to formatlib as input (relative to the home directory!).      � ! ! �   I n t e r m e d i a t e   f i l e   f o r   t h e   e x p o r t   a n d   g i v e n   t o   f o r m a t l i b   a s   i n p u t   ( r e l a t i v e   t o   t h e   h o m e   d i r e c t o r y ! ) .   " # " l     �� $ %��   $ R L Note that this is deleted before and after processing without notification!    % � & & �   N o t e   t h a t   t h i s   i s   d e l e t e d   b e f o r e   a n d   a f t e r   p r o c e s s i n g   w i t h o u t   n o t i f i c a t i o n ! #  ' ( ' l     )���� ) r      * + * m      , , � - -   L i b r a r y . t e m p . b i b + o      ���� 0 tempfile TempFile��  ��   (  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 a [ File name given to the script formatlib as output file  (relative to the home directory!).    3 � 4 4 �   F i l e   n a m e   g i v e n   t o   t h e   s c r i p t   f o r m a t l i b   a s   o u t p u t   f i l e     ( r e l a t i v e   t o   t h e   h o m e   d i r e c t o r y ! ) . 1  5 6 5 l    7���� 7 r     8 9 8 m     : : � ; ;  L i b r a r y . b i b 9 o      ���� 0 library Library��  ��   6  < = < l     ��������  ��  ��   =  > ? > l     ��������  ��  ��   ?  @ A @ l     �� B C��   B a [ Various delays to wait for some processes to finish. These depend on the machine speed and    C � D D �   V a r i o u s   d e l a y s   t o   w a i t   f o r   s o m e   p r o c e s s e s   t o   f i n i s h .   T h e s e   d e p e n d   o n   t h e   m a c h i n e   s p e e d   a n d A  E F E l     �� G H��   G G A the size of the library and may need adjustment if errors occur.    H � I I �   t h e   s i z e   o f   t h e   l i b r a r y   a n d   m a y   n e e d   a d j u s t m e n t   i f   e r r o r s   o c c u r . F  J K J l    L M N L r     O P O m    	 Q Q @       P o      ���� 0 papersdelay PapersDelay M 7 1 increase if Papers needs longer time to start up    N � R R b   i n c r e a s e   i f   P a p e r s   n e e d s   l o n g e r   t i m e   t o   s t a r t   u p K  S T S l    U V W U r     X Y X m     Z Z ?�       Y o      ���� 0 	savedelay 	SaveDelay V 3 - increase if Papers complains about something    W � [ [ Z   i n c r e a s e   i f   P a p e r s   c o m p l a i n s   a b o u t   s o m e t h i n g T  \ ] \ l    ^ _ ` ^ r     a b a m     c c @       b o      ���� 0 exportdelay ExportDelay _ 8 2 increase if bibtexformat cannot find the TempFile    ` � d d d   i n c r e a s e   i f   b i b t e x f o r m a t   c a n n o t   f i n d   t h e   T e m p F i l e ]  e f e l     ��������  ��  ��   f  g h g l    i���� i r     j k j m     l l � m m  E n g l i s h k o      ���� 0 lang Lang��  ��   h  n o n l     ��������  ��  ��   o  p q p l     �� r s��   r B < ===========================================================    s � t t x   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = q  u v u l     �� w x��   w f ` Nothing should need to be changed below this line unless the language has to be changed. If the    x � y y �   N o t h i n g   s h o u l d   n e e d   t o   b e   c h a n g e d   b e l o w   t h i s   l i n e   u n l e s s   t h e   l a n g u a g e   h a s   t o   b e   c h a n g e d .   I f   t h e v  z { z l     �� | }��   | e _ system/Papers language is different from English, correct the menu item where it is indicated.    } � ~ ~ �   s y s t e m / P a p e r s   l a n g u a g e   i s   d i f f e r e n t   f r o m   E n g l i s h ,   c o r r e c t   t h e   m e n u   i t e m   w h e r e   i t   i s   i n d i c a t e d . {   �  l     �� � ���   � B < ===========================================================    � � � � x   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l   3 ����� � Z    3 � ����� � =    � � � o    ���� 0 lang Lang � m     � � � � �  E n g l i s h � k    / � �  � � � r    ! � � � m     � � � � �  F i l e � o      ���� 0 menufile MenuFile �  � � � r   " ' � � � m   " # � � � � �  E x p o r t . . . � o      ���� 0 
menuexport 
MenuExport �  ��� � r   ( / � � � m   ( + � � � � �  B i b T e X   L i b r a r y � o      ���� 0 
menubibtex 
MenuBibTeX��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  4 U ����� � Z   4 U � ����� � =  4 9 � � � o   4 5���� 0 lang Lang � m   5 8 � � � � �  G e r m a n � k   < Q � �  � � � r   < A � � � m   < ? � � � � �  A b l a g e � o      ���� 0 menufile MenuFile �  � � � r   B I � � � m   B E � � � � �  E x p o r t i e r e n   . . . � o      ���� 0 
menuexport 
MenuExport �  ��� � r   J Q � � � m   J M � � � � � " B i b T e X   B i b l i o t h e k � o      ���� 0 
menubibtex 
MenuBibTeX��  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 7 1 Add the home directory to the defined file names    � � � � b   A d d   t h e   h o m e   d i r e c t o r y   t o   t h e   d e f i n e d   f i l e   n a m e s �  � � � l  V e ����� � r   V e � � � c   V a � � � l  V ] ����� � I  V ]�� ���
�� .earsffdralis        afdr � m   V Y��
�� afdrcusr��  ��  ��   � m   ] `��
�� 
TEXT � o      ���� 0 
homefolder 
HomeFolder��  ��   �  � � � l  f q ����� � r   f q � � � b   f o � � � l  f m ����� � n   f m � � � 1   i m��
�� 
psxp � o   f i���� 0 
homefolder 
HomeFolder��  ��   � o   m n���� 0 tempfile TempFile � o      ���� 0 tempfile TempFile��  ��   �  � � � l  r } ����� � r   r } � � � b   r { � � � l  r y ����� � n   r y � � � 1   u y��
�� 
psxp � o   r u���� 0 
homefolder 
HomeFolder��  ��   � o   y z���� 0 library Library � o      ���� 0 library Library��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � y s Delete the TempFile if it is there from a previous export to avoid a Papers dialog whether or not to overwrite it.    � � � � �   D e l e t e   t h e   T e m p F i l e   i f   i t   i s   t h e r e   f r o m   a   p r e v i o u s   e x p o r t   t o   a v o i d   a   P a p e r s   d i a l o g   w h e t h e r   o r   n o t   t o   o v e r w r i t e   i t . �  � � � l  ~ � ����� � I  ~ ��� ���
�� .sysoexecTEXT���     TEXT � b   ~ � � � � m   ~ � � � � � �  r m   - f   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 tempfile TempFile��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � = 7 Export the Papers Library to the temporary BibTeX file    � � � � n   E x p o r t   t h e   P a p e r s   L i b r a r y   t o   t h e   t e m p o r a r y   B i b T e X   f i l e �  � � � l  �J ����� � O   �J � � � k   �I � �    l  � �����   - ' count processes with the name "Papers"    � N   c o u n t   p r o c e s s e s   w i t h   t h e   n a m e   " P a p e r s "  r   � � l  � �	����	 I  � ���
��
�� .corecnte****       ****
 l  � ����� 6  � � 2  � ���
�� 
pcap l  � ����� =  � � 1   � ���
�� 
pnam m   � � �  P a p e r s��  ��  ��  ��  ��  ��  ��   o      ���� 0 	isrunning 	isRunning  l  � ���~�}�  �~  �}    l  � ��|�|   Z T if the numer is 0, start Papers and delay the script to wait for papers to start up    � �   i f   t h e   n u m e r   i s   0 ,   s t a r t   P a p e r s   a n d   d e l a y   t h e   s c r i p t   t o   w a i t   f o r   p a p e r s   t o   s t a r t   u p  Z   � ��{ =  � �  o   � ��z�z 0 	isrunning 	isRunning  m   � ��y�y   k   � �!! "#" O  � �$%$ I  � ��x�w�v
�x .miscactvnull��� ��� null�w  �v  % m   � �&&�                                                                                  MTPa   alis    2  OSX                        ���H+     �
Papers.app                                                     �����        ����  	                Applications    ��fg      ��k       �  OSX:Applications:Papers.app    
 P a p e r s . a p p    O S X  Applications/Papers.app   / ��  # '�u' I  � ��t(�s
�t .sysodelanull��� ��� nmbr( o   � ��r�r 0 papersdelay PapersDelay�s  �u  �{   k   � �)) *+* l  � ��q,-�q  , M G just make sure that Papers is the foremost application (without delay)   - �.. �   j u s t   m a k e   s u r e   t h a t   P a p e r s   i s   t h e   f o r e m o s t   a p p l i c a t i o n   ( w i t h o u t   d e l a y )+ /�p/ O  � �010 I  � ��o�n�m
�o .miscactvnull��� ��� null�n  �m  1 m   � �22�                                                                                  MTPa   alis    2  OSX                        ���H+     �
Papers.app                                                     �����        ����  	                Applications    ��fg      ��k       �  OSX:Applications:Papers.app    
 P a p e r s . a p p    O S X  Applications/Papers.app   / ��  �p   343 l  � ��l�k�j�l  �k  �j  4 565 l  � ��i78�i  7 . ( Ablage Exportieren... BibTeX Bibliothek   8 �99 P   A b l a g e   E x p o r t i e r e n . . .   B i b T e X   B i b l i o t h e k6 :;: O   �'<=< O   �&>?> O   �%@A@ O   �$BCB O   �#DED O  
"FGF I !�hH�g
�h .prcsclicuiel    ��� uielH 4  �fI
�f 
menII o  �e�e 0 
menubibtex 
MenuBibTeX�g  G 4  
�dJ
�d 
menEJ o  �c�c 0 
menuexport 
MenuExportE 4   ��bK
�b 
menIK o  �a�a 0 
menuexport 
MenuExportC 4   � ��`L
�` 
menEL o   � ��_�_ 0 menufile MenuFileA 4   � ��^M
�^ 
mbriM o   � ��]�] 0 menufile MenuFile? 4   � ��\N
�\ 
mbarN m   � ��[�[ = 4   � ��ZO
�Z 
prcsO m   � �PP �QQ  P a p e r s; RSR l ((�Y�X�W�Y  �X  �W  S TUT I (-�VV�U
�V .prcskprsnull���    utxtV o  ()�T�T 0 tempfile TempFile�U  U WXW I .5�SY�R
�S .prcskprsnull���    utxtY o  .1�Q
�Q 
ret �R  X Z[Z I 6;�P\�O
�P .sysodelanull��� ��� nmbr\ l 67]�N�M] o  67�L�L 0 	savedelay 	SaveDelay�N  �M  �O  [ ^_^ I <C�K`�J
�K .prcskprsnull���    utxt` o  <?�I
�I 
ret �J  _ aba l DD�H�G�F�H  �G  �F  b cdc l DD�Eef�E  e + % wait for the Papers export to finish   f �gg J   w a i t   f o r   t h e   P a p e r s   e x p o r t   t o   f i n i s hd h�Dh I DI�Ci�B
�C .sysodelanull��� ��� nmbri l DEj�A�@j o  DE�?�? 0 exportdelay ExportDelay�A  �@  �B  �D   � m   � �kk�                                                                                  sevs   alis    t  OSX                        ���H+     �System Events.app                                                ����        ����  	                CoreServices    ��fg      ��C       �   Q   P  1OSX:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    O S X  -System/Library/CoreServices/System Events.app   / ��  ��  ��   � lml l     �>�=�<�>  �=  �<  m non l     �;pq�;  p r l If formatlib is not found in the PATH this might be because the PATH as defined in .bashrc or similar files   q �rr �   I f   f o r m a t l i b   i s   n o t   f o u n d   i n   t h e   P A T H   t h i s   m i g h t   b e   b e c a u s e   t h e   P A T H   a s   d e f i n e d   i n   . b a s h r c   o r   s i m i l a r   f i l e so sts l     �:uv�:  u t n is not read in. In this case uncomment the following lines to have the PATH read in before running formatlib.   v �ww �   i s   n o t   r e a d   i n .   I n   t h i s   c a s e   u n c o m m e n t   t h e   f o l l o w i n g   l i n e s   t o   h a v e   t h e   P A T H   r e a d   i n   b e f o r e   r u n n i n g   f o r m a t l i b .t xyx l     �9z{�9  z R L Set RCFile to either .profile or .bashrc to read in the PATH variable later   { �|| �   S e t   R C F i l e   t o   e i t h e r   . p r o f i l e   o r   . b a s h r c   t o   r e a d   i n   t h e   P A T H   v a r i a b l e   l a t e ry }~} l     �8��8   C = display dialog (do shell script "echo $PATH") -- debug code�   � ��� z   d i s p l a y   d i a l o g   ( d o   s h e l l   s c r i p t   " e c h o   $ P A T H " )   - -   d e b u g   c o d e�~ ��� l Kt��7�6� O Kt��� Z Qs���5�4� I Qa�3��2
�3 .coredoexbool        obj � 4  Q]�1�
�1 
file� l U\��0�/� b  U\��� o  UX�.�. 0 
homefolder 
HomeFolder� m  X[�� ���  . p r o f i l e�0  �/  �2  � r  do��� b  dk��� o  dg�-�- 0 
homefolder 
HomeFolder� m  gj�� ���  . p r o f i l e  � o      �,�, 0 rcfile RCFile�5  �4  � m  KN���                                                                                  sevs   alis    t  OSX                        ���H+     �System Events.app                                                ����        ����  	                CoreServices    ��fg      ��C       �   Q   P  1OSX:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    O S X  -System/Library/CoreServices/System Events.app   / ��  �7  �6  � ��� l u���+�*� O u���� Z {����)�(� I {��'��&
�' .coredoexbool        obj � 4  {��%�
�% 
file� l ���$�#� b  ���� o  ��"�" 0 
homefolder 
HomeFolder� m  ���� ���  . b a s h r c�$  �#  �&  � r  ����� b  ����� b  ����� o  ���!�! 0 rcfile RCFile� o  ��� �  0 
homefolder 
HomeFolder� m  ���� ���  . b a s h r c  � o      �� 0 rcfile RCFile�)  �(  � m  ux���                                                                                  sevs   alis    t  OSX                        ���H+     �System Events.app                                                ����        ����  	                CoreServices    ��fg      ��C       �   Q   P  1OSX:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    O S X  -System/Library/CoreServices/System Events.app   / ��  �+  �*  � ��� l ������ O ����� Z ������� I �����
� .coredoexbool        obj � 4  ����
� 
file� l ������ b  ����� o  ���� 0 
homefolder 
HomeFolder� m  ���� ���  . b a s h r c _ p r o f i l e�  �  �  � r  ����� b  ����� b  ����� o  ���� 0 rcfile RCFile� o  ���� 0 
homefolder 
HomeFolder� m  ���� ���   . b a s h r c _ p r o f i l e  � o      �� 0 rcfile RCFile�  �  � m  �����                                                                                  sevs   alis    t  OSX                        ���H+     �System Events.app                                                ����        ����  	                CoreServices    ��fg      ��C       �   Q   P  1OSX:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p    O S X  -System/Library/CoreServices/System Events.app   / ��  �  �  � ��� l ������ r  ����� l ������ n  ����� 1  ���
� 
psxp� o  ���� 0 rcfile RCFile�  �  � o      �� 0 rcfile RCFile�  �  � ��� l     �
���
  � ) # display dialog RCFile --debug code   � ��� F   d i s p l a y   d i a l o g   R C F i l e   - - d e b u g   c o d e� ��� l ����	�� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  s o u r c e  � o  ���� 0 rcfile RCFile� m  ���� ���  ;   f o r m a t l i b  � o  ���� 0 tempfile TempFile� m  ���� ���    - l o g   - o  � o  ���� 0 library Library� o      �� 0 command  �	  �  � ��� l     ����  �  �  � ��� l     � ���   � Q K Concatenate the shell command to execute format lib. The single parts are:   � ��� �   C o n c a t e n a t e   t h e   s h e l l   c o m m a n d   t o   e x e c u t e   f o r m a t   l i b .   T h e   s i n g l e   p a r t s   a r e :� ��� l     ������  � a [ source .bashrc;   (or .profile, to have complete the PATH definition in the current shell)   � ��� �   s o u r c e   . b a s h r c ;       ( o r   . p r o f i l e ,   t o   h a v e   c o m p l e t e   t h e   P A T H   d e f i n i t i o n   i n   t h e   c u r r e n t   s h e l l )� ��� l     ������  � %  formatlib TempFile -o Library    � ��� >   f o r m a t l i b   T e m p F i l e   - o   L i b r a r y  � ��� l     ������  � J D set command to "formatlib " & TempFile & " -o " & Library & " -log"   � ��� �   s e t   c o m m a n d   t o   " f o r m a t l i b   "   &   T e m p F i l e   &   "   - o   "   &   L i b r a r y   &   "   - l o g "� ��� l     ��������  ��  ��  � � � l ������ I ������
�� .sysoexecTEXT���     TEXT o  ������ 0 command  ��  ��  ��     l     ��������  ��  ��    l     ����   D > check whether the export was successful and the file is there    �		 |   c h e c k   w h e t h e r   t h e   e x p o r t   w a s   s u c c e s s f u l   a n d   t h e   f i l e   i s   t h e r e 

 l ����� r  � c  � 4  ���
�� 
psxf o  ���� 0 library Library m  ��
�� 
utxt o      ���� 0 
outputfile 
OutputFile��  ��    l ;���� O  ; Z  :���� H   l ���� I ����
�� .coredoexbool        obj  4  ��
�� 
file o  ���� 0 
outputfile 
OutputFile��  ��  ��   k  "6  I "3�� ��
�� .sysodlogaskr        TEXT  b  "/!"! b  "+#$# m  "%%% �&& p A n   e r r o r   h a p p e n e d   d u r i n g   t h e   e x p o r t   i n   P a p e r s ,   t h e   f i l e  $ n  %*'(' 1  &*��
�� 
strq( o  %&���� 0 library Library" m  +.)) �**    w a s   n o t   f o u n d .��   +��+ L  46����  ��  ��  ��   m  ,,�                                                                                  MACS   alis    V  OSX                        ���H+     �
Finder.app                                                       s��01�        ����  	                CoreServices    ��fg      �0�       �   Q   P  *OSX:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    O S X  &System/Library/CoreServices/Finder.app  / ��  ��  ��   -.- l     ��������  ��  ��  . /0/ l     ��12��  1    delete the temporary file   2 �33 4   d e l e t e   t h e   t e m p o r a r y   f i l e0 454 l <E6����6 I <E��7��
�� .sysoexecTEXT���     TEXT7 b  <A898 m  <?:: �;;  r m   - f  9 o  ?@���� 0 tempfile TempFile��  ��  ��  5 <��< l     ��������  ��  ��  ��       ��=>��  = ��
�� .aevtoappnull  �   � ****> ��?����@A��
�� .aevtoappnull  �   � ****? k    EBB  'CC  5DD  JEE  SFF  \GG  gHH  �II  �JJ  �KK  �LL  �MM  �NN  �OO �PP �QQ �RR �SS �TT �UU 
VV WW 4����  ��  ��  @  A G ,�� :�� Q�� Z�� c�� l�� � ��� ��� ��� � � � ����������� �����k��X������&������P�������������������������������������,%)��:�� 0 tempfile TempFile�� 0 library Library�� 0 papersdelay PapersDelay�� 0 	savedelay 	SaveDelay�� 0 exportdelay ExportDelay�� 0 lang Lang�� 0 menufile MenuFile�� 0 
menuexport 
MenuExport�� 0 
menubibtex 
MenuBibTeX
�� afdrcusr
�� .earsffdralis        afdr
�� 
TEXT�� 0 
homefolder 
HomeFolder
�� 
psxp
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
pcapX  
�� 
pnam
�� .corecnte****       ****�� 0 	isrunning 	isRunning
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr
�� 
prcs
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicuiel    ��� uiel
�� .prcskprsnull���    utxt
�� 
ret 
�� 
file
�� .coredoexbool        obj �� 0 rcfile RCFile�� 0 command  
�� 
psxf
�� 
utxt�� 0 
outputfile 
OutputFile
�� .sysodlogaskr        TEXT��F�E�O�E�O�E�O�E�O�E�O�E�O��  �E�O�E` Oa E` Y hO�a   a E�Oa E` Oa E` Y hOa j a &E` O_ a ,�%E�O_ a ,�%E�Oa �a ,%j Oa  �*a  -a ![a ",\Za #81j $E` %O_ %j  a & *j 'UO�j (Y a & *j 'UO*a )a */ D*a +k/ :*a ,�/ 0*a -�/ &*a ._ / *a -_ / *a ._ /j /UUUUUUO�j 0O_ 1j 0O�j (O_ 1j 0O�j (UOa  $*a 2_ a 3%/j 4 _ a 5%E` 6Y hUOa  (*a 2_ a 7%/j 4 _ 6_ %a 8%E` 6Y hUOa  (*a 2_ a 9%/j 4 _ 6_ %a :%E` 6Y hUO_ 6a ,E` 6Oa ;_ 6%a <%�%a =%�%E` >O_ >j O*a ?�/a @&E` AOa B **a 2_ A/j 4 a C�a ,%a D%j EOhY hUOa F�%j ascr  ��ޭ