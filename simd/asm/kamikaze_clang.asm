
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
 548:	d0 4d 00             	rorb   0x0(%rbp)
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	00 08                	add    %cl,(%rax)
 551:	00 00                	add    %al,(%rax)
 553:	00 00                	add    %al,(%rax)
 555:	00 00                	add    %al,(%rax)
 557:	00 90 11 00 00 00    	add    %dl,0x11(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 d8                	add    %bl,%al
 561:	4d 00 00             	rex.WRB add %r8b,(%r8)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	08 00                	or     %al,(%rax)
 56a:	00 00                	add    %al,(%rax)
 56c:	00 00                	add    %al,(%rax)
 56e:	00 00                	add    %al,(%rax)
 570:	80 10 00             	adcb   $0x0,(%rax)
 573:	00 00                	add    %al,(%rax)
 575:	00 00                	add    %al,(%rax)
 577:	00 e0                	add    %ah,%al
 579:	4d 00 00             	rex.WRB add %r8b,(%r8)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	08 00                	or     %al,(%rax)
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	40 11 00             	rex adc %eax,(%rax)
 58b:	00 00                	add    %al,(%rax)
 58d:	00 00                	add    %al,(%rax)
 58f:	00 48 50             	add    %cl,0x50(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	08 00                	or     %al,(%rax)
 59a:	00 00                	add    %al,(%rax)
 59c:	00 00                	add    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	48 50                	rex.W push %rax
 5a2:	00 00                	add    %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	d8 4f 00             	fmuls  0x0(%rdi)
 5ab:	00 00                	add    %al,(%rax)
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 06                	add    %al,(%rsi)
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 02                	add    %al,(%rdx)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 e0                	add    %ah,%al
 5c1:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	06                   	(bad)  
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5d6:	00 00                	add    %al,(%rax)
 5d8:	e8 4f 00 00 00       	callq  62c <__abi_tag+0x368>
 5dd:	00 00                	add    %al,(%rax)
 5df:	00 06                	add    %al,(%rsi)
 5e1:	00 00                	add    %al,(%rax)
 5e3:	00 06                	add    %al,(%rsi)
	...
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 f0                	add    %dh,%al
 5f1:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 5f4:	00 00                	add    %al,(%rax)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	06                   	(bad)  
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 08                	add    %cl,(%rax)
	...
 605:	00 00                	add    %al,(%rax)
 607:	00 f8                	add    %bh,%al
 609:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 60c:	00 00                	add    %al,(%rax)
 60e:	00 00                	add    %al,(%rax)
 610:	06                   	(bad)  
 611:	00 00                	add    %al,(%rax)
 613:	00 0a                	add    %cl,(%rdx)
	...

Déassemblage de la section .rela.plt :

0000000000000620 <.rela.plt>:
 620:	18 50 00             	sbb    %dl,0x0(%rax)
 623:	00 00                	add    %al,(%rax)
 625:	00 00                	add    %al,(%rax)
 627:	00 07                	add    %al,(%rdi)
 629:	00 00                	add    %al,(%rax)
 62b:	00 01                	add    %al,(%rcx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 20                	add    %ah,(%rax)
 639:	50                   	push   %rax
 63a:	00 00                	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	07                   	(bad)  
 641:	00 00                	add    %al,(%rax)
 643:	00 03                	add    %al,(%rbx)
	...
 64d:	00 00                	add    %al,(%rax)
 64f:	00 28                	add    %ch,(%rax)
 651:	50                   	push   %rax
 652:	00 00                	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	07                   	(bad)  
 659:	00 00                	add    %al,(%rax)
 65b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 661 <__abi_tag+0x39d>
 661:	00 00                	add    %al,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	00 00                	add    %al,(%rax)
 667:	00 30                	add    %dh,(%rax)
 669:	50                   	push   %rax
 66a:	00 00                	add    %al,(%rax)
 66c:	00 00                	add    %al,(%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	07                   	(bad)  
 671:	00 00                	add    %al,(%rax)
 673:	00 07                	add    %al,(%rdi)
	...
 67d:	00 00                	add    %al,(%rax)
 67f:	00 38                	add    %bh,(%rax)
 681:	50                   	push   %rax
 682:	00 00                	add    %al,(%rax)
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
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Déassemblage de la section .plt :

0000000000001020 <.plt>:
    1020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 5018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 5020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <strtoll@plt>:
    1050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 5028 <strtoll@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <exit@plt>:
    1060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 5030 <exit@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <aligned_alloc@plt>:
    1070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 5038 <aligned_alloc@GLIBC_2.16>
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
    10b3:	4c 8d 05 e6 1d 00 00 	lea    0x1de6(%rip),%r8        # 2ea0 <__libc_csu_fini>
    10ba:	48 8d 0d 6f 1d 00 00 	lea    0x1d6f(%rip),%rcx        # 2e30 <__libc_csu_init>
    10c1:	48 8d 3d d8 00 00 00 	lea    0xd8(%rip),%rdi        # 11a0 <main>
    10c8:	ff 15 12 3f 00 00    	callq  *0x3f12(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    10ce:	f4                   	hlt    
    10cf:	90                   	nop

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 79 3f 00 00 	lea    0x3f79(%rip),%rdi        # 5050 <__TMC_END__>
    10d7:	48 8d 05 72 3f 00 00 	lea    0x3f72(%rip),%rax        # 5050 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 3e 00 00 	mov    0x3eee(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmpq   *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 49 3f 00 00 	lea    0x3f49(%rip),%rdi        # 5050 <__TMC_END__>
    1107:	48 8d 35 42 3f 00 00 	lea    0x3f42(%rip),%rsi        # 5050 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 3e 00 00 	mov    0x3ec5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmpq   *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d 05 3f 00 00 00 	cmpb   $0x0,0x3f05(%rip)        # 5050 <__TMC_END__>
    114b:	75 33                	jne    1180 <__do_global_dtors_aux+0x40>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 3e 00 00 	cmpq   $0x0,0x3ea2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0d                	je     1168 <__do_global_dtors_aux+0x28>
    115b:	48 8b 3d e6 3e 00 00 	mov    0x3ee6(%rip),%rdi        # 5048 <__dso_handle>
    1162:	ff 15 90 3e 00 00    	callq  *0x3e90(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1168:	e8 63 ff ff ff       	callq  10d0 <deregister_tm_clones>
    116d:	c6 05 dc 3e 00 00 01 	movb   $0x1,0x3edc(%rip)        # 5050 <__TMC_END__>
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
    11a0:	55                   	push   %rbp
    11a1:	41 57                	push   %r15
    11a3:	41 56                	push   %r14
    11a5:	41 55                	push   %r13
    11a7:	41 54                	push   %r12
    11a9:	53                   	push   %rbx
    11aa:	48 81 ec c8 02 00 00 	sub    $0x2c8,%rsp
    11b1:	83 ff 02             	cmp    $0x2,%edi
    11b4:	0f 85 f4 03 00 00    	jne    15ae <main+0x40e>
    11ba:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11be:	31 f6                	xor    %esi,%esi
    11c0:	ba 0a 00 00 00       	mov    $0xa,%edx
    11c5:	e8 86 fe ff ff       	callq  1050 <strtoll@plt>
    11ca:	49 89 c7             	mov    %rax,%r15
    11cd:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    11d4:	00 
    11d5:	bf 40 00 00 00       	mov    $0x40,%edi
    11da:	48 89 de             	mov    %rbx,%rsi
    11dd:	e8 8e fe ff ff       	callq  1070 <aligned_alloc@plt>
    11e2:	49 89 c6             	mov    %rax,%r14
    11e5:	bf 40 00 00 00       	mov    $0x40,%edi
    11ea:	48 89 de             	mov    %rbx,%rsi
    11ed:	e8 7e fe ff ff       	callq  1070 <aligned_alloc@plt>
    11f2:	48 89 c3             	mov    %rax,%rbx
    11f5:	4d 85 ff             	test   %r15,%r15
    11f8:	74 0d                	je     1207 <main+0x67>
    11fa:	49 83 ff 10          	cmp    $0x10,%r15
    11fe:	73 1d                	jae    121d <main+0x7d>
    1200:	31 c0                	xor    %eax,%eax
    1202:	e9 e9 01 00 00       	jmpq   13f0 <main+0x250>
    1207:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    120b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    120f:	c5 fb 11 8c 24 40 01 	vmovsd %xmm1,0x140(%rsp)
    1216:	00 00 
    1218:	e9 9b 03 00 00       	jmpq   15b8 <main+0x418>
    121d:	4c 89 f8             	mov    %r15,%rax
    1220:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    1224:	48 8d 70 f0          	lea    -0x10(%rax),%rsi
    1228:	48 89 f2             	mov    %rsi,%rdx
    122b:	48 c1 ea 04          	shr    $0x4,%rdx
    122f:	48 ff c2             	inc    %rdx
    1232:	89 d1                	mov    %edx,%ecx
    1234:	83 e1 03             	and    $0x3,%ecx
    1237:	48 83 fe 30          	cmp    $0x30,%rsi
    123b:	73 07                	jae    1244 <main+0xa4>
    123d:	31 f6                	xor    %esi,%esi
    123f:	e9 40 01 00 00       	jmpq   1384 <main+0x1e4>
    1244:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1248:	48 f7 da             	neg    %rdx
    124b:	31 f6                	xor    %esi,%esi
    124d:	c4 e2 7d 19 05 b2 1d 	vbroadcastsd 0x1db2(%rip),%ymm0        # 3008 <_IO_stdin_used+0x8>
    1254:	00 00 
    1256:	c4 e2 7d 19 0d b1 1d 	vbroadcastsd 0x1db1(%rip),%ymm1        # 3010 <_IO_stdin_used+0x10>
    125d:	00 00 
    125f:	90                   	nop
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
    1394:	c4 e2 7d 19 05 6b 1c 	vbroadcastsd 0x1c6b(%rip),%ymm0        # 3008 <_IO_stdin_used+0x8>
    139b:	00 00 
    139d:	c4 e2 7d 19 0d 6a 1c 	vbroadcastsd 0x1c6a(%rip),%ymm1        # 3010 <_IO_stdin_used+0x10>
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
    15c2:	c5 fb 11 84 24 20 01 	vmovsd %xmm0,0x120(%rsp)
    15c9:	00 00 
    15cb:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    15d0:	4d 85 ff             	test   %r15,%r15
    15d3:	0f 84 c2 05 00 00    	je     1b9b <main+0x9fb>
    15d9:	31 c0                	xor    %eax,%eax
    15db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
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
    16e2:	c5 f9 29 84 24 00 01 	vmovapd %xmm0,0x100(%rsp)
    16e9:	00 00 
    16eb:	0f 85 84 00 00 00    	jne    1775 <main+0x5d5>
    16f1:	49 83 ff 07          	cmp    $0x7,%r15
    16f5:	72 7e                	jb     1775 <main+0x5d5>
    16f7:	c4 a1 7b 10 44 fb c8 	vmovsd -0x38(%rbx,%r15,8),%xmm0
    16fe:	c4 a1 7b 10 4c fb d0 	vmovsd -0x30(%rbx,%r15,8),%xmm1
    1705:	c4 81 7b 59 44 fe c8 	vmulsd -0x38(%r14,%r15,8),%xmm0,%xmm0
    170c:	c5 93 58 c0          	vaddsd %xmm0,%xmm13,%xmm0
    1710:	c4 81 73 59 4c fe d0 	vmulsd -0x30(%r14,%r15,8),%xmm1,%xmm1
    1717:	c4 a1 7b 10 54 fb d8 	vmovsd -0x28(%rbx,%r15,8),%xmm2
    171e:	c4 81 6b 59 54 fe d8 	vmulsd -0x28(%r14,%r15,8),%xmm2,%xmm2
    1725:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    1729:	c4 a1 7b 10 54 fb e0 	vmovsd -0x20(%rbx,%r15,8),%xmm2
    1730:	c4 81 6b 59 54 fe e0 	vmulsd -0x20(%r14,%r15,8),%xmm2,%xmm2
    1737:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    173b:	c4 a1 7b 10 54 fb e8 	vmovsd -0x18(%rbx,%r15,8),%xmm2
    1742:	c4 81 6b 59 54 fe e8 	vmulsd -0x18(%r14,%r15,8),%xmm2,%xmm2
    1749:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    174d:	c4 a1 7b 10 54 fb f0 	vmovsd -0x10(%rbx,%r15,8),%xmm2
    1754:	c4 81 6b 59 54 fe f0 	vmulsd -0x10(%r14,%r15,8),%xmm2,%xmm2
    175b:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    175f:	c4 a1 7b 10 54 fb f8 	vmovsd -0x8(%rbx,%r15,8),%xmm2
    1766:	c4 81 6b 59 54 fe f8 	vmulsd -0x8(%r14,%r15,8),%xmm2,%xmm2
    176d:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    1771:	c5 7b 58 e9          	vaddsd %xmm1,%xmm0,%xmm13
    1775:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    177a:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    177f:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1783:	31 c0                	xor    %eax,%eax
    1785:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1789:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    178e:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    1792:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    1796:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    179d:	00 00 00 
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
    1844:	c5 f9 29 84 24 e0 00 	vmovapd %xmm0,0xe0(%rsp)
    184b:	00 00 
    184d:	0f 85 98 03 00 00    	jne    1beb <main+0xa4b>
    1853:	49 83 ff 0e          	cmp    $0xe,%r15
    1857:	0f 86 8e 03 00 00    	jbe    1beb <main+0xa4b>
    185d:	4c 89 f8             	mov    %r15,%rax
    1860:	48 83 c0 f2          	add    $0xfffffffffffffff2,%rax
    1864:	49 0f 42 c7          	cmovb  %r15,%rax
    1868:	4c 89 f9             	mov    %r15,%rcx
    186b:	48 f7 d1             	not    %rcx
    186e:	48 8d 4c 08 0f       	lea    0xf(%rax,%rcx,1),%rcx
    1873:	c4 e1 f9 6e c1       	vmovq  %rcx,%xmm0
    1878:	c4 e2 7d 59 e0       	vpbroadcastq %xmm0,%ymm4
    187d:	c5 7a 7e c5          	vmovq  %xmm5,%xmm8
    1881:	48 89 ca             	mov    %rcx,%rdx
    1884:	48 c1 ea 02          	shr    $0x2,%rdx
    1888:	48 ff c2             	inc    %rdx
    188b:	89 d0                	mov    %edx,%eax
    188d:	83 e0 03             	and    $0x3,%eax
    1890:	48 83 f9 0c          	cmp    $0xc,%rcx
    1894:	73 10                	jae    18a6 <main+0x706>
    1896:	31 c9                	xor    %ecx,%ecx
    1898:	48 85 c0             	test   %rax,%rax
    189b:	0f 85 9f 01 00 00    	jne    1a40 <main+0x8a0>
    18a1:	e9 1c 02 00 00       	jmpq   1ac2 <main+0x922>
    18a6:	c5 79 29 a4 24 80 00 	vmovapd %xmm12,0x80(%rsp)
    18ad:	00 00 
    18af:	c5 f9 29 74 24 10    	vmovapd %xmm6,0x10(%rsp)
    18b5:	c5 7d 11 8c 24 a0 00 	vmovupd %ymm9,0xa0(%rsp)
    18bc:	00 00 
    18be:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    18c2:	48 8d 0c 95 00 00 00 	lea    0x0(,%rdx,4),%rcx
    18c9:	00 
    18ca:	4e 8d 04 fb          	lea    (%rbx,%r15,8),%r8
    18ce:	49 83 c0 e8          	add    $0xffffffffffffffe8,%r8
    18d2:	4b 8d 3c fe          	lea    (%r14,%r15,8),%rdi
    18d6:	48 83 c7 e8          	add    $0xffffffffffffffe8,%rdi
    18da:	48 f7 da             	neg    %rdx
    18dd:	31 ed                	xor    %ebp,%ebp
    18df:	c4 e2 7d 59 05 30 17 	vpbroadcastq 0x1730(%rip),%ymm0        # 3018 <_IO_stdin_used+0x18>
    18e6:	00 00 
    18e8:	c5 fe 7f a4 24 80 01 	vmovdqu %ymm4,0x180(%rsp)
    18ef:	00 00 
    18f1:	c5 fe 7f 44 24 40    	vmovdqu %ymm0,0x40(%rsp)
    18f7:	c5 dd ef c0          	vpxor  %ymm0,%ymm4,%ymm0
    18fb:	c5 fe 7f 84 24 c0 00 	vmovdqu %ymm0,0xc0(%rsp)
    1902:	00 00 
    1904:	c5 7e 6f 4c 24 40    	vmovdqu 0x40(%rsp),%ymm9
    190a:	c5 7e 6f a4 24 c0 00 	vmovdqu 0xc0(%rsp),%ymm12
    1911:	00 00 
    1913:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    1917:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    191e:	00 00 
    1920:	c4 e1 f9 6e c5       	vmovq  %rbp,%xmm0
    1925:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    192a:	c5 fd 6f 25 0e 17 00 	vmovdqa 0x170e(%rip),%ymm4        # 3040 <_IO_stdin_used+0x40>
    1931:	00 
    1932:	c5 fd eb c4          	vpor   %ymm4,%ymm0,%ymm0
    1936:	c5 b5 ef c0          	vpxor  %ymm0,%ymm9,%ymm0
    193a:	c4 c2 7d 37 c4       	vpcmpgtq %ymm12,%ymm0,%ymm0
    193f:	c5 fd ef c6          	vpxor  %ymm6,%ymm0,%ymm0
    1943:	c4 e2 7d 2d 6c ef a0 	vmaskmovpd -0x60(%rdi,%rbp,8),%ymm0,%ymm5
    194a:	c4 c2 7d 2d 44 e8 a0 	vmaskmovpd -0x60(%r8,%rbp,8),%ymm0,%ymm0
    1951:	c5 fd 59 c5          	vmulpd %ymm5,%ymm0,%ymm0
    1955:	c5 bd 58 c0          	vaddpd %ymm0,%ymm8,%ymm0
    1959:	c5 fd 11 44 24 20    	vmovupd %ymm0,0x20(%rsp)
    195f:	48 8d 75 04          	lea    0x4(%rbp),%rsi
    1963:	c4 e1 f9 6e ee       	vmovq  %rsi,%xmm5
    1968:	c4 e2 7d 59 ed       	vpbroadcastq %xmm5,%ymm5
    196d:	c5 d5 eb ec          	vpor   %ymm4,%ymm5,%ymm5
    1971:	c5 b5 ef ed          	vpxor  %ymm5,%ymm9,%ymm5
    1975:	c4 c2 55 37 ec       	vpcmpgtq %ymm12,%ymm5,%ymm5
    197a:	c5 d5 ef ee          	vpxor  %ymm6,%ymm5,%ymm5
    197e:	c4 62 55 2d 44 ef c0 	vmaskmovpd -0x40(%rdi,%rbp,8),%ymm5,%ymm8
    1985:	c4 c2 55 2d 6c e8 c0 	vmaskmovpd -0x40(%r8,%rbp,8),%ymm5,%ymm5
    198c:	c5 bd 59 ed          	vmulpd %ymm5,%ymm8,%ymm5
    1990:	48 8d 75 08          	lea    0x8(%rbp),%rsi
    1994:	c4 e1 f9 6e c6       	vmovq  %rsi,%xmm0
    1999:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    199e:	c5 fd eb c4          	vpor   %ymm4,%ymm0,%ymm0
    19a2:	c5 b5 ef c0          	vpxor  %ymm0,%ymm9,%ymm0
    19a6:	c4 c2 7d 37 c4       	vpcmpgtq %ymm12,%ymm0,%ymm0
    19ab:	c5 fd ef c6          	vpxor  %ymm6,%ymm0,%ymm0
    19af:	c4 62 7d 2d 44 ef e0 	vmaskmovpd -0x20(%rdi,%rbp,8),%ymm0,%ymm8
    19b6:	c4 c2 7d 2d 44 e8 e0 	vmaskmovpd -0x20(%r8,%rbp,8),%ymm0,%ymm0
    19bd:	c5 bd 59 c0          	vmulpd %ymm0,%ymm8,%ymm0
    19c1:	c5 d5 58 c0          	vaddpd %ymm0,%ymm5,%ymm0
    19c5:	c5 fd 58 6c 24 20    	vaddpd 0x20(%rsp),%ymm0,%ymm5
    19cb:	48 8d 75 0c          	lea    0xc(%rbp),%rsi
    19cf:	c4 e1 f9 6e c6       	vmovq  %rsi,%xmm0
    19d4:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    19d9:	c5 fd eb c4          	vpor   %ymm4,%ymm0,%ymm0
    19dd:	c5 b5 ef c0          	vpxor  %ymm0,%ymm9,%ymm0
    19e1:	c4 c2 7d 37 c4       	vpcmpgtq %ymm12,%ymm0,%ymm0
    19e6:	c5 fd ef c6          	vpxor  %ymm6,%ymm0,%ymm0
    19ea:	c4 62 7d 2d 04 ef    	vmaskmovpd (%rdi,%rbp,8),%ymm0,%ymm8
    19f0:	c4 c2 7d 2d 24 e8    	vmaskmovpd (%r8,%rbp,8),%ymm0,%ymm4
    19f6:	c5 bd 59 e4          	vmulpd %ymm4,%ymm8,%ymm4
    19fa:	c5 5d 58 c5          	vaddpd %ymm5,%ymm4,%ymm8
    19fe:	48 83 c5 10          	add    $0x10,%rbp
    1a02:	48 83 c2 04          	add    $0x4,%rdx
    1a06:	0f 85 14 ff ff ff    	jne    1920 <main+0x780>
    1a0c:	c4 e3 7d 39 c4 01    	vextracti128 $0x1,%ymm0,%xmm4
    1a12:	c5 f9 6b c4          	vpackssdw %xmm4,%xmm0,%xmm0
    1a16:	c5 fe 6f a4 24 80 01 	vmovdqu 0x180(%rsp),%ymm4
    1a1d:	00 00 
    1a1f:	c5 7d 10 8c 24 a0 00 	vmovupd 0xa0(%rsp),%ymm9
    1a26:	00 00 
    1a28:	c5 f9 28 74 24 10    	vmovapd 0x10(%rsp),%xmm6
    1a2e:	c5 79 28 a4 24 80 00 	vmovapd 0x80(%rsp),%xmm12
    1a35:	00 00 
    1a37:	48 85 c0             	test   %rax,%rax
    1a3a:	0f 84 82 00 00 00    	je     1ac2 <main+0x922>
    1a40:	4a 8d 14 fb          	lea    (%rbx,%r15,8),%rdx
    1a44:	48 83 c2 88          	add    $0xffffffffffffff88,%rdx
    1a48:	4b 8d 34 fe          	lea    (%r14,%r15,8),%rsi
    1a4c:	48 83 c6 88          	add    $0xffffffffffffff88,%rsi
    1a50:	48 f7 d8             	neg    %rax
    1a53:	c4 e2 7d 59 05 bc 15 	vpbroadcastq 0x15bc(%rip),%ymm0        # 3018 <_IO_stdin_used+0x18>
    1a5a:	00 00 
    1a5c:	c5 fe 7f 44 24 20    	vmovdqu %ymm0,0x20(%rsp)
    1a62:	c5 dd ef c0          	vpxor  %ymm0,%ymm4,%ymm0
    1a66:	c5 fe 7f 44 24 40    	vmovdqu %ymm0,0x40(%rsp)
    1a6c:	0f 1f 40 00          	nopl   0x0(%rax)
    1a70:	c5 7d 29 c5          	vmovapd %ymm8,%ymm5
    1a74:	c4 e1 f9 6e c1       	vmovq  %rcx,%xmm0
    1a79:	c4 e2 7d 59 c0       	vpbroadcastq %xmm0,%ymm0
    1a7e:	c5 fd eb 05 ba 15 00 	vpor   0x15ba(%rip),%ymm0,%ymm0        # 3040 <_IO_stdin_used+0x40>
    1a85:	00 
    1a86:	c5 fd ef 44 24 20    	vpxor  0x20(%rsp),%ymm0,%ymm0
    1a8c:	c4 e2 7d 37 44 24 40 	vpcmpgtq 0x40(%rsp),%ymm0,%ymm0
    1a93:	c5 fd ef 05 c5 15 00 	vpxor  0x15c5(%rip),%ymm0,%ymm0        # 3060 <_IO_stdin_used+0x60>
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
    1ae6:	e9 00 01 00 00       	jmpq   1beb <main+0xa4b>
    1aeb:	c5 fb 10 04 c3       	vmovsd (%rbx,%rax,8),%xmm0
    1af0:	c4 c1 7b 59 04 c6    	vmulsd (%r14,%rax,8),%xmm0,%xmm0
    1af6:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
    1afa:	48 ff c0             	inc    %rax
    1afd:	49 39 c7             	cmp    %rax,%r15
    1b00:	75 e9                	jne    1aeb <main+0x94b>
    1b02:	41 f6 c7 01          	test   $0x1,%r15b
    1b06:	c5 fb 11 8c 24 40 01 	vmovsd %xmm1,0x140(%rsp)
    1b0d:	00 00 
    1b0f:	75 2c                	jne    1b3d <main+0x99d>
    1b11:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1b15:	31 c0                	xor    %eax,%eax
    1b17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1b1e:	00 00 
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
    1b84:	c5 fb 11 84 24 20 01 	vmovsd %xmm0,0x120(%rsp)
    1b8b:	00 00 
    1b8d:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    1b92:	4d 85 ff             	test   %r15,%r15
    1b95:	0f 85 3e fa ff ff    	jne    15d9 <main+0x439>
    1b9b:	c4 41 11 57 ed       	vxorpd %xmm13,%xmm13,%xmm13
    1ba0:	c4 41 09 57 f6       	vxorpd %xmm14,%xmm14,%xmm14
    1ba5:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    1ba9:	c4 41 19 57 e4       	vxorpd %xmm12,%xmm12,%xmm12
    1bae:	c5 c1 57 ff          	vxorpd %xmm7,%xmm7,%xmm7
    1bb2:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1bb6:	c5 f9 29 84 24 00 01 	vmovapd %xmm0,0x100(%rsp)
    1bbd:	00 00 
    1bbf:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1bc3:	c5 f9 29 84 24 e0 00 	vmovapd %xmm0,0xe0(%rsp)
    1bca:	00 00 
    1bcc:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1bd0:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1bd4:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    1bd8:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    1bdd:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    1be2:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    1be7:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    1beb:	c4 c3 79 05 c6 01    	vpermilpd $0x1,%xmm14,%xmm0
    1bf1:	c4 c1 1b 58 e6       	vaddsd %xmm14,%xmm12,%xmm4
    1bf6:	c5 7b 58 c7          	vaddsd %xmm7,%xmm0,%xmm8
    1bfa:	c4 e3 79 05 c6 01    	vpermilpd $0x1,%xmm6,%xmm0
    1c00:	c5 db 58 c0          	vaddsd %xmm0,%xmm4,%xmm0
    1c04:	c5 fb 58 84 24 00 01 	vaddsd 0x100(%rsp),%xmm0,%xmm0
    1c0b:	00 00 
    1c0d:	c5 bb 58 e6          	vaddsd %xmm6,%xmm8,%xmm4
    1c11:	c5 93 58 e4          	vaddsd %xmm4,%xmm13,%xmm4
    1c15:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c19:	c5 fb 11 44 24 20    	vmovsd %xmm0,0x20(%rsp)
    1c1f:	c4 c3 79 05 c1 01    	vpermilpd $0x1,%xmm9,%xmm0
    1c25:	c5 b3 58 c0          	vaddsd %xmm0,%xmm9,%xmm0
    1c29:	c4 63 7d 19 cc 01    	vextractf128 $0x1,%ymm9,%xmm4
    1c2f:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c33:	c4 e3 79 05 e4 01    	vpermilpd $0x1,%xmm4,%xmm4
    1c39:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c3d:	c5 fb 11 44 24 40    	vmovsd %xmm0,0x40(%rsp)
    1c43:	c4 e3 79 05 c3 01    	vpermilpd $0x1,%xmm3,%xmm0
    1c49:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    1c4d:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    1c51:	c4 63 7d 19 da 01    	vextractf128 $0x1,%ymm11,%xmm2
    1c57:	c4 e3 79 05 da 01    	vpermilpd $0x1,%xmm2,%xmm3
    1c5d:	c5 e3 58 d2          	vaddsd %xmm2,%xmm3,%xmm2
    1c61:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    1c65:	c4 c3 79 05 d3 01    	vpermilpd $0x1,%xmm11,%xmm2
    1c6b:	c5 a3 58 d2          	vaddsd %xmm2,%xmm11,%xmm2
    1c6f:	c4 63 7d 19 d3 01    	vextractf128 $0x1,%ymm10,%xmm3
    1c75:	c4 e3 79 05 e3 01    	vpermilpd $0x1,%xmm3,%xmm4
    1c7b:	c5 eb 58 d4          	vaddsd %xmm4,%xmm2,%xmm2
    1c7f:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    1c83:	c4 c3 79 05 da 01    	vpermilpd $0x1,%xmm10,%xmm3
    1c89:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0
    1c8d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1c91:	c5 ab 58 ca          	vaddsd %xmm2,%xmm10,%xmm1
    1c95:	c4 c3 79 05 d7 01    	vpermilpd $0x1,%xmm15,%xmm2
    1c9b:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    1c9f:	c5 f3 58 8c 24 e0 00 	vaddsd 0xe0(%rsp),%xmm1,%xmm1
    1ca6:	00 00 
    1ca8:	c5 83 58 c0          	vaddsd %xmm0,%xmm15,%xmm0
    1cac:	c5 fb 58 c5          	vaddsd %xmm5,%xmm0,%xmm0
    1cb0:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    1cb4:	c5 fb 11 84 24 c0 00 	vmovsd %xmm0,0xc0(%rsp)
    1cbb:	00 00 
    1cbd:	48 8d 3d 3c 15 00 00 	lea    0x153c(%rip),%rdi        # 3200 <_IO_stdin_used+0x200>
    1cc4:	c5 fb 10 84 24 40 01 	vmovsd 0x140(%rsp),%xmm0
    1ccb:	00 00 
    1ccd:	b0 01                	mov    $0x1,%al
    1ccf:	c5 f8 77             	vzeroupper 
    1cd2:	e8 69 f3 ff ff       	callq  1040 <printf@plt>
    1cd7:	48 8d 3d 2d 15 00 00 	lea    0x152d(%rip),%rdi        # 320b <_IO_stdin_used+0x20b>
    1cde:	c5 fb 10 84 24 20 01 	vmovsd 0x120(%rsp),%xmm0
    1ce5:	00 00 
    1ce7:	b0 01                	mov    $0x1,%al
    1ce9:	e8 52 f3 ff ff       	callq  1040 <printf@plt>
    1cee:	4c 8d 2d 24 15 00 00 	lea    0x1524(%rip),%r13        # 3219 <_IO_stdin_used+0x219>
    1cf5:	4c 89 ef             	mov    %r13,%rdi
    1cf8:	c5 fb 10 44 24 40    	vmovsd 0x40(%rsp),%xmm0
    1cfe:	b0 01                	mov    $0x1,%al
    1d00:	e8 3b f3 ff ff       	callq  1040 <printf@plt>
    1d05:	4c 8d 25 1b 15 00 00 	lea    0x151b(%rip),%r12        # 3227 <_IO_stdin_used+0x227>
    1d0c:	4c 89 e7             	mov    %r12,%rdi
    1d0f:	c5 fb 10 44 24 20    	vmovsd 0x20(%rsp),%xmm0
    1d15:	b0 01                	mov    $0x1,%al
    1d17:	e8 24 f3 ff ff       	callq  1040 <printf@plt>
    1d1c:	4c 8d 3d 12 15 00 00 	lea    0x1512(%rip),%r15        # 3235 <_IO_stdin_used+0x235>
    1d23:	4c 89 ff             	mov    %r15,%rdi
    1d26:	c5 fb 10 84 24 c0 00 	vmovsd 0xc0(%rsp),%xmm0
    1d2d:	00 00 
    1d2f:	b0 01                	mov    $0x1,%al
    1d31:	e8 0a f3 ff ff       	callq  1040 <printf@plt>
    1d36:	4c 89 f7             	mov    %r14,%rdi
    1d39:	e8 f2 f2 ff ff       	callq  1030 <free@plt>
    1d3e:	48 89 df             	mov    %rbx,%rdi
    1d41:	e8 ea f2 ff ff       	callq  1030 <free@plt>
    1d46:	bf 40 00 00 00       	mov    $0x40,%edi
    1d4b:	be 20 03 00 00       	mov    $0x320,%esi
    1d50:	e8 1b f3 ff ff       	callq  1070 <aligned_alloc@plt>
    1d55:	48 89 c3             	mov    %rax,%rbx
    1d58:	bf 40 00 00 00       	mov    $0x40,%edi
    1d5d:	be 20 03 00 00       	mov    $0x320,%esi
    1d62:	e8 09 f3 ff ff       	callq  1070 <aligned_alloc@plt>
    1d67:	48 89 c5             	mov    %rax,%rbp
    1d6a:	c4 e2 7d 19 05 95 12 	vbroadcastsd 0x1295(%rip),%ymm0        # 3008 <_IO_stdin_used+0x8>
    1d71:	00 00 
    1d73:	c5 fc 29 03          	vmovaps %ymm0,(%rbx)
    1d77:	c4 e2 7d 19 0d 90 12 	vbroadcastsd 0x1290(%rip),%ymm1        # 3010 <_IO_stdin_used+0x10>
    1d7e:	00 00 
    1d80:	c5 fc 29 08          	vmovaps %ymm1,(%rax)
    1d84:	c5 fc 29 43 20       	vmovaps %ymm0,0x20(%rbx)
    1d89:	c5 fc 29 48 20       	vmovaps %ymm1,0x20(%rax)
    1d8e:	c5 fc 29 43 40       	vmovaps %ymm0,0x40(%rbx)
    1d93:	c5 fc 29 48 40       	vmovaps %ymm1,0x40(%rax)
    1d98:	c5 fc 29 43 60       	vmovaps %ymm0,0x60(%rbx)
    1d9d:	c5 fc 29 48 60       	vmovaps %ymm1,0x60(%rax)
    1da2:	c5 fc 29 83 80 00 00 	vmovaps %ymm0,0x80(%rbx)
    1da9:	00 
    1daa:	c5 fc 29 88 80 00 00 	vmovaps %ymm1,0x80(%rax)
    1db1:	00 
    1db2:	c5 fc 29 83 a0 00 00 	vmovaps %ymm0,0xa0(%rbx)
    1db9:	00 
    1dba:	c5 fc 29 88 a0 00 00 	vmovaps %ymm1,0xa0(%rax)
    1dc1:	00 
    1dc2:	c5 fc 29 83 c0 00 00 	vmovaps %ymm0,0xc0(%rbx)
    1dc9:	00 
    1dca:	c5 fc 29 88 c0 00 00 	vmovaps %ymm1,0xc0(%rax)
    1dd1:	00 
    1dd2:	c5 fc 29 83 e0 00 00 	vmovaps %ymm0,0xe0(%rbx)
    1dd9:	00 
    1dda:	c5 fc 29 88 e0 00 00 	vmovaps %ymm1,0xe0(%rax)
    1de1:	00 
    1de2:	c5 fc 29 83 00 01 00 	vmovaps %ymm0,0x100(%rbx)
    1de9:	00 
    1dea:	c5 fc 29 88 00 01 00 	vmovaps %ymm1,0x100(%rax)
    1df1:	00 
    1df2:	c5 fc 29 83 20 01 00 	vmovaps %ymm0,0x120(%rbx)
    1df9:	00 
    1dfa:	c5 fc 29 88 20 01 00 	vmovaps %ymm1,0x120(%rax)
    1e01:	00 
    1e02:	c5 fc 29 83 40 01 00 	vmovaps %ymm0,0x140(%rbx)
    1e09:	00 
    1e0a:	c5 fc 29 88 40 01 00 	vmovaps %ymm1,0x140(%rax)
    1e11:	00 
    1e12:	c5 fc 29 83 60 01 00 	vmovaps %ymm0,0x160(%rbx)
    1e19:	00 
    1e1a:	c5 fc 29 88 60 01 00 	vmovaps %ymm1,0x160(%rax)
    1e21:	00 
    1e22:	c5 fc 29 83 80 01 00 	vmovaps %ymm0,0x180(%rbx)
    1e29:	00 
    1e2a:	c5 fc 29 88 80 01 00 	vmovaps %ymm1,0x180(%rax)
    1e31:	00 
    1e32:	c5 fc 29 83 a0 01 00 	vmovaps %ymm0,0x1a0(%rbx)
    1e39:	00 
    1e3a:	c5 fc 29 88 a0 01 00 	vmovaps %ymm1,0x1a0(%rax)
    1e41:	00 
    1e42:	c5 fc 29 83 c0 01 00 	vmovaps %ymm0,0x1c0(%rbx)
    1e49:	00 
    1e4a:	c5 fc 29 88 c0 01 00 	vmovaps %ymm1,0x1c0(%rax)
    1e51:	00 
    1e52:	c5 fc 29 83 e0 01 00 	vmovaps %ymm0,0x1e0(%rbx)
    1e59:	00 
    1e5a:	c5 fc 29 88 e0 01 00 	vmovaps %ymm1,0x1e0(%rax)
    1e61:	00 
    1e62:	c5 fc 29 83 00 02 00 	vmovaps %ymm0,0x200(%rbx)
    1e69:	00 
    1e6a:	c5 fc 29 88 00 02 00 	vmovaps %ymm1,0x200(%rax)
    1e71:	00 
    1e72:	c5 fc 29 83 20 02 00 	vmovaps %ymm0,0x220(%rbx)
    1e79:	00 
    1e7a:	c5 fc 29 88 20 02 00 	vmovaps %ymm1,0x220(%rax)
    1e81:	00 
    1e82:	c5 fc 29 83 40 02 00 	vmovaps %ymm0,0x240(%rbx)
    1e89:	00 
    1e8a:	c5 fc 29 88 40 02 00 	vmovaps %ymm1,0x240(%rax)
    1e91:	00 
    1e92:	c5 fc 29 83 60 02 00 	vmovaps %ymm0,0x260(%rbx)
    1e99:	00 
    1e9a:	c5 fc 29 88 60 02 00 	vmovaps %ymm1,0x260(%rax)
    1ea1:	00 
    1ea2:	c5 fc 29 83 80 02 00 	vmovaps %ymm0,0x280(%rbx)
    1ea9:	00 
    1eaa:	c5 fc 29 88 80 02 00 	vmovaps %ymm1,0x280(%rax)
    1eb1:	00 
    1eb2:	c5 fc 29 83 a0 02 00 	vmovaps %ymm0,0x2a0(%rbx)
    1eb9:	00 
    1eba:	c5 fc 29 88 a0 02 00 	vmovaps %ymm1,0x2a0(%rax)
    1ec1:	00 
    1ec2:	c5 fc 29 83 c0 02 00 	vmovaps %ymm0,0x2c0(%rbx)
    1ec9:	00 
    1eca:	c5 fc 29 88 c0 02 00 	vmovaps %ymm1,0x2c0(%rax)
    1ed1:	00 
    1ed2:	c5 fc 29 83 e0 02 00 	vmovaps %ymm0,0x2e0(%rbx)
    1ed9:	00 
    1eda:	c5 fc 29 88 e0 02 00 	vmovaps %ymm1,0x2e0(%rax)
    1ee1:	00 
    1ee2:	c5 fc 29 83 00 03 00 	vmovaps %ymm0,0x300(%rbx)
    1ee9:	00 
    1eea:	c5 fc 29 88 00 03 00 	vmovaps %ymm1,0x300(%rax)
    1ef1:	00 
    1ef2:	c5 fd 28 48 20       	vmovapd 0x20(%rax),%ymm1
    1ef7:	c5 fd 28 50 60       	vmovapd 0x60(%rax),%ymm2
    1efc:	c5 fd 28 a0 a0 00 00 	vmovapd 0xa0(%rax),%ymm4
    1f03:	00 
    1f04:	c5 fd 28 a8 e0 00 00 	vmovapd 0xe0(%rax),%ymm5
    1f0b:	00 
    1f0c:	c5 fd 28 b0 20 01 00 	vmovapd 0x120(%rax),%ymm6
    1f13:	00 
    1f14:	c5 fd 28 b8 60 01 00 	vmovapd 0x160(%rax),%ymm7
    1f1b:	00 
    1f1c:	c5 7d 28 80 a0 01 00 	vmovapd 0x1a0(%rax),%ymm8
    1f23:	00 
    1f24:	c5 7d 28 88 e0 01 00 	vmovapd 0x1e0(%rax),%ymm9
    1f2b:	00 
    1f2c:	c5 fd 28 98 c0 01 00 	vmovapd 0x1c0(%rax),%ymm3
    1f33:	00 
    1f34:	c5 7d 28 90 20 02 00 	vmovapd 0x220(%rax),%ymm10
    1f3b:	00 
    1f3c:	c5 7d 28 98 60 02 00 	vmovapd 0x260(%rax),%ymm11
    1f43:	00 
    1f44:	c5 7d 28 a0 40 02 00 	vmovapd 0x240(%rax),%ymm12
    1f4b:	00 
    1f4c:	c5 7d 28 a8 80 02 00 	vmovapd 0x280(%rax),%ymm13
    1f53:	00 
    1f54:	c5 7d 28 b0 a0 02 00 	vmovapd 0x2a0(%rax),%ymm14
    1f5b:	00 
    1f5c:	c5 fd 28 80 c0 02 00 	vmovapd 0x2c0(%rax),%ymm0
    1f63:	00 
    1f64:	c5 fd 59 83 c0 02 00 	vmulpd 0x2c0(%rbx),%ymm0,%ymm0
    1f6b:	00 
    1f6c:	c5 0d 59 b3 a0 02 00 	vmulpd 0x2a0(%rbx),%ymm14,%ymm14
    1f73:	00 
    1f74:	c5 15 59 ab 80 02 00 	vmulpd 0x280(%rbx),%ymm13,%ymm13
    1f7b:	00 
    1f7c:	c5 1d 59 a3 40 02 00 	vmulpd 0x240(%rbx),%ymm12,%ymm12
    1f83:	00 
    1f84:	c5 25 59 9b 60 02 00 	vmulpd 0x260(%rbx),%ymm11,%ymm11
    1f8b:	00 
    1f8c:	c5 2d 59 93 20 02 00 	vmulpd 0x220(%rbx),%ymm10,%ymm10
    1f93:	00 
    1f94:	c5 7d 28 b8 00 02 00 	vmovapd 0x200(%rax),%ymm15
    1f9b:	00 
    1f9c:	c5 05 59 bb 00 02 00 	vmulpd 0x200(%rbx),%ymm15,%ymm15
    1fa3:	00 
    1fa4:	c5 e5 59 9b c0 01 00 	vmulpd 0x1c0(%rbx),%ymm3,%ymm3
    1fab:	00 
    1fac:	c5 85 58 db          	vaddpd %ymm3,%ymm15,%ymm3
    1fb0:	c5 9d 58 db          	vaddpd %ymm3,%ymm12,%ymm3
    1fb4:	c5 95 58 db          	vaddpd %ymm3,%ymm13,%ymm3
    1fb8:	c5 35 59 8b e0 01 00 	vmulpd 0x1e0(%rbx),%ymm9,%ymm9
    1fbf:	00 
    1fc0:	c4 41 35 58 ca       	vaddpd %ymm10,%ymm9,%ymm9
    1fc5:	c4 41 35 58 cb       	vaddpd %ymm11,%ymm9,%ymm9
    1fca:	c4 41 35 58 ce       	vaddpd %ymm14,%ymm9,%ymm9
    1fcf:	c5 3d 59 83 a0 01 00 	vmulpd 0x1a0(%rbx),%ymm8,%ymm8
    1fd6:	00 
    1fd7:	c5 7d 28 93 80 01 00 	vmovapd 0x180(%rbx),%ymm10
    1fde:	00 
    1fdf:	c5 7d 11 54 24 20    	vmovupd %ymm10,0x20(%rsp)
    1fe5:	c5 2d 59 98 80 01 00 	vmulpd 0x180(%rax),%ymm10,%ymm11
    1fec:	00 
    1fed:	c5 c5 59 bb 60 01 00 	vmulpd 0x160(%rbx),%ymm7,%ymm7
    1ff4:	00 
    1ff5:	c5 cd 59 b3 20 01 00 	vmulpd 0x120(%rbx),%ymm6,%ymm6
    1ffc:	00 
    1ffd:	c5 cd 58 f7          	vaddpd %ymm7,%ymm6,%ymm6
    2001:	c5 bd 58 f6          	vaddpd %ymm6,%ymm8,%ymm6
    2005:	c5 d5 59 ab e0 00 00 	vmulpd 0xe0(%rbx),%ymm5,%ymm5
    200c:	00 
    200d:	c5 dd 59 a3 a0 00 00 	vmulpd 0xa0(%rbx),%ymm4,%ymm4
    2014:	00 
    2015:	c5 ed 59 53 60       	vmulpd 0x60(%rbx),%ymm2,%ymm2
    201a:	c5 dd 58 e5          	vaddpd %ymm5,%ymm4,%ymm4
    201e:	c5 f5 59 4b 20       	vmulpd 0x20(%rbx),%ymm1,%ymm1
    2023:	c5 fd 11 4c 24 40    	vmovupd %ymm1,0x40(%rsp)
    2029:	c5 ed 58 c9          	vaddpd %ymm1,%ymm2,%ymm1
    202d:	c5 f5 58 cc          	vaddpd %ymm4,%ymm1,%ymm1
    2031:	c5 f5 58 ce          	vaddpd %ymm6,%ymm1,%ymm1
    2035:	c5 fd 28 50 40       	vmovapd 0x40(%rax),%ymm2
    203a:	c5 fd 28 20          	vmovapd (%rax),%ymm4
    203e:	c5 ed 59 53 40       	vmulpd 0x40(%rbx),%ymm2,%ymm2
    2043:	c5 fd 11 94 24 c0 00 	vmovupd %ymm2,0xc0(%rsp)
    204a:	00 00 
    204c:	c5 dd 59 23          	vmulpd (%rbx),%ymm4,%ymm4
    2050:	c5 fd 11 a4 24 40 01 	vmovupd %ymm4,0x140(%rsp)
    2057:	00 00 
    2059:	c5 35 58 d1          	vaddpd %ymm1,%ymm9,%ymm10
    205d:	c5 ed 58 cc          	vaddpd %ymm4,%ymm2,%ymm1
    2061:	c5 fd 28 90 80 00 00 	vmovapd 0x80(%rax),%ymm2
    2068:	00 
    2069:	c5 ed 59 a3 80 00 00 	vmulpd 0x80(%rbx),%ymm2,%ymm4
    2070:	00 
    2071:	c5 fd 11 a4 24 00 01 	vmovupd %ymm4,0x100(%rsp)
    2078:	00 00 
    207a:	c5 fd 28 90 c0 00 00 	vmovapd 0xc0(%rax),%ymm2
    2081:	00 
    2082:	c5 ed 59 93 c0 00 00 	vmulpd 0xc0(%rbx),%ymm2,%ymm2
    2089:	00 
    208a:	c5 fd 11 94 24 20 01 	vmovupd %ymm2,0x120(%rsp)
    2091:	00 00 
    2093:	c5 dd 58 d2          	vaddpd %ymm2,%ymm4,%ymm2
    2097:	c5 fd 28 a0 00 01 00 	vmovapd 0x100(%rax),%ymm4
    209e:	00 
    209f:	c5 dd 59 a3 00 01 00 	vmulpd 0x100(%rbx),%ymm4,%ymm4
    20a6:	00 
    20a7:	c5 fd 11 a4 24 80 01 	vmovupd %ymm4,0x180(%rsp)
    20ae:	00 00 
    20b0:	c5 f5 58 ca          	vaddpd %ymm2,%ymm1,%ymm1
    20b4:	c5 fd 28 90 40 01 00 	vmovapd 0x140(%rax),%ymm2
    20bb:	00 
    20bc:	c5 ed 59 93 40 01 00 	vmulpd 0x140(%rbx),%ymm2,%ymm2
    20c3:	00 
    20c4:	c5 fd 11 94 24 e0 00 	vmovupd %ymm2,0xe0(%rsp)
    20cb:	00 00 
    20cd:	c5 dd 58 d2          	vaddpd %ymm2,%ymm4,%ymm2
    20d1:	c5 a5 58 d2          	vaddpd %ymm2,%ymm11,%ymm2
    20d5:	c5 f5 58 ca          	vaddpd %ymm2,%ymm1,%ymm1
    20d9:	c5 f5 58 cb          	vaddpd %ymm3,%ymm1,%ymm1
    20dd:	c5 fd 58 e9          	vaddpd %ymm1,%ymm0,%ymm5
    20e1:	c5 f9 28 40 30       	vmovapd 0x30(%rax),%xmm0
    20e6:	c5 f9 59 43 30       	vmulpd 0x30(%rbx),%xmm0,%xmm0
    20eb:	c5 f9 28 50 70       	vmovapd 0x70(%rax),%xmm2
    20f0:	c5 69 59 43 70       	vmulpd 0x70(%rbx),%xmm2,%xmm8
    20f5:	c5 f9 28 90 b0 00 00 	vmovapd 0xb0(%rax),%xmm2
    20fc:	00 
    20fd:	c5 e9 59 93 b0 00 00 	vmulpd 0xb0(%rbx),%xmm2,%xmm2
    2104:	00 
    2105:	c5 b9 58 c0          	vaddpd %xmm0,%xmm8,%xmm0
    2109:	c5 f9 28 98 f0 00 00 	vmovapd 0xf0(%rax),%xmm3
    2110:	00 
    2111:	c5 e1 59 9b f0 00 00 	vmulpd 0xf0(%rbx),%xmm3,%xmm3
    2118:	00 
    2119:	c5 e9 58 d3          	vaddpd %xmm3,%xmm2,%xmm2
    211d:	c5 f9 58 c2          	vaddpd %xmm2,%xmm0,%xmm0
    2121:	c5 f9 28 90 30 01 00 	vmovapd 0x130(%rax),%xmm2
    2128:	00 
    2129:	c5 e9 59 a3 30 01 00 	vmulpd 0x130(%rbx),%xmm2,%xmm4
    2130:	00 
    2131:	c5 f9 28 90 70 01 00 	vmovapd 0x170(%rax),%xmm2
    2138:	00 
    2139:	c5 e9 59 8b 70 01 00 	vmulpd 0x170(%rbx),%xmm2,%xmm1
    2140:	00 
    2141:	c5 f9 29 4c 24 60    	vmovapd %xmm1,0x60(%rsp)
    2147:	c5 d9 58 e1          	vaddpd %xmm1,%xmm4,%xmm4
    214b:	c5 f9 28 b0 b0 01 00 	vmovapd 0x1b0(%rax),%xmm6
    2152:	00 
    2153:	c5 c9 59 b3 b0 01 00 	vmulpd 0x1b0(%rbx),%xmm6,%xmm6
    215a:	00 
    215b:	c5 d9 58 e6          	vaddpd %xmm6,%xmm4,%xmm4
    215f:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    2163:	c5 f9 28 a0 f0 01 00 	vmovapd 0x1f0(%rax),%xmm4
    216a:	00 
    216b:	c5 d9 59 8b f0 01 00 	vmulpd 0x1f0(%rbx),%xmm4,%xmm1
    2172:	00 
    2173:	c5 f9 29 8c 24 10 02 	vmovapd %xmm1,0x210(%rsp)
    217a:	00 00 
    217c:	c5 f9 28 a0 30 02 00 	vmovapd 0x230(%rax),%xmm4
    2183:	00 
    2184:	c5 d9 59 a3 30 02 00 	vmulpd 0x230(%rbx),%xmm4,%xmm4
    218b:	00 
    218c:	c5 f1 58 e4          	vaddpd %xmm4,%xmm1,%xmm4
    2190:	c5 f9 28 b0 70 02 00 	vmovapd 0x270(%rax),%xmm6
    2197:	00 
    2198:	c5 c9 59 8b 70 02 00 	vmulpd 0x270(%rbx),%xmm6,%xmm1
    219f:	00 
    21a0:	c5 f9 29 4c 24 10    	vmovapd %xmm1,0x10(%rsp)
    21a6:	c5 d9 58 e1          	vaddpd %xmm1,%xmm4,%xmm4
    21aa:	c5 f9 28 b0 b0 02 00 	vmovapd 0x2b0(%rax),%xmm6
    21b1:	00 
    21b2:	c5 c9 59 b3 b0 02 00 	vmulpd 0x2b0(%rbx),%xmm6,%xmm6
    21b9:	00 
    21ba:	c5 d9 58 e6          	vaddpd %xmm6,%xmm4,%xmm4
    21be:	c5 f9 28 b0 f0 02 00 	vmovapd 0x2f0(%rax),%xmm6
    21c5:	00 
    21c6:	c5 c9 59 8b f0 02 00 	vmulpd 0x2f0(%rbx),%xmm6,%xmm1
    21cd:	00 
    21ce:	c5 f9 29 4c 24 70    	vmovapd %xmm1,0x70(%rsp)
    21d4:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    21d8:	c5 f9 28 a0 30 03 00 	vmovapd 0x330(%rax),%xmm4
    21df:	00 
    21e0:	c5 d9 59 a3 30 03 00 	vmulpd 0x330(%rbx),%xmm4,%xmm4
    21e7:	00 
    21e8:	c5 f1 58 e4          	vaddpd %xmm4,%xmm1,%xmm4
    21ec:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    21f0:	c5 f9 29 84 24 a0 00 	vmovapd %xmm0,0xa0(%rsp)
    21f7:	00 00 
    21f9:	c5 fd 10 80 10 03 00 	vmovupd 0x310(%rax),%ymm0
    2200:	00 
    2201:	c5 fd 59 83 10 03 00 	vmulpd 0x310(%rbx),%ymm0,%ymm0
    2208:	00 
    2209:	c5 fd 10 a0 d0 02 00 	vmovupd 0x2d0(%rax),%ymm4
    2210:	00 
    2211:	c5 dd 59 a3 d0 02 00 	vmulpd 0x2d0(%rbx),%ymm4,%ymm4
    2218:	00 
    2219:	c5 fd 10 b0 10 02 00 	vmovupd 0x210(%rax),%ymm6
    2220:	00 
    2221:	c5 cd 59 b3 10 02 00 	vmulpd 0x210(%rbx),%ymm6,%ymm6
    2228:	00 
    2229:	c5 fd 10 b8 d0 01 00 	vmovupd 0x1d0(%rax),%ymm7
    2230:	00 
    2231:	c5 c5 59 bb d0 01 00 	vmulpd 0x1d0(%rbx),%ymm7,%ymm7
    2238:	00 
    2239:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    223d:	c5 fd 11 84 24 80 00 	vmovupd %ymm0,0x80(%rsp)
    2244:	00 00 
    2246:	c5 c5 58 c6          	vaddpd %ymm6,%ymm7,%ymm0
    224a:	c5 fd 10 a0 50 02 00 	vmovupd 0x250(%rax),%ymm4
    2251:	00 
    2252:	c5 dd 59 a3 50 02 00 	vmulpd 0x250(%rbx),%ymm4,%ymm4
    2259:	00 
    225a:	c5 fd 58 c4          	vaddpd %ymm4,%ymm0,%ymm0
    225e:	c5 fd 10 a0 90 02 00 	vmovupd 0x290(%rax),%ymm4
    2265:	00 
    2266:	c5 dd 59 a3 90 02 00 	vmulpd 0x290(%rbx),%ymm4,%ymm4
    226d:	00 
    226e:	c5 fd 10 b0 50 01 00 	vmovupd 0x150(%rax),%ymm6
    2275:	00 
    2276:	c5 cd 59 b3 50 01 00 	vmulpd 0x150(%rbx),%ymm6,%ymm6
    227d:	00 
    227e:	c5 fd 58 c4          	vaddpd %ymm4,%ymm0,%ymm0
    2282:	c5 fd 11 84 24 60 01 	vmovupd %ymm0,0x160(%rsp)
    2289:	00 00 
    228b:	c5 fd 10 80 10 01 00 	vmovupd 0x110(%rax),%ymm0
    2292:	00 
    2293:	c5 fd 59 83 10 01 00 	vmulpd 0x110(%rbx),%ymm0,%ymm0
    229a:	00 
    229b:	c5 fd 58 c6          	vaddpd %ymm6,%ymm0,%ymm0
    229f:	c5 f9 28 25 d9 0d 00 	vmovapd 0xdd9(%rip),%xmm4        # 3080 <_IO_stdin_used+0x80>
    22a6:	00 
    22a7:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    22ab:	c4 e2 cd 92 3c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm7
    22b1:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    22b5:	c4 62 cd 92 0c e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm9
    22bb:	c5 fd 10 a0 90 01 00 	vmovupd 0x190(%rax),%ymm4
    22c2:	00 
    22c3:	c5 dd 59 a3 90 01 00 	vmulpd 0x190(%rbx),%ymm4,%ymm4
    22ca:	00 
    22cb:	c5 fd 58 c4          	vaddpd %ymm4,%ymm0,%ymm0
    22cf:	c5 fd 11 84 24 a0 02 	vmovupd %ymm0,0x2a0(%rsp)
    22d6:	00 00 
    22d8:	c5 f9 28 05 b0 0d 00 	vmovapd 0xdb0(%rip),%xmm0        # 3090 <_IO_stdin_used+0x90>
    22df:	00 
    22e0:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
    22e4:	c4 e2 dd 92 34 c0    	vgatherdpd %ymm4,(%rax,%xmm0,8),%ymm6
    22ea:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
    22ee:	c4 62 dd 92 1c c3    	vgatherdpd %ymm4,(%rbx,%xmm0,8),%ymm11
    22f4:	c5 f9 28 05 a4 0d 00 	vmovapd 0xda4(%rip),%xmm0        # 30a0 <_IO_stdin_used+0xa0>
    22fb:	00 
    22fc:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
    2300:	c4 62 dd 92 24 c0    	vgatherdpd %ymm4,(%rax,%xmm0,8),%ymm12
    2306:	c5 dd 76 e4          	vpcmpeqd %ymm4,%ymm4,%ymm4
    230a:	c4 62 dd 92 2c c3    	vgatherdpd %ymm4,(%rbx,%xmm0,8),%ymm13
    2310:	c5 fd 10 80 d0 00 00 	vmovupd 0xd0(%rax),%ymm0
    2317:	00 
    2318:	c5 fd 59 83 d0 00 00 	vmulpd 0xd0(%rbx),%ymm0,%ymm0
    231f:	00 
    2320:	c5 fd 10 a0 90 00 00 	vmovupd 0x90(%rax),%ymm4
    2327:	00 
    2328:	c5 dd 59 a3 90 00 00 	vmulpd 0x90(%rbx),%ymm4,%ymm4
    232f:	00 
    2330:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    2334:	c5 fd 11 84 24 80 02 	vmovupd %ymm0,0x280(%rsp)
    233b:	00 00 
    233d:	c5 b5 59 c7          	vmulpd %ymm7,%ymm9,%ymm0
    2341:	c5 a5 59 e6          	vmulpd %ymm6,%ymm11,%ymm4
    2345:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    2349:	c5 f9 28 25 5f 0d 00 	vmovapd 0xd5f(%rip),%xmm4        # 30b0 <_IO_stdin_used+0xb0>
    2350:	00 
    2351:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    2355:	c4 e2 cd 92 3c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm7
    235b:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    235f:	c4 62 cd 92 0c e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm9
    2365:	c5 f9 28 25 53 0d 00 	vmovapd 0xd53(%rip),%xmm4        # 30c0 <_IO_stdin_used+0xc0>
    236c:	00 
    236d:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    2371:	c4 62 cd 92 1c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm11
    2377:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    237b:	c4 62 cd 92 34 e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm14
    2381:	c4 c1 1d 59 e5       	vmulpd %ymm13,%ymm12,%ymm4
    2386:	c5 b5 59 f7          	vmulpd %ymm7,%ymm9,%ymm6
    238a:	c5 cd 58 e4          	vaddpd %ymm4,%ymm6,%ymm4
    238e:	c4 c1 25 59 f6       	vmulpd %ymm14,%ymm11,%ymm6
    2393:	c5 f9 28 3d 35 0d 00 	vmovapd 0xd35(%rip),%xmm7        # 30d0 <_IO_stdin_used+0xd0>
    239a:	00 
    239b:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    23a0:	c4 62 b5 92 1c f8    	vgatherdpd %ymm9,(%rax,%xmm7,8),%ymm11
    23a6:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    23ab:	c4 62 b5 92 24 fb    	vgatherdpd %ymm9,(%rbx,%xmm7,8),%ymm12
    23b1:	c5 f9 28 3d 27 0d 00 	vmovapd 0xd27(%rip),%xmm7        # 30e0 <_IO_stdin_used+0xe0>
    23b8:	00 
    23b9:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    23be:	c4 62 b5 92 2c f8    	vgatherdpd %ymm9,(%rax,%xmm7,8),%ymm13
    23c4:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    23c9:	c4 62 b5 92 34 fb    	vgatherdpd %ymm9,(%rbx,%xmm7,8),%ymm14
    23cf:	c4 c1 25 59 fc       	vmulpd %ymm12,%ymm11,%ymm7
    23d4:	c5 cd 58 f7          	vaddpd %ymm7,%ymm6,%ymm6
    23d8:	c5 cd 58 e4          	vaddpd %ymm4,%ymm6,%ymm4
    23dc:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    23e0:	c5 f9 28 25 08 0d 00 	vmovapd 0xd08(%rip),%xmm4        # 30f0 <_IO_stdin_used+0xf0>
    23e7:	00 
    23e8:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    23ec:	c4 e2 cd 92 3c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm7
    23f2:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    23f6:	c4 62 cd 92 0c e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm9
    23fc:	c4 e3 7d 19 c4 01    	vextractf128 $0x1,%ymm0,%xmm4
    2402:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    2406:	c4 e3 79 05 e0 01    	vpermilpd $0x1,%xmm0,%xmm4
    240c:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    2410:	c4 c1 15 59 e6       	vmulpd %ymm14,%ymm13,%ymm4
    2415:	c5 f9 28 35 e3 0c 00 	vmovapd 0xce3(%rip),%xmm6        # 3100 <_IO_stdin_used+0x100>
    241c:	00 
    241d:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    2422:	c4 62 a5 92 24 f0    	vgatherdpd %ymm11,(%rax,%xmm6,8),%ymm12
    2428:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    242d:	c4 62 a5 92 2c f3    	vgatherdpd %ymm11,(%rbx,%xmm6,8),%ymm13
    2433:	c5 f9 28 35 d5 0c 00 	vmovapd 0xcd5(%rip),%xmm6        # 3110 <_IO_stdin_used+0x110>
    243a:	00 
    243b:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    2440:	c4 62 a5 92 34 f0    	vgatherdpd %ymm11,(%rax,%xmm6,8),%ymm14
    2446:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    244b:	c4 62 a5 92 3c f3    	vgatherdpd %ymm11,(%rbx,%xmm6,8),%ymm15
    2451:	c5 b5 59 f7          	vmulpd %ymm7,%ymm9,%ymm6
    2455:	c5 4d 58 cc          	vaddpd %ymm4,%ymm6,%ymm9
    2459:	c4 c1 1d 59 f5       	vmulpd %ymm13,%ymm12,%ymm6
    245e:	c4 c1 0d 59 ff       	vmulpd %ymm15,%ymm14,%ymm7
    2463:	c5 f9 28 25 b5 0c 00 	vmovapd 0xcb5(%rip),%xmm4        # 3120 <_IO_stdin_used+0x120>
    246a:	00 
    246b:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    2470:	c4 62 a5 92 24 e0    	vgatherdpd %ymm11,(%rax,%xmm4,8),%ymm12
    2476:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    247b:	c4 62 a5 92 2c e3    	vgatherdpd %ymm11,(%rbx,%xmm4,8),%ymm13
    2481:	c5 f9 28 25 a7 0c 00 	vmovapd 0xca7(%rip),%xmm4        # 3130 <_IO_stdin_used+0x130>
    2488:	00 
    2489:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    248e:	c4 62 a5 92 34 e0    	vgatherdpd %ymm11,(%rax,%xmm4,8),%ymm14
    2494:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    2499:	c4 62 a5 92 3c e3    	vgatherdpd %ymm11,(%rbx,%xmm4,8),%ymm15
    249f:	c5 c5 58 e6          	vaddpd %ymm6,%ymm7,%ymm4
    24a3:	c4 c1 1d 59 f5       	vmulpd %ymm13,%ymm12,%ymm6
    24a8:	c4 c1 0d 59 ff       	vmulpd %ymm15,%ymm14,%ymm7
    24ad:	c5 cd 58 f7          	vaddpd %ymm7,%ymm6,%ymm6
    24b1:	c5 f9 28 3d 87 0c 00 	vmovapd 0xc87(%rip),%xmm7        # 3140 <_IO_stdin_used+0x140>
    24b8:	00 
    24b9:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    24be:	c4 62 a5 92 24 f8    	vgatherdpd %ymm11,(%rax,%xmm7,8),%ymm12
    24c4:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    24c9:	c4 62 a5 92 2c fb    	vgatherdpd %ymm11,(%rbx,%xmm7,8),%ymm13
    24cf:	c5 f9 28 3d 79 0c 00 	vmovapd 0xc79(%rip),%xmm7        # 3150 <_IO_stdin_used+0x150>
    24d6:	00 
    24d7:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    24dc:	c4 62 a5 92 34 f8    	vgatherdpd %ymm11,(%rax,%xmm7,8),%ymm14
    24e2:	c4 41 25 76 db       	vpcmpeqd %ymm11,%ymm11,%ymm11
    24e7:	c4 62 a5 92 3c fb    	vgatherdpd %ymm11,(%rbx,%xmm7,8),%ymm15
    24ed:	c5 cd 58 e4          	vaddpd %ymm4,%ymm6,%ymm4
    24f1:	c5 b5 58 e4          	vaddpd %ymm4,%ymm9,%ymm4
    24f5:	c4 e3 7d 19 e6 01    	vextractf128 $0x1,%ymm4,%xmm6
    24fb:	c5 d9 58 e6          	vaddpd %xmm6,%xmm4,%xmm4
    24ff:	c5 f9 28 35 59 0c 00 	vmovapd 0xc59(%rip),%xmm6        # 3160 <_IO_stdin_used+0x160>
    2506:	00 
    2507:	c5 c5 76 ff          	vpcmpeqd %ymm7,%ymm7,%ymm7
    250b:	c4 62 c5 92 0c f0    	vgatherdpd %ymm7,(%rax,%xmm6,8),%ymm9
    2511:	c5 c5 76 ff          	vpcmpeqd %ymm7,%ymm7,%ymm7
    2515:	c4 62 c5 92 1c f3    	vgatherdpd %ymm7,(%rbx,%xmm6,8),%ymm11
    251b:	c4 e3 79 05 f4 01    	vpermilpd $0x1,%xmm4,%xmm6
    2521:	c5 db 58 e6          	vaddsd %xmm6,%xmm4,%xmm4
    2525:	c5 d9 14 c0          	vunpcklpd %xmm0,%xmm4,%xmm0
    2529:	c5 f9 29 84 24 00 02 	vmovapd %xmm0,0x200(%rsp)
    2530:	00 00 
    2532:	c4 c1 1d 59 c5       	vmulpd %ymm13,%ymm12,%ymm0
    2537:	c4 c1 0d 59 e7       	vmulpd %ymm15,%ymm14,%ymm4
    253c:	c5 f9 28 35 2c 0c 00 	vmovapd 0xc2c(%rip),%xmm6        # 3170 <_IO_stdin_used+0x170>
    2543:	00 
    2544:	c5 c5 76 ff          	vpcmpeqd %ymm7,%ymm7,%ymm7
    2548:	c4 62 c5 92 24 f0    	vgatherdpd %ymm7,(%rax,%xmm6,8),%ymm12
    254e:	c5 c5 76 ff          	vpcmpeqd %ymm7,%ymm7,%ymm7
    2552:	c4 62 c5 92 2c f3    	vgatherdpd %ymm7,(%rbx,%xmm6,8),%ymm13
    2558:	c5 f9 28 35 20 0c 00 	vmovapd 0xc20(%rip),%xmm6        # 3180 <_IO_stdin_used+0x180>
    255f:	00 
    2560:	c5 c5 76 ff          	vpcmpeqd %ymm7,%ymm7,%ymm7
    2564:	c4 62 c5 92 34 f0    	vgatherdpd %ymm7,(%rax,%xmm6,8),%ymm14
    256a:	c5 c5 76 ff          	vpcmpeqd %ymm7,%ymm7,%ymm7
    256e:	c4 62 c5 92 3c f3    	vgatherdpd %ymm7,(%rbx,%xmm6,8),%ymm15
    2574:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    2578:	c4 c1 35 59 e3       	vmulpd %ymm11,%ymm9,%ymm4
    257d:	c4 c1 1d 59 f5       	vmulpd %ymm13,%ymm12,%ymm6
    2582:	c5 cd 58 e4          	vaddpd %ymm4,%ymm6,%ymm4
    2586:	c4 c1 0d 59 f7       	vmulpd %ymm15,%ymm14,%ymm6
    258b:	c5 f9 28 3d fd 0b 00 	vmovapd 0xbfd(%rip),%xmm7        # 3190 <_IO_stdin_used+0x190>
    2592:	00 
    2593:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    2598:	c4 62 b5 92 1c f8    	vgatherdpd %ymm9,(%rax,%xmm7,8),%ymm11
    259e:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    25a3:	c4 62 b5 92 24 fb    	vgatherdpd %ymm9,(%rbx,%xmm7,8),%ymm12
    25a9:	c4 c1 25 59 fc       	vmulpd %ymm12,%ymm11,%ymm7
    25ae:	c5 cd 58 f7          	vaddpd %ymm7,%ymm6,%ymm6
    25b2:	c5 cd 58 e4          	vaddpd %ymm4,%ymm6,%ymm4
    25b6:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    25ba:	c5 f9 28 25 de 0b 00 	vmovapd 0xbde(%rip),%xmm4        # 31a0 <_IO_stdin_used+0x1a0>
    25c1:	00 
    25c2:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    25c6:	c4 e2 cd 92 3c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm7
    25cc:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    25d0:	c4 62 cd 92 0c e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm9
    25d6:	c5 f9 28 25 d2 0b 00 	vmovapd 0xbd2(%rip),%xmm4        # 31b0 <_IO_stdin_used+0x1b0>
    25dd:	00 
    25de:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    25e2:	c4 62 cd 92 1c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm11
    25e8:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    25ec:	c4 62 cd 92 24 e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm12
    25f2:	c4 e3 7d 19 c4 01    	vextractf128 $0x1,%ymm0,%xmm4
    25f8:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    25fc:	c4 e3 79 05 e0 01    	vpermilpd $0x1,%xmm0,%xmm4
    2602:	c5 fb 58 cc          	vaddsd %xmm4,%xmm0,%xmm1
    2606:	c5 f9 28 25 b2 0b 00 	vmovapd 0xbb2(%rip),%xmm4        # 31c0 <_IO_stdin_used+0x1c0>
    260d:	00 
    260e:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    2612:	c4 62 cd 92 2c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm13
    2618:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    261c:	c4 62 cd 92 34 e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm14
    2622:	c5 f9 28 25 a6 0b 00 	vmovapd 0xba6(%rip),%xmm4        # 31d0 <_IO_stdin_used+0x1d0>
    2629:	00 
    262a:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    262e:	c4 62 cd 92 3c e0    	vgatherdpd %ymm6,(%rax,%xmm4,8),%ymm15
    2634:	c5 cd 76 f6          	vpcmpeqd %ymm6,%ymm6,%ymm6
    2638:	c4 e2 cd 92 04 e3    	vgatherdpd %ymm6,(%rbx,%xmm4,8),%ymm0
    263e:	c5 b5 59 e7          	vmulpd %ymm7,%ymm9,%ymm4
    2642:	c4 c1 25 59 f4       	vmulpd %ymm12,%ymm11,%ymm6
    2647:	c5 cd 58 e4          	vaddpd %ymm4,%ymm6,%ymm4
    264b:	c4 c1 15 59 f6       	vmulpd %ymm14,%ymm13,%ymm6
    2650:	c5 f9 28 3d 88 0b 00 	vmovapd 0xb88(%rip),%xmm7        # 31e0 <_IO_stdin_used+0x1e0>
    2657:	00 
    2658:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    265d:	c4 62 b5 92 1c f8    	vgatherdpd %ymm9,(%rax,%xmm7,8),%ymm11
    2663:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    2668:	c4 62 b5 92 24 fb    	vgatherdpd %ymm9,(%rbx,%xmm7,8),%ymm12
    266e:	c5 f9 28 3d 7a 0b 00 	vmovapd 0xb7a(%rip),%xmm7        # 31f0 <_IO_stdin_used+0x1f0>
    2675:	00 
    2676:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    267b:	c4 62 b5 92 2c f8    	vgatherdpd %ymm9,(%rax,%xmm7,8),%ymm13
    2681:	c4 41 35 76 c9       	vpcmpeqd %ymm9,%ymm9,%ymm9
    2686:	c4 62 b5 92 34 fb    	vgatherdpd %ymm9,(%rbx,%xmm7,8),%ymm14
    268c:	c5 85 59 c0          	vmulpd %ymm0,%ymm15,%ymm0
    2690:	c5 fd 58 c6          	vaddpd %ymm6,%ymm0,%ymm0
    2694:	c4 c1 25 59 f4       	vmulpd %ymm12,%ymm11,%ymm6
    2699:	c4 c1 15 59 fe       	vmulpd %ymm14,%ymm13,%ymm7
    269e:	c5 cd 58 f7          	vaddpd %ymm7,%ymm6,%ymm6
    26a2:	c5 cd 58 c0          	vaddpd %ymm0,%ymm6,%ymm0
    26a6:	c5 fd 58 c4          	vaddpd %ymm4,%ymm0,%ymm0
    26aa:	c4 e3 7d 19 c4 01    	vextractf128 $0x1,%ymm0,%xmm4
    26b0:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    26b4:	c4 e3 79 05 e0 01    	vpermilpd $0x1,%xmm0,%xmm4
    26ba:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    26be:	c5 f9 14 c1          	vunpcklpd %xmm1,%xmm0,%xmm0
    26c2:	c5 fd 11 84 24 60 02 	vmovupd %ymm0,0x260(%rsp)
    26c9:	00 00 
    26cb:	c5 ad 58 83 e0 02 00 	vaddpd 0x2e0(%rbx),%ymm10,%ymm0
    26d2:	00 
    26d3:	c4 e3 55 06 c8 31    	vperm2f128 $0x31,%ymm0,%ymm5,%ymm1
    26d9:	c4 e3 55 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm5,%ymm0
    26df:	c5 fd 15 d1          	vunpckhpd %ymm1,%ymm0,%ymm2
    26e3:	c5 fd 11 94 24 20 02 	vmovupd %ymm2,0x220(%rsp)
    26ea:	00 00 
    26ec:	c5 fd 14 c1          	vunpcklpd %ymm1,%ymm0,%ymm0
    26f0:	c5 fd 11 84 24 40 02 	vmovupd %ymm0,0x240(%rsp)
    26f7:	00 00 
    26f9:	c5 fb 10 40 10       	vmovsd 0x10(%rax),%xmm0
    26fe:	c5 fb 59 43 10       	vmulsd 0x10(%rbx),%xmm0,%xmm0
    2703:	c5 f9 10 48 18       	vmovupd 0x18(%rax),%xmm1
    2708:	c5 f1 59 4b 18       	vmulpd 0x18(%rbx),%xmm1,%xmm1
    270d:	c5 fb 10 a0 90 00 00 	vmovsd 0x90(%rax),%xmm4
    2714:	00 
    2715:	c5 db 59 a3 90 00 00 	vmulsd 0x90(%rbx),%xmm4,%xmm4
    271c:	00 
    271d:	c5 f9 10 a8 98 00 00 	vmovupd 0x98(%rax),%xmm5
    2724:	00 
    2725:	c5 d1 59 ab 98 00 00 	vmulpd 0x98(%rbx),%xmm5,%xmm5
    272c:	00 
    272d:	c5 db 58 e0          	vaddsd %xmm0,%xmm4,%xmm4
    2731:	c5 d1 58 f1          	vaddpd %xmm1,%xmm5,%xmm6
    2735:	c5 fd 10 40 28       	vmovupd 0x28(%rax),%ymm0
    273a:	c5 fd 59 43 28       	vmulpd 0x28(%rbx),%ymm0,%ymm0
    273f:	c5 fd 10 88 a8 00 00 	vmovupd 0xa8(%rax),%ymm1
    2746:	00 
    2747:	c5 f5 59 8b a8 00 00 	vmulpd 0xa8(%rbx),%ymm1,%ymm1
    274e:	00 
    274f:	c5 75 58 d8          	vaddpd %ymm0,%ymm1,%ymm11
    2753:	c5 fd 10 40 48       	vmovupd 0x48(%rax),%ymm0
    2758:	c5 fd 59 43 48       	vmulpd 0x48(%rbx),%ymm0,%ymm0
    275d:	c5 fb 10 48 68       	vmovsd 0x68(%rax),%xmm1
    2762:	c5 f3 59 4b 68       	vmulsd 0x68(%rbx),%xmm1,%xmm1
    2767:	c5 fd 10 a8 c8 00 00 	vmovupd 0xc8(%rax),%ymm5
    276e:	00 
    276f:	c5 d5 59 ab c8 00 00 	vmulpd 0xc8(%rbx),%ymm5,%ymm5
    2776:	00 
    2777:	c5 d5 58 d0          	vaddpd %ymm0,%ymm5,%ymm2
    277b:	c5 fb 10 a8 e8 00 00 	vmovsd 0xe8(%rax),%xmm5
    2782:	00 
    2783:	c5 d3 59 ab e8 00 00 	vmulsd 0xe8(%rbx),%xmm5,%xmm5
    278a:	00 
    278b:	c5 53 58 c9          	vaddsd %xmm1,%xmm5,%xmm9
    278f:	c5 39 58 c3          	vaddpd %xmm3,%xmm8,%xmm8
    2793:	c5 f9 28 98 80 01 00 	vmovapd 0x180(%rax),%xmm3
    279a:	00 
    279b:	c5 e1 59 83 80 01 00 	vmulpd 0x180(%rbx),%xmm3,%xmm0
    27a2:	00 
    27a3:	c5 f9 29 84 24 d0 01 	vmovapd %xmm0,0x1d0(%rsp)
    27aa:	00 00 
    27ac:	c5 f9 28 98 00 01 00 	vmovapd 0x100(%rax),%xmm3
    27b3:	00 
    27b4:	c5 e1 59 8b 00 01 00 	vmulpd 0x100(%rbx),%xmm3,%xmm1
    27bb:	00 
    27bc:	c5 f9 29 8c 24 c0 01 	vmovapd %xmm1,0x1c0(%rsp)
    27c3:	00 00 
    27c5:	c5 f9 28 98 80 00 00 	vmovapd 0x80(%rax),%xmm3
    27cc:	00 
    27cd:	c5 e1 59 bb 80 00 00 	vmulpd 0x80(%rbx),%xmm3,%xmm7
    27d4:	00 
    27d5:	c5 f9 29 bc 24 f0 01 	vmovapd %xmm7,0x1f0(%rsp)
    27dc:	00 00 
    27de:	c5 f9 28 18          	vmovapd (%rax),%xmm3
    27e2:	c5 e1 59 1b          	vmulpd (%rbx),%xmm3,%xmm3
    27e6:	c5 f9 29 9c 24 e0 01 	vmovapd %xmm3,0x1e0(%rsp)
    27ed:	00 00 
    27ef:	c5 c1 58 db          	vaddpd %xmm3,%xmm7,%xmm3
    27f3:	c5 f1 58 f8          	vaddpd %xmm0,%xmm1,%xmm7
    27f7:	c5 e1 58 c7          	vaddpd %xmm7,%xmm3,%xmm0
    27fb:	c5 f9 29 84 24 b0 01 	vmovapd %xmm0,0x1b0(%rsp)
    2802:	00 00 
    2804:	c5 fb 10 98 10 01 00 	vmovsd 0x110(%rax),%xmm3
    280b:	00 
    280c:	c5 e3 59 9b 10 01 00 	vmulsd 0x110(%rbx),%xmm3,%xmm3
    2813:	00 
    2814:	c5 fb 10 b8 90 01 00 	vmovsd 0x190(%rax),%xmm7
    281b:	00 
    281c:	c5 c3 59 bb 90 01 00 	vmulsd 0x190(%rbx),%xmm7,%xmm7
    2823:	00 
    2824:	c5 e3 58 df          	vaddsd %xmm7,%xmm3,%xmm3
    2828:	c5 5b 58 f3          	vaddsd %xmm3,%xmm4,%xmm14
    282c:	c5 f9 10 98 18 01 00 	vmovupd 0x118(%rax),%xmm3
    2833:	00 
    2834:	c5 e1 59 9b 18 01 00 	vmulpd 0x118(%rbx),%xmm3,%xmm3
    283b:	00 
    283c:	c5 f9 10 b8 98 01 00 	vmovupd 0x198(%rax),%xmm7
    2843:	00 
    2844:	c5 c1 59 bb 98 01 00 	vmulpd 0x198(%rbx),%xmm7,%xmm7
    284b:	00 
    284c:	c5 e1 58 df          	vaddpd %xmm7,%xmm3,%xmm3
    2850:	c5 fd 10 b8 28 01 00 	vmovupd 0x128(%rax),%ymm7
    2857:	00 
    2858:	c5 c5 59 8b 28 01 00 	vmulpd 0x128(%rbx),%ymm7,%ymm1
    285f:	00 
    2860:	c5 fd 10 b8 a8 01 00 	vmovupd 0x1a8(%rax),%ymm7
    2867:	00 
    2868:	c5 c5 59 83 a8 01 00 	vmulpd 0x1a8(%rbx),%ymm7,%ymm0
    286f:	00 
    2870:	c5 49 58 d3          	vaddpd %xmm3,%xmm6,%xmm10
    2874:	c5 f5 58 c0          	vaddpd %ymm0,%ymm1,%ymm0
    2878:	c5 25 58 d8          	vaddpd %ymm0,%ymm11,%ymm11
    287c:	c5 fd 10 80 48 01 00 	vmovupd 0x148(%rax),%ymm0
    2883:	00 
    2884:	c5 fd 59 83 48 01 00 	vmulpd 0x148(%rbx),%ymm0,%ymm0
    288b:	00 
    288c:	c5 fd 10 88 c8 01 00 	vmovupd 0x1c8(%rax),%ymm1
    2893:	00 
    2894:	c5 f5 59 8b c8 01 00 	vmulpd 0x1c8(%rbx),%ymm1,%ymm1
    289b:	00 
    289c:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    28a0:	c5 6d 58 e8          	vaddpd %ymm0,%ymm2,%ymm13
    28a4:	c5 fb 10 80 68 01 00 	vmovsd 0x168(%rax),%xmm0
    28ab:	00 
    28ac:	c5 fb 59 83 68 01 00 	vmulsd 0x168(%rbx),%xmm0,%xmm0
    28b3:	00 
    28b4:	c5 fb 10 88 e8 01 00 	vmovsd 0x1e8(%rax),%xmm1
    28bb:	00 
    28bc:	c5 f3 59 8b e8 01 00 	vmulsd 0x1e8(%rbx),%xmm1,%xmm1
    28c3:	00 
    28c4:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    28c8:	c5 33 58 f8          	vaddsd %xmm0,%xmm9,%xmm15
    28cc:	c5 f9 28 84 24 10 02 	vmovapd 0x210(%rsp),%xmm0
    28d3:	00 00 
    28d5:	c5 f9 58 44 24 60    	vaddpd 0x60(%rsp),%xmm0,%xmm0
    28db:	c5 b9 58 c0          	vaddpd %xmm0,%xmm8,%xmm0
    28df:	c5 f9 29 44 24 60    	vmovapd %xmm0,0x60(%rsp)
    28e5:	c5 fb 10 80 10 02 00 	vmovsd 0x210(%rax),%xmm0
    28ec:	00 
    28ed:	c5 fb 59 83 10 02 00 	vmulsd 0x210(%rbx),%xmm0,%xmm0
    28f4:	00 
    28f5:	c5 f9 10 88 18 02 00 	vmovupd 0x218(%rax),%xmm1
    28fc:	00 
    28fd:	c5 f1 59 8b 18 02 00 	vmulpd 0x218(%rbx),%xmm1,%xmm1
    2904:	00 
    2905:	c5 fb 10 90 90 02 00 	vmovsd 0x290(%rax),%xmm2
    290c:	00 
    290d:	c5 eb 59 93 90 02 00 	vmulsd 0x290(%rbx),%xmm2,%xmm2
    2914:	00 
    2915:	c5 fb 58 ea          	vaddsd %xmm2,%xmm0,%xmm5
    2919:	c5 f9 10 80 98 02 00 	vmovupd 0x298(%rax),%xmm0
    2920:	00 
    2921:	c5 f9 59 83 98 02 00 	vmulpd 0x298(%rbx),%xmm0,%xmm0
    2928:	00 
    2929:	c5 f1 58 d8          	vaddpd %xmm0,%xmm1,%xmm3
    292d:	c5 fd 10 80 28 02 00 	vmovupd 0x228(%rax),%ymm0
    2934:	00 
    2935:	c5 fd 59 83 28 02 00 	vmulpd 0x228(%rbx),%ymm0,%ymm0
    293c:	00 
    293d:	c5 fd 10 90 a8 02 00 	vmovupd 0x2a8(%rax),%ymm2
    2944:	00 
    2945:	c5 ed 59 93 a8 02 00 	vmulpd 0x2a8(%rbx),%ymm2,%ymm2
    294c:	00 
    294d:	c5 fd 58 d2          	vaddpd %ymm2,%ymm0,%ymm2
    2951:	c5 fd 10 80 48 02 00 	vmovupd 0x248(%rax),%ymm0
    2958:	00 
    2959:	c5 fd 59 83 48 02 00 	vmulpd 0x248(%rbx),%ymm0,%ymm0
    2960:	00 
    2961:	c5 fb 10 a0 68 02 00 	vmovsd 0x268(%rax),%xmm4
    2968:	00 
    2969:	c5 db 59 a3 68 02 00 	vmulsd 0x268(%rbx),%xmm4,%xmm4
    2970:	00 
    2971:	c5 fd 10 b0 c8 02 00 	vmovupd 0x2c8(%rax),%ymm6
    2978:	00 
    2979:	c5 cd 59 b3 c8 02 00 	vmulpd 0x2c8(%rbx),%ymm6,%ymm6
    2980:	00 
    2981:	c5 7b 10 a0 e8 02 00 	vmovsd 0x2e8(%rax),%xmm12
    2988:	00 
    2989:	c5 1b 59 a3 e8 02 00 	vmulsd 0x2e8(%rbx),%xmm12,%xmm12
    2990:	00 
    2991:	c5 fd 58 ce          	vaddpd %ymm6,%ymm0,%ymm1
    2995:	c5 1b 58 e4          	vaddsd %xmm4,%xmm12,%xmm12
    2999:	c5 f9 28 44 24 70    	vmovapd 0x70(%rsp),%xmm0
    299f:	c5 79 58 4c 24 10    	vaddpd 0x10(%rsp),%xmm0,%xmm9
    29a5:	c5 f9 28 80 00 03 00 	vmovapd 0x300(%rax),%xmm0
    29ac:	00 
    29ad:	c5 f9 59 83 00 03 00 	vmulpd 0x300(%rbx),%xmm0,%xmm0
    29b4:	00 
    29b5:	c5 f9 28 a0 80 02 00 	vmovapd 0x280(%rax),%xmm4
    29bc:	00 
    29bd:	c5 d9 59 b3 80 02 00 	vmulpd 0x280(%rbx),%xmm4,%xmm6
    29c4:	00 
    29c5:	c5 f9 28 a0 00 02 00 	vmovapd 0x200(%rax),%xmm4
    29cc:	00 
    29cd:	c5 d9 59 a3 00 02 00 	vmulpd 0x200(%rbx),%xmm4,%xmm4
    29d4:	00 
    29d5:	c5 59 58 c6          	vaddpd %xmm6,%xmm4,%xmm8
    29d9:	c5 b9 58 f8          	vaddpd %xmm0,%xmm8,%xmm7
    29dd:	c5 c1 58 bc 24 b0 01 	vaddpd 0x1b0(%rsp),%xmm7,%xmm7
    29e4:	00 00 
    29e6:	c5 f9 29 7c 24 10    	vmovapd %xmm7,0x10(%rsp)
    29ec:	c5 fb 10 b8 10 03 00 	vmovsd 0x310(%rax),%xmm7
    29f3:	00 
    29f4:	c5 c3 59 bb 10 03 00 	vmulsd 0x310(%rbx),%xmm7,%xmm7
    29fb:	00 
    29fc:	c5 d3 58 ef          	vaddsd %xmm7,%xmm5,%xmm5
    2a00:	c5 8b 58 ed          	vaddsd %xmm5,%xmm14,%xmm5
    2a04:	c5 fb 11 6c 24 70    	vmovsd %xmm5,0x70(%rsp)
    2a0a:	c5 f9 10 a8 18 03 00 	vmovupd 0x318(%rax),%xmm5
    2a11:	00 
    2a12:	c5 d1 59 ab 18 03 00 	vmulpd 0x318(%rbx),%xmm5,%xmm5
    2a19:	00 
    2a1a:	c5 e1 58 dd          	vaddpd %xmm5,%xmm3,%xmm3
    2a1e:	c5 29 58 d3          	vaddpd %xmm3,%xmm10,%xmm10
    2a22:	c5 fd 10 98 28 03 00 	vmovupd 0x328(%rax),%ymm3
    2a29:	00 
    2a2a:	c5 e5 59 9b 28 03 00 	vmulpd 0x328(%rbx),%ymm3,%ymm3
    2a31:	00 
    2a32:	c5 ed 58 d3          	vaddpd %ymm3,%ymm2,%ymm2
    2a36:	c5 a5 58 ea          	vaddpd %ymm2,%ymm11,%ymm5
    2a3a:	c5 fd 10 90 48 03 00 	vmovupd 0x348(%rax),%ymm2
    2a41:	00 
    2a42:	c5 ed 59 93 48 03 00 	vmulpd 0x348(%rbx),%ymm2,%ymm2
    2a49:	00 
    2a4a:	c5 f5 58 ca          	vaddpd %ymm2,%ymm1,%ymm1
    2a4e:	c5 15 58 f1          	vaddpd %ymm1,%ymm13,%ymm14
    2a52:	c5 fb 10 88 68 03 00 	vmovsd 0x368(%rax),%xmm1
    2a59:	00 
    2a5a:	c5 f3 59 8b 68 03 00 	vmulsd 0x368(%rbx),%xmm1,%xmm1
    2a61:	00 
    2a62:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
    2a66:	c5 f9 28 98 70 03 00 	vmovapd 0x370(%rax),%xmm3
    2a6d:	00 
    2a6e:	c5 e1 59 9b 70 03 00 	vmulpd 0x370(%rbx),%xmm3,%xmm3
    2a75:	00 
    2a76:	c5 03 58 d9          	vaddsd %xmm1,%xmm15,%xmm11
    2a7a:	c5 b1 58 cb          	vaddpd %xmm3,%xmm9,%xmm1
    2a7e:	c5 fd 10 94 24 20 02 	vmovupd 0x220(%rsp),%ymm2
    2a85:	00 00 
    2a87:	c4 e3 7d 19 d3 01    	vextractf128 $0x1,%ymm2,%xmm3
    2a8d:	c5 e9 58 db          	vaddpd %xmm3,%xmm2,%xmm3
    2a91:	c5 fd 10 94 24 40 02 	vmovupd 0x240(%rsp),%ymm2
    2a98:	00 00 
    2a9a:	c4 e3 7d 19 d7 01    	vextractf128 $0x1,%ymm2,%xmm7
    2aa0:	c5 e9 58 ff          	vaddpd %xmm7,%xmm2,%xmm7
    2aa4:	c5 c1 7c fb          	vhaddpd %xmm3,%xmm7,%xmm7
    2aa8:	c5 f9 28 98 10 03 00 	vmovapd 0x310(%rax),%xmm3
    2aaf:	00 
    2ab0:	c5 e1 59 9b 10 03 00 	vmulpd 0x310(%rbx),%xmm3,%xmm3
    2ab7:	00 
    2ab8:	c5 71 58 64 24 60    	vaddpd 0x60(%rsp),%xmm1,%xmm12
    2abe:	c5 f9 58 cb          	vaddpd %xmm3,%xmm0,%xmm1
    2ac2:	c5 41 58 c1          	vaddpd %xmm1,%xmm7,%xmm8
    2ac6:	c5 fd 10 48 50       	vmovupd 0x50(%rax),%ymm1
    2acb:	c5 f5 59 4b 50       	vmulpd 0x50(%rbx),%ymm1,%ymm1
    2ad0:	c5 fd 10 94 24 60 02 	vmovupd 0x260(%rsp),%ymm2
    2ad7:	00 00 
    2ad9:	c4 e3 6d 18 bc 24 00 	vinsertf128 $0x1,0x200(%rsp),%ymm2,%ymm7
    2ae0:	02 00 00 01 
    2ae4:	c5 7d 10 48 10       	vmovupd 0x10(%rax),%ymm9
    2ae9:	c5 35 59 4b 10       	vmulpd 0x10(%rbx),%ymm9,%ymm9
    2aee:	c4 63 7d 05 ab 00 03 	vpermilpd $0x6,0x300(%rbx),%ymm13
    2af5:	00 00 06 
    2af8:	c5 15 58 ff          	vaddpd %ymm7,%ymm13,%ymm15
    2afc:	c5 b5 58 c9          	vaddpd %ymm1,%ymm9,%ymm1
    2b00:	c5 f5 58 8c 24 80 02 	vaddpd 0x280(%rsp),%ymm1,%ymm1
    2b07:	00 00 
    2b09:	c5 f5 58 8c 24 a0 02 	vaddpd 0x2a0(%rsp),%ymm1,%ymm1
    2b10:	00 00 
    2b12:	c5 f5 58 8c 24 60 01 	vaddpd 0x160(%rsp),%ymm1,%ymm1
    2b19:	00 00 
    2b1b:	c5 f5 58 8c 24 80 00 	vaddpd 0x80(%rsp),%ymm1,%ymm1
    2b22:	00 00 
    2b24:	c5 f9 28 b8 c0 00 00 	vmovapd 0xc0(%rax),%xmm7
    2b2b:	00 
    2b2c:	c5 c1 59 bb c0 00 00 	vmulpd 0xc0(%rbx),%xmm7,%xmm7
    2b33:	00 
    2b34:	c5 f9 28 50 40       	vmovapd 0x40(%rax),%xmm2
    2b39:	c5 e9 59 53 40       	vmulpd 0x40(%rbx),%xmm2,%xmm2
    2b3e:	c5 e9 58 94 24 e0 01 	vaddpd 0x1e0(%rsp),%xmm2,%xmm2
    2b45:	00 00 
    2b47:	c5 c1 58 bc 24 f0 01 	vaddpd 0x1f0(%rsp),%xmm7,%xmm7
    2b4e:	00 00 
    2b50:	c5 e9 58 d7          	vaddpd %xmm7,%xmm2,%xmm2
    2b54:	c5 f9 28 b8 40 01 00 	vmovapd 0x140(%rax),%xmm7
    2b5b:	00 
    2b5c:	c5 c1 59 bb 40 01 00 	vmulpd 0x140(%rbx),%xmm7,%xmm7
    2b63:	00 
    2b64:	c5 c1 58 bc 24 c0 01 	vaddpd 0x1c0(%rsp),%xmm7,%xmm7
    2b6b:	00 00 
    2b6d:	c5 c1 58 bc 24 d0 01 	vaddpd 0x1d0(%rsp),%xmm7,%xmm7
    2b74:	00 00 
    2b76:	c5 e9 58 d7          	vaddpd %xmm7,%xmm2,%xmm2
    2b7a:	c5 f9 28 b8 c0 01 00 	vmovapd 0x1c0(%rax),%xmm7
    2b81:	00 
    2b82:	c5 c1 59 bb c0 01 00 	vmulpd 0x1c0(%rbx),%xmm7,%xmm7
    2b89:	00 
    2b8a:	c5 c1 58 e4          	vaddpd %xmm4,%xmm7,%xmm4
    2b8e:	c5 f9 28 b8 40 02 00 	vmovapd 0x240(%rax),%xmm7
    2b95:	00 
    2b96:	c5 c1 59 bb 40 02 00 	vmulpd 0x240(%rbx),%xmm7,%xmm7
    2b9d:	00 
    2b9e:	c5 d9 58 e7          	vaddpd %xmm7,%xmm4,%xmm4
    2ba2:	c5 d9 58 e6          	vaddpd %xmm6,%xmm4,%xmm4
    2ba6:	c5 e9 58 d4          	vaddpd %xmm4,%xmm2,%xmm2
    2baa:	c5 f9 28 a0 c0 02 00 	vmovapd 0x2c0(%rax),%xmm4
    2bb1:	00 
    2bb2:	c5 d9 59 a3 c0 02 00 	vmulpd 0x2c0(%rbx),%xmm4,%xmm4
    2bb9:	00 
    2bba:	c5 d9 58 c0          	vaddpd %xmm0,%xmm4,%xmm0
    2bbe:	c5 e9 58 c0          	vaddpd %xmm0,%xmm2,%xmm0
    2bc2:	c4 e3 79 05 d0 01    	vpermilpd $0x1,%xmm0,%xmm2
    2bc8:	c5 eb 58 c0          	vaddsd %xmm0,%xmm2,%xmm0
    2bcc:	c4 e3 79 05 d1 01    	vpermilpd $0x1,%xmm1,%xmm2
    2bd2:	c5 f3 58 d2          	vaddsd %xmm2,%xmm1,%xmm2
    2bd6:	c4 e3 7d 19 c9 01    	vextractf128 $0x1,%ymm1,%xmm1
    2bdc:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    2be0:	c4 e3 79 05 c9 01    	vpermilpd $0x1,%xmm1,%xmm1
    2be6:	c5 eb 58 c9          	vaddsd %xmm1,%xmm2,%xmm1
    2bea:	c5 f9 28 94 24 a0 00 	vmovapd 0xa0(%rsp),%xmm2
    2bf1:	00 00 
    2bf3:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    2bf7:	c4 e3 79 05 d2 01    	vpermilpd $0x1,%xmm2,%xmm2
    2bfd:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    2c01:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    2c05:	c5 fb 11 84 24 a0 00 	vmovsd %xmm0,0xa0(%rsp)
    2c0c:	00 00 
    2c0e:	c4 c3 79 05 c0 01    	vpermilpd $0x1,%xmm8,%xmm0
    2c14:	c5 bb 58 c0          	vaddsd %xmm0,%xmm8,%xmm0
    2c18:	c5 fb 11 84 24 80 00 	vmovsd %xmm0,0x80(%rsp)
    2c1f:	00 00 
    2c21:	c4 c3 79 05 c7 01    	vpermilpd $0x1,%xmm15,%xmm0
    2c27:	c5 83 58 c0          	vaddsd %xmm0,%xmm15,%xmm0
    2c2b:	c4 63 7d 19 f9 01    	vextractf128 $0x1,%ymm15,%xmm1
    2c31:	c4 e3 79 05 d1 01    	vpermilpd $0x1,%xmm1,%xmm2
    2c37:	c5 fb 58 c2          	vaddsd %xmm2,%xmm0,%xmm0
    2c3b:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    2c3f:	c5 fb 10 88 08 03 00 	vmovsd 0x308(%rax),%xmm1
    2c46:	00 
    2c47:	c5 f3 59 8b 08 03 00 	vmulsd 0x308(%rbx),%xmm1,%xmm1
    2c4e:	00 
    2c4f:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
    2c53:	c4 e3 79 05 d3 01    	vpermilpd $0x1,%xmm3,%xmm2
    2c59:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    2c5d:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    2c61:	c5 fb 11 84 24 60 01 	vmovsd %xmm0,0x160(%rsp)
    2c68:	00 00 
    2c6a:	c5 fd 28 40 60       	vmovapd 0x60(%rax),%ymm0
    2c6f:	c5 fd 59 43 60       	vmulpd 0x60(%rbx),%ymm0,%ymm0
    2c74:	c5 fd 10 8c 24 40 01 	vmovupd 0x140(%rsp),%ymm1
    2c7b:	00 00 
    2c7d:	c5 f5 58 4c 24 40    	vaddpd 0x40(%rsp),%ymm1,%ymm1
    2c83:	c5 fd 58 84 24 c0 00 	vaddpd 0xc0(%rsp),%ymm0,%ymm0
    2c8a:	00 00 
    2c8c:	c5 f5 58 c0          	vaddpd %ymm0,%ymm1,%ymm0
    2c90:	c5 fd 28 88 a0 00 00 	vmovapd 0xa0(%rax),%ymm1
    2c97:	00 
    2c98:	c5 f5 59 8b a0 00 00 	vmulpd 0xa0(%rbx),%ymm1,%ymm1
    2c9f:	00 
    2ca0:	c5 f5 58 8c 24 00 01 	vaddpd 0x100(%rsp),%ymm1,%ymm1
    2ca7:	00 00 
    2ca9:	c5 f5 58 8c 24 20 01 	vaddpd 0x120(%rsp),%ymm1,%ymm1
    2cb0:	00 00 
    2cb2:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    2cb6:	c5 fd 28 88 e0 00 00 	vmovapd 0xe0(%rax),%ymm1
    2cbd:	00 
    2cbe:	c5 f5 59 8b e0 00 00 	vmulpd 0xe0(%rbx),%ymm1,%ymm1
    2cc5:	00 
    2cc6:	c5 f5 58 8c 24 80 01 	vaddpd 0x180(%rsp),%ymm1,%ymm1
    2ccd:	00 00 
    2ccf:	c5 fd 28 90 20 01 00 	vmovapd 0x120(%rax),%ymm2
    2cd6:	00 
    2cd7:	c5 ed 59 93 20 01 00 	vmulpd 0x120(%rbx),%ymm2,%ymm2
    2cde:	00 
    2cdf:	c5 f5 58 ca          	vaddpd %ymm2,%ymm1,%ymm1
    2ce3:	c5 f5 58 8c 24 e0 00 	vaddpd 0xe0(%rsp),%ymm1,%ymm1
    2cea:	00 00 
    2cec:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    2cf0:	c5 fd 28 88 60 01 00 	vmovapd 0x160(%rax),%ymm1
    2cf7:	00 
    2cf8:	c5 f5 59 8b 60 01 00 	vmulpd 0x160(%rbx),%ymm1,%ymm1
    2cff:	00 
    2d00:	c5 f5 58 4c 24 20    	vaddpd 0x20(%rsp),%ymm1,%ymm1
    2d06:	c4 e2 7d 19 15 11 03 	vbroadcastsd 0x311(%rip),%ymm2        # 3020 <_IO_stdin_used+0x20>
    2d0d:	00 00 
    2d0f:	c5 f5 58 ca          	vaddpd %ymm2,%ymm1,%ymm1
    2d13:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    2d17:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
    2d1d:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
    2d21:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    2d27:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    2d2b:	c5 ab 58 4c 24 70    	vaddsd 0x70(%rsp),%xmm10,%xmm1
    2d31:	c4 e3 79 05 d5 01    	vpermilpd $0x1,%xmm5,%xmm2
    2d37:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    2d3b:	c4 c3 79 05 d2 01    	vpermilpd $0x1,%xmm10,%xmm2
    2d41:	c5 eb 58 d5          	vaddsd %xmm5,%xmm2,%xmm2
    2d45:	c4 e3 7d 19 eb 01    	vextractf128 $0x1,%ymm5,%xmm3
    2d4b:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    2d4f:	c4 e3 79 05 db 01    	vpermilpd $0x1,%xmm3,%xmm3
    2d55:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
    2d59:	c4 c3 79 05 de 01    	vpermilpd $0x1,%xmm14,%xmm3
    2d5f:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
    2d63:	c5 8b 58 d2          	vaddsd %xmm2,%xmm14,%xmm2
    2d67:	c4 63 7d 19 f3 01    	vextractf128 $0x1,%ymm14,%xmm3
    2d6d:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    2d71:	c5 a3 58 d2          	vaddsd %xmm2,%xmm11,%xmm2
    2d75:	c4 e3 79 05 db 01    	vpermilpd $0x1,%xmm3,%xmm3
    2d7b:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
    2d7f:	c5 9b 58 c9          	vaddsd %xmm1,%xmm12,%xmm1
    2d83:	c4 c3 79 05 dc 01    	vpermilpd $0x1,%xmm12,%xmm3
    2d89:	c5 eb 58 d3          	vaddsd %xmm3,%xmm2,%xmm2
    2d8d:	c5 f9 28 64 24 10    	vmovapd 0x10(%rsp),%xmm4
    2d93:	c4 e3 79 05 dc 01    	vpermilpd $0x1,%xmm4,%xmm3
    2d99:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
    2d9d:	c5 eb 58 d4          	vaddsd %xmm4,%xmm2,%xmm2
    2da1:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
    2da5:	c5 fb 11 4c 24 20    	vmovsd %xmm1,0x20(%rsp)
    2dab:	48 8d 3d 4e 04 00 00 	lea    0x44e(%rip),%rdi        # 3200 <_IO_stdin_used+0x200>
    2db2:	b0 01                	mov    $0x1,%al
    2db4:	c5 f8 77             	vzeroupper 
    2db7:	e8 84 e2 ff ff       	callq  1040 <printf@plt>
    2dbc:	48 8d 3d 48 04 00 00 	lea    0x448(%rip),%rdi        # 320b <_IO_stdin_used+0x20b>
    2dc3:	c5 fb 10 84 24 80 00 	vmovsd 0x80(%rsp),%xmm0
    2dca:	00 00 
    2dcc:	b0 01                	mov    $0x1,%al
    2dce:	e8 6d e2 ff ff       	callq  1040 <printf@plt>
    2dd3:	4c 89 ef             	mov    %r13,%rdi
    2dd6:	c5 fb 10 84 24 60 01 	vmovsd 0x160(%rsp),%xmm0
    2ddd:	00 00 
    2ddf:	b0 01                	mov    $0x1,%al
    2de1:	e8 5a e2 ff ff       	callq  1040 <printf@plt>
    2de6:	4c 89 e7             	mov    %r12,%rdi
    2de9:	c5 fb 10 84 24 a0 00 	vmovsd 0xa0(%rsp),%xmm0
    2df0:	00 00 
    2df2:	b0 01                	mov    $0x1,%al
    2df4:	e8 47 e2 ff ff       	callq  1040 <printf@plt>
    2df9:	4c 89 ff             	mov    %r15,%rdi
    2dfc:	c5 fb 10 44 24 20    	vmovsd 0x20(%rsp),%xmm0
    2e02:	b0 01                	mov    $0x1,%al
    2e04:	e8 37 e2 ff ff       	callq  1040 <printf@plt>
    2e09:	48 89 df             	mov    %rbx,%rdi
    2e0c:	e8 1f e2 ff ff       	callq  1030 <free@plt>
    2e11:	48 89 ef             	mov    %rbp,%rdi
    2e14:	e8 17 e2 ff ff       	callq  1030 <free@plt>
    2e19:	31 c0                	xor    %eax,%eax
    2e1b:	48 81 c4 c8 02 00 00 	add    $0x2c8,%rsp
    2e22:	5b                   	pop    %rbx
    2e23:	41 5c                	pop    %r12
    2e25:	41 5d                	pop    %r13
    2e27:	41 5e                	pop    %r14
    2e29:	41 5f                	pop    %r15
    2e2b:	5d                   	pop    %rbp
    2e2c:	c3                   	retq   
    2e2d:	0f 1f 00             	nopl   (%rax)

0000000000002e30 <__libc_csu_init>:
    2e30:	f3 0f 1e fa          	endbr64 
    2e34:	41 57                	push   %r15
    2e36:	4c 8d 3d 93 1f 00 00 	lea    0x1f93(%rip),%r15        # 4dd0 <__frame_dummy_init_array_entry>
    2e3d:	41 56                	push   %r14
    2e3f:	49 89 d6             	mov    %rdx,%r14
    2e42:	41 55                	push   %r13
    2e44:	49 89 f5             	mov    %rsi,%r13
    2e47:	41 54                	push   %r12
    2e49:	41 89 fc             	mov    %edi,%r12d
    2e4c:	55                   	push   %rbp
    2e4d:	48 8d 2d 8c 1f 00 00 	lea    0x1f8c(%rip),%rbp        # 4de0 <__do_global_dtors_aux_fini_array_entry>
    2e54:	53                   	push   %rbx
    2e55:	4c 29 fd             	sub    %r15,%rbp
    2e58:	48 83 ec 08          	sub    $0x8,%rsp
    2e5c:	e8 9f e1 ff ff       	callq  1000 <_init>
    2e61:	48 c1 fd 03          	sar    $0x3,%rbp
    2e65:	74 1f                	je     2e86 <__libc_csu_init+0x56>
    2e67:	31 db                	xor    %ebx,%ebx
    2e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2e70:	4c 89 f2             	mov    %r14,%rdx
    2e73:	4c 89 ee             	mov    %r13,%rsi
    2e76:	44 89 e7             	mov    %r12d,%edi
    2e79:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2e7d:	48 83 c3 01          	add    $0x1,%rbx
    2e81:	48 39 dd             	cmp    %rbx,%rbp
    2e84:	75 ea                	jne    2e70 <__libc_csu_init+0x40>
    2e86:	48 83 c4 08          	add    $0x8,%rsp
    2e8a:	5b                   	pop    %rbx
    2e8b:	5d                   	pop    %rbp
    2e8c:	41 5c                	pop    %r12
    2e8e:	41 5d                	pop    %r13
    2e90:	41 5e                	pop    %r14
    2e92:	41 5f                	pop    %r15
    2e94:	c3                   	retq   
    2e95:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2e9c:	00 00 00 00 

0000000000002ea0 <__libc_csu_fini>:
    2ea0:	f3 0f 1e fa          	endbr64 
    2ea4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000002ea8 <_fini>:
    2ea8:	f3 0f 1e fa          	endbr64 
    2eac:	48 83 ec 08          	sub    $0x8,%rsp
    2eb0:	48 83 c4 08          	add    $0x8,%rsp
    2eb4:	c3                   	retq   

Déassemblage de la section .rodata :

0000000000003000 <_IO_stdin_used>:
    3000:	01 00                	add    %eax,(%rax)
    3002:	02 00                	add    (%rax),%al
    3004:	00 00                	add    %al,(%rax)
    3006:	00 00                	add    %al,(%rax)
    3008:	9a                   	(bad)  
    3009:	99                   	cltd   
    300a:	99                   	cltd   
    300b:	99                   	cltd   
    300c:	99                   	cltd   
    300d:	99                   	cltd   
    300e:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    3013:	00 00                	add    %al,(%rax)
    3015:	00 f0                	add    %dh,%al
    3017:	3f                   	(bad)  
    3018:	00 00                	add    %al,(%rax)
    301a:	00 00                	add    %al,(%rax)
    301c:	00 00                	add    %al,(%rax)
    301e:	00 80 33 33 33 33    	add    %al,0x33333333(%rax)
    3024:	33 33                	xor    (%rbx),%esi
    3026:	f3 3f                	repz (bad) 
	...
    3048:	01 00                	add    %eax,(%rax)
    304a:	00 00                	add    %al,(%rax)
    304c:	00 00                	add    %al,(%rax)
    304e:	00 00                	add    %al,(%rax)
    3050:	02 00                	add    (%rax),%al
    3052:	00 00                	add    %al,(%rax)
    3054:	00 00                	add    %al,(%rax)
    3056:	00 00                	add    %al,(%rax)
    3058:	03 00                	add    (%rax),%eax
    305a:	00 00                	add    %al,(%rax)
    305c:	00 00                	add    %al,(%rax)
    305e:	00 00                	add    %al,(%rax)
    3060:	ff                   	(bad)  
    3061:	ff                   	(bad)  
    3062:	ff                   	(bad)  
    3063:	ff                   	(bad)  
    3064:	ff                   	(bad)  
    3065:	ff                   	(bad)  
    3066:	ff                   	(bad)  
    3067:	ff                   	(bad)  
    3068:	ff                   	(bad)  
    3069:	ff                   	(bad)  
    306a:	ff                   	(bad)  
    306b:	ff                   	(bad)  
    306c:	ff                   	(bad)  
    306d:	ff                   	(bad)  
    306e:	ff                   	(bad)  
    306f:	ff                   	(bad)  
    3070:	ff                   	(bad)  
    3071:	ff                   	(bad)  
    3072:	ff                   	(bad)  
    3073:	ff                   	(bad)  
    3074:	ff                   	(bad)  
    3075:	ff                   	(bad)  
    3076:	ff                   	(bad)  
    3077:	ff                   	(bad)  
    3078:	ff                   	(bad)  
    3079:	ff                   	(bad)  
    307a:	ff                   	(bad)  
    307b:	ff                   	(bad)  
    307c:	ff                   	(bad)  
    307d:	ff                   	(bad)  
    307e:	ff                   	(bad)  
    307f:	ff 52 00             	callq  *0x0(%rdx)
    3082:	00 00                	add    %al,(%rax)
    3084:	56                   	push   %rsi
    3085:	00 00                	add    %al,(%rax)
    3087:	00 5a 00             	add    %bl,0x0(%rdx)
    308a:	00 00                	add    %al,(%rax)
    308c:	5e                   	pop    %rsi
    308d:	00 00                	add    %al,(%rax)
    308f:	00 42 00             	add    %al,0x0(%rdx)
    3092:	00 00                	add    %al,(%rax)
    3094:	46 00 00             	rex.RX add %r8b,(%rax)
    3097:	00 4a 00             	add    %cl,0x0(%rdx)
    309a:	00 00                	add    %al,(%rax)
    309c:	4e 00 00             	rex.WRX add %r8b,(%rax)
    309f:	00 32                	add    %dh,(%rdx)
    30a1:	00 00                	add    %al,(%rax)
    30a3:	00 36                	add    %dh,(%rsi)
    30a5:	00 00                	add    %al,(%rax)
    30a7:	00 3a                	add    %bh,(%rdx)
    30a9:	00 00                	add    %al,(%rax)
    30ab:	00 3e                	add    %bh,(%rsi)
    30ad:	00 00                	add    %al,(%rax)
    30af:	00 22                	add    %ah,(%rdx)
    30b1:	00 00                	add    %al,(%rax)
    30b3:	00 26                	add    %ah,(%rsi)
    30b5:	00 00                	add    %al,(%rax)
    30b7:	00 2a                	add    %ch,(%rdx)
    30b9:	00 00                	add    %al,(%rax)
    30bb:	00 2e                	add    %ch,(%rsi)
    30bd:	00 00                	add    %al,(%rax)
    30bf:	00 12                	add    %dl,(%rdx)
    30c1:	00 00                	add    %al,(%rax)
    30c3:	00 16                	add    %dl,(%rsi)
    30c5:	00 00                	add    %al,(%rax)
    30c7:	00 1a                	add    %bl,(%rdx)
    30c9:	00 00                	add    %al,(%rax)
    30cb:	00 1e                	add    %bl,(%rsi)
    30cd:	00 00                	add    %al,(%rax)
    30cf:	00 02                	add    %al,(%rdx)
    30d1:	00 00                	add    %al,(%rax)
    30d3:	00 06                	add    %al,(%rsi)
    30d5:	00 00                	add    %al,(%rax)
    30d7:	00 0a                	add    %cl,(%rdx)
    30d9:	00 00                	add    %al,(%rax)
    30db:	00 0e                	add    %cl,(%rsi)
    30dd:	00 00                	add    %al,(%rax)
    30df:	00 53 00             	add    %dl,0x0(%rbx)
    30e2:	00 00                	add    %al,(%rax)
    30e4:	57                   	push   %rdi
    30e5:	00 00                	add    %al,(%rax)
    30e7:	00 5b 00             	add    %bl,0x0(%rbx)
    30ea:	00 00                	add    %al,(%rax)
    30ec:	5f                   	pop    %rdi
    30ed:	00 00                	add    %al,(%rax)
    30ef:	00 43 00             	add    %al,0x0(%rbx)
    30f2:	00 00                	add    %al,(%rax)
    30f4:	47 00 00             	rex.RXB add %r8b,(%r8)
    30f7:	00 4b 00             	add    %cl,0x0(%rbx)
    30fa:	00 00                	add    %al,(%rax)
    30fc:	4f 00 00             	rex.WRXB add %r8b,(%r8)
    30ff:	00 33                	add    %dh,(%rbx)
    3101:	00 00                	add    %al,(%rax)
    3103:	00 37                	add    %dh,(%rdi)
    3105:	00 00                	add    %al,(%rax)
    3107:	00 3b                	add    %bh,(%rbx)
    3109:	00 00                	add    %al,(%rax)
    310b:	00 3f                	add    %bh,(%rdi)
    310d:	00 00                	add    %al,(%rax)
    310f:	00 23                	add    %ah,(%rbx)
    3111:	00 00                	add    %al,(%rax)
    3113:	00 27                	add    %ah,(%rdi)
    3115:	00 00                	add    %al,(%rax)
    3117:	00 2b                	add    %ch,(%rbx)
    3119:	00 00                	add    %al,(%rax)
    311b:	00 2f                	add    %ch,(%rdi)
    311d:	00 00                	add    %al,(%rax)
    311f:	00 13                	add    %dl,(%rbx)
    3121:	00 00                	add    %al,(%rax)
    3123:	00 17                	add    %dl,(%rdi)
    3125:	00 00                	add    %al,(%rax)
    3127:	00 1b                	add    %bl,(%rbx)
    3129:	00 00                	add    %al,(%rax)
    312b:	00 1f                	add    %bl,(%rdi)
    312d:	00 00                	add    %al,(%rax)
    312f:	00 03                	add    %al,(%rbx)
    3131:	00 00                	add    %al,(%rax)
    3133:	00 07                	add    %al,(%rdi)
    3135:	00 00                	add    %al,(%rax)
    3137:	00 0b                	add    %cl,(%rbx)
    3139:	00 00                	add    %al,(%rax)
    313b:	00 0f                	add    %cl,(%rdi)
    313d:	00 00                	add    %al,(%rax)
    313f:	00 51 00             	add    %dl,0x0(%rcx)
    3142:	00 00                	add    %al,(%rax)
    3144:	55                   	push   %rbp
    3145:	00 00                	add    %al,(%rax)
    3147:	00 59 00             	add    %bl,0x0(%rcx)
    314a:	00 00                	add    %al,(%rax)
    314c:	5d                   	pop    %rbp
    314d:	00 00                	add    %al,(%rax)
    314f:	00 41 00             	add    %al,0x0(%rcx)
    3152:	00 00                	add    %al,(%rax)
    3154:	45 00 00             	add    %r8b,(%r8)
    3157:	00 49 00             	add    %cl,0x0(%rcx)
    315a:	00 00                	add    %al,(%rax)
    315c:	4d 00 00             	rex.WRB add %r8b,(%r8)
    315f:	00 31                	add    %dh,(%rcx)
    3161:	00 00                	add    %al,(%rax)
    3163:	00 35 00 00 00 39    	add    %dh,0x39000000(%rip)        # 39003169 <_end+0x38ffe111>
    3169:	00 00                	add    %al,(%rax)
    316b:	00 3d 00 00 00 21    	add    %bh,0x21000000(%rip)        # 21003171 <_end+0x20ffe119>
    3171:	00 00                	add    %al,(%rax)
    3173:	00 25 00 00 00 29    	add    %ah,0x29000000(%rip)        # 29003179 <_end+0x28ffe121>
    3179:	00 00                	add    %al,(%rax)
    317b:	00 2d 00 00 00 11    	add    %ch,0x11000000(%rip)        # 11003181 <_end+0x10ffe129>
    3181:	00 00                	add    %al,(%rax)
    3183:	00 15 00 00 00 19    	add    %dl,0x19000000(%rip)        # 19003189 <_end+0x18ffe131>
    3189:	00 00                	add    %al,(%rax)
    318b:	00 1d 00 00 00 01    	add    %bl,0x1000000(%rip)        # 1003191 <_end+0xffe139>
    3191:	00 00                	add    %al,(%rax)
    3193:	00 05 00 00 00 09    	add    %al,0x9000000(%rip)        # 9003199 <_end+0x8ffe141>
    3199:	00 00                	add    %al,(%rax)
    319b:	00 0d 00 00 00 50    	add    %cl,0x50000000(%rip)        # 500031a1 <_end+0x4fffe149>
    31a1:	00 00                	add    %al,(%rax)
    31a3:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
    31a7:	00 58 00             	add    %bl,0x0(%rax)
    31aa:	00 00                	add    %al,(%rax)
    31ac:	5c                   	pop    %rsp
    31ad:	00 00                	add    %al,(%rax)
    31af:	00 40 00             	add    %al,0x0(%rax)
    31b2:	00 00                	add    %al,(%rax)
    31b4:	44 00 00             	add    %r8b,(%rax)
    31b7:	00 48 00             	add    %cl,0x0(%rax)
    31ba:	00 00                	add    %al,(%rax)
    31bc:	4c 00 00             	rex.WR add %r8b,(%rax)
    31bf:	00 30                	add    %dh,(%rax)
    31c1:	00 00                	add    %al,(%rax)
    31c3:	00 34 00             	add    %dh,(%rax,%rax,1)
    31c6:	00 00                	add    %al,(%rax)
    31c8:	38 00                	cmp    %al,(%rax)
    31ca:	00 00                	add    %al,(%rax)
    31cc:	3c 00                	cmp    $0x0,%al
    31ce:	00 00                	add    %al,(%rax)
    31d0:	20 00                	and    %al,(%rax)
    31d2:	00 00                	add    %al,(%rax)
    31d4:	24 00                	and    $0x0,%al
    31d6:	00 00                	add    %al,(%rax)
    31d8:	28 00                	sub    %al,(%rax)
    31da:	00 00                	add    %al,(%rax)
    31dc:	2c 00                	sub    $0x0,%al
    31de:	00 00                	add    %al,(%rax)
    31e0:	10 00                	adc    %al,(%rax)
    31e2:	00 00                	add    %al,(%rax)
    31e4:	14 00                	adc    $0x0,%al
    31e6:	00 00                	add    %al,(%rax)
    31e8:	18 00                	sbb    %al,(%rax)
    31ea:	00 00                	add    %al,(%rax)
    31ec:	1c 00                	sbb    $0x0,%al
    31ee:	00 00                	add    %al,(%rax)
    31f0:	00 00                	add    %al,(%rax)
    31f2:	00 00                	add    %al,(%rax)
    31f4:	04 00                	add    $0x0,%al
    31f6:	00 00                	add    %al,(%rax)
    31f8:	08 00                	or     %al,(%rax)
    31fa:	00 00                	add    %al,(%rax)
    31fc:	0c 00                	or     $0x0,%al
    31fe:	00 00                	add    %al,(%rax)
    3200:	72 65                	jb     3267 <__GNU_EH_FRAME_HDR+0x23>
    3202:	73 20                	jae    3224 <_IO_stdin_used+0x224>
    3204:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3209:	0a 00                	or     (%rax),%al
    320b:	72 65                	jb     3272 <__GNU_EH_FRAME_HDR+0x2e>
    320d:	73 5f                	jae    326e <__GNU_EH_FRAME_HDR+0x2a>
    320f:	32 78 20             	xor    0x20(%rax),%bh
    3212:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3217:	0a 00                	or     (%rax),%al
    3219:	72 65                	jb     3280 <__GNU_EH_FRAME_HDR+0x3c>
    321b:	73 5f                	jae    327c <__GNU_EH_FRAME_HDR+0x38>
    321d:	34 78                	xor    $0x78,%al
    321f:	20 3d 20 25 6c 66    	and    %bh,0x666c2520(%rip)        # 666c5745 <_end+0x666c06ed>
    3225:	0a 00                	or     (%rax),%al
    3227:	72 65                	jb     328e <__GNU_EH_FRAME_HDR+0x4a>
    3229:	73 5f                	jae    328a <__GNU_EH_FRAME_HDR+0x46>
    322b:	38 78 20             	cmp    %bh,0x20(%rax)
    322e:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3233:	0a 00                	or     (%rax),%al
    3235:	72 65                	jb     329c <__GNU_EH_FRAME_HDR+0x58>
    3237:	73 5f                	jae    3298 <__GNU_EH_FRAME_HDR+0x54>
    3239:	31 36                	xor    %esi,(%rsi)
    323b:	78 20                	js     325d <__GNU_EH_FRAME_HDR+0x19>
    323d:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3242:	0a 00                	or     (%rax),%al

Déassemblage de la section .eh_frame_hdr :

0000000000003244 <__GNU_EH_FRAME_HDR>:
    3244:	01 1b                	add    %ebx,(%rbx)
    3246:	03 3b                	add    (%rbx),%edi
    3248:	38 00                	cmp    %al,(%rax)
    324a:	00 00                	add    %al,(%rax)
    324c:	06                   	(bad)  
    324d:	00 00                	add    %al,(%rax)
    324f:	00 dc                	add    %bl,%ah
    3251:	dd ff                	(bad)  
    3253:	ff 6c 00 00          	ljmp   *0x0(%rax,%rax,1)
    3257:	00 3c de             	add    %bh,(%rsi,%rbx,8)
    325a:	ff                   	(bad)  
    325b:	ff 94 00 00 00 5c de 	callq  *-0x21a40000(%rax,%rax,1)
    3262:	ff                   	(bad)  
    3263:	ff 54 00 00          	callq  *0x0(%rax,%rax,1)
    3267:	00 5c df ff          	add    %bl,-0x1(%rdi,%rbx,8)
    326b:	ff ac 00 00 00 ec fb 	ljmp   *-0x4140000(%rax,%rax,1)
    3272:	ff                   	(bad)  
    3273:	ff                   	(bad)  
    3274:	fc                   	cld    
    3275:	00 00                	add    %al,(%rax)
    3277:	00 5c fc ff          	add    %bl,-0x1(%rsp,%rdi,8)
    327b:	ff 44 01 00          	incl   0x0(%rcx,%rax,1)
	...

Déassemblage de la section .eh_frame :

0000000000003280 <__FRAME_END__-0x11c>:
    3280:	14 00                	adc    $0x0,%al
    3282:	00 00                	add    %al,(%rax)
    3284:	00 00                	add    %al,(%rax)
    3286:	00 00                	add    %al,(%rax)
    3288:	01 7a 52             	add    %edi,0x52(%rdx)
    328b:	00 01                	add    %al,(%rcx)
    328d:	78 10                	js     329f <__GNU_EH_FRAME_HDR+0x5b>
    328f:	01 1b                	add    %ebx,(%rbx)
    3291:	0c 07                	or     $0x7,%al
    3293:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    3299:	00 00                	add    %al,(%rax)
    329b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    329e:	00 00                	add    %al,(%rax)
    32a0:	00 de                	add    %bl,%dh
    32a2:	ff                   	(bad)  
    32a3:	ff 2f                	ljmp   *(%rdi)
    32a5:	00 00                	add    %al,(%rax)
    32a7:	00 00                	add    %al,(%rax)
    32a9:	44 07                	rex.R (bad) 
    32ab:	10 00                	adc    %al,(%rax)
    32ad:	00 00                	add    %al,(%rax)
    32af:	00 24 00             	add    %ah,(%rax,%rax,1)
    32b2:	00 00                	add    %al,(%rax)
    32b4:	34 00                	xor    $0x0,%al
    32b6:	00 00                	add    %al,(%rax)
    32b8:	68 dd ff ff 60       	pushq  $0x60ffffdd
    32bd:	00 00                	add    %al,(%rax)
    32bf:	00 00                	add    %al,(%rax)
    32c1:	0e                   	(bad)  
    32c2:	10 46 0e             	adc    %al,0xe(%rsi)
    32c5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    32c8:	0b 77 08             	or     0x8(%rdi),%esi
    32cb:	80 00 3f             	addb   $0x3f,(%rax)
    32ce:	1a 3b                	sbb    (%rbx),%bh
    32d0:	2a 33                	sub    (%rbx),%dh
    32d2:	24 22                	and    $0x22,%al
    32d4:	00 00                	add    %al,(%rax)
    32d6:	00 00                	add    %al,(%rax)
    32d8:	14 00                	adc    $0x0,%al
    32da:	00 00                	add    %al,(%rax)
    32dc:	5c                   	pop    %rsp
    32dd:	00 00                	add    %al,(%rax)
    32df:	00 a0 dd ff ff 17    	add    %ah,0x17ffffdd(%rax)
	...
    32ed:	00 00                	add    %al,(%rax)
    32ef:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    32f3:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
    32f7:	00 a8 de ff ff 8d    	add    %ch,-0x72000022(%rax)
    32fd:	1c 00                	sbb    $0x0,%al
    32ff:	00 00                	add    %al,(%rax)
    3301:	41 0e                	rex.B (bad) 
    3303:	10 42 0e             	adc    %al,0xe(%rdx)
    3306:	18 42 0e             	sbb    %al,0xe(%rdx)
    3309:	20 42 0e             	and    %al,0xe(%rdx)
    330c:	28 42 0e             	sub    %al,0xe(%rdx)
    330f:	30 41 0e             	xor    %al,0xe(%rcx)
    3312:	38 47 0e             	cmp    %al,0xe(%rdi)
    3315:	80 06 83             	addb   $0x83,(%rsi)
    3318:	07                   	(bad)  
    3319:	8c 06                	mov    %es,(%rsi)
    331b:	8d 05 8e 04 8f 03    	lea    0x38f048e(%rip),%eax        # 38f37af <_end+0x38ee757>
    3321:	86 02                	xchg   %al,(%rdx)
    3323:	03 71 1c             	add    0x1c(%rcx),%esi
    3326:	0e                   	(bad)  
    3327:	38 41 0e             	cmp    %al,0xe(%rcx)
    332a:	30 42 0e             	xor    %al,0xe(%rdx)
    332d:	28 42 0e             	sub    %al,0xe(%rdx)
    3330:	20 42 0e             	and    %al,0xe(%rdx)
    3333:	18 42 0e             	sbb    %al,0xe(%rdx)
    3336:	10 41 0e             	adc    %al,0xe(%rcx)
    3339:	08 00                	or     %al,(%rax)
    333b:	00 00                	add    %al,(%rax)
    333d:	00 00                	add    %al,(%rax)
    333f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    3343:	00 c4                	add    %al,%ah
    3345:	00 00                	add    %al,(%rax)
    3347:	00 e8                	add    %ch,%al
    3349:	fa                   	cli    
    334a:	ff                   	(bad)  
    334b:	ff 65 00             	jmpq   *0x0(%rbp)
    334e:	00 00                	add    %al,(%rax)
    3350:	00 46 0e             	add    %al,0xe(%rsi)
    3353:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    3359:	8e 03                	mov    (%rbx),%es
    335b:	45 0e                	rex.RB (bad) 
    335d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    3363:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff863041ad <_end+0xffffffff862ff155>
    3369:	06                   	(bad)  
    336a:	48 0e                	rex.W (bad) 
    336c:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    3372:	6e                   	outsb  %ds:(%rsi),(%dx)
    3373:	0e                   	(bad)  
    3374:	38 41 0e             	cmp    %al,0xe(%rcx)
    3377:	30 41 0e             	xor    %al,0xe(%rcx)
    337a:	28 42 0e             	sub    %al,0xe(%rdx)
    337d:	20 42 0e             	and    %al,0xe(%rdx)
    3380:	18 42 0e             	sbb    %al,0xe(%rdx)
    3383:	10 42 0e             	adc    %al,0xe(%rdx)
    3386:	08 00                	or     %al,(%rax)
    3388:	10 00                	adc    %al,(%rax)
    338a:	00 00                	add    %al,(%rax)
    338c:	0c 01                	or     $0x1,%al
    338e:	00 00                	add    %al,(%rax)
    3390:	10 fb                	adc    %bh,%bl
    3392:	ff                   	(bad)  
    3393:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 3399 <__GNU_EH_FRAME_HDR+0x155>
    3399:	00 00                	add    %al,(%rax)
	...

000000000000339c <__FRAME_END__>:
    339c:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .init_array :

0000000000004dd0 <__frame_dummy_init_array_entry>:
    4dd0:	90                   	nop
    4dd1:	11 00                	adc    %eax,(%rax)
    4dd3:	00 00                	add    %al,(%rax)
    4dd5:	00 00                	add    %al,(%rax)
    4dd7:	00 80 10 00 00 00    	add    %al,0x10(%rax)
    4ddd:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .fini_array :

0000000000004de0 <__do_global_dtors_aux_fini_array_entry>:
    4de0:	40 11 00             	rex adc %eax,(%rax)
    4de3:	00 00                	add    %al,(%rax)
    4de5:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .dynamic :

0000000000004de8 <_DYNAMIC>:
    4de8:	01 00                	add    %eax,(%rax)
    4dea:	00 00                	add    %al,(%rax)
    4dec:	00 00                	add    %al,(%rax)
    4dee:	00 00                	add    %al,(%rax)
    4df0:	49 00 00             	rex.WB add %al,(%r8)
    4df3:	00 00                	add    %al,(%rax)
    4df5:	00 00                	add    %al,(%rax)
    4df7:	00 0c 00             	add    %cl,(%rax,%rax,1)
    4dfa:	00 00                	add    %al,(%rax)
    4dfc:	00 00                	add    %al,(%rax)
    4dfe:	00 00                	add    %al,(%rax)
    4e00:	00 10                	add    %dl,(%rax)
    4e02:	00 00                	add    %al,(%rax)
    4e04:	00 00                	add    %al,(%rax)
    4e06:	00 00                	add    %al,(%rax)
    4e08:	0d 00 00 00 00       	or     $0x0,%eax
    4e0d:	00 00                	add    %al,(%rax)
    4e0f:	00 a8 2e 00 00 00    	add    %ch,0x2e(%rax)
    4e15:	00 00                	add    %al,(%rax)
    4e17:	00 19                	add    %bl,(%rcx)
    4e19:	00 00                	add    %al,(%rax)
    4e1b:	00 00                	add    %al,(%rax)
    4e1d:	00 00                	add    %al,(%rax)
    4e1f:	00 d0                	add    %dl,%al
    4e21:	4d 00 00             	rex.WRB add %r8b,(%r8)
    4e24:	00 00                	add    %al,(%rax)
    4e26:	00 00                	add    %al,(%rax)
    4e28:	1b 00                	sbb    (%rax),%eax
    4e2a:	00 00                	add    %al,(%rax)
    4e2c:	00 00                	add    %al,(%rax)
    4e2e:	00 00                	add    %al,(%rax)
    4e30:	10 00                	adc    %al,(%rax)
    4e32:	00 00                	add    %al,(%rax)
    4e34:	00 00                	add    %al,(%rax)
    4e36:	00 00                	add    %al,(%rax)
    4e38:	1a 00                	sbb    (%rax),%al
    4e3a:	00 00                	add    %al,(%rax)
    4e3c:	00 00                	add    %al,(%rax)
    4e3e:	00 00                	add    %al,(%rax)
    4e40:	e0 4d                	loopne 4e8f <_DYNAMIC+0xa7>
    4e42:	00 00                	add    %al,(%rax)
    4e44:	00 00                	add    %al,(%rax)
    4e46:	00 00                	add    %al,(%rax)
    4e48:	1c 00                	sbb    $0x0,%al
    4e4a:	00 00                	add    %al,(%rax)
    4e4c:	00 00                	add    %al,(%rax)
    4e4e:	00 00                	add    %al,(%rax)
    4e50:	08 00                	or     %al,(%rax)
    4e52:	00 00                	add    %al,(%rax)
    4e54:	00 00                	add    %al,(%rax)
    4e56:	00 00                	add    %al,(%rax)
    4e58:	04 00                	add    $0x0,%al
    4e5a:	00 00                	add    %al,(%rax)
    4e5c:	00 00                	add    %al,(%rax)
    4e5e:	00 00                	add    %al,(%rax)
    4e60:	e8 02 00 00 00       	callq  4e67 <_DYNAMIC+0x7f>
    4e65:	00 00                	add    %al,(%rax)
    4e67:	00 f5                	add    %dh,%ch
    4e69:	fe                   	(bad)  
    4e6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    4e6d:	00 00                	add    %al,(%rax)
    4e6f:	00 28                	add    %ch,(%rax)
    4e71:	03 00                	add    (%rax),%eax
    4e73:	00 00                	add    %al,(%rax)
    4e75:	00 00                	add    %al,(%rax)
    4e77:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 4e7d <_DYNAMIC+0x95>
    4e7d:	00 00                	add    %al,(%rax)
    4e7f:	00 50 04             	add    %dl,0x4(%rax)
    4e82:	00 00                	add    %al,(%rax)
    4e84:	00 00                	add    %al,(%rax)
    4e86:	00 00                	add    %al,(%rax)
    4e88:	06                   	(bad)  
    4e89:	00 00                	add    %al,(%rax)
    4e8b:	00 00                	add    %al,(%rax)
    4e8d:	00 00                	add    %al,(%rax)
    4e8f:	00 48 03             	add    %cl,0x3(%rax)
    4e92:	00 00                	add    %al,(%rax)
    4e94:	00 00                	add    %al,(%rax)
    4e96:	00 00                	add    %al,(%rax)
    4e98:	0a 00                	or     (%rax),%al
    4e9a:	00 00                	add    %al,(%rax)
    4e9c:	00 00                	add    %al,(%rax)
    4e9e:	00 00                	add    %al,(%rax)
    4ea0:	af                   	scas   %es:(%rdi),%eax
    4ea1:	00 00                	add    %al,(%rax)
    4ea3:	00 00                	add    %al,(%rax)
    4ea5:	00 00                	add    %al,(%rax)
    4ea7:	00 0b                	add    %cl,(%rbx)
    4ea9:	00 00                	add    %al,(%rax)
    4eab:	00 00                	add    %al,(%rax)
    4ead:	00 00                	add    %al,(%rax)
    4eaf:	00 18                	add    %bl,(%rax)
    4eb1:	00 00                	add    %al,(%rax)
    4eb3:	00 00                	add    %al,(%rax)
    4eb5:	00 00                	add    %al,(%rax)
    4eb7:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 4ebd <_DYNAMIC+0xd5>
	...
    4ec5:	00 00                	add    %al,(%rax)
    4ec7:	00 03                	add    %al,(%rbx)
	...
    4ed1:	50                   	push   %rax
    4ed2:	00 00                	add    %al,(%rax)
    4ed4:	00 00                	add    %al,(%rax)
    4ed6:	00 00                	add    %al,(%rax)
    4ed8:	02 00                	add    (%rax),%al
    4eda:	00 00                	add    %al,(%rax)
    4edc:	00 00                	add    %al,(%rax)
    4ede:	00 00                	add    %al,(%rax)
    4ee0:	78 00                	js     4ee2 <_DYNAMIC+0xfa>
    4ee2:	00 00                	add    %al,(%rax)
    4ee4:	00 00                	add    %al,(%rax)
    4ee6:	00 00                	add    %al,(%rax)
    4ee8:	14 00                	adc    $0x0,%al
    4eea:	00 00                	add    %al,(%rax)
    4eec:	00 00                	add    %al,(%rax)
    4eee:	00 00                	add    %al,(%rax)
    4ef0:	07                   	(bad)  
    4ef1:	00 00                	add    %al,(%rax)
    4ef3:	00 00                	add    %al,(%rax)
    4ef5:	00 00                	add    %al,(%rax)
    4ef7:	00 17                	add    %dl,(%rdi)
    4ef9:	00 00                	add    %al,(%rax)
    4efb:	00 00                	add    %al,(%rax)
    4efd:	00 00                	add    %al,(%rax)
    4eff:	00 20                	add    %ah,(%rax)
    4f01:	06                   	(bad)  
    4f02:	00 00                	add    %al,(%rax)
    4f04:	00 00                	add    %al,(%rax)
    4f06:	00 00                	add    %al,(%rax)
    4f08:	07                   	(bad)  
    4f09:	00 00                	add    %al,(%rax)
    4f0b:	00 00                	add    %al,(%rax)
    4f0d:	00 00                	add    %al,(%rax)
    4f0f:	00 48 05             	add    %cl,0x5(%rax)
    4f12:	00 00                	add    %al,(%rax)
    4f14:	00 00                	add    %al,(%rax)
    4f16:	00 00                	add    %al,(%rax)
    4f18:	08 00                	or     %al,(%rax)
    4f1a:	00 00                	add    %al,(%rax)
    4f1c:	00 00                	add    %al,(%rax)
    4f1e:	00 00                	add    %al,(%rax)
    4f20:	d8 00                	fadds  (%rax)
    4f22:	00 00                	add    %al,(%rax)
    4f24:	00 00                	add    %al,(%rax)
    4f26:	00 00                	add    %al,(%rax)
    4f28:	09 00                	or     %eax,(%rax)
    4f2a:	00 00                	add    %al,(%rax)
    4f2c:	00 00                	add    %al,(%rax)
    4f2e:	00 00                	add    %al,(%rax)
    4f30:	18 00                	sbb    %al,(%rax)
    4f32:	00 00                	add    %al,(%rax)
    4f34:	00 00                	add    %al,(%rax)
    4f36:	00 00                	add    %al,(%rax)
    4f38:	fb                   	sti    
    4f39:	ff                   	(bad)  
    4f3a:	ff 6f 00             	ljmp   *0x0(%rdi)
    4f3d:	00 00                	add    %al,(%rax)
    4f3f:	00 00                	add    %al,(%rax)
    4f41:	00 00                	add    %al,(%rax)
    4f43:	08 00                	or     %al,(%rax)
    4f45:	00 00                	add    %al,(%rax)
    4f47:	00 fe                	add    %bh,%dh
    4f49:	ff                   	(bad)  
    4f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
    4f4d:	00 00                	add    %al,(%rax)
    4f4f:	00 18                	add    %bl,(%rax)
    4f51:	05 00 00 00 00       	add    $0x0,%eax
    4f56:	00 00                	add    %al,(%rax)
    4f58:	ff                   	(bad)  
    4f59:	ff                   	(bad)  
    4f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
    4f5d:	00 00                	add    %al,(%rax)
    4f5f:	00 01                	add    %al,(%rcx)
    4f61:	00 00                	add    %al,(%rax)
    4f63:	00 00                	add    %al,(%rax)
    4f65:	00 00                	add    %al,(%rax)
    4f67:	00 f0                	add    %dh,%al
    4f69:	ff                   	(bad)  
    4f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
    4f6d:	00 00                	add    %al,(%rax)
    4f6f:	00 00                	add    %al,(%rax)
    4f71:	05 00 00 00 00       	add    $0x0,%eax
    4f76:	00 00                	add    %al,(%rax)
    4f78:	f9                   	stc    
    4f79:	ff                   	(bad)  
    4f7a:	ff 6f 00             	ljmp   *0x0(%rdi)
    4f7d:	00 00                	add    %al,(%rax)
    4f7f:	00 04 00             	add    %al,(%rax,%rax,1)
	...

Déassemblage de la section .got :

0000000000004fd8 <.got>:
	...

Déassemblage de la section .got.plt :

0000000000005000 <_GLOBAL_OFFSET_TABLE_>:
    5000:	e8 4d 00 00 00       	callq  5052 <__TMC_END__+0x2>
	...
    5015:	00 00                	add    %al,(%rax)
    5017:	00 36                	add    %dh,(%rsi)
    5019:	10 00                	adc    %al,(%rax)
    501b:	00 00                	add    %al,(%rax)
    501d:	00 00                	add    %al,(%rax)
    501f:	00 46 10             	add    %al,0x10(%rsi)
    5022:	00 00                	add    %al,(%rax)
    5024:	00 00                	add    %al,(%rax)
    5026:	00 00                	add    %al,(%rax)
    5028:	56                   	push   %rsi
    5029:	10 00                	adc    %al,(%rax)
    502b:	00 00                	add    %al,(%rax)
    502d:	00 00                	add    %al,(%rax)
    502f:	00 66 10             	add    %ah,0x10(%rsi)
    5032:	00 00                	add    %al,(%rax)
    5034:	00 00                	add    %al,(%rax)
    5036:	00 00                	add    %al,(%rax)
    5038:	76 10                	jbe    504a <__dso_handle+0x2>
    503a:	00 00                	add    %al,(%rax)
    503c:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .data :

0000000000005040 <__data_start>:
	...

0000000000005048 <__dso_handle>:
    5048:	48 50                	rex.W push %rax
    504a:	00 00                	add    %al,(%rax)
    504c:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .bss :

0000000000005050 <completed.0>:
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
  63:	00 c2                	add    %al,%dl
  65:	07                   	(bad)  
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
  89:	00 8d 1c 00 00 02    	add    %cl,0x200001c(%rbp)
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
  bc:	00 05 04 05 60 00    	add    %al,0x600504(%rip)        # 6005c6 <_end+0x5fb56e>
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
 1f3:	03 2d 02 00 00 01    	add    0x1000002(%rip),%ebp        # 10001fb <_end+0xffb1a3>
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
 276:	ee                   	out    %al,(%dx)
 277:	01 00                	add    %eax,(%rax)
 279:	00 01                	add    %al,(%rcx)
 27b:	60                   	(bad)  
 27c:	4d 00 00             	rex.WRB add %r8b,(%r8)
 27f:	00 08                	add    %cl,(%rax)
 281:	73 01                	jae    284 <__abi_tag-0x40>
 283:	00 00                	add    %al,(%rax)
 285:	01 5f 4f             	add    %ebx,0x4f(%rdi)
 288:	02 00                	add    (%rax),%al
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
 2ed:	ee                   	out    %al,(%dx)
 2ee:	01 00                	add    %eax,(%rax)
 2f0:	00 01                	add    %al,(%rcx)
 2f2:	7d 4d                	jge    341 <__abi_tag+0x7d>
 2f4:	00 00                	add    %al,(%rax)
 2f6:	00 08                	add    %cl,(%rax)
 2f8:	73 01                	jae    2fb <__abi_tag+0x37>
 2fa:	00 00                	add    %al,(%rax)
 2fc:	01 7c c6 02          	add    %edi,0x2(%rsi,%rax,8)
 300:	00 00                	add    %al,(%rax)
 302:	07                   	(bad)  
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
 33f:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
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
 377:	a3 4d 00 00 00 0f d4 	movabs %eax,0x1d40f0000004d
 37e:	01 00 
 380:	00 ab 01 00 00 01    	add    %ch,0x1000001(%rbx)
 386:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 387:	a8 00                	test   $0x0,%al
 389:	00 00                	add    %al,(%rax)
 38b:	0f 64 02             	pcmpgtb (%rdx),%mm0
 38e:	00 00                	add    %al,(%rax)
 390:	b4 01                	mov    $0x1,%ah
 392:	00 00                	add    %al,(%rax)
 394:	01 a7 a8 00 00 00    	add    %esp,0xa8(%rdi)
 39a:	0f 65 04 00          	pcmpgtw (%rax,%rax,1),%mm0
 39e:	00 2f                	add    %ch,(%rdi)
 3a0:	02 00                	add    (%rax),%al
 3a2:	00 01                	add    %al,(%rcx)
 3a4:	ae                   	scas   %es:(%rdi),%al
 3a5:	ad                   	lods   %ds:(%rsi),%eax
 3a6:	00 00                	add    %al,(%rax)
 3a8:	00 0f                	add    %cl,(%rdi)
 3aa:	24 05                	and    $0x5,%al
 3ac:	00 00                	add    %al,(%rax)
 3ae:	36 02 00             	add    %ss:(%rax),%al
 3b1:	00 01                	add    %al,(%rcx)
 3b3:	af                   	scas   %es:(%rdi),%eax
 3b4:	ad                   	lods   %ds:(%rsi),%eax
 3b5:	00 00                	add    %al,(%rax)
 3b7:	00 08                	add    %cl,(%rax)
 3b9:	3d 02 00 00 01       	cmp    $0x1000002,%eax
 3be:	b0 ad                	mov    $0xad,%al
 3c0:	00 00                	add    %al,(%rax)
 3c2:	00 0f                	add    %cl,(%rdi)
 3c4:	15 08 00 00 44       	adc    $0x44000008,%eax
 3c9:	02 00                	add    (%rax),%al
 3cb:	00 01                	add    %al,(%rcx)
 3cd:	ad                   	lods   %ds:(%rsi),%eax
 3ce:	ad                   	lods   %ds:(%rsi),%eax
 3cf:	00 00                	add    %al,(%rax)
 3d1:	00 08                	add    %cl,(%rax)
 3d3:	48 02 00             	rex.W add (%rax),%al
 3d6:	00 01                	add    %al,(%rcx)
 3d8:	b1 ad                	mov    $0xad,%cl
 3da:	00 00                	add    %al,(%rax)
 3dc:	00 0f                	add    %cl,(%rdi)
 3de:	33 09                	xor    (%rcx),%ecx
 3e0:	00 00                	add    %al,(%rax)
 3e2:	53                   	push   %rbx
 3e3:	01 00                	add    %eax,(%rax)
 3e5:	00 01                	add    %al,(%rcx)
 3e7:	c2 a8 00             	retq   $0xa8
 3ea:	00 00                	add    %al,(%rax)
 3ec:	0f 56 09             	orps   (%rcx),%xmm1
 3ef:	00 00                	add    %al,(%rax)
 3f1:	73 01                	jae    3f4 <__abi_tag+0x130>
 3f3:	00 00                	add    %al,(%rax)
 3f5:	01 c3                	add    %eax,%ebx
 3f7:	a8 00                	test   $0x0,%al
 3f9:	00 00                	add    %al,(%rax)
 3fb:	10 2a                	adc    %ch,(%rdx)
 3fd:	00 00                	add    %al,(%rax)
 3ff:	00 20                	add    %ah,(%rax)
 401:	00 00                	add    %al,(%rax)
 403:	00 01                	add    %al,(%rcx)
 405:	a3 1a 11 1d 01 00 00 	movabs %eax,0x360000011d111a
 40c:	36 00 
 40e:	00 00                	add    %al,(%rax)
 410:	11 53 01             	adc    %edx,0x1(%rbx)
 413:	00 00                	add    %al,(%rax)
 415:	41 00 00             	add    %al,(%r8)
 418:	00 00                	add    %al,(%rax)
 41a:	10 6c 00 00          	adc    %ch,0x0(%rax,%rax,1)
 41e:	00 50 00             	add    %dl,0x0(%rax)
 421:	00 00                	add    %al,(%rax)
 423:	01 aa 03 11 9a 02    	add    %ebp,0x29a1103(%rdx)
 429:	00 00                	add    %al,(%rax)
 42b:	74 00                	je     42d <__abi_tag+0x169>
 42d:	00 00                	add    %al,(%rax)
 42f:	11 41 02             	adc    %eax,0x2(%rcx)
 432:	00 00                	add    %al,(%rax)
 434:	7f 00                	jg     436 <__abi_tag+0x172>
 436:	00 00                	add    %al,(%rax)
 438:	11 bd 02 00 00 8a    	adc    %edi,-0x75fffffe(%rbp)
 43e:	00 00                	add    %al,(%rax)
 440:	00 12                	add    %dl,(%rdx)
 442:	90                   	nop
 443:	00 00                	add    %al,(%rax)
 445:	00 13                	add    %dl,(%rbx)
 447:	0a 02                	or     (%rdx),%al
 449:	00 00                	add    %al,(%rax)
 44b:	96                   	xchg   %eax,%esi
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	00 10                	add    %dl,(%rax)
 452:	b4 00                	mov    $0x0,%ah
 454:	00 00                	add    %al,(%rax)
 456:	d0 00                	rolb   (%rax)
 458:	00 00                	add    %al,(%rax)
 45a:	01 ad 10 13 f2 07    	add    %ebp,0x7f21310(%rbp)
 460:	00 00                	add    %al,(%rax)
 462:	e1 00                	loope  464 <__abi_tag+0x1a0>
 464:	00 00                	add    %al,(%rax)
 466:	12 00                	adc    (%rax),%al
 468:	01 00                	add    %eax,(%rax)
 46a:	00 13                	add    %dl,(%rbx)
 46c:	cf                   	iret   
 46d:	07                   	(bad)  
 46e:	00 00                	add    %al,(%rax)
 470:	ed                   	in     (%dx),%eax
 471:	00 00                	add    %al,(%rax)
 473:	00 00                	add    %al,(%rax)
 475:	00 10                	add    %dl,(%rax)
 477:	fa                   	cli    
 478:	00 00                	add    %al,(%rax)
 47a:	00 30                	add    %dh,(%rax)
 47c:	01 00                	add    %eax,(%rax)
 47e:	00 01                	add    %al,(%rcx)
 480:	ae                   	scas   %es:(%rdi),%al
 481:	13 11                	adc    (%rcx),%edx
 483:	4d 08 00             	rex.WRB or %r8b,(%r8)
 486:	00 06                	add    %al,(%rsi)
 488:	01 00                	add    %eax,(%rax)
 48a:	00 11                	add    %dl,(%rcx)
 48c:	70 08                	jo     496 <__abi_tag+0x1d2>
 48e:	00 00                	add    %al,(%rax)
 490:	11 01                	adc    %eax,(%rcx)
 492:	00 00                	add    %al,(%rax)
 494:	11 93 08 00 00 1c    	adc    %edx,0x1c000008(%rbx)
 49a:	01 00                	add    %eax,(%rax)
 49c:	00 13                	add    %dl,(%rbx)
 49e:	e0 02                	loopne 4a2 <__abi_tag+0x1de>
 4a0:	00 00                	add    %al,(%rax)
 4a2:	27                   	(bad)  
 4a3:	01 00                	add    %eax,(%rax)
 4a5:	00 14 17             	add    %dl,(%rdi,%rdx,1)
 4a8:	1b 00                	sbb    (%rax),%eax
 4aa:	00 00                	add    %al,(%rax)
 4ac:	00 00                	add    %al,(%rax)
 4ae:	00 26                	add    %ah,(%rsi)
 4b0:	00 00                	add    %al,(%rax)
 4b2:	00 13                	add    %dl,(%rbx)
 4b4:	b6 08                	mov    $0x8,%dh
 4b6:	00 00                	add    %al,(%rax)
 4b8:	33 01                	xor    (%rcx),%eax
 4ba:	00 00                	add    %al,(%rax)
 4bc:	00 14 3d 1b 00 00 00 	add    %dl,0x1b(,%rdi,1)
 4c3:	00 00                	add    %al,(%rax)
 4c5:	00 55 00             	add    %dl,0x0(%rbp)
 4c8:	00 00                	add    %al,(%rax)
 4ca:	13 10                	adc    (%rax),%edx
 4cc:	09 00                	or     %eax,(%rax)
 4ce:	00 40 01             	add    %al,0x1(%rax)
 4d1:	00 00                	add    %al,(%rax)
 4d3:	14 3d                	adc    $0x3d,%al
 4d5:	1b 00                	sbb    (%rax),%eax
 4d7:	00 00                	add    %al,(%rax)
 4d9:	00 00                	add    %al,(%rax)
 4db:	00 2b                	add    %ch,(%rbx)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 13                	add    %dl,(%rbx)
 4e1:	d9 08                	(bad)  (%rax)
 4e3:	00 00                	add    %al,(%rax)
 4e5:	4c 01 00             	add    %r8,(%rax)
 4e8:	00 00                	add    %al,(%rax)
 4ea:	00 00                	add    %al,(%rax)
 4ec:	10 6d 01             	adc    %ch,0x1(%rbp)
 4ef:	00 00                	add    %al,(%rax)
 4f1:	60                   	(bad)  
 4f2:	01 00                	add    %eax,(%rax)
 4f4:	00 01                	add    %al,(%rcx)
 4f6:	af                   	scas   %es:(%rdi),%eax
 4f7:	13 11                	adc    (%rcx),%edx
 4f9:	2f                   	(bad)  
 4fa:	04 00                	add    $0x0,%al
 4fc:	00 79 01             	add    %bh,0x1(%rcx)
 4ff:	00 00                	add    %al,(%rax)
 501:	11 f9                	adc    %edi,%ecx
 503:	03 00                	add    (%rax),%eax
 505:	00 84 01 00 00 11 c3 	add    %al,-0x3cef0000(%rcx,%rax,1)
 50c:	03 00                	add    (%rax),%eax
 50e:	00 8f 01 00 00 15    	add    %cl,0x15000001(%rdi)
 514:	9a                   	(bad)  
 515:	01 00                	add    %eax,(%rax)
 517:	00 13                	add    %dl,(%rbx)
 519:	6f                   	outsl  %ds:(%rsi),(%dx)
 51a:	03 00                	add    (%rax),%eax
 51c:	00 a5 01 00 00 12    	add    %ah,0x12000001(%rbp)
 522:	a0 01 00 00 13 24 03 	movabs 0x32413000001,%al
 529:	00 00 
 52b:	b1 01                	mov    $0x1,%cl
 52d:	00 00                	add    %al,(%rax)
 52f:	00 14 04             	add    %dl,(%rsp,%rax,1)
 532:	16                   	(bad)  
 533:	00 00                	add    %al,(%rax)
 535:	00 00                	add    %al,(%rax)
 537:	00 00                	add    %al,(%rax)
 539:	52                   	push   %rdx
 53a:	00 00                	add    %al,(%rax)
 53c:	00 13                	add    %dl,(%rbx)
 53e:	c7 04 00 00 be 01 00 	movl   $0x1be00,(%rax,%rax,1)
 545:	00 14 04             	add    %dl,(%rsp,%rax,1)
 548:	16                   	(bad)  
 549:	00 00                	add    %al,(%rax)
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	52                   	push   %rdx
 550:	00 00                	add    %al,(%rax)
 552:	00 13                	add    %dl,(%rbx)
 554:	ec                   	in     (%dx),%al
 555:	04 00                	add    $0x0,%al
 557:	00 ca                	add    %cl,%dl
 559:	01 00                	add    %eax,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	10 e4                	adc    %ah,%ah
 561:	01 00                	add    %eax,(%rax)
 563:	00 d0                	add    %dl,%al
 565:	01 00                	add    %eax,(%rax)
 567:	00 01                	add    %al,(%rcx)
 569:	b0 13                	mov    $0x13,%al
 56b:	11 4b 06             	adc    %ecx,0x6(%rbx)
 56e:	00 00                	add    %al,(%rax)
 570:	f0 01 00             	lock add %eax,(%rax)
 573:	00 11                	add    %dl,(%rcx)
 575:	28 06                	sub    %al,(%rsi)
 577:	00 00                	add    %al,(%rax)
 579:	fb                   	sti    
 57a:	01 00                	add    %eax,(%rax)
 57c:	00 11                	add    %dl,(%rcx)
 57e:	05 06 00 00 06       	add    $0x6000006,%eax
 583:	02 00                	add    (%rax),%al
 585:	00 15 11 02 00 00    	add    %dl,0x211(%rip)        # 79c <__abi_tag+0x4d8>
 58b:	13 7f 05             	adc    0x5(%rdi),%edi
 58e:	00 00                	add    %al,(%rax)
 590:	1c 02                	sbb    $0x2,%al
 592:	00 00                	add    %al,(%rax)
 594:	14 6f                	adc    $0x6f,%al
 596:	16                   	(bad)  
 597:	00 00                	add    %al,(%rax)
 599:	00 00                	add    %al,(%rax)
 59b:	00 00                	add    %al,(%rax)
 59d:	69 00 00 00 13 5c    	imul   $0x5c130000,(%rax),%eax
 5a3:	05 00 00 28 02       	add    $0x2280000,%eax
 5a8:	00 00                	add    %al,(%rax)
 5aa:	00 14 f1             	add    %dl,(%rcx,%rsi,8)
 5ad:	16                   	(bad)  
 5ae:	00 00                	add    %al,(%rax)
 5b0:	00 00                	add    %al,(%rax)
 5b2:	00 00                	add    %al,(%rax)
 5b4:	84 00                	test   %al,(%rax)
 5b6:	00 00                	add    %al,(%rax)
 5b8:	13 6e 06             	adc    0x6(%rsi),%ebp
 5bb:	00 00                	add    %al,(%rax)
 5bd:	35 02 00 00 14       	xor    $0x14000002,%eax
 5c2:	f1                   	icebp  
 5c3:	16                   	(bad)  
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	00 00                	add    %al,(%rax)
 5ca:	84 00                	test   %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	13 93 06 00 00 41    	adc    0x41000006(%rbx),%edx
 5d4:	02 00                	add    (%rax),%al
 5d6:	00 00                	add    %al,(%rax)
 5d8:	00 00                	add    %al,(%rax)
 5da:	10 5b 02             	adc    %bl,0x2(%rbx)
 5dd:	00 00                	add    %al,(%rax)
 5df:	00 02                	add    %al,(%rdx)
 5e1:	00 00                	add    %al,(%rax)
 5e3:	01 b1 14 11 62 07    	add    %esi,0x7621114(%rcx)
 5e9:	00 00                	add    %al,(%rax)
 5eb:	67 02 00             	add    (%eax),%al
 5ee:	00 11                	add    %dl,(%rcx)
 5f0:	3f                   	(bad)  
 5f1:	07                   	(bad)  
 5f2:	00 00                	add    %al,(%rax)
 5f4:	72 02                	jb     5f8 <__abi_tag+0x334>
 5f6:	00 00                	add    %al,(%rax)
 5f8:	11 1c 07             	adc    %ebx,(%rdi,%rax,1)
 5fb:	00 00                	add    %al,(%rax)
 5fd:	7d 02                	jge    601 <__abi_tag+0x33d>
 5ff:	00 00                	add    %al,(%rax)
 601:	15 88 02 00 00       	adc    $0x288,%eax
 606:	13 db                	adc    %ebx,%ebx
 608:	06                   	(bad)  
 609:	00 00                	add    %al,(%rax)
 60b:	93                   	xchg   %eax,%ebx
 60c:	02 00                	add    (%rax),%al
 60e:	00 14 96             	add    %dl,(%rsi,%rdx,4)
 611:	17                   	(bad)  
 612:	00 00                	add    %al,(%rax)
 614:	00 00                	add    %al,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 619:	00 00                	add    %al,(%rax)
 61b:	00 13                	add    %dl,(%rbx)
 61d:	b8 06 00 00 9f       	mov    $0x9f000006,%eax
 622:	02 00                	add    (%rax),%al
 624:	00 00                	add    %al,(%rax)
 626:	14 5d                	adc    $0x5d,%al
 628:	18 00                	sbb    %al,(%rax)
 62a:	00 00                	add    %al,(%rax)
 62c:	00 00                	add    %al,(%rax)
 62e:	00 8e 02 00 00 13    	add    %cl,0x13000002(%rsi)
 634:	aa                   	stos   %al,%es:(%rdi)
 635:	07                   	(bad)  
 636:	00 00                	add    %al,(%rax)
 638:	ac                   	lods   %ds:(%rsi),%al
 639:	02 00                	add    (%rax),%al
 63b:	00 14 5d 18 00 00 00 	add    %dl,0x18(,%rbx,2)
 642:	00 00                	add    %al,(%rax)
 644:	00 8e 02 00 00 13    	add    %cl,0x13000002(%rsi)
 64a:	85 07                	test   %eax,(%rdi)
 64c:	00 00                	add    %al,(%rax)
 64e:	b8 02 00 00 00       	mov    $0x2,%eax
 653:	00 00                	add    %al,(%rax)
 655:	16                   	(bad)  
 656:	6c                   	insb   (%dx),%es:(%rdi)
 657:	00 00                	add    %al,(%rax)
 659:	00 6a 1d             	add    %ch,0x1d(%rdx)
 65c:	00 00                	add    %al,(%rax)
 65e:	00 00                	add    %al,(%rax)
 660:	00 00                	add    %al,(%rax)
 662:	88 01                	mov    %al,(%rcx)
 664:	00 00                	add    %al,(%rax)
 666:	01 c6                	add    %eax,%esi
 668:	03 17                	add    (%rdi),%edx
 66a:	01 53 74             	add    %edx,0x74(%rbx)
 66d:	00 00                	add    %al,(%rax)
 66f:	00 17                	add    %dl,(%rdi)
 671:	01 56 7f             	add    %edx,0x7f(%rsi)
 674:	00 00                	add    %al,(%rax)
 676:	00 18                	add    %bl,(%rax)
 678:	64 8a 00             	mov    %fs:(%rax),%al
 67b:	00 00                	add    %al,(%rax)
 67d:	14 6a                	adc    $0x6a,%al
 67f:	1d 00 00 00 00       	sbb    $0x0,%eax
 684:	00 00                	add    %al,(%rax)
 686:	88 01                	mov    %al,(%rcx)
 688:	00 00                	add    %al,(%rax)
 68a:	19 00                	sbb    %eax,(%rax)
 68c:	96                   	xchg   %eax,%esi
 68d:	00 00                	add    %al,(%rax)
 68f:	00 00                	add    %al,(%rax)
 691:	00 10                	add    %dl,(%rax)
 693:	fa                   	cli    
 694:	00 00                	add    %al,(%rax)
 696:	00 40 02             	add    %al,0x2(%rax)
 699:	00 00                	add    %al,(%rax)
 69b:	01 ca                	add    %ecx,%edx
 69d:	0c 15                	or     $0x15,%al
 69f:	27                   	(bad)  
 6a0:	01 00                	add    %eax,(%rax)
 6a2:	00 12                	add    %dl,(%rdx)
 6a4:	b0 02                	mov    $0x2,%al
 6a6:	00 00                	add    %al,(%rax)
 6a8:	13 79 09             	adc    0x9(%rcx),%edi
 6ab:	00 00                	add    %al,(%rax)
 6ad:	33 01                	xor    (%rcx),%eax
 6af:	00 00                	add    %al,(%rax)
 6b1:	00 00                	add    %al,(%rax)
 6b3:	10 e4                	adc    %ah,%ah
 6b5:	01 00                	add    %eax,(%rax)
 6b7:	00 10                	add    %dl,(%rax)
 6b9:	03 00                	add    (%rax),%eax
 6bb:	00 01                	add    %al,(%rcx)
 6bd:	cc                   	int3   
 6be:	0c 11                	or     $0x11,%al
 6c0:	d6                   	(bad)  
 6c1:	09 00                	or     %eax,(%rax)
 6c3:	00 f0                	add    %dh,%al
 6c5:	01 00                	add    %eax,(%rax)
 6c7:	00 11                	add    %dl,(%rcx)
 6c9:	b3 09                	mov    $0x9,%bl
 6cb:	00 00                	add    %al,(%rax)
 6cd:	fb                   	sti    
 6ce:	01 00                	add    %eax,(%rax)
 6d0:	00 11                	add    %dl,(%rcx)
 6d2:	cc                   	int3   
 6d3:	0e                   	(bad)  
 6d4:	00 00                	add    %al,(%rax)
 6d6:	06                   	(bad)  
 6d7:	02 00                	add    (%rax),%al
 6d9:	00 15 1c 02 00 00    	add    %dl,0x21c(%rip)        # 8fb <__abi_tag+0x637>
 6df:	13 a8 0e 00 00 11    	adc    0x1100000e(%rax),%ebp
 6e5:	02 00                	add    (%rax),%al
 6e7:	00 12                	add    %dl,(%rdx)
 6e9:	90                   	nop
 6ea:	03 00                	add    (%rax),%eax
 6ec:	00 13                	add    %dl,(%rbx)
 6ee:	f9                   	stc    
 6ef:	09 00                	or     %eax,(%rax)
 6f1:	00 28                	add    %ch,(%rax)
 6f3:	02 00                	add    (%rax),%al
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 10                	add    %dl,(%rax)
 6f9:	6d                   	insl   (%dx),%es:(%rdi)
 6fa:	01 00                	add    %eax,(%rax)
 6fc:	00 10                	add    %dl,(%rax)
 6fe:	04 00                	add    $0x0,%al
 700:	00 01                	add    %al,(%rcx)
 702:	cb                   	lret   
 703:	0c 15                	or     $0x15,%al
 705:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
 706:	01 00                	add    %eax,(%rax)
 708:	00 12                	add    %dl,(%rdx)
 70a:	80 04 00 00          	addb   $0x0,(%rax,%rax,1)
 70e:	13 f1                	adc    %ecx,%esi
 710:	0e                   	(bad)  
 711:	00 00                	add    %al,(%rax)
 713:	b1 01                	mov    $0x1,%cl
 715:	00 00                	add    %al,(%rax)
 717:	00 12                	add    %dl,(%rdx)
 719:	00 05 00 00 1a 05    	add    %al,0x51a0000(%rip)        # 51a071f <_end+0x519b6c7>
 71f:	10 64 34 1c          	adc    %ah,0x1c(%rsp,%rsi,1)
 723:	9f                   	lahf   
 724:	be 01 00 00 12       	mov    $0x12000001,%esi
 729:	d0 04 00             	rolb   (%rax,%rax,1)
 72c:	00 19                	add    %bl,(%rcx)
 72e:	64 ca 01 00          	fs lret $0x1
 732:	00 00                	add    %al,(%rax)
 734:	00 00                	add    %al,(%rax)
 736:	10 5b 02             	adc    %bl,0x2(%rbx)
 739:	00 00                	add    %al,(%rax)
 73b:	30 05 00 00 01 cd    	xor    %al,-0x32ff0000(%rip)        # ffffffffcd010741 <_end+0xffffffffcd00b6e9>
 741:	0d 11 85 0e 00       	or     $0xe8511,%eax
 746:	00 67 02             	add    %ah,0x2(%rdi)
 749:	00 00                	add    %al,(%rax)
 74b:	11 62 0e             	adc    %esp,0xe(%rdx)
 74e:	00 00                	add    %al,(%rax)
 750:	72 02                	jb     754 <__abi_tag+0x490>
 752:	00 00                	add    %al,(%rax)
 754:	11 3d 0e 00 00 7d    	adc    %edi,0x7d00000e(%rip)        # 7d000768 <_end+0x7cffb710>
 75a:	02 00                	add    (%rax),%al
 75c:	00 13                	add    %dl,(%rbx)
 75e:	2b 0b                	sub    (%rbx),%ecx
 760:	00 00                	add    %al,(%rax)
 762:	93                   	xchg   %eax,%ebx
 763:	02 00                	add    (%rax),%al
 765:	00 13                	add    %dl,(%rbx)
 767:	19 0e                	sbb    %ecx,(%rsi)
 769:	00 00                	add    %al,(%rax)
 76b:	88 02                	mov    %al,(%rdx)
 76d:	00 00                	add    %al,(%rax)
 76f:	12 90 05 00 00 13    	adc    0x13000005(%rax),%dl
 775:	78 0d                	js     784 <__abi_tag+0x4c0>
 777:	00 00                	add    %al,(%rax)
 779:	9f                   	lahf   
 77a:	02 00                	add    (%rax),%al
 77c:	00 00                	add    %al,(%rax)
 77e:	00 1b                	add    %bl,(%rbx)
 780:	b4 00                	mov    $0x0,%ah
 782:	00 00                	add    %al,(%rax)
 784:	6a 2c                	pushq  $0x2c
 786:	00 00                	add    %al,(%rax)
 788:	00 00                	add    %al,(%rax)
 78a:	00 00                	add    %al,(%rax)
 78c:	c1 00 00             	roll   $0x0,(%rax)
 78f:	00 01                	add    %al,(%rcx)
 791:	c9                   	leaveq 
 792:	09 1c 98             	or     %ebx,(%rax,%rbx,4)
 795:	07                   	(bad)  
 796:	00 00                	add    %al,(%rax)
 798:	e2 11                	loop   7ab <__abi_tag+0x4e7>
 79a:	00 00                	add    %al,(%rax)
 79c:	00 00                	add    %al,(%rax)
 79e:	00 00                	add    %al,(%rax)
 7a0:	1c 98                	sbb    $0x98,%al
 7a2:	07                   	(bad)  
 7a3:	00 00                	add    %al,(%rax)
 7a5:	f2 11 00             	repnz adc %eax,(%rax)
 7a8:	00 00                	add    %al,(%rax)
 7aa:	00 00                	add    %al,(%rax)
 7ac:	00 1c b7             	add    %bl,(%rdi,%rsi,4)
 7af:	07                   	(bad)  
 7b0:	00 00                	add    %al,(%rax)
 7b2:	3e 1d 00 00 00 00    	ds sbb $0x0,%eax
 7b8:	00 00                	add    %al,(%rax)
 7ba:	1c b7                	sbb    $0xb7,%al
 7bc:	07                   	(bad)  
 7bd:	00 00                	add    %al,(%rax)
 7bf:	46 1d 00 00 00 00    	rex.RX sbb $0x0,%eax
 7c5:	00 00                	add    %al,(%rax)
 7c7:	1c 98                	sbb    $0x98,%al
 7c9:	07                   	(bad)  
 7ca:	00 00                	add    %al,(%rax)
 7cc:	55                   	push   %rbp
 7cd:	1d 00 00 00 00       	sbb    $0x0,%eax
 7d2:	00 00                	add    %al,(%rax)
 7d4:	1c 98                	sbb    $0x98,%al
 7d6:	07                   	(bad)  
 7d7:	00 00                	add    %al,(%rax)
 7d9:	67 1d 00 00 00 00    	addr32 sbb $0x0,%eax
 7df:	00 00                	add    %al,(%rax)
 7e1:	1c b7                	sbb    $0xb7,%al
 7e3:	07                   	(bad)  
 7e4:	00 00                	add    %al,(%rax)
 7e6:	11 2e                	adc    %ebp,(%rsi)
 7e8:	00 00                	add    %al,(%rax)
 7ea:	00 00                	add    %al,(%rax)
 7ec:	00 00                	add    %al,(%rax)
 7ee:	1c b7                	sbb    $0xb7,%al
 7f0:	07                   	(bad)  
 7f1:	00 00                	add    %al,(%rax)
 7f3:	19 2e                	sbb    %ebp,(%rsi)
 7f5:	00 00                	add    %al,(%rax)
 7f7:	00 00                	add    %al,(%rax)
 7f9:	00 00                	add    %al,(%rax)
 7fb:	00 1d 17 02 00 00    	add    %bl,0x217(%rip)        # a18 <__abi_tag+0x754>
 801:	02 4a 02             	add    0x2(%rdx),%cl
 804:	af                   	scas   %es:(%rdi),%eax
 805:	07                   	(bad)  
 806:	00 00                	add    %al,(%rax)
 808:	1e                   	(bad)  
 809:	b0 07                	mov    $0x7,%al
 80b:	00 00                	add    %al,(%rax)
 80d:	1e                   	(bad)  
 80e:	b0 07                	mov    $0x7,%al
 810:	00 00                	add    %al,(%rax)
 812:	00 1f                	add    %bl,(%rdi)
 814:	04 85                	add    $0x85,%al
 816:	01 00                	add    %eax,(%rax)
 818:	00 07                	add    %al,(%rdi)
 81a:	08 20                	or     %ah,(%rax)
 81c:	25 02 00 00 02       	and    $0x2000002,%eax
 821:	35 02 1e af 07       	xor    $0x7af1e02,%eax
 826:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .debug_abbrev :

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x30ac2be>
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
  8a:	00 05 0f 00 49 13    	add    %al,0x1349000f(%rip)        # 1349009f <_end+0x1348b047>
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
  d4:	00 0d 2e 01 11 01    	add    %cl,0x111012e(%rip)        # 1110208 <_end+0x110b1b0>
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
 146:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 14b:	01 12                	add    %edx,(%rdx)
 14d:	06                   	(bad)  
 14e:	58                   	pop    %rax
 14f:	0b 59 0b             	or     0xb(%rcx),%ebx
 152:	57                   	push   %rdi
 153:	0b 00                	or     (%rax),%eax
 155:	00 17                	add    %dl,(%rdi)
 157:	05 00 02 18 31       	add    $0x31180200,%eax
 15c:	13 00                	adc    (%rax),%eax
 15e:	00 18                	add    %bl,(%rax)
 160:	05 00 1c 0f 31       	add    $0x310f1c00,%eax
 165:	13 00                	adc    (%rax),%eax
 167:	00 19                	add    %bl,(%rcx)
 169:	34 00                	xor    $0x0,%al
 16b:	1c 0f                	sbb    $0xf,%al
 16d:	31 13                	xor    %edx,(%rbx)
 16f:	00 00                	add    %al,(%rax)
 171:	1a 34 00             	sbb    (%rax,%rax,1),%dh
 174:	02 18                	add    (%rax),%bl
 176:	31 13                	xor    %edx,(%rbx)
 178:	00 00                	add    %al,(%rax)
 17a:	1b 1d 00 31 13 11    	sbb    0x11133100(%rip),%ebx        # 11133280 <_end+0x1112e228>
 180:	01 12                	add    %edx,(%rdx)
 182:	06                   	(bad)  
 183:	58                   	pop    %rax
 184:	0b 59 0b             	or     0xb(%rcx),%ebx
 187:	57                   	push   %rdi
 188:	0b 00                	or     (%rax),%eax
 18a:	00 1c 89             	add    %bl,(%rcx,%rcx,4)
 18d:	82                   	(bad)  
 18e:	01 00                	add    %eax,(%rax)
 190:	31 13                	xor    %edx,(%rbx)
 192:	11 01                	adc    %eax,(%rcx)
 194:	00 00                	add    %al,(%rax)
 196:	1d 2e 01 03 0e       	sbb    $0xe03012e,%eax
 19b:	3a 0b                	cmp    (%rbx),%cl
 19d:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491aca <_end+0x1348ca72>
 1a3:	3c 19                	cmp    $0x19,%al
 1a5:	3f                   	(bad)  
 1a6:	19 00                	sbb    %eax,(%rax)
 1a8:	00 1e                	add    %bl,(%rsi)
 1aa:	05 00 49 13 00       	add    $0x134900,%eax
 1af:	00 1f                	add    %bl,(%rdi)
 1b1:	0f 00 00             	sldt   (%rax)
 1b4:	00 20                	add    %ah,(%rax)
 1b6:	2e 01 03             	add    %eax,%cs:(%rbx)
 1b9:	0e                   	(bad)  
 1ba:	3a 0b                	cmp    (%rbx),%cl
 1bc:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1ae9 <_end+0x193bca91>
 1c2:	3f                   	(bad)  
 1c3:	19 00                	sbb    %eax,(%rax)
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
  64:	01 05 03 03 0a 4a    	add    %eax,0x4a0a0303(%rip)        # 4a0a036d <_end+0x4a09b315>
  6a:	05 18 06 01 05       	add    $0x5010618,%eax
  6f:	03 06                	add    (%rsi),%eax
  71:	59                   	pop    %rcx
  72:	13 06                	adc    (%rsi),%eax
  74:	82                   	(bad)  
  75:	05 01 5a 02 01       	add    $0x1025a01,%eax
  7a:	00 01                	add    %al,(%rcx)
  7c:	01 fc                	add    %edi,%esp
  7e:	09 00                	or     %eax,(%rax)
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
  d5:	7e 08                	jle    df <__abi_tag-0x1e5>
  d7:	12 05 07 06 3c 05    	adc    0x53c0607(%rip),%al        # 53c06e4 <_end+0x53bb68c>
  dd:	12 06                	adc    (%rsi),%al
  df:	69 05 0a 06 4a 05 23 	imul   $0x99030623,0x54a060a(%rip),%eax        # 54a06f3 <_end+0x549b69b>
  e6:	06 03 99 
  e9:	01 e4                	add    %esp,%esp
  eb:	05 0f 06 82 06       	add    $0x682060f,%eax
  f0:	f3 05 24 03 ec 7e    	repz add $0x7eec0324,%eax
  f6:	f2 05 03 06 3c 03    	repnz add $0x33c0603,%eax
  fc:	6d                   	insl   (%dx),%es:(%rdi)
  fd:	82                   	(bad)  
  fe:	03 13                	add    (%rbx),%edx
 100:	08 ba 03 6d 08 e4    	or     %bh,-0x1bf792fd(%rdx)
 106:	03 13                	add    (%rbx),%edx
 108:	74 05                	je     10f <__abi_tag-0x1b5>
 10a:	0c 06                	or     $0x6,%al
 10c:	08 ae 08 9f 08 65    	or     %ch,0x65089f08(%rsi)
 112:	02 28                	add    (%rax),%ch
 114:	13 02                	adc    (%rdx),%eax
 116:	24 11                	and    $0x11,%al
 118:	02 28                	add    (%rax),%ch
 11a:	13 02                	adc    (%rdx),%eax
 11c:	24 11                	and    $0x11,%al
 11e:	02 28                	add    (%rax),%ch
 120:	13 05 2a 02 24 0f    	adc    0xf24022a(%rip),%eax        # f240350 <_end+0xf23b2f8>
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
 15a:	13 05 0f 06 08 f2    	adc    -0xdf7f9f1(%rip),%eax        # fffffffff208076f <_end+0xfffffffff207b717>
 160:	05 07 9e 05 0f       	add    $0xf059e07,%eax
 165:	4a 05 07 9e 05 0f    	rex.WX add $0xf059e07,%rax
 16b:	4a 05 07 9e 05 0f    	rex.WX add $0xf059e07,%rax
 171:	4a 05 07 74 05 11    	rex.WX add $0x11057407,%rax
 177:	4a 05 0f 08 66 05    	rex.WX add $0x566080f,%rax
 17d:	07                   	(bad)  
 17e:	74 05                	je     185 <__abi_tag-0x13f>
 180:	0f 4a 05 07 74 05 0f 	cmovp  0xf057407(%rip),%eax        # f05758e <_end+0xf052536>
 187:	4a 05 07 74 05 0f    	rex.WX add $0xf057407,%rax
 18d:	4a 05 07 66 05 29    	rex.WX add $0x29056607,%rax
 193:	06                   	(bad)  
 194:	49 05 11 08 59 05    	rex.WB add $0x5590811,%rax
 19a:	0f 06                	clts   
 19c:	08 66 05             	or     %ah,0x5(%rsi)
 19f:	07                   	(bad)  
 1a0:	74 05                	je     1a7 <__abi_tag-0x11d>
 1a2:	0f 4a 05 07 74 05 0f 	cmovp  0xf057407(%rip),%eax        # f0575b0 <_end+0xf052558>
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
 1d3:	74 05                	je     1da <__abi_tag-0xea>
 1d5:	03 03                	add    (%rbx),%eax
 1d7:	36 3c 06             	ss cmp $0x6,%al
 1da:	03 b7 7f 66 05 16    	add    0x1605667f(%rdi),%esi
 1e0:	06                   	(bad)  
 1e1:	03 cb                	add    %ebx,%ecx
 1e3:	00 74 05 18          	add    %dh,0x18(%rbp,%rax,1)
 1e7:	59                   	pop    %rcx
 1e8:	05 0c 06 ba 05       	add    $0x5ba060c,%eax
 1ed:	2b 06                	sub    (%rsi),%eax
 1ef:	47 05 24 06 4a 05    	rex.RXB add $0x54a0624,%eax
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
 278:	c8 05 2e 06          	enterq $0x2e05,$0x6
 27c:	6a 05                	pushq  $0x5
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
 2c7:	2b 01                	sub    (%rcx),%eax
 2c9:	05 14 06 58 05       	add    $0x5580614,%eax
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
 2f7:	4b 69 05 0d 06 c8 05 	rex.WXB imul $0x54b061c,0x5c8060d(%rip),%rax        # 5c8090f <_end+0x5c7b8b7>
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
 333:	90                   	nop
 334:	06                   	(bad)  
 335:	f6 06 03             	testb  $0x3,(%rsi)
 338:	e9 7e 02 39 01       	jmpq   13905bb <_end+0x138b563>
 33d:	03 97 01 02 28 01    	add    0x1280201(%rdi),%edx
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
 387:	20 05 0c 03 98 01    	and    %al,0x198030c(%rip)        # 1980699 <_end+0x197b641>
 38d:	02 7a 01             	add    0x1(%rdx),%bh
 390:	05 13 08 9e 05       	add    $0x59e0813,%eax
 395:	11 66 05             	adc    %esp,0x5(%rsi)
 398:	09 4a 03             	or     %ecx,0x3(%rdx)
 39b:	e8 7e c8 03 98       	callq  ffffffff9803cc1e <_end+0xffffffff98037bc6>
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
 3ca:	03 55 e4             	add    -0x1c(%rbp),%edx
 3cd:	05 13 06 03 3b       	add    $0x3b030613,%eax
 3d2:	e4 05                	in     $0x5,%al
 3d4:	11 06                	adc    %eax,(%rsi)
 3d6:	58                   	pop    %rax
 3d7:	05 09 66 05 2f       	add    $0x2f056609,%eax
 3dc:	06                   	(bad)  
 3dd:	48 05 28 06 4a 06    	add    $0x64a0628,%rax
 3e3:	03 76 9e             	add    -0x62(%rsi),%esi
 3e6:	05 07 06 9e 03       	add    $0x39e0607,%eax
 3eb:	51                   	push   %rcx
 3ec:	2e 05 13 06 03 31    	cs add $0x31030613,%eax
 3f2:	74 05                	je     3f9 <__abi_tag+0x135>
 3f4:	11 06                	adc    %eax,(%rsi)
 3f6:	58                   	pop    %rax
 3f7:	05 09 66 05 31       	add    $0x31056609,%eax
 3fc:	06                   	(bad)  
 3fd:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 403:	07                   	(bad)  
 404:	3c 05                	cmp    $0x5,%al
 406:	13 06                	adc    (%rsi),%eax
 408:	34 05                	xor    $0x5,%al
 40a:	25 06 9e 05 23       	and    $0x23059e06,%eax
 40f:	74 05                	je     416 <__abi_tag+0x152>
 411:	1a 74 05 24          	sbb    0x24(%rbp,%rax,1),%dh
 415:	06                   	(bad)  
 416:	03 5e 08             	add    0x8(%rsi),%ebx
 419:	20 05 03 03 36 3c    	and    %al,0x3c360303(%rip)        # 3c360722 <_end+0x3c35b6ca>
 41f:	06                   	(bad)  
 420:	03 b7 7f 66 05 0a    	add    0xa05667f(%rdi),%esi
 426:	06                   	(bad)  
 427:	03 fc                	add    %esp,%edi
 429:	00 02                	add    %al,(%rdx)
 42b:	39 01                	cmp    %eax,(%rcx)
 42d:	05 0f 03 7a 08       	add    $0x87a030f,%eax
 432:	66 05 16 06          	add    $0x616,%ax
 436:	ac                   	lods   %ds:(%rsi),%al
 437:	05 24 4a 05 1d       	add    $0x1d054a24,%eax
 43c:	66 05 2b 4a          	add    $0x4a2b,%ax
 440:	05 24 90 05 32       	add    $0x32059024,%eax
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
 48b:	4a 05 60 90 05 70    	rex.WX add $0x70059060,%rax
 491:	4a 05 78 4a 03 e5    	rex.WX add $0xffffffffe5034a78,%rax
 497:	7e 4a                	jle    4e3 <__abi_tag+0x21f>
 499:	05 03 06 03 b4       	add    $0xb4030603,%eax
 49e:	01 90 08 91 08 67    	add    %edx,0x67089108(%rax)
 4a4:	08 67 08             	or     %ah,0x8(%rdi)
 4a7:	67 08 93 83 05 0f 88 	or     %dl,-0x77f0fa7d(%ebx)
 4ae:	08 21                	or     %ah,(%rcx)
 4b0:	05 0c 03 d2 7e       	add    $0x7ed2030c,%eax
 4b5:	08 20                	or     %ah,(%rax)
 4b7:	c9                   	leaveq 
 4b8:	c7                   	(bad)  
 4b9:	59                   	pop    %rcx
 4ba:	57                   	push   %rdi
 4bb:	59                   	pop    %rcx
 4bc:	57                   	push   %rdi
 4bd:	59                   	pop    %rcx
 4be:	57                   	push   %rdi
 4bf:	83 81 83 81 83 81 83 	addl   $0xffffff83,-0x7e7c7e7d(%rcx)
 4c6:	81 83 81 83 81 83 81 	addl   $0x83818381,-0x7c7e7c7f(%rbx)
 4cd:	83 81 83 
 4d0:	81 83 81 83 81 83 81 	addl   $0x83818381,-0x7c7e7c7f(%rbx)
 4d7:	83 81 83 
 4da:	81 83 81 83 81 83 81 	addl   $0x83818381,-0x7c7e7c7f(%rbx)
 4e1:	83 81 83 
 4e4:	81 83 81 83 05 13 03 	addl   $0x5822503,0x13058381(%rbx)
 4eb:	25 82 05 
 4ee:	11 06                	adc    %eax,(%rsi)
 4f0:	02 72 12             	add    0x12(%rdx),%dh
 4f3:	05 13 02 30 12       	add    $0x12300213,%eax
 4f8:	05 11 82 05 09       	add    $0x9058211,%eax
 4fd:	f2 05 11 ba 05 09    	repnz add $0x905ba11,%eax
 503:	82                   	(bad)  
 504:	05 11 e4 05 0c       	add    $0xc05e411,%eax
 509:	82                   	(bad)  
 50a:	05 11 d6 05 09       	add    $0x905d611,%eax
 50f:	08 74 05 11          	or     %dh,0x11(%rbp,%rax,1)
 513:	82                   	(bad)  
 514:	05 09 08 4a 05       	add    $0x54a0809,%eax
 519:	11 4a 05             	adc    %ecx,0x5(%rdx)
 51c:	09 ac 05 13 ba 05 11 	or     %ebp,0x1105ba13(%rbp,%rax,1)
 523:	90                   	nop
 524:	05 09 08 9e 05       	add    $0x59e0809,%eax
 529:	13 82 05 11 82 05    	adc    0x5821105(%rdx),%eax
 52f:	13 08                	adc    (%rax),%ecx
 531:	12 05 11 82 05 09    	adc    0x9058211(%rip),%al        # 9058748 <_end+0x90536f0>
 537:	08 12                	or     %dl,(%rdx)
 539:	05 13 4a 05 11       	add    $0x11054a13,%eax
 53e:	82                   	(bad)  
 53f:	05 09 08 12 05       	add    $0x5120809,%eax
 544:	13 4a 05             	adc    0x5(%rdx),%ecx
 547:	11 82 05 09 08 12    	adc    %eax,0x12080905(%rdx)
 54d:	05 1a 06 03 2f       	add    $0x2f03061a,%eax
 552:	08 3c 05 18 59 05 1a 	or     %bh,0x1a055918(,%rax,1)
 559:	57                   	push   %rdi
 55a:	05 18 59 05 1a       	add    $0x1a055918,%eax
 55f:	57                   	push   %rdi
 560:	05 18 83 05 0c       	add    $0xc058318,%eax
 565:	06                   	(bad)  
 566:	82                   	(bad)  
 567:	05 1a 06 49 05       	add    $0x549061a,%eax
 56c:	18 83 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbx)
 572:	05 1a 06 81 05       	add    $0x581061a,%eax
 577:	18 83 05 1a 81 05    	sbb    %al,0x5811a05(%rbx)
 57d:	18 83 05 0c 06 d6    	sbb    %al,-0x29f9f3fb(%rbx)
 583:	05 1a 06 49 05       	add    $0x549061a,%eax
 588:	18 83 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbx)
 58e:	05 1a 06 81 05       	add    $0x581061a,%eax
 593:	18 83 06 03 95 7f    	sbb    %al,0x7f950306(%rbx)
 599:	82                   	(bad)  
 59a:	05 1a 06 03 ea       	add    $0xea03061a,%eax
 59f:	00 90 05 18 83 05    	add    %dl,0x5831805(%rax)
 5a5:	0c 06                	or     $0x6,%al
 5a7:	82                   	(bad)  
 5a8:	05 1a 06 49 05       	add    $0x549061a,%eax
 5ad:	18 83 05 0c 06 d6    	sbb    %al,-0x29f9f3fb(%rbx)
 5b3:	05 1a 06 49 05       	add    $0x549061a,%eax
 5b8:	18 83 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbx)
 5be:	05 1a 06 49 05       	add    $0x549061a,%eax
 5c3:	18 83 06 03 95 7f    	sbb    %al,0x7f950306(%rbx)
 5c9:	82                   	(bad)  
 5ca:	05 0c 03 eb 00       	add    $0xeb030c,%eax
 5cf:	66 05 1a 06          	add    $0x61a,%ax
 5d3:	49 05 18 83 05 0c    	rex.WB add $0xc058318,%rax
 5d9:	06                   	(bad)  
 5da:	82                   	(bad)  
 5db:	03 95 7f 82 05 1a    	add    0x1a05827f(%rbp),%edx
 5e1:	06                   	(bad)  
 5e2:	03 e6                	add    %esi,%esp
 5e4:	00 90 05 18 85 05    	add    %dl,0x5851805(%rax)
 5ea:	1a 7f 05             	sbb    0x5(%rdi),%bh
 5ed:	18 85 05 1a 7f 05    	sbb    %al,0x57f1a05(%rbp)
 5f3:	18 85 05 1a 7f 05    	sbb    %al,0x57f1a05(%rbp)
 5f9:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 5ff:	05 1a 06 fd 05       	add    $0x5fd061a,%eax
 604:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 60a:	05 1a 06 47 05       	add    $0x547061a,%eax
 60f:	18 85 05 1a 7f 05    	sbb    %al,0x57f1a05(%rbp)
 615:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 61b:	05 1a 06 c5 05       	add    $0x5c5061a,%eax
 620:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 626:	05 1a 06 03 64       	add    $0x6403061a,%eax
 62b:	4a 05 0f 06 08 20    	rex.WX add $0x2008060f,%rax
 631:	05 1a 06 03 19       	add    $0x1903061a,%eax
 636:	9e                   	sahf   
 637:	05 18 85 05 0c       	add    $0xc058518,%eax
 63c:	06                   	(bad)  
 63d:	82                   	(bad)  
 63e:	05 1a 06 03 64       	add    $0x6403061a,%eax
 643:	c8 05 0f 06          	enterq $0xf05,$0x6
 647:	08 20                	or     %ah,(%rax)
 649:	05 1a 9e 05 0f       	add    $0xf059e1a,%eax
 64e:	08 20                	or     %ah,(%rax)
 650:	05 1a 06 03 19       	add    $0x1903061a,%eax
 655:	9e                   	sahf   
 656:	05 18 85 05 1a       	add    $0x1a058518,%eax
 65b:	7f 05                	jg     662 <__abi_tag+0x39e>
 65d:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 663:	05 18 06 03 64       	add    $0x64030618,%eax
 668:	c8 05 0c 06          	enterq $0xc05,$0x6
 66c:	82                   	(bad)  
 66d:	05 1a 4a 05 0f       	add    $0xf054a1a,%eax
 672:	08 20                	or     %ah,(%rax)
 674:	05 1a 9e 05 0f       	add    $0xf059e1a,%eax
 679:	08 20                	or     %ah,(%rax)
 67b:	05 18 9e 05 0c       	add    $0xc059e18,%eax
 680:	90                   	nop
 681:	05 18 4a 05 1a       	add    $0x1a054a18,%eax
 686:	58                   	pop    %rax
 687:	05 0f 08 2e 05       	add    $0x52e080f,%eax
 68c:	1a 06                	sbb    (%rsi),%al
 68e:	ad                   	lods   %ds:(%rsi),%eax
 68f:	05 0f 06 08 2e       	add    $0x2e08060f,%eax
 694:	05 18 06 ab 05       	add    $0x5ab0618,%eax
 699:	0c 06                	or     $0x6,%al
 69b:	58                   	pop    %rax
 69c:	05 1a 06 bb 05       	add    $0x5bb061a,%eax
 6a1:	0f 06                	clts   
 6a3:	08 20                	or     %ah,(%rax)
 6a5:	05 03 06 99 05       	add    $0x5990603,%eax
 6aa:	18 08                	sbb    %cl,(%rax)
 6ac:	41 05 1a 06 58 05    	rex.B add $0x558061a,%eax
 6b2:	0f 08                	invd   
 6b4:	2e 05 1a ac 05 0f    	cs add $0xf05ac1a,%eax
 6ba:	08 2e                	or     %ch,(%rsi)
 6bc:	05 18 ac 05 0c       	add    $0xc05ac18,%eax
 6c1:	4a 05 18 4a 05 1a    	rex.WX add $0x1a054a18,%rax
 6c7:	9e                   	sahf   
 6c8:	05 0f 08 2e 05       	add    $0x52e080f,%eax
 6cd:	1a ac 05 0f 08 2e 05 	sbb    0x52e080f(%rbp,%rax,1),%ch
 6d4:	0c ac                	or     $0xac,%al
 6d6:	05 18 4a 05 0c       	add    $0xc054a18,%eax
 6db:	9e                   	sahf   
 6dc:	05 1a 06 48 05       	add    $0x548061a,%eax
 6e1:	0f 06                	clts   
 6e3:	08 2e                	or     %ch,(%rsi)
 6e5:	05 1a ac 05 0f       	add    $0xf05ac1a,%eax
 6ea:	08 2e                	or     %ch,(%rsi)
 6ec:	05 0c 06 ae 05       	add    $0x5ae060c,%eax
 6f1:	03 7d 05             	add    0x5(%rbp),%edi
 6f4:	1a a1 05 0f 06 08    	sbb    0x8060f05(%rcx),%ah
 6fa:	20 05 03 06 9b 05    	and    %al,0x59b0603(%rip)        # 59b0d03 <_end+0x59abcab>
 700:	18 08                	sbb    %cl,(%rax)
 702:	69 05 1a 06 9e 05 0f 	imul   $0x520080f,0x59e061a(%rip),%eax        # 59e0d26 <_end+0x59dbcce>
 709:	08 20 05 
 70c:	1a 9e 05 0f 08 20    	sbb    0x20080f05(%rsi),%bl
 712:	05 0c 9e 05 18       	add    $0x18059e0c,%eax
 717:	4a 05 0c 9e 05 18    	rex.WX add $0x18059e0c,%rax
 71d:	4a 05 1a 58 05 0f    	rex.WX add $0xf05581a,%rax
 723:	08 2e                	or     %ch,(%rsi)
 725:	05 18 ac 05 0c       	add    $0xc05ac18,%eax
 72a:	58                   	pop    %rax
 72b:	05 16 06 b9 05       	add    $0x5b90616,%eax
 730:	0f 06                	clts   
 732:	08 20                	or     %ah,(%rax)
 734:	05 16 9e 05 0f       	add    $0xf059e16,%eax
 739:	08 20                	or     %ah,(%rax)
 73b:	05 03 06 9c 05       	add    $0x59c0603,%eax
 740:	16                   	(bad)  
 741:	08 3e                	or     %bh,(%rsi)
 743:	05 0f 06 08 20       	add    $0x2008060f,%eax
 748:	05 16 9e 05 0f       	add    $0xf059e16,%eax
 74d:	08 20                	or     %ah,(%rax)
 74f:	05 14 9e 05 0c       	add    $0xc059e14,%eax
 754:	90                   	nop
 755:	05 14 4a 05 16       	add    $0x16054a14,%eax
 75a:	58                   	pop    %rax
 75b:	05 0f 08 2e 05       	add    $0x52e080f,%eax
 760:	16                   	(bad)  
 761:	ac                   	lods   %ds:(%rsi),%al
 762:	05 1a 06 08 30       	add    $0x3008061a,%eax
 767:	05 0f 56 05 14       	add    $0x1405560f,%eax
 76c:	06                   	(bad)  
 76d:	66 05 0c 4a          	add    $0x4a0c,%ax
 771:	05 14 4a 05 0c       	add    $0xc054a14,%eax
 776:	9e                   	sahf   
 777:	05 03 06 b8 05       	add    $0x5b80603,%eax
 77c:	09 03                	or     %eax,(%rbx)
 77e:	72 08                	jb     788 <__abi_tag+0x4c4>
 780:	f2 83 08 81          	repnz orl $0xffffff81,(%rax)
 784:	05 1a 03 c8 00       	add    $0xc8031a,%eax
 789:	c8 05 18 06          	enterq $0x1805,$0x6
 78d:	58                   	pop    %rax
 78e:	05 1a 06 59 05       	add    $0x559061a,%eax
 793:	18 59 05             	sbb    %bl,0x5(%rcx)
 796:	1a 56 05             	sbb    0x5(%rsi),%dl
 799:	18 06                	sbb    %al,(%rsi)
 79b:	82                   	(bad)  
 79c:	05 1a 06 83 05       	add    $0x583061a,%eax
 7a1:	18 83 05 0c 80 4c    	sbb    %al,0x4c800c05(%rbx)
 7a7:	05 1a 4b 05 18       	add    $0x18054b1a,%eax
 7ac:	5b                   	pop    %rbx
 7ad:	05 1a 55 05 18       	add    $0x1805551a,%eax
 7b2:	85 05 0c 06 82 05    	test   %eax,0x582060c(%rip)        # 5820dc4 <_end+0x581bd6c>
 7b8:	1a 06                	sbb    (%rsi),%al
 7ba:	4b 5b                	rex.WXB pop %r11
 7bc:	05 1c 59 05 1a       	add    $0x1a05591c,%eax
 7c1:	06                   	(bad)  
 7c2:	58                   	pop    %rax
 7c3:	06                   	(bad)  
 7c4:	54                   	push   %rsp
 7c5:	85 05 0d 06 82 05    	test   %eax,0x582060d(%rip)        # 5820dd8 <_end+0x581bd80>
 7cb:	1c 06                	sbb    $0x6,%al
 7cd:	4b 05 1a 06 82 05    	rex.WXB add $0x582061a,%rax
 7d3:	0d 82 06 4c 05       	or     $0x54c0682,%eax
 7d8:	16                   	(bad)  
 7d9:	03 54 4a 05          	add    0x5(%rdx,%rcx,2),%edx
 7dd:	14 06                	adc    $0x6,%al
 7df:	82                   	(bad)  
 7e0:	05 16 08 12 05       	add    $0x5120816,%eax
 7e5:	14 82                	adc    $0x82,%al
 7e7:	05 16 08 12 05       	add    $0x5120816,%eax
 7ec:	14 82                	adc    $0x82,%al
 7ee:	05 16 08 12 05       	add    $0x5120816,%eax
 7f3:	14 06                	adc    $0x6,%al
 7f5:	03 1d 4a 06 03 ff    	add    -0xfcf9b6(%rip),%ebx        # ffffffffff030e45 <_end+0xffffffffff02bded>
 7fb:	7e 4a                	jle    847 <__abi_tag+0x583>
 7fd:	05 0c 03 81 01       	add    $0x181030c,%eax
 802:	90                   	nop
 803:	05 1a 06 08 4c       	add    $0x4c08061a,%eax
 808:	05 18 06 82 05       	add    $0x5820618,%eax
 80d:	1a 82 05 18 82 05    	sbb    0x5821805(%rdx),%al
 813:	0c 82                	or     $0x82,%al
 815:	05 1a 06 83 05       	add    $0x583061a,%eax
 81a:	18 83 05 1a 81 05    	sbb    %al,0x5811a05(%rbx)
 820:	18 83 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbx)
 826:	05 1a 06 4b 05       	add    $0x54b061a,%eax
 82b:	18 85 05 1a 7f 05    	sbb    %al,0x57f1a05(%rbp)
 831:	18 85 05 0c 7e 4e    	sbb    %al,0x4e7e0c05(%rbp)
 837:	05 1a 83 85 7f       	add    $0x7f85831a,%eax
 83c:	85 05 0d 06 82 05    	test   %eax,0x582060d(%rip)        # 5820e4f <_end+0x581bdf7>
 842:	1c 06                	sbb    $0x6,%al
 844:	83 05 1a 06 82 05 1c 	addl   $0x1c,0x582061a(%rip)        # 5820e65 <_end+0x581be0d>
 84b:	82                   	(bad)  
 84c:	05 1a 82 05 0d       	add    $0xd05821a,%eax
 851:	82                   	(bad)  
 852:	03 f2                	add    %edx,%esi
 854:	7e 82                	jle    7d8 <__abi_tag+0x514>
 856:	06                   	(bad)  
 857:	03 90 01 90 06 03    	add    0x3069001(%rax),%edx
 85d:	f0 7e 9e             	lock jle 7fe <__abi_tag+0x53a>
 860:	05 1a 06 03 83       	add    $0x8303061a,%eax
 865:	01 66 05             	add    %esp,0x5(%rsi)
 868:	18 06                	sbb    %al,(%rsi)
 86a:	82                   	(bad)  
 86b:	05 1a 06 83 05       	add    $0x583061a,%eax
 870:	18 83 05 1a 80 05    	sbb    %al,0x5801a05(%rbx)
 876:	18 06                	sbb    %al,(%rsi)
 878:	82                   	(bad)  
 879:	05 0c 82 05 1a       	add    $0x1a05820c,%eax
 87e:	06                   	(bad)  
 87f:	4b 05 18 83 05 0c    	rex.WXB add $0xc058318,%rax
 885:	06                   	(bad)  
 886:	82                   	(bad)  
 887:	05 1a 06 4b 05       	add    $0x54b061a,%eax
 88c:	18 85 05 1a 7f 05    	sbb    %al,0x57f1a05(%rbp)
 892:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 898:	05 1a 06 4b 85       	add    $0x854b061a,%eax
 89d:	05 1c 83 05 1a       	add    $0x1a05831c,%eax
 8a2:	06                   	(bad)  
 8a3:	82                   	(bad)  
 8a4:	06                   	(bad)  
 8a5:	7e 85                	jle    82c <__abi_tag+0x568>
 8a7:	05 1c 83 05 1a       	add    $0x1a05831c,%eax
 8ac:	06                   	(bad)  
 8ad:	82                   	(bad)  
 8ae:	05 0d 06 81 4b       	add    $0x4b81060d,%eax
 8b3:	06                   	(bad)  
 8b4:	03 f2                	add    %edx,%esi
 8b6:	7e 4a                	jle    902 <__abi_tag+0x63e>
 8b8:	06                   	(bad)  
 8b9:	03 90 01 66 05 16    	add    0x16056601(%rax),%edx
 8bf:	03 54 66 05          	add    0x5(%rsi,%riz,2),%edx
 8c3:	14 06                	adc    $0x6,%al
 8c5:	82                   	(bad)  
 8c6:	05 16 82 05 14       	add    $0x14058216,%eax
 8cb:	82                   	(bad)  
 8cc:	05 16 82 05 14       	add    $0x14058216,%eax
 8d1:	82                   	(bad)  
 8d2:	05 0c 06 03 1d       	add    $0x1d03060c,%eax
 8d7:	82                   	(bad)  
 8d8:	05 1a 08 68 05       	add    $0x568081a,%eax
 8dd:	18 06                	sbb    %al,(%rsi)
 8df:	82                   	(bad)  
 8e0:	05 0c 82 03 fd       	add    $0xfd03820c,%eax
 8e5:	7e 82                	jle    869 <__abi_tag+0x5a5>
 8e7:	05 1a 06 03 84       	add    $0x8403061a,%eax
 8ec:	01 66 05             	add    %esp,0x5(%rsi)
 8ef:	18 83 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbx)
 8f5:	05 1a 06 83 05       	add    $0x583061a,%eax
 8fa:	18 85 05 0c 06 82    	sbb    %al,-0x7df9f3fb(%rbp)
 900:	05 1a 06 83 85       	add    $0x8583061a,%eax
 905:	05 0d 06 82 05       	add    $0x582060d,%eax
 90a:	1c 06                	sbb    $0x6,%al
 90c:	83 05 1a 06 82 05 0d 	addl   $0xd,0x582061a(%rip)        # 5820f2d <_end+0x581bed5>
 913:	82                   	(bad)  
 914:	05 1c 06 4b 05       	add    $0x54b061c,%eax
 919:	1a 83 05 0d 80 4c    	sbb    0x4c800d05(%rbx),%al
 91f:	05 07 03 a9 7f       	add    $0x7fa90307,%eax
 924:	c8 06 03 47          	enterq $0x306,$0x47
 928:	66 03 39             	add    (%rcx),%di
 92b:	c8 05 13 06          	enterq $0x1305,$0x6
 92f:	03 1d d6 05 11 03    	add    0x31105d6(%rip),%ebx        # 3110f0b <_end+0x310beb3>
 935:	65 82                	gs (bad) 
 937:	05 0d 03 d5 00       	add    $0xd5030d,%eax
 93c:	82                   	(bad)  
 93d:	05 09 03 ab 7f       	add    $0x7fab0309,%eax
 942:	66 05 1a 03          	add    $0x31a,%ax
 946:	2b 82 05 18 5b 05    	sub    0x55b1805(%rdx),%eax
 94c:	1a 08                	sbb    (%rax),%cl
 94e:	7f 05                	jg     955 <__abi_tag+0x691>
 950:	18 5b 05             	sbb    %bl,0x5(%rbx)
 953:	14 03                	adc    $0x3,%al
 955:	62                   	(bad)  
 956:	58                   	pop    %rax
 957:	05 0c 06 9e 06       	add    $0x69e060c,%eax
 95c:	03 1e                	add    (%rsi),%ebx
 95e:	4a 05 16 02 28 0d    	rex.WX add $0xd280216,%rax
 964:	05 14 06 82 05       	add    $0x5820614,%eax
 969:	16                   	(bad)  
 96a:	82                   	(bad)  
 96b:	05 14 58 05 0c       	add    $0xc055814,%eax
 970:	58                   	pop    %rax
 971:	05 16 08 58 05       	add    $0x5580816,%eax
 976:	14 82                	adc    $0x82,%al
 978:	05 0c 82 05 16       	add    $0x1605820c,%eax
 97d:	08 58 05             	or     %bl,0x5(%rax)
 980:	14 82                	adc    $0x82,%al
 982:	05 0c 82 05 16       	add    $0x1605820c,%eax
 987:	4a 05 14 82 05 0c    	rex.WX add $0xc058214,%rax
 98d:	82                   	(bad)  
 98e:	05 16 ba 05 14       	add    $0x1405ba16,%eax
 993:	82                   	(bad)  
 994:	05 0c 82 05 0f       	add    $0xf05820c,%eax
 999:	06                   	(bad)  
 99a:	03 12                	add    (%rdx),%edx
 99c:	82                   	(bad)  
 99d:	05 1d 06 9e 05       	add    $0x59e061d,%eax
 9a2:	16                   	(bad)  
 9a3:	66 05 24 4a          	add    $0x4a24,%ax
 9a7:	05 1d 66 05 2b       	add    $0x2b05661d,%eax
 9ac:	4a 05 24 66 05 2b    	rex.WX add $0x2b056624,%rax
 9b2:	c8 05 39 4a          	enterq $0x3905,$0x4a
 9b6:	05 32 66 05 39       	add    $0x39056632,%eax
 9bb:	4a 05 13 06 03 49    	rex.WX add $0x49030613,%rax
 9c1:	c8 06 03 41          	enterq $0x306,$0x41
 9c5:	9e                   	sahf   
 9c6:	05 09 06 03 d6       	add    $0xd6030609,%eax
 9cb:	00 90 05 13 06 08    	add    %dl,0x8061305(%rax)
 9d1:	c8 05 11 82          	enterq $0x1105,$0x82
 9d5:	05 0f 06 85 05       	add    $0x585060f,%eax
 9da:	1d 06 4a 05 16       	sbb    $0x16054a06,%eax
 9df:	66 05 1d 4a          	add    $0x4a1d,%ax
 9e3:	05 11 06 03 47       	add    $0x47030611,%eax
 9e8:	c8 05 0f 06          	enterq $0xf05,$0x6
 9ec:	58                   	pop    %rax
 9ed:	05 07 d6 05 11       	add    $0x1105d607,%eax
 9f2:	08 2e                	or     %ch,(%rsi)
 9f4:	05 0f 82 05 07       	add    $0x705820f,%eax
 9f9:	82                   	(bad)  
 9fa:	05 11 08 58 05       	add    $0x5580811,%eax
 9ff:	0f 82 05 07 82 05    	jb     582110a <_end+0x581c0b2>
 a05:	11 90 05 0f 82 05    	adc    %edx,0x5820f05(%rax)
 a0b:	07                   	(bad)  
 a0c:	82                   	(bad)  
 a0d:	05 11 08 12 05       	add    $0x5120811,%eax
 a12:	0f 82 05 07 82 05    	jb     582111d <_end+0x581c0c5>
 a18:	03 06                	add    (%rsi),%eax
 a1a:	08 65 05             	or     %ah,0x5(%rbp)
 a1d:	11 03                	adc    %eax,(%rbx)
 a1f:	fc                   	cld    
 a20:	00 08                	add    %cl,(%rax)
 a22:	3c 05                	cmp    $0x5,%al
 a24:	26 06                	es (bad) 
 a26:	66 05 1f 66          	add    $0x661f,%ax
 a2a:	05 18 4a 05 2d       	add    $0x2d054a18,%eax
 a2f:	9e                   	sahf   
 a30:	05 26 66 05 34       	add    $0x34056626,%eax
 a35:	4a 05 2d 66 05 42    	rex.WX add $0x4205662d,%rax
 a3b:	4a 05 3b 66 05 34    	rex.WX add $0x3405663b,%rax
 a41:	4a 05 49 4a 05 42    	rex.WX add $0x42054a49,%rax
 a47:	66 05 50 4a          	add    $0x4a50,%ax
 a4b:	05 49 9e 05 58       	add    $0x58059e49,%eax
 a50:	4a 05 68 4a 05 60    	rex.WX add $0x60054a68,%rax
 a56:	66 05 07 06          	add    $0x607,%ax
 a5a:	03 78 9e             	add    -0x62(%rax),%edi
 a5d:	05 68 6e 05 70       	add    $0x70056e68,%eax
 a62:	06                   	(bad)  
 a63:	4a 05 78 4a 05 03    	rex.WX add $0x3054a78,%rax
 a69:	06                   	(bad)  
 a6a:	03 35 9e 08 13 08    	add    0x813089e(%rip),%esi        # 813130e <_end+0x812c2b6>
 a70:	67 08 2f             	or     %ch,(%edi)
 a73:	08 2f                	or     %ch,(%rdi)
 a75:	f5                   	cmc    
 a76:	83                   	.byte 0x83
 a77:	84 02                	test   %al,(%rdx)
 a79:	14 00                	adc    $0x0,%al
 a7b:	01 01                	add    %eax,(%rcx)

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
  c2:	67 20 2d 67 20 2d 67 	and    %ch,0x672d2067(%eip)        # 672d2130 <_end+0x672cd0d8>
  c9:	20 2d 4f 32 20 2d    	and    %ch,0x2d20324f(%rip)        # 2d20331e <_end+0x2d1fe2c6>
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
  f3:	20 2d 66 62 75 69    	and    %ch,0x69756266(%rip)        # 6975635f <_end+0x69751307>
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
 11a:	20 2d 66 70 69 63    	and    %ch,0x63697066(%rip)        # 63697186 <_end+0x6369212e>
 120:	20 2d 66 63 66 2d    	and    %ch,0x2d666366(%rip)        # 2d66648c <_end+0x2d661434>
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
  19:	74 89                	je     ffffffffffffffa4 <_end+0xffffffffffffaf4c>
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
  60:	00 1e                	add    %bl,(%rsi)
  62:	00 00                	add    %al,(%rax)
  64:	00 00                	add    %al,(%rax)
  66:	00 00                	add    %al,(%rax)
  68:	00 01                	add    %al,(%rcx)
  6a:	00 55 1e             	add    %dl,0x1e(%rbp)
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
  9c:	00 8d 1c 00 00 00    	add    %cl,0x1c(%rbp)
  a2:	00 00                	add    %al,(%rax)
  a4:	00 04 00             	add    %al,(%rax,%rax,1)
  a7:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  c3:	20 00                	and    %al,(%rax)
  c5:	00 00                	add    %al,(%rax)
  c7:	00 00                	add    %al,(%rax)
  c9:	00 00                	add    %al,(%rax)
  cb:	01 00                	add    %eax,(%rax)
  cd:	54                   	push   %rsp
  ce:	20 00                	and    %al,(%rax)
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
  ff:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 102:	00 00                	add    %al,(%rax)
 104:	00 00                	add    %al,(%rax)
 106:	00 04 00             	add    %al,(%rax,%rax,1)
 109:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 122:	00 00                	add    %al,(%rax)
 124:	00 1e                	add    %bl,(%rsi)
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
 15a:	00 20                	add    %ah,(%rax)
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
 189:	2d 00 00 00 00       	sub    $0x0,%eax
 18e:	00 00                	add    %al,(%rax)
 190:	00 0e                	add    %cl,(%rsi)
 192:	04 00                	add    $0x0,%al
 194:	00 00                	add    %al,(%rax)
 196:	00 00                	add    %al,(%rax)
 198:	00 01                	add    %al,(%rcx)
 19a:	00 5f 18             	add    %bl,0x18(%rdi)
 19d:	04 00                	add    $0x0,%al
 19f:	00 00                	add    %al,(%rax)
 1a1:	00 00                	add    %al,(%rax)
 1a3:	00 83 0b 00 00 00    	add    %al,0xb(%rbx)
 1a9:	00 00                	add    %al,(%rax)
 1ab:	00 01                	add    %al,(%rcx)
 1ad:	00 5f a6             	add    %bl,-0x5a(%rdi)
 1b0:	0b 00                	or     (%rax),%eax
 1b2:	00 00                	add    %al,(%rax)
 1b4:	00 00                	add    %al,(%rax)
 1b6:	00 8d 1c 00 00 00    	add    %cl,0x1c(%rbp)
 1bc:	00 00                	add    %al,(%rax)
 1be:	00 03                	add    %al,(%rbx)
 1c0:	00 10                	add    %dl,(%rax)
 1c2:	64 9f                	fs lahf 
	...
 1d4:	45 00 00             	add    %r8b,(%r8)
 1d7:	00 00                	add    %al,(%rax)
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 0e                	add    %cl,(%rsi)
 1dd:	04 00                	add    $0x0,%al
 1df:	00 00                	add    %al,(%rax)
 1e1:	00 00                	add    %al,(%rax)
 1e3:	00 01                	add    %al,(%rcx)
 1e5:	00 5e 18             	add    %bl,0x18(%rsi)
 1e8:	04 00                	add    $0x0,%al
 1ea:	00 00                	add    %al,(%rax)
 1ec:	00 00                	add    %al,(%rax)
 1ee:	00 89 1c 00 00 00    	add    %cl,0x1c(%rcx)
 1f4:	00 00                	add    %al,(%rax)
 1f6:	00 01                	add    %al,(%rcx)
 1f8:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 207:	00 00                	add    %al,(%rax)
 209:	00 55 00             	add    %dl,0x0(%rbp)
 20c:	00 00                	add    %al,(%rax)
 20e:	00 00                	add    %al,(%rax)
 210:	00 00                	add    %al,(%rax)
 212:	64 02 00             	add    %fs:(%rax),%al
 215:	00 00                	add    %al,(%rax)
 217:	00 00                	add    %al,(%rax)
 219:	00 02                	add    %al,(%rdx)
 21b:	00 30                	add    %dh,(%rax)
 21d:	9f                   	lahf   
 21e:	64 02 00             	add    %fs:(%rax),%al
 221:	00 00                	add    %al,(%rax)
 223:	00 00                	add    %al,(%rax)
 225:	00 80 02 00 00 00    	add    %al,0x2(%rax)
 22b:	00 00                	add    %al,(%rax)
 22d:	00 01                	add    %al,(%rcx)
 22f:	00 50 00             	add    %dl,0x0(%rax)
	...
 23e:	00 00                	add    %al,(%rax)
 240:	00 55 00             	add    %dl,0x0(%rbp)
 243:	00 00                	add    %al,(%rax)
 245:	00 00                	add    %al,(%rax)
 247:	00 00                	add    %al,(%rax)
 249:	91                   	xchg   %eax,%ecx
 24a:	02 00                	add    (%rax),%al
 24c:	00 00                	add    %al,(%rax)
 24e:	00 00                	add    %al,(%rax)
 250:	00 01                	add    %al,(%rcx)
 252:	00 53 00             	add    %dl,0x0(%rbx)
	...
 261:	00 00                	add    %al,(%rax)
 263:	00 55 00             	add    %dl,0x0(%rbp)
 266:	00 00                	add    %al,(%rax)
 268:	00 00                	add    %al,(%rax)
 26a:	00 00                	add    %al,(%rax)
 26c:	0e                   	(bad)  
 26d:	04 00                	add    $0x0,%al
 26f:	00 00                	add    %al,(%rax)
 271:	00 00                	add    %al,(%rax)
 273:	00 01                	add    %al,(%rcx)
 275:	00 53 18             	add    %dl,0x18(%rbx)
 278:	04 00                	add    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	00 00                	add    %al,(%rax)
 27e:	00 b8 0b 00 00 00    	add    %bh,0xb(%rax)
 284:	00 00                	add    %al,(%rax)
 286:	00 01                	add    %al,(%rcx)
 288:	00 53 00             	add    %dl,0x0(%rbx)
	...
 297:	00 00                	add    %al,(%rax)
 299:	00 55 00             	add    %dl,0x0(%rbp)
 29c:	00 00                	add    %al,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	00 00                	add    %al,(%rax)
 2a2:	91                   	xchg   %eax,%ecx
 2a3:	02 00                	add    (%rax),%al
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 00                	add    %al,(%rax)
 2a9:	00 01                	add    %al,(%rcx)
 2ab:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 2ba:	00 00                	add    %al,(%rax)
 2bc:	00 55 00             	add    %dl,0x0(%rbp)
 2bf:	00 00                	add    %al,(%rax)
 2c1:	00 00                	add    %al,(%rax)
 2c3:	00 00                	add    %al,(%rax)
 2c5:	91                   	xchg   %eax,%ecx
 2c6:	02 00                	add    (%rax),%al
 2c8:	00 00                	add    %al,(%rax)
 2ca:	00 00                	add    %al,(%rax)
 2cc:	00 01                	add    %al,(%rcx)
 2ce:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 2dd:	00 00                	add    %al,(%rax)
 2df:	00 62 09             	add    %ah,0x9(%rdx)
 2e2:	00 00                	add    %al,(%rax)
 2e4:	00 00                	add    %al,(%rax)
 2e6:	00 00                	add    %al,(%rax)
 2e8:	77 09                	ja     2f3 <__abi_tag+0x2f>
 2ea:	00 00                	add    %al,(%rax)
 2ec:	00 00                	add    %al,(%rax)
 2ee:	00 00                	add    %al,(%rax)
 2f0:	08 00                	or     %al,(%rax)
 2f2:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 2f8:	93                   	xchg   %eax,%ebx
 2f9:	08 9d 09 00 00 00    	or     %bl,0x9(%rbp)
 2ff:	00 00                	add    %al,(%rax)
 301:	00 ab 09 00 00 00    	add    %ch,0x9(%rbx)
 307:	00 00                	add    %al,(%rax)
 309:	00 08                	add    %cl,(%rax)
 30b:	00 30                	add    %dh,(%rax)
 30d:	9f                   	lahf   
 30e:	93                   	xchg   %eax,%ebx
 30f:	08 30                	or     %dh,(%rax)
 311:	9f                   	lahf   
 312:	93                   	xchg   %eax,%ebx
 313:	08 00                	or     %al,(%rax)
	...
 321:	00 00                	add    %al,(%rax)
 323:	00 33                	add    %dh,(%rbx)
 325:	04 00                	add    $0x0,%al
 327:	00 00                	add    %al,(%rax)
 329:	00 00                	add    %al,(%rax)
 32b:	00 3b                	add    %bh,(%rbx)
 32d:	04 00                	add    $0x0,%al
 32f:	00 00                	add    %al,(%rax)
 331:	00 00                	add    %al,(%rax)
 333:	00 02                	add    %al,(%rdx)
 335:	00 30                	add    %dh,(%rax)
 337:	9f                   	lahf   
 338:	3b 04 00             	cmp    (%rax,%rax,1),%eax
 33b:	00 00                	add    %al,(%rax)
 33d:	00 00                	add    %al,(%rax)
 33f:	00 5e 04             	add    %bl,0x4(%rsi)
 342:	00 00                	add    %al,(%rax)
 344:	00 00                	add    %al,(%rax)
 346:	00 00                	add    %al,(%rax)
 348:	01 00                	add    %eax,(%rax)
 34a:	50                   	push   %rax
 34b:	f5                   	cmc    
 34c:	09 00                	or     %eax,(%rax)
 34e:	00 00                	add    %al,(%rax)
 350:	00 00                	add    %al,(%rax)
 352:	00 fb                	add    %bh,%bl
 354:	09 00                	or     %eax,(%rax)
 356:	00 00                	add    %al,(%rax)
 358:	00 00                	add    %al,(%rax)
 35a:	00 02                	add    %al,(%rdx)
 35c:	00 30                	add    %dh,(%rax)
 35e:	9f                   	lahf   
	...
 36f:	33 04 00             	xor    (%rax,%rax,1),%eax
 372:	00 00                	add    %al,(%rax)
 374:	00 00                	add    %al,(%rax)
 376:	00 3b                	add    %bh,(%rbx)
 378:	04 00                	add    $0x0,%al
 37a:	00 00                	add    %al,(%rax)
 37c:	00 00                	add    %al,(%rax)
 37e:	00 10                	add    %dl,(%rax)
 380:	00 30                	add    %dh,(%rax)
 382:	9f                   	lahf   
 383:	93                   	xchg   %eax,%ebx
 384:	08 30                	or     %dh,(%rax)
 386:	9f                   	lahf   
 387:	93                   	xchg   %eax,%ebx
 388:	08 30                	or     %dh,(%rax)
 38a:	9f                   	lahf   
 38b:	93                   	xchg   %eax,%ebx
 38c:	08 30                	or     %dh,(%rax)
 38e:	9f                   	lahf   
 38f:	93                   	xchg   %eax,%ebx
 390:	08 f5                	or     %dh,%ch
 392:	09 00                	or     %eax,(%rax)
 394:	00 00                	add    %al,(%rax)
 396:	00 00                	add    %al,(%rax)
 398:	00 fb                	add    %bh,%bl
 39a:	09 00                	or     %eax,(%rax)
 39c:	00 00                	add    %al,(%rax)
 39e:	00 00                	add    %al,(%rax)
 3a0:	00 10                	add    %dl,(%rax)
 3a2:	00 30                	add    %dh,(%rax)
 3a4:	9f                   	lahf   
 3a5:	93                   	xchg   %eax,%ebx
 3a6:	08 30                	or     %dh,(%rax)
 3a8:	9f                   	lahf   
 3a9:	93                   	xchg   %eax,%ebx
 3aa:	08 30                	or     %dh,(%rax)
 3ac:	9f                   	lahf   
 3ad:	93                   	xchg   %eax,%ebx
 3ae:	08 30                	or     %dh,(%rax)
 3b0:	9f                   	lahf   
 3b1:	93                   	xchg   %eax,%ebx
 3b2:	08 00                	or     %al,(%rax)
	...
 3c0:	00 00                	add    %al,(%rax)
 3c2:	00 33                	add    %dh,(%rbx)
 3c4:	04 00                	add    $0x0,%al
 3c6:	00 00                	add    %al,(%rax)
 3c8:	00 00                	add    %al,(%rax)
 3ca:	00 cf                	add    %cl,%bh
 3cc:	04 00                	add    $0x0,%al
 3ce:	00 00                	add    %al,(%rax)
 3d0:	00 00                	add    %al,(%rax)
 3d2:	00 01                	add    %al,(%rcx)
 3d4:	00 5f f5             	add    %bl,-0xb(%rdi)
 3d7:	09 00                	or     %eax,(%rax)
 3d9:	00 00                	add    %al,(%rax)
 3db:	00 00                	add    %al,(%rax)
 3dd:	00 fb                	add    %bh,%bl
 3df:	09 00                	or     %eax,(%rax)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 00                	add    %al,(%rax)
 3e5:	00 01                	add    %al,(%rcx)
 3e7:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 3f6:	00 00                	add    %al,(%rax)
 3f8:	00 33                	add    %dh,(%rbx)
 3fa:	04 00                	add    $0x0,%al
 3fc:	00 00                	add    %al,(%rax)
 3fe:	00 00                	add    %al,(%rax)
 400:	00 cf                	add    %cl,%bh
 402:	04 00                	add    $0x0,%al
 404:	00 00                	add    %al,(%rax)
 406:	00 00                	add    %al,(%rax)
 408:	00 01                	add    %al,(%rcx)
 40a:	00 53 f5             	add    %dl,-0xb(%rbx)
 40d:	09 00                	or     %eax,(%rax)
 40f:	00 00                	add    %al,(%rax)
 411:	00 00                	add    %al,(%rax)
 413:	00 fb                	add    %bh,%bl
 415:	09 00                	or     %eax,(%rax)
 417:	00 00                	add    %al,(%rax)
 419:	00 00                	add    %al,(%rax)
 41b:	00 01                	add    %al,(%rcx)
 41d:	00 53 00             	add    %dl,0x0(%rbx)
	...
 42c:	00 00                	add    %al,(%rax)
 42e:	00 33                	add    %dh,(%rbx)
 430:	04 00                	add    $0x0,%al
 432:	00 00                	add    %al,(%rax)
 434:	00 00                	add    %al,(%rax)
 436:	00 cf                	add    %cl,%bh
 438:	04 00                	add    $0x0,%al
 43a:	00 00                	add    %al,(%rax)
 43c:	00 00                	add    %al,(%rax)
 43e:	00 01                	add    %al,(%rcx)
 440:	00 5e f5             	add    %bl,-0xb(%rsi)
 443:	09 00                	or     %eax,(%rax)
 445:	00 00                	add    %al,(%rax)
 447:	00 00                	add    %al,(%rax)
 449:	00 fb                	add    %bh,%bl
 44b:	09 00                	or     %eax,(%rax)
 44d:	00 00                	add    %al,(%rax)
 44f:	00 00                	add    %al,(%rax)
 451:	00 01                	add    %al,(%rcx)
 453:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 462:	00 00                	add    %al,(%rax)
 464:	00 33                	add    %dh,(%rbx)
 466:	04 00                	add    $0x0,%al
 468:	00 00                	add    %al,(%rax)
 46a:	00 00                	add    %al,(%rax)
 46c:	00 4b 09             	add    %cl,0x9(%rbx)
 46f:	00 00                	add    %al,(%rax)
 471:	00 00                	add    %al,(%rax)
 473:	00 00                	add    %al,(%rax)
 475:	03 00                	add    (%rax),%eax
 477:	77 a0                	ja     419 <__abi_tag+0x155>
 479:	02 f5                	add    %ch,%dh
 47b:	09 00                	or     %eax,(%rax)
 47d:	00 00                	add    %al,(%rax)
 47f:	00 00                	add    %al,(%rax)
 481:	00 50 10             	add    %dl,0x10(%rax)
 484:	00 00                	add    %al,(%rax)
 486:	00 00                	add    %al,(%rax)
 488:	00 00                	add    %al,(%rax)
 48a:	03 00                	add    (%rax),%eax
 48c:	77 a0                	ja     42e <__abi_tag+0x16a>
 48e:	02 78 1a             	add    0x1a(%rax),%bh
 491:	00 00                	add    %al,(%rax)
 493:	00 00                	add    %al,(%rax)
 495:	00 00                	add    %al,(%rax)
 497:	81 1a 00 00 00 00    	sbbl   $0x0,(%rdx)
 49d:	00 00                	add    %al,(%rax)
 49f:	01 00                	add    %eax,(%rax)
 4a1:	61                   	(bad)  
 4a2:	81 1a 00 00 00 00    	sbbl   $0x0,(%rdx)
 4a8:	00 00                	add    %al,(%rax)
 4aa:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 4ad:	00 00                	add    %al,(%rax)
 4af:	00 00                	add    %al,(%rax)
 4b1:	00 03                	add    %al,(%rbx)
 4b3:	00 77 80             	add    %dh,-0x80(%rdi)
 4b6:	01 00                	add    %eax,(%rax)
	...
 4c4:	00 00                	add    %al,(%rax)
 4c6:	00 64 04 00          	add    %ah,0x0(%rsp,%rax,1)
 4ca:	00 00                	add    %al,(%rax)
 4cc:	00 00                	add    %al,(%rax)
 4ce:	00 b6 04 00 00 00    	add    %dh,0x4(%rsi)
 4d4:	00 00                	add    %al,(%rax)
 4d6:	00 03                	add    %al,(%rbx)
 4d8:	00 7f 7c             	add    %bh,0x7c(%rdi)
 4db:	9f                   	lahf   
	...
 4ec:	64 04 00             	fs add $0x0,%al
 4ef:	00 00                	add    %al,(%rax)
 4f1:	00 00                	add    %al,(%rax)
 4f3:	00 71 04             	add    %dh,0x4(%rcx)
 4f6:	00 00                	add    %al,(%rax)
 4f8:	00 00                	add    %al,(%rax)
 4fa:	00 00                	add    %al,(%rax)
 4fc:	03 00                	add    (%rax),%eax
 4fe:	7f 7d                	jg     57d <__abi_tag+0x2b9>
 500:	9f                   	lahf   
 501:	ac                   	lods   %ds:(%rsi),%al
 502:	04 00                	add    $0x0,%al
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	00 b6 04 00 00 00    	add    %dh,0x4(%rsi)
 50e:	00 00                	add    %al,(%rax)
 510:	00 01                	add    %al,(%rcx)
 512:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 521:	00 00                	add    %al,(%rax)
 523:	00 9d 0a 00 00 00    	add    %bl,0xa(%rbp)
 529:	00 00                	add    %al,(%rax)
 52b:	00 a3 0a 00 00 00    	add    %ah,0xa(%rbx)
 531:	00 00                	add    %al,(%rax)
 533:	00 01                	add    %al,(%rcx)
 535:	00 61 a3             	add    %ah,-0x5d(%rcx)
 538:	0a 00                	or     (%rax),%al
 53a:	00 00                	add    %al,(%rax)
 53c:	00 00                	add    %al,(%rax)
 53e:	00 33                	add    %dh,(%rbx)
 540:	15 00 00 00 00       	adc    $0x0,%eax
 545:	00 00                	add    %al,(%rax)
 547:	03 00                	add    (%rax),%eax
 549:	77 c0                	ja     50b <__abi_tag+0x247>
	...
 55b:	00 cf                	add    %cl,%bh
 55d:	04 00                	add    $0x0,%al
 55f:	00 00                	add    %al,(%rax)
 561:	00 00                	add    %al,(%rax)
 563:	00 38                	add    %bh,(%rax)
 565:	05 00 00 00 00       	add    $0x0,%eax
 56a:	00 00                	add    %al,(%rax)
 56c:	01 00                	add    %eax,(%rax)
 56e:	50                   	push   %rax
	...
 57f:	cf                   	iret   
 580:	04 00                	add    $0x0,%al
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 70 05             	add    %dh,0x5(%rax)
 589:	00 00                	add    %al,(%rax)
 58b:	00 00                	add    %al,(%rax)
 58d:	00 00                	add    %al,(%rax)
 58f:	0a 00                	or     (%rax),%al
 591:	93                   	xchg   %eax,%ebx
 592:	10 6d 93             	adc    %ch,-0x6d(%rbp)
 595:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
 59b:	70 05                	jo     5a2 <__abi_tag+0x2de>
 59d:	00 00                	add    %al,(%rax)
 59f:	00 00                	add    %al,(%rax)
 5a1:	00 00                	add    %al,(%rax)
 5a3:	77 05                	ja     5aa <__abi_tag+0x2e6>
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 00                	add    %al,(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	0d 00 61 93 08       	or     $0x8936100,%eax
 5b0:	93                   	xchg   %eax,%ebx
 5b1:	08 6d 93             	or     %ch,-0x6d(%rbp)
 5b4:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
 5ba:	77 05                	ja     5c1 <__abi_tag+0x2fd>
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	00 00                	add    %al,(%rax)
 5c2:	e5 05                	in     $0x5,%eax
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	00 00                	add    %al,(%rax)
 5ca:	0a 00                	or     (%rax),%al
 5cc:	93                   	xchg   %eax,%ebx
 5cd:	10 6d 93             	adc    %ch,-0x6d(%rbp)
 5d0:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
 5d6:	e5 05                	in     $0x5,%eax
 5d8:	00 00                	add    %al,(%rax)
 5da:	00 00                	add    %al,(%rax)
 5dc:	00 00                	add    %al,(%rax)
 5de:	f6 05 00 00 00 00 00 	testb  $0x0,0x0(%rip)        # 5e5 <__abi_tag+0x321>
 5e5:	00 0d 00 6e 93 08    	add    %cl,0x8936e00(%rip)        # 89373eb <_end+0x8932393>
 5eb:	93                   	xchg   %eax,%ebx
 5ec:	08 6d 93             	or     %ch,-0x6d(%rbp)
 5ef:	08 93 10 68 93 08    	or     %dl,0x8936810(%rbx)
	...
 605:	cf                   	iret   
 606:	04 00                	add    $0x0,%al
 608:	00 00                	add    %al,(%rax)
 60a:	00 00                	add    %al,(%rax)
 60c:	00 f6                	add    %dh,%dh
 60e:	05 00 00 00 00       	add    $0x0,%eax
 613:	00 00                	add    %al,(%rax)
 615:	01 00                	add    %eax,(%rax)
 617:	5f                   	pop    %rdi
	...
 628:	cf                   	iret   
 629:	04 00                	add    $0x0,%al
 62b:	00 00                	add    %al,(%rax)
 62d:	00 00                	add    %al,(%rax)
 62f:	00 f6                	add    %dh,%dh
 631:	05 00 00 00 00       	add    $0x0,%eax
 636:	00 00                	add    %al,(%rax)
 638:	01 00                	add    %eax,(%rax)
 63a:	53                   	push   %rbx
	...
 64b:	cf                   	iret   
 64c:	04 00                	add    $0x0,%al
 64e:	00 00                	add    %al,(%rax)
 650:	00 00                	add    %al,(%rax)
 652:	00 f6                	add    %dh,%dh
 654:	05 00 00 00 00       	add    $0x0,%eax
 659:	00 00                	add    %al,(%rax)
 65b:	01 00                	add    %eax,(%rax)
 65d:	5e                   	pop    %rsi
	...
 66e:	51                   	push   %rcx
 66f:	05 00 00 00 00       	add    $0x0,%eax
 674:	00 00                	add    %al,(%rax)
 676:	d5                   	(bad)  
 677:	05 00 00 00 00       	add    $0x0,%eax
 67c:	00 00                	add    %al,(%rax)
 67e:	03 00                	add    (%rax),%eax
 680:	7f 78                	jg     6fa <__abi_tag+0x436>
 682:	9f                   	lahf   
	...
 693:	51                   	push   %rcx
 694:	05 00 00 00 00       	add    $0x0,%eax
 699:	00 00                	add    %al,(%rax)
 69b:	5e                   	pop    %rsi
 69c:	05 00 00 00 00       	add    $0x0,%eax
 6a1:	00 00                	add    %al,(%rax)
 6a3:	03 00                	add    (%rax),%eax
 6a5:	7f 79                	jg     720 <__abi_tag+0x45c>
 6a7:	9f                   	lahf   
	...
 6b8:	f6 05 00 00 00 00 00 	testb  $0x0,0x0(%rip)        # 6bf <__abi_tag+0x3fb>
 6bf:	00 9a 06 00 00 00    	add    %bl,0x6(%rdx)
 6c5:	00 00                	add    %al,(%rax)
 6c7:	00 01                	add    %al,(%rcx)
 6c9:	00 50 00             	add    %dl,0x0(%rax)
	...
 6d8:	00 00                	add    %al,(%rax)
 6da:	00 f6                	add    %dh,%dh
 6dc:	05 00 00 00 00       	add    $0x0,%eax
 6e1:	00 00                	add    %al,(%rax)
 6e3:	4b 09 00             	rex.WXB or %rax,(%r8)
 6e6:	00 00                	add    %al,(%rax)
 6e8:	00 00                	add    %al,(%rax)
 6ea:	00 0a                	add    %cl,(%rdx)
 6ec:	00 93 10 63 93 08    	add    %dl,0x8936310(%rbx)
 6f2:	93                   	xchg   %eax,%ebx
 6f3:	50                   	push   %rax
 6f4:	62 93                	(bad)  
 6f6:	08 a3 0a 00 00 00    	or     %ah,0xa(%rbx)
 6fc:	00 00                	add    %al,(%rax)
 6fe:	00 32                	add    %dh,(%rdx)
 700:	0b 00                	or     (%rax),%eax
 702:	00 00                	add    %al,(%rax)
 704:	00 00                	add    %al,(%rax)
 706:	00 03                	add    %al,(%rbx)
 708:	00 66 93             	add    %ah,-0x6d(%rsi)
 70b:	08 00                	or     %al,(%rax)
	...
 719:	00 00                	add    %al,(%rax)
 71b:	00 f6                	add    %dh,%dh
 71d:	05 00 00 00 00       	add    $0x0,%eax
 722:	00 00                	add    %al,(%rax)
 724:	4b 09 00             	rex.WXB or %rax,(%r8)
 727:	00 00                	add    %al,(%rax)
 729:	00 00                	add    %al,(%rax)
 72b:	00 01                	add    %al,(%rcx)
 72d:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 73c:	00 00                	add    %al,(%rax)
 73e:	00 f6                	add    %dh,%dh
 740:	05 00 00 00 00       	add    $0x0,%eax
 745:	00 00                	add    %al,(%rax)
 747:	4b 09 00             	rex.WXB or %rax,(%r8)
 74a:	00 00                	add    %al,(%rax)
 74c:	00 00                	add    %al,(%rax)
 74e:	00 01                	add    %al,(%rcx)
 750:	00 53 00             	add    %dl,0x0(%rbx)
	...
 75f:	00 00                	add    %al,(%rax)
 761:	00 f6                	add    %dh,%dh
 763:	05 00 00 00 00       	add    $0x0,%eax
 768:	00 00                	add    %al,(%rax)
 76a:	4b 09 00             	rex.WXB or %rax,(%r8)
 76d:	00 00                	add    %al,(%rax)
 76f:	00 00                	add    %al,(%rax)
 771:	00 01                	add    %al,(%rcx)
 773:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 782:	00 00                	add    %al,(%rax)
 784:	00 a4 06 00 00 00 00 	add    %ah,0x0(%rsi,%rax,1)
 78b:	00 00                	add    %al,(%rax)
 78d:	b3 06                	mov    $0x6,%bl
 78f:	00 00                	add    %al,(%rax)
 791:	00 00                	add    %al,(%rax)
 793:	00 00                	add    %al,(%rax)
 795:	03 00                	add    (%rax),%eax
 797:	7f 71                	jg     80a <__abi_tag+0x546>
 799:	9f                   	lahf   
	...
 7aa:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 7ab:	06                   	(bad)  
 7ac:	00 00                	add    %al,(%rax)
 7ae:	00 00                	add    %al,(%rax)
 7b0:	00 00                	add    %al,(%rax)
 7b2:	b3 06                	mov    $0x6,%bl
 7b4:	00 00                	add    %al,(%rax)
 7b6:	00 00                	add    %al,(%rax)
 7b8:	00 00                	add    %al,(%rax)
 7ba:	03 00                	add    (%rax),%eax
 7bc:	7f 70                	jg     82e <__abi_tag+0x56a>
 7be:	9f                   	lahf   
	...
 7cf:	4b 09 00             	rex.WXB or %rax,(%r8)
 7d2:	00 00                	add    %al,(%rax)
 7d4:	00 00                	add    %al,(%rax)
 7d6:	00 5d 09             	add    %bl,0x9(%rbp)
 7d9:	00 00                	add    %al,(%rax)
 7db:	00 00                	add    %al,(%rax)
 7dd:	00 00                	add    %al,(%rax)
 7df:	01 00                	add    %eax,(%rax)
 7e1:	50                   	push   %rax
	...
 7f2:	4b 09 00             	rex.WXB or %rax,(%r8)
 7f5:	00 00                	add    %al,(%rax)
 7f7:	00 00                	add    %al,(%rax)
 7f9:	00 5d 09             	add    %bl,0x9(%rbp)
 7fc:	00 00                	add    %al,(%rax)
 7fe:	00 00                	add    %al,(%rax)
 800:	00 00                	add    %al,(%rax)
 802:	01 00                	add    %eax,(%rax)
 804:	62                   	(bad)  
	...
 815:	62                   	(bad)  
 816:	09 00                	or     %eax,(%rax)
 818:	00 00                	add    %al,(%rax)
 81a:	00 00                	add    %al,(%rax)
 81c:	00 6f 09             	add    %ch,0x9(%rdi)
 81f:	00 00                	add    %al,(%rax)
 821:	00 00                	add    %al,(%rax)
 823:	00 00                	add    %al,(%rax)
 825:	01 00                	add    %eax,(%rax)
 827:	62                   	(bad)  
 828:	6f                   	outsl  %ds:(%rsi),(%dx)
 829:	09 00                	or     %eax,(%rax)
 82b:	00 00                	add    %al,(%rax)
 82d:	00 00                	add    %al,(%rax)
 82f:	00 fb                	add    %bh,%bl
 831:	09 00                	or     %eax,(%rax)
 833:	00 00                	add    %al,(%rax)
 835:	00 00                	add    %al,(%rax)
 837:	00 03                	add    %al,(%rbx)
 839:	00 77 c0             	add    %dh,-0x40(%rdi)
 83c:	02 00                	add    (%rax),%al
	...
 84a:	00 00                	add    %al,(%rax)
 84c:	00 62 09             	add    %ah,0x9(%rdx)
 84f:	00 00                	add    %al,(%rax)
 851:	00 00                	add    %al,(%rax)
 853:	00 00                	add    %al,(%rax)
 855:	fb                   	sti    
 856:	09 00                	or     %eax,(%rax)
 858:	00 00                	add    %al,(%rax)
 85a:	00 00                	add    %al,(%rax)
 85c:	00 01                	add    %al,(%rcx)
 85e:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 86d:	00 00                	add    %al,(%rax)
 86f:	00 62 09             	add    %ah,0x9(%rdx)
 872:	00 00                	add    %al,(%rax)
 874:	00 00                	add    %al,(%rax)
 876:	00 00                	add    %al,(%rax)
 878:	fb                   	sti    
 879:	09 00                	or     %eax,(%rax)
 87b:	00 00                	add    %al,(%rax)
 87d:	00 00                	add    %al,(%rax)
 87f:	00 01                	add    %al,(%rcx)
 881:	00 53 00             	add    %dl,0x0(%rbx)
	...
 890:	00 00                	add    %al,(%rax)
 892:	00 62 09             	add    %ah,0x9(%rdx)
 895:	00 00                	add    %al,(%rax)
 897:	00 00                	add    %al,(%rax)
 899:	00 00                	add    %al,(%rax)
 89b:	fb                   	sti    
 89c:	09 00                	or     %eax,(%rax)
 89e:	00 00                	add    %al,(%rax)
 8a0:	00 00                	add    %al,(%rax)
 8a2:	00 01                	add    %al,(%rcx)
 8a4:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 8b3:	00 00                	add    %al,(%rax)
 8b5:	00 77 09             	add    %dh,0x9(%rdi)
 8b8:	00 00                	add    %al,(%rax)
 8ba:	00 00                	add    %al,(%rax)
 8bc:	00 00                	add    %al,(%rax)
 8be:	9d                   	popfq  
 8bf:	09 00                	or     %eax,(%rax)
 8c1:	00 00                	add    %al,(%rax)
 8c3:	00 00                	add    %al,(%rax)
 8c5:	00 01                	add    %al,(%rcx)
 8c7:	00 50 00             	add    %dl,0x0(%rax)
	...
 8d6:	00 00                	add    %al,(%rax)
 8d8:	00 9d 09 00 00 00    	add    %bl,0x9(%rbp)
 8de:	00 00                	add    %al,(%rax)
 8e0:	00 ab 09 00 00 00    	add    %ch,0x9(%rbx)
 8e6:	00 00                	add    %al,(%rax)
 8e8:	00 02                	add    %al,(%rdx)
 8ea:	00 30                	add    %dh,(%rax)
 8ec:	9f                   	lahf   
 8ed:	ab                   	stos   %eax,%es:(%rdi)
 8ee:	09 00                	or     %eax,(%rax)
 8f0:	00 00                	add    %al,(%rax)
 8f2:	00 00                	add    %al,(%rax)
 8f4:	00 c8                	add    %cl,%al
 8f6:	09 00                	or     %eax,(%rax)
 8f8:	00 00                	add    %al,(%rax)
 8fa:	00 00                	add    %al,(%rax)
 8fc:	00 01                	add    %al,(%rcx)
 8fe:	00 52 00             	add    %dl,0x0(%rdx)
	...
 90d:	00 00                	add    %al,(%rax)
 90f:	00 a7 09 00 00 00    	add    %ah,0x9(%rdi)
 915:	00 00                	add    %al,(%rax)
 917:	00 fb                	add    %bh,%bl
 919:	09 00                	or     %eax,(%rax)
 91b:	00 00                	add    %al,(%rax)
 91d:	00 00                	add    %al,(%rax)
 91f:	00 01                	add    %al,(%rcx)
 921:	00 50 00             	add    %dl,0x0(%rax)
	...
 930:	00 00                	add    %al,(%rax)
 932:	00 b8 0b 00 00 00    	add    %bh,0xb(%rax)
 938:	00 00                	add    %al,(%rax)
 93a:	00 83 1c 00 00 00    	add    %al,0x1c(%rbx)
 940:	00 00                	add    %al,(%rax)
 942:	00 01                	add    %al,(%rcx)
 944:	00 53 00             	add    %dl,0x0(%rbx)
	...
 953:	00 00                	add    %al,(%rax)
 955:	00 ca                	add    %cl,%dl
 957:	0b 00                	or     (%rax),%eax
 959:	00 00                	add    %al,(%rax)
 95b:	00 00                	add    %al,(%rax)
 95d:	00 8c 1c 00 00 00 00 	add    %cl,0x0(%rsp,%rbx,1)
 964:	00 00                	add    %al,(%rax)
 966:	01 00                	add    %eax,(%rax)
 968:	56                   	push   %rsi
	...
 979:	52                   	push   %rdx
 97a:	0d 00 00 00 00       	or     $0x0,%eax
 97f:	00 00                	add    %al,(%rax)
 981:	ed                   	in     (%dx),%eax
 982:	18 00                	sbb    %al,(%rax)
 984:	00 00                	add    %al,(%rax)
 986:	00 00                	add    %al,(%rax)
 988:	00 03                	add    %al,(%rbx)
 98a:	00 10                	add    %dl,(%rax)
 98c:	62                   	(bad)  
 98d:	9f                   	lahf   
 98e:	ed                   	in     (%dx),%eax
 98f:	18 00                	sbb    %al,(%rax)
 991:	00 00                	add    %al,(%rax)
 993:	00 00                	add    %al,(%rax)
 995:	00 8d 1c 00 00 00    	add    %cl,0x1c(%rbp)
 99b:	00 00                	add    %al,(%rax)
 99d:	00 03                	add    %al,(%rbx)
 99f:	00 10                	add    %dl,(%rax)
 9a1:	64 9f                	fs lahf 
	...
 9b3:	41 0f 00 00          	sldt   (%r8)
 9b7:	00 00                	add    %al,(%rax)
 9b9:	00 00                	add    %al,(%rax)
 9bb:	8c 1c 00             	mov    %ds,(%rax,%rax,1)
 9be:	00 00                	add    %al,(%rax)
 9c0:	00 00                	add    %al,(%rax)
 9c2:	00 01                	add    %al,(%rcx)
 9c4:	00 56 00             	add    %dl,0x0(%rsi)
	...
 9d3:	00 00                	add    %al,(%rax)
 9d5:	00 41 0f             	add    %al,0xf(%rcx)
 9d8:	00 00                	add    %al,(%rax)
 9da:	00 00                	add    %al,(%rax)
 9dc:	00 00                	add    %al,(%rax)
 9de:	83 1c 00 00          	sbbl   $0x0,(%rax,%rax,1)
 9e2:	00 00                	add    %al,(%rax)
 9e4:	00 00                	add    %al,(%rax)
 9e6:	01 00                	add    %eax,(%rax)
 9e8:	53                   	push   %rbx
	...
 9f9:	4b 0f 00 00          	rex.WXB sldt (%r8)
 9fd:	00 00                	add    %al,(%rax)
 9ff:	00 00                	add    %al,(%rax)
 a01:	65 0f 00 00          	sldt   %gs:(%rax)
 a05:	00 00                	add    %al,(%rax)
 a07:	00 00                	add    %al,(%rax)
 a09:	02 00                	add    (%rax),%al
 a0b:	38 9f 65 0f 00 00    	cmp    %bl,0xf65(%rdi)
 a11:	00 00                	add    %al,(%rax)
 a13:	00 00                	add    %al,(%rax)
 a15:	69 0f 00 00 00 00    	imul   $0x0,(%rdi),%ecx
 a1b:	00 00                	add    %al,(%rax)
 a1d:	02 00                	add    (%rax),%al
 a1f:	48 9f                	rex.W lahf 
 a21:	69 0f 00 00 00 00    	imul   $0x0,(%rdi),%ecx
 a27:	00 00                	add    %al,(%rax)
 a29:	81 0f 00 00 00 00    	orl    $0x0,(%rdi)
 a2f:	00 00                	add    %al,(%rax)
 a31:	02 00                	add    (%rax),%al
 a33:	40 9f                	rex lahf 
 a35:	81 0f 00 00 00 00    	orl    $0x0,(%rdi)
 a3b:	00 00                	add    %al,(%rax)
 a3d:	91                   	xchg   %eax,%ecx
 a3e:	0f 00 00             	sldt   (%rax)
 a41:	00 00                	add    %al,(%rax)
 a43:	00 00                	add    %al,(%rax)
 a45:	03 00                	add    (%rax),%eax
 a47:	10 20                	adc    %ah,(%rax)
 a49:	9f                   	lahf   
 a4a:	91                   	xchg   %eax,%ecx
 a4b:	0f 00 00             	sldt   (%rax)
 a4e:	00 00                	add    %al,(%rax)
 a50:	00 00                	add    %al,(%rax)
 a52:	ab                   	stos   %eax,%es:(%rdi)
 a53:	0f 00 00             	sldt   (%rax)
 a56:	00 00                	add    %al,(%rax)
 a58:	00 00                	add    %al,(%rax)
 a5a:	03 00                	add    (%rax),%eax
 a5c:	10 28                	adc    %ch,(%rax)
 a5e:	9f                   	lahf   
 a5f:	ab                   	stos   %eax,%es:(%rdi)
 a60:	0f 00 00             	sldt   (%rax)
 a63:	00 00                	add    %al,(%rax)
 a65:	00 00                	add    %al,(%rax)
 a67:	c3                   	retq   
 a68:	0f 00 00             	sldt   (%rax)
 a6b:	00 00                	add    %al,(%rax)
 a6d:	00 00                	add    %al,(%rax)
 a6f:	03 00                	add    (%rax),%eax
 a71:	10 30                	adc    %dh,(%rax)
 a73:	9f                   	lahf   
 a74:	c3                   	retq   
 a75:	0f 00 00             	sldt   (%rax)
 a78:	00 00                	add    %al,(%rax)
 a7a:	00 00                	add    %al,(%rax)
 a7c:	d3 0f                	rorl   %cl,(%rdi)
 a7e:	00 00                	add    %al,(%rax)
 a80:	00 00                	add    %al,(%rax)
 a82:	00 00                	add    %al,(%rax)
 a84:	03 00                	add    (%rax),%eax
 a86:	10 38                	adc    %bh,(%rax)
 a88:	9f                   	lahf   
 a89:	d3 0f                	rorl   %cl,(%rdi)
 a8b:	00 00                	add    %al,(%rax)
 a8d:	00 00                	add    %al,(%rax)
 a8f:	00 00                	add    %al,(%rax)
 a91:	f0 0f 00 00          	lock sldt (%rax)
 a95:	00 00                	add    %al,(%rax)
 a97:	00 00                	add    %al,(%rax)
 a99:	03 00                	add    (%rax),%eax
 a9b:	10 40 9f             	adc    %al,-0x61(%rax)
 a9e:	f0 0f 00 00          	lock sldt (%rax)
 aa2:	00 00                	add    %al,(%rax)
 aa4:	00 00                	add    %al,(%rax)
 aa6:	0a 10                	or     (%rax),%dl
 aa8:	00 00                	add    %al,(%rax)
 aaa:	00 00                	add    %al,(%rax)
 aac:	00 00                	add    %al,(%rax)
 aae:	03 00                	add    (%rax),%eax
 ab0:	10 48 9f             	adc    %cl,-0x61(%rax)
 ab3:	0a 10                	or     (%rax),%dl
 ab5:	00 00                	add    %al,(%rax)
 ab7:	00 00                	add    %al,(%rax)
 ab9:	00 00                	add    %al,(%rax)
 abb:	2e 10 00             	adc    %al,%cs:(%rax)
 abe:	00 00                	add    %al,(%rax)
 ac0:	00 00                	add    %al,(%rax)
 ac2:	00 03                	add    %al,(%rbx)
 ac4:	00 10                	add    %dl,(%rax)
 ac6:	50                   	push   %rax
 ac7:	9f                   	lahf   
 ac8:	2e 10 00             	adc    %al,%cs:(%rax)
 acb:	00 00                	add    %al,(%rax)
 acd:	00 00                	add    %al,(%rax)
 acf:	00 38                	add    %bh,(%rax)
 ad1:	10 00                	adc    %al,(%rax)
 ad3:	00 00                	add    %al,(%rax)
 ad5:	00 00                	add    %al,(%rax)
 ad7:	00 03                	add    %al,(%rbx)
 ad9:	00 10                	add    %dl,(%rax)
 adb:	60                   	(bad)  
 adc:	9f                   	lahf   
 add:	38 10                	cmp    %dl,(%rax)
 adf:	00 00                	add    %al,(%rax)
 ae1:	00 00                	add    %al,(%rax)
 ae3:	00 00                	add    %al,(%rax)
 ae5:	50                   	push   %rax
 ae6:	10 00                	adc    %al,(%rax)
 ae8:	00 00                	add    %al,(%rax)
 aea:	00 00                	add    %al,(%rax)
 aec:	00 03                	add    %al,(%rbx)
 aee:	00 10                	add    %dl,(%rax)
 af0:	58                   	pop    %rax
 af1:	9f                   	lahf   
 af2:	50                   	push   %rax
 af3:	10 00                	adc    %al,(%rax)
 af5:	00 00                	add    %al,(%rax)
 af7:	00 00                	add    %al,(%rax)
 af9:	00 f3                	add    %dh,%bl
 afb:	15 00 00 00 00       	adc    $0x0,%eax
 b00:	00 00                	add    %al,(%rax)
 b02:	03 00                	add    (%rax),%eax
 b04:	10 68 9f             	adc    %ch,-0x61(%rax)
 b07:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 b0d:	00 00                	add    %al,(%rax)
 b0f:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 b12:	00 00                	add    %al,(%rax)
 b14:	00 00                	add    %al,(%rax)
 b16:	00 02                	add    %al,(%rdx)
 b18:	00 30                	add    %dh,(%rax)
 b1a:	9f                   	lahf   
	...
 b2b:	59                   	pop    %rcx
 b2c:	15 00 00 00 00       	adc    $0x0,%eax
 b31:	00 00                	add    %al,(%rax)
 b33:	63 15 00 00 00 00    	movsxd 0x0(%rip),%edx        # b39 <__abi_tag+0x875>
 b39:	00 00                	add    %al,(%rax)
 b3b:	40 00 30             	add    %sil,(%rax)
 b3e:	9f                   	lahf   
 b3f:	93                   	xchg   %eax,%ebx
 b40:	08 30                	or     %dh,(%rax)
 b42:	9f                   	lahf   
 b43:	93                   	xchg   %eax,%ebx
 b44:	08 30                	or     %dh,(%rax)
 b46:	9f                   	lahf   
 b47:	93                   	xchg   %eax,%ebx
 b48:	08 30                	or     %dh,(%rax)
 b4a:	9f                   	lahf   
 b4b:	93                   	xchg   %eax,%ebx
 b4c:	08 30                	or     %dh,(%rax)
 b4e:	9f                   	lahf   
 b4f:	93                   	xchg   %eax,%ebx
 b50:	08 30                	or     %dh,(%rax)
 b52:	9f                   	lahf   
 b53:	93                   	xchg   %eax,%ebx
 b54:	08 30                	or     %dh,(%rax)
 b56:	9f                   	lahf   
 b57:	93                   	xchg   %eax,%ebx
 b58:	08 30                	or     %dh,(%rax)
 b5a:	9f                   	lahf   
 b5b:	93                   	xchg   %eax,%ebx
 b5c:	08 30                	or     %dh,(%rax)
 b5e:	9f                   	lahf   
 b5f:	93                   	xchg   %eax,%ebx
 b60:	08 30                	or     %dh,(%rax)
 b62:	9f                   	lahf   
 b63:	93                   	xchg   %eax,%ebx
 b64:	08 30                	or     %dh,(%rax)
 b66:	9f                   	lahf   
 b67:	93                   	xchg   %eax,%ebx
 b68:	08 30                	or     %dh,(%rax)
 b6a:	9f                   	lahf   
 b6b:	93                   	xchg   %eax,%ebx
 b6c:	08 30                	or     %dh,(%rax)
 b6e:	9f                   	lahf   
 b6f:	93                   	xchg   %eax,%ebx
 b70:	08 30                	or     %dh,(%rax)
 b72:	9f                   	lahf   
 b73:	93                   	xchg   %eax,%ebx
 b74:	08 30                	or     %dh,(%rax)
 b76:	9f                   	lahf   
 b77:	93                   	xchg   %eax,%ebx
 b78:	08 30                	or     %dh,(%rax)
 b7a:	9f                   	lahf   
 b7b:	93                   	xchg   %eax,%ebx
 b7c:	08 63 15             	or     %ah,0x15(%rbx)
 b7f:	00 00                	add    %al,(%rax)
 b81:	00 00                	add    %al,(%rax)
 b83:	00 00                	add    %al,(%rax)
 b85:	6d                   	insl   (%dx),%es:(%rdi)
 b86:	15 00 00 00 00       	adc    $0x0,%eax
 b8b:	00 00                	add    %al,(%rax)
 b8d:	3d 00 30 9f 93       	cmp    $0x939f3000,%eax
 b92:	08 30                	or     %dh,(%rax)
 b94:	9f                   	lahf   
 b95:	93                   	xchg   %eax,%ebx
 b96:	08 61 93             	or     %ah,-0x6d(%rcx)
 b99:	08 93 08 30 9f 93    	or     %dl,-0x6c60cff8(%rbx)
 b9f:	08 30                	or     %dh,(%rax)
 ba1:	9f                   	lahf   
 ba2:	93                   	xchg   %eax,%ebx
 ba3:	08 30                	or     %dh,(%rax)
 ba5:	9f                   	lahf   
 ba6:	93                   	xchg   %eax,%ebx
 ba7:	08 30                	or     %dh,(%rax)
 ba9:	9f                   	lahf   
 baa:	93                   	xchg   %eax,%ebx
 bab:	08 30                	or     %dh,(%rax)
 bad:	9f                   	lahf   
 bae:	93                   	xchg   %eax,%ebx
 baf:	08 30                	or     %dh,(%rax)
 bb1:	9f                   	lahf   
 bb2:	93                   	xchg   %eax,%ebx
 bb3:	08 30                	or     %dh,(%rax)
 bb5:	9f                   	lahf   
 bb6:	93                   	xchg   %eax,%ebx
 bb7:	08 30                	or     %dh,(%rax)
 bb9:	9f                   	lahf   
 bba:	93                   	xchg   %eax,%ebx
 bbb:	08 30                	or     %dh,(%rax)
 bbd:	9f                   	lahf   
 bbe:	93                   	xchg   %eax,%ebx
 bbf:	08 30                	or     %dh,(%rax)
 bc1:	9f                   	lahf   
 bc2:	93                   	xchg   %eax,%ebx
 bc3:	08 30                	or     %dh,(%rax)
 bc5:	9f                   	lahf   
 bc6:	93                   	xchg   %eax,%ebx
 bc7:	08 30                	or     %dh,(%rax)
 bc9:	9f                   	lahf   
 bca:	93                   	xchg   %eax,%ebx
 bcb:	08 6d 15             	or     %ch,0x15(%rbp)
 bce:	00 00                	add    %al,(%rax)
 bd0:	00 00                	add    %al,(%rax)
 bd2:	00 00                	add    %al,(%rax)
 bd4:	91                   	xchg   %eax,%ecx
 bd5:	15 00 00 00 00       	adc    $0x0,%eax
 bda:	00 00                	add    %al,(%rax)
 bdc:	2d 00 30 9f 93       	sub    $0x939f3000,%eax
 be1:	08 30                	or     %dh,(%rax)
 be3:	9f                   	lahf   
 be4:	93                   	xchg   %eax,%ebx
 be5:	08 61 93             	or     %ah,-0x6d(%rcx)
 be8:	08 93 28 30 9f 93    	or     %dl,-0x6c60cfd8(%rbx)
 bee:	08 30                	or     %dh,(%rax)
 bf0:	9f                   	lahf   
 bf1:	93                   	xchg   %eax,%ebx
 bf2:	08 30                	or     %dh,(%rax)
 bf4:	9f                   	lahf   
 bf5:	93                   	xchg   %eax,%ebx
 bf6:	08 30                	or     %dh,(%rax)
 bf8:	9f                   	lahf   
 bf9:	93                   	xchg   %eax,%ebx
 bfa:	08 30                	or     %dh,(%rax)
 bfc:	9f                   	lahf   
 bfd:	93                   	xchg   %eax,%ebx
 bfe:	08 30                	or     %dh,(%rax)
 c00:	9f                   	lahf   
 c01:	93                   	xchg   %eax,%ebx
 c02:	08 30                	or     %dh,(%rax)
 c04:	9f                   	lahf   
 c05:	93                   	xchg   %eax,%ebx
 c06:	08 30                	or     %dh,(%rax)
 c08:	9f                   	lahf   
 c09:	93                   	xchg   %eax,%ebx
 c0a:	08 91 15 00 00 00    	or     %dl,0x15(%rcx)
 c10:	00 00                	add    %al,(%rax)
 c12:	00 9f 15 00 00 00    	add    %bl,0x15(%rdi)
 c18:	00 00                	add    %al,(%rax)
 c1a:	00 2d 00 30 9f 93    	add    %ch,-0x6c60d000(%rip)        # ffffffff939f3c20 <_end+0xffffffff939eebc8>
 c20:	08 30                	or     %dh,(%rax)
 c22:	9f                   	lahf   
 c23:	93                   	xchg   %eax,%ebx
 c24:	08 65 93             	or     %ah,-0x6d(%rbp)
 c27:	08 93 28 30 9f 93    	or     %dl,-0x6c60cfd8(%rbx)
 c2d:	08 30                	or     %dh,(%rax)
 c2f:	9f                   	lahf   
 c30:	93                   	xchg   %eax,%ebx
 c31:	08 30                	or     %dh,(%rax)
 c33:	9f                   	lahf   
 c34:	93                   	xchg   %eax,%ebx
 c35:	08 30                	or     %dh,(%rax)
 c37:	9f                   	lahf   
 c38:	93                   	xchg   %eax,%ebx
 c39:	08 30                	or     %dh,(%rax)
 c3b:	9f                   	lahf   
 c3c:	93                   	xchg   %eax,%ebx
 c3d:	08 30                	or     %dh,(%rax)
 c3f:	9f                   	lahf   
 c40:	93                   	xchg   %eax,%ebx
 c41:	08 30                	or     %dh,(%rax)
 c43:	9f                   	lahf   
 c44:	93                   	xchg   %eax,%ebx
 c45:	08 30                	or     %dh,(%rax)
 c47:	9f                   	lahf   
 c48:	93                   	xchg   %eax,%ebx
 c49:	08 9f 15 00 00 00    	or     %bl,0x15(%rdi)
 c4f:	00 00                	add    %al,(%rax)
 c51:	00 bd 15 00 00 00    	add    %bh,0x15(%rbp)
 c57:	00 00                	add    %al,(%rax)
 c59:	00 1d 00 30 9f 93    	add    %bl,-0x6c60d000(%rip)        # ffffffff939f3c5f <_end+0xffffffff939eec07>
 c5f:	08 30                	or     %dh,(%rax)
 c61:	9f                   	lahf   
 c62:	93                   	xchg   %eax,%ebx
 c63:	08 65 93             	or     %ah,-0x6d(%rbp)
 c66:	08 93 48 30 9f 93    	or     %dl,-0x6c60cfb8(%rbx)
 c6c:	08 30                	or     %dh,(%rax)
 c6e:	9f                   	lahf   
 c6f:	93                   	xchg   %eax,%ebx
 c70:	08 30                	or     %dh,(%rax)
 c72:	9f                   	lahf   
 c73:	93                   	xchg   %eax,%ebx
 c74:	08 30                	or     %dh,(%rax)
 c76:	9f                   	lahf   
 c77:	93                   	xchg   %eax,%ebx
 c78:	08 bd 15 00 00 00    	or     %bh,0x15(%rbp)
 c7e:	00 00                	add    %al,(%rax)
 c80:	00 c7                	add    %al,%bh
 c82:	15 00 00 00 00       	adc    $0x0,%eax
 c87:	00 00                	add    %al,(%rax)
 c89:	19 00                	sbb    %eax,(%rax)
 c8b:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 c91:	93                   	xchg   %eax,%ebx
 c92:	08 65 93             	or     %ah,-0x6d(%rbp)
 c95:	08 93 50 30 9f 93    	or     %dl,-0x6c60cfb0(%rbx)
 c9b:	08 30                	or     %dh,(%rax)
 c9d:	9f                   	lahf   
 c9e:	93                   	xchg   %eax,%ebx
 c9f:	08 30                	or     %dh,(%rax)
 ca1:	9f                   	lahf   
 ca2:	93                   	xchg   %eax,%ebx
 ca3:	08 c7                	or     %al,%bh
 ca5:	15 00 00 00 00       	adc    $0x0,%eax
 caa:	00 00                	add    %al,(%rax)
 cac:	ef                   	out    %eax,(%dx)
 cad:	15 00 00 00 00       	adc    $0x0,%eax
 cb2:	00 00                	add    %al,(%rax)
 cb4:	05 00 93 68 62       	add    $0x62689300,%eax
 cb9:	93                   	xchg   %eax,%ebx
 cba:	08 ef                	or     %ch,%bh
 cbc:	15 00 00 00 00       	adc    $0x0,%eax
 cc1:	00 00                	add    %al,(%rax)
 cc3:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 cc9:	00 00                	add    %al,(%rax)
 ccb:	05 00 93 68 6a       	add    $0x6a689300,%eax
 cd0:	93                   	xchg   %eax,%ebx
 cd1:	08 f3                	or     %dh,%bl
 cd3:	15 00 00 00 00       	adc    $0x0,%eax
 cd8:	00 00                	add    %al,(%rax)
 cda:	74 16                	je     cf2 <__abi_tag+0xa2e>
 cdc:	00 00                	add    %al,(%rax)
 cde:	00 00                	add    %al,(%rax)
 ce0:	00 00                	add    %al,(%rax)
 ce2:	0a 00                	or     (%rax),%al
 ce4:	93                   	xchg   %eax,%ebx
 ce5:	10 65 93             	adc    %ah,-0x6d(%rbp)
 ce8:	08 93 50 6a 93 08    	or     %dl,0x8936a50(%rbx)
 cee:	74 16                	je     d06 <__abi_tag+0xa42>
 cf0:	00 00                	add    %al,(%rax)
 cf2:	00 00                	add    %al,(%rax)
 cf4:	00 00                	add    %al,(%rax)
 cf6:	14 17                	adc    $0x17,%al
 cf8:	00 00                	add    %al,(%rax)
 cfa:	00 00                	add    %al,(%rax)
 cfc:	00 00                	add    %al,(%rax)
 cfe:	05 00 93 68 6a       	add    $0x6a689300,%eax
 d03:	93                   	xchg   %eax,%ebx
 d04:	08 cf                	or     %cl,%bh
 d06:	1a 00                	sbb    (%rax),%al
 d08:	00 00                	add    %al,(%rax)
 d0a:	00 00                	add    %al,(%rax)
 d0c:	00 8b 1b 00 00 00    	add    %cl,0x1b(%rbx)
 d12:	00 00                	add    %al,(%rax)
 d14:	00 06                	add    %al,(%rsi)
 d16:	00 93 68 30 9f 93    	add    %dl,-0x6c60cf98(%rbx)
 d1c:	08 8b 1b 00 00 00    	or     %cl,0x1b(%rbx)
 d22:	00 00                	add    %al,(%rax)
 d24:	00 f9                	add    %bh,%cl
 d26:	1b 00                	sbb    (%rax),%eax
 d28:	00 00                	add    %al,(%rax)
 d2a:	00 00                	add    %al,(%rax)
 d2c:	00 06                	add    %al,(%rsi)
 d2e:	00 93 10 30 9f 93    	add    %dl,-0x6c60cff0(%rbx)
 d34:	08 f9                	or     %bh,%cl
 d36:	1b 00                	sbb    (%rax),%eax
 d38:	00 00                	add    %al,(%rax)
 d3a:	00 00                	add    %al,(%rax)
 d3c:	00 17                	add    %dl,(%rdi)
 d3e:	1c 00                	sbb    $0x0,%al
 d40:	00 00                	add    %al,(%rax)
 d42:	00 00                	add    %al,(%rax)
 d44:	00 09                	add    %cl,(%rcx)
 d46:	00 65 93             	add    %ah,-0x6d(%rbp)
 d49:	08 93 08 30 9f 93    	or     %dl,-0x6c60cff8(%rbx)
 d4f:	08 17                	or     %dl,(%rdi)
 d51:	1c 00                	sbb    $0x0,%al
 d53:	00 00                	add    %al,(%rax)
 d55:	00 00                	add    %al,(%rax)
 d57:	00 8d 1c 00 00 00    	add    %cl,0x1c(%rbp)
 d5d:	00 00                	add    %al,(%rax)
 d5f:	00 06                	add    %al,(%rsi)
 d61:	00 93 10 30 9f 93    	add    %dl,-0x6c60cff0(%rbx)
 d67:	08 00                	or     %al,(%rax)
	...
 d75:	00 00                	add    %al,(%rax)
 d77:	00 59 15             	add    %bl,0x15(%rcx)
 d7a:	00 00                	add    %al,(%rax)
 d7c:	00 00                	add    %al,(%rax)
 d7e:	00 00                	add    %al,(%rax)
 d80:	c7                   	(bad)  
 d81:	15 00 00 00 00       	adc    $0x0,%eax
 d86:	00 00                	add    %al,(%rax)
 d88:	02 00                	add    (%rax),%al
 d8a:	30 9f c7 15 00 00    	xor    %bl,0x15c7(%rdi)
 d90:	00 00                	add    %al,(%rax)
 d92:	00 00                	add    %al,(%rax)
 d94:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 d9a:	00 00                	add    %al,(%rax)
 d9c:	02 00                	add    (%rax),%al
 d9e:	40 9f                	rex lahf 
 da0:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 da6:	00 00                	add    %al,(%rax)
 da8:	14 17                	adc    $0x17,%al
 daa:	00 00                	add    %al,(%rax)
 dac:	00 00                	add    %al,(%rax)
 dae:	00 00                	add    %al,(%rax)
 db0:	03 00                	add    (%rax),%eax
 db2:	10 20                	adc    %ah,(%rax)
 db4:	9f                   	lahf   
 db5:	14 17                	adc    $0x17,%al
 db7:	00 00                	add    %al,(%rax)
 db9:	00 00                	add    %al,(%rax)
 dbb:	00 00                	add    %al,(%rax)
 dbd:	3f                   	(bad)  
 dbe:	17                   	(bad)  
 dbf:	00 00                	add    %al,(%rax)
 dc1:	00 00                	add    %al,(%rax)
 dc3:	00 00                	add    %al,(%rax)
 dc5:	03 00                	add    (%rax),%eax
 dc7:	10 30                	adc    %dh,(%rax)
 dc9:	9f                   	lahf   
 dca:	3f                   	(bad)  
 dcb:	17                   	(bad)  
 dcc:	00 00                	add    %al,(%rax)
 dce:	00 00                	add    %al,(%rax)
 dd0:	00 00                	add    %al,(%rax)
 dd2:	d1 17                	rcll   (%rdi)
 dd4:	00 00                	add    %al,(%rax)
 dd6:	00 00                	add    %al,(%rax)
 dd8:	00 00                	add    %al,(%rax)
 dda:	03 00                	add    (%rax),%eax
 ddc:	10 40 9f             	adc    %al,-0x61(%rax)
 ddf:	d1 17                	rcll   (%rdi)
 de1:	00 00                	add    %al,(%rax)
 de3:	00 00                	add    %al,(%rax)
 de5:	00 00                	add    %al,(%rax)
 de7:	05 18 00 00 00       	add    $0x18,%eax
 dec:	00 00                	add    %al,(%rax)
 dee:	00 03                	add    %al,(%rbx)
 df0:	00 10                	add    %dl,(%rax)
 df2:	50                   	push   %rax
 df3:	9f                   	lahf   
 df4:	05 18 00 00 00       	add    $0x18,%eax
 df9:	00 00                	add    %al,(%rax)
 dfb:	00 8d 1c 00 00 00    	add    %cl,0x1c(%rbp)
 e01:	00 00                	add    %al,(%rax)
 e03:	00 03                	add    %al,(%rbx)
 e05:	00 10                	add    %dl,(%rax)
 e07:	60                   	(bad)  
 e08:	9f                   	lahf   
	...
 e19:	59                   	pop    %rcx
 e1a:	15 00 00 00 00       	adc    $0x0,%eax
 e1f:	00 00                	add    %al,(%rax)
 e21:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 e24:	00 00                	add    %al,(%rax)
 e26:	00 00                	add    %al,(%rax)
 e28:	00 02                	add    %al,(%rdx)
 e2a:	00 34 9f             	add    %dh,(%rdi,%rbx,4)
	...
 e3d:	59                   	pop    %rcx
 e3e:	15 00 00 00 00       	adc    $0x0,%eax
 e43:	00 00                	add    %al,(%rax)
 e45:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 e48:	00 00                	add    %al,(%rax)
 e4a:	00 00                	add    %al,(%rax)
 e4c:	00 03                	add    %al,(%rbx)
 e4e:	00 10                	add    %dl,(%rax)
 e50:	64 9f                	fs lahf 
	...
 e62:	59                   	pop    %rcx
 e63:	15 00 00 00 00       	adc    $0x0,%eax
 e68:	00 00                	add    %al,(%rax)
 e6a:	8c 1c 00             	mov    %ds,(%rax,%rax,1)
 e6d:	00 00                	add    %al,(%rax)
 e6f:	00 00                	add    %al,(%rax)
 e71:	00 01                	add    %al,(%rcx)
 e73:	00 56 00             	add    %dl,0x0(%rsi)
	...
 e82:	00 00                	add    %al,(%rax)
 e84:	00 59 15             	add    %bl,0x15(%rcx)
 e87:	00 00                	add    %al,(%rax)
 e89:	00 00                	add    %al,(%rax)
 e8b:	00 00                	add    %al,(%rax)
 e8d:	83 1c 00 00          	sbbl   $0x0,(%rax,%rax,1)
 e91:	00 00                	add    %al,(%rax)
 e93:	00 00                	add    %al,(%rax)
 e95:	01 00                	add    %eax,(%rax)
 e97:	53                   	push   %rbx
	...
 ea8:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 eae:	00 00                	add    %al,(%rax)
 eb0:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 eb3:	00 00                	add    %al,(%rax)
 eb5:	00 00                	add    %al,(%rax)
 eb7:	00 02                	add    %al,(%rdx)
 eb9:	00 34 9f             	add    %dh,(%rdi,%rbx,4)
	...
 ecc:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 ed2:	00 00                	add    %al,(%rax)
 ed4:	8d 1c 00             	lea    (%rax,%rax,1),%ebx
 ed7:	00 00                	add    %al,(%rax)
 ed9:	00 00                	add    %al,(%rax)
 edb:	00 03                	add    %al,(%rbx)
 edd:	00 10                	add    %dl,(%rax)
 edf:	64 9f                	fs lahf 
	...
 ef1:	4e 19 00             	rex.WRX sbb %r8,(%rax)
 ef4:	00 00                	add    %al,(%rax)
 ef6:	00 00                	add    %al,(%rax)
 ef8:	00 8d 1c 00 00 00    	add    %cl,0x1c(%rbp)
 efe:	00 00                	add    %al,(%rax)
 f00:	00 03                	add    %al,(%rbx)
 f02:	00 10                	add    %dl,(%rax)
 f04:	64 9f                	fs lahf 
	...

Déassemblage de la section .debug_ranges :

0000000000000000 <.debug_ranges>:
   0:	80 10 00             	adcb   $0x0,(%rax)
   3:	00 00                	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 97 10 00 00 00    	add    %dl,0x10(%rdi)
	...
  25:	00 00                	add    %al,(%rax)
  27:	00 2d 00 00 00 00    	add    %ch,0x0(%rip)        # 2d <__abi_tag-0x297>
  2d:	00 00                	add    %al,(%rax)
  2f:	00 0e                	add    %cl,(%rsi)
  31:	04 00                	add    $0x0,%al
  33:	00 00                	add    %al,(%rax)
  35:	00 00                	add    %al,(%rax)
  37:	00 18                	add    %bl,(%rax)
  39:	04 00                	add    $0x0,%al
	...
  4f:	00 55 00             	add    %dl,0x0(%rbp)
  52:	00 00                	add    %al,(%rax)
  54:	00 00                	add    %al,(%rax)
  56:	00 00                	add    %al,(%rax)
  58:	84 02                	test   %al,(%rdx)
  5a:	00 00                	add    %al,(%rax)
  5c:	00 00                	add    %al,(%rax)
  5e:	00 00                	add    %al,(%rax)
  60:	30 04 00             	xor    %al,(%rax,%rax,1)
  63:	00 00                	add    %al,(%rax)
  65:	00 00                	add    %al,(%rax)
  67:	00 33                	add    %dh,(%rbx)
  69:	04 00                	add    $0x0,%al
  6b:	00 00                	add    %al,(%rax)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 f2                	add    %dh,%dl
  71:	09 00                	or     %eax,(%rax)
  73:	00 00                	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 f5                	add    %dh,%ch
  79:	09 00                	or     %eax,(%rax)
	...
  8f:	00 55 00             	add    %dl,0x0(%rbp)
  92:	00 00                	add    %al,(%rax)
  94:	00 00                	add    %al,(%rax)
  96:	00 00                	add    %al,(%rax)
  98:	84 02                	test   %al,(%rdx)
  9a:	00 00                	add    %al,(%rax)
  9c:	00 00                	add    %al,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	30 04 00             	xor    %al,(%rax,%rax,1)
  a3:	00 00                	add    %al,(%rax)
  a5:	00 00                	add    %al,(%rax)
  a7:	00 33                	add    %dh,(%rbx)
  a9:	04 00                	add    $0x0,%al
  ab:	00 00                	add    %al,(%rax)
  ad:	00 00                	add    %al,(%rax)
  af:	00 f2                	add    %dh,%dl
  b1:	09 00                	or     %eax,(%rax)
  b3:	00 00                	add    %al,(%rax)
  b5:	00 00                	add    %al,(%rax)
  b7:	00 f5                	add    %dh,%ch
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
 137:	00 30                	add    %dh,(%rax)
 139:	04 00                	add    $0x0,%al
 13b:	00 00                	add    %al,(%rax)
 13d:	00 00                	add    %al,(%rax)
 13f:	00 62 09             	add    %ah,0x9(%rdx)
 142:	00 00                	add    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	00 00                	add    %al,(%rax)
 148:	f2 09 00             	repnz or %eax,(%rax)
	...
 15f:	00 33                	add    %dh,(%rbx)
 161:	04 00                	add    $0x0,%al
 163:	00 00                	add    %al,(%rax)
 165:	00 00                	add    %al,(%rax)
 167:	00 b6 04 00 00 00    	add    %dh,0x4(%rsi)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 f5                	add    %dh,%ch
 171:	09 00                	or     %eax,(%rax)
 173:	00 00                	add    %al,(%rax)
 175:	00 00                	add    %al,(%rax)
 177:	00 fb                	add    %bh,%bl
 179:	09 00                	or     %eax,(%rax)
 17b:	00 00                	add    %al,(%rax)
 17d:	00 00                	add    %al,(%rax)
 17f:	00 7f 0a             	add    %bh,0xa(%rdi)
 182:	00 00                	add    %al,(%rax)
 184:	00 00                	add    %al,(%rax)
 186:	00 00                	add    %al,(%rax)
 188:	a3 0a 00 00 00 00 00 	movabs %eax,0xa
 18f:	00 00 
	...
 19d:	00 00                	add    %al,(%rax)
 19f:	00 33                	add    %dh,(%rbx)
 1a1:	04 00                	add    $0x0,%al
 1a3:	00 00                	add    %al,(%rax)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	00 5e 04             	add    %bl,0x4(%rsi)
 1aa:	00 00                	add    %al,(%rax)
 1ac:	00 00                	add    %al,(%rax)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	f5                   	cmc    
 1b1:	09 00                	or     %eax,(%rax)
 1b3:	00 00                	add    %al,(%rax)
 1b5:	00 00                	add    %al,(%rax)
 1b7:	00 fb                	add    %bh,%bl
 1b9:	09 00                	or     %eax,(%rax)
	...
 1cf:	00 cf                	add    %cl,%bh
 1d1:	04 00                	add    $0x0,%al
 1d3:	00 00                	add    %al,(%rax)
 1d5:	00 00                	add    %al,(%rax)
 1d7:	00 d5                	add    %dl,%ch
 1d9:	05 00 00 00 00       	add    $0x0,%eax
 1de:	00 00                	add    %al,(%rax)
 1e0:	4b 0a 00             	rex.WXB or (%r8),%al
 1e3:	00 00                	add    %al,(%rax)
 1e5:	00 00                	add    %al,(%rax)
 1e7:	00 7f 0a             	add    %bh,0xa(%rdi)
	...
 1fe:	00 00                	add    %al,(%rax)
 200:	f6 05 00 00 00 00 00 	testb  $0x0,0x0(%rip)        # 207 <__abi_tag-0xbd>
 207:	00 4b 09             	add    %cl,0x9(%rbx)
 20a:	00 00                	add    %al,(%rax)
 20c:	00 00                	add    %al,(%rax)
 20e:	00 00                	add    %al,(%rax)
 210:	34 0a                	xor    $0xa,%al
 212:	00 00                	add    %al,(%rax)
 214:	00 00                	add    %al,(%rax)
 216:	00 00                	add    %al,(%rax)
 218:	4b 0a 00             	rex.WXB or (%r8),%al
 21b:	00 00                	add    %al,(%rax)
 21d:	00 00                	add    %al,(%rax)
 21f:	00 a3 0a 00 00 00    	add    %ah,0xa(%rbx)
 225:	00 00                	add    %al,(%rax)
 227:	00 1d 0b 00 00 00    	add    %bl,0xb(%rip)        # 238 <__abi_tag-0x8c>
	...
 23d:	00 00                	add    %al,(%rax)
 23f:	00 52 0d             	add    %dl,0xd(%rdx)
 242:	00 00                	add    %al,(%rax)
 244:	00 00                	add    %al,(%rax)
 246:	00 00                	add    %al,(%rax)
 248:	41 0f 00 00          	sldt   (%r8)
 24c:	00 00                	add    %al,(%rax)
 24e:	00 00                	add    %al,(%rax)
 250:	2b 15 00 00 00 00    	sub    0x0(%rip),%edx        # 256 <__abi_tag-0x6e>
 256:	00 00                	add    %al,(%rax)
 258:	59                   	pop    %rcx
 259:	15 00 00 00 00       	adc    $0x0,%eax
 25e:	00 00                	add    %al,(%rax)
 260:	e7 18                	out    %eax,$0x18
 262:	00 00                	add    %al,(%rax)
 264:	00 00                	add    %al,(%rax)
 266:	00 00                	add    %al,(%rax)
 268:	08 19                	or     %bl,(%rcx)
 26a:	00 00                	add    %al,(%rax)
 26c:	00 00                	add    %al,(%rax)
 26e:	00 00                	add    %al,(%rax)
 270:	10 19                	adc    %bl,(%rcx)
 272:	00 00                	add    %al,(%rax)
 274:	00 00                	add    %al,(%rax)
 276:	00 00                	add    %al,(%rax)
 278:	18 19                	sbb    %bl,(%rcx)
 27a:	00 00                	add    %al,(%rax)
 27c:	00 00                	add    %al,(%rax)
 27e:	00 00                	add    %al,(%rax)
 280:	1e                   	(bad)  
 281:	19 00                	sbb    %eax,(%rax)
 283:	00 00                	add    %al,(%rax)
 285:	00 00                	add    %al,(%rax)
 287:	00 26                	add    %ah,(%rsi)
 289:	19 00                	sbb    %eax,(%rax)
 28b:	00 00                	add    %al,(%rax)
 28d:	00 00                	add    %al,(%rax)
 28f:	00 6e 1a             	add    %ch,0x1a(%rsi)
 292:	00 00                	add    %al,(%rax)
 294:	00 00                	add    %al,(%rax)
 296:	00 00                	add    %al,(%rax)
 298:	81 1a 00 00 00 00    	sbbl   $0x0,(%rdx)
	...
 2ae:	00 00                	add    %al,(%rax)
 2b0:	52                   	push   %rdx
 2b1:	0d 00 00 00 00       	or     $0x0,%eax
 2b6:	00 00                	add    %al,(%rax)
 2b8:	41 0f 00 00          	sldt   (%r8)
 2bc:	00 00                	add    %al,(%rax)
 2be:	00 00                	add    %al,(%rax)
 2c0:	2b 15 00 00 00 00    	sub    0x0(%rip),%edx        # 2c6 <__abi_tag+0x2>
 2c6:	00 00                	add    %al,(%rax)
 2c8:	59                   	pop    %rcx
 2c9:	15 00 00 00 00       	adc    $0x0,%eax
 2ce:	00 00                	add    %al,(%rax)
 2d0:	e7 18                	out    %eax,$0x18
 2d2:	00 00                	add    %al,(%rax)
 2d4:	00 00                	add    %al,(%rax)
 2d6:	00 00                	add    %al,(%rax)
 2d8:	08 19                	or     %bl,(%rcx)
 2da:	00 00                	add    %al,(%rax)
 2dc:	00 00                	add    %al,(%rax)
 2de:	00 00                	add    %al,(%rax)
 2e0:	10 19                	adc    %bl,(%rcx)
 2e2:	00 00                	add    %al,(%rax)
 2e4:	00 00                	add    %al,(%rax)
 2e6:	00 00                	add    %al,(%rax)
 2e8:	18 19                	sbb    %bl,(%rcx)
 2ea:	00 00                	add    %al,(%rax)
 2ec:	00 00                	add    %al,(%rax)
 2ee:	00 00                	add    %al,(%rax)
 2f0:	1e                   	(bad)  
 2f1:	19 00                	sbb    %eax,(%rax)
 2f3:	00 00                	add    %al,(%rax)
 2f5:	00 00                	add    %al,(%rax)
 2f7:	00 26                	add    %ah,(%rsi)
 2f9:	19 00                	sbb    %eax,(%rax)
	...
 30f:	00 41 0f             	add    %al,0xf(%rcx)
 312:	00 00                	add    %al,(%rax)
 314:	00 00                	add    %al,(%rax)
 316:	00 00                	add    %al,(%rax)
 318:	ff 10                	callq  *(%rax)
 31a:	00 00                	add    %al,(%rax)
 31c:	00 00                	add    %al,(%rax)
 31e:	00 00                	add    %al,(%rax)
 320:	1b 11                	sbb    (%rcx),%edx
 322:	00 00                	add    %al,(%rax)
 324:	00 00                	add    %al,(%rax)
 326:	00 00                	add    %al,(%rax)
 328:	38 11                	cmp    %dl,(%rcx)
 32a:	00 00                	add    %al,(%rax)
 32c:	00 00                	add    %al,(%rax)
 32e:	00 00                	add    %al,(%rax)
 330:	70 11                	jo     343 <__abi_tag+0x7f>
 332:	00 00                	add    %al,(%rax)
 334:	00 00                	add    %al,(%rax)
 336:	00 00                	add    %al,(%rax)
 338:	9d                   	popfq  
 339:	11 00                	adc    %eax,(%rax)
 33b:	00 00                	add    %al,(%rax)
 33d:	00 00                	add    %al,(%rax)
 33f:	00 f3                	add    %dh,%bl
 341:	15 00 00 00 00       	adc    $0x0,%eax
 346:	00 00                	add    %al,(%rax)
 348:	42 16                	rex.X (bad) 
 34a:	00 00                	add    %al,(%rax)
 34c:	00 00                	add    %al,(%rax)
 34e:	00 00                	add    %al,(%rax)
 350:	05 18 00 00 00       	add    $0x18,%eax
 355:	00 00                	add    %al,(%rax)
 357:	00 35 18 00 00 00    	add    %dh,0x18(%rip)        # 375 <__abi_tag+0xb1>
 35d:	00 00                	add    %al,(%rax)
 35f:	00 26                	add    %ah,(%rsi)
 361:	19 00                	sbb    %eax,(%rax)
 363:	00 00                	add    %al,(%rax)
 365:	00 00                	add    %al,(%rax)
 367:	00 4e 19             	add    %cl,0x19(%rsi)
 36a:	00 00                	add    %al,(%rax)
 36c:	00 00                	add    %al,(%rax)
 36e:	00 00                	add    %al,(%rax)
 370:	5c                   	pop    %rsp
 371:	19 00                	sbb    %eax,(%rax)
 373:	00 00                	add    %al,(%rax)
 375:	00 00                	add    %al,(%rax)
 377:	00 6e 1a             	add    %ch,0x1a(%rsi)
	...
 38e:	00 00                	add    %al,(%rax)
 390:	41 0f 00 00          	sldt   (%r8)
 394:	00 00                	add    %al,(%rax)
 396:	00 00                	add    %al,(%rax)
 398:	ff 10                	callq  *(%rax)
 39a:	00 00                	add    %al,(%rax)
 39c:	00 00                	add    %al,(%rax)
 39e:	00 00                	add    %al,(%rax)
 3a0:	1b 11                	sbb    (%rcx),%edx
 3a2:	00 00                	add    %al,(%rax)
 3a4:	00 00                	add    %al,(%rax)
 3a6:	00 00                	add    %al,(%rax)
 3a8:	38 11                	cmp    %dl,(%rcx)
 3aa:	00 00                	add    %al,(%rax)
 3ac:	00 00                	add    %al,(%rax)
 3ae:	00 00                	add    %al,(%rax)
 3b0:	70 11                	jo     3c3 <__abi_tag+0xff>
 3b2:	00 00                	add    %al,(%rax)
 3b4:	00 00                	add    %al,(%rax)
 3b6:	00 00                	add    %al,(%rax)
 3b8:	9d                   	popfq  
 3b9:	11 00                	adc    %eax,(%rax)
 3bb:	00 00                	add    %al,(%rax)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 f3                	add    %dh,%bl
 3c1:	15 00 00 00 00       	adc    $0x0,%eax
 3c6:	00 00                	add    %al,(%rax)
 3c8:	42 16                	rex.X (bad) 
 3ca:	00 00                	add    %al,(%rax)
 3cc:	00 00                	add    %al,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	05 18 00 00 00       	add    $0x18,%eax
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 35 18 00 00 00    	add    %dh,0x18(%rip)        # 3f5 <__abi_tag+0x131>
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 26                	add    %ah,(%rsi)
 3e1:	19 00                	sbb    %eax,(%rax)
 3e3:	00 00                	add    %al,(%rax)
 3e5:	00 00                	add    %al,(%rax)
 3e7:	00 4e 19             	add    %cl,0x19(%rsi)
 3ea:	00 00                	add    %al,(%rax)
 3ec:	00 00                	add    %al,(%rax)
 3ee:	00 00                	add    %al,(%rax)
 3f0:	5c                   	pop    %rsp
 3f1:	19 00                	sbb    %eax,(%rax)
 3f3:	00 00                	add    %al,(%rax)
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 22                	add    %ah,(%rdx)
 3f9:	1a 00                	sbb    (%rax),%al
	...
 40f:	00 ff                	add    %bh,%bh
 411:	10 00                	adc    %al,(%rax)
 413:	00 00                	add    %al,(%rax)
 415:	00 00                	add    %al,(%rax)
 417:	00 1b                	add    %bl,(%rbx)
 419:	11 00                	adc    %eax,(%rax)
 41b:	00 00                	add    %al,(%rax)
 41d:	00 00                	add    %al,(%rax)
 41f:	00 38                	add    %bh,(%rax)
 421:	11 00                	adc    %eax,(%rax)
 423:	00 00                	add    %al,(%rax)
 425:	00 00                	add    %al,(%rax)
 427:	00 70 11             	add    %dh,0x11(%rax)
 42a:	00 00                	add    %al,(%rax)
 42c:	00 00                	add    %al,(%rax)
 42e:	00 00                	add    %al,(%rax)
 430:	9d                   	popfq  
 431:	11 00                	adc    %eax,(%rax)
 433:	00 00                	add    %al,(%rax)
 435:	00 00                	add    %al,(%rax)
 437:	00 2b                	add    %ch,(%rbx)
 439:	15 00 00 00 00       	adc    $0x0,%eax
 43e:	00 00                	add    %al,(%rax)
 440:	08 19                	or     %bl,(%rcx)
 442:	00 00                	add    %al,(%rax)
 444:	00 00                	add    %al,(%rax)
 446:	00 00                	add    %al,(%rax)
 448:	10 19                	adc    %bl,(%rcx)
 44a:	00 00                	add    %al,(%rax)
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	4e 19 00             	rex.WRX sbb %r8,(%rax)
 453:	00 00                	add    %al,(%rax)
 455:	00 00                	add    %al,(%rax)
 457:	00 5c 19 00          	add    %bl,0x0(%rcx,%rbx,1)
 45b:	00 00                	add    %al,(%rax)
 45d:	00 00                	add    %al,(%rax)
 45f:	00 81 1a 00 00 00    	add    %al,0x1a(%rcx)
 465:	00 00                	add    %al,(%rax)
 467:	00 ca                	add    %cl,%dl
 469:	1a 00                	sbb    (%rax),%al
	...
 47f:	00 ff                	add    %bh,%bh
 481:	10 00                	adc    %al,(%rax)
 483:	00 00                	add    %al,(%rax)
 485:	00 00                	add    %al,(%rax)
 487:	00 1b                	add    %bl,(%rbx)
 489:	11 00                	adc    %eax,(%rax)
 48b:	00 00                	add    %al,(%rax)
 48d:	00 00                	add    %al,(%rax)
 48f:	00 38                	add    %bh,(%rax)
 491:	11 00                	adc    %eax,(%rax)
 493:	00 00                	add    %al,(%rax)
 495:	00 00                	add    %al,(%rax)
 497:	00 70 11             	add    %dh,0x11(%rax)
 49a:	00 00                	add    %al,(%rax)
 49c:	00 00                	add    %al,(%rax)
 49e:	00 00                	add    %al,(%rax)
 4a0:	9d                   	popfq  
 4a1:	11 00                	adc    %eax,(%rax)
 4a3:	00 00                	add    %al,(%rax)
 4a5:	00 00                	add    %al,(%rax)
 4a7:	00 2b                	add    %ch,(%rbx)
 4a9:	15 00 00 00 00       	adc    $0x0,%eax
 4ae:	00 00                	add    %al,(%rax)
 4b0:	4e 19 00             	rex.WRX sbb %r8,(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 00                	add    %al,(%rax)
 4b7:	00 5c 19 00          	add    %bl,0x0(%rcx,%rbx,1)
	...
 4cf:	00 08                	add    %cl,(%rax)
 4d1:	19 00                	sbb    %eax,(%rax)
 4d3:	00 00                	add    %al,(%rax)
 4d5:	00 00                	add    %al,(%rax)
 4d7:	00 10                	add    %dl,(%rax)
 4d9:	19 00                	sbb    %eax,(%rax)
 4db:	00 00                	add    %al,(%rax)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 81 1a 00 00 00    	add    %al,0x1a(%rcx)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 af 1a 00 00 00    	add    %ch,0x1a(%rdi)
	...
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 08                	add    %cl,(%rax)
 501:	19 00                	sbb    %eax,(%rax)
 503:	00 00                	add    %al,(%rax)
 505:	00 00                	add    %al,(%rax)
 507:	00 10                	add    %dl,(%rax)
 509:	19 00                	sbb    %eax,(%rax)
 50b:	00 00                	add    %al,(%rax)
 50d:	00 00                	add    %al,(%rax)
 50f:	00 81 1a 00 00 00    	add    %al,0x1a(%rcx)
 515:	00 00                	add    %al,(%rax)
 517:	00 af 1a 00 00 00    	add    %ch,0x1a(%rdi)
	...
 52d:	00 00                	add    %al,(%rax)
 52f:	00 59 15             	add    %bl,0x15(%rcx)
 532:	00 00                	add    %al,(%rax)
 534:	00 00                	add    %al,(%rax)
 536:	00 00                	add    %al,(%rax)
 538:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 53e:	00 00                	add    %al,(%rax)
 540:	42 16                	rex.X (bad) 
 542:	00 00                	add    %al,(%rax)
 544:	00 00                	add    %al,(%rax)
 546:	00 00                	add    %al,(%rax)
 548:	05 18 00 00 00       	add    $0x18,%eax
 54d:	00 00                	add    %al,(%rax)
 54f:	00 35 18 00 00 00    	add    %dh,0x18(%rip)        # 56d <__abi_tag+0x2a9>
 555:	00 00                	add    %al,(%rax)
 557:	00 e7                	add    %ah,%bh
 559:	18 00                	sbb    %al,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 18                	add    %bl,(%rax)
 561:	19 00                	sbb    %eax,(%rax)
 563:	00 00                	add    %al,(%rax)
 565:	00 00                	add    %al,(%rax)
 567:	00 1e                	add    %bl,(%rsi)
 569:	19 00                	sbb    %eax,(%rax)
 56b:	00 00                	add    %al,(%rax)
 56d:	00 00                	add    %al,(%rax)
 56f:	00 8b 1b 00 00 00    	add    %cl,0x1b(%rbx)
 575:	00 00                	add    %al,(%rax)
 577:	00 0b                	add    %cl,(%rbx)
 579:	1c 00                	sbb    $0x0,%al
	...
 58f:	00 59 15             	add    %bl,0x15(%rcx)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	f3 15 00 00 00 00    	repz adc $0x0,%eax
 59e:	00 00                	add    %al,(%rax)
 5a0:	42 16                	rex.X (bad) 
 5a2:	00 00                	add    %al,(%rax)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	05 18 00 00 00       	add    $0x18,%eax
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 35 18 00 00 00    	add    %dh,0x18(%rip)        # 5cd <__abi_tag+0x309>
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 e7                	add    %ah,%bh
 5b9:	18 00                	sbb    %al,(%rax)
 5bb:	00 00                	add    %al,(%rax)
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 18                	add    %bl,(%rax)
 5c1:	19 00                	sbb    %eax,(%rax)
 5c3:	00 00                	add    %al,(%rax)
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 1e                	add    %bl,(%rsi)
 5c9:	19 00                	sbb    %eax,(%rax)
	...
