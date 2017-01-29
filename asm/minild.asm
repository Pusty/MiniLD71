org 0x7E00
bits 16
IMPL_KEYLISTENER:
mov eax, 0x0024 
mov ebx,dword [eax]
mov [oldINT24], ebx 
mov [eax], dword keyboardINTListener
call L1706377736
jmp $
L1706377736:
   .lL1706377736:
   call initGraphics
   .lL455896770:
   mov si, word pal
   call loadPal
   .lL1323165413:
   mov ax, word [freeze]
   mov bx, 0 
   cmp bx, ax
   je .lL1880587981
   .lL511754216:
   mov di, word screen
   mov ax, word 0
   mov bx, word 0
   call drawImage
   .lL1721931908:
   call flip
   .lL1198108795:
   jmp .lL214126413
   .lL396873410:
   mov si, word 100
   call sleep
   .lL214126413:
   mov ax, word [freeze]
   mov bx, 0 
   cmp bx, ax
   jne .lL396873410
   .lL1880587981:
   mov dx, word 0
   mov [stack_L2001049719+0], dx 
   call L2001049719
   .lL2046562095:
   mov ax, word 0
   mov [loading], ax 
   .lL1342443276:
   mov ax, word [freeze]
   mov bx, 0 
   cmp bx, ax
   jne .lL769287236
   mov ax, word [loading]
   mov bx, 0 
   cmp bx, ax
   jge .lL1587487668
   .lL1199823423:
   jmp .lL769287236
   .lL932172204:
   mov ax, word [loading]
   mov bx, 0 
   cmp bx, ax
   jge .lL1225358173
   .lL1848402763:
   mov ax, word [loading]
   mov bx, word 1
   sub ax, bx
   mov [loading], ax 
   .lL933699219:
   mov ax, word [loading]
   mov bx, word 4
   mov dx, 0 
   div bx
   mov bx, dx
   mov ax, word 2
   cmp ax, bx
   jg .lL2121055098
   .lL2084435065:
   mov di, word loading_0
   mov ax, word 44
   mov bx, word 40
   call drawImage
   jmp .lL1896277646
   .lL2121055098:
   mov di, word loading_1
   mov ax, word 44
   mov bx, word 40
   call drawImage
   .lL1896277646:
   mov di, word loadingImg
   mov ax, word 54
   mov bx, word 42
   call drawImage
   .lL1225358173:
   call flip
   .lL2128227771:
   mov si, word 100
   call sleep
   .lL769287236:
   mov ax, word [loading]
   mov bx, 0 
   cmp bx, ax
   jl .lL932172204
   .lL1702297201:
   mov ax, word [freeze]
   mov bx, 0 
   cmp bx, ax
   je .lL1587487668
   .lL1996181658:
   mov di, word screen
   mov ax, word 0
   mov bx, word 0
   call drawImage
   .lL806353501:
   call flip
   .lL521645586:
   jmp .lL1296064247
   .lL1637070917:
   mov si, word 100
   call sleep
   .lL1296064247:
   mov ax, word [freeze]
   mov bx, 0 
   cmp bx, ax
   jne .lL1637070917
   .lL1587487668:
   mov bx, word [coins]
   mov ax, word 7
   cmp ax, bx
   jg .lL780237624
   .lL205797316:
   mov ax, word 0
   mov [coins], ax 
   .lL1128032093:
   mov bx, word [mapIndex]
   mov ax, word 1
   add ax, bx
   mov [mapIndex], ax 
   .lL1066516207:
   mov bx, word [mapIndex]
   mov ax, word 2
   cmp ax, bx
   jge .lL443308702
   .lL935044096:
   mov ax, word 0
   mov [mapIndex], ax 
   .lL396180261:
   mov dx, word [mapIndex]
   mov [stack_L2001049719+0], dx 
   call L2001049719
   .lL625576447:
   mov ax, word 300
   mov [loading], ax 
   .lL1560911714:
   jmp .lL939047783
   .lL443308702:
   mov dx, word [mapIndex]
   mov [stack_L2001049719+0], dx 
   call L2001049719
   .lL939047783:
   mov ax, word 0
   mov [playerX], ax 
   .lL1237514926:
   mov ax, word 20
   mov [playerY], ax 
   .lL780237624:
   mov ax, word [jump]
   mov bx, 0 
   cmp bx, ax
   je .lL548246552
   .lL835648992:
   mov ax, word -2
   mov [velY], ax 
   .lL1134517053:
   mov bx, word [inJump]
   mov ax, word 5
   cmp ax, bx
   jle .lL492228202
   .lL1368884364:
   mov ax, word -1
   mov [velY], ax 
   .lL492228202:
   mov ax, word [inJump]
   mov bx, word 1
   sub ax, bx
   mov [inJump], ax 
   .lL401625763:
   mov ax, word [inJump]
   mov bx, 0 
   cmp bx, ax
   jl .lL772777427
   .lL83954662:
   mov ax, word 0
   mov [jump], ax 
   .lL772777427:
   mov ax, word 0
   mov [onGround], ax 
   .lL1751075886:
   jmp .lL2108649164
   .lL548246552:
   mov ax, word 1
   mov [velY], ax 
   .lL2108649164:
   mov ax, word [velXP]
   mov [velX], ax 
   .lL777874839:
   call L135721597
   .lL596512129:
   call L1804094807
   .lL824318946:
   mov ax, word [velX]
   mov bx, 0 
   cmp bx, ax
   je .lL930990596
   mov ax, word [isMoving]
   mov bx, 0 
   cmp bx, ax
   je .lL930990596
   .lL1921595561:
   mov ax, word [velX]
   mov [lastVel], ax 
   .lL930990596:
   mov ax, word [lastVel]
   mov bx, 0 
   cmp bx, ax
   jge .lL565760380
   .lL6566818:
   mov ax, word [onGround]
   mov bx, 0 
   cmp bx, ax
   jne .lL1494279232
   .lL1650967483:
   mov si, word playerImage
   mov bx, word pRF
   mov [si], bx 
   jmp .lL2047329716
   .lL1494279232:
   mov ax, word [isMoving]
   mov bx, 0 
   cmp bx, ax
   je .lL648129364
   .lL1029991479:
   mov bx, word [inMoving]
   mov ax, word 10
   cmp ax, bx
   jg .lL1104106489
   .lL94438417:
   mov si, word playerImage
   mov bx, word pR0
   mov [si], bx 
   jmp .lL2047329716
   .lL1104106489:
   mov si, word playerImage
   mov bx, word pR1
   mov [si], bx 
   .lL787604730:
   jmp .lL2047329716
   .lL648129364:
   mov si, word playerImage
   mov bx, word pR
   mov [si], bx 
   .lL812265671:
   jmp .lL2047329716
   .lL565760380:
   mov ax, word [onGround]
   mov bx, 0 
   cmp bx, ax
   jne .lL193064360
   .lL109961541:
   mov si, word playerImage
   mov bx, word pLF
   mov [si], bx 
   jmp .lL2047329716
   .lL193064360:
   mov ax, word [isMoving]
   mov bx, 0 
   cmp bx, ax
   je .lL670700378
   .lL1190654826:
   mov bx, word [inMoving]
   mov ax, word 10
   cmp ax, bx
   jg .lL1109371569
   .lL728890494:
   mov si, word playerImage
   mov bx, word pL0
   mov [si], bx 
   jmp .lL2047329716
   .lL1109371569:
   mov si, word playerImage
   mov bx, word pL1
   mov [si], bx 
   .lL1558600329:
   jmp .lL2047329716
   .lL670700378:
   mov si, word playerImage
   mov bx, word pL
   mov [si], bx 
   .lL2047329716:
   call L1746572565
   .lL636718812:
   mov bx, word [playerY]
   mov ax, word 20
   cmp ax, bx
   jge .lL445051633
   .lL1051754451:
   mov si, word playerImage
   mov di, word [si]
   mov ax, word 35
   mov bx, word [playerY]
   call drawImage
   jmp .lL1349277854
   .lL445051633:
   mov si, word playerImage
   mov di, word [si]
   mov ax, word 35
   mov bx, word 20
   call drawImage
   .lL1349277854:
   call L1044036744
   .lL1775282465:
   call flip
   .lL1147985808:
   call L1044036744
   .lL2040495657:
   call resetBuffer
   .lL1267032364:
   mov bx, word [animTick]
   mov ax, word 1
   add ax, bx
   mov [animTick], ax 
   .lL661672156:
   mov bx, word [animTick]
   mov ax, word 20
   cmp ax, bx
   jge .lL96639997
   .lL128893786:
   mov ax, word 0
   mov [animTick], ax 
   .lL96639997:
   mov si, word 33
   call sleep
   .lL1732398722:
   jmp .lL1342443276
L1804094807:
   .lL1804094807:
   mov dx, word 0
   mov [stack_L1804094807+0], dx 
   .lL1108411398:
   jmp .lL1394438858
   .lL584634336:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 1
   cmp ax, bx
   je .lL1469821799
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 2
   cmp ax, bx
   jne .lL501263526
   .lL1469821799:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   push word [si]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   add ax, bx
   mov cx, ax
   pop ax
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL626202354:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   push word [si]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   cmp ax, bx
   jge .lL1099983479
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   push word [si]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 4
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   cmp ax, bx
   jg .lL1268447657
   .lL1099983479:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   neg ax
   mov cx, ax
   pop ax
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1401420256:
   jmp .lL1268447657
   .lL501263526:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 3
   cmp ax, bx
   jne .lL1268447657
   .lL1851691492:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 1
   add ax, bx
   mov cx, ax
   pop ax
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL752848266:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 10
   cmp ax, bx
   jg .lL1268447657
   .lL815033865:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1804094807+0]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1268447657:
   add [stack_L1804094807+0], word 1
   .lL1394438858:
   mov bx, word [stack_L1804094807+0]
   mov ax, word 16
   cmp ax, bx
   jg .lL584634336
   .lL1555093762:
   ret
L2001049719:
   .lL2001049719:
   mov ax, word 10
   mov [loading], ax 
   .lL1190900417:
   mov ax, word [stack_L2001049719+0]
   mov bx, 0 
   cmp bx, ax
   jne .lL379110473
   .lL99550389:
   mov si, word tileWorld1
   mov ax, word 1
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeX], ax 
   .lL1598924227:
   mov si, word tileWorld1
   mov ax, word 2
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeY], ax 
   .lL1144748369:
   mov dx, word 0
   mov [stack_L2001049719+2], dx 
   .lL340870931:
   jmp .lL1768305536
   .lL1530388690:
   push word tileWorld
   push word [stack_L2001049719+2]
   mov si, word tileWorld1
   mov ax, word [stack_L2001049719+2]
   mov bx, 2 
   mul bx
   add si, ax
   mov cx, word [si]
   pop ax
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1146743572:
   add [stack_L2001049719+2], word 1
   .lL1768305536:
   push word [stack_L2001049719+2]
   mov bx, word [worldSizeX]
   mov ax, word [worldSizeY]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop bx
   cmp ax, bx
   jg .lL1530388690
   .lL1512981843:
   jmp .lL42768293
   .lL379110473:
   mov bx, word [stack_L2001049719+0]
   mov ax, word 1
   cmp ax, bx
   jne .lL1717159510
   .lL1834188994:
   mov si, word tileWorld2
   mov ax, word 1
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeX], ax 
   .lL1174361318:
   mov si, word tileWorld2
   mov ax, word 2
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeY], ax 
   .lL589873731:
   mov dx, word 0
   mov [stack_L2001049719+2], dx 
   .lL200006406:
   jmp .lL2052001577
   .lL1160264930:
   push word tileWorld
   push word [stack_L2001049719+2]
   mov si, word tileWorld2
   mov ax, word [stack_L2001049719+2]
   mov bx, 2 
   mul bx
   add si, ax
   mov cx, word [si]
   pop ax
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL544724190:
   add [stack_L2001049719+2], word 1
   .lL2052001577:
   push word [stack_L2001049719+2]
   mov bx, word [worldSizeX]
   mov ax, word [worldSizeY]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop bx
   cmp ax, bx
   jg .lL1160264930
   .lL1972439101:
   jmp .lL42768293
   .lL1717159510:
   mov bx, word [stack_L2001049719+0]
   mov ax, word 2
   cmp ax, bx
   jne .lL42768293
   .lL2007328737:
   mov si, word tileWorld3
   mov ax, word 1
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeX], ax 
   .lL1936628443:
   mov si, word tileWorld3
   mov ax, word 2
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeY], ax 
   .lL1830908236:
   mov dx, word 0
   mov [stack_L2001049719+2], dx 
   .lL277630005:
   jmp .lL1288354730
   .lL1274370218:
   push word tileWorld
   push word [stack_L2001049719+2]
   mov si, word tileWorld3
   mov ax, word [stack_L2001049719+2]
   mov bx, 2 
   mul bx
   add si, ax
   mov cx, word [si]
   pop ax
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL758705033:
   add [stack_L2001049719+2], word 1
   .lL1288354730:
   push word [stack_L2001049719+2]
   mov bx, word [worldSizeX]
   mov ax, word [worldSizeY]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop bx
   cmp ax, bx
   jg .lL1274370218
   .lL42768293:
   mov dx, word 0
   mov [stack_L2001049719+2], dx 
   .lL1604839423:
   jmp .lL1177096266
   .lL670576685:
   mov si, word entityData
   mov ax, word [stack_L2001049719+2]
   mov cx, word 0
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1299641336:
   add [stack_L2001049719+2], word 1
   .lL1177096266:
   mov bx, word [stack_L2001049719+2]
   mov ax, word 96
   cmp ax, bx
   jg .lL670576685
   .lL764308918:
   call L1927950199
   .lL598446861:
   ret
   .lL1161082381:
L1927950199:
   .lL1927950199:
   mov si, word tileWorld
   mov ax, word 1
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeX], ax 
   .lL1067938912:
   mov si, word tileWorld
   mov ax, word 2
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [worldSizeY], ax 
   .lL1637506559:
   mov dx, word 0
   mov [stack_L1927950199+0], dx 
   .lL517380410:
   jmp .lL2117255219
   .lL2058534881:
   mov dx, word 0
   mov [stack_L1927950199+2], dx 
   .lL1232367853:
   jmp .lL1673605040
   .lL186276003:
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+0]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov dx, word [si]
   mov [stack_L1927950199+4], dx 
   .lL1681433494:
   mov bx, word [stack_L1927950199+4]
   mov ax, word 6
   cmp ax, bx
   jne .lL237061348
   .lL1685538367:
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+0]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1030870354:
   push word 3
   mov bx, word [stack_L1927950199+0]
   mov ax, word 8
   imul bx
   push ax
   mov ax, word [stack_L1927950199+2]
   mov bx, word [worldSizeY]
   sub ax, bx
   mov bx, ax
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   mov bx, word 7
   sub ax, bx
   push ax
   push word 0
   mov dx, word 0
   mov [stack_L424058530+8], dx 
   pop dx
   mov [stack_L424058530+6], dx 
   pop dx
   mov [stack_L424058530+4], dx 
   pop dx
   mov [stack_L424058530+2], dx 
   pop dx
   mov [stack_L424058530+0], dx 
   call L424058530
   .lL237061348:
   mov bx, word [stack_L1927950199+4]
   mov ax, word 5
   cmp ax, bx
   jne .lL485815673
   .lL410424423:
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+0]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1190035432:
   mov dx, word 0
   mov [stack_L1927950199+6], dx 
   .lL1963387170:
   mov bx, word [stack_L1927950199+0]
   mov ax, word 1
   add ax, bx
   mov dx, ax
   mov [stack_L1927950199+8], dx 
   .lL1323468230:
   jmp .lL1645995473
   .lL1463801669:
   mov ax, word [stack_L1927950199+6]
   mov bx, 0 
   cmp bx, ax
   jne .lL355629945
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+8]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 5
   cmp ax, bx
   jne .lL355629945
   .lL1327763628:
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+8]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1915503092:
   push word 2
   mov bx, word [stack_L1927950199+0]
   mov ax, word 8
   imul bx
   push ax
   mov ax, word [stack_L1927950199+2]
   mov bx, word [worldSizeY]
   sub ax, bx
   mov bx, ax
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   push ax
   mov bx, word [stack_L1927950199+0]
   mov ax, word 8
   imul bx
   push ax
   mov ax, word [stack_L1927950199+8]
   mov bx, word 1
   sub ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   mov dx, ax
   mov [stack_L424058530+8], dx 
   pop dx
   mov [stack_L424058530+6], dx 
   pop dx
   mov [stack_L424058530+4], dx 
   pop dx
   mov [stack_L424058530+2], dx 
   pop dx
   mov [stack_L424058530+0], dx 
   call L424058530
   .lL1535128843:
   mov dx, word 1
   mov [stack_L1927950199+6], dx 
   .lL355629945:
   add [stack_L1927950199+8], word 1
   .lL1645995473:
   mov bx, word [stack_L1927950199+8]
   mov ax, word [worldSizeX]
   cmp ax, bx
   jg .lL1463801669
   .lL485815673:
   mov bx, word [stack_L1927950199+4]
   mov ax, word 7
   cmp ax, bx
   jne .lL1567581361
   .lL849460928:
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+0]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL580024961:
   mov dx, word 0
   mov [stack_L1927950199+6], dx 
   .lL2027961269:
   mov bx, word [stack_L1927950199+0]
   mov ax, word 1
   add ax, bx
   mov dx, ax
   mov [stack_L1927950199+8], dx 
   .lL1586270964:
   jmp .lL1642360923
   .lL1343441044:
   mov ax, word [stack_L1927950199+6]
   mov bx, 0 
   cmp bx, ax
   jne .lL693632176
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+8]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 7
   cmp ax, bx
   jne .lL693632176
   .lL326549596:
   push word tileWorld
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1927950199+8]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1364335809:
   push word 1
   mov bx, word [stack_L1927950199+0]
   mov ax, word 8
   imul bx
   push ax
   mov ax, word [stack_L1927950199+2]
   mov bx, word [worldSizeY]
   sub ax, bx
   mov bx, ax
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   push ax
   mov bx, word [stack_L1927950199+0]
   mov ax, word 8
   imul bx
   push ax
   mov bx, word [stack_L1927950199+8]
   mov ax, word 8
   imul bx
   mov dx, ax
   mov [stack_L424058530+8], dx 
   pop dx
   mov [stack_L424058530+6], dx 
   pop dx
   mov [stack_L424058530+4], dx 
   pop dx
   mov [stack_L424058530+2], dx 
   pop dx
   mov [stack_L424058530+0], dx 
   call L424058530
   .lL458209687:
   mov dx, word 1
   mov [stack_L1927950199+6], dx 
   .lL693632176:
   add [stack_L1927950199+8], word 1
   .lL1642360923:
   mov bx, word [stack_L1927950199+8]
   mov ax, word [worldSizeX]
   cmp ax, bx
   jg .lL1343441044
   .lL1567581361:
   add [stack_L1927950199+2], word 1
   .lL1673605040:
   mov bx, word [stack_L1927950199+2]
   mov ax, word [worldSizeY]
   cmp ax, bx
   jg .lL186276003
   .lL233530418:
   add [stack_L1927950199+0], word 1
   .lL2117255219:
   mov bx, word [stack_L1927950199+0]
   mov ax, word [worldSizeX]
   cmp ax, bx
   jg .lL2058534881
   .lL683287027:
   ret
L1746572565:
   .lL1746572565:
   mov ax, word [playerY]
   mov bx, word 20
   sub ax, bx
   mov dx, ax
   mov [stack_L1746572565+0], dx 
   .lL1766822961:
   mov bx, word [playerY]
   mov ax, word 20
   cmp ax, bx
   jge .lL254413710
   .lL1496724653:
   mov dx, word 0
   mov [stack_L1746572565+0], dx 
   .lL254413710:
   mov bx, word [stack_L1746572565+0]
   mov ax, word 4
   cmp ax, bx
   jle .lL553264065
   .lL897697267:
   mov dx, word 0
   mov [stack_L1746572565+2], dx 
   .lL1789447862:
   jmp .lL38997010
   .lL1942406066:
   push word ground
   mov bx, word [stack_L1746572565+2]
   mov ax, word 4
   imul bx
   push ax
   mov ax, word 48
   mov bx, word [stack_L1746572565+0]
   sub ax, bx
   mov bx, ax
   pop ax
   pop di
   call drawImage
   .lL1213415012:
   add [stack_L1746572565+2], word 1
   .lL38997010:
   mov bx, word [stack_L1746572565+2]
   mov ax, word 20
   cmp ax, bx
   jg .lL1942406066
   .lL553264065:
   mov dx, word 0
   mov [stack_L1746572565+2], dx 
   .lL1688376486:
   jmp .lL2114664380
   .lL999661724:
   mov dx, word 0
   mov [stack_L1746572565+4], dx 
   .lL1793329556:
   jmp .lL445884362
   .lL1031980531:
   push word tileWorld
   mov bx, word [stack_L1746572565+4]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1746572565+2]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, 0 
   cmp bx, ax
   je .lL721748895
   .lL1642534850:
   push word tileWorld
   mov bx, word [stack_L1746572565+4]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1746572565+2]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov dx, word [si]
   mov [stack_L1746572565+6], dx 
   .lL1724731843:
   mov bx, word [stack_L1746572565+6]
   mov ax, word 1
   cmp ax, bx
   jne .lL1305193908
   .lL1313953385:
   mov si, word tile
   mov bx, word tile_0
   mov [si], bx 
   .lL399573350:
   jmp .lL463345942
   .lL1305193908:
   mov bx, word [stack_L1746572565+6]
   mov ax, word 2
   cmp ax, bx
   jne .lL195600860
   .lL1334729950:
   mov bx, word [animTick]
   mov ax, word 15
   cmp ax, bx
   jg .lL1347137144
   .lL997608398:
   mov si, word tile
   mov bx, word block_0
   mov [si], bx 
   jmp .lL463345942
   .lL1347137144:
   mov bx, word [animTick]
   mov ax, word 10
   cmp ax, bx
   jg .lL1973336893
   .lL1212899836:
   mov si, word tile
   mov bx, word block_1
   mov [si], bx 
   jmp .lL463345942
   .lL1973336893:
   mov bx, word [animTick]
   mov ax, word 5
   cmp ax, bx
   jg .lL1174290147
   .lL1289696681:
   mov si, word tile
   mov bx, word block_2
   mov [si], bx 
   jmp .lL463345942
   .lL1174290147:
   mov si, word tile
   mov bx, word block_3
   mov [si], bx 
   .lL1285044316:
   jmp .lL463345942
   .lL195600860:
   mov bx, word [stack_L1746572565+6]
   mov ax, word 3
   cmp ax, bx
   jne .lL1607460018
   .lL1811075214:
   mov si, word tile
   mov bx, word tile_2
   mov [si], bx 
   jmp .lL463345942
   .lL1607460018:
   mov bx, word [stack_L1746572565+6]
   mov ax, word 4
   cmp ax, bx
   jne .lL1588970020
   .lL1407343478:
   mov si, word tile
   mov bx, word tile_3
   mov [si], bx 
   jmp .lL463345942
   .lL1588970020:
   mov bx, word [stack_L1746572565+6]
   mov ax, word 5
   cmp ax, bx
   jne .lL463345942
   .lL1940447180:
   mov si, word tile
   mov bx, word tile_4
   mov [si], bx 
   .lL463345942:
   mov si, word tile
   push word [si]
   mov bx, word [stack_L1746572565+2]
   mov ax, word 8
   imul bx
   push ax
   mov ax, word [playerX]
   mov bx, word 35
   sub ax, bx
   mov bx, ax
   pop ax
   sub ax, bx
   push ax
   mov ax, word [stack_L1746572565+4]
   mov bx, word [worldSizeY]
   sub ax, bx
   mov bx, ax
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   mov bx, word [stack_L1746572565+0]
   sub ax, bx
   mov bx, ax
   pop ax
   pop di
   call drawImage
   .lL721748895:
   add [stack_L1746572565+4], word 1
   .lL445884362:
   mov bx, word [stack_L1746572565+4]
   mov ax, word [worldSizeY]
   cmp ax, bx
   jg .lL1031980531
   .lL245565335:
   add [stack_L1746572565+2], word 1
   .lL2114664380:
   mov bx, word [stack_L1746572565+2]
   mov ax, word [worldSizeX]
   cmp ax, bx
   jg .lL999661724
   .lL2121744517:
   mov dx, word 0
   mov [stack_L1746572565+2], dx 
   .lL1066376662:
   jmp .lL183264084
   .lL476402209:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 1
   cmp ax, bx
   jne .lL1490180672
   .lL460332449:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 1
   cmp ax, bx
   jne .lL1919892312
   .lL1143839598:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, word 5
   mov dx, 0 
   div bx
   mov bx, word 2
   mov dx, 0 
   div bx
   mov ax, dx
   mov bx, 0 
   cmp bx, ax
   jne .lL250075633
   .lL358699161:
   mov si, word tile
   mov bx, word eR0
   mov [si], bx 
   jmp .lL517938326
   .lL250075633:
   mov si, word tile
   mov bx, word eR1
   mov [si], bx 
   jmp .lL517938326
   .lL1919892312:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, word 5
   mov dx, 0 
   div bx
   mov bx, word 2
   mov dx, 0 
   div bx
   mov ax, dx
   mov bx, 0 
   cmp bx, ax
   jne .lL914424520
   .lL110718392:
   mov si, word tile
   mov bx, word eL0
   mov [si], bx 
   jmp .lL517938326
   .lL914424520:
   mov si, word tile
   mov bx, word eL1
   mov [si], bx 
   .lL425918570:
   jmp .lL517938326
   .lL1490180672:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 2
   cmp ax, bx
   jne .lL2143192188
   .lL1100439041:
   mov ax, word [animTick]
   mov bx, word 4
   mov dx, 0 
   div bx
   mov bx, dx
   mov ax, word 2
   cmp ax, bx
   jg .lL204349222
   .lL231685785:
   mov si, word tile
   mov bx, word base_0
   mov [si], bx 
   jmp .lL517938326
   .lL204349222:
   mov si, word tile
   mov bx, word base_1
   mov [si], bx 
   .lL114935352:
   jmp .lL517938326
   .lL2143192188:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 3
   cmp ax, bx
   jne .lL517938326
   .lL2110121908:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 5
   cmp ax, bx
   jg .lL32374789
   .lL1973538135:
   mov si, word tile
   mov bx, word coin_0
   mov [si], bx 
   jmp .lL517938326
   .lL32374789:
   mov si, word tile
   mov bx, word coin_1
   mov [si], bx 
   .lL517938326:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, 0 
   cmp bx, ax
   je .lL1023487453
   .lL1865127310:
   mov si, word tile
   push word [si]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   push word [si]
   mov ax, word [playerX]
   mov bx, word 35
   sub ax, bx
   mov bx, ax
   pop ax
   sub ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L1746572565+2]
   imul bx
   mov bx, ax
   mov ax, word 2
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, word [stack_L1746572565+0]
   sub ax, bx
   mov bx, ax
   pop ax
   pop di
   call drawImage
   .lL1023487453:
   add [stack_L1746572565+2], word 1
   .lL183264084:
   mov bx, word [stack_L1746572565+2]
   mov ax, word 16
   cmp ax, bx
   jg .lL476402209
   .lL515132998:
   ret
   .lL1694819250:
L424058530:
   .lL424058530:
   mov dx, word 0
   mov [stack_L424058530+10], dx 
   .lL1365202186:
   jmp .lL1651191114
   .lL1586600255:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, 0 
   cmp bx, ax
   je .lL474675244
   jmp .lL932583850
   .lL474675244:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   mov cx, word [stack_L424058530+0]
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL212628335:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   mov cx, word [stack_L424058530+2]
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1579572132:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 2
   add ax, bx
   mov cx, word [stack_L424058530+4]
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL359023572:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word [stack_L424058530+6]
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL305808283:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 4
   add ax, bx
   mov cx, word [stack_L424058530+8]
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL2111991224:
   push word entityData
   mov bx, word [stack_L424058530+10]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   mov cx, word 1
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL292938459:
   ret
   .lL932583850:
   add [stack_L424058530+10], word 1
   .lL1651191114:
   mov bx, word [stack_L424058530+10]
   mov ax, word 16
   cmp ax, bx
   jg .lL1586600255
   .lL917142466:
   ret
   .lL1993134103:
L791452441:
   .lL791452441:
   push word entityData
   mov bx, word [stack_L791452441+0]
   mov ax, word 6
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   mov cx, word 0
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL405662939:
   ret
   .lL653305407:
L471910020:
   .lL471910020:
   mov dx, word 0
   mov [stack_L471910020+4], dx 
   .lL1130478920:
   mov dx, word 0
   mov [stack_L471910020+6], dx 
   .lL1404928347:
   jmp .lL604107971
   .lL123961122:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 1
   cmp ax, bx
   jne .lL1227229563
   .lL1982791261:
   mov bx, word [stack_L471910020+0]
   mov ax, word 9
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   cmp ax, bx
   jg .lL1562557367
   push word [stack_L471910020+0]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 7
   add ax, bx
   pop bx
   cmp ax, bx
   jl .lL1562557367
   mov bx, word [playerY]
   mov ax, word 16
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 2
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   cmp ax, bx
   jne .lL1562557367
   mov ax, word [inJump]
   mov bx, 0 
   cmp bx, ax
   jl .lL1562557367
   .lL1101288798:
   mov ax, word 1
   mov [jump], ax 
   .lL942731712:
   mov ax, word 15
   mov [inJump], ax 
   .lL971848845:
   mov dx, word 1
   mov [stack_L471910020+4], dx 
   .lL1910163204:
   jmp .lL1562557367
   .lL1227229563:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 2
   cmp ax, bx
   jne .lL305623748
   .lL758529971:
   mov bx, word [stack_L471910020+0]
   mov ax, word 9
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   cmp ax, bx
   jg .lL1562557367
   push word [stack_L471910020+0]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 15
   add ax, bx
   pop bx
   cmp ax, bx
   jl .lL1562557367
   mov bx, word [playerY]
   mov ax, word 16
   add ax, bx
   push ax
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 2
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   cmp ax, bx
   jne .lL1562557367
   mov ax, word [inJump]
   mov bx, 0 
   cmp bx, ax
   jl .lL1562557367
   .lL2104457164:
   mov ax, word [velX]
   mov bx, 0 
   cmp bx, ax
   jne .lL1521118594
   .lL1940030785:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov [velX], ax 
   jmp .lL1869997857
   .lL1521118594:
   push word [velX]
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   pop bx
   add ax, bx
   mov bx, 0 
   cmp bx, ax
   je .lL1869997857
   .lL1763847188:
   mov ax, word [velXP]
   mov bx, 0 
   cmp bx, ax
   jge .lL1617791695
   .lL125993742:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 1
   add ax, bx
   mov [velX], ax 
   jmp .lL1869997857
   .lL1617791695:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 5
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, word 1
   sub ax, bx
   mov [velX], ax 
   .lL1869997857:
   mov dx, word 1
   mov [stack_L471910020+4], dx 
   .lL1192108080:
   jmp .lL1562557367
   .lL305623748:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 0
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 3
   cmp ax, bx
   jne .lL1562557367
   .lL1068824137:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 1
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov dx, word [si]
   mov [stack_L471910020+8], dx 
   .lL864237698:
   push word entityData
   mov bx, word 6
   mov ax, word [stack_L471910020+6]
   imul bx
   mov bx, ax
   mov ax, word 2
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov dx, word [si]
   mov [stack_L471910020+10], dx 
   .lL537548559:
   mov bx, word [stack_L471910020+0]
   mov ax, word 9
   add ax, bx
   mov bx, ax
   mov ax, word [stack_L471910020+8]
   cmp ax, bx
   jg .lL1562557367
   push word [stack_L471910020+0]
   mov bx, word [stack_L471910020+8]
   mov ax, word 7
   add ax, bx
   pop bx
   cmp ax, bx
   jl .lL1562557367
   mov bx, word [stack_L471910020+2]
   mov ax, word 15
   add ax, bx
   push ax
   mov bx, word [stack_L471910020+10]
   mov ax, word 6
   add ax, bx
   pop bx
   cmp ax, bx
   jg .lL1562557367
   push word [stack_L471910020+2]
   mov bx, word [stack_L471910020+10]
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 7
   add ax, bx
   pop bx
   cmp ax, bx
   jl .lL1562557367
   .lL380894366:
   mov dx, word [stack_L471910020+6]
   mov [stack_L791452441+0], dx 
   call L791452441
   .lL237852351:
   mov bx, word [coins]
   mov ax, word 1
   add ax, bx
   mov [coins], ax 
   .lL1562557367:
   add [stack_L471910020+6], word 1
   .lL604107971:
   mov bx, word [stack_L471910020+6]
   mov ax, word 16
   cmp ax, bx
   jg .lL123961122
   .lL608188624:
   mov dx, word [stack_L471910020+4]
   mov [stack_L471910020+0], dx 
   ret
   .lL1451270520:
L1418481495:
   .lL1418481495:
   mov dx, word 0
   mov [stack_L1418481495+4], dx 
   .lL1608446010:
   jmp .lL992136656
   .lL511833308:
   mov dx, word 0
   mov [stack_L1418481495+6], dx 
   .lL1297685781:
   jmp .lL1705929636
   .lL1221555852:
   push word tileWorld
   mov bx, word [stack_L1418481495+6]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1418481495+4]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov ax, word [si]
   mov bx, 0 
   cmp bx, ax
   jne .lL1509514333
   jmp .lL1556956098
   .lL1509514333:
   push word tileWorld
   mov bx, word [stack_L1418481495+6]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1418481495+4]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov bx, word [si]
   mov ax, word 5
   cmp ax, bx
   jne .lL1252585652
   jmp .lL1556956098
   .lL1252585652:
   mov bx, word [stack_L1418481495+0]
   mov ax, word 9
   add ax, bx
   push ax
   mov bx, word [stack_L1418481495+4]
   mov ax, word 8
   imul bx
   pop bx
   cmp ax, bx
   jg .lL1556956098
   push word [stack_L1418481495+0]
   mov bx, word [stack_L1418481495+4]
   mov ax, word 8
   imul bx
   mov bx, ax
   mov ax, word 7
   add ax, bx
   pop bx
   cmp ax, bx
   jl .lL1556956098
   mov bx, word [stack_L1418481495+2]
   mov ax, word 15
   add ax, bx
   push ax
   mov ax, word [stack_L1418481495+6]
   mov bx, word [worldSizeY]
   sub ax, bx
   mov bx, ax
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   pop bx
   cmp ax, bx
   jg .lL1556956098
   push word [stack_L1418481495+2]
   mov ax, word [stack_L1418481495+6]
   mov bx, word [worldSizeY]
   sub ax, bx
   mov bx, ax
   mov ax, word 6
   add ax, bx
   mov bx, ax
   mov ax, word 8
   imul bx
   mov bx, ax
   mov ax, word 7
   add ax, bx
   pop bx
   cmp ax, bx
   jl .lL1556956098
   .lL2036368507:
   push word tileWorld
   mov bx, word [stack_L1418481495+6]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1418481495+4]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov dx, word [si]
   mov [stack_L1418481495+8], dx 
   .lL1785210046:
   mov bx, word [stack_L1418481495+8]
   mov ax, word 4
   cmp ax, bx
   jne .lL1552787810
   .lL1361960727:
   push word tileWorld
   mov bx, word [stack_L1418481495+6]
   mov ax, word [worldSizeX]
   imul bx
   mov bx, ax
   mov ax, word [stack_L1418481495+4]
   add ax, bx
   mov bx, ax
   mov ax, word 3
   add ax, bx
   mov cx, word 5
   pop si
   mov bx, 2 
   mul bx
   add si, ax
   mov [si], cx 
   .lL1552787810:
   mov dx, word 1
   mov [stack_L1418481495+0], dx 
   ret
   .lL1556956098:
   add [stack_L1418481495+6], word 1
   .lL1705929636:
   mov bx, word [stack_L1418481495+6]
   mov ax, word [worldSizeY]
   cmp ax, bx
   jg .lL1221555852
   .lL739498517:
   add [stack_L1418481495+4], word 1
   .lL992136656:
   mov bx, word [stack_L1418481495+4]
   mov ax, word [worldSizeX]
   cmp ax, bx
   jg .lL511833308
   .lL125130493:
   mov dx, word 0
   mov [stack_L1418481495+0], dx 
   ret
   .lL914504136:
L135721597:
   .lL135721597:
   mov bx, word [playerY]
   mov ax, word [velY]
   add ax, bx
   mov dx, ax
   mov [stack_L135721597+0], dx 
   .lL166239592:
   push word [playerX]
   mov dx, word [stack_L135721597+0]
   mov [stack_L471910020+2], dx 
   pop dx
   mov [stack_L471910020+0], dx 
   call L471910020
   mov ax, word [stack_L471910020+0]
   mov bx, 0 
   cmp bx, ax
   jne .lL991505714
   mov bx, word [stack_L135721597+0]
   mov ax, word 15
   add ax, bx
   mov bx, ax
   mov ax, word 48
   cmp ax, bx
   jle .lL991505714
   push word [playerX]
   mov dx, word [stack_L135721597+0]
   mov [stack_L1418481495+2], dx 
   pop dx
   mov [stack_L1418481495+0], dx 
   call L1418481495
   mov ax, word [stack_L1418481495+0]
   mov bx, 0 
   cmp bx, ax
   jne .lL991505714
   .lL385242642:
   mov ax, word [stack_L135721597+0]
   mov [playerY], ax 
   .lL824009085:
   mov ax, word 0
   mov [onGround], ax 
   .lL2085857771:
   jmp .lL248609774
   .lL991505714:
   mov ax, word [velY]
   mov bx, 0 
   cmp bx, ax
   jge .lL248609774
   .lL708049632:
   mov ax, word 1
   mov [onGround], ax 
   .lL248609774:
   mov bx, word [playerX]
   mov ax, word [velX]
   add ax, bx
   mov dx, ax
   mov [stack_L135721597+2], dx 
   .lL1887400018:
   mov ax, word [stack_L135721597+2]
   mov bx, 0 
   cmp bx, ax
   jg .lL285377351
   push word [stack_L135721597+2]
   mov dx, word [playerY]
   mov [stack_L1418481495+2], dx 
   pop dx
   mov [stack_L1418481495+0], dx 
   call L1418481495
   mov ax, word [stack_L1418481495+0]
   mov bx, 0 
   cmp bx, ax
   jne .lL285377351
   .lL344560770:
   mov ax, word [stack_L135721597+2]
   mov [playerX], ax 
   .lL559450121:
   mov bx, word [inMoving]
   mov ax, word 1
   add ax, bx
   mov [inMoving], ax 
   .lL285377351:
   mov bx, word [inMoving]
   mov ax, word 20
   cmp ax, bx
   jg .lL716083600
   .lL791885625:
   mov ax, word 0
   mov [inMoving], ax 
   .lL716083600:
   ret
   .lL2001112025:
L1044036744:
   .lL1044036744:
   call resetCursor
   .lL314265080:
   mov si, word [coins]
   call printInt
   .lL1288141870:
   mov si, word b
   call printString
   .lL2054881392:
   mov si, word 7
   call printInt
   .lL966808741:
   mov si, word b2
   call printString
   .lL1908153060:
   mov bx, word [mapIndex]
   mov ax, word 1
   add ax, bx
   mov si, ax
   call printInt
   .lL116211441:
   ret
keyHandle:
   .lL607635164:
   mov ax, word 0
   mov [freeze], ax 
   .lL529116035:
   mov bx, word [keyPressed]
   mov ax, word 30
   cmp ax, bx
   jne .lL242481580
   .lL1627800613:
   mov ax, word [keyState]
   mov bx, 0 
   cmp bx, ax
   je .lL2065530879
   .lL697960108:
   mov ax, word -1
   mov [velXP], ax 
   .lL943010986:
   mov ax, word 1
   mov [isMoving], ax 
   .lL1807837413:
   jmp .lL2066940133
   .lL2065530879:
   mov ax, word 0
   mov [velXP], ax 
   .lL48612937:
   mov ax, word 0
   mov [isMoving], ax 
   .lL325333723:
   jmp .lL2066940133
   .lL242481580:
   mov bx, word [keyPressed]
   mov ax, word 32
   cmp ax, bx
   jne .lL1937962514
   .lL274064559:
   mov ax, word [keyState]
   mov bx, 0 
   cmp bx, ax
   je .lL1018081122
   .lL242131142:
   mov ax, word 1
   mov [velXP], ax 
   .lL1782113663:
   mov ax, word 1
   mov [isMoving], ax 
   .lL1433867275:
   jmp .lL2066940133
   .lL1018081122:
   mov ax, word 0
   mov [velXP], ax 
   .lL476800120:
   mov ax, word 0
   mov [isMoving], ax 
   .lL1744347043:
   jmp .lL2066940133
   .lL1937962514:
   mov bx, word [keyPressed]
   mov ax, word 57
   cmp ax, bx
   jne .lL1254526270
   .lL662441761:
   mov ax, word [keyState]
   mov bx, 0 
   cmp bx, ax
   je .lL2066940133
   mov ax, word [onGround]
   mov bx, 0 
   cmp bx, ax
   je .lL2066940133
   .lL1618212626:
   mov ax, word 1
   mov [jump], ax 
   .lL1129670968:
   mov ax, word 0
   mov [onGround], ax 
   .lL1023714065:
   mov ax, word 15
   mov [inJump], ax 
   .lL2051450519:
   jmp .lL2066940133
   .lL1254526270:
   mov bx, word [keyPressed]
   mov ax, word 1
   cmp ax, bx
   jne .lL2066940133
   .lL99747242:
   mov ax, word 1
   mov [freeze], ax 
   .lL2066940133:
   ret
jmp $
KEYLISTENER:
oldINT24 dd 0
keyboardINTListener:
pushad
in al, 0x60
mov bl,al
and bl, 01111111b
mov bh, al
shr bh, 7
and bh, 00000001b
xor bh, 00000001b
mov [keyPressed], bl 
mov [keyState], bh 
call keyHandle
mov al, 0x20 
out 20h, al
popad
iret
VARIABLES:
playerImage dw 0
yOffset dw 0
playerX dw 0
base_1 incbin 'minild/base_1.bimg'
base_0 incbin 'minild/base_0.bimg'
tileWorld3 incbin 'minild/map3.bmap'
eL0 incbin 'minild/eL0.bimg'
screen incbin 'minild/screen.bimg'
eL1 incbin 'minild/eL1.bimg'
playerY dw 20
tile_2 incbin 'minild/tile2.bimg'
pR1 incbin 'minild/pR2.bimg'
tile_3 incbin 'minild/tile3.bimg'
pR0 incbin 'minild/pR1.bimg'
tile_4 incbin 'minild/tile4.bimg'
b1 dw ' ', 0
b2 dw ' Chipsets Level: ', 0
freeze dw 1
lastVel dw 0
isMoving dw 0
tile dw tile_0
worldSizeY dw 0
pal incbin 'minild/tmp.bpal'
stack_L1418481495 dw 0, 0, 0, 0, 0
worldSizeX dw 0
stack_L135721597 dw 0, 0
jump dw 0
keyPressed dw 0
xOffset dw 0
pRF incbin 'minild/pR3.bimg'
coins dw 0
mapIndex dw 0
stack_L1746572565 dw 0, 0, 0, 0
entityLength dw 0
loading dw 0
inJump dw 0
tileWorld incbin 'minild/map.bmap'
loading_0 incbin 'minild/loading_0.bimg'
tile_0 incbin 'minild/block_e.bimg'
loading_1 incbin 'minild/loading_1.bimg'
loadingImg incbin 'minild/loading.bimg'
entityAmount dw 0
block_2 incbin 'minild/block_2.bimg'
block_3 incbin 'minild/block_3.bimg'
ground incbin 'minild/ground.bimg'
coin_1 incbin 'minild/coin1.bimg'
entityData dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
coin_0 incbin 'minild/coin0.bimg'
eR0 incbin 'minild/eR0.bimg'
eR1 incbin 'minild/eR1.bimg'
tileWorld1 incbin 'minild/map.bmap'
block_0 incbin 'minild/block_0.bimg'
stack_L424058530 dw 0, 0, 0, 0, 0, 0
block_1 incbin 'minild/block_1.bimg'
keyState dw 0
inMoving dw 0
;set tileWorld to pusty.f0xC.util.Null@3fb6a447
pL1 incbin 'minild/pL2.bimg'
pL0 incbin 'minild/pL1.bimg'
stack_L471910020 dw 0, 0, 0, 0, 0, 0
stack_L1804094807 dw 0
stack_L1927950199 dw 0, 0, 0, 0, 0
;set tileWorld1 to pusty.f0xC.util.Null@dfd3711
;set tileWorld2 to pusty.f0xC.util.Null@42d3bd8b
animTick dw 0
;set tileWorld3 to pusty.f0xC.util.Null@26ba2a48
pL incbin 'minild/pL0.bimg'
stack_L791452441 dw 0
pR incbin 'minild/pR0.bimg'
tileWorldOffset dw 0
b dw '/', 0
stack_L2001049719 dw 0, 0
tileWorld2 incbin 'minild/map2.bmap'
pLF incbin 'minild/pL3.bimg'
velY dw 0
velX dw 0
onGround dw 0
velXP dw 0
resw 0
INCLUDES:
%include 'initGraphics.asm'
%include 'loadPal.asm'
%include 'buffer.asm'
%include 'sleep.asm'
%include 'resetCursor.asm'
%include 'printInt.asm'
%include 'printChar.asm'
%include 'mathPow.asm'
%include 'printString.asm'
times 512*40- ($-$$) db 0
