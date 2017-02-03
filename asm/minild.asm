org 0x7E00
bits 16
CPU 8086
call L1706377736
jmp $
L1706377736:
   .lL1706377736:
   call initGraphics
   .lL455896770:
   mov ax, pal
   mov si, ax
;rem
   call loadPal
   .lL1323165413:
   mov ax, [freeze]
   mov ax, ax
;rem
   mov bx, 0
   cmp bx, ax
   je .lL1880587981
   .lL511754216:
   mov ax, screen
   push ax
   mov ax, 0
   push ax
   mov ax, 0
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL1721931908:
   call flip
   .lL1198108795:
   jmp .lL214126413
   .lL396873410:
   mov ax, 0
   push ax
   pop ax
   call checkKey
   push ax
   pop ax
   mov [keyPressed], ax
   .lL1706234378:
   mov ax, 1
   push ax
   pop ax
   call checkKey
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1867750575
   mov ax, 1
   push ax
   jmp .lL2046562095
   .lL1867750575:
   mov ax, 0
   push ax
   .lL2046562095:
   pop ax
   mov [keyState], ax
   .lL1342443276:
   mov ax, [keyPressed]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   je .lL769287236
   mov ax, [keyState]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL769287236
   .lL1587487668:
   mov ax, 0
   push ax
   pop ax
   mov [freeze], ax
   .lL769287236:
   mov ax, 100
   push ax
   pop si
   call sleep
   .lL214126413:
   mov ax, [freeze]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL396873410
   .lL1880587981:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L2001049719+0], dx
   call L2001049719
   .lL1225358173:
   mov ax, 0
   push ax
   pop ax
   mov [loading], ax
   .lL1848402763:
   mov ax, [freeze]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL933699219
   mov ax, [loading]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jge .lL2121055098
   .lL2084435065:
   jmp .lL933699219
   .lL1896277646:
   mov ax, [loading]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jge .lL2128227771
   .lL1702297201:
   mov ax, [loading]
   push ax
   mov ax, 1
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop ax
   mov [loading], ax
   .lL1996181658:
   mov ax, [loading]
   push ax
   mov ax, 4
   push ax
   pop bx
   pop ax
   mov dx, 0
   div bx
   push dx
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL806353501
   .lL521645586:
   mov ax, loading_0
   push ax
   mov ax, 44
   push ax
   mov ax, 40
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   jmp .lL1296064247
   .lL806353501:
   mov ax, loading_1
   push ax
   mov ax, 44
   push ax
   mov ax, 40
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL1296064247:
   mov ax, loadingImg
   push ax
   mov ax, 54
   push ax
   mov ax, 42
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL2128227771:
   call flip
   .lL1637070917:
   mov ax, 100
   push ax
   pop si
   call sleep
   .lL933699219:
   mov ax, [loading]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jl .lL1896277646
   .lL780237624:
   mov ax, [freeze]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL2121055098
   .lL205797316:
   mov ax, screen
   push ax
   mov ax, 0
   push ax
   mov ax, 0
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL1128032093:
   call flip
   .lL1066516207:
   jmp .lL443308702
   .lL935044096:
   mov ax, 0
   push ax
   pop ax
   call checkKey
   push ax
   pop ax
   mov [keyPressed], ax
   .lL396180261:
   mov ax, 1
   push ax
   pop ax
   call checkKey
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL625576447
   mov ax, 1
   push ax
   jmp .lL1560911714
   .lL625576447:
   mov ax, 0
   push ax
   .lL1560911714:
   pop ax
   mov [keyState], ax
   .lL939047783:
   mov ax, [keyPressed]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   je .lL1237514926
   mov ax, [keyState]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1237514926
   .lL548246552:
   mov ax, 0
   push ax
   pop ax
   mov [freeze], ax
   .lL1237514926:
   mov ax, 100
   push ax
   pop si
   call sleep
   .lL443308702:
   mov ax, [freeze]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL935044096
   .lL2121055098:
   mov ax, [coins]
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL835648992
   .lL1134517053:
   mov ax, 0
   push ax
   pop ax
   mov [coins], ax
   .lL492228202:
   mov ax, [mapIndex]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   mov [mapIndex], ax
   .lL1368884364:
   mov ax, [mapIndex]
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jge .lL401625763
   .lL772777427:
   mov ax, 0
   push ax
   pop ax
   mov [mapIndex], ax
   .lL83954662:
   mov ax, [mapIndex]
   push ax
   pop dx
   mov [stack_L2001049719+0], dx
   call L2001049719
   .lL1751075886:
   mov ax, 300
   push ax
   pop ax
   mov [loading], ax
   .lL2108649164:
   jmp .lL777874839
   .lL401625763:
   mov ax, [mapIndex]
   push ax
   pop dx
   mov [stack_L2001049719+0], dx
   call L2001049719
   .lL777874839:
   mov ax, 0
   push ax
   pop ax
   mov [playerX], ax
   .lL596512129:
   mov ax, 20
   push ax
   pop ax
   mov [playerY], ax
   .lL835648992:
   mov ax, [jump]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL824318946
   .lL930990596:
   mov ax, -2
   push ax
   pop ax
   mov [velY], ax
   .lL1921595561:
   mov ax, [inJump]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jle .lL565760380
   .lL6566818:
   mov ax, -1
   push ax
   pop ax
   mov [velY], ax
   .lL565760380:
   mov ax, [inJump]
   push ax
   mov ax, 1
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop ax
   mov [inJump], ax
   .lL1494279232:
   mov ax, [inJump]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jl .lL1650967483
   .lL87285178:
   mov ax, 0
   push ax
   pop ax
   mov [jump], ax
   .lL1650967483:
   mov ax, 0
   push ax
   pop ax
   mov [onGround], ax
   .lL610998173:
   jmp .lL2047329716
   .lL824318946:
   mov ax, 1
   push ax
   pop ax
   mov [velY], ax
   .lL2047329716:
   mov ax, 0
   push ax
   pop ax
   call checkKey
   push ax
   pop ax
   mov [keyPressed], ax
   .lL648129364:
   mov ax, 1
   push ax
   pop ax
   call checkKey
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1029991479
   mov ax, 1
   push ax
   jmp .lL1104106489
   .lL1029991479:
   mov ax, 0
   push ax
   .lL1104106489:
   pop ax
   mov [keyState], ax
   .lL94438417:
   call keyHandle
   .lL787604730:
   mov ax, [velXP]
   push ax
   pop ax
   mov [velX], ax
   .lL812265671:
   call L135721597
   .lL193064360:
   call L1804094807
   .lL109961541:
   mov ax, [velX]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL670700378
   mov ax, [isMoving]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL670700378
   .lL1190654826:
   mov ax, [velX]
   push ax
   pop ax
   mov [lastVel], ax
   .lL670700378:
   mov ax, [lastVel]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jge .lL1109371569
   .lL728890494:
   mov ax, [onGround]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1558600329
   .lL636718812:
   mov ax, playerImage
   push ax
   mov ax, pRF
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1349277854
   .lL1558600329:
   mov ax, [isMoving]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1775282465
   .lL1147985808:
   mov ax, [inMoving]
   push ax
   mov ax, 10
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL2040495657
   .lL1267032364:
   mov ax, playerImage
   push ax
   mov ax, pR0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1349277854
   .lL2040495657:
   mov ax, playerImage
   push ax
   mov ax, pR1
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL661672156:
   jmp .lL1349277854
   .lL1775282465:
   mov ax, playerImage
   push ax
   mov ax, pR
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL96639997:
   jmp .lL1349277854
   .lL1109371569:
   mov ax, [onGround]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL128893786
   .lL1732398722:
   mov ax, playerImage
   push ax
   mov ax, pLF
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1349277854
   .lL128893786:
   mov ax, [isMoving]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1108411398
   .lL1394438858:
   mov ax, [inMoving]
   push ax
   mov ax, 10
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL584634336
   .lL1469821799:
   mov ax, playerImage
   push ax
   mov ax, pL0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1349277854
   .lL584634336:
   mov ax, playerImage
   push ax
   mov ax, pL1
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL501263526:
   jmp .lL1349277854
   .lL1108411398:
   mov ax, playerImage
   push ax
   mov ax, pL
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL1349277854:
   call L1746572565
   .lL626202354:
   mov ax, [playerY]
   push ax
   mov ax, 20
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jge .lL1099983479
   .lL1268447657:
   mov ax, playerImage
   push ax
   pop si
   mov ax, [si]
   push ax
   mov ax, 35
   push ax
   mov ax, [playerY]
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   jmp .lL1401420256
   .lL1099983479:
   mov ax, playerImage
   push ax
   pop si
   mov ax, [si]
   push ax
   mov ax, 35
   push ax
   mov ax, 20
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL1401420256:
   call L1044036744
   .lL1851691492:
   call flip
   .lL752848266:
   call L1044036744
   .lL815033865:
   call resetBuffer
   .lL1555093762:
   mov ax, [animTick]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   mov [animTick], ax
   .lL1190900417:
   mov ax, [animTick]
   push ax
   mov ax, 20
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jge .lL379110473
   .lL99550389:
   mov ax, 0
   push ax
   pop ax
   mov [animTick], ax
   .lL379110473:
   mov ax, 33
   push ax
   pop si
   call sleep
   .lL1598924227:
   jmp .lL1848402763
L1804094807:
   .lL1804094807:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1804094807+0], dx
   .lL1144748369:
   jmp .lL340870931
   .lL1768305536:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   je .lL1530388690
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1146743572
   .lL1530388690:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1512981843:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jge .lL42768293
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 4
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1717159510
   .lL42768293:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   neg ax
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1834188994:
   jmp .lL1717159510
   .lL1146743572:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1717159510
   .lL1174361318:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL589873731:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 10
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1717159510
   .lL200006406:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1804094807+0]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1717159510:
   add [stack_L1804094807+0], word 1
   .lL340870931:
   mov ax, [stack_L1804094807+0]
   push ax
   mov ax, 16
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1768305536
   .lL2052001577:
   ret
L2001049719:
   .lL2001049719:
   mov ax, 10
   push ax
   pop ax
   mov [loading], ax
   .lL1160264930:
   mov ax, [stack_L2001049719+0]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL544724190
   .lL1972439101:
   mov ax, tileWorld1
   push ax
   mov ax, 1
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeX], ax
   .lL2007328737:
   mov ax, tileWorld1
   push ax
   mov ax, 2
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeY], ax
   .lL1936628443:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L2001049719+2], dx
   .lL1830908236:
   jmp .lL277630005
   .lL1288354730:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, tileWorld1
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1274370218:
   add [stack_L2001049719+2], word 1
   .lL277630005:
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1288354730
   .lL758705033:
   jmp .lL1604839423
   .lL544724190:
   mov ax, [stack_L2001049719+0]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1177096266
   .lL670576685:
   mov ax, tileWorld2
   push ax
   mov ax, 1
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeX], ax
   .lL1299641336:
   mov ax, tileWorld2
   push ax
   mov ax, 2
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeY], ax
   .lL764308918:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L2001049719+2], dx
   .lL598446861:
   jmp .lL1161082381
   .lL1067938912:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, tileWorld2
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1637506559:
   add [stack_L2001049719+2], word 1
   .lL1161082381:
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1067938912
   .lL517380410:
   jmp .lL1604839423
   .lL1177096266:
   mov ax, [stack_L2001049719+0]
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1604839423
   .lL2117255219:
   mov ax, tileWorld3
   push ax
   mov ax, 1
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeX], ax
   .lL2058534881:
   mov ax, tileWorld3
   push ax
   mov ax, 2
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeY], ax
   .lL1232367853:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L2001049719+2], dx
   .lL1673605040:
   jmp .lL186276003
   .lL1681433494:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, tileWorld3
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL237061348:
   add [stack_L2001049719+2], word 1
   .lL186276003:
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1681433494
   .lL1604839423:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L2001049719+2], dx
   .lL1685538367:
   jmp .lL1030870354
   .lL485815673:
   mov ax, entityData
   push ax
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL410424423:
   add [stack_L2001049719+2], word 1
   .lL1030870354:
   mov ax, [stack_L2001049719+2]
   push ax
   mov ax, 96
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL485815673
   .lL1190035432:
   call L1927950199
   .lL1963387170:
   ret
   .lL1323468230:
L1927950199:
   .lL1927950199:
   mov ax, tileWorld
   push ax
   mov ax, 1
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeX], ax
   .lL1645995473:
   mov ax, tileWorld
   push ax
   mov ax, 2
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [worldSizeY], ax
   .lL1463801669:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1927950199+0], dx
   .lL355629945:
   jmp .lL1327763628
   .lL1915503092:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1927950199+2], dx
   .lL1535128843:
   jmp .lL1567581361
   .lL849460928:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop dx
   mov [stack_L1927950199+4], dx
   .lL580024961:
   mov ax, [stack_L1927950199+4]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL2027961269
   .lL1586270964:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1642360923:
   mov ax, 3
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 7
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 0
   push ax
   mov ax, 0
   push ax
   pop dx
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
   .lL2027961269:
   mov ax, [stack_L1927950199+4]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1343441044
   .lL693632176:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL326549596:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1927950199+6], dx
   .lL1364335809:
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop dx
   mov [stack_L1927950199+8], dx
   .lL458209687:
   jmp .lL233530418
   .lL683287027:
   mov ax, [stack_L1927950199+6]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1766822961
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+8]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1766822961
   .lL254413710:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+8]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1496724653:
   mov ax, 2
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+8]
   push ax
   mov ax, 1
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   pop dx
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
   .lL553264065:
   mov ax, 1
   push ax
   pop dx
   mov [stack_L1927950199+6], dx
   .lL1766822961:
   add [stack_L1927950199+8], word 1
   .lL233530418:
   mov ax, [stack_L1927950199+8]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL683287027
   .lL1343441044:
   mov ax, [stack_L1927950199+4]
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL897697267
   .lL1789447862:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL38997010:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1927950199+6], dx
   .lL1942406066:
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop dx
   mov [stack_L1927950199+8], dx
   .lL1213415012:
   jmp .lL1688376486
   .lL2114664380:
   mov ax, [stack_L1927950199+6]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL999661724
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+8]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL999661724
   .lL1793329556:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+8]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL445884362:
   mov ax, 1
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1927950199+8]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   pop dx
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
   .lL1031980531:
   mov ax, 1
   push ax
   pop dx
   mov [stack_L1927950199+6], dx
   .lL999661724:
   add [stack_L1927950199+8], word 1
   .lL1688376486:
   mov ax, [stack_L1927950199+8]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL2114664380
   .lL897697267:
   add [stack_L1927950199+2], word 1
   .lL1567581361:
   mov ax, [stack_L1927950199+2]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL849460928
   .lL721748895:
   add [stack_L1927950199+0], word 1
   .lL1327763628:
   mov ax, [stack_L1927950199+0]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1915503092
   .lL1642534850:
   ret
L1746572565:
   .lL1746572565:
   mov ax, [playerY]
   push ax
   mov ax, 20
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop dx
   mov [stack_L1746572565+0], dx
   .lL1724731843:
   mov ax, [playerY]
   push ax
   mov ax, 20
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jge .lL1305193908
   .lL1313953385:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1746572565+0], dx
   .lL1305193908:
   mov ax, [stack_L1746572565+0]
   push ax
   mov ax, 4
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jle .lL399573350
   .lL463345942:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1746572565+2], dx
   .lL195600860:
   jmp .lL1334729950
   .lL1347137144:
   mov ax, ground
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   mov ax, 4
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 48
   push ax
   mov ax, [stack_L1746572565+0]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL997608398:
   add [stack_L1746572565+2], word 1
   .lL1334729950:
   mov ax, [stack_L1746572565+2]
   push ax
   mov ax, 20
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1347137144
   .lL399573350:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1746572565+2], dx
   .lL1973336893:
   jmp .lL1212899836
   .lL1174290147:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1746572565+4], dx
   .lL1289696681:
   jmp .lL1285044316
   .lL1607460018:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1746572565+4]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1811075214
   .lL1588970020:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1746572565+4]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop dx
   mov [stack_L1746572565+6], dx
   .lL1407343478:
   mov ax, [stack_L1746572565+6]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1940447180
   .lL245565335:
   mov ax, tile
   push ax
   mov ax, tile_0
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL2121744517:
   jmp .lL1066376662
   .lL1940447180:
   mov ax, [stack_L1746572565+6]
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL183264084
   .lL476402209:
   mov ax, [animTick]
   push ax
   mov ax, 15
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1490180672
   .lL460332449:
   mov ax, tile
   push ax
   mov ax, block_0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1066376662
   .lL1490180672:
   mov ax, [animTick]
   push ax
   mov ax, 10
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1919892312
   .lL1143839598:
   mov ax, tile
   push ax
   mov ax, block_1
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1066376662
   .lL1919892312:
   mov ax, [animTick]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL250075633
   .lL358699161:
   mov ax, tile
   push ax
   mov ax, block_2
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1066376662
   .lL250075633:
   mov ax, tile
   push ax
   mov ax, block_3
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL517938326:
   jmp .lL1066376662
   .lL183264084:
   mov ax, [stack_L1746572565+6]
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL914424520
   .lL110718392:
   mov ax, tile
   push ax
   mov ax, tile_2
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1066376662
   .lL914424520:
   mov ax, [stack_L1746572565+6]
   push ax
   mov ax, 4
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL425918570
   .lL2143192188:
   mov ax, tile
   push ax
   mov ax, tile_3
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1066376662
   .lL425918570:
   mov ax, [stack_L1746572565+6]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1066376662
   .lL1100439041:
   mov ax, tile
   push ax
   mov ax, tile_4
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL1066376662:
   mov ax, tile
   push ax
   pop si
   mov ax, [si]
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [playerX]
   push ax
   mov ax, 35
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, [stack_L1746572565+4]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1746572565+0]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL1811075214:
   add [stack_L1746572565+4], word 1
   .lL1285044316:
   mov ax, [stack_L1746572565+4]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1607460018
   .lL204349222:
   add [stack_L1746572565+2], word 1
   .lL1212899836:
   mov ax, [stack_L1746572565+2]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1174290147
   .lL231685785:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1746572565+2], dx
   .lL114935352:
   jmp .lL2110121908
   .lL32374789:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1973538135
   .lL1023487453:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1865127310
   .lL515132998:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 5
   push ax
   pop bx
   pop ax
   mov dx, 0
   div bx
   push ax
   mov ax, 2
   push ax
   pop bx
   pop ax
   mov dx, 0
   div bx
   push dx
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1694819250
   .lL1365202186:
   mov ax, tile
   push ax
   mov ax, eR0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1651191114
   .lL1694819250:
   mov ax, tile
   push ax
   mov ax, eR1
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1651191114
   .lL1865127310:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 5
   push ax
   pop bx
   pop ax
   mov dx, 0
   div bx
   push ax
   mov ax, 2
   push ax
   pop bx
   pop ax
   mov dx, 0
   div bx
   push dx
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1586600255
   .lL474675244:
   mov ax, tile
   push ax
   mov ax, eL0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1651191114
   .lL1586600255:
   mov ax, tile
   push ax
   mov ax, eL1
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL932583850:
   jmp .lL1651191114
   .lL1973538135:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL212628335
   .lL1579572132:
   mov ax, [animTick]
   push ax
   mov ax, 4
   push ax
   pop bx
   pop ax
   mov dx, 0
   div bx
   push dx
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL359023572
   .lL305808283:
   mov ax, tile
   push ax
   mov ax, base_0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1651191114
   .lL359023572:
   mov ax, tile
   push ax
   mov ax, base_1
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL2111991224:
   jmp .lL1651191114
   .lL212628335:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1651191114
   .lL292938459:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL917142466
   .lL1993134103:
   mov ax, tile
   push ax
   mov ax, coin_0
   push ax
   pop bx
   pop si
   mov [si], bx
   jmp .lL1651191114
   .lL917142466:
   mov ax, tile
   push ax
   mov ax, coin_1
   push ax
   pop bx
   pop si
   mov [si], bx
   .lL1651191114:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL405662939
   .lL653305407:
   mov ax, tile
   push ax
   pop si
   mov ax, [si]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, [playerX]
   push ax
   mov ax, 35
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L1746572565+2]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, [stack_L1746572565+0]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop bx
   pop ax
   pop di
   call drawImage
   .lL405662939:
   add [stack_L1746572565+2], word 1
   .lL2110121908:
   mov ax, [stack_L1746572565+2]
   push ax
   mov ax, 16
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL32374789
   .lL1130478920:
   ret
   .lL1404928347:
L424058530:
   .lL424058530:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L424058530+10], dx
   .lL604107971:
   jmp .lL123961122
   .lL1227229563:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1982791261
   jmp .lL1562557367
   .lL1982791261:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L424058530+0]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1101288798:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L424058530+2]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL942731712:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L424058530+4]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL971848845:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L424058530+6]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1910163204:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 4
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L424058530+8]
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL305623748:
   mov ax, entityData
   push ax
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 1
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL758529971:
   ret
   .lL1562557367:
   add [stack_L424058530+10], word 1
   .lL123961122:
   mov ax, [stack_L424058530+10]
   push ax
   mov ax, 16
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1227229563
   .lL2104457164:
   ret
   .lL1521118594:
L791452441:
   .lL791452441:
   mov ax, entityData
   push ax
   mov ax, [stack_L791452441+0]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 0
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL1940030785:
   ret
   .lL1869997857:
L471910020:
   .lL471910020:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L471910020+4], dx
   .lL1763847188:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L471910020+6], dx
   .lL1617791695:
   jmp .lL125993742
   .lL1192108080:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1068824137
   .lL864237698:
   mov ax, [stack_L471910020+0]
   push ax
   mov ax, 9
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL537548559
   mov ax, [stack_L471910020+0]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jl .lL537548559
   mov ax, [playerY]
   push ax
   mov ax, 16
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL537548559
   mov ax, [inJump]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jl .lL537548559
   .lL380894366:
   mov ax, 1
   push ax
   pop ax
   mov [jump], ax
   .lL237852351:
   mov ax, 15
   push ax
   pop ax
   mov [inJump], ax
   .lL608188624:
   mov ax, 1
   push ax
   pop dx
   mov [stack_L471910020+4], dx
   .lL1451270520:
   jmp .lL537548559
   .lL1068824137:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1608446010
   .lL992136656:
   mov ax, [stack_L471910020+0]
   push ax
   mov ax, 9
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL537548559
   mov ax, [stack_L471910020+0]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 15
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jl .lL537548559
   mov ax, [playerY]
   push ax
   mov ax, 16
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL537548559
   mov ax, [inJump]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jl .lL537548559
   .lL511833308:
   mov ax, [velX]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1297685781
   .lL1705929636:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov [velX], ax
   jmp .lL1221555852
   .lL1297685781:
   mov ax, [velX]
   push ax
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1221555852
   .lL1509514333:
   mov ax, [velXP]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jge .lL1556956098
   .lL1252585652:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   mov [velX], ax
   jmp .lL1221555852
   .lL1556956098:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 1
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   pop ax
   mov [velX], ax
   .lL1221555852:
   mov ax, 1
   push ax
   pop dx
   mov [stack_L471910020+4], dx
   .lL2036368507:
   jmp .lL537548559
   .lL1608446010:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 0
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL537548559
   .lL1785210046:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop dx
   mov [stack_L471910020+8], dx
   .lL1552787810:
   mov ax, entityData
   push ax
   mov ax, 6
   push ax
   mov ax, [stack_L471910020+6]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 2
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop dx
   mov [stack_L471910020+10], dx
   .lL1361960727:
   mov ax, [stack_L471910020+0]
   push ax
   mov ax, 9
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L471910020+8]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL537548559
   mov ax, [stack_L471910020+0]
   push ax
   mov ax, [stack_L471910020+8]
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jl .lL537548559
   mov ax, [stack_L471910020+2]
   push ax
   mov ax, 15
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L471910020+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL537548559
   mov ax, [stack_L471910020+2]
   push ax
   mov ax, [stack_L471910020+10]
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jl .lL537548559
   .lL739498517:
   mov ax, [stack_L471910020+6]
   push ax
   pop dx
   mov [stack_L791452441+0], dx
   call L791452441
   .lL125130493:
   mov ax, [coins]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   mov [coins], ax
   .lL537548559:
   add [stack_L471910020+6], word 1
   .lL125993742:
   mov ax, [stack_L471910020+6]
   push ax
   mov ax, 16
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL1192108080
   .lL914504136:
   mov ax, [stack_L471910020+4]
   push ax
   pop dx
   mov [stack_L471910020+0], dx
   ret
   .lL166239592:
L1418481495:
   .lL1418481495:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1418481495+4], dx
   .lL991505714:
   jmp .lL385242642
   .lL824009085:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1418481495+6], dx
   .lL2085857771:
   jmp .lL248609774
   .lL708049632:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1418481495+4]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1887400018
   jmp .lL285377351
   .lL1887400018:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1418481495+4]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   mov ax, 5
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL344560770
   jmp .lL285377351
   .lL344560770:
   mov ax, [stack_L1418481495+0]
   push ax
   mov ax, 9
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L1418481495+4]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL285377351
   mov ax, [stack_L1418481495+0]
   push ax
   mov ax, [stack_L1418481495+4]
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jl .lL285377351
   mov ax, [stack_L1418481495+2]
   push ax
   mov ax, 15
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL285377351
   mov ax, [stack_L1418481495+2]
   push ax
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop bx
   pop ax
   sub ax, bx
   push ax
   mov ax, 6
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 8
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, 7
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jl .lL285377351
   .lL559450121:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1418481495+4]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov ax, [si]
   push ax
   pop dx
   mov [stack_L1418481495+8], dx
   .lL716083600:
   mov ax, [stack_L1418481495+8]
   push ax
   mov ax, 4
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL791885625
   .lL2001112025:
   mov ax, tileWorld
   push ax
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   imul bx
   push ax
   mov ax, [stack_L1418481495+4]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 3
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 5
   push ax
   pop cx
   pop ax
   pop si
   mov bx, 2
   mul bx
   add si, ax
   mov [si], cx
   .lL791885625:
   mov ax, 1
   push ax
   pop dx
   mov [stack_L1418481495+0], dx
   ret
   .lL285377351:
   add [stack_L1418481495+6], word 1
   .lL248609774:
   mov ax, [stack_L1418481495+6]
   push ax
   mov ax, [worldSizeY]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL708049632
   .lL314265080:
   add [stack_L1418481495+4], word 1
   .lL385242642:
   mov ax, [stack_L1418481495+4]
   push ax
   mov ax, [worldSizeX]
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL824009085
   .lL1288141870:
   mov ax, 0
   push ax
   pop dx
   mov [stack_L1418481495+0], dx
   ret
   .lL2054881392:
L135721597:
   .lL135721597:
   mov ax, [playerY]
   push ax
   mov ax, [velY]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop dx
   mov [stack_L135721597+0], dx
   .lL966808741:
   mov ax, [playerX]
   push ax
   mov ax, [stack_L135721597+0]
   push ax
   pop dx
   mov [stack_L471910020+2], dx
   pop dx
   mov [stack_L471910020+0], dx
   call L471910020
   mov ax, [stack_L471910020+0]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1908153060
   mov ax, [stack_L135721597+0]
   push ax
   mov ax, 15
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   mov ax, 48
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jle .lL1908153060
   mov ax, [playerX]
   push ax
   mov ax, [stack_L135721597+0]
   push ax
   pop dx
   mov [stack_L1418481495+2], dx
   pop dx
   mov [stack_L1418481495+0], dx
   call L1418481495
   mov ax, [stack_L1418481495+0]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL1908153060
   .lL116211441:
   mov ax, [stack_L135721597+0]
   push ax
   pop ax
   mov [playerY], ax
   .lL607635164:
   mov ax, 0
   push ax
   pop ax
   mov [onGround], ax
   .lL529116035:
   jmp .lL242481580
   .lL1908153060:
   mov ax, [velY]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jge .lL242481580
   .lL1627800613:
   mov ax, 1
   push ax
   pop ax
   mov [onGround], ax
   .lL242481580:
   mov ax, [playerX]
   push ax
   mov ax, [velX]
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop dx
   mov [stack_L135721597+2], dx
   .lL2065530879:
   mov ax, [stack_L135721597+2]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jg .lL697960108
   mov ax, [stack_L135721597+2]
   push ax
   mov ax, [playerY]
   push ax
   pop dx
   mov [stack_L1418481495+2], dx
   pop dx
   mov [stack_L1418481495+0], dx
   call L1418481495
   mov ax, [stack_L1418481495+0]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   jne .lL697960108
   .lL943010986:
   mov ax, [stack_L135721597+2]
   push ax
   pop ax
   mov [playerX], ax
   .lL1807837413:
   mov ax, [inMoving]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   add ax, bx
   push ax
   pop ax
   mov [inMoving], ax
   .lL697960108:
   mov ax, [inMoving]
   push ax
   mov ax, 20
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jg .lL2066940133
   .lL48612937:
   mov ax, 0
   push ax
   pop ax
   mov [inMoving], ax
   .lL2066940133:
   ret
   .lL325333723:
L1044036744:
   .lL1044036744:
   call resetCursor
   .lL1937962514:
   mov ax, [coins]
   push ax
   pop si
   call printInt
   .lL274064559:
   mov ax, b
   push ax
   pop si
   call printString
   .lL1018081122:
   mov ax, 7
   push ax
   pop si
   call printInt
   .lL242131142:
   mov ax, b2
   push ax
   pop si
   call printString
   .lL1782113663:
   mov ax, 1002
   push ax
   pop si
   call printInt
   .lL1433867275:
   ret
keyHandle:
   .lL476800120:
   mov ax, 0
   push ax
   pop ax
   mov [freeze], ax
   .lL1744347043:
   mov ax, [keyPressed]
   push ax
   mov ax, 30
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1254526270
   .lL662441761:
   mov ax, [keyState]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL1618212626
   .lL1129670968:
   mov ax, -1
   push ax
   pop ax
   mov [velXP], ax
   .lL1023714065:
   mov ax, 1
   push ax
   pop ax
   mov [isMoving], ax
   .lL2051450519:
   jmp .lL99747242
   .lL1618212626:
   mov ax, 0
   push ax
   pop ax
   mov [velXP], ax
   .lL1837543557:
   mov ax, 0
   push ax
   pop ax
   mov [isMoving], ax
   .lL1971489295:
   jmp .lL99747242
   .lL1254526270:
   mov ax, [keyPressed]
   push ax
   mov ax, 32
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL985655350
   .lL804611486:
   mov ax, [keyState]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL2008017533
   .lL370988149:
   mov ax, 1
   push ax
   pop ax
   mov [velXP], ax
   .lL1395089624:
   mov ax, 1
   push ax
   pop ax
   mov [isMoving], ax
   .lL1476011703:
   jmp .lL99747242
   .lL2008017533:
   mov ax, 0
   push ax
   pop ax
   mov [velXP], ax
   .lL1603195447:
   mov ax, 0
   push ax
   pop ax
   mov [isMoving], ax
   .lL792791759:
   jmp .lL99747242
   .lL985655350:
   mov ax, [keyPressed]
   push ax
   mov ax, 57
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL1191747167
   .lL1094834071:
   mov ax, [keyState]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL99747242
   mov ax, [onGround]
   push ax
   pop ax
   mov bx, 0
   cmp bx, ax
   je .lL99747242
   .lL1761061602:
   mov ax, 1
   push ax
   pop ax
   mov [jump], ax
   .lL1330106945:
   mov ax, 0
   push ax
   pop ax
   mov [onGround], ax
   .lL1279149968:
   mov ax, 15
   push ax
   pop ax
   mov [inJump], ax
   .lL59559151:
   jmp .lL99747242
   .lL1191747167:
   mov ax, [keyPressed]
   push ax
   mov ax, 1
   push ax
   pop ax
   pop bx
   cmp ax, bx
   jne .lL99747242
   .lL1450821318:
   mov ax, 1
   push ax
   pop ax
   mov [freeze], ax
   .lL99747242:
   ret
jmp $
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
freeze dw 0
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
;set tileWorld to pusty.f0xC.util.Null@735f7ae5
pL1 incbin 'minild/pL2.bimg'
pL0 incbin 'minild/pL1.bimg'
stack_L471910020 dw 0, 0, 0, 0, 0, 0
stack_L1804094807 dw 0
stack_L1927950199 dw 0, 0, 0, 0, 0
;set tileWorld1 to pusty.f0xC.util.Null@2ef9b8bc
;set tileWorld2 to pusty.f0xC.util.Null@5d624da6
animTick dw 0
;set tileWorld3 to pusty.f0xC.util.Null@1e67b872
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
%include 'checkKey.asm'
%include 'sleep.asm'
%include 'resetCursor.asm'
%include 'printInt.asm'
%include 'printChar.asm'
%include 'mathPow.asm'
%include 'printString.asm'
times 512*44- ($-$$) db 0
