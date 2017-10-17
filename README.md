# MiniLD71
###### First commit 29 Jan, 2017
###### Rough estimate of 3000 code lines
***

#### Controls:
| Key                | Action                               |
|--------------------|--------------------------------------|
| A                  | Move Left                            |
| D                  | Move Right                           |
| Space              | Jump                                 |


#### How to play:
- Collect the chipsets
- Reach the end of the level

#### Notes:
Entry for [MiniLD71](http://ludumdare.com/compo/2017/01/13/minild-71-retro-challenge/) with the theme "Retro"

Realmode kernel written in Java and crosscompiled with a self written Javabytecode to x86 assembly translater (F0xC) .

Binaries are in this repository:
- minild_8086.bin: compiled kernel to only use orignal x86 instructions
- minild_bpb.bin: compiled kernel build to run on modern computers
- minild_emu.bin: compiled kernel that runs in qemu
- minild_floppy.bin: compiled kernel build to run on floppies (not tested)


[LD Submission here](http://ludumdare.com/compo/minild-71/?action=preview&uid=55076)


![Screenshot1](/readme/MiniLD71_0.PNG)
![Screenshot2](/readme/MiniLD71_1.PNG)
![Screenshot3](/readme/MiniLD71_2.PNG)
