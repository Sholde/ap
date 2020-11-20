
kamikaze_clang:     format de fichier elf64-x86-64


Déassemblage de la section .interp :

00000000000002a8 <.interp>:
 2a8:	2f                   	(bad)  
 2a9:	6c                   	insb   (%dx),%es:(%rdi)
 2aa:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 2b1:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 2b6:	78 2d                	js     2e5 <__abi_tag+0x21>
 2b8:	78 38                	js     2f2 <__abi_tag+0x2e>
 2ba:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 2c0:	6f                   	outsl  %ds:(%rsi),(%dx)
 2c1:	2e 32 00             	xor    %cs:(%rax),%al

Déassemblage de la section .note.ABI-tag :

00000000000002c4 <__abi_tag>:
 2c4:	04 00                	add    $0x0,%al
 2c6:	00 00                	add    %al,(%rax)
 2c8:	10 00                	adc    %al,(%rax)
 2ca:	00 00                	add    %al,(%rax)
 2cc:	01 00                	add    %eax,(%rax)
 2ce:	00 00                	add    %al,(%rax)
 2d0:	47                   	rex.RXB
 2d1:	4e 55                	rex.WRX push %rbp
 2d3:	00 00                	add    %al,(%rax)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	00 03                	add    %al,(%rbx)
 2d9:	00 00                	add    %al,(%rax)
 2db:	00 02                	add    %al,(%rdx)
 2dd:	00 00                	add    %al,(%rax)
 2df:	00 00                	add    %al,(%rax)
 2e1:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .hash :

00000000000002e8 <.hash>:
 2e8:	03 00                	add    (%rax),%eax
 2ea:	00 00                	add    %al,(%rax)
 2ec:	0b 00                	or     (%rax),%eax
 2ee:	00 00                	add    %al,(%rax)
 2f0:	06                   	(bad)  
 2f1:	00 00                	add    %al,(%rax)
 2f3:	00 09                	add    %cl,(%rcx)
 2f5:	00 00                	add    %al,(%rax)
 2f7:	00 0a                	add    %cl,(%rdx)
	...
 301:	00 00                	add    %al,(%rax)
 303:	00 01                	add    %al,(%rcx)
 305:	00 00                	add    %al,(%rax)
 307:	00 00                	add    %al,(%rax)
 309:	00 00                	add    %al,(%rax)
 30b:	00 02                	add    %al,(%rdx)
 30d:	00 00                	add    %al,(%rax)
 30f:	00 04 00             	add    %al,(%rax,%rax,1)
 312:	00 00                	add    %al,(%rax)
 314:	00 00                	add    %al,(%rax)
 316:	00 00                	add    %al,(%rax)
 318:	05 00 00 00 07       	add    $0x7000000,%eax
 31d:	00 00                	add    %al,(%rax)
 31f:	00 08                	add    %cl,(%rax)
 321:	00 00                	add    %al,(%rax)
 323:	00 03                	add    %al,(%rbx)
 325:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .gnu.hash :

0000000000000328 <.gnu.hash>:
 328:	01 00                	add    %eax,(%rax)
 32a:	00 00                	add    %al,(%rax)
 32c:	01 00                	add    %eax,(%rax)
 32e:	00 00                	add    %al,(%rax)
 330:	01 00                	add    %eax,(%rax)
	...

Déassemblage de la section .dynsym :

0000000000000348 <.dynsym>:
	...
 360:	35 00 00 00 12       	xor    $0x12000000,%eax
	...
 375:	00 00                	add    %al,(%rax)
 377:	00 6a 00             	add    %ch,0x0(%rdx)
 37a:	00 00                	add    %al,(%rax)
 37c:	20 00                	and    %al,(%rax)
	...
 38e:	00 00                	add    %al,(%rax)
 390:	3a 00                	cmp    (%rax),%al
 392:	00 00                	add    %al,(%rax)
 394:	12 00                	adc    (%rax),%al
	...
 3a6:	00 00                	add    %al,(%rax)
 3a8:	10 00                	adc    %al,(%rax)
 3aa:	00 00                	add    %al,(%rax)
 3ac:	12 00                	adc    (%rax),%al
	...
 3be:	00 00                	add    %al,(%rax)
 3c0:	41 00 00             	add    %al,(%r8)
 3c3:	00 12                	add    %dl,(%rdx)
	...
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 86 00 00 00 20    	add    %al,0x20000000(%rsi)
	...
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 30                	add    %dh,(%rax)
 3f1:	00 00                	add    %al,(%rax)
 3f3:	00 12                	add    %dl,(%rdx)
	...
 405:	00 00                	add    %al,(%rax)
 407:	00 95 00 00 00 20    	add    %dl,0x20000000(%rbp)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 22                	add    %ah,(%rdx)
 421:	00 00                	add    %al,(%rax)
 423:	00 12                	add    %dl,(%rdx)
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 01                	add    %al,(%rcx)
 439:	00 00                	add    %al,(%rax)
 43b:	00 22                	add    %ah,(%rdx)
	...

Déassemblage de la section .dynstr :

0000000000000450 <.dynstr>:
 450:	00 5f 5f             	add    %bl,0x5f(%rdi)
 453:	63 78 61             	movsxd 0x61(%rax),%edi
 456:	5f                   	pop    %rdi
 457:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 45d:	7a 65                	jp     4c4 <__abi_tag+0x200>
 45f:	00 5f 5f             	add    %bl,0x5f(%rdi)
 462:	6c                   	insb   (%dx),%es:(%rdi)
 463:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 46a:	72 74                	jb     4e0 <__abi_tag+0x21c>
 46c:	5f                   	pop    %rdi
 46d:	6d                   	insl   (%dx),%es:(%rdi)
 46e:	61                   	(bad)  
 46f:	69 6e 00 61 6c 69 67 	imul   $0x67696c61,0x0(%rsi),%ebp
 476:	6e                   	outsb  %ds:(%rsi),(%dx)
 477:	65 64 5f             	gs fs pop %rdi
 47a:	61                   	(bad)  
 47b:	6c                   	insb   (%dx),%es:(%rdi)
 47c:	6c                   	insb   (%dx),%es:(%rdi)
 47d:	6f                   	outsl  %ds:(%rsi),(%dx)
 47e:	63 00                	movsxd (%rax),%eax
 480:	65 78 69             	gs js  4ec <__abi_tag+0x228>
 483:	74 00                	je     485 <__abi_tag+0x1c1>
 485:	66 72 65             	data16 jb 4ed <__abi_tag+0x229>
 488:	65 00 70 72          	add    %dh,%gs:0x72(%rax)
 48c:	69 6e 74 66 00 73 74 	imul   $0x74730066,0x74(%rsi),%ebp
 493:	72 74                	jb     509 <__abi_tag+0x245>
 495:	6f                   	outsl  %ds:(%rsi),(%dx)
 496:	6c                   	insb   (%dx),%es:(%rdi)
 497:	6c                   	insb   (%dx),%es:(%rdi)
 498:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 49c:	63 2e                	movsxd (%rsi),%ebp
 49e:	73 6f                	jae    50f <__abi_tag+0x24b>
 4a0:	2e 36 00 47 4c       	cs add %al,%ss:0x4c(%rdi)
 4a5:	49                   	rex.WB
 4a6:	42                   	rex.X
 4a7:	43 5f                	rex.XB pop %r15
 4a9:	32 2e                	xor    (%rsi),%ch
 4ab:	31 36                	xor    %esi,(%rsi)
 4ad:	00 47 4c             	add    %al,0x4c(%rdi)
 4b0:	49                   	rex.WB
 4b1:	42                   	rex.X
 4b2:	43 5f                	rex.XB pop %r15
 4b4:	32 2e                	xor    (%rsi),%ch
 4b6:	32 2e                	xor    (%rsi),%ch
 4b8:	35 00 5f 49 54       	xor    $0x54495f00,%eax
 4bd:	4d 5f                	rex.WRB pop %r15
 4bf:	64 65 72 65          	fs gs jb 528 <__abi_tag+0x264>
 4c3:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4ca:	4d 
 4cb:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4cd:	6f                   	outsl  %ds:(%rsi),(%dx)
 4ce:	6e                   	outsb  %ds:(%rsi),(%dx)
 4cf:	65 54                	gs push %rsp
 4d1:	61                   	(bad)  
 4d2:	62                   	(bad)  
 4d3:	6c                   	insb   (%dx),%es:(%rdi)
 4d4:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 4d8:	67 6d                	insl   (%dx),%es:(%edi)
 4da:	6f                   	outsl  %ds:(%rsi),(%dx)
 4db:	6e                   	outsb  %ds:(%rsi),(%dx)
 4dc:	5f                   	pop    %rdi
 4dd:	73 74                	jae    553 <__abi_tag+0x28f>
 4df:	61                   	(bad)  
 4e0:	72 74                	jb     556 <__abi_tag+0x292>
 4e2:	5f                   	pop    %rdi
 4e3:	5f                   	pop    %rdi
 4e4:	00 5f 49             	add    %bl,0x49(%rdi)
 4e7:	54                   	push   %rsp
 4e8:	4d 5f                	rex.WRB pop %r15
 4ea:	72 65                	jb     551 <__abi_tag+0x28d>
 4ec:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4f3:	4d 
 4f4:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4f6:	6f                   	outsl  %ds:(%rsi),(%dx)
 4f7:	6e                   	outsb  %ds:(%rsi),(%dx)
 4f8:	65 54                	gs push %rsp
 4fa:	61                   	(bad)  
 4fb:	62                   	.byte 0x62
 4fc:	6c                   	insb   (%dx),%es:(%rdi)
 4fd:	65                   	gs
	...

Déassemblage de la section .gnu.version :

0000000000000500 <.gnu.version>:
 500:	00 00                	add    %al,(%rax)
 502:	02 00                	add    (%rax),%al
 504:	00 00                	add    %al,(%rax)
 506:	02 00                	add    (%rax),%al
 508:	02 00                	add    (%rax),%al
 50a:	02 00                	add    (%rax),%al
 50c:	00 00                	add    %al,(%rax)
 50e:	02 00                	add    (%rax),%al
 510:	00 00                	add    %al,(%rax)
 512:	03 00                	add    (%rax),%eax
 514:	02 00                	add    (%rax),%al

Déassemblage de la section .gnu.version_r :

0000000000000518 <.gnu.version_r>:
 518:	01 00                	add    %eax,(%rax)
 51a:	02 00                	add    (%rax),%al
 51c:	49 00 00             	rex.WB add %al,(%r8)
 51f:	00 10                	add    %dl,(%rax)
 521:	00 00                	add    %al,(%rax)
 523:	00 00                	add    %al,(%rax)
 525:	00 00                	add    %al,(%rax)
 527:	00 96 91 96 06 00    	add    %dl,0x69691(%rsi)
 52d:	00 03                	add    %al,(%rbx)
 52f:	00 53 00             	add    %dl,0x0(%rbx)
 532:	00 00                	add    %al,(%rax)
 534:	10 00                	adc    %al,(%rax)
 536:	00 00                	add    %al,(%rax)
 538:	75 1a                	jne    554 <__abi_tag+0x290>
 53a:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 540:	5e                   	pop    %rsi
 541:	00 00                	add    %al,(%rax)
 543:	00 00                	add    %al,(%rax)
 545:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .rela.dyn :

0000000000000548 <.rela.dyn>:
 548:	d0 3d 00 00 00 00    	sarb   0x0(%rip)        # 54e <__abi_tag+0x28a>
 54e:	00 00                	add    %al,(%rax)
 550:	08 00                	or     %al,(%rax)
 552:	00 00                	add    %al,(%rax)
 554:	00 00                	add    %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	90                   	nop
 559:	11 00                	adc    %eax,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 d8                	add    %bl,%al
 561:	3d 00 00 00 00       	cmp    $0x0,%eax
 566:	00 00                	add    %al,(%rax)
 568:	08 00                	or     %al,(%rax)
 56a:	00 00                	add    %al,(%rax)
 56c:	00 00                	add    %al,(%rax)
 56e:	00 00                	add    %al,(%rax)
 570:	80 10 00             	adcb   $0x0,(%rax)
 573:	00 00                	add    %al,(%rax)
 575:	00 00                	add    %al,(%rax)
 577:	00 e0                	add    %ah,%al
 579:	3d 00 00 00 00       	cmp    $0x0,%eax
 57e:	00 00                	add    %al,(%rax)
 580:	08 00                	or     %al,(%rax)
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	40 11 00             	rex adc %eax,(%rax)
 58b:	00 00                	add    %al,(%rax)
 58d:	00 00                	add    %al,(%rax)
 58f:	00 48 40             	add    %cl,0x40(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	08 00                	or     %al,(%rax)
 59a:	00 00                	add    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	48                   	rex.W
 5a1:	40 00 00             	add    %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	d8 3f                	fdivrs (%rdi)
 5aa:	00 00                	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	06                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 02                	add    %al,(%rdx)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 e0                	add    %ah,%al
 5c1:	3f                   	(bad)  
 5c2:	00 00                	add    %al,(%rax)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	06                   	(bad)  
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5d6:	00 00                	add    %al,(%rax)
 5d8:	e8 3f 00 00 00       	callq  61c <__abi_tag+0x358>
 5dd:	00 00                	add    %al,(%rax)
 5df:	00 06                	add    %al,(%rsi)
 5e1:	00 00                	add    %al,(%rax)
 5e3:	00 06                	add    %al,(%rsi)
	...
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 f0                	add    %dh,%al
 5f1:	3f                   	(bad)  
 5f2:	00 00                	add    %al,(%rax)
 5f4:	00 00                	add    %al,(%rax)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	06                   	(bad)  
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 08                	add    %cl,(%rax)
	...
 605:	00 00                	add    %al,(%rax)
 607:	00 f8                	add    %bh,%al
 609:	3f                   	(bad)  
 60a:	00 00                	add    %al,(%rax)
 60c:	00 00                	add    %al,(%rax)
 60e:	00 00                	add    %al,(%rax)
 610:	06                   	(bad)  
 611:	00 00                	add    %al,(%rax)
 613:	00 0a                	add    %cl,(%rdx)
	...

Déassemblage de la section .rela.plt :

0000000000000620 <.rela.plt>:
 620:	18 40 00             	sbb    %al,0x0(%rax)
 623:	00 00                	add    %al,(%rax)
 625:	00 00                	add    %al,(%rax)
 627:	00 07                	add    %al,(%rdi)
 629:	00 00                	add    %al,(%rax)
 62b:	00 01                	add    %al,(%rcx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 20                	add    %ah,(%rax)
 639:	40 00 00             	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	07                   	(bad)  
 641:	00 00                	add    %al,(%rax)
 643:	00 03                	add    %al,(%rbx)
	...
 64d:	00 00                	add    %al,(%rax)
 64f:	00 28                	add    %ch,(%rax)
 651:	40 00 00             	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	07                   	(bad)  
 659:	00 00                	add    %al,(%rax)
 65b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 661 <__abi_tag+0x39d>
 661:	00 00                	add    %al,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	00 00                	add    %al,(%rax)
 667:	00 30                	add    %dh,(%rax)
 669:	40 00 00             	add    %al,(%rax)
 66c:	00 00                	add    %al,(%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	07                   	(bad)  
 671:	00 00                	add    %al,(%rax)
 673:	00 07                	add    %al,(%rdi)
	...
 67d:	00 00                	add    %al,(%rax)
 67f:	00 38                	add    %bh,(%rax)
 681:	40 00 00             	add    %al,(%rax)
 684:	00 00                	add    %al,(%rax)
 686:	00 00                	add    %al,(%rax)
 688:	07                   	(bad)  
 689:	00 00                	add    %al,(%rax)
 68b:	00 09                	add    %cl,(%rcx)
	...

Déassemblage de la section .init :

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Déassemblage de la section .plt :

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <strtoll@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <strtoll@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <exit@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <exit@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <aligned_alloc@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <aligned_alloc@GLIBC_2.16>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

Déassemblage de la section .text :

0000000000001080 <set_fast_math>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1089:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    1090:	00 
    1091:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    1096:	c3                   	retq   
    1097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    109e:	00 00 

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	4c 8d 05 f6 0c 00 00 	lea    0xcf6(%rip),%r8        # 1db0 <__libc_csu_fini>
    10ba:	48 8d 0d 7f 0c 00 00 	lea    0xc7f(%rip),%rcx        # 1d40 <__libc_csu_init>
    10c1:	48 8d 3d d8 00 00 00 	lea    0xd8(%rip),%rdi        # 11a0 <main>
    10c8:	ff 15 12 2f 00 00    	callq  *0x2f12(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ce:	f4                   	hlt    
    10cf:	90                   	nop

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4050 <__TMC_END__>
    10d7:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4050 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 2e 00 00 	mov    0x2eee(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmpq   *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4050 <__TMC_END__>
    1107:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4050 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmpq   *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4050 <__TMC_END__>
    114b:	75 33                	jne    1180 <__do_global_dtors_aux+0x40>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 2e 00 00 	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0d                	je     1168 <__do_global_dtors_aux+0x28>
    115b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4048 <__dso_handle>
    1162:	ff 15 90 2e 00 00    	callq  *0x2e90(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1168:	e8 63 ff ff ff       	callq  10d0 <deregister_tm_clones>
    116d:	c6 05 dc 2e 00 00 01 	movb   $0x1,0x2edc(%rip)        # 4050 <__TMC_END__>
    1174:	5d                   	pop    %rbp
    1175:	c3                   	retq   
    1176:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    117d:	00 00 00 
    1180:	c3                   	retq   
    1181:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1188:	00 00 00 00 
    118c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001190 <frame_dummy>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	e9 67 ff ff ff       	jmpq   1100 <register_tm_clones>
    1199:	0f 1f 00             	nopl   (%rax)
    119c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011a0 <main>:
    11a0:	41 57                	push   %r15
    11a2:	41 56                	push   %r14
    11a4:	53                   	push   %rbx
    11a5:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
    11ac:	83 ff 02             	cmp    $0x2,%edi
    11af:	0f 85 f9 03 00 00    	jne    15ae <main+0x40e>
    11b5:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11b9:	31 f6                	xor    %esi,%esi
    11bb:	ba 0a 00 00 00       	mov    $0xa,%edx
    11c0:	e8 8b fe ff ff       	callq  1050 <strtoll@plt>
    11c5:	49 89 c7             	mov    %rax,%r15
    11c8:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    11cf:	00 
    11d0:	bf 40 00 00 00       	mov    $0x40,%edi
    11d5:	48 89 de             	mov    %rbx,%rsi
    11d8:	e8 93 fe ff ff       	callq  1070 <aligned_alloc@plt>
    11dd:	49 89 c6             	mov    %rax,%r14
    11e0:	bf 40 00 00 00       	mov    $0x40,%edi
    11e5:	48 89 de             	mov    %rbx,%rsi
    11e8:	e8 83 fe ff ff       	callq  1070 <aligned_alloc@plt>
    11ed:	48 89 c3             	mov    %rax,%rbx
    11f0:	4d 85 ff             	test   %r15,%r15
    11f3:	74 0d                	je     1202 <main+0x62>
    11f5:	49 83 ff 10          	cmp    $0x10,%r15
    11f9:	73 1a                	jae    1215 <main+0x75>
    11fb:	31 c0                	xor    %eax,%eax
    11fd:	e9 ee 01 00 00       	jmpq   13f0 <main+0x250>
    1202:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1206:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    120a:	c5 fb 11 4c 24 18    	vmovsd %xmm1,0x18(%rsp)
    1210:	e9 a3 03 00 00       	jmpq   15b8 <main+0x418>
    1215:	4c 89 f8             	mov    %r15,%rax
    1218:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    121c:	48 8d 70 f0          	lea    -0x10(%rax),%rsi
    1220:	48 89 f2             	mov    %rsi,%rdx
    1223:	48 c1 ea 04          	shr    $0x4,%rdx
    1227:	48 ff c2             	inc    %rdx
    122a:	89 d1                	mov    %edx,%ecx
    122c:	83 e1 03             	and    $0x3,%ecx
    122f:	48 83 fe 30          	cmp    $0x30,%rsi
    1233:	73 07                	jae    123c <main+0x9c>
    1235:	31 f6                	xor    %esi,%esi
    1237:	e9 48 01 00 00       	jmpq   1384 <main+0x1e4>
    123c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1240:	48 f7 da             	neg    %rdx
    1243:	31 f6                	xor    %esi,%esi
    1245:	c4 e2 7d 19 05 ba 0d 	vbroadcastsd 0xdba(%rip),%ymm0        # 2008 <_IO_stdin_used+0x8>
    124c:	00 00 
    124e:	c4 e2 7d 19 0d b9 0d 	vbroadcastsd 0xdb9(%rip),%ymm1        # 2010 <_IO_stdin_used+0x10>
    1255:	00 00 
    1257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    125e:	00 00 
    1260:	c4 c1 7d 11 04 f6    	vmovupd %ymm0,(%r14,%rsi,8)
    1266:	c4 c1 7d 11 44 f6 20 	vmovupd %ymm0,0x20(%r14,%rsi,8)
    126d:	c4 c1 7d 11 44 f6 40 	vmovupd %ymm0,0x40(%r14,%rsi,8)
    1274:	c4 c1 7d 11 44 f6 60 	vmovupd %ymm0,0x60(%r14,%rsi,8)
    127b:	c5 fd 11 0c f3       	vmovupd %ymm1,(%rbx,%rsi,8)
    1280:	c5 fd 11 4c f3 20    	vmovupd %ymm1,0x20(%rbx,%rsi,8)
    1286:	c5 fd 11 4c f3 40    	vmovupd %ymm1,0x40(%rbx,%rsi,8)
    128c:	c5 fd 11 4c f3 60    	vmovupd %ymm1,0x60(%rbx,%rsi,8)
    1292:	c4 c1 7d 11 84 f6 80 	vmovupd %ymm0,0x80(%r14,%rsi,8)
    1299:	00 00 00 
    129c:	c4 c1 7d 11 84 f6 a0 	vmovupd %ymm0,0xa0(%r14,%rsi,8)
    12a3:	00 00 00 
    12a6:	c4 c1 7d 11 84 f6 c0 	vmovupd %ymm0,0xc0(%r14,%rsi,8)
    12ad:	00 00 00 
    12b0:	c4 c1 7d 11 84 f6 e0 	vmovupd %ymm0,0xe0(%r14,%rsi,8)
    12b7:	00 00 00 
    12ba:	c5 fd 11 8c f3 80 00 	vmovupd %ymm1,0x80(%rbx,%rsi,8)
    12c1:	00 00 
    12c3:	c5 fd 11 8c f3 a0 00 	vmovupd %ymm1,0xa0(%rbx,%rsi,8)
    12ca:	00 00 
    12cc:	c5 fd 11 8c f3 c0 00 	vmovupd %ymm1,0xc0(%rbx,%rsi,8)
    12d3:	00 00 
    12d5:	c5 fd 11 8c f3 e0 00 	vmovupd %ymm1,0xe0(%rbx,%rsi,8)
    12dc:	00 00 
    12de:	c4 c1 7d 11 84 f6 00 	vmovupd %ymm0,0x100(%r14,%rsi,8)
    12e5:	01 00 00 
    12e8:	c4 c1 7d 11 84 f6 20 	vmovupd %ymm0,0x120(%r14,%rsi,8)
    12ef:	01 00 00 
    12f2:	c4 c1 7d 11 84 f6 40 	vmovupd %ymm0,0x140(%r14,%rsi,8)
    12f9:	01 00 00 
    12fc:	c4 c1 7d 11 84 f6 60 	vmovupd %ymm0,0x160(%r14,%rsi,8)
    1303:	01 00 00 
    1306:	c5 fd 11 8c f3 00 01 	vmovupd %ymm1,0x100(%rbx,%rsi,8)
    130d:	00 00 
    130f:	c5 fd 11 8c f3 20 01 	vmovupd %ymm1,0x120(%rbx,%rsi,8)
    1316:	00 00 
    1318:	c5 fd 11 8c f3 40 01 	vmovupd %ymm1,0x140(%rbx,%rsi,8)
    131f:	00 00 
    1321:	c5 fd 11 8c f3 60 01 	vmovupd %ymm1,0x160(%rbx,%rsi,8)
    1328:	00 00 
    132a:	c4 c1 7d 11 84 f6 80 	vmovupd %ymm0,0x180(%r14,%rsi,8)
    1331:	01 00 00 
    1334:	c4 c1 7d 11 84 f6 a0 	vmovupd %ymm0,0x1a0(%r14,%rsi,8)
    133b:	01 00 00 
    133e:	c4 c1 7d 11 84 f6 c0 	vmovupd %ymm0,0x1c0(%r14,%rsi,8)
    1345:	01 00 00 
    1348:	c4 c1 7d 11 84 f6 e0 	vmovupd %ymm0,0x1e0(%r14,%rsi,8)
    134f:	01 00 00 
    1352:	c5 fd 11 8c f3 80 01 	vmovupd %ymm1,0x180(%rbx,%rsi,8)
    1359:	00 00 
    135b:	c5 fd 11 8c f3 a0 01 	vmovupd %ymm1,0x1a0(%rbx,%rsi,8)
    1362:	00 00 
    1364:	c5 fd 11 8c f3 c0 01 	vmovupd %ymm1,0x1c0(%rbx,%rsi,8)
    136b:	00 00 
    136d:	c5 fd 11 8c f3 e0 01 	vmovupd %ymm1,0x1e0(%rbx,%rsi,8)
    1374:	00 00 
    1376:	48 83 c6 40          	add    $0x40,%rsi
    137a:	48 83 c2 04          	add    $0x4,%rdx
    137e:	0f 85 dc fe ff ff    	jne    1260 <main+0xc0>
    1384:	48 85 c9             	test   %rcx,%rcx
    1387:	74 62                	je     13eb <main+0x24b>
    1389:	48 8d 14 f5 60 00 00 	lea    0x60(,%rsi,8),%rdx
    1390:	00 
    1391:	48 f7 d9             	neg    %rcx
    1394:	c4 e2 7d 19 05 6b 0c 	vbroadcastsd 0xc6b(%rip),%ymm0        # 2008 <_IO_stdin_used+0x8>
    139b:	00 00 
    139d:	c4 e2 7d 19 0d 6a 0c 	vbroadcastsd 0xc6a(%rip),%ymm1        # 2010 <_IO_stdin_used+0x10>
    13a4:	00 00 
    13a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13ad:	00 00 00 
    13b0:	c4 c1 7d 11 44 16 a0 	vmovupd %ymm0,-0x60(%r14,%rdx,1)
    13b7:	c4 c1 7d 11 44 16 c0 	vmovupd %ymm0,-0x40(%r14,%rdx,1)
    13be:	c4 c1 7d 11 44 16 e0 	vmovupd %ymm0,-0x20(%r14,%rdx,1)
    13c5:	c4 c1 7d 11 04 16    	vmovupd %ymm0,(%r14,%rdx,1)
    13cb:	c5 fd 11 4c 13 a0    	vmovupd %ymm1,-0x60(%rbx,%rdx,1)
    13d1:	c5 fd 11 4c 13 c0    	vmovupd %ymm1,-0x40(%rbx,%rdx,1)
    13d7:	c5 fd 11 4c 13 e0    	vmovupd %ymm1,-0x20(%rbx,%rdx,1)
    13dd:	c5 fd 11 0c 13       	vmovupd %ymm1,(%rbx,%rdx,1)
    13e2:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
    13e6:	48 ff c1             	inc    %rcx
    13e9:	75 c5                	jne    13b0 <main+0x210>
    13eb:	49 39 c7             	cmp    %rax,%r15
    13ee:	74 30                	je     1420 <main+0x280>
    13f0:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    13f7:	99 b9 3f 
    13fa:	48 ba 00 00 00 00 00 	movabs $0x3ff0000000000000,%rdx
    1401:	00 f0 3f 
    1404:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    140b:	00 00 00 00 00 
    1410:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
    1414:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
    1418:	48 ff c0             	inc    %rax
    141b:	49 39 c7             	cmp    %rax,%r15
    141e:	75 f0                	jne    1410 <main+0x270>
    1420:	49 83 ff 10          	cmp    $0x10,%r15
    1424:	73 0b                	jae    1431 <main+0x291>
    1426:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    142a:	31 c0                	xor    %eax,%eax
    142c:	e9 ba 06 00 00       	jmpq   1aeb <main+0x94b>
    1431:	4c 89 f8             	mov    %r15,%rax
    1434:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    1438:	48 8d 48 f0          	lea    -0x10(%rax),%rcx
    143c:	48 89 ca             	mov    %rcx,%rdx
    143f:	48 c1 ea 04          	shr    $0x4,%rdx
    1443:	48 ff c2             	inc    %rdx
    1446:	48 85 c9             	test   %rcx,%rcx
    1449:	0f 84 46 01 00 00    	je     1595 <main+0x3f5>
    144f:	48 89 d6             	mov    %rdx,%rsi
    1452:	48 83 e6 fe          	and    $0xfffffffffffffffe,%rsi
    1456:	48 89 f1             	mov    %rsi,%rcx
    1459:	48 c1 e1 04          	shl    $0x4,%rcx
    145d:	48 f7 de             	neg    %rsi
    1460:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1464:	bf e0 00 00 00       	mov    $0xe0,%edi
    1469:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    146d:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1471:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    1475:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    147c:	00 00 00 00 
    1480:	c5 fd 10 a4 3b 20 ff 	vmovupd -0xe0(%rbx,%rdi,1),%ymm4
    1487:	ff ff 
    1489:	c5 fd 10 ac 3b 40 ff 	vmovupd -0xc0(%rbx,%rdi,1),%ymm5
    1490:	ff ff 
    1492:	c5 fd 10 b4 3b 60 ff 	vmovupd -0xa0(%rbx,%rdi,1),%ymm6
    1499:	ff ff 
    149b:	c5 fd 10 7c 3b 80    	vmovupd -0x80(%rbx,%rdi,1),%ymm7
    14a1:	c4 c1 5d 59 a4 3e 20 	vmulpd -0xe0(%r14,%rdi,1),%ymm4,%ymm4
    14a8:	ff ff ff 
    14ab:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    14af:	c4 c1 55 59 a4 3e 40 	vmulpd -0xc0(%r14,%rdi,1),%ymm5,%ymm4
    14b6:	ff ff ff 
    14b9:	c5 dd 58 c9          	vaddpd %ymm1,%ymm4,%ymm1
    14bd:	c4 c1 4d 59 a4 3e 60 	vmulpd -0xa0(%r14,%rdi,1),%ymm6,%ymm4
    14c4:	ff ff ff 
    14c7:	c5 dd 58 d2          	vaddpd %ymm2,%ymm4,%ymm2
    14cb:	c4 c1 45 59 64 3e 80 	vmulpd -0x80(%r14,%rdi,1),%ymm7,%ymm4
    14d2:	c5 dd 58 db          	vaddpd %ymm3,%ymm4,%ymm3
    14d6:	c5 fd 10 64 3b a0    	vmovupd -0x60(%rbx,%rdi,1),%ymm4
    14dc:	c5 fd 10 6c 3b c0    	vmovupd -0x40(%rbx,%rdi,1),%ymm5
    14e2:	c5 fd 10 74 3b e0    	vmovupd -0x20(%rbx,%rdi,1),%ymm6
    14e8:	c5 fd 10 3c 3b       	vmovupd (%rbx,%rdi,1),%ymm7
    14ed:	c4 c1 5d 59 64 3e a0 	vmulpd -0x60(%r14,%rdi,1),%ymm4,%ymm4
    14f4:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    14f8:	c4 c1 55 59 64 3e c0 	vmulpd -0x40(%r14,%rdi,1),%ymm5,%ymm4
    14ff:	c5 dd 58 c9          	vaddpd %ymm1,%ymm4,%ymm1
    1503:	c4 c1 4d 59 64 3e e0 	vmulpd -0x20(%r14,%rdi,1),%ymm6,%ymm4
    150a:	c5 dd 58 d2          	vaddpd %ymm2,%ymm4,%ymm2
    150e:	c4 c1 45 59 24 3e    	vmulpd (%r14,%rdi,1),%ymm7,%ymm4
    1514:	c5 dd 58 db          	vaddpd %ymm3,%ymm4,%ymm3
    1518:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    151f:	48 83 c6 02          	add    $0x2,%rsi
    1523:	0f 85 57 ff ff ff    	jne    1480 <main+0x2e0>
    1529:	f6 c2 01             	test   $0x1,%dl
    152c:	74 42                	je     1570 <main+0x3d0>
    152e:	c5 fd 10 24 cb       	vmovupd (%rbx,%rcx,8),%ymm4
    1533:	c5 fd 10 6c cb 20    	vmovupd 0x20(%rbx,%rcx,8),%ymm5
    1539:	c5 fd 10 74 cb 40    	vmovupd 0x40(%rbx,%rcx,8),%ymm6
    153f:	c5 fd 10 7c cb 60    	vmovupd 0x60(%rbx,%rcx,8),%ymm7
    1545:	c4 c1 45 59 7c ce 60 	vmulpd 0x60(%r14,%rcx,8),%ymm7,%ymm7
    154c:	c5 c5 58 db          	vaddpd %ymm3,%ymm7,%ymm3
    1550:	c4 c1 4d 59 74 ce 40 	vmulpd 0x40(%r14,%rcx,8),%ymm6,%ymm6
    1557:	c5 cd 58 d2          	vaddpd %ymm2,%ymm6,%ymm2
    155b:	c4 c1 55 59 6c ce 20 	vmulpd 0x20(%r14,%rcx,8),%ymm5,%ymm5
    1562:	c5 d5 58 c9          	vaddpd %ymm1,%ymm5,%ymm1
    1566:	c4 c1 5d 59 24 ce    	vmulpd (%r14,%rcx,8),%ymm4,%ymm4
    156c:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    1570:	c5 f5 58 cb          	vaddpd %ymm3,%ymm1,%ymm1
    1574:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
    1578:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    157c:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
    1582:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
    1586:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    158c:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
    1590:	e9 68 05 00 00       	jmpq   1afd <main+0x95d>
    1595:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1599:	31 c9                	xor    %ecx,%ecx
    159b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    159f:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    15a3:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    15a7:	f6 c2 01             	test   $0x1,%dl
    15aa:	75 82                	jne    152e <main+0x38e>
    15ac:	eb c2                	jmp    1570 <main+0x3d0>
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	e8 a8 fa ff ff       	callq  1060 <exit@plt>
    15b8:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    15be:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    15c2:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
    15c8:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    15cd:	4d 85 ff             	test   %r15,%r15
    15d0:	0f 84 c2 05 00 00    	je     1b98 <main+0x9f8>
    15d6:	31 c0                	xor    %eax,%eax
    15d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15df:	00 
    15e0:	c5 fd 10 04 c3       	vmovupd (%rbx,%rax,8),%ymm0
    15e5:	c4 c1 7d 59 04 c6    	vmulpd (%r14,%rax,8),%ymm0,%ymm0
    15eb:	c4 e3 fd 01 c0 2d    	vpermpd $0x2d,%ymm0,%ymm0
    15f1:	c5 35 58 c8          	vaddpd %ymm0,%ymm9,%ymm9
    15f5:	48 83 c0 04          	add    $0x4,%rax
    15f9:	4c 39 f8             	cmp    %r15,%rax
    15fc:	72 e2                	jb     15e0 <main+0x440>
    15fe:	41 f6 c7 03          	test   $0x3,%r15b
    1602:	75 52                	jne    1656 <main+0x4b6>
    1604:	49 83 ff 03          	cmp    $0x3,%r15
    1608:	72 4c                	jb     1656 <main+0x4b6>
    160a:	c4 a1 7b 10 44 fb e8 	vmovsd -0x18(%rbx,%r15,8),%xmm0
    1611:	c4 a1 7b 10 4c fb f0 	vmovsd -0x10(%rbx,%r15,8),%xmm1
    1618:	c4 81 7b 59 44 fe e8 	vmulsd -0x18(%r14,%r15,8),%xmm0,%xmm0
    161f:	c4 63 7d 19 ca 01    	vextractf128 $0x1,%ymm9,%xmm2
    1625:	c4 e3 79 05 da 01    	vpermilpd $0x1,%xmm2,%xmm3
    162b:	c4 81 73 59 4c fe f0 	vmulsd -0x10(%r14,%r15,8),%xmm1,%xmm1
    1632:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1636:	c4 a1 7b 10 4c fb f8 	vmovsd -0x8(%rbx,%r15,8),%xmm1
    163d:	c4 81 73 59 4c fe f8 	vmulsd -0x8(%r14,%r15,8),%xmm1,%xmm1
    1644:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1648:	c5 e3 58 c0          	vaddsd %xmm0,%xmm3,%xmm0
    164c:	c5 e9 14 c0          	vunpcklpd %xmm0,%xmm2,%xmm0
    1650:	c4 63 35 18 c8 01    	vinsertf128 $0x1,%xmm0,%ymm9,%ymm9
    1656:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    165a:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    165e:	31 c0                	xor    %eax,%eax
    1660:	c4 41 19 57 e4       	vxorpd %xmm12,%xmm12,%xmm12
    1665:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    166a:	c4 41 11 57 ed       	vxorpd %xmm13,%xmm13,%xmm13
    166f:	90                   	nop
    1670:	c5 f9 10 04 c3       	vmovupd (%rbx,%rax,8),%xmm0
    1675:	c4 c1 79 59 04 c6    	vmulpd (%r14,%rax,8),%xmm0,%xmm0
    167b:	c5 fb 10 4c c3 10    	vmovsd 0x10(%rbx,%rax,8),%xmm1
    1681:	c4 c1 73 59 4c c6 10 	vmulsd 0x10(%r14,%rax,8),%xmm1,%xmm1
    1688:	c5 11 58 e8          	vaddpd %xmm0,%xmm13,%xmm13
    168c:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
    1690:	c5 f9 10 44 c3 18    	vmovupd 0x18(%rbx,%rax,8),%xmm0
    1696:	c4 c1 79 59 44 c6 18 	vmulpd 0x18(%r14,%rax,8),%xmm0,%xmm0
    169d:	c4 e3 79 05 c0 01    	vpermilpd $0x1,%xmm0,%xmm0
    16a3:	c5 09 58 f0          	vaddpd %xmm0,%xmm14,%xmm14
    16a7:	c5 fb 10 44 c3 28    	vmovsd 0x28(%rbx,%rax,8),%xmm0
    16ad:	c4 c1 7b 59 44 c6 28 	vmulsd 0x28(%r14,%rax,8),%xmm0,%xmm0
    16b4:	c5 fb 58 ff          	vaddsd %xmm7,%xmm0,%xmm7
    16b8:	c5 f9 10 44 c3 30    	vmovupd 0x30(%rbx,%rax,8),%xmm0
    16be:	c4 c1 79 59 44 c6 30 	vmulpd 0x30(%r14,%rax,8),%xmm0,%xmm0
    16c5:	c4 e3 79 05 c0 01    	vpermilpd $0x1,%xmm0,%xmm0
    16cb:	c5 f9 58 f6          	vaddpd %xmm6,%xmm0,%xmm6
    16cf:	48 83 c0 08          	add    $0x8,%rax
    16d3:	4c 39 f8             	cmp    %r15,%rax
    16d6:	72 98                	jb     1670 <main+0x4d0>
    16d8:	c4 c3 79 05 c5 01    	vpermilpd $0x1,%xmm13,%xmm0
    16de:	41 f6 c7 07          	test   $0x7,%r15b
    16e2:	c5 f9 29 44 24 70    	vmovapd %xmm0,0x70(%rsp)
    16e8:	0f 85 84 00 00 00    	jne    1772 <main+0x5d2>
    16ee:	49 83 ff 07          	cmp    $0x7,%r15
    16f2:	72 7e                	jb     1772 <main+0x5d2>
    16f4:	c4 a1 7b 10 44 fb c8 	vmovsd -0x38(%rbx,%r15,8),%xmm0
    16fb:	c4 a1 7b 10 4c fb d0 	vmovsd -0x30(%rbx,%r15,8),%xmm1
    1702:	c4 81 7b 59 44 fe c8 	vmulsd -0x38(%r14,%r15,8),%xmm0,%xmm0
    1709:	c5 93 58 c0          	vaddsd %xmm0,%xmm13,%xmm0
    170d:	c4 81 73 59 4c fe d0 	vmulsd -0x30(%r14,%r15,8),%xmm1,%xmm1
    1714:	c4 a1 7b 10 54 fb d8 	vmovsd -0x28(%rbx,%r15,8),%xmm2
    171b:	c4 81 6b 59 54 fe d8 	vmulsd -0x28(%r14,%r15,8),%xmm2,%xmm2
    1722:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    1726:	c4 a1 7b 10 54 fb e0 	vmovsd -0x20(%rbx,%r15,8),%xmm2
    172d:	c4 81 6b 59 54 fe e0 	vmulsd -0x20(%r14,%r15,8),%xmm2,%xmm2
    1734:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    1738:	c4 a1 7b 10 54 fb e8 	vmovsd -0x18(%rbx,%r15,8),%xmm2
    173f:	c4 81 6b 59 54 fe e8 	vmulsd -0x18(%r14,%r15,8),%xmm2,%xmm2
    1746:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    174a:	c4 a1 7b 10 54 fb f0 	vmovsd -0x10(%rbx,%r15,8),%xmm2
    1751:	c4 81 6b 59 54 fe f0 	vmulsd -0x10(%r14,%r15,8),%xmm2,%xmm2
    1758:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    175c:	c4 a1 7b 10 54 fb f8 	vmovsd -0x8(%rbx,%r15,8),%xmm2
    1763:	c4 81 6b 59 54 fe f8 	vmulsd -0x8(%r14,%r15,8),%xmm2,%xmm2
    176a:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    176e:	c5 7b 58 e9          	vaddsd %xmm1,%xmm0,%xmm13
    1772:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    1777:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    177c:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1780:	31 c0                	xor    %eax,%eax
    1782:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1786:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    178b:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    178f:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    1793:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
    179a:	84 00 00 00 00 00 
    17a0:	c5 f9 10 04 c3       	vmovupd (%rbx,%rax,8),%xmm0
    17a5:	c4 c1 79 59 04 c6    	vmulpd (%r14,%rax,8),%xmm0,%xmm0
    17ab:	c5 f9 58 ed          	vaddpd %xmm5,%xmm0,%xmm5
    17af:	c5 fb 10 44 c3 10    	vmovsd 0x10(%rbx,%rax,8),%xmm0
    17b5:	c4 c1 7b 59 44 c6 10 	vmulsd 0x10(%r14,%rax,8),%xmm0,%xmm0
    17bc:	c5 f9 10 64 c3 18    	vmovupd 0x18(%rbx,%rax,8),%xmm4
    17c2:	c4 c1 59 59 64 c6 18 	vmulpd 0x18(%r14,%rax,8),%xmm4,%xmm4
    17c9:	c5 fb 58 d2          	vaddsd %xmm2,%xmm0,%xmm2
    17cd:	c4 e3 79 05 c4 01    	vpermilpd $0x1,%xmm4,%xmm0
    17d3:	c5 f9 58 db          	vaddpd %xmm3,%xmm0,%xmm3
    17d7:	c5 fd 10 44 c3 28    	vmovupd 0x28(%rbx,%rax,8),%ymm0
    17dd:	c4 c1 7d 59 44 c6 28 	vmulpd 0x28(%r14,%rax,8),%ymm0,%ymm0
    17e4:	c4 e3 fd 01 c0 1b    	vpermpd $0x1b,%ymm0,%ymm0
    17ea:	c5 25 58 d8          	vaddpd %ymm0,%ymm11,%ymm11
    17ee:	c5 fd 10 44 c3 48    	vmovupd 0x48(%rbx,%rax,8),%ymm0
    17f4:	c4 c1 7d 59 44 c6 48 	vmulpd 0x48(%r14,%rax,8),%ymm0,%ymm0
    17fb:	c4 e3 fd 01 c0 1b    	vpermpd $0x1b,%ymm0,%ymm0
    1801:	c5 2d 58 d0          	vaddpd %ymm0,%ymm10,%ymm10
    1805:	c5 fb 10 44 c3 68    	vmovsd 0x68(%rbx,%rax,8),%xmm0
    180b:	c4 c1 7b 59 44 c6 68 	vmulsd 0x68(%r14,%rax,8),%xmm0,%xmm0
    1812:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
    1816:	c5 f9 10 44 c3 70    	vmovupd 0x70(%rbx,%rax,8),%xmm0
    181c:	c4 c1 79 59 44 c6 70 	vmulpd 0x70(%r14,%rax,8),%xmm0,%xmm0
    1823:	c4 e3 79 05 c0 01    	vpermilpd $0x1,%xmm0,%xmm0
    1829:	c5 01 58 f8          	vaddpd %xmm0,%xmm15,%xmm15
    182d:	48 83 c0 10          	add    $0x10,%rax
    1831:	4c 39 f8             	cmp    %r15,%rax
    1834:	0f 82 66 ff ff ff    	jb     17a0 <main+0x600>
    183a:	c4 e3 79 05 c5 01    	vpermilpd $0x1,%xmm5,%xmm0
    1840:	41 f6 c7 0f          	test   $0xf,%r15b
    1844:	c5 f9 29 44 24 60    	vmovapd %xmm0,0x60(%rsp)
    184a:	0f 85 92 03 00 00    	jne    1be2 <main+0xa42>
    1850:	49 83 ff 0e          	cmp    $0xe,%r15
    1854:	0f 86 88 03 00 00    	jbe    1be2 <main+0xa42>
    185a:	4c 89 f8             	mov    %r15,%rax
    185d:	48 83 c0 f2          	add    $0xfffffffffffffff2,%rax
    1861:	49 0f 42 c7          	cmovb  %r15,%rax
    1865:	4c 89 f9             	mov    %r15,%rcx
    1868:	48 f7 d1             	not    %rcx
    186b:	48 8d 4c 08 0f       	lea    0xf(%rax,%rcx,1),%rcx
    1870:	c4 e1 f9 6e c1       	vmovq  %rcx,%xmm0
    1875:	c4 e2 7d 59 e0       	vpbroadcastq %xmm0,%ymm4
    187a:	c5 7a 7e c5          	vmovq  %xmm5,%xmm8
    187e:	48 89 ca             	mov    %rcx,%rdx
    1881:	48 c1 ea 02          	shr    $0x2,%rdx
    1885:	48 ff c2             	inc    %rdx
    1888:	89 d0                	mov    %edx,%eax
    188a:	83 e0 03             	and    $0x3,%eax
    188d:	48 83 f9 0c          	cmp    $0xc,%rcx
    1891:	73 10                	jae    18a3 <main+0x703>
    1893:	31 c9                	xor    %ecx,%ecx
    1895:	48 85 c0             	test   %rax,%rax
    1898:	0f 85 a5 01 00 00    	jne    1a43 <main+0x8a3>
    189e:	e9 1f 02 00 00       	jmpq   1ac2 <main+0x922>
    18a3:	c5 79 29 a4 24 b0 00 	vmovapd %xmm12,0xb0(%rsp)
    18aa:	00 00 
    18ac:	c5 f9 29 b4 24 a0 00 	vmovapd %xmm6,0xa0(%rsp)
    18b3:	00 00 
    18b5:	c5 7d 11 8c 24 c0 00 	vmovupd %ymm9,0xc0(%rsp)
    18bc:	00 00 
    18be:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    18c2:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
    18c9:	00 
    18ca:	4e 8d 04 fb          	lea    (%rbx,%r15,8),%r8
    18ce:	49 83 c0 e8          	add    $0xffffffffffffffe8,%r8
    18d2:	4f 8d 0c fe          	lea    (%r14,%r15,8),%r9
    18d6:	49 83 c1 e8          	add    $0xffffffffffffffe8,%r9
    18da:	48 f7 da             	neg    %rdx
    18dd:	31 f6                	xor    %esi,%esi
    18df:	c4 e2 7d 59 05 30 07 	vpbroadcastq 0x730(%rip),%ymm0        # 2018 <_IO_stdin_used+0x18>
    18e6:	00 00 
    18e8:	c5 fe 7f a4 24 e0 00 	vmovdqu %ymm4,0xe0(%rsp)
    18ef:	00 00 
    18f1:	c5 fe 7f 44 24 20    	vmovdqu %ymm0,0x20(%rsp)
    18f7:	c5 dd ef c0          	vpxor  %ymm0,%ymm4,%ymm0
    18fb:	c5 fe 7f 84 24 80 00 	vmovdqu %ymm0,0x80(%rsp)
    1902:	00 00 
    1904:	c5 7e 6f 4c 24 20    	vmovdqu 0x20(%rsp),%ymm9
    190a:	c5 7e 6f a4 24 80 00 	vmovdqu 0x80(%rsp),%ymm12
    1911:	00 00 
    1913:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    1917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    191e:	00 00 
    1920:	c4 e1 f9 6e c6       	vmovq  %rsi,%xmm0
    1925:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    192a:	c5 fd 6f 25 ee 06 00 	vmovdqa 0x6ee(%rip),%ymm4        # 2020 <_IO_stdin_used+0x20>
    1931:	00 
    1932:	c5 fd eb c4          	vpor   %ymm4,%ymm0,%ymm0
    1936:	c5 b5 ef c0          	vpxor  %ymm0,%ymm9,%ymm0
    193a:	c4 c2 7d 37 c4       	vpcmpgtq %ymm12,%ymm0,%ymm0
    193f:	c5 fd ef c6          	vpxor  %ymm6,%ymm0,%ymm0
    1943:	c4 c2 7d 2d 6c f1 a0 	vmaskmovpd -0x60(%r9,%rsi,8),%ymm0,%ymm5
    194a:	c4 c2 7d 2d 44 f0 a0 	vmaskmovpd -0x60(%r8,%rsi,8),%ymm0,%ymm0
    1951:	c5 fd 59 c5          	vmulpd %ymm5,%ymm0,%ymm0
    1955:	c5 bd 58 c0          	vaddpd %ymm0,%ymm8,%ymm0
    1959:	c5 fd 11 44 24 40    	vmovupd %ymm0,0x40(%rsp)
    195f:	48 8d 7e 04          	lea    0x4(%rsi),%rdi
    1963:	c4 e1 f9 6e ef       	vmovq  %rdi,%xmm5
    1968:	c4 e2 7d 59 ed       	vpbroadcastq %xmm5,%ymm5
    196d:	c5 d5 eb ec          	vpor   %ymm4,%ymm5,%ymm5
    1971:	c5 b5 ef ed          	vpxor  %ymm5,%ymm9,%ymm5
    1975:	c4 c2 55 37 ec       	vpcmpgtq %ymm12,%ymm5,%ymm5
    197a:	c5 d5 ef ee          	vpxor  %ymm6,%ymm5,%ymm5
    197e:	c4 42 55 2d 44 f1 c0 	vmaskmovpd -0x40(%r9,%rsi,8),%ymm5,%ymm8
    1985:	c4 c2 55 2d 6c f0 c0 	vmaskmovpd -0x40(%r8,%rsi,8),%ymm5,%ymm5
    198c:	c5 bd 59 ed          	vmulpd %ymm5,%ymm8,%ymm5
    1990:	48 8d 7e 08          	lea    0x8(%rsi),%rdi
    1994:	c4 e1 f9 6e c7       	vmovq  %rdi,%xmm0
    1999:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    199e:	c5 fd eb c4          	vpor   %ymm4,%ymm0,%ymm0
    19a2:	c5 b5 ef c0          	vpxor  %ymm0,%ymm9,%ymm0
    19a6:	c4 c2 7d 37 c4       	vpcmpgtq %ymm12,%ymm0,%ymm0
    19ab:	c5 fd ef c6          	vpxor  %ymm6,%ymm0,%ymm0
    19af:	c4 42 7d 2d 44 f1 e0 	vmaskmovpd -0x20(%r9,%rsi,8),%ymm0,%ymm8
    19b6:	c4 c2 7d 2d 44 f0 e0 	vmaskmovpd -0x20(%r8,%rsi,8),%ymm0,%ymm0
    19bd:	c5 bd 59 c0          	vmulpd %ymm0,%ymm8,%ymm0
    19c1:	c5 d5 58 c0          	vaddpd %ymm0,%ymm5,%ymm0
    19c5:	c5 fd 58 6c 24 40    	vaddpd 0x40(%rsp),%ymm0,%ymm5
    19cb:	48 8d 7e 0c          	lea    0xc(%rsi),%rdi
    19cf:	c4 e1 f9 6e c7       	vmovq  %rdi,%xmm0
    19d4:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    19d9:	c5 fd eb c4          	vpor   %ymm4,%ymm0,%ymm0
    19dd:	c5 b5 ef c0          	vpxor  %ymm0,%ymm9,%ymm0
    19e1:	c4 c2 7d 37 c4       	vpcmpgtq %ymm12,%ymm0,%ymm0
    19e6:	c5 fd ef c6          	vpxor  %ymm6,%ymm0,%ymm0
    19ea:	c4 42 7d 2d 04 f1    	vmaskmovpd (%r9,%rsi,8),%ymm0,%ymm8
    19f0:	c4 c2 7d 2d 24 f0    	vmaskmovpd (%r8,%rsi,8),%ymm0,%ymm4
    19f6:	c5 bd 59 e4          	vmulpd %ymm4,%ymm8,%ymm4
    19fa:	c5 5d 58 c5          	vaddpd %ymm5,%ymm4,%ymm8
    19fe:	48 83 c6 10          	add    $0x10,%rsi
    1a02:	48 83 c2 04          	add    $0x4,%rdx
    1a06:	0f 85 14 ff ff ff    	jne    1920 <main+0x780>
    1a0c:	c4 e3 7d 39 c4 01    	vextracti128 $0x1,%ymm0,%xmm4
    1a12:	c5 f9 6b c4          	vpackssdw %xmm4,%xmm0,%xmm0
    1a16:	c5 fe 6f a4 24 e0 00 	vmovdqu 0xe0(%rsp),%ymm4
    1a1d:	00 00 
    1a1f:	c5 7d 10 8c 24 c0 00 	vmovupd 0xc0(%rsp),%ymm9
    1a26:	00 00 
    1a28:	c5 f9 28 b4 24 a0 00 	vmovapd 0xa0(%rsp),%xmm6
    1a2f:	00 00 
    1a31:	c5 79 28 a4 24 b0 00 	vmovapd 0xb0(%rsp),%xmm12
    1a38:	00 00 
    1a3a:	48 85 c0             	test   %rax,%rax
    1a3d:	0f 84 7f 00 00 00    	je     1ac2 <main+0x922>
    1a43:	4a 8d 14 fb          	lea    (%rbx,%r15,8),%rdx
    1a47:	48 83 c2 88          	add    $0xffffffffffffff88,%rdx
    1a4b:	4b 8d 34 fe          	lea    (%r14,%r15,8),%rsi
    1a4f:	48 83 c6 88          	add    $0xffffffffffffff88,%rsi
    1a53:	48 f7 d8             	neg    %rax
    1a56:	c4 e2 7d 59 05 b9 05 	vpbroadcastq 0x5b9(%rip),%ymm0        # 2018 <_IO_stdin_used+0x18>
    1a5d:	00 00 
    1a5f:	c5 fe 7f 44 24 40    	vmovdqu %ymm0,0x40(%rsp)
    1a65:	c5 dd ef c0          	vpxor  %ymm0,%ymm4,%ymm0
    1a69:	c5 fe 7f 44 24 20    	vmovdqu %ymm0,0x20(%rsp)
    1a6f:	90                   	nop
    1a70:	c5 7d 29 c5          	vmovapd %ymm8,%ymm5
    1a74:	c4 e1 f9 6e c1       	vmovq  %rcx,%xmm0
    1a79:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    1a7e:	c5 fd eb 05 9a 05 00 	vpor   0x59a(%rip),%ymm0,%ymm0        # 2020 <_IO_stdin_used+0x20>
    1a85:	00 
    1a86:	c5 fd ef 44 24 40    	vpxor  0x40(%rsp),%ymm0,%ymm0
    1a8c:	c4 e2 7d 37 44 24 20 	vpcmpgtq 0x20(%rsp),%ymm0,%ymm0
    1a93:	c5 fd ef 05 a5 05 00 	vpxor  0x5a5(%rip),%ymm0,%ymm0        # 2040 <_IO_stdin_used+0x40>
    1a9a:	00 
    1a9b:	c4 62 7d 2d 04 ce    	vmaskmovpd (%rsi,%rcx,8),%ymm0,%ymm8
    1aa1:	c4 e2 7d 2d 24 ca    	vmaskmovpd (%rdx,%rcx,8),%ymm0,%ymm4
    1aa7:	c5 bd 59 e4          	vmulpd %ymm4,%ymm8,%ymm4
    1aab:	c5 5d 58 c5          	vaddpd %ymm5,%ymm4,%ymm8
    1aaf:	48 83 c1 04          	add    $0x4,%rcx
    1ab3:	48 ff c0             	inc    %rax
    1ab6:	75 b8                	jne    1a70 <main+0x8d0>
    1ab8:	c4 e3 7d 39 c4 01    	vextracti128 $0x1,%ymm0,%xmm4
    1abe:	c5 f9 6b c4          	vpackssdw %xmm4,%xmm0,%xmm0
    1ac2:	c5 f9 72 f0 1f       	vpslld $0x1f,%xmm0,%xmm0
    1ac7:	c4 e2 7d 25 c0       	vpmovsxdq %xmm0,%ymm0
    1acc:	c4 c3 55 4b c0 00    	vblendvpd %ymm0,%ymm8,%ymm5,%ymm0
    1ad2:	c4 e3 7d 19 c4 01    	vextractf128 $0x1,%ymm0,%xmm4
    1ad8:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    1adc:	c4 e3 79 05 e0 01    	vpermilpd $0x1,%xmm0,%xmm4
    1ae2:	c5 fb 58 ec          	vaddsd %xmm4,%xmm0,%xmm5
    1ae6:	e9 f7 00 00 00       	jmpq   1be2 <main+0xa42>
    1aeb:	c5 fb 10 04 c3       	vmovsd (%rbx,%rax,8),%xmm0
    1af0:	c4 c1 7b 59 04 c6    	vmulsd (%r14,%rax,8),%xmm0,%xmm0
    1af6:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
    1afa:	48 ff c0             	inc    %rax
    1afd:	49 39 c7             	cmp    %rax,%r15
    1b00:	75 e9                	jne    1aeb <main+0x94b>
    1b02:	41 f6 c7 01          	test   $0x1,%r15b
    1b06:	c5 fb 11 4c 24 18    	vmovsd %xmm1,0x18(%rsp)
    1b0c:	75 2f                	jne    1b3d <main+0x99d>
    1b0e:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1b12:	31 c0                	xor    %eax,%eax
    1b14:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    1b1b:	00 00 00 00 00 
    1b20:	c5 f9 10 0c c3       	vmovupd (%rbx,%rax,8),%xmm1
    1b25:	c4 c1 71 59 0c c6    	vmulpd (%r14,%rax,8),%xmm1,%xmm1
    1b2b:	c5 f1 58 c0          	vaddpd %xmm0,%xmm1,%xmm0
    1b2f:	48 83 c0 02          	add    $0x2,%rax
    1b33:	4c 39 f8             	cmp    %r15,%rax
    1b36:	72 e8                	jb     1b20 <main+0x980>
    1b38:	e9 7b fa ff ff       	jmpq   15b8 <main+0x418>
    1b3d:	4c 89 f8             	mov    %r15,%rax
    1b40:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1b44:	48 ff c8             	dec    %rax
    1b47:	74 1f                	je     1b68 <main+0x9c8>
    1b49:	31 c9                	xor    %ecx,%ecx
    1b4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1b50:	c5 f9 10 0c cb       	vmovupd (%rbx,%rcx,8),%xmm1
    1b55:	c4 c1 71 59 0c ce    	vmulpd (%r14,%rcx,8),%xmm1,%xmm1
    1b5b:	c5 f1 58 c0          	vaddpd %xmm0,%xmm1,%xmm0
    1b5f:	48 83 c1 02          	add    $0x2,%rcx
    1b63:	48 39 c1             	cmp    %rax,%rcx
    1b66:	72 e8                	jb     1b50 <main+0x9b0>
    1b68:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    1b6e:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    1b72:	c4 a1 7b 10 4c fb f8 	vmovsd -0x8(%rbx,%r15,8),%xmm1
    1b79:	c4 81 73 59 4c fe f8 	vmulsd -0x8(%r14,%r15,8),%xmm1,%xmm1
    1b80:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1b84:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
    1b8a:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    1b8f:	4d 85 ff             	test   %r15,%r15
    1b92:	0f 85 3e fa ff ff    	jne    15d6 <main+0x436>
    1b98:	c4 41 11 57 ed       	vxorpd %xmm13,%xmm13,%xmm13
    1b9d:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    1ba2:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    1ba6:	c4 41 19 57 e4       	vxorpd %xmm12,%xmm12,%xmm12
    1bab:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    1baf:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1bb3:	c5 f9 29 44 24 70    	vmovapd %xmm0,0x70(%rsp)
    1bb9:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1bbd:	c5 f9 29 44 24 60    	vmovapd %xmm0,0x60(%rsp)
    1bc3:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1bc7:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1bcb:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    1bcf:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    1bd4:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    1bd9:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    1bde:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    1be2:	c4 c3 79 05 c6 01    	vpermilpd $0x1,%xmm14,%xmm0
    1be8:	c4 c1 1b 58 e6       	vaddsd %xmm14,%xmm12,%xmm4
    1bed:	c5 7b 58 c7          	vaddsd %xmm7,%xmm0,%xmm8
    1bf1:	c4 e3 79 05 c6 01    	vpermilpd $0x1,%xmm6,%xmm0
    1bf7:	c5 db 58 c0          	vaddsd %xmm0,%xmm4,%xmm0
    1bfb:	c5 fb 58 44 24 70    	vaddsd 0x70(%rsp),%xmm0,%xmm0
    1c01:	c5 bb 58 e6          	vaddsd %xmm6,%xmm8,%xmm4
    1c05:	c5 93 58 e4          	vaddsd %xmm4,%xmm13,%xmm4
    1c09:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c0d:	c5 fb 11 44 24 40    	vmovsd %xmm0,0x40(%rsp)
    1c13:	c4 c3 79 05 c1 01    	vpermilpd $0x1,%xmm9,%xmm0
    1c19:	c5 b3 58 c0          	vaddsd %xmm0,%xmm9,%xmm0
    1c1d:	c4 63 7d 19 cc 01    	vextractf128 $0x1,%ymm9,%xmm4
    1c23:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c27:	c4 e3 79 05 e4 01    	vpermilpd $0x1,%xmm4,%xmm4
    1c2d:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c31:	c5 fb 11 44 24 20    	vmovsd %xmm0,0x20(%rsp)
    1c37:	c4 e3 79 05 c3 01    	vpermilpd $0x1,%xmm3,%xmm0
    1c3d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    1c41:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    1c45:	c4 63 7d 19 da 01    	vextractf128 $0x1,%ymm11,%xmm2
    1c4b:	c4 e3 79 05 da 01    	vpermilpd $0x1,%xmm2,%xmm3
    1c51:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
    1c55:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    1c59:	c4 c3 79 05 d3 01    	vpermilpd $0x1,%xmm11,%xmm2
    1c5f:	c5 a3 58 d2          	vaddsd %xmm2,%xmm11,%xmm2
    1c63:	c4 63 7d 19 d3 01    	vextractf128 $0x1,%ymm10,%xmm3
    1c69:	c4 e3 79 05 e3 01    	vpermilpd $0x1,%xmm3,%xmm4
    1c6f:	c5 eb 58 d4          	vaddsd %xmm4,%xmm2,%xmm2
    1c73:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    1c77:	c4 c3 79 05 da 01    	vpermilpd $0x1,%xmm10,%xmm3
    1c7d:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
    1c81:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1c85:	c5 ab 58 ca          	vaddsd %xmm2,%xmm10,%xmm1
    1c89:	c4 c3 79 05 d7 01    	vpermilpd $0x1,%xmm15,%xmm2
    1c8f:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    1c93:	c5 f3 58 4c 24 60    	vaddsd 0x60(%rsp),%xmm1,%xmm1
    1c99:	c5 83 58 c0          	vaddsd %xmm0,%xmm15,%xmm0
    1c9d:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
    1ca1:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    1ca5:	c5 fb 11 84 24 80 00 	vmovsd %xmm0,0x80(%rsp)
    1cac:	00 00 
    1cae:	48 8d 3d ab 03 00 00 	lea    0x3ab(%rip),%rdi        # 2060 <_IO_stdin_used+0x60>
    1cb5:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    1cbb:	b0 01                	mov    $0x1,%al
    1cbd:	c5 f8 77             	vzeroupper 
    1cc0:	e8 7b f3 ff ff       	callq  1040 <printf@plt>
    1cc5:	48 8d 3d 9f 03 00 00 	lea    0x39f(%rip),%rdi        # 206b <_IO_stdin_used+0x6b>
    1ccc:	c5 fb 10 44 24 10    	vmovsd 0x10(%rsp),%xmm0
    1cd2:	b0 01                	mov    $0x1,%al
    1cd4:	e8 67 f3 ff ff       	callq  1040 <printf@plt>
    1cd9:	48 8d 3d 99 03 00 00 	lea    0x399(%rip),%rdi        # 2079 <_IO_stdin_used+0x79>
    1ce0:	c5 fb 10 44 24 20    	vmovsd 0x20(%rsp),%xmm0
    1ce6:	b0 01                	mov    $0x1,%al
    1ce8:	e8 53 f3 ff ff       	callq  1040 <printf@plt>
    1ced:	48 8d 3d 93 03 00 00 	lea    0x393(%rip),%rdi        # 2087 <_IO_stdin_used+0x87>
    1cf4:	c5 fb 10 44 24 40    	vmovsd 0x40(%rsp),%xmm0
    1cfa:	b0 01                	mov    $0x1,%al
    1cfc:	e8 3f f3 ff ff       	callq  1040 <printf@plt>
    1d01:	48 8d 3d 8d 03 00 00 	lea    0x38d(%rip),%rdi        # 2095 <_IO_stdin_used+0x95>
    1d08:	c5 fb 10 84 24 80 00 	vmovsd 0x80(%rsp),%xmm0
    1d0f:	00 00 
    1d11:	b0 01                	mov    $0x1,%al
    1d13:	e8 28 f3 ff ff       	callq  1040 <printf@plt>
    1d18:	4c 89 f7             	mov    %r14,%rdi
    1d1b:	e8 10 f3 ff ff       	callq  1030 <free@plt>
    1d20:	48 89 df             	mov    %rbx,%rdi
    1d23:	e8 08 f3 ff ff       	callq  1030 <free@plt>
    1d28:	31 c0                	xor    %eax,%eax
    1d2a:	48 81 c4 00 01 00 00 	add    $0x100,%rsp
    1d31:	5b                   	pop    %rbx
    1d32:	41 5e                	pop    %r14
    1d34:	41 5f                	pop    %r15
    1d36:	c3                   	retq   
    1d37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1d3e:	00 00 

0000000000001d40 <__libc_csu_init>:
    1d40:	f3 0f 1e fa          	endbr64 
    1d44:	41 57                	push   %r15
    1d46:	4c 8d 3d 83 20 00 00 	lea    0x2083(%rip),%r15        # 3dd0 <__frame_dummy_init_array_entry>
    1d4d:	41 56                	push   %r14
    1d4f:	49 89 d6             	mov    %rdx,%r14
    1d52:	41 55                	push   %r13
    1d54:	49 89 f5             	mov    %rsi,%r13
    1d57:	41 54                	push   %r12
    1d59:	41 89 fc             	mov    %edi,%r12d
    1d5c:	55                   	push   %rbp
    1d5d:	48 8d 2d 7c 20 00 00 	lea    0x207c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1d64:	53                   	push   %rbx
    1d65:	4c 29 fd             	sub    %r15,%rbp
    1d68:	48 83 ec 08          	sub    $0x8,%rsp
    1d6c:	e8 8f f2 ff ff       	callq  1000 <_init>
    1d71:	48 c1 fd 03          	sar    $0x3,%rbp
    1d75:	74 1f                	je     1d96 <__libc_csu_init+0x56>
    1d77:	31 db                	xor    %ebx,%ebx
    1d79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1d80:	4c 89 f2             	mov    %r14,%rdx
    1d83:	4c 89 ee             	mov    %r13,%rsi
    1d86:	44 89 e7             	mov    %r12d,%edi
    1d89:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1d8d:	48 83 c3 01          	add    $0x1,%rbx
    1d91:	48 39 dd             	cmp    %rbx,%rbp
    1d94:	75 ea                	jne    1d80 <__libc_csu_init+0x40>
    1d96:	48 83 c4 08          	add    $0x8,%rsp
    1d9a:	5b                   	pop    %rbx
    1d9b:	5d                   	pop    %rbp
    1d9c:	41 5c                	pop    %r12
    1d9e:	41 5d                	pop    %r13
    1da0:	41 5e                	pop    %r14
    1da2:	41 5f                	pop    %r15
    1da4:	c3                   	retq   
    1da5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1dac:	00 00 00 00 

0000000000001db0 <__libc_csu_fini>:
    1db0:	f3 0f 1e fa          	endbr64 
    1db4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001db8 <_fini>:
    1db8:	f3 0f 1e fa          	endbr64 
    1dbc:	48 83 ec 08          	sub    $0x8,%rsp
    1dc0:	48 83 c4 08          	add    $0x8,%rsp
    1dc4:	c3                   	retq   

Déassemblage de la section .rodata :

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	00 00                	add    %al,(%rax)
    2006:	00 00                	add    %al,(%rax)
    2008:	9a                   	(bad)  
    2009:	99                   	cltd   
    200a:	99                   	cltd   
    200b:	99                   	cltd   
    200c:	99                   	cltd   
    200d:	99                   	cltd   
    200e:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    2013:	00 00                	add    %al,(%rax)
    2015:	00 f0                	add    %dh,%al
    2017:	3f                   	(bad)  
    2018:	00 00                	add    %al,(%rax)
    201a:	00 00                	add    %al,(%rax)
    201c:	00 00                	add    %al,(%rax)
    201e:	00 80 00 00 00 00    	add    %al,0x0(%rax)
    2024:	00 00                	add    %al,(%rax)
    2026:	00 00                	add    %al,(%rax)
    2028:	01 00                	add    %eax,(%rax)
    202a:	00 00                	add    %al,(%rax)
    202c:	00 00                	add    %al,(%rax)
    202e:	00 00                	add    %al,(%rax)
    2030:	02 00                	add    (%rax),%al
    2032:	00 00                	add    %al,(%rax)
    2034:	00 00                	add    %al,(%rax)
    2036:	00 00                	add    %al,(%rax)
    2038:	03 00                	add    (%rax),%eax
    203a:	00 00                	add    %al,(%rax)
    203c:	00 00                	add    %al,(%rax)
    203e:	00 00                	add    %al,(%rax)
    2040:	ff                   	(bad)  
    2041:	ff                   	(bad)  
    2042:	ff                   	(bad)  
    2043:	ff                   	(bad)  
    2044:	ff                   	(bad)  
    2045:	ff                   	(bad)  
    2046:	ff                   	(bad)  
    2047:	ff                   	(bad)  
    2048:	ff                   	(bad)  
    2049:	ff                   	(bad)  
    204a:	ff                   	(bad)  
    204b:	ff                   	(bad)  
    204c:	ff                   	(bad)  
    204d:	ff                   	(bad)  
    204e:	ff                   	(bad)  
    204f:	ff                   	(bad)  
    2050:	ff                   	(bad)  
    2051:	ff                   	(bad)  
    2052:	ff                   	(bad)  
    2053:	ff                   	(bad)  
    2054:	ff                   	(bad)  
    2055:	ff                   	(bad)  
    2056:	ff                   	(bad)  
    2057:	ff                   	(bad)  
    2058:	ff                   	(bad)  
    2059:	ff                   	(bad)  
    205a:	ff                   	(bad)  
    205b:	ff                   	(bad)  
    205c:	ff                   	(bad)  
    205d:	ff                   	(bad)  
    205e:	ff                   	(bad)  
    205f:	ff 72 65             	pushq  0x65(%rdx)
    2062:	73 20                	jae    2084 <_IO_stdin_used+0x84>
    2064:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2069:	0a 00                	or     (%rax),%al
    206b:	72 65                	jb     20d2 <__GNU_EH_FRAME_HDR+0x2e>
    206d:	73 5f                	jae    20ce <__GNU_EH_FRAME_HDR+0x2a>
    206f:	32 78 20             	xor    0x20(%rax),%bh
    2072:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2077:	0a 00                	or     (%rax),%al
    2079:	72 65                	jb     20e0 <__GNU_EH_FRAME_HDR+0x3c>
    207b:	73 5f                	jae    20dc <__GNU_EH_FRAME_HDR+0x38>
    207d:	34 78                	xor    $0x78,%al
    207f:	20 3d 20 25 6c 66    	and    %bh,0x666c2520(%rip)        # 666c45a5 <_end+0x666c054d>
    2085:	0a 00                	or     (%rax),%al
    2087:	72 65                	jb     20ee <__GNU_EH_FRAME_HDR+0x4a>
    2089:	73 5f                	jae    20ea <__GNU_EH_FRAME_HDR+0x46>
    208b:	38 78 20             	cmp    %bh,0x20(%rax)
    208e:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2093:	0a 00                	or     (%rax),%al
    2095:	72 65                	jb     20fc <__GNU_EH_FRAME_HDR+0x58>
    2097:	73 5f                	jae    20f8 <__GNU_EH_FRAME_HDR+0x54>
    2099:	31 36                	xor    %esi,(%rsi)
    209b:	78 20                	js     20bd <__GNU_EH_FRAME_HDR+0x19>
    209d:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    20a2:	0a 00                	or     (%rax),%al

Déassemblage de la section .eh_frame_hdr :

00000000000020a4 <__GNU_EH_FRAME_HDR>:
    20a4:	01 1b                	add    %ebx,(%rbx)
    20a6:	03 3b                	add    (%rbx),%edi
    20a8:	38 00                	cmp    %al,(%rax)
    20aa:	00 00                	add    %al,(%rax)
    20ac:	06                   	(bad)  
    20ad:	00 00                	add    %al,(%rax)
    20af:	00 7c ef ff          	add    %bh,-0x1(%rdi,%rbp,8)
    20b3:	ff 6c 00 00          	ljmp   *0x0(%rax,%rax,1)
    20b7:	00 dc                	add    %bl,%ah
    20b9:	ef                   	out    %eax,(%dx)
    20ba:	ff                   	(bad)  
    20bb:	ff 94 00 00 00 fc ef 	callq  *-0x10040000(%rax,%rax,1)
    20c2:	ff                   	(bad)  
    20c3:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
    20c7:	00 fc                	add    %bh,%ah
    20c9:	f0 ff                	lock (bad) 
    20cb:	ff ac 00 00 00 9c fc 	ljmp   *-0x3640000(%rax,%rax,1)
    20d2:	ff                   	(bad)  
    20d3:	ff e4                	jmpq   *%rsp
    20d5:	00 00                	add    %al,(%rax)
    20d7:	00 0c fd ff ff 2c 01 	add    %cl,0x12cffff(,%rdi,8)
	...

Déassemblage de la section .eh_frame :

00000000000020e0 <__FRAME_END__-0x104>:
    20e0:	14 00                	adc    $0x0,%al
    20e2:	00 00                	add    %al,(%rax)
    20e4:	00 00                	add    %al,(%rax)
    20e6:	00 00                	add    %al,(%rax)
    20e8:	01 7a 52             	add    %edi,0x52(%rdx)
    20eb:	00 01                	add    %al,(%rcx)
    20ed:	78 10                	js     20ff <__GNU_EH_FRAME_HDR+0x5b>
    20ef:	01 1b                	add    %ebx,(%rbx)
    20f1:	0c 07                	or     $0x7,%al
    20f3:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    20f9:	00 00                	add    %al,(%rax)
    20fb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20fe:	00 00                	add    %al,(%rax)
    2100:	a0 ef ff ff 2f 00 00 	movabs 0x2fffffef,%al
    2107:	00 00 
    2109:	44 07                	rex.R (bad) 
    210b:	10 00                	adc    %al,(%rax)
    210d:	00 00                	add    %al,(%rax)
    210f:	00 24 00             	add    %ah,(%rax,%rax,1)
    2112:	00 00                	add    %al,(%rax)
    2114:	34 00                	xor    $0x0,%al
    2116:	00 00                	add    %al,(%rax)
    2118:	08 ef                	or     %ch,%bh
    211a:	ff                   	(bad)  
    211b:	ff 60 00             	jmpq   *0x0(%rax)
    211e:	00 00                	add    %al,(%rax)
    2120:	00 0e                	add    %cl,(%rsi)
    2122:	10 46 0e             	adc    %al,0xe(%rsi)
    2125:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2128:	0b 77 08             	or     0x8(%rdi),%esi
    212b:	80 00 3f             	addb   $0x3f,(%rax)
    212e:	1a 3b                	sbb    (%rbx),%bh
    2130:	2a 33                	sub    (%rbx),%dh
    2132:	24 22                	and    $0x22,%al
    2134:	00 00                	add    %al,(%rax)
    2136:	00 00                	add    %al,(%rax)
    2138:	14 00                	adc    $0x0,%al
    213a:	00 00                	add    %al,(%rax)
    213c:	5c                   	pop    %rsp
    213d:	00 00                	add    %al,(%rax)
    213f:	00 40 ef             	add    %al,-0x11(%rax)
    2142:	ff                   	(bad)  
    2143:	ff 17                	callq  *(%rdi)
	...
    214d:	00 00                	add    %al,(%rax)
    214f:	00 34 00             	add    %dh,(%rax,%rax,1)
    2152:	00 00                	add    %al,(%rax)
    2154:	74 00                	je     2156 <__GNU_EH_FRAME_HDR+0xb2>
    2156:	00 00                	add    %al,(%rax)
    2158:	48                   	rex.W
    2159:	f0 ff                	lock (bad) 
    215b:	ff 97 0b 00 00 00    	callq  *0xb(%rdi)
    2161:	42 0e                	rex.X (bad) 
    2163:	10 42 0e             	adc    %al,0xe(%rdx)
    2166:	18 41 0e             	sbb    %al,0xe(%rcx)
    2169:	20 47 0e             	and    %al,0xe(%rdi)
    216c:	a0 02 83 04 8e 03 8f 	movabs 0x3028f038e048302,%al
    2173:	02 03 
    2175:	85 0b                	test   %ecx,(%rbx)
    2177:	0e                   	(bad)  
    2178:	20 41 0e             	and    %al,0xe(%rcx)
    217b:	18 42 0e             	sbb    %al,0xe(%rdx)
    217e:	10 42 0e             	adc    %al,0xe(%rdx)
    2181:	08 00                	or     %al,(%rax)
    2183:	00 00                	add    %al,(%rax)
    2185:	00 00                	add    %al,(%rax)
    2187:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    218b:	00 ac 00 00 00 b0 fb 	add    %ch,-0x4500000(%rax,%rax,1)
    2192:	ff                   	(bad)  
    2193:	ff 65 00             	jmpq   *0x0(%rbp)
    2196:	00 00                	add    %al,(%rax)
    2198:	00 46 0e             	add    %al,0xe(%rsi)
    219b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    21a1:	8e 03                	mov    (%rbx),%es
    21a3:	45 0e                	rex.RB (bad) 
    21a5:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    21ab:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86302ff5 <_end+0xffffffff862fef9d>
    21b1:	06                   	(bad)  
    21b2:	48 0e                	rex.W (bad) 
    21b4:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    21ba:	6e                   	outsb  %ds:(%rsi),(%dx)
    21bb:	0e                   	(bad)  
    21bc:	38 41 0e             	cmp    %al,0xe(%rcx)
    21bf:	30 41 0e             	xor    %al,0xe(%rcx)
    21c2:	28 42 0e             	sub    %al,0xe(%rdx)
    21c5:	20 42 0e             	and    %al,0xe(%rdx)
    21c8:	18 42 0e             	sbb    %al,0xe(%rdx)
    21cb:	10 42 0e             	adc    %al,0xe(%rdx)
    21ce:	08 00                	or     %al,(%rax)
    21d0:	10 00                	adc    %al,(%rax)
    21d2:	00 00                	add    %al,(%rax)
    21d4:	f4                   	hlt    
    21d5:	00 00                	add    %al,(%rax)
    21d7:	00 d8                	add    %bl,%al
    21d9:	fb                   	sti    
    21da:	ff                   	(bad)  
    21db:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 21e1 <__GNU_EH_FRAME_HDR+0x13d>
    21e1:	00 00                	add    %al,(%rax)
	...

00000000000021e4 <__FRAME_END__>:
    21e4:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .init_array :

0000000000003dd0 <__frame_dummy_init_array_entry>:
    3dd0:	90                   	nop
    3dd1:	11 00                	adc    %eax,(%rax)
    3dd3:	00 00                	add    %al,(%rax)
    3dd5:	00 00                	add    %al,(%rax)
    3dd7:	00 80 10 00 00 00    	add    %al,0x10(%rax)
    3ddd:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .fini_array :

0000000000003de0 <__do_global_dtors_aux_fini_array_entry>:
    3de0:	40 11 00             	rex adc %eax,(%rax)
    3de3:	00 00                	add    %al,(%rax)
    3de5:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .dynamic :

0000000000003de8 <_DYNAMIC>:
    3de8:	01 00                	add    %eax,(%rax)
    3dea:	00 00                	add    %al,(%rax)
    3dec:	00 00                	add    %al,(%rax)
    3dee:	00 00                	add    %al,(%rax)
    3df0:	49 00 00             	rex.WB add %al,(%r8)
    3df3:	00 00                	add    %al,(%rax)
    3df5:	00 00                	add    %al,(%rax)
    3df7:	00 0c 00             	add    %cl,(%rax,%rax,1)
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
    3dfe:	00 00                	add    %al,(%rax)
    3e00:	00 10                	add    %dl,(%rax)
    3e02:	00 00                	add    %al,(%rax)
    3e04:	00 00                	add    %al,(%rax)
    3e06:	00 00                	add    %al,(%rax)
    3e08:	0d 00 00 00 00       	or     $0x0,%eax
    3e0d:	00 00                	add    %al,(%rax)
    3e0f:	00 b8 1d 00 00 00    	add    %bh,0x1d(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 19                	add    %bl,(%rcx)
    3e19:	00 00                	add    %al,(%rax)
    3e1b:	00 00                	add    %al,(%rax)
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 d0                	add    %dl,%al
    3e21:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e26:	00 00                	add    %al,(%rax)
    3e28:	1b 00                	sbb    (%rax),%eax
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	10 00                	adc    %al,(%rax)
    3e32:	00 00                	add    %al,(%rax)
    3e34:	00 00                	add    %al,(%rax)
    3e36:	00 00                	add    %al,(%rax)
    3e38:	1a 00                	sbb    (%rax),%al
    3e3a:	00 00                	add    %al,(%rax)
    3e3c:	00 00                	add    %al,(%rax)
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	e0 3d                	loopne 3e7f <_DYNAMIC+0x97>
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	1c 00                	sbb    $0x0,%al
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	08 00                	or     %al,(%rax)
    3e52:	00 00                	add    %al,(%rax)
    3e54:	00 00                	add    %al,(%rax)
    3e56:	00 00                	add    %al,(%rax)
    3e58:	04 00                	add    $0x0,%al
    3e5a:	00 00                	add    %al,(%rax)
    3e5c:	00 00                	add    %al,(%rax)
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	e8 02 00 00 00       	callq  3e67 <_DYNAMIC+0x7f>
    3e65:	00 00                	add    %al,(%rax)
    3e67:	00 f5                	add    %dh,%ch
    3e69:	fe                   	(bad)  
    3e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e6d:	00 00                	add    %al,(%rax)
    3e6f:	00 28                	add    %ch,(%rax)
    3e71:	03 00                	add    (%rax),%eax
    3e73:	00 00                	add    %al,(%rax)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e7d <_DYNAMIC+0x95>
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 50 04             	add    %dl,0x4(%rax)
    3e82:	00 00                	add    %al,(%rax)
    3e84:	00 00                	add    %al,(%rax)
    3e86:	00 00                	add    %al,(%rax)
    3e88:	06                   	(bad)  
    3e89:	00 00                	add    %al,(%rax)
    3e8b:	00 00                	add    %al,(%rax)
    3e8d:	00 00                	add    %al,(%rax)
    3e8f:	00 48 03             	add    %cl,0x3(%rax)
    3e92:	00 00                	add    %al,(%rax)
    3e94:	00 00                	add    %al,(%rax)
    3e96:	00 00                	add    %al,(%rax)
    3e98:	0a 00                	or     (%rax),%al
    3e9a:	00 00                	add    %al,(%rax)
    3e9c:	00 00                	add    %al,(%rax)
    3e9e:	00 00                	add    %al,(%rax)
    3ea0:	af                   	scas   %es:(%rdi),%eax
    3ea1:	00 00                	add    %al,(%rax)
    3ea3:	00 00                	add    %al,(%rax)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 0b                	add    %cl,(%rbx)
    3ea9:	00 00                	add    %al,(%rax)
    3eab:	00 00                	add    %al,(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 18                	add    %bl,(%rax)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ebd <_DYNAMIC+0xd5>
	...
    3ec5:	00 00                	add    %al,(%rax)
    3ec7:	00 03                	add    %al,(%rbx)
	...
    3ed1:	40 00 00             	add    %al,(%rax)
    3ed4:	00 00                	add    %al,(%rax)
    3ed6:	00 00                	add    %al,(%rax)
    3ed8:	02 00                	add    (%rax),%al
    3eda:	00 00                	add    %al,(%rax)
    3edc:	00 00                	add    %al,(%rax)
    3ede:	00 00                	add    %al,(%rax)
    3ee0:	78 00                	js     3ee2 <_DYNAMIC+0xfa>
    3ee2:	00 00                	add    %al,(%rax)
    3ee4:	00 00                	add    %al,(%rax)
    3ee6:	00 00                	add    %al,(%rax)
    3ee8:	14 00                	adc    $0x0,%al
    3eea:	00 00                	add    %al,(%rax)
    3eec:	00 00                	add    %al,(%rax)
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	07                   	(bad)  
    3ef1:	00 00                	add    %al,(%rax)
    3ef3:	00 00                	add    %al,(%rax)
    3ef5:	00 00                	add    %al,(%rax)
    3ef7:	00 17                	add    %dl,(%rdi)
    3ef9:	00 00                	add    %al,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 20                	add    %ah,(%rax)
    3f01:	06                   	(bad)  
    3f02:	00 00                	add    %al,(%rax)
    3f04:	00 00                	add    %al,(%rax)
    3f06:	00 00                	add    %al,(%rax)
    3f08:	07                   	(bad)  
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 48 05             	add    %cl,0x5(%rax)
    3f12:	00 00                	add    %al,(%rax)
    3f14:	00 00                	add    %al,(%rax)
    3f16:	00 00                	add    %al,(%rax)
    3f18:	08 00                	or     %al,(%rax)
    3f1a:	00 00                	add    %al,(%rax)
    3f1c:	00 00                	add    %al,(%rax)
    3f1e:	00 00                	add    %al,(%rax)
    3f20:	d8 00                	fadds  (%rax)
    3f22:	00 00                	add    %al,(%rax)
    3f24:	00 00                	add    %al,(%rax)
    3f26:	00 00                	add    %al,(%rax)
    3f28:	09 00                	or     %eax,(%rax)
    3f2a:	00 00                	add    %al,(%rax)
    3f2c:	00 00                	add    %al,(%rax)
    3f2e:	00 00                	add    %al,(%rax)
    3f30:	18 00                	sbb    %al,(%rax)
    3f32:	00 00                	add    %al,(%rax)
    3f34:	00 00                	add    %al,(%rax)
    3f36:	00 00                	add    %al,(%rax)
    3f38:	fb                   	sti    
    3f39:	ff                   	(bad)  
    3f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f3d:	00 00                	add    %al,(%rax)
    3f3f:	00 00                	add    %al,(%rax)
    3f41:	00 00                	add    %al,(%rax)
    3f43:	08 00                	or     %al,(%rax)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 fe                	add    %bh,%dh
    3f49:	ff                   	(bad)  
    3f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 18                	add    %bl,(%rax)
    3f51:	05 00 00 00 00       	add    $0x0,%eax
    3f56:	00 00                	add    %al,(%rax)
    3f58:	ff                   	(bad)  
    3f59:	ff                   	(bad)  
    3f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 01                	add    %al,(%rcx)
    3f61:	00 00                	add    %al,(%rax)
    3f63:	00 00                	add    %al,(%rax)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 f0                	add    %dh,%al
    3f69:	ff                   	(bad)  
    3f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f6d:	00 00                	add    %al,(%rax)
    3f6f:	00 00                	add    %al,(%rax)
    3f71:	05 00 00 00 00       	add    $0x0,%eax
    3f76:	00 00                	add    %al,(%rax)
    3f78:	f9                   	stc    
    3f79:	ff                   	(bad)  
    3f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f7d:	00 00                	add    %al,(%rax)
    3f7f:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Déassemblage de la section .got :

0000000000003fd8 <.got>:
	...

Déassemblage de la section .got.plt :

0000000000004000 <_GLOBAL_OFFSET_TABLE_>:
    4000:	e8 3d 00 00 00       	callq  4042 <__data_start+0x2>
	...
    4015:	00 00                	add    %al,(%rax)
    4017:	00 36                	add    %dh,(%rsi)
    4019:	10 00                	adc    %al,(%rax)
    401b:	00 00                	add    %al,(%rax)
    401d:	00 00                	add    %al,(%rax)
    401f:	00 46 10             	add    %al,0x10(%rsi)
    4022:	00 00                	add    %al,(%rax)
    4024:	00 00                	add    %al,(%rax)
    4026:	00 00                	add    %al,(%rax)
    4028:	56                   	push   %rsi
    4029:	10 00                	adc    %al,(%rax)
    402b:	00 00                	add    %al,(%rax)
    402d:	00 00                	add    %al,(%rax)
    402f:	00 66 10             	add    %ah,0x10(%rsi)
    4032:	00 00                	add    %al,(%rax)
    4034:	00 00                	add    %al,(%rax)
    4036:	00 00                	add    %al,(%rax)
    4038:	76 10                	jbe    404a <__dso_handle+0x2>
    403a:	00 00                	add    %al,(%rax)
    403c:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .data :

0000000000004040 <__data_start>:
	...

0000000000004048 <__dso_handle>:
    4048:	48                   	rex.W
    4049:	40 00 00             	add    %al,(%rax)
    404c:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .bss :

0000000000004050 <completed.0>:
	...

Déassemblage de la section .comment :

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 30                	xor    %esi,(%rax)
   d:	2e 32 2e             	xor    %cs:(%rsi),%ch
  10:	30 00                	xor    %al,(%rax)
  12:	63 6c 61 6e          	movsxd 0x6e(%rcx,%riz,2),%ebp
  16:	67 20 76 65          	and    %dh,0x65(%esi)
  1a:	72 73                	jb     8f <__abi_tag-0x235>
  1c:	69 6f 6e 20 31 31 2e 	imul   $0x2e313120,0x6e(%rdi),%ebp
  23:	30 2e                	xor    %ch,(%rsi)
  25:	30 00                	xor    %al,(%rax)

Déassemblage de la section .debug_aranges :

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	80 10 00             	adcb   $0x0,(%rax)
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 17                	add    %dl,(%rdi)
	...

Déassemblage de la section .debug_info :

0000000000000000 <.debug_info>:
   0:	60                   	(bad)  
   1:	00 00                	add    %al,(%rax)
   3:	00 04 00             	add    %al,(%rax,%rax,1)
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	7c 00                	jl     e <__abi_tag-0x2b6>
   e:	00 00                	add    %al,(%rax)
  10:	0c 14                	or     $0x14,%al
  12:	00 00                	add    %al,(%rax)
  14:	00 48 00             	add    %cl,0x0(%rax)
	...
  27:	00 00                	add    %al,(%rax)
  29:	02 06                	add    (%rsi),%al
  2b:	00 00                	add    %al,(%rax)
  2d:	00 01                	add    %al,(%rcx)
  2f:	53                   	push   %rbx
  30:	01 80 10 00 00 00    	add    %eax,0x10(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	00 17                	add    %dl,(%rdi)
  3a:	00 00                	add    %al,(%rax)
  3c:	00 00                	add    %al,(%rax)
  3e:	00 00                	add    %al,(%rax)
  40:	00 01                	add    %al,(%rcx)
  42:	9c                   	pushfq 
  43:	5c                   	pop    %rsp
  44:	00 00                	add    %al,(%rax)
  46:	00 03                	add    %al,(%rbx)
  48:	00 00                	add    %al,(%rax)
  4a:	00 00                	add    %al,(%rax)
  4c:	01 5e 10             	add    %ebx,0x10(%rsi)
  4f:	5c                   	pop    %rsp
  50:	00 00                	add    %al,(%rax)
  52:	00 06                	add    %al,(%rsi)
	...
  5c:	04 04                	add    $0x4,%al
  5e:	07                   	(bad)  
  5f:	8a 01                	mov    (%rcx),%al
  61:	00 00                	add    %al,(%rax)
  63:	00 32                	add    %dh,(%rdx)
  65:	06                   	(bad)  
  66:	00 00                	add    %al,(%rax)
  68:	04 00                	add    $0x0,%al
  6a:	4d 00 00             	rex.WRB add %r8b,(%r8)
  6d:	00 08                	add    %cl,(%rax)
  6f:	01 36                	add    %esi,(%rsi)
  71:	01 00                	add    %eax,(%rax)
  73:	00 0c 00             	add    %cl,(%rax,%rax,1)
  76:	4b 01 00             	rex.WXB add %rax,(%r8)
  79:	00 7d 00             	add    %bh,0x0(%rbp)
  7c:	00 00                	add    %al,(%rax)
  7e:	55                   	push   %rbp
  7f:	01 00                	add    %eax,(%rax)
  81:	00 a0 11 00 00 00    	add    %ah,0x11(%rax)
  87:	00 00                	add    %al,(%rax)
  89:	00 97 0b 00 00 02    	add    %dl,0x200000b(%rdi)
  8f:	75 01                	jne    92 <__abi_tag-0x232>
  91:	00 00                	add    %al,(%rax)
  93:	01 08                	add    %ecx,(%rax)
  95:	4d 00 00             	rex.WRB add %r8b,(%r8)
  98:	00 01                	add    %al,(%rcx)
  9a:	03 97 01 00 00 01    	add    0x1000001(%rdi),%edx
  a0:	08 54 00 00          	or     %dl,0x0(%rax,%rax,1)
  a4:	00 03                	add    %al,(%rbx)
  a6:	9c                   	pushfq 
  a7:	01 00                	add    %eax,(%rax)
  a9:	00 01                	add    %al,(%rcx)
  ab:	08 5b 00             	or     %bl,0x0(%rbx)
  ae:	00 00                	add    %al,(%rax)
  b0:	00 04 80             	add    %al,(%rax,%rax,4)
  b3:	01 00                	add    %eax,(%rax)
  b5:	00 07                	add    %al,(%rdi)
  b7:	08 04 93             	or     %al,(%rbx,%rdx,4)
  ba:	01 00                	add    %eax,(%rax)
  bc:	00 05 04 05 60 00    	add    %al,0x600504(%rip)        # 6005c6 <_end+0x5fc56e>
  c2:	00 00                	add    %al,(%rax)
  c4:	05 65 00 00 00       	add    $0x65,%eax
  c9:	04 a1                	add    $0xa1,%al
  cb:	01 00                	add    %eax,(%rax)
  cd:	00 06                	add    %al,(%rsi)
  cf:	01 06                	add    %eax,(%rsi)
  d1:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  d2:	01 00                	add    %eax,(%rax)
  d4:	00 01                	add    %al,(%rcx)
  d6:	11 01                	adc    %eax,(%rcx)
  d8:	03 ab 01 00 00 01    	add    0x1000001(%rbx),%ebp
  de:	11 a3 00 00 00 03    	adc    %esp,0x3000000(%rbx)
  e4:	b4 01                	mov    $0x1,%ah
  e6:	00 00                	add    %al,(%rax)
  e8:	01 11                	add    %edx,(%rcx)
  ea:	a3 00 00 00 03 2d 02 	movabs %eax,0x22d03000000
  f1:	00 00 
  f3:	01 11                	add    %edx,(%rcx)
  f5:	4d 00 00             	rex.WRB add %r8b,(%r8)
  f8:	00 07                	add    %al,(%rdi)
  fa:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 100:	13 4d 00             	adc    0x0(%rbp),%ecx
 103:	00 00                	add    %al,(%rax)
 105:	00 00                	add    %al,(%rax)
 107:	09 a8 00 00 00 05    	or     %ebp,0x5000000(%rax)
 10d:	ad                   	lods   %ds:(%rsi),%eax
 10e:	00 00                	add    %al,(%rax)
 110:	00 04 ad 01 00 00 04 	add    %al,0x4000001(,%rbp,4)
 117:	08 02                	or     %al,(%rdx)
 119:	b8 01 00 00 01       	mov    $0x1000001,%eax
 11e:	1b ad 00 00 00 01    	sbb    0x1000000(%rbp),%ebp
 124:	03 ab 01 00 00 01    	add    0x1000001(%rbx),%ebp
 12a:	1b a3 00 00 00 03    	sbb    0x3000000(%rbx),%esp
 130:	b4 01                	mov    $0x1,%ah
 132:	00 00                	add    %al,(%rax)
 134:	01 1b                	add    %ebx,(%rbx)
 136:	a3 00 00 00 03 2d 02 	movabs %eax,0x22d03000000
 13d:	00 00 
 13f:	01 1b                	add    %ebx,(%rbx)
 141:	4d 00 00             	rex.WRB add %r8b,(%r8)
 144:	00 08                	add    %cl,(%rax)
 146:	73 01                	jae    149 <__abi_tag-0x17b>
 148:	00 00                	add    %al,(%rax)
 14a:	01 1d ad 00 00 00    	add    %ebx,0xad(%rip)        # 1fd <__abi_tag-0xc7>
 150:	07                   	(bad)  
 151:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 157:	1f                   	(bad)  
 158:	4d 00 00             	rex.WRB add %r8b,(%r8)
 15b:	00 00                	add    %al,(%rax)
 15d:	00 02                	add    %al,(%rdx)
 15f:	c0 01 00             	rolb   $0x0,(%rcx)
 162:	00 01                	add    %al,(%rcx)
 164:	26 ad                	lods   %es:(%rsi),%eax
 166:	00 00                	add    %al,(%rax)
 168:	00 01                	add    %al,(%rcx)
 16a:	03 ab 01 00 00 01    	add    0x1000001(%rbx),%ebp
 170:	26 a3 00 00 00 03 b4 	movabs %eax,%es:0x1b403000000
 177:	01 00 00 
 17a:	01 26                	add    %esp,(%rsi)
 17c:	a3 00 00 00 03 2d 02 	movabs %eax,0x22d03000000
 183:	00 00 
 185:	01 26                	add    %esp,(%rsi)
 187:	4d 00 00             	rex.WRB add %r8b,(%r8)
 18a:	00 08                	add    %cl,(%rax)
 18c:	73 01                	jae    18f <__abi_tag-0x135>
 18e:	00 00                	add    %al,(%rax)
 190:	01 28                	add    %ebp,(%rax)
 192:	5a                   	pop    %rdx
 193:	01 00                	add    %eax,(%rax)
 195:	00 07                	add    %al,(%rdi)
 197:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 19d:	39 4d 00             	cmp    %ecx,0x0(%rbp)
 1a0:	00 00                	add    %al,(%rax)
 1a2:	00 07                	add    %al,(%rdi)
 1a4:	08 df                	or     %bl,%bh
 1a6:	01 00                	add    %eax,(%rax)
 1a8:	00 01                	add    %al,(%rcx)
 1aa:	2d 4d 00 00 00       	sub    $0x4d,%eax
 1af:	07                   	(bad)  
 1b0:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 1b6:	2f                   	(bad)  
 1b7:	4d 00 00             	rex.WRB add %r8b,(%r8)
 1ba:	00 00                	add    %al,(%rax)
 1bc:	00 00                	add    %al,(%rax)
 1be:	0a ad 00 00 00 0b    	or     0xb000000(%rbp),%ch
 1c4:	66 01 00             	add    %ax,(%rax)
 1c7:	00 02                	add    %al,(%rdx)
 1c9:	00 0c cb             	add    %cl,(%rbx,%rcx,8)
 1cc:	01 00                	add    %eax,(%rax)
 1ce:	00 08                	add    %cl,(%rax)
 1d0:	07                   	(bad)  
 1d1:	02 e3                	add    %bl,%ah
 1d3:	01 00                	add    %eax,(%rax)
 1d5:	00 01                	add    %al,(%rcx)
 1d7:	44 ad                	rex.R lods %ds:(%rsi),%eax
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 01                	add    %al,(%rcx)
 1dd:	03 ab 01 00 00 01    	add    0x1000001(%rbx),%ebp
 1e3:	44 a3 00 00 00 03 b4 	rex.R movabs %eax,0x1b403000000
 1ea:	01 00 00 
 1ed:	01 44 a3 00          	add    %eax,0x0(%rbx,%riz,4)
 1f1:	00 00                	add    %al,(%rax)
 1f3:	03 2d 02 00 00 01    	add    0x1000002(%rip),%ebp        # 10001fb <_end+0xffc1a3>
 1f9:	44                   	rex.R
 1fa:	4d 00 00             	rex.WRB add %r8b,(%r8)
 1fd:	00 08                	add    %cl,(%rax)
 1ff:	ee                   	out    %al,(%dx)
 200:	01 00                	add    %eax,(%rax)
 202:	00 01                	add    %al,(%rcx)
 204:	47                   	rex.RXB
 205:	4d 00 00             	rex.WRB add %r8b,(%r8)
 208:	00 08                	add    %cl,(%rax)
 20a:	73 01                	jae    20d <__abi_tag-0xb7>
 20c:	00 00                	add    %al,(%rax)
 20e:	01 46 d8             	add    %eax,-0x28(%rsi)
 211:	01 00                	add    %eax,(%rax)
 213:	00 07                	add    %al,(%rdi)
 215:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 21b:	49                   	rex.WB
 21c:	4d 00 00             	rex.WRB add %r8b,(%r8)
 21f:	00 00                	add    %al,(%rax)
 221:	07                   	(bad)  
 222:	08 f3                	or     %dh,%bl
 224:	01 00                	add    %eax,(%rax)
 226:	00 01                	add    %al,(%rcx)
 228:	53                   	push   %rbx
 229:	4d 00 00             	rex.WRB add %r8b,(%r8)
 22c:	00 07                	add    %al,(%rdi)
 22e:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 234:	55                   	push   %rbp
 235:	4d 00 00             	rex.WRB add %r8b,(%r8)
 238:	00 00                	add    %al,(%rax)
 23a:	00 00                	add    %al,(%rax)
 23c:	0a ad 00 00 00 0b    	or     0xb000000(%rbp),%ch
 242:	66 01 00             	add    %ax,(%rax)
 245:	00 04 00             	add    %al,(%rax,%rax,1)
 248:	02 f7                	add    %bh,%dh
 24a:	01 00                	add    %eax,(%rax)
 24c:	00 01                	add    %al,(%rcx)
 24e:	5d                   	pop    %rbp
 24f:	ad                   	lods   %ds:(%rsi),%eax
 250:	00 00                	add    %al,(%rax)
 252:	00 01                	add    %al,(%rcx)
 254:	03 ab 01 00 00 01    	add    0x1000001(%rbx),%ebp
 25a:	5d                   	pop    %rbp
 25b:	a3 00 00 00 03 b4 01 	movabs %eax,0x1b403000000
 262:	00 00 
 264:	01 5d a3             	add    %ebx,-0x5d(%rbp)
 267:	00 00                	add    %al,(%rax)
 269:	00 03                	add    %al,(%rbx)
 26b:	2d 02 00 00 01       	sub    $0x1000002,%eax
 270:	5d                   	pop    %rbp
 271:	4d 00 00             	rex.WRB add %r8b,(%r8)
 274:	00 08                	add    %cl,(%rax)
 276:	73 01                	jae    279 <__abi_tag-0x4b>
 278:	00 00                	add    %al,(%rax)
 27a:	01 5f 4f             	add    %ebx,0x4f(%rdi)
 27d:	02 00                	add    (%rax),%al
 27f:	00 08                	add    %cl,(%rax)
 281:	ee                   	out    %al,(%dx)
 282:	01 00                	add    %eax,(%rax)
 284:	00 01                	add    %al,(%rcx)
 286:	60                   	(bad)  
 287:	4d 00 00             	rex.WRB add %r8b,(%r8)
 28a:	00 07                	add    %al,(%rdi)
 28c:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 292:	62                   	(bad)  
 293:	4d 00 00             	rex.WRB add %r8b,(%r8)
 296:	00 00                	add    %al,(%rax)
 298:	07                   	(bad)  
 299:	08 02                	or     %al,(%rdx)
 29b:	02 00                	add    (%rax),%al
 29d:	00 01                	add    %al,(%rcx)
 29f:	70 4d                	jo     2ee <__abi_tag+0x2a>
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 07                	add    %al,(%rdi)
 2a5:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 2ab:	72 4d                	jb     2fa <__abi_tag+0x36>
 2ad:	00 00                	add    %al,(%rax)
 2af:	00 00                	add    %al,(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	0a ad 00 00 00 0b    	or     0xb000000(%rbp),%ch
 2b9:	66 01 00             	add    %ax,(%rax)
 2bc:	00 08                	add    %cl,(%rax)
 2be:	00 02                	add    %al,(%rdx)
 2c0:	06                   	(bad)  
 2c1:	02 00                	add    (%rax),%al
 2c3:	00 01                	add    %al,(%rcx)
 2c5:	7a ad                	jp     274 <__abi_tag-0x50>
 2c7:	00 00                	add    %al,(%rax)
 2c9:	00 01                	add    %al,(%rcx)
 2cb:	03 ab 01 00 00 01    	add    0x1000001(%rbx),%ebp
 2d1:	7a a3                	jp     276 <__abi_tag-0x4e>
 2d3:	00 00                	add    %al,(%rax)
 2d5:	00 03                	add    %al,(%rbx)
 2d7:	b4 01                	mov    $0x1,%ah
 2d9:	00 00                	add    %al,(%rax)
 2db:	01 7a a3             	add    %edi,-0x5d(%rdx)
 2de:	00 00                	add    %al,(%rax)
 2e0:	00 03                	add    %al,(%rbx)
 2e2:	2d 02 00 00 01       	sub    $0x1000002,%eax
 2e7:	7a 4d                	jp     336 <__abi_tag+0x72>
 2e9:	00 00                	add    %al,(%rax)
 2eb:	00 08                	add    %cl,(%rax)
 2ed:	73 01                	jae    2f0 <__abi_tag+0x2c>
 2ef:	00 00                	add    %al,(%rax)
 2f1:	01 7c c6 02          	add    %edi,0x2(%rsi,%rax,8)
 2f5:	00 00                	add    %al,(%rax)
 2f7:	08 ee                	or     %ch,%dh
 2f9:	01 00                	add    %eax,(%rax)
 2fb:	00 01                	add    %al,(%rcx)
 2fd:	7d 4d                	jge    34c <__abi_tag+0x88>
 2ff:	00 00                	add    %al,(%rax)
 301:	00 07                	add    %al,(%rdi)
 303:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 309:	7f 4d                	jg     358 <__abi_tag+0x94>
 30b:	00 00                	add    %al,(%rax)
 30d:	00 00                	add    %al,(%rax)
 30f:	07                   	(bad)  
 310:	08 12                	or     %dl,(%rdx)
 312:	02 00                	add    (%rax),%al
 314:	00 01                	add    %al,(%rcx)
 316:	95                   	xchg   %eax,%ebp
 317:	4d 00 00             	rex.WRB add %r8b,(%r8)
 31a:	00 07                	add    %al,(%rdi)
 31c:	08 b6 01 00 00 01    	or     %dh,0x1000001(%rsi)
 322:	97                   	xchg   %eax,%edi
 323:	4d 00 00             	rex.WRB add %r8b,(%r8)
 326:	00 00                	add    %al,(%rax)
 328:	00 00                	add    %al,(%rax)
 32a:	0a ad 00 00 00 0b    	or     0xb000000(%rbp),%ch
 330:	66 01 00             	add    %ax,(%rax)
 333:	00 10                	add    %dl,(%rax)
 335:	00 0d a0 11 00 00    	add    %cl,0x11a0(%rip)        # 14db <main+0x33b>
 33b:	00 00                	add    %al,(%rax)
 33d:	00 00                	add    %al,(%rax)
 33f:	97                   	xchg   %eax,%edi
 340:	0b 00                	or     (%rax),%eax
 342:	00 01                	add    %al,(%rcx)
 344:	57                   	push   %rdi
 345:	2a 02                	sub    (%rdx),%al
 347:	00 00                	add    %al,(%rax)
 349:	01 9e 54 00 00 00    	add    %ebx,0x54(%rsi)
 34f:	0e                   	(bad)  
 350:	59                   	pop    %rcx
 351:	00 00                	add    %al,(%rax)
 353:	00 97 01 00 00 01    	add    %dl,0x1000001(%rdi)
 359:	9e                   	sahf   
 35a:	54                   	push   %rsp
 35b:	00 00                	add    %al,(%rax)
 35d:	00 0e                	add    %cl,(%rsi)
 35f:	bb 00 00 00 9c       	mov    $0x9c000000,%ebx
 364:	01 00                	add    %eax,(%rax)
 366:	00 01                	add    %al,(%rcx)
 368:	9e                   	sahf   
 369:	5b                   	pop    %rbx
 36a:	00 00                	add    %al,(%rax)
 36c:	00 0f                	add    %cl,(%rdi)
 36e:	89 01                	mov    %eax,(%rcx)
 370:	00 00                	add    %al,(%rax)
 372:	2d 02 00 00 01       	sub    $0x1000002,%eax
 377:	a1 4d 00 00 00 0f bf 	movabs 0x1bf0f0000004d,%eax
 37e:	01 00 
 380:	00 ab 01 00 00 01    	add    %ch,0x1000001(%rbx)
 386:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 387:	a8 00                	test   $0x0,%al
 389:	00 00                	add    %al,(%rax)
 38b:	0f 4f 02             	cmovg  (%rdx),%eax
 38e:	00 00                	add    %al,(%rax)
 390:	b4 01                	mov    $0x1,%ah
 392:	00 00                	add    %al,(%rax)
 394:	01 a5 a8 00 00 00    	add    %esp,0xa8(%rbp)
 39a:	0f 50                	(bad)  
 39c:	04 00                	add    $0x0,%al
 39e:	00 2f                	add    %ch,(%rdi)
 3a0:	02 00                	add    (%rax),%al
 3a2:	00 01                	add    %al,(%rcx)
 3a4:	ac                   	lods   %ds:(%rsi),%al
 3a5:	ad                   	lods   %ds:(%rsi),%eax
 3a6:	00 00                	add    %al,(%rax)
 3a8:	00 0f                	add    %cl,(%rdi)
 3aa:	e5 04                	in     $0x4,%eax
 3ac:	00 00                	add    %al,(%rax)
 3ae:	36 02 00             	add    %ss:(%rax),%al
 3b1:	00 01                	add    %al,(%rcx)
 3b3:	ad                   	lods   %ds:(%rsi),%eax
 3b4:	ad                   	lods   %ds:(%rsi),%eax
 3b5:	00 00                	add    %al,(%rax)
 3b7:	00 08                	add    %cl,(%rax)
 3b9:	3d 02 00 00 01       	cmp    $0x1000002,%eax
 3be:	ae                   	scas   %es:(%rdi),%al
 3bf:	ad                   	lods   %ds:(%rsi),%eax
 3c0:	00 00                	add    %al,(%rax)
 3c2:	00 0f                	add    %cl,(%rdi)
 3c4:	d5                   	(bad)  
 3c5:	07                   	(bad)  
 3c6:	00 00                	add    %al,(%rax)
 3c8:	44 02 00             	add    (%rax),%r8b
 3cb:	00 01                	add    %al,(%rcx)
 3cd:	ab                   	stos   %eax,%es:(%rdi)
 3ce:	ad                   	lods   %ds:(%rsi),%eax
 3cf:	00 00                	add    %al,(%rax)
 3d1:	00 08                	add    %cl,(%rax)
 3d3:	48 02 00             	rex.W add (%rax),%al
 3d6:	00 01                	add    %al,(%rcx)
 3d8:	af                   	scas   %es:(%rdi),%eax
 3d9:	ad                   	lods   %ds:(%rsi),%eax
 3da:	00 00                	add    %al,(%rax)
 3dc:	00 10                	add    %dl,(%rax)
 3de:	2a 00                	sub    (%rax),%al
 3e0:	00 00                	add    %al,(%rax)
 3e2:	20 00                	and    %al,(%rax)
 3e4:	00 00                	add    %al,(%rax)
 3e6:	01 a1 1a 11 1d 01    	add    %esp,0x11d111a(%rcx)
 3ec:	00 00                	add    %al,(%rax)
 3ee:	36 00 00             	add    %al,%ss:(%rax)
 3f1:	00 11                	add    %dl,(%rcx)
 3f3:	53                   	push   %rbx
 3f4:	01 00                	add    %eax,(%rax)
 3f6:	00 41 00             	add    %al,0x0(%rcx)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 10                	add    %dl,(%rax)
 3fd:	6c                   	insb   (%dx),%es:(%rdi)
 3fe:	00 00                	add    %al,(%rax)
 400:	00 50 00             	add    %dl,0x0(%rax)
 403:	00 00                	add    %al,(%rax)
 405:	01 a8 03 11 85 02    	add    %ebp,0x2851103(%rax)
 40b:	00 00                	add    %al,(%rax)
 40d:	74 00                	je     40f <__abi_tag+0x14b>
 40f:	00 00                	add    %al,(%rax)
 411:	11 2c 02             	adc    %ebp,(%rdx,%rax,1)
 414:	00 00                	add    %al,(%rax)
 416:	7f 00                	jg     418 <__abi_tag+0x154>
 418:	00 00                	add    %al,(%rax)
 41a:	11 a8 02 00 00 8a    	adc    %ebp,-0x75fffffe(%rax)
 420:	00 00                	add    %al,(%rax)
 422:	00 12                	add    %dl,(%rdx)
 424:	90                   	nop
 425:	00 00                	add    %al,(%rax)
 427:	00 13                	add    %dl,(%rbx)
 429:	f5                   	cmc    
 42a:	01 00                	add    %eax,(%rax)
 42c:	00 96 00 00 00 00    	add    %dl,0x0(%rsi)
 432:	00 10                	add    %dl,(%rax)
 434:	b4 00                	mov    $0x0,%ah
 436:	00 00                	add    %al,(%rax)
 438:	d0 00                	rolb   (%rax)
 43a:	00 00                	add    %al,(%rax)
 43c:	01 ab 10 13 b2 07    	add    %ebp,0x7b21310(%rbx)
 442:	00 00                	add    %al,(%rax)
 444:	e1 00                	loope  446 <__abi_tag+0x182>
 446:	00 00                	add    %al,(%rax)
 448:	12 00                	adc    (%rax),%al
 44a:	01 00                	add    %eax,(%rax)
 44c:	00 13                	add    %dl,(%rbx)
 44e:	8f 07                	popq   (%rdi)
 450:	00 00                	add    %al,(%rax)
 452:	ed                   	in     (%dx),%eax
 453:	00 00                	add    %al,(%rax)
 455:	00 00                	add    %al,(%rax)
 457:	00 10                	add    %dl,(%rax)
 459:	fa                   	cli    
 45a:	00 00                	add    %al,(%rax)
 45c:	00 30                	add    %dh,(%rax)
 45e:	01 00                	add    %eax,(%rax)
 460:	00 01                	add    %al,(%rcx)
 462:	ac                   	lods   %ds:(%rsi),%al
 463:	13 11                	adc    (%rcx),%edx
 465:	0c 08                	or     $0x8,%al
 467:	00 00                	add    %al,(%rax)
 469:	06                   	(bad)  
 46a:	01 00                	add    %eax,(%rax)
 46c:	00 11                	add    %dl,(%rcx)
 46e:	2f                   	(bad)  
 46f:	08 00                	or     %al,(%rax)
 471:	00 11                	add    %dl,(%rcx)
 473:	01 00                	add    %eax,(%rax)
 475:	00 11                	add    %dl,(%rcx)
 477:	52                   	push   %rdx
 478:	08 00                	or     %al,(%rax)
 47a:	00 1c 01             	add    %bl,(%rcx,%rax,1)
 47d:	00 00                	add    %al,(%rax)
 47f:	13 cb                	adc    %ebx,%ecx
 481:	02 00                	add    (%rax),%al
 483:	00 27                	add    %ah,(%rdi)
 485:	01 00                	add    %eax,(%rax)
 487:	00 14 14             	add    %dl,(%rsp,%rdx,1)
 48a:	1b 00                	sbb    (%rax),%eax
 48c:	00 00                	add    %al,(%rax)
 48e:	00 00                	add    %al,(%rax)
 490:	00 29                	add    %ch,(%rcx)
 492:	00 00                	add    %al,(%rax)
 494:	00 13                	add    %dl,(%rbx)
 496:	75 08                	jne    4a0 <__abi_tag+0x1dc>
 498:	00 00                	add    %al,(%rax)
 49a:	33 01                	xor    (%rcx),%eax
 49c:	00 00                	add    %al,(%rax)
 49e:	00 14 3d 1b 00 00 00 	add    %dl,0x1b(,%rdi,1)
 4a5:	00 00                	add    %al,(%rax)
 4a7:	00 52 00             	add    %dl,0x0(%rdx)
 4aa:	00 00                	add    %al,(%rax)
 4ac:	13 cf                	adc    %edi,%ecx
 4ae:	08 00                	or     %al,(%rax)
 4b0:	00 40 01             	add    %al,0x1(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	14 3d                	adc    $0x3d,%al
 4b7:	1b 00                	sbb    (%rax),%eax
 4b9:	00 00                	add    %al,(%rax)
 4bb:	00 00                	add    %al,(%rax)
 4bd:	00 2b                	add    %ch,(%rbx)
 4bf:	00 00                	add    %al,(%rax)
 4c1:	00 13                	add    %dl,(%rbx)
 4c3:	98                   	cwtl   
 4c4:	08 00                	or     %al,(%rax)
 4c6:	00 4c 01 00          	add    %cl,0x0(%rcx,%rax,1)
 4ca:	00 00                	add    %al,(%rax)
 4cc:	00 00                	add    %al,(%rax)
 4ce:	10 6d 01             	adc    %ch,0x1(%rbp)
 4d1:	00 00                	add    %al,(%rax)
 4d3:	60                   	(bad)  
 4d4:	01 00                	add    %eax,(%rax)
 4d6:	00 01                	add    %al,(%rcx)
 4d8:	ad                   	lods   %ds:(%rsi),%eax
 4d9:	13 11                	adc    (%rcx),%edx
 4db:	1a 04 00             	sbb    (%rax,%rax,1),%al
 4de:	00 79 01             	add    %bh,0x1(%rcx)
 4e1:	00 00                	add    %al,(%rax)
 4e3:	11 e4                	adc    %esp,%esp
 4e5:	03 00                	add    (%rax),%eax
 4e7:	00 84 01 00 00 11 ae 	add    %al,-0x51ef0000(%rcx,%rax,1)
 4ee:	03 00                	add    (%rax),%eax
 4f0:	00 8f 01 00 00 15    	add    %cl,0x15000001(%rdi)
 4f6:	9a                   	(bad)  
 4f7:	01 00                	add    %eax,(%rax)
 4f9:	00 13                	add    %dl,(%rbx)
 4fb:	5a                   	pop    %rdx
 4fc:	03 00                	add    (%rax),%eax
 4fe:	00 a5 01 00 00 12    	add    %ah,0x12000001(%rbp)
 504:	a0 01 00 00 13 0f 03 	movabs 0x30f13000001,%al
 50b:	00 00 
 50d:	b1 01                	mov    $0x1,%cl
 50f:	00 00                	add    %al,(%rax)
 511:	00 14 04             	add    %dl,(%rsp,%rax,1)
 514:	16                   	(bad)  
 515:	00 00                	add    %al,(%rax)
 517:	00 00                	add    %al,(%rax)
 519:	00 00                	add    %al,(%rax)
 51b:	52                   	push   %rdx
 51c:	00 00                	add    %al,(%rax)
 51e:	00 13                	add    %dl,(%rbx)
 520:	88 04 00             	mov    %al,(%rax,%rax,1)
 523:	00 be 01 00 00 14    	add    %bh,0x14000001(%rsi)
 529:	04 16                	add    $0x16,%al
 52b:	00 00                	add    %al,(%rax)
 52d:	00 00                	add    %al,(%rax)
 52f:	00 00                	add    %al,(%rax)
 531:	52                   	push   %rdx
 532:	00 00                	add    %al,(%rax)
 534:	00 13                	add    %dl,(%rbx)
 536:	ad                   	lods   %ds:(%rsi),%eax
 537:	04 00                	add    $0x0,%al
 539:	00 ca                	add    %cl,%dl
 53b:	01 00                	add    %eax,(%rax)
 53d:	00 00                	add    %al,(%rax)
 53f:	00 00                	add    %al,(%rax)
 541:	10 e4                	adc    %ah,%ah
 543:	01 00                	add    %eax,(%rax)
 545:	00 d0                	add    %dl,%al
 547:	01 00                	add    %eax,(%rax)
 549:	00 01                	add    %al,(%rcx)
 54b:	ae                   	scas   %es:(%rdi),%al
 54c:	13 11                	adc    (%rcx),%edx
 54e:	0b 06                	or     (%rsi),%eax
 550:	00 00                	add    %al,(%rax)
 552:	f0 01 00             	lock add %eax,(%rax)
 555:	00 11                	add    %dl,(%rcx)
 557:	e8 05 00 00 fb       	callq  fffffffffb000561 <_end+0xfffffffffaffc509>
 55c:	01 00                	add    %eax,(%rax)
 55e:	00 11                	add    %dl,(%rcx)
 560:	c5 05 00             	(bad)
 563:	00 06                	add    %al,(%rsi)
 565:	02 00                	add    (%rax),%al
 567:	00 13                	add    %dl,(%rbx)
 569:	3f                   	(bad)  
 56a:	05 00 00 11 02       	add    $0x2110000,%eax
 56f:	00 00                	add    %al,(%rax)
 571:	15 1c 02 00 00       	adc    $0x21c,%eax
 576:	14 6f                	adc    $0x6f,%al
 578:	16                   	(bad)  
 579:	00 00                	add    %al,(%rax)
 57b:	00 00                	add    %al,(%rax)
 57d:	00 00                	add    %al,(%rax)
 57f:	69 00 00 00 13 1c    	imul   $0x1c130000,(%rax),%eax
 585:	05 00 00 28 02       	add    $0x2280000,%eax
 58a:	00 00                	add    %al,(%rax)
 58c:	00 14 ee             	add    %dl,(%rsi,%rbp,8)
 58f:	16                   	(bad)  
 590:	00 00                	add    %al,(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	84 00                	test   %al,(%rax)
 598:	00 00                	add    %al,(%rax)
 59a:	13 2e                	adc    (%rsi),%ebp
 59c:	06                   	(bad)  
 59d:	00 00                	add    %al,(%rax)
 59f:	35 02 00 00 14       	xor    $0x14000002,%eax
 5a4:	ee                   	out    %al,(%dx)
 5a5:	16                   	(bad)  
 5a6:	00 00                	add    %al,(%rax)
 5a8:	00 00                	add    %al,(%rax)
 5aa:	00 00                	add    %al,(%rax)
 5ac:	84 00                	test   %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	13 53 06             	adc    0x6(%rbx),%edx
 5b3:	00 00                	add    %al,(%rax)
 5b5:	41 02 00             	add    (%r8),%al
 5b8:	00 00                	add    %al,(%rax)
 5ba:	00 00                	add    %al,(%rax)
 5bc:	10 5b 02             	adc    %bl,0x2(%rbx)
 5bf:	00 00                	add    %al,(%rax)
 5c1:	00 02                	add    %al,(%rdx)
 5c3:	00 00                	add    %al,(%rax)
 5c5:	01 af 14 11 22 07    	add    %ebp,0x7221114(%rdi)
 5cb:	00 00                	add    %al,(%rax)
 5cd:	67 02 00             	add    (%eax),%al
 5d0:	00 11                	add    %dl,(%rcx)
 5d2:	ff 06                	incl   (%rsi)
 5d4:	00 00                	add    %al,(%rax)
 5d6:	72 02                	jb     5da <__abi_tag+0x316>
 5d8:	00 00                	add    %al,(%rax)
 5da:	11 dc                	adc    %ebx,%esp
 5dc:	06                   	(bad)  
 5dd:	00 00                	add    %al,(%rax)
 5df:	7d 02                	jge    5e3 <__abi_tag+0x31f>
 5e1:	00 00                	add    %al,(%rax)
 5e3:	13 9b 06 00 00 88    	adc    -0x77fffffa(%rbx),%ebx
 5e9:	02 00                	add    (%rax),%al
 5eb:	00 15 93 02 00 00    	add    %dl,0x293(%rip)        # 884 <__abi_tag+0x5c0>
 5f1:	14 93                	adc    $0x93,%al
 5f3:	17                   	(bad)  
 5f4:	00 00                	add    %al,(%rax)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	00 00                	add    %al,(%rax)
 5fa:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 5fb:	00 00                	add    %al,(%rax)
 5fd:	00 13                	add    %dl,(%rbx)
 5ff:	78 06                	js     607 <__abi_tag+0x343>
 601:	00 00                	add    %al,(%rax)
 603:	9f                   	lahf   
 604:	02 00                	add    (%rax),%al
 606:	00 00                	add    %al,(%rax)
 608:	14 5a                	adc    $0x5a,%al
 60a:	18 00                	sbb    %al,(%rax)
 60c:	00 00                	add    %al,(%rax)
 60e:	00 00                	add    %al,(%rax)
 610:	00 91 02 00 00 13    	add    %dl,0x13000002(%rcx)
 616:	6a 07                	pushq  $0x7
 618:	00 00                	add    %al,(%rax)
 61a:	ac                   	lods   %ds:(%rsi),%al
 61b:	02 00                	add    (%rax),%al
 61d:	00 14 5a             	add    %dl,(%rdx,%rbx,2)
 620:	18 00                	sbb    %al,(%rax)
 622:	00 00                	add    %al,(%rax)
 624:	00 00                	add    %al,(%rax)
 626:	00 91 02 00 00 13    	add    %dl,0x13000002(%rcx)
 62c:	45 07                	rex.RB (bad) 
 62e:	00 00                	add    %al,(%rax)
 630:	b8 02 00 00 00       	mov    $0x2,%eax
 635:	00 00                	add    %al,(%rax)
 637:	16                   	(bad)  
 638:	08 06                	or     %al,(%rsi)
 63a:	00 00                	add    %al,(%rax)
 63c:	dd 11                	fstl   (%rcx)
 63e:	00 00                	add    %al,(%rax)
 640:	00 00                	add    %al,(%rax)
 642:	00 00                	add    %al,(%rax)
 644:	16                   	(bad)  
 645:	08 06                	or     %al,(%rsi)
 647:	00 00                	add    %al,(%rax)
 649:	ed                   	in     (%dx),%eax
 64a:	11 00                	adc    %eax,(%rax)
 64c:	00 00                	add    %al,(%rax)
 64e:	00 00                	add    %al,(%rax)
 650:	00 16                	add    %dl,(%rsi)
 652:	27                   	(bad)  
 653:	06                   	(bad)  
 654:	00 00                	add    %al,(%rax)
 656:	20 1d 00 00 00 00    	and    %bl,0x0(%rip)        # 65c <__abi_tag+0x398>
 65c:	00 00                	add    %al,(%rax)
 65e:	16                   	(bad)  
 65f:	27                   	(bad)  
 660:	06                   	(bad)  
 661:	00 00                	add    %al,(%rax)
 663:	28 1d 00 00 00 00    	sub    %bl,0x0(%rip)        # 669 <__abi_tag+0x3a5>
 669:	00 00                	add    %al,(%rax)
 66b:	00 17                	add    %dl,(%rdi)
 66d:	17                   	(bad)  
 66e:	02 00                	add    (%rax),%al
 670:	00 02                	add    %al,(%rdx)
 672:	4a 02 1f             	rex.WX add (%rdi),%bl
 675:	06                   	(bad)  
 676:	00 00                	add    %al,(%rax)
 678:	18 20                	sbb    %ah,(%rax)
 67a:	06                   	(bad)  
 67b:	00 00                	add    %al,(%rax)
 67d:	18 20                	sbb    %ah,(%rax)
 67f:	06                   	(bad)  
 680:	00 00                	add    %al,(%rax)
 682:	00 19                	add    %bl,(%rcx)
 684:	04 85                	add    $0x85,%al
 686:	01 00                	add    %eax,(%rax)
 688:	00 07                	add    %al,(%rdi)
 68a:	08 1a                	or     %bl,(%rdx)
 68c:	25 02 00 00 02       	and    $0x2000002,%eax
 691:	35 02 18 1f 06       	xor    $0x61f1802,%eax
 696:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .debug_abbrev :

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x30ad2be>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	55                   	push   %rbp
   c:	17                   	(bad)  
   d:	11 01                	adc    %eax,(%rcx)
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 2e                	add    (%rsi),%ch
  15:	01 03                	add    %eax,(%rbx)
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    (%rbx),%cl
  1a:	3b 0b                	cmp    (%rbx),%ecx
  1c:	39 0b                	cmp    %ecx,(%rbx)
  1e:	27                   	(bad)  
  1f:	19 11                	sbb    %edx,(%rcx)
  21:	01 12                	add    %edx,(%rdx)
  23:	07                   	(bad)  
  24:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
  2b:	00 00                	add    %al,(%rax)
  2d:	03 34 00             	add    (%rax,%rax,1),%esi
  30:	03 0e                	add    (%rsi),%ecx
  32:	3a 0b                	cmp    (%rbx),%cl
  34:	3b 0b                	cmp    (%rbx),%ecx
  36:	39 0b                	cmp    %ecx,(%rbx)
  38:	49 13 02             	adc    (%r10),%rax
  3b:	17                   	(bad)  
  3c:	b7 42                	mov    $0x42,%bh
  3e:	17                   	(bad)  
  3f:	00 00                	add    %al,(%rax)
  41:	04 24                	add    $0x24,%al
  43:	00 0b                	add    %cl,(%rbx)
  45:	0b 3e                	or     (%rsi),%edi
  47:	0b 03                	or     (%rbx),%eax
  49:	0e                   	(bad)  
  4a:	00 00                	add    %al,(%rax)
  4c:	00 01                	add    %al,(%rcx)
  4e:	11 01                	adc    %eax,(%rcx)
  50:	25 0e 13 05 03       	and    $0x305130e,%eax
  55:	0e                   	(bad)  
  56:	10 17                	adc    %dl,(%rdi)
  58:	1b 0e                	sbb    (%rsi),%ecx
  5a:	11 01                	adc    %eax,(%rcx)
  5c:	12 06                	adc    (%rsi),%al
  5e:	00 00                	add    %al,(%rax)
  60:	02 2e                	add    (%rsi),%ch
  62:	01 03                	add    %eax,(%rbx)
  64:	0e                   	(bad)  
  65:	3a 0b                	cmp    (%rbx),%cl
  67:	3b 0b                	cmp    (%rbx),%ecx
  69:	27                   	(bad)  
  6a:	19 49 13             	sbb    %ecx,0x13(%rcx)
  6d:	3f                   	(bad)  
  6e:	19 20                	sbb    %esp,(%rax)
  70:	0b 00                	or     (%rax),%eax
  72:	00 03                	add    %al,(%rbx)
  74:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  79:	0b 3b                	or     (%rbx),%edi
  7b:	0b 49 13             	or     0x13(%rcx),%ecx
  7e:	00 00                	add    %al,(%rax)
  80:	04 24                	add    $0x24,%al
  82:	00 03                	add    %al,(%rbx)
  84:	0e                   	(bad)  
  85:	3e 0b 0b             	or     %ds:(%rbx),%ecx
  88:	0b 00                	or     (%rax),%eax
  8a:	00 05 0f 00 49 13    	add    %al,0x1349000f(%rip)        # 1349009f <_end+0x1348c047>
  90:	00 00                	add    %al,(%rax)
  92:	06                   	(bad)  
  93:	2e 01 03             	add    %eax,%cs:(%rbx)
  96:	0e                   	(bad)  
  97:	3a 0b                	cmp    (%rbx),%cl
  99:	3b 0b                	cmp    (%rbx),%ecx
  9b:	27                   	(bad)  
  9c:	19 20                	sbb    %esp,(%rax)
  9e:	0b 00                	or     (%rax),%eax
  a0:	00 07                	add    %al,(%rdi)
  a2:	0b 01                	or     (%rcx),%eax
  a4:	00 00                	add    %al,(%rax)
  a6:	08 34 00             	or     %dh,(%rax,%rax,1)
  a9:	03 0e                	add    (%rsi),%ecx
  ab:	3a 0b                	cmp    (%rbx),%cl
  ad:	3b 0b                	cmp    (%rbx),%ecx
  af:	49 13 00             	adc    (%r8),%rax
  b2:	00 09                	add    %cl,(%rcx)
  b4:	37                   	(bad)  
  b5:	00 49 13             	add    %cl,0x13(%rcx)
  b8:	00 00                	add    %al,(%rax)
  ba:	0a 01                	or     (%rcx),%al
  bc:	01 49 13             	add    %ecx,0x13(%rcx)
  bf:	00 00                	add    %al,(%rax)
  c1:	0b 21                	or     (%rcx),%esp
  c3:	00 49 13             	add    %cl,0x13(%rcx)
  c6:	37                   	(bad)  
  c7:	0b 00                	or     (%rax),%eax
  c9:	00 0c 24             	add    %cl,(%rsp)
  cc:	00 03                	add    %al,(%rbx)
  ce:	0e                   	(bad)  
  cf:	0b 0b                	or     (%rbx),%ecx
  d1:	3e 0b 00             	or     %ds:(%rax),%eax
  d4:	00 0d 2e 01 11 01    	add    %cl,0x111012e(%rip)        # 1110208 <_end+0x110c1b0>
  da:	12 06                	adc    (%rsi),%al
  dc:	40 18 97 42 19 03 0e 	sbb    %dl,0xe031942(%rdi)
  e3:	3a 0b                	cmp    (%rbx),%cl
  e5:	3b 0b                	cmp    (%rbx),%ecx
  e7:	27                   	(bad)  
  e8:	19 49 13             	sbb    %ecx,0x13(%rcx)
  eb:	3f                   	(bad)  
  ec:	19 00                	sbb    %eax,(%rax)
  ee:	00 0e                	add    %cl,(%rsi)
  f0:	05 00 02 17 03       	add    $0x3170200,%eax
  f5:	0e                   	(bad)  
  f6:	3a 0b                	cmp    (%rbx),%cl
  f8:	3b 0b                	cmp    (%rbx),%ecx
  fa:	49 13 00             	adc    (%r8),%rax
  fd:	00 0f                	add    %cl,(%rdi)
  ff:	34 00                	xor    $0x0,%al
 101:	02 17                	add    (%rdi),%dl
 103:	03 0e                	add    (%rsi),%ecx
 105:	3a 0b                	cmp    (%rbx),%cl
 107:	3b 0b                	cmp    (%rbx),%ecx
 109:	49 13 00             	adc    (%r8),%rax
 10c:	00 10                	add    %dl,(%rax)
 10e:	1d 01 31 13 55       	sbb    $0x55133101,%eax
 113:	17                   	(bad)  
 114:	58                   	pop    %rax
 115:	0b 59 0b             	or     0xb(%rcx),%ebx
 118:	57                   	push   %rdi
 119:	0b 00                	or     (%rax),%eax
 11b:	00 11                	add    %dl,(%rcx)
 11d:	05 00 02 17 31       	add    $0x31170200,%eax
 122:	13 00                	adc    (%rax),%eax
 124:	00 12                	add    %dl,(%rdx)
 126:	0b 01                	or     (%rcx),%eax
 128:	55                   	push   %rbp
 129:	17                   	(bad)  
 12a:	00 00                	add    %al,(%rax)
 12c:	13 34 00             	adc    (%rax,%rax,1),%esi
 12f:	02 17                	add    (%rdi),%dl
 131:	31 13                	xor    %edx,(%rbx)
 133:	00 00                	add    %al,(%rax)
 135:	14 0b                	adc    $0xb,%al
 137:	01 11                	add    %edx,(%rcx)
 139:	01 12                	add    %edx,(%rdx)
 13b:	06                   	(bad)  
 13c:	00 00                	add    %al,(%rax)
 13e:	15 34 00 31 13       	adc    $0x13310034,%eax
 143:	00 00                	add    %al,(%rax)
 145:	16                   	(bad)  
 146:	89 82 01 00 31 13    	mov    %eax,0x13310001(%rdx)
 14c:	11 01                	adc    %eax,(%rcx)
 14e:	00 00                	add    %al,(%rax)
 150:	17                   	(bad)  
 151:	2e 01 03             	add    %eax,%cs:(%rbx)
 154:	0e                   	(bad)  
 155:	3a 0b                	cmp    (%rbx),%cl
 157:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491a84 <_end+0x1348da2c>
 15d:	3c 19                	cmp    $0x19,%al
 15f:	3f                   	(bad)  
 160:	19 00                	sbb    %eax,(%rax)
 162:	00 18                	add    %bl,(%rax)
 164:	05 00 49 13 00       	add    $0x134900,%eax
 169:	00 19                	add    %bl,(%rcx)
 16b:	0f 00 00             	sldt   (%rax)
 16e:	00 1a                	add    %bl,(%rdx)
 170:	2e 01 03             	add    %eax,%cs:(%rbx)
 173:	0e                   	(bad)  
 174:	3a 0b                	cmp    (%rbx),%cl
 176:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1aa3 <_end+0x193bda4b>
 17c:	3f                   	(bad)  
 17d:	19 00                	sbb    %eax,(%rax)
	...

Déassemblage de la section .debug_line :

0000000000000000 <.debug_line>:
   0:	79 00                	jns    2 <__abi_tag-0x2c2>
   2:	00 00                	add    %al,(%rax)
   4:	03 00                	add    (%rax),%eax
   6:	4a 00 00             	rex.WX add %al,(%rax)
   9:	00 01                	add    %al,(%rcx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	62                   	(bad)  
  1d:	75 69                	jne    88 <__abi_tag-0x23c>
  1f:	6c                   	insb   (%dx),%es:(%rdi)
  20:	64 2f                	fs (bad) 
  22:	67 63 63 2f          	movsxd 0x2f(%ebx),%esp
  26:	73 72                	jae    9a <__abi_tag-0x22a>
  28:	63 2f                	movsxd (%rdi),%ebp
  2a:	67 63 63 2f          	movsxd 0x2f(%ebx),%esp
  2e:	6c                   	insb   (%dx),%es:(%rdi)
  2f:	69 62 67 63 63 2f 63 	imul   $0x632f6363,0x67(%rdx),%esp
  36:	6f                   	outsl  %ds:(%rsi),(%dx)
  37:	6e                   	outsb  %ds:(%rsi),(%dx)
  38:	66 69 67 2f 69 33    	imul   $0x3369,0x2f(%rdi),%sp
  3e:	38 36                	cmp    %dh,(%rsi)
  40:	00 00                	add    %al,(%rax)
  42:	63 72 74             	movsxd 0x74(%rdx),%esi
  45:	66 61                	data16 (bad) 
  47:	73 74                	jae    bd <__abi_tag-0x207>
  49:	6d                   	insl   (%dx),%es:(%rdi)
  4a:	61                   	(bad)  
  4b:	74 68                	je     b5 <__abi_tag-0x20f>
  4d:	2e 63 00             	movsxd %cs:(%rax),%eax
  50:	01 00                	add    %eax,(%rax)
  52:	00 00                	add    %al,(%rax)
  54:	05 01 00 09 02       	add    $0x2090001,%eax
  59:	80 10 00             	adcb   $0x0,(%rax)
  5c:	00 00                	add    %al,(%rax)
  5e:	00 00                	add    %al,(%rax)
  60:	00 03                	add    %al,(%rbx)
  62:	d3 00                	roll   %cl,(%rax)
  64:	01 05 03 03 0a 4a    	add    %eax,0x4a0a0303(%rip)        # 4a0a036d <_end+0x4a09c315>
  6a:	05 18 06 01 05       	add    $0x5010618,%eax
  6f:	03 06                	add    (%rsi),%eax
  71:	59                   	pop    %rcx
  72:	13 06                	adc    (%rsi),%eax
  74:	82                   	(bad)  
  75:	05 01 5a 02 01       	add    $0x1025a01,%eax
  7a:	00 01                	add    %al,(%rcx)
  7c:	01 30                	add    %esi,(%rax)
  7e:	04 00                	add    $0x0,%al
  80:	00 04 00             	add    %al,(%rax,%rax,1)
  83:	3a 00                	cmp    (%rax),%al
  85:	00 00                	add    %al,(%rax)
  87:	01 01                	add    %eax,(%rcx)
  89:	01 fb                	add    %edi,%ebx
  8b:	0e                   	(bad)  
  8c:	0d 00 01 01 01       	or     $0x1010100,%eax
  91:	01 00                	add    %eax,(%rax)
  93:	00 00                	add    %al,(%rax)
  95:	01 00                	add    %eax,(%rax)
  97:	00 01                	add    %al,(%rcx)
  99:	2f                   	(bad)  
  9a:	75 73                	jne    10f <__abi_tag-0x1b5>
  9c:	72 2f                	jb     cd <__abi_tag-0x1f7>
  9e:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  a5:	00 00                	add    %al,(%rax)
  a7:	64 6f                	outsl  %fs:(%rsi),(%dx)
  a9:	74 70                	je     11b <__abi_tag-0x1a9>
  ab:	72 6f                	jb     11c <__abi_tag-0x1a8>
  ad:	64 2e 63 00          	fs movsxd %cs:(%rax),%eax
  b1:	00 00                	add    %al,(%rax)
  b3:	00 73 74             	add    %dh,0x74(%rbx)
  b6:	64 6c                	fs insb (%dx),%es:(%rdi)
  b8:	69 62 2e 68 00 01 00 	imul   $0x10068,0x2e(%rdx),%esp
  bf:	00 00                	add    %al,(%rax)
  c1:	00 09                	add    %cl,(%rcx)
  c3:	02 a0 11 00 00 00    	add    0x11(%rax),%ah
  c9:	00 00                	add    %al,(%rax)
  cb:	00 03                	add    %al,(%rbx)
  cd:	9e                   	sahf   
  ce:	01 01                	add    %eax,(%rcx)
  d0:	05 0c 0a 03 eb       	add    $0xeb030a0c,%eax
  d5:	7e ba                	jle    91 <__abi_tag-0x233>
  d7:	05 07 06 3c 05       	add    $0x53c0607,%eax
  dc:	12 06                	adc    (%rsi),%al
  de:	69 05 0a 06 4a 05 23 	imul   $0x97030623,0x54a060a(%rip),%eax        # 54a06f2 <_end+0x549c69a>
  e5:	06 03 97 
  e8:	01 e4                	add    %esp,%esp
  ea:	05 0f 06 82 06       	add    $0x682060f,%eax
  ef:	f3 05 24 03 ee 7e    	repz add $0x7eee0324,%eax
  f5:	f2 05 03 06 3c 03    	repnz add $0x33c0603,%eax
  fb:	6d                   	insl   (%dx),%es:(%rdi)
  fc:	82                   	(bad)  
  fd:	03 13                	add    (%rbx),%edx
  ff:	08 90 03 6d 08 e4    	or     %dl,-0x1bf792fd(%rax)
 105:	03 13                	add    (%rbx),%edx
 107:	74 05                	je     10e <__abi_tag-0x1b6>
 109:	0c 06                	or     $0x6,%al
 10b:	02 24 14             	add    (%rsp,%rdx,1),%ah
 10e:	08 9f 08 65 02 28    	or     %bl,0x28026508(%rdi)
 114:	13 02                	adc    (%rdx),%eax
 116:	24 11                	and    $0x11,%al
 118:	02 28                	add    (%rax),%ch
 11a:	13 02                	adc    (%rdx),%eax
 11c:	24 11                	and    $0x11,%al
 11e:	02 28                	add    (%rax),%ch
 120:	13 05 2a 02 24 0f    	adc    0xf24022a(%rip),%eax        # f240350 <_end+0xf23c2f8>
 126:	05 0c 02 3a 14       	add    $0x143a020c,%eax
 12b:	08 9f 05 2a 08 63    	or     %bl,0x63082a05(%rdi)
 131:	05 03 06 90 03       	add    $0x3900603,%eax
 136:	6d                   	insl   (%dx),%es:(%rdi)
 137:	58                   	pop    %rax
 138:	05 0c 06 03 15       	add    $0x1503060c,%eax
 13d:	08 e4                	or     %ah,%ah
 13f:	4b 05 2a 47 05 24    	rex.WXB add $0x2405472a,%rax
 145:	06                   	(bad)  
 146:	3c 05                	cmp    $0x5,%al
 148:	03 3c 06             	add    (%rsi,%rax,1),%edi
 14b:	03 0c 66             	add    (%rsi,%riz,2),%ecx
 14e:	06                   	(bad)  
 14f:	03 61 2e             	add    0x2e(%rcx),%esp
 152:	03 1f                	add    (%rdi),%ebx
 154:	ac                   	lods   %ds:(%rsi),%al
 155:	05 11 06 02 4f       	add    $0x4f020611,%eax
 15a:	13 05 0f 06 08 f2    	adc    -0xdf7f9f1(%rip),%eax        # fffffffff208076f <_end+0xfffffffff207c717>
 160:	05 07 9e 05 0f       	add    $0xf059e07,%eax
 165:	4a 05 07 9e 05 0f    	rex.WX add $0xf059e07,%rax
 16b:	4a 05 07 9e 05 0f    	rex.WX add $0xf059e07,%rax
 171:	4a 05 07 74 05 11    	rex.WX add $0x11057407,%rax
 177:	4a 05 0f 08 66 05    	rex.WX add $0x566080f,%rax
 17d:	07                   	(bad)  
 17e:	74 05                	je     185 <__abi_tag-0x13f>
 180:	0f 4a 05 07 74 05 0f 	cmovp  0xf057407(%rip),%eax        # f05758e <_end+0xf053536>
 187:	4a 05 07 74 05 0f    	rex.WX add $0xf057407,%rax
 18d:	4a 05 07 66 05 29    	rex.WX add $0x29056607,%rax
 193:	06                   	(bad)  
 194:	49 05 11 08 59 05    	rex.WB add $0x5590811,%rax
 19a:	0f 06                	clts   
 19c:	08 66 05             	or     %ah,0x5(%rsi)
 19f:	07                   	(bad)  
 1a0:	74 05                	je     1a7 <__abi_tag-0x11d>
 1a2:	0f 4a 05 07 74 05 0f 	cmovp  0xf057407(%rip),%eax        # f0575b0 <_end+0xf053558>
 1a9:	4a 05 07 74 05 0f    	rex.WX add $0xf057407,%rax
 1af:	4a 05 07 66 05 03    	rex.WX add $0x3056607,%rax
 1b5:	06                   	(bad)  
 1b6:	49 06                	rex.WB (bad) 
 1b8:	03 61 02             	add    0x2(%rcx),%esp
 1bb:	25 01 05 29 03       	and    $0x3290501,%eax
 1c0:	1f                   	(bad)  
 1c1:	08 20                	or     %ah,(%rax)
 1c3:	05 05 06 03 6c       	add    $0x6c030605,%eax
 1c8:	74 05                	je     1cf <__abi_tag-0xf5>
 1ca:	13 03                	adc    (%rbx),%eax
 1cc:	34 9e                	xor    $0x9e,%al
 1ce:	05 24 03 54 08       	add    $0x8540324,%eax
 1d3:	4a 05 03 03 36 3c    	rex.WX add $0x3c360303,%rax
 1d9:	06                   	(bad)  
 1da:	03 b7 7f 66 05 16    	add    0x1605667f(%rdi),%esi
 1e0:	06                   	(bad)  
 1e1:	03 cb                	add    %ebx,%ecx
 1e3:	00 9e 05 18 59 05    	add    %bl,0x5591805(%rsi)
 1e9:	0c 06                	or     $0x6,%al
 1eb:	ba 05 2b 06 47       	mov    $0x47062b05,%edx
 1f0:	05 24 06 4a 05       	add    $0x54a0624,%eax
 1f5:	03 3c 05 09 06 36 05 	add    0x5360609(,%rax,1),%edi
 1fc:	07                   	(bad)  
 1fd:	06                   	(bad)  
 1fe:	4a 05 2e 06 32 05    	rex.WX add $0x532062e,%rax
 204:	07                   	(bad)  
 205:	06                   	(bad)  
 206:	4a 05 13 06 2f 05    	rex.WX add $0x52f0613,%rax
 20c:	11 06                	adc    %eax,(%rsi)
 20e:	d6                   	(bad)  
 20f:	05 09 74 05 11       	add    $0x11057409,%eax
 214:	ba 05 09 74 05       	mov    $0x5740905,%edx
 219:	13 4a 05             	adc    0x5(%rdx),%ecx
 21c:	11 74 05 09          	adc    %esi,0x9(%rbp,%rax,1)
 220:	74 03                	je     225 <__abi_tag-0x9f>
 222:	aa                   	stos   %al,%es:(%rdi)
 223:	7f 82                	jg     1a7 <__abi_tag-0x11d>
 225:	05 16 06 03 e4       	add    $0xe4030616,%eax
 22a:	00 02                	add    %al,(%rdx)
 22c:	24 01                	and    $0x1,%al
 22e:	05 14 06 58 05       	add    $0x5580614,%eax
 233:	1a 06                	sbb    (%rsi),%al
 235:	68 05 18 06 66       	pushq  $0x66061805
 23a:	05 0c 06 72 4c       	add    $0x4c72060c,%eax
 23f:	05 1a 4b 05 18       	add    $0x18054b1a,%eax
 244:	67 05 0c 06 c8 05    	addr32 add $0x5c8060c,%eax
 24a:	1a 06                	sbb    (%rsi),%al
 24c:	4b 05 18 06 66 05    	rex.WXB add $0x5660618,%rax
 252:	0c 74                	or     $0x74,%al
 254:	05 1a 06 4b 05       	add    $0x54b061a,%eax
 259:	18 67 05             	sbb    %ah,0x5(%rdi)
 25c:	0c 06                	or     $0x6,%al
 25e:	c8 05 2b 06          	enterq $0x2b05,$0x6
 262:	03 77 4a             	add    0x4a(%rdi),%esi
 265:	05 24 06 4a 05       	add    $0x54a0624,%eax
 26a:	03 3c 05 07 06 03 0c 	add    0xc030607(,%rax,1),%edi
 271:	2e 05 09 06 66 05    	cs add $0x5660609,%eax
 277:	07                   	(bad)  
 278:	9e                   	sahf   
 279:	05 2e 06 6a 05       	add    $0x56a062e,%eax
 27e:	07                   	(bad)  
 27f:	06                   	(bad)  
 280:	4a 05 13 06 2f 05    	rex.WX add $0x52f0613,%rax
 286:	11 06                	adc    %eax,(%rsi)
 288:	d6                   	(bad)  
 289:	05 09 74 05 11       	add    $0x11057409,%eax
 28e:	4a 05 13 74 05 11    	rex.WX add $0x11057413,%rax
 294:	74 05                	je     29b <__abi_tag-0x29>
 296:	09 74 05 13          	or     %esi,0x13(%rbp,%rax,1)
 29a:	4a 05 11 74 05 09    	rex.WX add $0x9057411,%rax
 2a0:	74 05                	je     2a7 <__abi_tag-0x1d>
 2a2:	13 4a 05             	adc    0x5(%rdx),%ecx
 2a5:	11 74 05 09          	adc    %esi,0x9(%rbp,%rax,1)
 2a9:	74 05                	je     2b0 <__abi_tag-0x14>
 2ab:	13 4a 05             	adc    0x5(%rdx),%ecx
 2ae:	11 74 05 09          	adc    %esi,0x9(%rbp,%rax,1)
 2b2:	74 05                	je     2b9 <__abi_tag-0xb>
 2b4:	13 4a 05             	adc    0x5(%rdx),%ecx
 2b7:	11 74 05 09          	adc    %esi,0x9(%rbp,%rax,1)
 2bb:	74 03                	je     2c0 <__abi_tag-0x4>
 2bd:	8d 7f 82             	lea    -0x7e(%rdi),%edi
 2c0:	05 16 06 03 81       	add    $0x81030616,%eax
 2c5:	01 02                	add    %eax,(%rdx)
 2c7:	2e 01 05 14 06 58 05 	add    %eax,%cs:0x5580614(%rip)        # 55808e2 <_end+0x557c88a>
 2ce:	0c 66                	or     $0x66,%al
 2d0:	05 1a 06 4c 05       	add    $0x54c061a,%eax
 2d5:	18 06                	sbb    %al,(%rsi)
 2d7:	66 05 1a 06          	add    $0x61a,%ax
 2db:	75 05                	jne    2e2 <__abi_tag+0x1e>
 2dd:	18 67 05             	sbb    %ah,0x5(%rdi)
 2e0:	0c 72                	or     $0x72,%al
 2e2:	05 18 4c 05 0c       	add    $0xc054c18,%eax
 2e7:	06                   	(bad)  
 2e8:	66 05 1a 06          	add    $0x61a,%ax
 2ec:	4b 05 18 69 05 0c    	rex.WXB add $0xc056918,%rax
 2f2:	06                   	(bad)  
 2f3:	c8 05 1a 06          	enterq $0x1a05,$0x6
 2f7:	4b 69 05 0d 06 c8 05 	rex.WXB imul $0x54b061c,0x5c8060d(%rip),%rax        # 5c8090f <_end+0x5c7c8b7>
 2fe:	1c 06 4b 05 
 302:	1a 06                	sbb    (%rsi),%al
 304:	66 05 0d 74          	add    $0x740d,%ax
 308:	05 1c 06 4b 05       	add    $0x54b061c,%eax
 30d:	1a 67 05             	sbb    0x5(%rdi),%ah
 310:	0d 06 c8 05 2b       	or     $0x2b05c806,%eax
 315:	06                   	(bad)  
 316:	03 6f 4a             	add    0x4a(%rdi),%ebp
 319:	05 24 06 4a 05       	add    $0x54a0624,%eax
 31e:	03 3c 05 07 06 03 14 	add    0x14030607(,%rax,1),%edi
 325:	66 05 09 06          	add    $0x609,%ax
 329:	66 03 ed             	add    %bp,%bp
 32c:	7e 4a                	jle    378 <__abi_tag+0xb4>
 32e:	05 07 03 93 01       	add    $0x1930307,%eax
 333:	66 06                	data16 (bad) 
 335:	f6 06 03             	testb  $0x3,(%rsi)
 338:	e9 7e 02 39 01       	jmpq   13905bb <_end+0x138c563>
 33d:	03 97 01 02 2b 01    	add    0x12b0201(%rdi),%edx
 343:	03 e9                	add    %ecx,%ebp
 345:	7e 02                	jle    349 <__abi_tag+0x85>
 347:	62 01 05 0c 06       	(bad)
 34c:	03 98 01 08 58 05    	add    0x5580801(%rax),%ebx
 352:	13 06                	adc    (%rsi),%eax
 354:	08 3c 05 11 74 05 09 	or     %bh,0x9057411(,%rax,1)
 35b:	4a 05 0c 08 ac 05    	rex.WX add $0x5ac080c,%rax
 361:	13 08                	adc    (%rax),%ecx
 363:	3c 05                	cmp    $0x5,%al
 365:	11 74 05 0c          	adc    %esi,0xc(%rbp,%rax,1)
 369:	08 58 05             	or     %bl,0x5(%rax)
 36c:	13 08                	adc    (%rax),%ecx
 36e:	3c 05                	cmp    $0x5,%al
 370:	11 74 05 09          	adc    %esi,0x9(%rbp,%rax,1)
 374:	4a 05 0c 08 ac 05    	rex.WX add $0x5ac080c,%rax
 37a:	13 08                	adc    (%rax),%ecx
 37c:	2e 05 11 66 05 09    	cs add $0x9056611,%eax
 382:	4a 03 e8             	rex.WX add %rax,%rbp
 385:	7e 08                	jle    38f <__abi_tag+0xcb>
 387:	20 05 0c 03 98 01    	and    %al,0x198030c(%rip)        # 1980699 <_end+0x197c641>
 38d:	02 7a 01             	add    0x1(%rdx),%bh
 390:	05 13 08 9e 05       	add    $0x59e0813,%eax
 395:	11 66 05             	adc    %esp,0x5(%rsi)
 398:	09 4a 03             	or     %ecx,0x3(%rdx)
 39b:	e8 7e c8 03 98       	callq  ffffffff9803cc1e <_end+0xffffffff98038bc6>
 3a0:	01 9e 05 07 06 f1    	add    %ebx,-0xef9f8fb(%rsi)
 3a6:	05 11 03 89 7f       	add    $0x7f890311,%eax
 3ab:	08 82 05 0f 06 58    	or     %al,0x58060f05(%rdx)
 3b1:	05 07 66 05 29       	add    $0x29056607,%eax
 3b6:	06                   	(bad)  
 3b7:	49 05 00 06 03 61    	rex.WB add $0x61030600,%rax
 3bd:	3c 05                	cmp    $0x5,%al
 3bf:	03 03                	add    (%rbx),%eax
 3c1:	1f                   	(bad)  
 3c2:	3c 05                	cmp    $0x5,%al
 3c4:	07                   	(bad)  
 3c5:	06                   	(bad)  
 3c6:	03 0c 2e             	add    (%rsi,%rbp,1),%ecx
 3c9:	06                   	(bad)  
 3ca:	03 55 ba             	add    -0x46(%rbp),%edx
 3cd:	05 13 06 03 3b       	add    $0x3b030613,%eax
 3d2:	08 20                	or     %ah,(%rax)
 3d4:	05 11 06 58 05       	add    $0x5580611,%eax
 3d9:	09 66 05             	or     %esp,0x5(%rsi)
 3dc:	2f                   	(bad)  
 3dd:	06                   	(bad)  
 3de:	48 05 28 06 4a 06    	add    $0x64a0628,%rax
 3e4:	03 76 9e             	add    -0x62(%rsi),%esi
 3e7:	05 07 06 9e 03       	add    $0x39e0607,%eax
 3ec:	51                   	push   %rcx
 3ed:	2e 05 13 06 03 31    	cs add $0x31030613,%eax
 3f3:	74 05                	je     3fa <__abi_tag+0x136>
 3f5:	11 06                	adc    %eax,(%rsi)
 3f7:	58                   	pop    %rax
 3f8:	05 09 66 05 31       	add    $0x31056609,%eax
 3fd:	06                   	(bad)  
 3fe:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 404:	07                   	(bad)  
 405:	3c 05                	cmp    $0x5,%al
 407:	13 06                	adc    (%rsi),%eax
 409:	34 05                	xor    $0x5,%al
 40b:	25 06 9e 05 23       	and    $0x23059e06,%eax
 410:	74 05                	je     417 <__abi_tag+0x153>
 412:	1a 74 05 24          	sbb    0x24(%rbp,%rax,1),%dh
 416:	06                   	(bad)  
 417:	03 5e e4             	add    -0x1c(%rsi),%ebx
 41a:	05 03 03 36 3c       	add    $0x3c360303,%eax
 41f:	06                   	(bad)  
 420:	03 b7 7f 66 05 0a    	add    0xa05667f(%rdi),%esi
 426:	06                   	(bad)  
 427:	03 fc                	add    %esp,%edi
 429:	00 02                	add    %al,(%rdx)
 42b:	33 01                	xor    (%rcx),%eax
 42d:	05 0f 03 7a 08       	add    $0x87a030f,%eax
 432:	66 05 16 06          	add    $0x616,%ax
 436:	ac                   	lods   %ds:(%rsi),%al
 437:	05 24 4a 05 1d       	add    $0x1d054a24,%eax
 43c:	66 05 2b 4a          	add    $0x4a2b,%ax
 440:	05 24 66 05 32       	add    $0x32056624,%eax
 445:	4a 05 39 4a 03 8a    	rex.WX add $0xffffffff8a034a39,%rax
 44b:	7f 4a                	jg     497 <__abi_tag+0x1d3>
 44d:	05 1d 06 03 d9       	add    $0xd903061d,%eax
 452:	00 66 06             	add    %ah,0x6(%rsi)
 455:	03 a7 7f 08 c8 05    	add    0x5c8087f(%rdi),%esp
 45b:	11 06                	adc    %eax,(%rsi)
 45d:	03 9b 01 66 05 18    	add    0x18056601(%rbx),%ebx
 463:	06                   	(bad)  
 464:	9e                   	sahf   
 465:	05 1f 4a 05 26       	add    $0x26054a1f,%eax
 46a:	f2 05 2d 4a 05 3b    	repnz add $0x3b054a2d,%eax
 470:	9e                   	sahf   
 471:	05 34 ba 05 3b       	add    $0x3b05ba34,%eax
 476:	4a 05 49 4a 05 42    	rex.WX add $0x42054a49,%rax
 47c:	66 05 50 4a          	add    $0x4a50,%ax
 480:	05 49 4a 05 60       	add    $0x60054a49,%eax
 485:	4a 05 58 66 05 68    	rex.WX add $0x68056658,%rax
 48b:	4a 05 60 66 05 70    	rex.WX add $0x70056660,%rax
 491:	4a 05 78 4a 03 e5    	rex.WX add $0xffffffffe5034a78,%rax
 497:	7e 4a                	jle    4e3 <__abi_tag+0x21f>
 499:	05 03 06 03 b2       	add    $0xb2030603,%eax
 49e:	01 90 08 67 08 3d    	add    %edx,0x3d086708(%rax)
 4a4:	08 3d 08 3d 08 69    	or     %bh,0x69083d08(%rip)        # 690841b2 <_end+0x6908015a>
 4aa:	83                   	.byte 0x83
 4ab:	84 02                	test   %al,(%rdx)
 4ad:	0f 00 01             	sldt   (%rcx)
 4b0:	01                   	.byte 0x1

Déassemblage de la section .debug_str :

0000000000000000 <.debug_str>:
   0:	6d                   	insl   (%dx),%es:(%rdi)
   1:	78 63                	js     66 <__abi_tag-0x25e>
   3:	73 72                	jae    77 <__abi_tag-0x24d>
   5:	00 73 65             	add    %dh,0x65(%rbx)
   8:	74 5f                	je     69 <__abi_tag-0x25b>
   a:	66 61                	data16 (bad) 
   c:	73 74                	jae    82 <__abi_tag-0x242>
   e:	5f                   	pop    %rdi
   f:	6d                   	insl   (%dx),%es:(%rdi)
  10:	61                   	(bad)  
  11:	74 68                	je     7b <__abi_tag-0x249>
  13:	00 2f                	add    %ch,(%rdi)
  15:	62                   	(bad)  
  16:	75 69                	jne    81 <__abi_tag-0x243>
  18:	6c                   	insb   (%dx),%es:(%rdi)
  19:	64 2f                	fs (bad) 
  1b:	67 63 63 2f          	movsxd 0x2f(%ebx),%esp
  1f:	73 72                	jae    93 <__abi_tag-0x231>
  21:	63 2f                	movsxd (%rdi),%ebp
  23:	67 63 63 2f          	movsxd 0x2f(%ebx),%esp
  27:	6c                   	insb   (%dx),%es:(%rdi)
  28:	69 62 67 63 63 2f 63 	imul   $0x632f6363,0x67(%rdx),%esp
  2f:	6f                   	outsl  %ds:(%rsi),(%dx)
  30:	6e                   	outsb  %ds:(%rsi),(%dx)
  31:	66 69 67 2f 69 33    	imul   $0x3369,0x2f(%rdi),%sp
  37:	38 36                	cmp    %dh,(%rsi)
  39:	2f                   	(bad)  
  3a:	63 72 74             	movsxd 0x74(%rdx),%esi
  3d:	66 61                	data16 (bad) 
  3f:	73 74                	jae    b5 <__abi_tag-0x20f>
  41:	6d                   	insl   (%dx),%es:(%rdi)
  42:	61                   	(bad)  
  43:	74 68                	je     ad <__abi_tag-0x217>
  45:	2e 63 00             	movsxd %cs:(%rax),%eax
  48:	2f                   	(bad)  
  49:	62                   	(bad)  
  4a:	75 69                	jne    b5 <__abi_tag-0x20f>
  4c:	6c                   	insb   (%dx),%es:(%rdi)
  4d:	64 2f                	fs (bad) 
  4f:	67 63 63 2f          	movsxd 0x2f(%ebx),%esp
  53:	73 72                	jae    c7 <__abi_tag-0x1fd>
  55:	63 2f                	movsxd (%rdi),%ebp
  57:	67 63 63 2d          	movsxd 0x2d(%ebx),%esp
  5b:	62                   	(bad)  
  5c:	75 69                	jne    c7 <__abi_tag-0x1fd>
  5e:	6c                   	insb   (%dx),%es:(%rdi)
  5f:	64 2f                	fs (bad) 
  61:	78 38                	js     9b <__abi_tag-0x229>
  63:	36 5f                	ss pop %rdi
  65:	36 34 2d             	ss xor $0x2d,%al
  68:	70 63                	jo     cd <__abi_tag-0x1f7>
  6a:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  6f:	78 2d                	js     9e <__abi_tag-0x226>
  71:	67 6e                	outsb  %ds:(%esi),(%dx)
  73:	75 2f                	jne    a4 <__abi_tag-0x220>
  75:	6c                   	insb   (%dx),%es:(%rdi)
  76:	69 62 67 63 63 00 47 	imul   $0x47006363,0x67(%rdx),%esp
  7d:	4e 55                	rex.WRX push %rbp
  7f:	20 43 31             	and    %al,0x31(%rbx)
  82:	37                   	(bad)  
  83:	20 31                	and    %dh,(%rcx)
  85:	30 2e                	xor    %ch,(%rsi)
  87:	32 2e                	xor    (%rsi),%ch
  89:	30 20                	xor    %ah,(%rax)
  8b:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  90:	68 3d 78 38 36       	pushq  $0x3638783d
  95:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  9a:	6d                   	insl   (%dx),%es:(%rdi)
  9b:	74 75                	je     112 <__abi_tag-0x1b2>
  9d:	6e                   	outsb  %ds:(%rsi),(%dx)
  9e:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  a4:	72 69                	jb     10f <__abi_tag-0x1b5>
  a6:	63 20                	movsxd (%rax),%esp
  a8:	2d 6d 6c 6f 6e       	sub    $0x6e6f6c6d,%eax
  ad:	67 2d 64 6f 75 62    	addr32 sub $0x62756f64,%eax
  b3:	6c                   	insb   (%dx),%es:(%rdi)
  b4:	65 2d 38 30 20 2d    	gs sub $0x2d203038,%eax
  ba:	6d                   	insl   (%dx),%es:(%rdi)
  bb:	73 68                	jae    125 <__abi_tag-0x19f>
  bd:	73 74                	jae    133 <__abi_tag-0x191>
  bf:	6b 20 2d             	imul   $0x2d,(%rax),%esp
  c2:	67 20 2d 67 20 2d 67 	and    %ch,0x672d2067(%eip)        # 672d2130 <_end+0x672ce0d8>
  c9:	20 2d 4f 32 20 2d    	and    %ch,0x2d20324f(%rip)        # 2d20331e <_end+0x2d1ff2c6>
  cf:	4f 32 20             	rex.WRXB xor (%r8),%r12b
  d2:	2d 4f 32 20 2d       	sub    $0x2d20324f,%eax
  d7:	66 6e                	data16 outsb %ds:(%rsi),(%dx)
  d9:	6f                   	outsl  %ds:(%rsi),(%dx)
  da:	2d 70 6c 74 20       	sub    $0x20746c70,%eax
  df:	2d 66 63 66 2d       	sub    $0x2d666366,%eax
  e4:	70 72                	jo     158 <__abi_tag-0x16c>
  e6:	6f                   	outsl  %ds:(%rsi),(%dx)
  e7:	74 65                	je     14e <__abi_tag-0x176>
  e9:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
  ed:	6e                   	outsb  %ds:(%rsi),(%dx)
  ee:	3d 66 75 6c 6c       	cmp    $0x6c6c7566,%eax
  f3:	20 2d 66 62 75 69    	and    %ch,0x69756266(%rip)        # 6975635f <_end+0x69752307>
  f9:	6c                   	insb   (%dx),%es:(%rdi)
  fa:	64 69 6e 67 2d 6c 69 	imul   $0x62696c2d,%fs:0x67(%rsi),%ebp
 101:	62 
 102:	67 63 63 20          	movsxd 0x20(%ebx),%esp
 106:	2d 66 6e 6f 2d       	sub    $0x2d6f6e66,%eax
 10b:	73 74                	jae    181 <__abi_tag-0x143>
 10d:	61                   	(bad)  
 10e:	63 6b 2d             	movsxd 0x2d(%rbx),%ebp
 111:	70 72                	jo     185 <__abi_tag-0x13f>
 113:	6f                   	outsl  %ds:(%rsi),(%dx)
 114:	74 65                	je     17b <__abi_tag-0x149>
 116:	63 74 6f 72          	movsxd 0x72(%rdi,%rbp,2),%esi
 11a:	20 2d 66 70 69 63    	and    %ch,0x63697066(%rip)        # 63697186 <_end+0x6369312e>
 120:	20 2d 66 63 66 2d    	and    %ch,0x2d666366(%rip)        # 2d66648c <_end+0x2d662434>
 126:	70 72                	jo     19a <__abi_tag-0x12a>
 128:	6f                   	outsl  %ds:(%rsi),(%dx)
 129:	74 65                	je     190 <__abi_tag-0x134>
 12b:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
 12f:	6e                   	outsb  %ds:(%rsi),(%dx)
 130:	3d 66 75 6c 6c       	cmp    $0x6c6c7566,%eax
 135:	00 63 6c             	add    %ah,0x6c(%rbx)
 138:	61                   	(bad)  
 139:	6e                   	outsb  %ds:(%rsi),(%dx)
 13a:	67 20 76 65          	and    %dh,0x65(%esi)
 13e:	72 73                	jb     1b3 <__abi_tag-0x111>
 140:	69 6f 6e 20 31 31 2e 	imul   $0x2e313120,0x6e(%rdi),%ebp
 147:	30 2e                	xor    %ch,(%rsi)
 149:	30 00                	xor    %al,(%rax)
 14b:	64 6f                	outsl  %fs:(%rsi),(%dx)
 14d:	74 70                	je     1bf <__abi_tag-0x105>
 14f:	72 6f                	jb     1c0 <__abi_tag-0x104>
 151:	64 2e 63 00          	fs movsxd %cs:(%rax),%eax
 155:	2f                   	(bad)  
 156:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 15b:	73 68                	jae    1c5 <__abi_tag-0xff>
 15d:	6f                   	outsl  %ds:(%rsi),(%dx)
 15e:	6c                   	insb   (%dx),%es:(%rdi)
 15f:	64 65 2f             	fs gs (bad) 
 162:	64 65 76 2f          	fs gs jbe 195 <__abi_tag-0x12f>
 166:	6d                   	insl   (%dx),%es:(%rdi)
 167:	61                   	(bad)  
 168:	73 74                	jae    1de <__abi_tag-0xe6>
 16a:	65 72 2f             	gs jb  19c <__abi_tag-0x128>
 16d:	61                   	(bad)  
 16e:	70 2f                	jo     19f <__abi_tag-0x125>
 170:	73 69                	jae    1db <__abi_tag-0xe9>
 172:	6d                   	insl   (%dx),%es:(%rdi)
 173:	64 00 70 61          	add    %dh,%fs:0x61(%rax)
 177:	72 73                	jb     1ec <__abi_tag-0xd8>
 179:	65 5f                	gs pop %rdi
 17b:	61                   	(bad)  
 17c:	72 67                	jb     1e5 <__abi_tag-0xdf>
 17e:	73 00                	jae    180 <__abi_tag-0x144>
 180:	6c                   	insb   (%dx),%es:(%rdi)
 181:	6f                   	outsl  %ds:(%rsi),(%dx)
 182:	6e                   	outsb  %ds:(%rsi),(%dx)
 183:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 188:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 18c:	73 69                	jae    1f7 <__abi_tag-0xcd>
 18e:	67 6e                	outsb  %ds:(%esi),(%dx)
 190:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 195:	74 00                	je     197 <__abi_tag-0x12d>
 197:	61                   	(bad)  
 198:	72 67                	jb     201 <__abi_tag-0xc3>
 19a:	63 00                	movsxd (%rax),%eax
 19c:	61                   	(bad)  
 19d:	72 67                	jb     206 <__abi_tag-0xbe>
 19f:	76 00                	jbe    1a1 <__abi_tag-0x123>
 1a1:	63 68 61             	movsxd 0x61(%rax),%ebp
 1a4:	72 00                	jb     1a6 <__abi_tag-0x11e>
 1a6:	69 6e 69 74 00 61 00 	imul   $0x610074,0x69(%rsi),%ebp
 1ad:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1af:	75 62                	jne    213 <__abi_tag-0xb1>
 1b1:	6c                   	insb   (%dx),%es:(%rdi)
 1b2:	65 00 62 00          	add    %ah,%gs:0x0(%rdx)
 1b6:	69 00 64 6f 74 70    	imul   $0x70746f64,(%rax),%eax
 1bc:	72 6f                	jb     22d <__abi_tag-0x97>
 1be:	64 00 64 6f 74       	add    %ah,%fs:0x74(%rdi,%rbp,2)
 1c3:	70 72                	jo     237 <__abi_tag-0x8d>
 1c5:	6f                   	outsl  %ds:(%rsi),(%dx)
 1c6:	64 5f                	fs pop %rdi
 1c8:	32 78 00             	xor    0x0(%rax),%bh
 1cb:	5f                   	pop    %rdi
 1cc:	5f                   	pop    %rdi
 1cd:	41 52                	push   %r10
 1cf:	52                   	push   %rdx
 1d0:	41 59                	pop    %r9
 1d2:	5f                   	pop    %rdi
 1d3:	53                   	push   %rbx
 1d4:	49 5a                	rex.WB pop %r10
 1d6:	45 5f                	rex.RB pop %r15
 1d8:	54                   	push   %rsp
 1d9:	59                   	pop    %rcx
 1da:	50                   	push   %rax
 1db:	45 5f                	rex.RB pop %r15
 1dd:	5f                   	pop    %rdi
 1de:	00 6e 5f             	add    %ch,0x5f(%rsi)
 1e1:	31 00                	xor    %eax,(%rax)
 1e3:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1e5:	74 70                	je     257 <__abi_tag-0x6d>
 1e7:	72 6f                	jb     258 <__abi_tag-0x6c>
 1e9:	64 5f                	fs pop %rdi
 1eb:	34 78                	xor    $0x78,%al
 1ed:	00 74 65 73          	add    %dh,0x73(%rbp,%riz,2)
 1f1:	74 00                	je     1f3 <__abi_tag-0xd1>
 1f3:	6e                   	outsb  %ds:(%rsi),(%dx)
 1f4:	5f                   	pop    %rdi
 1f5:	34 00                	xor    $0x0,%al
 1f7:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1f9:	74 70                	je     26b <__abi_tag-0x59>
 1fb:	72 6f                	jb     26c <__abi_tag-0x58>
 1fd:	64 5f                	fs pop %rdi
 1ff:	38 78 00             	cmp    %bh,0x0(%rax)
 202:	6e                   	outsb  %ds:(%rsi),(%dx)
 203:	5f                   	pop    %rdi
 204:	38 00                	cmp    %al,(%rax)
 206:	64 6f                	outsl  %fs:(%rsi),(%dx)
 208:	74 70                	je     27a <__abi_tag-0x4a>
 20a:	72 6f                	jb     27b <__abi_tag-0x49>
 20c:	64 5f                	fs pop %rdi
 20e:	31 36                	xor    %esi,(%rsi)
 210:	78 00                	js     212 <__abi_tag-0xb2>
 212:	6e                   	outsb  %ds:(%rsi),(%dx)
 213:	5f                   	pop    %rdi
 214:	31 36                	xor    %esi,(%rsi)
 216:	00 61 6c             	add    %ah,0x6c(%rcx)
 219:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
 220:	6c                   	insb   (%dx),%es:(%rdi)
 221:	6c                   	insb   (%dx),%es:(%rdi)
 222:	6f                   	outsl  %ds:(%rsi),(%dx)
 223:	63 00                	movsxd (%rax),%eax
 225:	66 72 65             	data16 jb 28d <__abi_tag-0x37>
 228:	65 00 6d 61          	add    %ch,%gs:0x61(%rbp)
 22c:	69 6e 00 72 65 73 5f 	imul   $0x5f736572,0x0(%rsi),%ebp
 233:	32 78 00             	xor    0x0(%rax),%bh
 236:	72 65                	jb     29d <__abi_tag-0x27>
 238:	73 5f                	jae    299 <__abi_tag-0x2b>
 23a:	34 78                	xor    $0x78,%al
 23c:	00 72 65             	add    %dh,0x65(%rdx)
 23f:	73 5f                	jae    2a0 <__abi_tag-0x24>
 241:	38 78 00             	cmp    %bh,0x0(%rax)
 244:	72 65                	jb     2ab <__abi_tag-0x19>
 246:	73 00                	jae    248 <__abi_tag-0x7c>
 248:	72 65                	jb     2af <__abi_tag-0x15>
 24a:	73 5f                	jae    2ab <__abi_tag-0x19>
 24c:	31 36                	xor    %esi,(%rsi)
 24e:	78 00                	js     250 <__abi_tag-0x74>

Déassemblage de la section .debug_loc :

0000000000000000 <.debug_loc>:
   0:	00 01                	add    %al,(%rcx)
   2:	01 00                	add    %eax,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	89 10                	mov    %edx,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	89 10                	mov    %edx,(%rax)
  10:	00 00                	add    %al,(%rax)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	02 00                	add    (%rax),%al
  18:	91                   	xchg   %eax,%ecx
  19:	74 89                	je     ffffffffffffffa4 <_end+0xffffffffffffbf4c>
  1b:	10 00                	adc    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 91 10 00 00 00    	add    %dl,0x10(%rcx)
  27:	00 00                	add    %al,(%rax)
  29:	00 09                	add    %cl,(%rcx)
  2b:	00 91 74 94 04 0a    	add    %dl,0xa049474(%rcx)
  31:	40 80 21 9f          	rex andb $0x9f,(%rcx)
  35:	91                   	xchg   %eax,%ecx
  36:	10 00                	adc    %al,(%rax)
  38:	00 00                	add    %al,(%rax)
  3a:	00 00                	add    %al,(%rax)
  3c:	00 97 10 00 00 00    	add    %dl,0x10(%rdi)
  42:	00 00                	add    %al,(%rax)
  44:	00 02                	add    %al,(%rdx)
  46:	00 91 74 00 00 00    	add    %dl,0x74(%rcx)
	...
  60:	00 19                	add    %bl,(%rcx)
  62:	00 00                	add    %al,(%rax)
  64:	00 00                	add    %al,(%rax)
  66:	00 00                	add    %al,(%rax)
  68:	00 01                	add    %al,(%rcx)
  6a:	00 55 19             	add    %dl,0x19(%rbp)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 00                	add    %al,(%rax)
  71:	00 00                	add    %al,(%rax)
  73:	00 0e                	add    %cl,(%rsi)
  75:	04 00                	add    $0x0,%al
  77:	00 00                	add    %al,(%rax)
  79:	00 00                	add    %al,(%rax)
  7b:	00 04 00             	add    %al,(%rax,%rax,1)
  7e:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  82:	0e                   	(bad)  
  83:	04 00                	add    $0x0,%al
  85:	00 00                	add    %al,(%rax)
  87:	00 00                	add    %al,(%rax)
  89:	00 13                	add    %dl,(%rbx)
  8b:	04 00                	add    $0x0,%al
  8d:	00 00                	add    %al,(%rax)
  8f:	00 00                	add    %al,(%rax)
  91:	00 01                	add    %al,(%rcx)
  93:	00 55 13             	add    %dl,0x13(%rbp)
  96:	04 00                	add    $0x0,%al
  98:	00 00                	add    %al,(%rax)
  9a:	00 00                	add    %al,(%rax)
  9c:	00 97 0b 00 00 00    	add    %dl,0xb(%rdi)
  a2:	00 00                	add    %al,(%rax)
  a4:	00 04 00             	add    %al,(%rax,%rax,1)
  a7:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  c3:	1b 00                	sbb    (%rax),%eax
  c5:	00 00                	add    %al,(%rax)
  c7:	00 00                	add    %al,(%rax)
  c9:	00 00                	add    %al,(%rax)
  cb:	01 00                	add    %eax,(%rax)
  cd:	54                   	push   %rsp
  ce:	1b 00                	sbb    (%rax),%eax
  d0:	00 00                	add    %al,(%rax)
  d2:	00 00                	add    %al,(%rax)
  d4:	00 00                	add    %al,(%rax)
  d6:	0e                   	(bad)  
  d7:	04 00                	add    $0x0,%al
  d9:	00 00                	add    %al,(%rax)
  db:	00 00                	add    %al,(%rax)
  dd:	00 04 00             	add    %al,(%rax,%rax,1)
  e0:	f3 01 54 9f 0e       	repz add %edx,0xe(%rdi,%rbx,4)
  e5:	04 00                	add    $0x0,%al
  e7:	00 00                	add    %al,(%rax)
  e9:	00 00                	add    %al,(%rax)
  eb:	00 18                	add    %bl,(%rax)
  ed:	04 00                	add    $0x0,%al
  ef:	00 00                	add    %al,(%rax)
  f1:	00 00                	add    %al,(%rax)
  f3:	00 01                	add    %al,(%rcx)
  f5:	00 54 18 04          	add    %dl,0x4(%rax,%rbx,1)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 00                	add    %al,(%rax)
  ff:	97                   	xchg   %eax,%edi
 100:	0b 00                	or     (%rax),%eax
 102:	00 00                	add    %al,(%rax)
 104:	00 00                	add    %al,(%rax)
 106:	00 04 00             	add    %al,(%rax,%rax,1)
 109:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 122:	00 00                	add    %al,(%rax)
 124:	00 19                	add    %bl,(%rcx)
 126:	00 00                	add    %al,(%rax)
 128:	00 00                	add    %al,(%rax)
 12a:	00 00                	add    %al,(%rax)
 12c:	00 01                	add    %al,(%rcx)
 12e:	00 55 0e             	add    %dl,0xe(%rbp)
 131:	04 00                	add    $0x0,%al
 133:	00 00                	add    %al,(%rax)
 135:	00 00                	add    %al,(%rax)
 137:	00 13                	add    %dl,(%rbx)
 139:	04 00                	add    $0x0,%al
 13b:	00 00                	add    %al,(%rax)
 13d:	00 00                	add    %al,(%rax)
 13f:	00 01                	add    %al,(%rcx)
 141:	00 55 00             	add    %dl,0x0(%rbp)
	...
 158:	00 00                	add    %al,(%rax)
 15a:	00 1b                	add    %bl,(%rbx)
 15c:	00 00                	add    %al,(%rax)
 15e:	00 00                	add    %al,(%rax)
 160:	00 00                	add    %al,(%rax)
 162:	00 01                	add    %al,(%rcx)
 164:	00 54 0e 04          	add    %dl,0x4(%rsi,%rcx,1)
 168:	00 00                	add    %al,(%rax)
 16a:	00 00                	add    %al,(%rax)
 16c:	00 00                	add    %al,(%rax)
 16e:	18 04 00             	sbb    %al,(%rax,%rax,1)
 171:	00 00                	add    %al,(%rax)
 173:	00 00                	add    %al,(%rax)
 175:	00 01                	add    %al,(%rcx)
 177:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
	...
 187:	00 00                	add    %al,(%rax)
 189:	28 00                	sub    %al,(%rax)
 18b:	00 00                	add    %al,(%rax)
 18d:	00 00                	add    %al,(%rax)
 18f:	00 00                	add    %al,(%rax)
 191:	0e                   	(bad)  
 192:	04 00                	add    $0x0,%al
 194:	00 00                	add    %al,(%rax)
 196:	00 00                	add    %al,(%rax)
 198:	00 01                	add    %al,(%rcx)
 19a:	00 5f 18             	add    %bl,0x18(%rdi)
 19d:	04 00                	add    $0x0,%al
 19f:	00 00                	add    %al,(%rax)
 1a1:	00 00                	add    %al,(%rax)
 1a3:	00 96 0b 00 00 00    	add    %dl,0xb(%rsi)
 1a9:	00 00                	add    %al,(%rax)
 1ab:	00 01                	add    %al,(%rcx)
 1ad:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 1bc:	00 00                	add    %al,(%rax)
 1be:	00 40 00             	add    %al,0x0(%rax)
 1c1:	00 00                	add    %al,(%rax)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	00 00                	add    %al,(%rax)
 1c7:	0e                   	(bad)  
 1c8:	04 00                	add    $0x0,%al
 1ca:	00 00                	add    %al,(%rax)
 1cc:	00 00                	add    %al,(%rax)
 1ce:	00 01                	add    %al,(%rcx)
 1d0:	00 5e 18             	add    %bl,0x18(%rsi)
 1d3:	04 00                	add    $0x0,%al
 1d5:	00 00                	add    %al,(%rax)
 1d7:	00 00                	add    %al,(%rax)
 1d9:	00 94 0b 00 00 00 00 	add    %dl,0x0(%rbx,%rcx,1)
 1e0:	00 00                	add    %al,(%rax)
 1e2:	01 00                	add    %eax,(%rax)
 1e4:	5e                   	pop    %rsi
	...
 1f5:	50                   	push   %rax
 1f6:	00 00                	add    %al,(%rax)
 1f8:	00 00                	add    %al,(%rax)
 1fa:	00 00                	add    %al,(%rax)
 1fc:	00 64 02 00          	add    %ah,0x0(%rdx,%rax,1)
 200:	00 00                	add    %al,(%rax)
 202:	00 00                	add    %al,(%rax)
 204:	00 02                	add    %al,(%rdx)
 206:	00 30                	add    %dh,(%rax)
 208:	9f                   	lahf   
 209:	64 02 00             	add    %fs:(%rax),%al
 20c:	00 00                	add    %al,(%rax)
 20e:	00 00                	add    %al,(%rax)
 210:	00 80 02 00 00 00    	add    %al,0x2(%rax)
 216:	00 00                	add    %al,(%rax)
 218:	00 01                	add    %al,(%rcx)
 21a:	00 50 00             	add    %dl,0x0(%rax)
	...
 229:	00 00                	add    %al,(%rax)
 22b:	00 50 00             	add    %dl,0x0(%rax)
 22e:	00 00                	add    %al,(%rax)
 230:	00 00                	add    %al,(%rax)
 232:	00 00                	add    %al,(%rax)
 234:	91                   	xchg   %eax,%ecx
 235:	02 00                	add    (%rax),%al
 237:	00 00                	add    %al,(%rax)
 239:	00 00                	add    %al,(%rax)
 23b:	00 01                	add    %al,(%rcx)
 23d:	00 53 00             	add    %dl,0x0(%rbx)
	...
 24c:	00 00                	add    %al,(%rax)
 24e:	00 50 00             	add    %dl,0x0(%rax)
 251:	00 00                	add    %al,(%rax)
 253:	00 00                	add    %al,(%rax)
 255:	00 00                	add    %al,(%rax)
 257:	0e                   	(bad)  
 258:	04 00                	add    $0x0,%al
 25a:	00 00                	add    %al,(%rax)
 25c:	00 00                	add    %al,(%rax)
 25e:	00 01                	add    %al,(%rcx)
 260:	00 53 18             	add    %dl,0x18(%rbx)
 263:	04 00                	add    $0x0,%al
 265:	00 00                	add    %al,(%rax)
 267:	00 00                	add    %al,(%rax)
 269:	00 92 0b 00 00 00    	add    %dl,0xb(%rdx)
 26f:	00 00                	add    %al,(%rax)
 271:	00 01                	add    %al,(%rcx)
 273:	00 53 00             	add    %dl,0x0(%rbx)
	...
 282:	00 00                	add    %al,(%rax)
 284:	00 50 00             	add    %dl,0x0(%rax)
 287:	00 00                	add    %al,(%rax)
 289:	00 00                	add    %al,(%rax)
 28b:	00 00                	add    %al,(%rax)
 28d:	91                   	xchg   %eax,%ecx
 28e:	02 00                	add    (%rax),%al
 290:	00 00                	add    %al,(%rax)
 292:	00 00                	add    %al,(%rax)
 294:	00 01                	add    %al,(%rcx)
 296:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 50 00             	add    %dl,0x0(%rax)
 2aa:	00 00                	add    %al,(%rax)
 2ac:	00 00                	add    %al,(%rax)
 2ae:	00 00                	add    %al,(%rax)
 2b0:	91                   	xchg   %eax,%ecx
 2b1:	02 00                	add    (%rax),%al
 2b3:	00 00                	add    %al,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 01                	add    %al,(%rcx)
 2b9:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 2c8:	00 00                	add    %al,(%rax)
 2ca:	00 62 09             	add    %ah,0x9(%rdx)
 2cd:	00 00                	add    %al,(%rax)
 2cf:	00 00                	add    %al,(%rax)
 2d1:	00 00                	add    %al,(%rax)
 2d3:	74 09                	je     2de <__abi_tag+0x1a>
 2d5:	00 00                	add    %al,(%rax)
 2d7:	00 00                	add    %al,(%rax)
 2d9:	00 00                	add    %al,(%rax)
 2db:	08 00                	or     %al,(%rax)
 2dd:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 2e3:	93                   	xchg   %eax,%ebx
 2e4:	08 9d 09 00 00 00    	or     %bl,0x9(%rbp)
 2ea:	00 00                	add    %al,(%rax)
 2ec:	00 ab 09 00 00 00    	add    %ch,0x9(%rbx)
 2f2:	00 00                	add    %al,(%rax)
 2f4:	00 08                	add    %cl,(%rax)
 2f6:	00 30                	add    %dh,(%rax)
 2f8:	9f                   	lahf   
 2f9:	93                   	xchg   %eax,%ebx
 2fa:	08 30                	or     %dh,(%rax)
 2fc:	9f                   	lahf   
 2fd:	93                   	xchg   %eax,%ebx
 2fe:	08 00                	or     %al,(%rax)
	...
 30c:	00 00                	add    %al,(%rax)
 30e:	00 30                	add    %dh,(%rax)
 310:	04 00                	add    $0x0,%al
 312:	00 00                	add    %al,(%rax)
 314:	00 00                	add    %al,(%rax)
 316:	00 38                	add    %bh,(%rax)
 318:	04 00                	add    $0x0,%al
 31a:	00 00                	add    %al,(%rax)
 31c:	00 00                	add    %al,(%rax)
 31e:	00 02                	add    %al,(%rdx)
 320:	00 30                	add    %dh,(%rax)
 322:	9f                   	lahf   
 323:	38 04 00             	cmp    %al,(%rax,%rax,1)
 326:	00 00                	add    %al,(%rax)
 328:	00 00                	add    %al,(%rax)
 32a:	00 5e 04             	add    %bl,0x4(%rsi)
 32d:	00 00                	add    %al,(%rax)
 32f:	00 00                	add    %al,(%rax)
 331:	00 00                	add    %al,(%rax)
 333:	01 00                	add    %eax,(%rax)
 335:	50                   	push   %rax
 336:	f2 09 00             	repnz or %eax,(%rax)
 339:	00 00                	add    %al,(%rax)
 33b:	00 00                	add    %al,(%rax)
 33d:	00 f8                	add    %bh,%al
 33f:	09 00                	or     %eax,(%rax)
 341:	00 00                	add    %al,(%rax)
 343:	00 00                	add    %al,(%rax)
 345:	00 02                	add    %al,(%rdx)
 347:	00 30                	add    %dh,(%rax)
 349:	9f                   	lahf   
	...
 35a:	30 04 00             	xor    %al,(%rax,%rax,1)
 35d:	00 00                	add    %al,(%rax)
 35f:	00 00                	add    %al,(%rax)
 361:	00 38                	add    %bh,(%rax)
 363:	04 00                	add    $0x0,%al
 365:	00 00                	add    %al,(%rax)
 367:	00 00                	add    %al,(%rax)
 369:	00 10                	add    %dl,(%rax)
 36b:	00 30                	add    %dh,(%rax)
 36d:	9f                   	lahf   
 36e:	93                   	xchg   %eax,%ebx
 36f:	08 30                	or     %dh,(%rax)
 371:	9f                   	lahf   
 372:	93                   	xchg   %eax,%ebx
 373:	08 30                	or     %dh,(%rax)
 375:	9f                   	lahf   
 376:	93                   	xchg   %eax,%ebx
 377:	08 30                	or     %dh,(%rax)
 379:	9f                   	lahf   
 37a:	93                   	xchg   %eax,%ebx
 37b:	08 f2                	or     %dh,%dl
 37d:	09 00                	or     %eax,(%rax)
 37f:	00 00                	add    %al,(%rax)
 381:	00 00                	add    %al,(%rax)
 383:	00 f8                	add    %bh,%al
 385:	09 00                	or     %eax,(%rax)
 387:	00 00                	add    %al,(%rax)
 389:	00 00                	add    %al,(%rax)
 38b:	00 10                	add    %dl,(%rax)
 38d:	00 30                	add    %dh,(%rax)
 38f:	9f                   	lahf   
 390:	93                   	xchg   %eax,%ebx
 391:	08 30                	or     %dh,(%rax)
 393:	9f                   	lahf   
 394:	93                   	xchg   %eax,%ebx
 395:	08 30                	or     %dh,(%rax)
 397:	9f                   	lahf   
 398:	93                   	xchg   %eax,%ebx
 399:	08 30                	or     %dh,(%rax)
 39b:	9f                   	lahf   
 39c:	93                   	xchg   %eax,%ebx
 39d:	08 00                	or     %al,(%rax)
	...
 3ab:	00 00                	add    %al,(%rax)
 3ad:	00 30                	add    %dh,(%rax)
 3af:	04 00                	add    $0x0,%al
 3b1:	00 00                	add    %al,(%rax)
 3b3:	00 00                	add    %al,(%rax)
 3b5:	00 cf                	add    %cl,%bh
 3b7:	04 00                	add    $0x0,%al
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 00                	add    %al,(%rax)
 3bd:	00 01                	add    %al,(%rcx)
 3bf:	00 5f f2             	add    %bl,-0xe(%rdi)
 3c2:	09 00                	or     %eax,(%rax)
 3c4:	00 00                	add    %al,(%rax)
 3c6:	00 00                	add    %al,(%rax)
 3c8:	00 f8                	add    %bh,%al
 3ca:	09 00                	or     %eax,(%rax)
 3cc:	00 00                	add    %al,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	00 01                	add    %al,(%rcx)
 3d2:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 30                	add    %dh,(%rax)
 3e5:	04 00                	add    $0x0,%al
 3e7:	00 00                	add    %al,(%rax)
 3e9:	00 00                	add    %al,(%rax)
 3eb:	00 cf                	add    %cl,%bh
 3ed:	04 00                	add    $0x0,%al
 3ef:	00 00                	add    %al,(%rax)
 3f1:	00 00                	add    %al,(%rax)
 3f3:	00 01                	add    %al,(%rcx)
 3f5:	00 53 f2             	add    %dl,-0xe(%rbx)
 3f8:	09 00                	or     %eax,(%rax)
 3fa:	00 00                	add    %al,(%rax)
 3fc:	00 00                	add    %al,(%rax)
 3fe:	00 f8                	add    %bh,%al
 400:	09 00                	or     %eax,(%rax)
 402:	00 00                	add    %al,(%rax)
 404:	00 00                	add    %al,(%rax)
 406:	00 01                	add    %al,(%rcx)
 408:	00 53 00             	add    %dl,0x0(%rbx)
	...
 417:	00 00                	add    %al,(%rax)
 419:	00 30                	add    %dh,(%rax)
 41b:	04 00                	add    $0x0,%al
 41d:	00 00                	add    %al,(%rax)
 41f:	00 00                	add    %al,(%rax)
 421:	00 cf                	add    %cl,%bh
 423:	04 00                	add    $0x0,%al
 425:	00 00                	add    %al,(%rax)
 427:	00 00                	add    %al,(%rax)
 429:	00 01                	add    %al,(%rcx)
 42b:	00 5e f2             	add    %bl,-0xe(%rsi)
 42e:	09 00                	or     %eax,(%rax)
 430:	00 00                	add    %al,(%rax)
 432:	00 00                	add    %al,(%rax)
 434:	00 f8                	add    %bh,%al
 436:	09 00                	or     %eax,(%rax)
 438:	00 00                	add    %al,(%rax)
 43a:	00 00                	add    %al,(%rax)
 43c:	00 01                	add    %al,(%rcx)
 43e:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 30                	add    %dh,(%rax)
 451:	04 00                	add    $0x0,%al
 453:	00 00                	add    %al,(%rax)
 455:	00 00                	add    %al,(%rax)
 457:	00 4b 09             	add    %cl,0x9(%rbx)
 45a:	00 00                	add    %al,(%rax)
 45c:	00 00                	add    %al,(%rax)
 45e:	00 00                	add    %al,(%rax)
 460:	02 00                	add    (%rax),%al
 462:	77 10                	ja     474 <__abi_tag+0x1b0>
 464:	f2 09 00             	repnz or %eax,(%rax)
 467:	00 00                	add    %al,(%rax)
 469:	00 00                	add    %al,(%rax)
 46b:	00 97 0b 00 00 00    	add    %dl,0xb(%rdi)
 471:	00 00                	add    %al,(%rax)
 473:	00 02                	add    %al,(%rdx)
 475:	00 77 10             	add    %dh,0x10(%rdi)
	...
 488:	64 04 00             	fs add $0x0,%al
 48b:	00 00                	add    %al,(%rax)
 48d:	00 00                	add    %al,(%rax)
 48f:	00 b6 04 00 00 00    	add    %dh,0x4(%rsi)
 495:	00 00                	add    %al,(%rax)
 497:	00 03                	add    %al,(%rbx)
 499:	00 7f 7c             	add    %bh,0x7c(%rdi)
 49c:	9f                   	lahf   
	...
 4ad:	64 04 00             	fs add $0x0,%al
 4b0:	00 00                	add    %al,(%rax)
 4b2:	00 00                	add    %al,(%rax)
 4b4:	00 71 04             	add    %dh,0x4(%rcx)
 4b7:	00 00                	add    %al,(%rax)
 4b9:	00 00                	add    %al,(%rax)
 4bb:	00 00                	add    %al,(%rax)
 4bd:	03 00                	add    (%rax),%eax
 4bf:	7f 7d                	jg     53e <__abi_tag+0x27a>
 4c1:	9f                   	lahf   
 4c2:	ac                   	lods   %ds:(%rsi),%al
 4c3:	04 00                	add    $0x0,%al
 4c5:	00 00                	add    %al,(%rax)
 4c7:	00 00                	add    %al,(%rax)
 4c9:	00 b6 04 00 00 00    	add    %dh,0x4(%rsi)
 4cf:	00 00                	add    %al,(%rax)
 4d1:	00 01                	add    %al,(%rcx)
 4d3:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 4e2:	00 00                	add    %al,(%rax)
 4e4:	00 91 0a 00 00 00    	add    %dl,0xa(%rcx)
 4ea:	00 00                	add    %al,(%rax)
 4ec:	00 97 0a 00 00 00    	add    %dl,0xa(%rdi)
 4f2:	00 00                	add    %al,(%rax)
 4f4:	00 01                	add    %al,(%rcx)
 4f6:	00 61 97             	add    %ah,-0x69(%rcx)
 4f9:	0a 00                	or     (%rax),%al
 4fb:	00 00                	add    %al,(%rax)
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 97 0b 00 00 00    	add    %dl,0xb(%rdi)
 505:	00 00                	add    %al,(%rax)
 507:	00 02                	add    %al,(%rdx)
 509:	00 77 20             	add    %dh,0x20(%rdi)
	...
 51c:	cf                   	iret   
 51d:	04 00                	add    $0x0,%al
 51f:	00 00                	add    %al,(%rax)
 521:	00 00                	add    %al,(%rax)
 523:	00 38                	add    %bh,(%rax)
 525:	05 00 00 00 00       	add    $0x0,%eax
 52a:	00 00                	add    %al,(%rax)
 52c:	01 00                	add    %eax,(%rax)
 52e:	50                   	push   %rax
	...
 53f:	cf                   	iret   
 540:	04 00                	add    $0x0,%al
 542:	00 00                	add    %al,(%rax)
 544:	00 00                	add    %al,(%rax)
 546:	00 6d 05             	add    %ch,0x5(%rbp)
 549:	00 00                	add    %al,(%rax)
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	0a 00                	or     (%rax),%al
 551:	93                   	xchg   %eax,%ebx
 552:	10 6d 93             	adc    %ch,-0x6d(%rbp)
 555:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
 55b:	6d                   	insl   (%dx),%es:(%rdi)
 55c:	05 00 00 00 00       	add    $0x0,%eax
 561:	00 00                	add    %al,(%rax)
 563:	74 05                	je     56a <__abi_tag+0x2a6>
 565:	00 00                	add    %al,(%rax)
 567:	00 00                	add    %al,(%rax)
 569:	00 00                	add    %al,(%rax)
 56b:	0d 00 61 93 08       	or     $0x8936100,%eax
 570:	93                   	xchg   %eax,%ebx
 571:	08 6d 93             	or     %ch,-0x6d(%rbp)
 574:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
 57a:	74 05                	je     581 <__abi_tag+0x2bd>
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	00 00                	add    %al,(%rax)
 582:	e2 05                	loop   589 <__abi_tag+0x2c5>
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	00 00                	add    %al,(%rax)
 58a:	0a 00                	or     (%rax),%al
 58c:	93                   	xchg   %eax,%ebx
 58d:	10 6d 93             	adc    %ch,-0x6d(%rbp)
 590:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
 596:	e2 05                	loop   59d <__abi_tag+0x2d9>
 598:	00 00                	add    %al,(%rax)
 59a:	00 00                	add    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	f3 05 00 00 00 00    	repz add $0x0,%eax
 5a4:	00 00                	add    %al,(%rax)
 5a6:	0d 00 6e 93 08       	or     $0x8936e00,%eax
 5ab:	93                   	xchg   %eax,%ebx
 5ac:	08 6d 93             	or     %ch,-0x6d(%rbp)
 5af:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
	...
 5c5:	cf                   	iret   
 5c6:	04 00                	add    $0x0,%al
 5c8:	00 00                	add    %al,(%rax)
 5ca:	00 00                	add    %al,(%rax)
 5cc:	00 f3                	add    %dh,%bl
 5ce:	05 00 00 00 00       	add    $0x0,%eax
 5d3:	00 00                	add    %al,(%rax)
 5d5:	01 00                	add    %eax,(%rax)
 5d7:	5f                   	pop    %rdi
	...
 5e8:	cf                   	iret   
 5e9:	04 00                	add    $0x0,%al
 5eb:	00 00                	add    %al,(%rax)
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 f3                	add    %dh,%bl
 5f1:	05 00 00 00 00       	add    $0x0,%eax
 5f6:	00 00                	add    %al,(%rax)
 5f8:	01 00                	add    %eax,(%rax)
 5fa:	53                   	push   %rbx
	...
 60b:	cf                   	iret   
 60c:	04 00                	add    $0x0,%al
 60e:	00 00                	add    %al,(%rax)
 610:	00 00                	add    %al,(%rax)
 612:	00 f3                	add    %dh,%bl
 614:	05 00 00 00 00       	add    $0x0,%eax
 619:	00 00                	add    %al,(%rax)
 61b:	01 00                	add    %eax,(%rax)
 61d:	5e                   	pop    %rsi
	...
 62e:	4e 05 00 00 00 00    	rex.WRX add $0x0,%rax
 634:	00 00                	add    %al,(%rax)
 636:	d2 05 00 00 00 00    	rolb   %cl,0x0(%rip)        # 63c <__abi_tag+0x378>
 63c:	00 00                	add    %al,(%rax)
 63e:	03 00                	add    (%rax),%eax
 640:	7f 78                	jg     6ba <__abi_tag+0x3f6>
 642:	9f                   	lahf   
	...
 653:	4e 05 00 00 00 00    	rex.WRX add $0x0,%rax
 659:	00 00                	add    %al,(%rax)
 65b:	5b                   	pop    %rbx
 65c:	05 00 00 00 00       	add    $0x0,%eax
 661:	00 00                	add    %al,(%rax)
 663:	03 00                	add    (%rax),%eax
 665:	7f 79                	jg     6e0 <__abi_tag+0x41c>
 667:	9f                   	lahf   
	...
 678:	f3 05 00 00 00 00    	repz add $0x0,%eax
 67e:	00 00                	add    %al,(%rax)
 680:	9a                   	(bad)  
 681:	06                   	(bad)  
 682:	00 00                	add    %al,(%rax)
 684:	00 00                	add    %al,(%rax)
 686:	00 00                	add    %al,(%rax)
 688:	01 00                	add    %eax,(%rax)
 68a:	50                   	push   %rax
	...
 69b:	f3 05 00 00 00 00    	repz add $0x0,%eax
 6a1:	00 00                	add    %al,(%rax)
 6a3:	4b 09 00             	rex.WXB or %rax,(%r8)
 6a6:	00 00                	add    %al,(%rax)
 6a8:	00 00                	add    %al,(%rax)
 6aa:	00 0a                	add    %cl,(%rdx)
 6ac:	00 93 10 63 93 08    	add    %dl,0x8936310(%rbx)
 6b2:	93                   	xchg   %eax,%ebx
 6b3:	50                   	push   %rax
 6b4:	62 93                	(bad)  
 6b6:	08 97 0a 00 00 00    	or     %dl,0xa(%rdi)
 6bc:	00 00                	add    %al,(%rax)
 6be:	00 20                	add    %ah,(%rax)
 6c0:	0b 00                	or     (%rax),%eax
 6c2:	00 00                	add    %al,(%rax)
 6c4:	00 00                	add    %al,(%rax)
 6c6:	00 03                	add    %al,(%rbx)
 6c8:	00 66 93             	add    %ah,-0x6d(%rsi)
 6cb:	08 00                	or     %al,(%rax)
	...
 6d9:	00 00                	add    %al,(%rax)
 6db:	00 f3                	add    %dh,%bl
 6dd:	05 00 00 00 00       	add    $0x0,%eax
 6e2:	00 00                	add    %al,(%rax)
 6e4:	4b 09 00             	rex.WXB or %rax,(%r8)
 6e7:	00 00                	add    %al,(%rax)
 6e9:	00 00                	add    %al,(%rax)
 6eb:	00 01                	add    %al,(%rcx)
 6ed:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 6fc:	00 00                	add    %al,(%rax)
 6fe:	00 f3                	add    %dh,%bl
 700:	05 00 00 00 00       	add    $0x0,%eax
 705:	00 00                	add    %al,(%rax)
 707:	4b 09 00             	rex.WXB or %rax,(%r8)
 70a:	00 00                	add    %al,(%rax)
 70c:	00 00                	add    %al,(%rax)
 70e:	00 01                	add    %al,(%rcx)
 710:	00 53 00             	add    %dl,0x0(%rbx)
	...
 71f:	00 00                	add    %al,(%rax)
 721:	00 f3                	add    %dh,%bl
 723:	05 00 00 00 00       	add    $0x0,%eax
 728:	00 00                	add    %al,(%rax)
 72a:	4b 09 00             	rex.WXB or %rax,(%r8)
 72d:	00 00                	add    %al,(%rax)
 72f:	00 00                	add    %al,(%rax)
 731:	00 01                	add    %al,(%rcx)
 733:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 742:	00 00                	add    %al,(%rax)
 744:	00 a4 06 00 00 00 00 	add    %ah,0x0(%rsi,%rax,1)
 74b:	00 00                	add    %al,(%rax)
 74d:	b0 06                	mov    $0x6,%al
 74f:	00 00                	add    %al,(%rax)
 751:	00 00                	add    %al,(%rax)
 753:	00 00                	add    %al,(%rax)
 755:	03 00                	add    (%rax),%eax
 757:	7f 71                	jg     7ca <__abi_tag+0x506>
 759:	9f                   	lahf   
	...
 76a:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 76b:	06                   	(bad)  
 76c:	00 00                	add    %al,(%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	00 00                	add    %al,(%rax)
 772:	b0 06                	mov    $0x6,%al
 774:	00 00                	add    %al,(%rax)
 776:	00 00                	add    %al,(%rax)
 778:	00 00                	add    %al,(%rax)
 77a:	03 00                	add    (%rax),%eax
 77c:	7f 70                	jg     7ee <__abi_tag+0x52a>
 77e:	9f                   	lahf   
	...
 78f:	4b 09 00             	rex.WXB or %rax,(%r8)
 792:	00 00                	add    %al,(%rax)
 794:	00 00                	add    %al,(%rax)
 796:	00 5d 09             	add    %bl,0x9(%rbp)
 799:	00 00                	add    %al,(%rax)
 79b:	00 00                	add    %al,(%rax)
 79d:	00 00                	add    %al,(%rax)
 79f:	01 00                	add    %eax,(%rax)
 7a1:	50                   	push   %rax
	...
 7b2:	4b 09 00             	rex.WXB or %rax,(%r8)
 7b5:	00 00                	add    %al,(%rax)
 7b7:	00 00                	add    %al,(%rax)
 7b9:	00 5d 09             	add    %bl,0x9(%rbp)
 7bc:	00 00                	add    %al,(%rax)
 7be:	00 00                	add    %al,(%rax)
 7c0:	00 00                	add    %al,(%rax)
 7c2:	01 00                	add    %eax,(%rax)
 7c4:	62                   	(bad)  
	...
 7d5:	62                   	(bad)  
 7d6:	09 00                	or     %eax,(%rax)
 7d8:	00 00                	add    %al,(%rax)
 7da:	00 00                	add    %al,(%rax)
 7dc:	00 6c 09 00          	add    %ch,0x0(%rcx,%rcx,1)
 7e0:	00 00                	add    %al,(%rax)
 7e2:	00 00                	add    %al,(%rax)
 7e4:	00 01                	add    %al,(%rcx)
 7e6:	00 62 6c             	add    %ah,0x6c(%rdx)
 7e9:	09 00                	or     %eax,(%rax)
 7eb:	00 00                	add    %al,(%rax)
 7ed:	00 00                	add    %al,(%rax)
 7ef:	00 f8                	add    %bh,%al
 7f1:	09 00                	or     %eax,(%rax)
 7f3:	00 00                	add    %al,(%rax)
 7f5:	00 00                	add    %al,(%rax)
 7f7:	00 02                	add    %al,(%rdx)
 7f9:	00 77 18             	add    %dh,0x18(%rdi)
	...
 80c:	62                   	(bad)  
 80d:	09 00                	or     %eax,(%rax)
 80f:	00 00                	add    %al,(%rax)
 811:	00 00                	add    %al,(%rax)
 813:	00 f8                	add    %bh,%al
 815:	09 00                	or     %eax,(%rax)
 817:	00 00                	add    %al,(%rax)
 819:	00 00                	add    %al,(%rax)
 81b:	00 01                	add    %al,(%rcx)
 81d:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 82c:	00 00                	add    %al,(%rax)
 82e:	00 62 09             	add    %ah,0x9(%rdx)
 831:	00 00                	add    %al,(%rax)
 833:	00 00                	add    %al,(%rax)
 835:	00 00                	add    %al,(%rax)
 837:	f8                   	clc    
 838:	09 00                	or     %eax,(%rax)
 83a:	00 00                	add    %al,(%rax)
 83c:	00 00                	add    %al,(%rax)
 83e:	00 01                	add    %al,(%rcx)
 840:	00 53 00             	add    %dl,0x0(%rbx)
	...
 84f:	00 00                	add    %al,(%rax)
 851:	00 62 09             	add    %ah,0x9(%rdx)
 854:	00 00                	add    %al,(%rax)
 856:	00 00                	add    %al,(%rax)
 858:	00 00                	add    %al,(%rax)
 85a:	f8                   	clc    
 85b:	09 00                	or     %eax,(%rax)
 85d:	00 00                	add    %al,(%rax)
 85f:	00 00                	add    %al,(%rax)
 861:	00 01                	add    %al,(%rcx)
 863:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 872:	00 00                	add    %al,(%rax)
 874:	00 74 09 00          	add    %dh,0x0(%rcx,%rcx,1)
 878:	00 00                	add    %al,(%rax)
 87a:	00 00                	add    %al,(%rax)
 87c:	00 9d 09 00 00 00    	add    %bl,0x9(%rbp)
 882:	00 00                	add    %al,(%rax)
 884:	00 01                	add    %al,(%rcx)
 886:	00 50 00             	add    %dl,0x0(%rax)
	...
 895:	00 00                	add    %al,(%rax)
 897:	00 9d 09 00 00 00    	add    %bl,0x9(%rbp)
 89d:	00 00                	add    %al,(%rax)
 89f:	00 ab 09 00 00 00    	add    %ch,0x9(%rbx)
 8a5:	00 00                	add    %al,(%rax)
 8a7:	00 02                	add    %al,(%rdx)
 8a9:	00 30                	add    %dh,(%rax)
 8ab:	9f                   	lahf   
 8ac:	ab                   	stos   %eax,%es:(%rdi)
 8ad:	09 00                	or     %eax,(%rax)
 8af:	00 00                	add    %al,(%rax)
 8b1:	00 00                	add    %al,(%rax)
 8b3:	00 c8                	add    %cl,%al
 8b5:	09 00                	or     %eax,(%rax)
 8b7:	00 00                	add    %al,(%rax)
 8b9:	00 00                	add    %al,(%rax)
 8bb:	00 01                	add    %al,(%rcx)
 8bd:	00 52 00             	add    %dl,0x0(%rdx)
	...
 8cc:	00 00                	add    %al,(%rax)
 8ce:	00 a7 09 00 00 00    	add    %ah,0x9(%rdi)
 8d4:	00 00                	add    %al,(%rax)
 8d6:	00 f8                	add    %bh,%al
 8d8:	09 00                	or     %eax,(%rax)
 8da:	00 00                	add    %al,(%rax)
 8dc:	00 00                	add    %al,(%rax)
 8de:	00 01                	add    %al,(%rcx)
 8e0:	00 50 00             	add    %dl,0x0(%rax)
	...

Déassemblage de la section .debug_ranges :

0000000000000000 <.debug_ranges>:
   0:	80 10 00             	adcb   $0x0,(%rax)
   3:	00 00                	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 97 10 00 00 00    	add    %dl,0x10(%rdi)
	...
  25:	00 00                	add    %al,(%rax)
  27:	00 28                	add    %ch,(%rax)
  29:	00 00                	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
  2f:	00 0e                	add    %cl,(%rsi)
  31:	04 00                	add    $0x0,%al
  33:	00 00                	add    %al,(%rax)
  35:	00 00                	add    %al,(%rax)
  37:	00 18                	add    %bl,(%rax)
  39:	04 00                	add    $0x0,%al
	...
  4f:	00 50 00             	add    %dl,0x0(%rax)
  52:	00 00                	add    %al,(%rax)
  54:	00 00                	add    %al,(%rax)
  56:	00 00                	add    %al,(%rax)
  58:	84 02                	test   %al,(%rdx)
  5a:	00 00                	add    %al,(%rax)
  5c:	00 00                	add    %al,(%rax)
  5e:	00 00                	add    %al,(%rax)
  60:	2d 04 00 00 00       	sub    $0x4,%eax
  65:	00 00                	add    %al,(%rax)
  67:	00 30                	add    %dh,(%rax)
  69:	04 00                	add    $0x0,%al
  6b:	00 00                	add    %al,(%rax)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 ef                	add    %ch,%bh
  71:	09 00                	or     %eax,(%rax)
  73:	00 00                	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 f2                	add    %dh,%dl
  79:	09 00                	or     %eax,(%rax)
	...
  8f:	00 50 00             	add    %dl,0x0(%rax)
  92:	00 00                	add    %al,(%rax)
  94:	00 00                	add    %al,(%rax)
  96:	00 00                	add    %al,(%rax)
  98:	84 02                	test   %al,(%rdx)
  9a:	00 00                	add    %al,(%rax)
  9c:	00 00                	add    %al,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	2d 04 00 00 00       	sub    $0x4,%eax
  a5:	00 00                	add    %al,(%rax)
  a7:	00 30                	add    %dh,(%rax)
  a9:	04 00                	add    $0x0,%al
  ab:	00 00                	add    %al,(%rax)
  ad:	00 00                	add    %al,(%rax)
  af:	00 ef                	add    %ch,%bh
  b1:	09 00                	or     %eax,(%rax)
  b3:	00 00                	add    %al,(%rax)
  b5:	00 00                	add    %al,(%rax)
  b7:	00 f2                	add    %dh,%dl
  b9:	09 00                	or     %eax,(%rax)
	...
  cf:	00 84 02 00 00 00 00 	add    %al,0x0(%rdx,%rax,1)
  d6:	00 00                	add    %al,(%rax)
  d8:	0e                   	(bad)  
  d9:	04 00                	add    $0x0,%al
  db:	00 00                	add    %al,(%rax)
  dd:	00 00                	add    %al,(%rax)
  df:	00 4b 09             	add    %cl,0x9(%rbx)
  e2:	00 00                	add    %al,(%rax)
  e4:	00 00                	add    %al,(%rax)
  e6:	00 00                	add    %al,(%rax)
  e8:	62                   	(bad)  
  e9:	09 00                	or     %eax,(%rax)
	...
  ff:	00 84 02 00 00 00 00 	add    %al,0x0(%rdx,%rax,1)
 106:	00 00                	add    %al,(%rax)
 108:	0e                   	(bad)  
 109:	04 00                	add    $0x0,%al
 10b:	00 00                	add    %al,(%rax)
 10d:	00 00                	add    %al,(%rax)
 10f:	00 4b 09             	add    %cl,0x9(%rbx)
 112:	00 00                	add    %al,(%rax)
 114:	00 00                	add    %al,(%rax)
 116:	00 00                	add    %al,(%rax)
 118:	62                   	(bad)  
 119:	09 00                	or     %eax,(%rax)
	...
 12f:	00 18                	add    %bl,(%rax)
 131:	04 00                	add    $0x0,%al
 133:	00 00                	add    %al,(%rax)
 135:	00 00                	add    %al,(%rax)
 137:	00 2d 04 00 00 00    	add    %ch,0x4(%rip)        # 141 <__abi_tag-0x183>
 13d:	00 00                	add    %al,(%rax)
 13f:	00 62 09             	add    %ah,0x9(%rdx)
 142:	00 00                	add    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	00 00                	add    %al,(%rax)
 148:	ef                   	out    %eax,(%dx)
 149:	09 00                	or     %eax,(%rax)
	...
 15f:	00 30                	add    %dh,(%rax)
 161:	04 00                	add    $0x0,%al
 163:	00 00                	add    %al,(%rax)
 165:	00 00                	add    %al,(%rax)
 167:	00 b6 04 00 00 00    	add    %dh,0x4(%rsi)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 f2                	add    %dh,%dl
 171:	09 00                	or     %eax,(%rax)
 173:	00 00                	add    %al,(%rax)
 175:	00 00                	add    %al,(%rax)
 177:	00 f8                	add    %bh,%al
 179:	09 00                	or     %eax,(%rax)
 17b:	00 00                	add    %al,(%rax)
 17d:	00 00                	add    %al,(%rax)
 17f:	00 73 0a             	add    %dh,0xa(%rbx)
 182:	00 00                	add    %al,(%rax)
 184:	00 00                	add    %al,(%rax)
 186:	00 00                	add    %al,(%rax)
 188:	97                   	xchg   %eax,%edi
 189:	0a 00                	or     (%rax),%al
	...
 19f:	00 30                	add    %dh,(%rax)
 1a1:	04 00                	add    $0x0,%al
 1a3:	00 00                	add    %al,(%rax)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	00 5e 04             	add    %bl,0x4(%rsi)
 1aa:	00 00                	add    %al,(%rax)
 1ac:	00 00                	add    %al,(%rax)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	f2 09 00             	repnz or %eax,(%rax)
 1b3:	00 00                	add    %al,(%rax)
 1b5:	00 00                	add    %al,(%rax)
 1b7:	00 f8                	add    %bh,%al
 1b9:	09 00                	or     %eax,(%rax)
	...
 1cf:	00 cf                	add    %cl,%bh
 1d1:	04 00                	add    $0x0,%al
 1d3:	00 00                	add    %al,(%rax)
 1d5:	00 00                	add    %al,(%rax)
 1d7:	00 d2                	add    %dl,%dl
 1d9:	05 00 00 00 00       	add    $0x0,%eax
 1de:	00 00                	add    %al,(%rax)
 1e0:	42 0a 00             	rex.X or (%rax),%al
 1e3:	00 00                	add    %al,(%rax)
 1e5:	00 00                	add    %al,(%rax)
 1e7:	00 73 0a             	add    %dh,0xa(%rbx)
	...
 1fe:	00 00                	add    %al,(%rax)
 200:	f3 05 00 00 00 00    	repz add $0x0,%eax
 206:	00 00                	add    %al,(%rax)
 208:	4b 09 00             	rex.WXB or %rax,(%r8)
 20b:	00 00                	add    %al,(%rax)
 20d:	00 00                	add    %al,(%rax)
 20f:	00 2b                	add    %ch,(%rbx)
 211:	0a 00                	or     (%rax),%al
 213:	00 00                	add    %al,(%rax)
 215:	00 00                	add    %al,(%rax)
 217:	00 42 0a             	add    %al,0xa(%rdx)
 21a:	00 00                	add    %al,(%rax)
 21c:	00 00                	add    %al,(%rax)
 21e:	00 00                	add    %al,(%rax)
 220:	97                   	xchg   %eax,%edi
 221:	0a 00                	or     (%rax),%al
 223:	00 00                	add    %al,(%rax)
 225:	00 00                	add    %al,(%rax)
 227:	00 0e                	add    %cl,(%rsi)
 229:	0b 00                	or     (%rax),%eax
	...
