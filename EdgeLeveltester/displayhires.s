;
; This is a simple calculator of screen adress hires mode 
;
; includes Patterns for MAP/GPS



;
; We define the adress of the HIRES screen.
;
#define DISPLAY_ADRESS $A000

.dsb 256-(*&255)

ScreenAdressLow
	.byt <(DISPLAY_ADRESS+40*0)
	.byt <(DISPLAY_ADRESS+40*1)
	.byt <(DISPLAY_ADRESS+40*2)
	.byt <(DISPLAY_ADRESS+40*3)
	.byt <(DISPLAY_ADRESS+40*4)
	.byt <(DISPLAY_ADRESS+40*5)
	.byt <(DISPLAY_ADRESS+40*6)
	.byt <(DISPLAY_ADRESS+40*7)
	.byt <(DISPLAY_ADRESS+40*8)
	.byt <(DISPLAY_ADRESS+40*9)
	.byt <(DISPLAY_ADRESS+40*10)
	.byt <(DISPLAY_ADRESS+40*11)
	.byt <(DISPLAY_ADRESS+40*12)
	.byt <(DISPLAY_ADRESS+40*13)
	.byt <(DISPLAY_ADRESS+40*14)
	.byt <(DISPLAY_ADRESS+40*15)
	.byt <(DISPLAY_ADRESS+40*16)
	.byt <(DISPLAY_ADRESS+40*17)
	.byt <(DISPLAY_ADRESS+40*18)
	.byt <(DISPLAY_ADRESS+40*19)
	.byt <(DISPLAY_ADRESS+40*20)
	.byt <(DISPLAY_ADRESS+40*21)
	.byt <(DISPLAY_ADRESS+40*22)
	.byt <(DISPLAY_ADRESS+40*23)
	.byt <(DISPLAY_ADRESS+40*24)
	.byt <(DISPLAY_ADRESS+40*25)
	.byt <(DISPLAY_ADRESS+40*26)
	.byt <(DISPLAY_ADRESS+40*27)
	.byt <(DISPLAY_ADRESS+40*28)
	.byt <(DISPLAY_ADRESS+40*29)
	.byt <(DISPLAY_ADRESS+40*30)
	.byt <(DISPLAY_ADRESS+40*31)
	.byt <(DISPLAY_ADRESS+40*32)
	.byt <(DISPLAY_ADRESS+40*33)
	.byt <(DISPLAY_ADRESS+40*34)
	.byt <(DISPLAY_ADRESS+40*35)
	.byt <(DISPLAY_ADRESS+40*36)
	.byt <(DISPLAY_ADRESS+40*37)
	.byt <(DISPLAY_ADRESS+40*38)
	.byt <(DISPLAY_ADRESS+40*39)
	.byt <(DISPLAY_ADRESS+40*40)
	.byt <(DISPLAY_ADRESS+40*41)
	.byt <(DISPLAY_ADRESS+40*42)
	.byt <(DISPLAY_ADRESS+40*43)
	.byt <(DISPLAY_ADRESS+40*44)
	.byt <(DISPLAY_ADRESS+40*45)
	.byt <(DISPLAY_ADRESS+40*46)
	.byt <(DISPLAY_ADRESS+40*47)
	.byt <(DISPLAY_ADRESS+40*48)
	.byt <(DISPLAY_ADRESS+40*49)
	.byt <(DISPLAY_ADRESS+40*50)
	.byt <(DISPLAY_ADRESS+40*51)
	.byt <(DISPLAY_ADRESS+40*52)
	.byt <(DISPLAY_ADRESS+40*53)
	.byt <(DISPLAY_ADRESS+40*54)
	.byt <(DISPLAY_ADRESS+40*55)
	.byt <(DISPLAY_ADRESS+40*56)
	.byt <(DISPLAY_ADRESS+40*57)
	.byt <(DISPLAY_ADRESS+40*58)
	.byt <(DISPLAY_ADRESS+40*59)
	.byt <(DISPLAY_ADRESS+40*60)
	.byt <(DISPLAY_ADRESS+40*61)
	.byt <(DISPLAY_ADRESS+40*62)
	.byt <(DISPLAY_ADRESS+40*63)
	.byt <(DISPLAY_ADRESS+40*64)
	.byt <(DISPLAY_ADRESS+40*65)
	.byt <(DISPLAY_ADRESS+40*66)
	.byt <(DISPLAY_ADRESS+40*67)
	.byt <(DISPLAY_ADRESS+40*68)
	.byt <(DISPLAY_ADRESS+40*69)
	.byt <(DISPLAY_ADRESS+40*70)
	.byt <(DISPLAY_ADRESS+40*71)
	.byt <(DISPLAY_ADRESS+40*72)
	.byt <(DISPLAY_ADRESS+40*73)
	.byt <(DISPLAY_ADRESS+40*74)
	.byt <(DISPLAY_ADRESS+40*75)
	.byt <(DISPLAY_ADRESS+40*76)
	.byt <(DISPLAY_ADRESS+40*77)
	.byt <(DISPLAY_ADRESS+40*78)
	.byt <(DISPLAY_ADRESS+40*79)
	.byt <(DISPLAY_ADRESS+40*80)
	.byt <(DISPLAY_ADRESS+40*81)
	.byt <(DISPLAY_ADRESS+40*82)
	.byt <(DISPLAY_ADRESS+40*83)
	.byt <(DISPLAY_ADRESS+40*84)
	.byt <(DISPLAY_ADRESS+40*85)
	.byt <(DISPLAY_ADRESS+40*86)
	.byt <(DISPLAY_ADRESS+40*87)
	.byt <(DISPLAY_ADRESS+40*88)
	.byt <(DISPLAY_ADRESS+40*89)
	.byt <(DISPLAY_ADRESS+40*90)
	.byt <(DISPLAY_ADRESS+40*91)
	.byt <(DISPLAY_ADRESS+40*92)
	.byt <(DISPLAY_ADRESS+40*93)
	.byt <(DISPLAY_ADRESS+40*94)
	.byt <(DISPLAY_ADRESS+40*95)
	.byt <(DISPLAY_ADRESS+40*96)
	.byt <(DISPLAY_ADRESS+40*97)
	.byt <(DISPLAY_ADRESS+40*98)
	.byt <(DISPLAY_ADRESS+40*99)
	.byt <(DISPLAY_ADRESS+40*100)
	.byt <(DISPLAY_ADRESS+40*101)
	.byt <(DISPLAY_ADRESS+40*102)
	.byt <(DISPLAY_ADRESS+40*103)
	.byt <(DISPLAY_ADRESS+40*104)
	.byt <(DISPLAY_ADRESS+40*105)
	.byt <(DISPLAY_ADRESS+40*106)
	.byt <(DISPLAY_ADRESS+40*107)
	.byt <(DISPLAY_ADRESS+40*108)
	.byt <(DISPLAY_ADRESS+40*109)
	.byt <(DISPLAY_ADRESS+40*110)
	.byt <(DISPLAY_ADRESS+40*111)
	.byt <(DISPLAY_ADRESS+40*112)
	.byt <(DISPLAY_ADRESS+40*113)
	.byt <(DISPLAY_ADRESS+40*114)
	.byt <(DISPLAY_ADRESS+40*115)
	.byt <(DISPLAY_ADRESS+40*116)
	.byt <(DISPLAY_ADRESS+40*117)
	.byt <(DISPLAY_ADRESS+40*118)
	.byt <(DISPLAY_ADRESS+40*119)
	.byt <(DISPLAY_ADRESS+40*120)
	.byt <(DISPLAY_ADRESS+40*121)
	.byt <(DISPLAY_ADRESS+40*122)
	.byt <(DISPLAY_ADRESS+40*123)
	.byt <(DISPLAY_ADRESS+40*124)
	.byt <(DISPLAY_ADRESS+40*125)
	.byt <(DISPLAY_ADRESS+40*126)
	.byt <(DISPLAY_ADRESS+40*127)
	.byt <(DISPLAY_ADRESS+40*128)
	.byt <(DISPLAY_ADRESS+40*129)
	.byt <(DISPLAY_ADRESS+40*130)
	.byt <(DISPLAY_ADRESS+40*131)
	.byt <(DISPLAY_ADRESS+40*132)
	.byt <(DISPLAY_ADRESS+40*133)
	.byt <(DISPLAY_ADRESS+40*134)
	.byt <(DISPLAY_ADRESS+40*135)
	.byt <(DISPLAY_ADRESS+40*136)
	.byt <(DISPLAY_ADRESS+40*137)
	.byt <(DISPLAY_ADRESS+40*138)
	.byt <(DISPLAY_ADRESS+40*139)
	.byt <(DISPLAY_ADRESS+40*140)
	.byt <(DISPLAY_ADRESS+40*141)
	.byt <(DISPLAY_ADRESS+40*142)
	.byt <(DISPLAY_ADRESS+40*143)
	.byt <(DISPLAY_ADRESS+40*144)
	.byt <(DISPLAY_ADRESS+40*145)
	.byt <(DISPLAY_ADRESS+40*146)
	.byt <(DISPLAY_ADRESS+40*147)
	.byt <(DISPLAY_ADRESS+40*148)
	.byt <(DISPLAY_ADRESS+40*149)
	.byt <(DISPLAY_ADRESS+40*150)
	.byt <(DISPLAY_ADRESS+40*151)
	.byt <(DISPLAY_ADRESS+40*152)
	.byt <(DISPLAY_ADRESS+40*153)
	.byt <(DISPLAY_ADRESS+40*154)
	.byt <(DISPLAY_ADRESS+40*155)
	.byt <(DISPLAY_ADRESS+40*156)
	.byt <(DISPLAY_ADRESS+40*157)
	.byt <(DISPLAY_ADRESS+40*158)
	.byt <(DISPLAY_ADRESS+40*159)
	.byt <(DISPLAY_ADRESS+40*160)
	.byt <(DISPLAY_ADRESS+40*161)
	.byt <(DISPLAY_ADRESS+40*162)
	.byt <(DISPLAY_ADRESS+40*163)
	.byt <(DISPLAY_ADRESS+40*164)
	.byt <(DISPLAY_ADRESS+40*165)
	.byt <(DISPLAY_ADRESS+40*166)
	.byt <(DISPLAY_ADRESS+40*167)
	.byt <(DISPLAY_ADRESS+40*168)
	.byt <(DISPLAY_ADRESS+40*169)
	.byt <(DISPLAY_ADRESS+40*170)
	.byt <(DISPLAY_ADRESS+40*171)
	.byt <(DISPLAY_ADRESS+40*172)
	.byt <(DISPLAY_ADRESS+40*173)
	.byt <(DISPLAY_ADRESS+40*174)
	.byt <(DISPLAY_ADRESS+40*175)
	.byt <(DISPLAY_ADRESS+40*176)
	.byt <(DISPLAY_ADRESS+40*177)
	.byt <(DISPLAY_ADRESS+40*178)
	.byt <(DISPLAY_ADRESS+40*179)
	.byt <(DISPLAY_ADRESS+40*180)
	.byt <(DISPLAY_ADRESS+40*181)
	.byt <(DISPLAY_ADRESS+40*182)
	.byt <(DISPLAY_ADRESS+40*183)
	.byt <(DISPLAY_ADRESS+40*184)
	.byt <(DISPLAY_ADRESS+40*185)
	.byt <(DISPLAY_ADRESS+40*186)
	.byt <(DISPLAY_ADRESS+40*187)
	.byt <(DISPLAY_ADRESS+40*188)
	.byt <(DISPLAY_ADRESS+40*189)
	.byt <(DISPLAY_ADRESS+40*190)
	.byt <(DISPLAY_ADRESS+40*191)
	.byt <(DISPLAY_ADRESS+40*192)
	.byt <(DISPLAY_ADRESS+40*193)
	.byt <(DISPLAY_ADRESS+40*194)
	.byt <(DISPLAY_ADRESS+40*195)
	.byt <(DISPLAY_ADRESS+40*196)
	.byt <(DISPLAY_ADRESS+40*197)
	.byt <(DISPLAY_ADRESS+40*198)
	.byt <(DISPLAY_ADRESS+40*199)
	
; -- Patterns for MAP 
PATTERN
pattern8
.byt 63+64
.byt 63+64
.byt 63+64
.byt 63+64
.byt 63+64
.byt 63+64
pattern7
.byt 31+64
.byt 55+64
.byt 61+64
.byt 31+64
.byt 55+64
.byt 61+64
pattern6
.byt 29+64
.byt 55+64
.byt 29+64
.byt 55+64
.byt 29+64
.byt 55+64
pattern5
.byt 12+64
.byt 55+64
.byt 29+64
.byt 51+64
.byt 12+64
.byt 55+64
pattern4
.byt 51+64
.byt 12+64
.byt 51+64
.byt 12+64
.byt 51+64
.byt 12+64
pattern3
.byt 34+64
.byt 8 +64
.byt 34+64
.byt 8 +64
.byt 34+64
.byt 8 +64
pattern2
.byt 32+64
.byt 8 +64
.byt 2 +64
.byt 32+64
.byt 8 +64
.byt 2 +64
pattern1
.byt 0 +64
.byt 0 +64
.byt 0 +64
.byt 0 +64
.byt 0 +64
.byt 0 +64
patterncible
.byt 0 +64
.byt 30 +64
.byt 18 +64
.byt 18 +64
.byt 30 +64
.byt 0 +64

.dsb 256-(*&255)

; This table contains hight 8 bits of the adress
ScreenAdressHigh
	.byt >(DISPLAY_ADRESS+40*0)
	.byt >(DISPLAY_ADRESS+40*1)
	.byt >(DISPLAY_ADRESS+40*2)
	.byt >(DISPLAY_ADRESS+40*3)
	.byt >(DISPLAY_ADRESS+40*4)
	.byt >(DISPLAY_ADRESS+40*5)
	.byt >(DISPLAY_ADRESS+40*6)
	.byt >(DISPLAY_ADRESS+40*7)
	.byt >(DISPLAY_ADRESS+40*8)
	.byt >(DISPLAY_ADRESS+40*9)
	.byt >(DISPLAY_ADRESS+40*10)
	.byt >(DISPLAY_ADRESS+40*11)
	.byt >(DISPLAY_ADRESS+40*12)
	.byt >(DISPLAY_ADRESS+40*13)
	.byt >(DISPLAY_ADRESS+40*14)
	.byt >(DISPLAY_ADRESS+40*15)
	.byt >(DISPLAY_ADRESS+40*16)
	.byt >(DISPLAY_ADRESS+40*17)
	.byt >(DISPLAY_ADRESS+40*18)
	.byt >(DISPLAY_ADRESS+40*19)
	.byt >(DISPLAY_ADRESS+40*20)
	.byt >(DISPLAY_ADRESS+40*21)
	.byt >(DISPLAY_ADRESS+40*22)
	.byt >(DISPLAY_ADRESS+40*23)
	.byt >(DISPLAY_ADRESS+40*24)
	.byt >(DISPLAY_ADRESS+40*25)
	.byt >(DISPLAY_ADRESS+40*26)
	.byt >(DISPLAY_ADRESS+40*27)
	.byt >(DISPLAY_ADRESS+40*28)
	.byt >(DISPLAY_ADRESS+40*29)
	.byt >(DISPLAY_ADRESS+40*30)
	.byt >(DISPLAY_ADRESS+40*31)
	.byt >(DISPLAY_ADRESS+40*32)
	.byt >(DISPLAY_ADRESS+40*33)
	.byt >(DISPLAY_ADRESS+40*34)
	.byt >(DISPLAY_ADRESS+40*35)
	.byt >(DISPLAY_ADRESS+40*36)
	.byt >(DISPLAY_ADRESS+40*37)
	.byt >(DISPLAY_ADRESS+40*38)
	.byt >(DISPLAY_ADRESS+40*39)
	.byt >(DISPLAY_ADRESS+40*40)
	.byt >(DISPLAY_ADRESS+40*41)
	.byt >(DISPLAY_ADRESS+40*42)
	.byt >(DISPLAY_ADRESS+40*43)
	.byt >(DISPLAY_ADRESS+40*44)
	.byt >(DISPLAY_ADRESS+40*45)
	.byt >(DISPLAY_ADRESS+40*46)
	.byt >(DISPLAY_ADRESS+40*47)
	.byt >(DISPLAY_ADRESS+40*48)
	.byt >(DISPLAY_ADRESS+40*49)
	.byt >(DISPLAY_ADRESS+40*50)
	.byt >(DISPLAY_ADRESS+40*51)
	.byt >(DISPLAY_ADRESS+40*52)
	.byt >(DISPLAY_ADRESS+40*53)
	.byt >(DISPLAY_ADRESS+40*54)
	.byt >(DISPLAY_ADRESS+40*55)
	.byt >(DISPLAY_ADRESS+40*56)
	.byt >(DISPLAY_ADRESS+40*57)
	.byt >(DISPLAY_ADRESS+40*58)
	.byt >(DISPLAY_ADRESS+40*59)
	.byt >(DISPLAY_ADRESS+40*60)
	.byt >(DISPLAY_ADRESS+40*61)
	.byt >(DISPLAY_ADRESS+40*62)
	.byt >(DISPLAY_ADRESS+40*63)
	.byt >(DISPLAY_ADRESS+40*64)
	.byt >(DISPLAY_ADRESS+40*65)
	.byt >(DISPLAY_ADRESS+40*66)
	.byt >(DISPLAY_ADRESS+40*67)
	.byt >(DISPLAY_ADRESS+40*68)
	.byt >(DISPLAY_ADRESS+40*69)
	.byt >(DISPLAY_ADRESS+40*70)
	.byt >(DISPLAY_ADRESS+40*71)
	.byt >(DISPLAY_ADRESS+40*72)
	.byt >(DISPLAY_ADRESS+40*73)
	.byt >(DISPLAY_ADRESS+40*74)
	.byt >(DISPLAY_ADRESS+40*75)
	.byt >(DISPLAY_ADRESS+40*76)
	.byt >(DISPLAY_ADRESS+40*77)
	.byt >(DISPLAY_ADRESS+40*78)
	.byt >(DISPLAY_ADRESS+40*79)
	.byt >(DISPLAY_ADRESS+40*80)
	.byt >(DISPLAY_ADRESS+40*81)
	.byt >(DISPLAY_ADRESS+40*82)
	.byt >(DISPLAY_ADRESS+40*83)
	.byt >(DISPLAY_ADRESS+40*84)
	.byt >(DISPLAY_ADRESS+40*85)
	.byt >(DISPLAY_ADRESS+40*86)
	.byt >(DISPLAY_ADRESS+40*87)
	.byt >(DISPLAY_ADRESS+40*88)
	.byt >(DISPLAY_ADRESS+40*89)
	.byt >(DISPLAY_ADRESS+40*90)
	.byt >(DISPLAY_ADRESS+40*91)
	.byt >(DISPLAY_ADRESS+40*92)
	.byt >(DISPLAY_ADRESS+40*93)
	.byt >(DISPLAY_ADRESS+40*94)
	.byt >(DISPLAY_ADRESS+40*95)
	.byt >(DISPLAY_ADRESS+40*96)
	.byt >(DISPLAY_ADRESS+40*97)
	.byt >(DISPLAY_ADRESS+40*98)
	.byt >(DISPLAY_ADRESS+40*99)
	.byt >(DISPLAY_ADRESS+40*100)
	.byt >(DISPLAY_ADRESS+40*101)
	.byt >(DISPLAY_ADRESS+40*102)
	.byt >(DISPLAY_ADRESS+40*103)
	.byt >(DISPLAY_ADRESS+40*104)
	.byt >(DISPLAY_ADRESS+40*105)
	.byt >(DISPLAY_ADRESS+40*106)
	.byt >(DISPLAY_ADRESS+40*107)
	.byt >(DISPLAY_ADRESS+40*108)
	.byt >(DISPLAY_ADRESS+40*109)
	.byt >(DISPLAY_ADRESS+40*110)
	.byt >(DISPLAY_ADRESS+40*111)
	.byt >(DISPLAY_ADRESS+40*112)
	.byt >(DISPLAY_ADRESS+40*113)
	.byt >(DISPLAY_ADRESS+40*114)
	.byt >(DISPLAY_ADRESS+40*115)
	.byt >(DISPLAY_ADRESS+40*116)
	.byt >(DISPLAY_ADRESS+40*117)
	.byt >(DISPLAY_ADRESS+40*118)
	.byt >(DISPLAY_ADRESS+40*119)
	.byt >(DISPLAY_ADRESS+40*120)
	.byt >(DISPLAY_ADRESS+40*121)
	.byt >(DISPLAY_ADRESS+40*122)
	.byt >(DISPLAY_ADRESS+40*123)
	.byt >(DISPLAY_ADRESS+40*124)
	.byt >(DISPLAY_ADRESS+40*125)
	.byt >(DISPLAY_ADRESS+40*126)
	.byt >(DISPLAY_ADRESS+40*127)
	.byt >(DISPLAY_ADRESS+40*128)
	.byt >(DISPLAY_ADRESS+40*129)
	.byt >(DISPLAY_ADRESS+40*130)
	.byt >(DISPLAY_ADRESS+40*131)
	.byt >(DISPLAY_ADRESS+40*132)
	.byt >(DISPLAY_ADRESS+40*133)
	.byt >(DISPLAY_ADRESS+40*134)
	.byt >(DISPLAY_ADRESS+40*135)
	.byt >(DISPLAY_ADRESS+40*136)
	.byt >(DISPLAY_ADRESS+40*137)
	.byt >(DISPLAY_ADRESS+40*138)
	.byt >(DISPLAY_ADRESS+40*139)
	.byt >(DISPLAY_ADRESS+40*140)
	.byt >(DISPLAY_ADRESS+40*141)
	.byt >(DISPLAY_ADRESS+40*142)
	.byt >(DISPLAY_ADRESS+40*143)
	.byt >(DISPLAY_ADRESS+40*144)
	.byt >(DISPLAY_ADRESS+40*145)
	.byt >(DISPLAY_ADRESS+40*146)
	.byt >(DISPLAY_ADRESS+40*147)
	.byt >(DISPLAY_ADRESS+40*148)
	.byt >(DISPLAY_ADRESS+40*149)
	.byt >(DISPLAY_ADRESS+40*150)
	.byt >(DISPLAY_ADRESS+40*151)
	.byt >(DISPLAY_ADRESS+40*152)
	.byt >(DISPLAY_ADRESS+40*153)
	.byt >(DISPLAY_ADRESS+40*154)
	.byt >(DISPLAY_ADRESS+40*155)
	.byt >(DISPLAY_ADRESS+40*156)
	.byt >(DISPLAY_ADRESS+40*157)
	.byt >(DISPLAY_ADRESS+40*158)
	.byt >(DISPLAY_ADRESS+40*159)
	.byt >(DISPLAY_ADRESS+40*160)
	.byt >(DISPLAY_ADRESS+40*161)
	.byt >(DISPLAY_ADRESS+40*162)
	.byt >(DISPLAY_ADRESS+40*163)
	.byt >(DISPLAY_ADRESS+40*164)
	.byt >(DISPLAY_ADRESS+40*165)
	.byt >(DISPLAY_ADRESS+40*166)
	.byt >(DISPLAY_ADRESS+40*167)
	.byt >(DISPLAY_ADRESS+40*168)
	.byt >(DISPLAY_ADRESS+40*169)
	.byt >(DISPLAY_ADRESS+40*170)
	.byt >(DISPLAY_ADRESS+40*171)
	.byt >(DISPLAY_ADRESS+40*172)
	.byt >(DISPLAY_ADRESS+40*173)
	.byt >(DISPLAY_ADRESS+40*174)
	.byt >(DISPLAY_ADRESS+40*175)
	.byt >(DISPLAY_ADRESS+40*176)
	.byt >(DISPLAY_ADRESS+40*177)
	.byt >(DISPLAY_ADRESS+40*178)
	.byt >(DISPLAY_ADRESS+40*179)
	.byt >(DISPLAY_ADRESS+40*180)
	.byt >(DISPLAY_ADRESS+40*181)
	.byt >(DISPLAY_ADRESS+40*182)
	.byt >(DISPLAY_ADRESS+40*183)
	.byt >(DISPLAY_ADRESS+40*184)
	.byt >(DISPLAY_ADRESS+40*185)
	.byt >(DISPLAY_ADRESS+40*186)
	.byt >(DISPLAY_ADRESS+40*187)
	.byt >(DISPLAY_ADRESS+40*188)
	.byt >(DISPLAY_ADRESS+40*189)
	.byt >(DISPLAY_ADRESS+40*190)
	.byt >(DISPLAY_ADRESS+40*191)
	.byt >(DISPLAY_ADRESS+40*192)
	.byt >(DISPLAY_ADRESS+40*193)
	.byt >(DISPLAY_ADRESS+40*194)
	.byt >(DISPLAY_ADRESS+40*195)
	.byt >(DISPLAY_ADRESS+40*196)
	.byt >(DISPLAY_ADRESS+40*197)
	.byt >(DISPLAY_ADRESS+40*198)
	.byt >(DISPLAY_ADRESS+40*199)




