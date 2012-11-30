FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �
# Copyright (c) 2012 Ciro Mattia Gonano <ciromattia@gmail.com>
#
# Permission to use, copy, modify, and/or distribute this software for
# any purpose with or without fee is hereby granted, provided that the
# above copyright notice and this permission notice appear in all
# copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
# WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
# AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
# DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
# OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
# TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# This script heavily relies on KindleStrip (C) by Paul Durrant and released in public domain
# 	(http://www.mobileread.com/forums/showthread.php?t=96903)
# Also, you need to have kindlegen v2.7 (with KF8 support) which is downloadable
# 	from Amazon website.
#
# Changelog:
#	1.0: first release
#	1.10: add CBZ/CBR support to comic2ebook.py
#	1.11: add CBZ/CBR support to KindleComicConverter
#
# Todo:
#	- bundle a script to manipulate images (to get rid of Mangle/E-nki/whatsoever)
     � 	 		� 
 #   C o p y r i g h t   ( c )   2 0 1 2   C i r o   M a t t i a   G o n a n o   < c i r o m a t t i a @ g m a i l . c o m > 
 # 
 #   P e r m i s s i o n   t o   u s e ,   c o p y ,   m o d i f y ,   a n d / o r   d i s t r i b u t e   t h i s   s o f t w a r e   f o r 
 #   a n y   p u r p o s e   w i t h   o r   w i t h o u t   f e e   i s   h e r e b y   g r a n t e d ,   p r o v i d e d   t h a t   t h e 
 #   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   a p p e a r   i n   a l l 
 #   c o p i e s . 
 # 
 #   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S "   A N D   T H E   A U T H O R   D I S C L A I M S   A L L 
 #   W A R R A N T I E S   W I T H   R E G A R D   T O   T H I S   S O F T W A R E   I N C L U D I N G   A L L   I M P L I E D 
 #   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S .   I N   N O   E V E N T   S H A L L   T H E 
 #   A U T H O R   B E   L I A B L E   F O R   A N Y   S P E C I A L ,   D I R E C T ,   I N D I R E C T ,   O R   C O N S E Q U E N T I A L 
 #   D A M A G E S   O R   A N Y   D A M A G E S   W H A T S O E V E R   R E S U L T I N G   F R O M   L O S S   O F   U S E ,   D A T A 
 #   O R   P R O F I T S ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   N E G L I G E N C E   O R   O T H E R 
 #   T O R T I O U S   A C T I O N ,   A R I S I N G   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   U S E   O R 
 #   P E R F O R M A N C E   O F   T H I S   S O F T W A R E . 
 # 
 #   T h i s   s c r i p t   h e a v i l y   r e l i e s   o n   K i n d l e S t r i p   ( C )   b y   P a u l   D u r r a n t   a n d   r e l e a s e d   i n   p u b l i c   d o m a i n 
 #   	 ( h t t p : / / w w w . m o b i l e r e a d . c o m / f o r u m s / s h o w t h r e a d . p h p ? t = 9 6 9 0 3 ) 
 #   A l s o ,   y o u   n e e d   t o   h a v e   k i n d l e g e n   v 2 . 7   ( w i t h   K F 8   s u p p o r t )   w h i c h   i s   d o w n l o a d a b l e 
 #   	 f r o m   A m a z o n   w e b s i t e . 
 # 
 #   C h a n g e l o g : 
 # 	 1 . 0 :   f i r s t   r e l e a s e 
 # 	 1 . 1 0 :   a d d   C B Z / C B R   s u p p o r t   t o   c o m i c 2 e b o o k . p y 
 # 	 1 . 1 1 :   a d d   C B Z / C B R   s u p p o r t   t o   K i n d l e C o m i c C o n v e r t e r 
 # 
 #   T o d o : 
 # 	 -   b u n d l e   a   s c r i p t   t o   m a n i p u l a t e   i m a g e s   ( t o   g e t   r i d   o f   M a n g l e / E - n k i / w h a t s o e v e r ) 
   
  
 l     ��������  ��  ��        p         ������ "0 comic2ebookpath comic2ebookPath��        p         ������ 0 kindlegenpath kindlegenPath��        p         ������ "0 kindlestrippath KindleStripPath��        p         ������ 0 thetitle TheTitle��        p         ������ 0 parentfolder ParentFolder��        l     ��������  ��  ��        i          I      �������� (0 getcomic2ebookpath GetComic2EbookPath��  ��     k     G ! !  " # " r      $ % $ n      & ' & 1    ��
�� 
psxp ' 4     �� (
�� 
file ( l    )���� ) b     * + * l   	 ,���� , I   	�� - .
�� .earsffdralis        afdr -  f     . �� /��
�� 
rtyp / m    ��
�� 
ctxt��  ��  ��   + m   	 
 0 0 � 1 1 B C o n t e n t s : R e s o u r c e s : c o m i c 2 e b o o k . p y��  ��   % o      ���� "0 comic2ebookpath comic2ebookPath #  2 3 2 r     4 5 4 m    ��
�� boovfals 5 o      ���� 0 
fileexists   3  6 7 6 O   + 8 9 8 Z   * : ;���� : I    �� <��
�� .coredoexbool        obj  < c     = > = o    ���� "0 comic2ebookpath comic2ebookPath > m    ��
�� 
psxf��   ; r   # & ? @ ? m   # $��
�� boovtrue @ o      ���� 0 
fileexists  ��  ��   9 m     A A�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   7  B C B Z   , D D E���� D l  , . F���� F H   , . G G o   , -���� 0 
fileexists  ��  ��   E I  1 @�� H I
�� .sysodlogaskr        TEXT H m   1 2 J J � K K v T h e   c o m i c 2 e b o o k   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e . I �� L M
�� 
appr L m   3 4 N N � O O ( K i n d l e C o m i c C o n v e r t e r M �� P Q
�� 
btns P J   5 8 R R  S�� S m   5 6 T T � U U  E x i t��   Q �� V��
�� 
dflt V m   9 :���� ��  ��  ��   C  W�� W L   E G X X o   E F���� 0 
fileexists  ��     Y Z Y l     ��������  ��  ��   Z  [ \ [ i     ] ^ ] I      �������� $0 getkindlegenpath GetKindlegenPath��  ��   ^ k     = _ _  ` a ` r      b c b n      d e d 1    ��
�� 
psxp e 4     �� f
�� 
file f l    g���� g m     h h � i i H M a c i n t o s h   H D : u s r : l o c a l : b i n : k i n d l e g e n��  ��   c o      ���� 0 kindlegenpath kindlegenPath a  j k j r   	  l m l m   	 
��
�� boovfals m o      ���� 0 
fileexists   k  n o n O   # p q p Z   " r s���� r I   �� t��
�� .coredoexbool        obj  t c     u v u o    ���� 0 kindlegenpath kindlegenPath v m    ��
�� 
psxf��   s r     w x w m    ��
�� boovtrue x o      ���� 0 
fileexists  ��  ��   q m     y y�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   o  z { z Z   $ : | }���� | l  $ & ~���� ~ H   $ &   o   $ %���� 0 
fileexists  ��  ��   } I  ) 6�� � �
�� .sysodlogaskr        TEXT � m   ) * � � � � � * K i n d l e g e n   i s   m i s s i n g . � �� � �
�� 
appr � m   + , � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   - 0 � �  ��� � m   - . � � � � �  E x i t��   � �� ���
�� 
dflt � m   1 2���� ��  ��  ��   {  ��� � L   ; = � � o   ; <���� 0 
fileexists  ��   \  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� (0 getkindlestrippath GetKindleStripPath��  ��   � k     G � �  � � � r      � � � n      � � � 1    ��
�� 
psxp � 4     �� �
�� 
file � l    ����� � b     � � � l   	 ����� � I   	�� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � m   	 
 � � � � � B C o n t e n t s : R e s o u r c e s : k i n d l e s t r i p . p y��  ��   � o      ���� "0 kindlestrippath KindleStripPath �  � � � r     � � � m    ��
�� boovfals � o      ���� 0 
fileexists   �  � � � O   + � � � Z   * � ����� � I    �� ���
�� .coredoexbool        obj  � c     � � � o    ���� "0 kindlestrippath KindleStripPath � m    ��
�� 
psxf��   � r   # & � � � m   # $��
�� boovtrue � o      ���� 0 
fileexists  ��  ��   � m     � ��                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   , D � ����� � l  , . ����� � H   , . � � o   , -���� 0 
fileexists  ��  ��   � I  1 @�� � �
�� .sysodlogaskr        TEXT � m   1 2 � � � � � � T h e   k i n d l e s t r i p   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e .   P l e a s e   g e t   a   f r e s h   c o p y . � �� � �
�� 
appr � m   3 4 � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   5 8 � �  ��� � m   5 6 � � � � �  E x i t��   � �� ��
�� 
dflt � m   9 :�~�~ �  ��  ��   �  ��} � L   E G � � o   E F�|�| 0 
fileexists  �}   �  � � � l     �{�z�y�{  �z  �y   �  � � � i     � � � I      �x�w�v�x (0 getexecutablepaths GetExecutablePaths�w  �v   � L      � � F      � � � F      � � � I     �u�t�s�u (0 getcomic2ebookpath GetComic2EbookPath�t  �s   � I    �r�q�p�r $0 getkindlegenpath GetKindlegenPath�q  �p   � I    �o�n�m�o (0 getkindlestrippath GetKindleStripPath�n  �m   �  � � � l     �l�k�j�l  �k  �j   �  � � � i     � � � I      �i ��h�i 0 
extractcbr 
ExtractCBR �  � � � o      �g�g 0 filepath filePath �  ��f � o      �e�e 0 dstdir dstDir�f  �h   � k     c � �  � � � r      � � � n      � � � 1    �d
�d 
psxp � 4     �c �
�c 
file � l    ��b�a � b     � � � l   	 ��`�_ � I   	�^ � �
�^ .earsffdralis        afdr �  f     � �] ��\
�] 
rtyp � m    �[
�[ 
ctxt�\  �`  �_   � m   	 
 � � � � � 0 C o n t e n t s : R e s o u r c e s : u n r a r�b  �a   � o      �Z�Z 0 	unrarpath 	UnrarPath �  � � � r     � � � m    �Y
�Y boovfals � o      �X�X 0 
fileexists   �  � � � O   + � � � Z   * � ��W�V � I    �U ��T
�U .coredoexbool        obj  � c       o    �S�S 0 	unrarpath 	UnrarPath m    �R
�R 
psxf�T   � r   # & m   # $�Q
�Q boovtrue o      �P�P 0 
fileexists  �W  �V   � m    �                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  Z   , E�O�N l  , .	�M�L	 H   , .

 o   , -�K�K 0 
fileexists  �M  �L   k   1 A  I  1 >�J
�J .sysodlogaskr        TEXT m   1 2 � d T h e   u n r a r   e x e c u t a b l e   i s   m i s s i n g   f r o m   t h i s   p a c k a g e . �I
�I 
appr m   3 4 � ( K i n d l e C o m i c C o n v e r t e r �H
�H 
btns J   5 8 �G m   5 6 �  E x i t�G   �F�E
�F 
dflt m   9 :�D�D �E   �C L   ? A m   ? @�B
�B boovfals�C  �O  �N   �A I  F c�@ �?
�@ .sysoexecTEXT���     TEXT  b   F _!"! b   F Y#$# b   F U%&% b   F O'(' l  F K)�>�=) n   F K*+* 1   G K�<
�< 
strq+ o   F G�;�; 0 	unrarpath 	UnrarPath�>  �=  ( m   K N,, �--    x  & l  O T.�:�9. n   O T/0/ 1   P T�8
�8 
strq0 o   O P�7�7 0 filepath filePath�:  �9  $ m   U X11 �22   " l  Y ^3�6�53 n   Y ^454 1   Z ^�4
�4 
strq5 o   Y Z�3�3 0 dstdir dstDir�6  �5  �?  �A   � 676 l     �2�1�0�2  �1  �0  7 898 i    :;: I      �/<�.�/ 0 
extractcbz 
ExtractCBZ< =>= o      �-�- 0 filepath filePath> ?�,? o      �+�+ 0 dstdir dstDir�,  �.  ; I    �*@�)
�* .sysoexecTEXT���     TEXT@ b     ABA b     CDC b     EFE m     GG �HH * / u s r / b i n / u n z i p   - j   - d  F l   I�(�'I n    JKJ 1    �&
�& 
strqK o    �%�% 0 dstdir dstDir�(  �'  D m    LL �MM   B l   
N�$�#N n    
OPO 1    
�"
�" 
strqP o    �!�! 0 filepath filePath�$  �#  �)  9 QRQ l     � ���   �  �  R STS i    UVU I      �W�� 0 
extractcbx 
ExtractCBxW X�X o      �� 0 cbxfile  �  �  V k     �YY Z[Z O    \]\ r    ^_^ c    `a` l   
b��b n    
cdc 1    
�
� 
pnamd 4    �e
� 
filee o    �� 0 cbxfile  �  �  a m   
 �
� 
ctxt_ o      �� 0 filename fileName] m     ff�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  [ ghg r    iji m    kk �ll  j o      �� 0 fileextension fileExtensionh mnm Z    <op��o E    qrq o    �� 0 filename fileNamer m    ss �tt  .p k    8uu vwv r    xyx m    zz �{{  .y n     |}| 1    �
� 
txdl} 1    �
� 
ascrw ~~ r     (��� b     &��� m     !�� ���  .� l  ! %���� n   ! %��� 4  " %�
�
�
 
citm� m   # $�	�	��� o   ! "�� 0 filename fileName�  �  � o      �� 0 fileextension fileExtension ��� r   ) 8��� c   ) 6��� l  ) 4���� n   ) 4��� 7 * 4���
� 
citm� m   . 0�� � m   1 3����� o   ) *� �  0 filename fileName�  �  � m   4 5��
�� 
TEXT� o      ���� 0 filename fileName�  �  �  n ��� r   = B��� n   = @��� 1   > @��
�� 
psxp� o   = >���� 0 cbxfile  � o      ���� 0 filepath filePath� ��� r   C L��� b   C J��� b   C H��� n   C F��� 1   D F��
�� 
psxp� o   C D���� 0 parentfolder ParentFolder� o   F G���� 0 filename fileName� m   H I�� ���  /� o      ���� 0 
extractdir 
extractDir� ��� r   M T��� b   M R��� o   M N���� 0 parentfolder ParentFolder� m   N Q�� ��� 0 K i n d l e C o m i c C o n v e r t e r . l o g� o      ���� 0 resultsfile resultsFile� ��� Q   U ����� Z   X ������� =  X ]��� o   X Y���� 0 fileextension fileExtension� m   Y \�� ���  . c b z� r   ` i��� I   ` g������� 0 
extractcbz 
ExtractCBZ� ��� o   a b���� 0 filepath filePath� ���� o   b c���� 0 
extractdir 
extractDir��  ��  � o      ���� 0 shellresult  � ��� =  l q��� o   l m���� 0 fileextension fileExtension� m   m p�� ���  . c b r� ���� r   t }��� I   t {������� 0 
extractcbr 
ExtractCBR� ��� o   u v���� 0 filepath filePath� ���� o   v w���� 0 
extractdir 
extractDir��  ��  � o      ���� 0 shellresult  ��  ��  � R      ����
�� .ascrerr ****      � ****� l     ������ o      ���� 0 error_message  ��  ��  � �����
�� 
errn� l     ������ o      ���� 0 error_number  ��  ��  ��  � r   � ���� o   � ����� 0 error_message  � o      ���� 0 shellresult  � ��� Z   � �������� G   � ���� ?   � ���� l  � ������� I  � ������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   � ��� ��� 
 E r r o r� �����
�� 
psin� o   � ����� 0 shellresult  ��  ��  ��  � m   � �����  � ?   � ���� l  � ������� I  � ������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   � ��� ���  W a r n i n g� �����
�� 
psin� o   � ����� 0 shellresult  ��  ��  ��  � m   � �����  � I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 shellresult  � �����
�� 
appr� m   � ��� ��� 
 E r r o r��  ��  ��  � ���� L   � ��� o   � ����� 0 
extractdir 
extractDir��  T ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 comic2ebook Comic2Ebook� ���� o      ���� 0 dir  ��  ��  � k     j�� ��� r     ��� n        1    ��
�� 
psxp o     ���� 0 dir  � o      ���� 0 dirpath dirPath�  r     b    	 o    ���� 0 parentfolder ParentFolder m     �		 0 K i n d l e C o m i c C o n v e r t e r . l o g o      ���� 0 resultsfile resultsFile 

 r     b     b     b     b     b     m     �  p y t h o n   l   ���� n     1    ��
�� 
strq o    ���� "0 comic2ebookpath comic2ebookPath��  ��   m     �    l   ���� n     !  1    ��
�� 
strq! o    ���� 0 dirpath dirPath��  ��   m    "" �##    l   $����$ n    %&% 1    ��
�� 
strq& o    ���� 0 thetitle TheTitle��  ��   o      ���� 0 shellcommand   '(' Q     5)*+) r   # *,-, I  # (��.��
�� .sysoexecTEXT���     TEXT. o   # $���� 0 shellcommand  ��  - o      ���� 0 shellresult  * R      ��/0
�� .ascrerr ****      � ****/ l     1����1 o      ���� 0 error_message  ��  ��  0 ��2��
�� 
errn2 l     3����3 o      ���� 0 error_number  ��  ��  ��  + r   2 5454 o   2 3���� 0 error_message  5 o      ���� 0 shellresult  ( 676 Z   6 g89����8 G   6 U:;: ?   6 A<=< l  6 ?>����> I  6 ?����?
�� .sysooffslong    ��� null��  ? ��@A
�� 
psof@ m   8 9BB �CC 
 E r r o rA ��D��
�� 
psinD o   : ;���� 0 shellresult  ��  ��  ��  = m   ? @����  ; ?   D QEFE l  D OG����G I  D O����H
�� .sysooffslong    ��� null��  H ��IJ
�� 
psofI m   F IKK �LL  W a r n i n gJ ��M��
�� 
psinM o   J K���� 0 shellresult  ��  ��  ��  F m   O P����  9 I  X c��NO
�� .sysodlogaskr        TEXTN o   X Y���� 0 shellresult  O ��P��
�� 
apprP m   \ _QQ �RR 
 E r r o r��  ��  ��  7 S�S L   h j�~�~  �  � TUT l     �}�|�{�}  �|  �{  U VWV i     #XYX I      �zZ�y�z 0 	kindlegen 	KindlegenZ [�x[ o      �w�w 0 dir  �x  �y  Y k     `\\ ]^] r     _`_ b     aba n     cdc 1    �v
�v 
psxpd o     �u�u 0 dir  b m    ee �ff  c o n t e n t . o p f` o      �t�t 0 opfpath opfPath^ ghg r    iji b    klk o    	�s�s 0 parentfolder ParentFolderl m   	 
mm �nn 0 K i n d l e C o m i c C o n v e r t e r . l o gj o      �r�r 0 resultsfile resultsFileh opo r    qrq b    sts b    uvu o    �q�q 0 kindlegenpath kindlegenPathv m    ww �xx   t l   y�p�oy n    z{z 1    �n
�n 
strq{ o    �m�m 0 opfpath opfPath�p  �o  r o      �l�l 0 shellcommand  p |}| Q    -~�~ r    "��� I    �k��j
�k .sysoexecTEXT���     TEXT� o    �i�i 0 shellcommand  �j  � o      �h�h 0 shellresult   R      �g��
�g .ascrerr ****      � ****� l     ��f�e� o      �d�d 0 error_message  �f  �e  � �c��b
�c 
errn� l     ��a�`� o      �_�_ 0 error_number  �a  �`  �b  � r   * -��� o   * +�^�^ 0 error_message  � o      �]�] 0 shellresult  } ��� Z   . ]���\�[� G   . K��� ?   . 9��� l  . 7��Z�Y� I  . 7�X�W�
�X .sysooffslong    ��� null�W  � �V��
�V 
psof� m   0 1�� ��� 
 E r r o r� �U��T
�U 
psin� o   2 3�S�S 0 shellresult  �T  �Z  �Y  � m   7 8�R�R  � ?   < G��� l  < E��Q�P� I  < E�O�N�
�O .sysooffslong    ��� null�N  � �M��
�M 
psof� m   > ?�� ���  W a r n i n g� �L��K
�L 
psin� o   @ A�J�J 0 shellresult  �K  �Q  �P  � m   E F�I�I  � I  N Y�H��
�H .sysodlogaskr        TEXT� o   N O�G�G 0 shellresult  � �F��E
�F 
appr� m   R U�� ��� 
 E r r o r�E  �\  �[  � ��D� L   ^ `�C�C  �D  W ��� l     �B�A�@�B  �A  �@  � ��� i   $ '��� I      �?��>�? 0 	stripfile 	StripFile� ��=� o      �<�< 0 dir  �=  �>  � k     ��� ��� r     ��� b     ��� n     ��� 1    �;
�; 
psxp� o     �:�: 0 dir  � m    �� ���  c o n t e n t . m o b i� o      �9�9 0 origfilepath origFilePath� ��� r    ��� b    ��� b    ��� n    ��� 1   	 �8
�8 
psxp� o    	�7�7 0 parentfolder ParentFolder� o    �6�6 0 thetitle TheTitle� m    �� ��� 
 . m o b i� o      �5�5 $0 strippedfilepath strippedFilePath� ��� r    ��� b    ��� o    �4�4 0 parentfolder ParentFolder� m    �� ��� $ k i n d l e s t r i p l o g . t x t� o      �3�3 0 resultsfile resultsFile� ��� r    +��� b    )��� b    %��� b    #��� b    ��� b    ��� m    �� ���  p y t h o n  � l   ��2�1� n    ��� 1    �0
�0 
strq� o    �/�/ "0 kindlestrippath KindleStripPath�2  �1  � m    �� ���   � l   "��.�-� n    "��� 1     "�,
�, 
strq� o     �+�+ 0 origfilepath origFilePath�.  �-  � m   # $�� ���   � l  % (��*�)� n   % (��� 1   & (�(
�( 
strq� o   % &�'�' $0 strippedfilepath strippedFilePath�*  �)  � o      �&�& 0 shellcommand  � ��� Q   , A���� r   / 6��� I  / 4�%��$
�% .sysoexecTEXT���     TEXT� o   / 0�#�# 0 shellcommand  �$  � o      �"�" 0 shellresult  � R      �!��
�! .ascrerr ****      � ****� l     �� �� o      �� 0 error_message  �   �  � ���
� 
errn� l     ���� o      �� 0 error_number  �  �  �  � r   > A��� o   > ?�� 0 error_message  � o      �� 0 shellresult  � ��� Z   B ������ G   B i   ?   B Q l  B O�� I  B O��
� .sysooffslong    ��� null�   �
� 
psof m   D E �		 
 E r r o r �
�
� 
psin
 o   H I�� 0 shellresult  �  �  �   m   O P��   ?   T e l  T c��
 I  T c�	�
�	 .sysooffslong    ��� null�   �
� 
psof m   V Y �  W a r n i n g ��
� 
psin o   \ ]�� 0 shellresult  �  �  �
   m   c d��  � k   l �  r   l | I  l z�
� .rdwropenshor       file 4   l r�
� 
file o   p q� �  0 resultsfile resultsFile ����
�� 
perm m   u v��
�� boovtrue��   o      ���� 0 fileref fileRef  I  } ��� 
�� .rdwrseofnull���     **** o   } ~���� 0 fileref fileRef  ��!��
�� 
set2! m   � �����  ��   "#" I  � ���$%
�� .rdwrwritnull���     ****$ o   � ����� 0 shellresult  % ��&��
�� 
refn& o   � ����� 0 fileref fileRef��  # '��' I  � ���(��
�� .rdwrclosnull���     ****( o   � ����� 0 fileref fileRef��  ��  �  �  � )��) L   � �����  ��  � *+* l     ��������  ��  ��  + ,-, i   ( +./. I     ������
�� .aevtoappnull  �   � ****��  ��  / Z     01����0 l    2����2 I     �������� (0 getexecutablepaths GetExecutablePaths��  ��  ��  ��  1 k    33 454 r    676 m    	88 �99 � D r a g   &   D r o p   i m a g e s   f o l d e r s   o n t o   t h i s   A p p l e s c r i p t   a p p l i c a t i o n   t o   c o n v e r t   t h e m   t o   a   P a n e l V i e w   M o b i p o c k e t   e b o o k s .7 o      ���� 0 
dialogtext 
dialogText5 :��: I   ��;<
�� .sysodlogaskr        TEXT; o    ���� 0 
dialogtext 
dialogText< ��=>
�� 
appr= m    ?? �@@ ( K i n d l e C o m i c C o n v e r t e r> ��AB
�� 
btnsA J    CC D��D m    EE �FF  O K��  B ��G��
�� 
dfltG m    ���� ��  ��  ��  ��  - HIH l     ��������  ��  ��  I JKJ i   , /LML I     ��N��
�� .aevtodocnull  �    alisN o      ���� 0 
some_items  ��  M Z     �OP����O l    Q����Q I     �������� (0 getexecutablepaths GetExecutablePaths��  ��  ��  ��  P X    �R��SR k    �TT UVU O   $WXW l 	  #Y����Y r    #Z[Z c    !\]\ l   ^����^ n    _`_ m    ��
�� 
ctnr` o    ���� 0 	this_item  ��  ��  ] m     ��
�� 
ctxt[ o      ���� 0 parentfolder ParentFolder��  ��  X m    aa�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  V bcb Z   % cde��fd l  % .g����g =  % .hih n   % ,jkj 1   * ,��
�� 
asdrk l  % *l����l I  % *��m��
�� .sysonfo4asfe        filem o   % &���� 0 	this_item  ��  ��  ��  i m   , -��
�� boovfals��  ��  e k   1 [nn opo O  1 >qrq r   5 =sts n   5 ;uvu 1   9 ;��
�� 
nmxtv 4   5 9��w
�� 
filew o   7 8���� 0 	this_item  t o      ���� 0 item_extension  r m   1 2xx�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  p y��y Z   ? [z{����z G   ? J|}| =  ? B~~ o   ? @���� 0 item_extension   m   @ A�� ���  c b r} =  E H��� o   E F���� 0 item_extension  � m   F G�� ���  c b z{ r   M W��� I   M U������� 0 
extractcbx 
ExtractCBx� ���� c   N Q��� o   N O���� 0 	this_item  � m   O P��
�� 
ctxt��  ��  � o      ���� 0 dir  ��  ��  ��  ��  f r   ^ c��� c   ^ a��� o   ^ _���� 0 	this_item  � m   _ `��
�� 
ctxt� o      ���� 0 dir  c ��� r   d w��� I  d u�����
�� .sysoexecTEXT���     TEXT� b   d q��� m   d g�� ���  b a s e n a m e  � l  g p������ n   g p��� 1   l p��
�� 
strq� l  g l������ n   g l��� 1   h l��
�� 
psxp� o   g h���� 0 dir  ��  ��  ��  ��  ��  � o      ���� 0 dirname  � ��� r   x ���� I  x �����
�� .sysodlogaskr        TEXT� b   x ���� m   x {�� ��� 2 E n t e r   a   t i t l e   f o r   f o l d e r  � l  { ������� n   { ���� 1   | ���
�� 
strq� o   { |���� 0 dirname  ��  ��  � �����
�� 
dtxt� o   � ����� 0 dirname  ��  � o      ���� 0 temp  � ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
ttxt� o   � ����� 0 temp  ��  ��  � o      ���� 0 thetitle TheTitle� ��� I   � �������� 0 comic2ebook Comic2Ebook� ���� o   � ����� 0 dir  ��  ��  � ��� I   � �������� 0 	kindlegen 	Kindlegen� ���� o   � ����� 0 dir  ��  ��  � ���� I   � �������� 0 	stripfile 	StripFile� ��� o   � ��~�~ 0 dir  �  ��  ��  �� 0 	this_item  S o    �}�} 0 
some_items  ��  ��  K ��|� l     �{�z�y�{  �z  �y  �|       �x��������������x  � �w�v�u�t�s�r�q�p�o�n�m�l�w (0 getcomic2ebookpath GetComic2EbookPath�v $0 getkindlegenpath GetKindlegenPath�u (0 getkindlestrippath GetKindleStripPath�t (0 getexecutablepaths GetExecutablePaths�s 0 
extractcbr 
ExtractCBR�r 0 
extractcbz 
ExtractCBZ�q 0 
extractcbx 
ExtractCBx�p 0 comic2ebook Comic2Ebook�o 0 	kindlegen 	Kindlegen�n 0 	stripfile 	StripFile
�m .aevtoappnull  �   � ****
�l .aevtodocnull  �    alis� �k  �j�i���h�k (0 getcomic2ebookpath GetComic2EbookPath�j  �i  � �g�g 0 
fileexists  � �f�e�d�c 0�b�a A�`�_ J�^ N�] T�\�[�Z
�f 
file
�e 
rtyp
�d 
ctxt
�c .earsffdralis        afdr
�b 
psxp�a "0 comic2ebookpath comic2ebookPath
�` 
psxf
�_ .coredoexbool        obj 
�^ 
appr
�] 
btns
�\ 
dflt�[ 
�Z .sysodlogaskr        TEXT�h H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �Y ^�X�W���V�Y $0 getkindlegenpath GetKindlegenPath�X  �W  � �U�U 0 
fileexists  � �T h�S�R y�Q�P ��O ��N ��M�L�K
�T 
file
�S 
psxp�R 0 kindlegenpath kindlegenPath
�Q 
psxf
�P .coredoexbool        obj 
�O 
appr
�N 
btns
�M 
dflt�L 
�K .sysodlogaskr        TEXT�V >*��/�,E�OfE�O� ��&j  eE�Y hUO� �����kv�k� Y hO�� �J ��I�H���G�J (0 getkindlestrippath GetKindleStripPath�I  �H  � �F�F 0 
fileexists  � �E�D�C�B ��A�@ ��?�> ��= ��< ��;�:�9
�E 
file
�D 
rtyp
�C 
ctxt
�B .earsffdralis        afdr
�A 
psxp�@ "0 kindlestrippath KindleStripPath
�? 
psxf
�> .coredoexbool        obj 
�= 
appr
�< 
btns
�; 
dflt�: 
�9 .sysodlogaskr        TEXT�G H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �8 ��7�6���5�8 (0 getexecutablepaths GetExecutablePaths�7  �6  �  � �4�3�2�1�4 (0 getcomic2ebookpath GetComic2EbookPath�3 $0 getkindlegenpath GetKindlegenPath
�2 
bool�1 (0 getkindlestrippath GetKindleStripPath�5 *j+  	 	*j+ �&	 	*j+ �&� �0 ��/�.���-�0 0 
extractcbr 
ExtractCBR�/ �,��, �  �+�*�+ 0 filepath filePath�* 0 dstdir dstDir�.  � �)�(�'�&�) 0 filepath filePath�( 0 dstdir dstDir�' 0 	unrarpath 	UnrarPath�& 0 
fileexists  � �%�$�#�" ��!� �������,1�
�% 
file
�$ 
rtyp
�# 
ctxt
�" .earsffdralis        afdr
�! 
psxp
�  
psxf
� .coredoexbool        obj 
� 
appr
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
strq
� .sysoexecTEXT���     TEXT�- d*�)��l �%/�,E�OfE�O� ��&j  eE�Y hUO� �����kv�k� OfY hO�a ,a %�a ,%a %�a ,%j � �;������ 0 
extractcbz 
ExtractCBZ� ��� �  ��� 0 filepath filePath� 0 dstdir dstDir�  � ��� 0 filepath filePath� 0 dstdir dstDir� G�L�
� 
strq
� .sysoexecTEXT���     TEXT� ��,%�%��,%j � �V��
���	� 0 
extractcbx 
ExtractCBx� ��� �  �� 0 cbxfile  �
  � 	������� ����� 0 cbxfile  � 0 filename fileName� 0 fileextension fileExtension� 0 filepath filePath� 0 
extractdir 
extractDir� 0 resultsfile resultsFile�  0 shellresult  �� 0 error_message  �� 0 error_number  � !f������ksz�������������������������������������������
�� 
file
�� 
pnam
�� 
ctxt
�� 
ascr
�� 
txdl
�� 
citm����
�� 
TEXT
�� 
psxp�� 0 parentfolder ParentFolder�� 0 
extractcbz 
ExtractCBZ�� 0 
extractcbr 
ExtractCBR�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
appr
�� .sysodlogaskr        TEXT�	 �� *�/�,�&E�UO�E�O�� #���,FO��i/%E�O�[�\[Zk\Z�2�&E�Y hO��,E�O��,�%�%E�O�a %E�O .�a   *��l+ E�Y �a   *��l+ E�Y hW 
X  �E�O*a a a �a  j
 *a a a �a  ja & �a a l  Y hO�� ������������� 0 comic2ebook Comic2Ebook�� ����� �  ���� 0 dir  ��  � ���������������� 0 dir  �� 0 dirpath dirPath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  � ��������"���������B������K����Q��
�� 
psxp�� 0 parentfolder ParentFolder�� "0 comic2ebookpath comic2ebookPath
�� 
strq�� 0 thetitle TheTitle
�� .sysoexecTEXT���     TEXT�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
appr
�� .sysodlogaskr        TEXT�� k��,E�O��%E�O���,%�%��,%�%��,%E�O �j 	E�W 
X 
 �E�O*���� j
 *�a �� ja & �a a l Y hOh� ��Y���������� 0 	kindlegen 	Kindlegen�� ����� �  ���� 0 dir  ��  � ���������������� 0 dir  �� 0 opfpath opfPath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  � ��e��m��w������������������������
�� 
psxp�� 0 parentfolder ParentFolder�� 0 kindlegenpath kindlegenPath
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
appr
�� .sysodlogaskr        TEXT�� a��,�%E�O��%E�O��%��,%E�O �j E�W 
X  	�E�O*���� j
 *���� ja & �a a l Y hOh� ������������� 0 	stripfile 	StripFile�� ����� �  ���� 0 dir  ��  � 	�������������������� 0 dir  �� 0 origfilepath origFilePath�� $0 strippedfilepath strippedFilePath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  �� 0 fileref fileRef� �����������������������������������������������
�� 
psxp�� 0 parentfolder ParentFolder�� 0 thetitle TheTitle�� "0 kindlestrippath KindleStripPath
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� ���,�%E�O��,�%�%E�O��%E�O���,%�%��,%�%��,%E�O �j E�W 
X  �E�O*��a �a  j
 *�a a �a  ja & /*a �/a el E�O�a jl O�a �l O�j Y hOh� ��/��������
�� .aevtoappnull  �   � ****��  ��  �  � 
��8���?�~E�}�|�{�� (0 getexecutablepaths GetExecutablePaths�� 0 
dialogtext 
dialogText
� 
appr
�~ 
btns
�} 
dflt�| 
�{ .sysodlogaskr        TEXT�� *j+   �E�O�����kv�k� 	Y h� �zM�y�x���w
�z .aevtodocnull  �    alis�y 0 
some_items  �x  � �v�u�t�s�r�q�v 0 
some_items  �u 0 	this_item  �t 0 item_extension  �s 0 dir  �r 0 dirname  �q 0 temp  � �p�o�n�ma�l�k�j�i�h�g�f���e�d��c�b�a��`�_�^�]�\�[�Z�p (0 getexecutablepaths GetExecutablePaths
�o 
kocl
�n 
cobj
�m .corecnte****       ****
�l 
ctnr
�k 
ctxt�j 0 parentfolder ParentFolder
�i .sysonfo4asfe        file
�h 
asdr
�g 
file
�f 
nmxt
�e 
bool�d 0 
extractcbx 
ExtractCBx
�c 
psxp
�b 
strq
�a .sysoexecTEXT���     TEXT
�` 
dtxt
�_ .sysodlogaskr        TEXT
�^ 
ttxt�] 0 thetitle TheTitle�\ 0 comic2ebook Comic2Ebook�[ 0 	kindlegen 	Kindlegen�Z 0 	stripfile 	StripFile�w �*j+   � ��[��l kh � 	��,�&E�UO�j �,f  /� 
*�/�,E�UO�� 
 �� �& *��&k+ E�Y hY ��&E�Oa �a ,a ,%j E�Oa �a ,%a �l E�O�a ,E` O*�k+ O*�k+ O*�k+ [OY�hY h ascr  ��ޭ