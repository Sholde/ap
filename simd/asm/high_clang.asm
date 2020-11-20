
high_clang:     format de fichier elf64-x86-64


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
 360:	44 00 00             	add    %r8b,(%rax)
 363:	00 12                	add    %dl,(%rdx)
	...
 375:	00 00                	add    %al,(%rax)
 377:	00 6a 00             	add    %ch,0x0(%rdx)
 37a:	00 00                	add    %al,(%rax)
 37c:	20 00                	and    %al,(%rax)
	...
 38e:	00 00                	add    %al,(%rax)
 390:	0e                   	(bad)  
 391:	00 00                	add    %al,(%rax)
 393:	00 12                	add    %dl,(%rdx)
	...
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 32                	add    %dh,(%rdx)
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 12                	add    %dl,(%rdx)
	...
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 06                	add    %al,(%rsi)
 3c1:	00 00                	add    %al,(%rax)
 3c3:	00 12                	add    %dl,(%rdx)
	...
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 86 00 00 00 20    	add    %al,0x20000000(%rsi)
	...
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 01                	add    %al,(%rcx)
 3f1:	00 00                	add    %al,(%rax)
 3f3:	00 12                	add    %dl,(%rdx)
	...
 405:	00 00                	add    %al,(%rax)
 407:	00 95 00 00 00 20    	add    %dl,0x20000000(%rbp)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 15 00 00 00 12    	add    %dl,0x12000000(%rip)        # 12000425 <_end+0x11ffb3cd>
	...
 435:	00 00                	add    %al,(%rax)
 437:	00 23                	add    %ah,(%rbx)
 439:	00 00                	add    %al,(%rax)
 43b:	00 22                	add    %ah,(%rdx)
	...

Déassemblage de la section .dynstr :

0000000000000450 <.dynstr>:
 450:	00 65 78             	add    %ah,0x78(%rbp)
 453:	69 74 00 73 74 72 74 	imul   $0x6f747274,0x73(%rax,%rax,1),%esi
 45a:	6f 
 45b:	6c                   	insb   (%dx),%es:(%rdi)
 45c:	6c                   	insb   (%dx),%es:(%rdi)
 45d:	00 70 72             	add    %dh,0x72(%rax)
 460:	69 6e 74 66 00 61 6c 	imul   $0x6c610066,0x74(%rsi),%ebp
 467:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
 46e:	6c                   	insb   (%dx),%es:(%rdi)
 46f:	6c                   	insb   (%dx),%es:(%rdi)
 470:	6f                   	outsl  %ds:(%rsi),(%dx)
 471:	63 00                	movsxd (%rax),%eax
 473:	5f                   	pop    %rdi
 474:	5f                   	pop    %rdi
 475:	63 78 61             	movsxd 0x61(%rax),%edi
 478:	5f                   	pop    %rdi
 479:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 47f:	7a 65                	jp     4e6 <__abi_tag+0x222>
 481:	00 5f 5f             	add    %bl,0x5f(%rdi)
 484:	6c                   	insb   (%dx),%es:(%rdi)
 485:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 48c:	72 74                	jb     502 <__abi_tag+0x23e>
 48e:	5f                   	pop    %rdi
 48f:	6d                   	insl   (%dx),%es:(%rdi)
 490:	61                   	(bad)  
 491:	69 6e 00 66 72 65 65 	imul   $0x65657266,0x0(%rsi),%ebp
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
    10b3:	4c 8d 05 26 19 00 00 	lea    0x1926(%rip),%r8        # 29e0 <__libc_csu_fini>
    10ba:	48 8d 0d af 18 00 00 	lea    0x18af(%rip),%rcx        # 2970 <__libc_csu_init>
    10c1:	48 8d 3d a8 06 00 00 	lea    0x6a8(%rip),%rdi        # 1770 <main>
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
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <parse_args>:
    11a0:	50                   	push   %rax
    11a1:	83 ff 02             	cmp    $0x2,%edi
    11a4:	75 11                	jne    11b7 <parse_args+0x17>
    11a6:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11aa:	31 f6                	xor    %esi,%esi
    11ac:	ba 0a 00 00 00       	mov    $0xa,%edx
    11b1:	58                   	pop    %rax
    11b2:	e9 99 fe ff ff       	jmpq   1050 <strtoll@plt>
    11b7:	bf 01 00 00 00       	mov    $0x1,%edi
    11bc:	e8 9f fe ff ff       	callq  1060 <exit@plt>
    11c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11c8:	00 00 00 
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <dotprod>:
    11d0:	48 85 d2             	test   %rdx,%rdx
    11d3:	74 11                	je     11e6 <dotprod+0x16>
    11d5:	48 83 fa 03          	cmp    $0x3,%rdx
    11d9:	77 0f                	ja     11ea <dotprod+0x1a>
    11db:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11df:	31 c0                	xor    %eax,%eax
    11e1:	e9 da 00 00 00       	jmpq   12c0 <dotprod+0xf0>
    11e6:	0f 57 c0             	xorps  %xmm0,%xmm0
    11e9:	c3                   	retq   
    11ea:	48 89 d0             	mov    %rdx,%rax
    11ed:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    11f1:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
    11f5:	49 89 c8             	mov    %rcx,%r8
    11f8:	49 c1 e8 02          	shr    $0x2,%r8
    11fc:	49 83 c0 01          	add    $0x1,%r8
    1200:	48 85 c9             	test   %rcx,%rcx
    1203:	0f 84 cf 00 00 00    	je     12d8 <dotprod+0x108>
    1209:	4d 89 c1             	mov    %r8,%r9
    120c:	49 83 e1 fe          	and    $0xfffffffffffffffe,%r9
    1210:	49 f7 d9             	neg    %r9
    1213:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1217:	31 c9                	xor    %ecx,%ecx
    1219:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    121d:	0f 1f 00             	nopl   (%rax)
    1220:	66 0f 10 14 cf       	movupd (%rdi,%rcx,8),%xmm2
    1225:	66 0f 10 5c cf 10    	movupd 0x10(%rdi,%rcx,8),%xmm3
    122b:	66 0f 10 64 cf 20    	movupd 0x20(%rdi,%rcx,8),%xmm4
    1231:	66 0f 10 6c cf 30    	movupd 0x30(%rdi,%rcx,8),%xmm5
    1237:	66 0f 10 34 ce       	movupd (%rsi,%rcx,8),%xmm6
    123c:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    1240:	66 0f 58 f1          	addpd  %xmm1,%xmm6
    1244:	66 0f 10 54 ce 10    	movupd 0x10(%rsi,%rcx,8),%xmm2
    124a:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    124e:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    1252:	66 0f 10 4c ce 20    	movupd 0x20(%rsi,%rcx,8),%xmm1
    1258:	66 0f 59 cc          	mulpd  %xmm4,%xmm1
    125c:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1260:	66 0f 10 44 ce 30    	movupd 0x30(%rsi,%rcx,8),%xmm0
    1266:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
    126a:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    126e:	48 83 c1 08          	add    $0x8,%rcx
    1272:	49 83 c1 02          	add    $0x2,%r9
    1276:	75 a8                	jne    1220 <dotprod+0x50>
    1278:	41 f6 c0 01          	test   $0x1,%r8b
    127c:	74 26                	je     12a4 <dotprod+0xd4>
    127e:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    1283:	66 0f 10 5c ce 10    	movupd 0x10(%rsi,%rcx,8),%xmm3
    1289:	66 0f 10 24 cf       	movupd (%rdi,%rcx,8),%xmm4
    128e:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1292:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    1296:	66 0f 10 54 cf 10    	movupd 0x10(%rdi,%rcx,8),%xmm2
    129c:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    12a0:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    12a4:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    12a8:	66 0f 28 c1          	movapd %xmm1,%xmm0
    12ac:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    12b0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    12b4:	48 39 d0             	cmp    %rdx,%rax
    12b7:	74 1e                	je     12d7 <dotprod+0x107>
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12c0:	f2 0f 10 0c c6       	movsd  (%rsi,%rax,8),%xmm1
    12c5:	f2 0f 59 0c c7       	mulsd  (%rdi,%rax,8),%xmm1
    12ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    12ce:	48 83 c0 01          	add    $0x1,%rax
    12d2:	48 39 c2             	cmp    %rax,%rdx
    12d5:	75 e9                	jne    12c0 <dotprod+0xf0>
    12d7:	c3                   	retq   
    12d8:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12dc:	31 c9                	xor    %ecx,%ecx
    12de:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12e2:	41 f6 c0 01          	test   $0x1,%r8b
    12e6:	75 96                	jne    127e <dotprod+0xae>
    12e8:	eb ba                	jmp    12a4 <dotprod+0xd4>
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012f0 <dotprod_2x>:
    12f0:	f6 c2 01             	test   $0x1,%dl
    12f3:	75 33                	jne    1328 <dotprod_2x+0x38>
    12f5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12f9:	48 85 d2             	test   %rdx,%rdx
    12fc:	74 1d                	je     131b <dotprod_2x+0x2b>
    12fe:	31 c0                	xor    %eax,%eax
    1300:	66 0f 10 04 c7       	movupd (%rdi,%rax,8),%xmm0
    1305:	66 0f 10 14 c6       	movupd (%rsi,%rax,8),%xmm2
    130a:	66 0f 59 d0          	mulpd  %xmm0,%xmm2
    130e:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1312:	48 83 c0 02          	add    $0x2,%rax
    1316:	48 39 d0             	cmp    %rdx,%rax
    1319:	72 e5                	jb     1300 <dotprod_2x+0x10>
    131b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    131f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1323:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1327:	c3                   	retq   
    1328:	48 89 d0             	mov    %rdx,%rax
    132b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    132f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1333:	74 26                	je     135b <dotprod_2x+0x6b>
    1335:	31 c9                	xor    %ecx,%ecx
    1337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    133e:	00 00 
    1340:	66 0f 10 0c cf       	movupd (%rdi,%rcx,8),%xmm1
    1345:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    134a:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    134e:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    1352:	48 83 c1 02          	add    $0x2,%rcx
    1356:	48 39 c1             	cmp    %rax,%rcx
    1359:	72 e5                	jb     1340 <dotprod_2x+0x50>
    135b:	66 0f 28 c8          	movapd %xmm0,%xmm1
    135f:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1363:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1367:	f2 0f 10 44 d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm0
    136d:	f2 0f 59 44 d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm0
    1373:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1377:	c3                   	retq   
    1378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    137f:	00 

0000000000001380 <dotprod_4x>:
    1380:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1384:	48 85 d2             	test   %rdx,%rdx
    1387:	0f 84 9f 00 00 00    	je     142c <dotprod_4x+0xac>
    138d:	31 c0                	xor    %eax,%eax
    138f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1393:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    139a:	00 00 00 
    139d:	0f 1f 00             	nopl   (%rax)
    13a0:	f2 0f 10 14 c6       	movsd  (%rsi,%rax,8),%xmm2
    13a5:	f2 0f 10 5c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm3
    13ab:	66 0f 16 54 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm2
    13b1:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
    13b6:	f2 0f 10 6c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm5
    13bc:	66 0f 16 64 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm4
    13c2:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    13c6:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    13ca:	66 0f 16 5c c6 18    	movhpd 0x18(%rsi,%rax,8),%xmm3
    13d0:	66 0f 16 6c c7 18    	movhpd 0x18(%rdi,%rax,8),%xmm5
    13d6:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    13da:	66 0f 58 c5          	addpd  %xmm5,%xmm0
    13de:	48 83 c0 04          	add    $0x4,%rax
    13e2:	48 39 d0             	cmp    %rdx,%rax
    13e5:	72 b9                	jb     13a0 <dotprod_4x+0x20>
    13e7:	66 0f 28 d1          	movapd %xmm1,%xmm2
    13eb:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    13ef:	f6 c2 03             	test   $0x3,%dl
    13f2:	75 40                	jne    1434 <dotprod_4x+0xb4>
    13f4:	48 83 fa 03          	cmp    $0x3,%rdx
    13f8:	72 3a                	jb     1434 <dotprod_4x+0xb4>
    13fa:	f2 0f 10 5c d6 e8    	movsd  -0x18(%rsi,%rdx,8),%xmm3
    1400:	f2 0f 10 64 d6 f0    	movsd  -0x10(%rsi,%rdx,8),%xmm4
    1406:	f2 0f 59 5c d7 e8    	mulsd  -0x18(%rdi,%rdx,8),%xmm3
    140c:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1410:	f2 0f 59 64 d7 f0    	mulsd  -0x10(%rdi,%rdx,8),%xmm4
    1416:	f2 0f 10 4c d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm1
    141c:	f2 0f 59 4c d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm1
    1422:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1426:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    142a:	eb 08                	jmp    1434 <dotprod_4x+0xb4>
    142c:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    1430:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1434:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    1438:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    143c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1440:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1444:	c3                   	retq   
    1445:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    144c:	00 00 00 
    144f:	90                   	nop

0000000000001450 <dotprod_8x>:
    1450:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1454:	48 85 d2             	test   %rdx,%rdx
    1457:	0f 84 0f 01 00 00    	je     156c <dotprod_8x+0x11c>
    145d:	31 c0                	xor    %eax,%eax
    145f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1463:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    1467:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1470:	f2 0f 10 24 c6       	movsd  (%rsi,%rax,8),%xmm4
    1475:	f2 0f 10 6c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm5
    147b:	66 0f 16 64 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm4
    1481:	f2 0f 10 34 c7       	movsd  (%rdi,%rax,8),%xmm6
    1486:	f2 0f 10 7c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm7
    148c:	66 0f 16 74 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm6
    1492:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    1496:	66 0f 58 de          	addpd  %xmm6,%xmm3
    149a:	66 0f 10 64 c7 18    	movupd 0x18(%rdi,%rax,8),%xmm4
    14a0:	66 0f 10 74 c6 18    	movupd 0x18(%rsi,%rax,8),%xmm6
    14a6:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    14aa:	66 0f 58 d6          	addpd  %xmm6,%xmm2
    14ae:	66 0f 10 64 c7 28    	movupd 0x28(%rdi,%rax,8),%xmm4
    14b4:	66 0f 10 74 c6 28    	movupd 0x28(%rsi,%rax,8),%xmm6
    14ba:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    14be:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    14c2:	66 0f 16 6c c6 38    	movhpd 0x38(%rsi,%rax,8),%xmm5
    14c8:	66 0f 16 7c c7 38    	movhpd 0x38(%rdi,%rax,8),%xmm7
    14ce:	66 0f 59 fd          	mulpd  %xmm5,%xmm7
    14d2:	66 0f 58 c7          	addpd  %xmm7,%xmm0
    14d6:	48 83 c0 08          	add    $0x8,%rax
    14da:	48 39 d0             	cmp    %rdx,%rax
    14dd:	72 91                	jb     1470 <dotprod_8x+0x20>
    14df:	66 0f 28 e3          	movapd %xmm3,%xmm4
    14e3:	66 0f 15 e3          	unpckhpd %xmm3,%xmm4
    14e7:	f6 c2 07             	test   $0x7,%dl
    14ea:	0f 85 8c 00 00 00    	jne    157c <dotprod_8x+0x12c>
    14f0:	48 83 fa 07          	cmp    $0x7,%rdx
    14f4:	0f 82 82 00 00 00    	jb     157c <dotprod_8x+0x12c>
    14fa:	f2 0f 10 6c d6 c8    	movsd  -0x38(%rsi,%rdx,8),%xmm5
    1500:	f2 0f 10 74 d6 d0    	movsd  -0x30(%rsi,%rdx,8),%xmm6
    1506:	f2 0f 59 6c d7 c8    	mulsd  -0x38(%rdi,%rdx,8),%xmm5
    150c:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    1510:	f2 0f 59 74 d7 d0    	mulsd  -0x30(%rdi,%rdx,8),%xmm6
    1516:	f2 0f 10 5c d6 d8    	movsd  -0x28(%rsi,%rdx,8),%xmm3
    151c:	f2 0f 59 5c d7 d8    	mulsd  -0x28(%rdi,%rdx,8),%xmm3
    1522:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    1526:	f2 0f 10 74 d6 e0    	movsd  -0x20(%rsi,%rdx,8),%xmm6
    152c:	f2 0f 59 74 d7 e0    	mulsd  -0x20(%rdi,%rdx,8),%xmm6
    1532:	f2 0f 58 f3          	addsd  %xmm3,%xmm6
    1536:	f2 0f 58 f5          	addsd  %xmm5,%xmm6
    153a:	f2 0f 10 5c d6 e8    	movsd  -0x18(%rsi,%rdx,8),%xmm3
    1540:	f2 0f 59 5c d7 e8    	mulsd  -0x18(%rdi,%rdx,8),%xmm3
    1546:	f2 0f 10 6c d6 f0    	movsd  -0x10(%rsi,%rdx,8),%xmm5
    154c:	f2 0f 59 6c d7 f0    	mulsd  -0x10(%rdi,%rdx,8),%xmm5
    1552:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    1556:	f2 0f 10 5c d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm3
    155c:	f2 0f 59 5c d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm3
    1562:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    1566:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    156a:	eb 10                	jmp    157c <dotprod_8x+0x12c>
    156c:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    1570:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1574:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1578:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    157c:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
    1580:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    1584:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1588:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    158c:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1590:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1594:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1598:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    159c:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    15a0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    15a4:	c3                   	retq   
    15a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    15ac:	00 00 00 
    15af:	90                   	nop

00000000000015b0 <dotprod_16x>:
    15b0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    15b4:	48 85 d2             	test   %rdx,%rdx
    15b7:	0f 84 1c 01 00 00    	je     16d9 <dotprod_16x+0x129>
    15bd:	31 c0                	xor    %eax,%eax
    15bf:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    15c4:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    15c9:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    15ce:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    15d2:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    15d6:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    15db:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    15df:	90                   	nop
    15e0:	f2 0f 10 2c c6       	movsd  (%rsi,%rax,8),%xmm5
    15e5:	f2 0f 10 4c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm1
    15eb:	66 0f 16 6c c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm5
    15f1:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
    15f6:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
    15fc:	66 0f 16 64 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm4
    1602:	66 0f 59 e5          	mulpd  %xmm5,%xmm4
    1606:	66 0f 58 d4          	addpd  %xmm4,%xmm2
    160a:	66 0f 10 64 c7 18    	movupd 0x18(%rdi,%rax,8),%xmm4
    1610:	66 0f 10 6c c6 18    	movupd 0x18(%rsi,%rax,8),%xmm5
    1616:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    161a:	66 44 0f 58 e5       	addpd  %xmm5,%xmm12
    161f:	66 0f 10 64 c7 28    	movupd 0x28(%rdi,%rax,8),%xmm4
    1625:	66 0f 10 6c c6 28    	movupd 0x28(%rsi,%rax,8),%xmm5
    162b:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    162f:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    1633:	66 0f 10 64 c7 38    	movupd 0x38(%rdi,%rax,8),%xmm4
    1639:	66 0f 10 6c c6 38    	movupd 0x38(%rsi,%rax,8),%xmm5
    163f:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    1643:	66 0f 58 f5          	addpd  %xmm5,%xmm6
    1647:	66 0f 10 64 c7 48    	movupd 0x48(%rdi,%rax,8),%xmm4
    164d:	66 0f 10 6c c6 48    	movupd 0x48(%rsi,%rax,8),%xmm5
    1653:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    1657:	66 44 0f 58 dd       	addpd  %xmm5,%xmm11
    165c:	66 0f 10 64 c7 58    	movupd 0x58(%rdi,%rax,8),%xmm4
    1662:	66 0f 10 6c c6 58    	movupd 0x58(%rsi,%rax,8),%xmm5
    1668:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    166c:	66 44 0f 58 d5       	addpd  %xmm5,%xmm10
    1671:	66 0f 10 64 c7 68    	movupd 0x68(%rdi,%rax,8),%xmm4
    1677:	66 0f 10 6c c6 68    	movupd 0x68(%rsi,%rax,8),%xmm5
    167d:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    1681:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    1686:	66 0f 16 4c c6 78    	movhpd 0x78(%rsi,%rax,8),%xmm1
    168c:	66 0f 16 5c c7 78    	movhpd 0x78(%rdi,%rax,8),%xmm3
    1692:	66 0f 59 d9          	mulpd  %xmm1,%xmm3
    1696:	66 0f 58 c3          	addpd  %xmm3,%xmm0
    169a:	48 83 c0 10          	add    $0x10,%rax
    169e:	48 39 d0             	cmp    %rdx,%rax
    16a1:	0f 82 39 ff ff ff    	jb     15e0 <dotprod_16x+0x30>
    16a7:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
    16ac:	66 44 0f 15 c2       	unpckhpd %xmm2,%xmm8
    16b1:	f6 c2 0f             	test   $0xf,%dl
    16b4:	75 48                	jne    16fe <dotprod_16x+0x14e>
    16b6:	48 83 fa 0e          	cmp    $0xe,%rdx
    16ba:	76 42                	jbe    16fe <dotprod_16x+0x14e>
    16bc:	48 8d 42 f1          	lea    -0xf(%rdx),%rax
    16c0:	f2 0f 10 0c c6       	movsd  (%rsi,%rax,8),%xmm1
    16c5:	f2 0f 59 0c c7       	mulsd  (%rdi,%rax,8),%xmm1
    16ca:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    16ce:	48 83 c0 01          	add    $0x1,%rax
    16d2:	48 39 d0             	cmp    %rdx,%rax
    16d5:	72 e9                	jb     16c0 <dotprod_16x+0x110>
    16d7:	eb 25                	jmp    16fe <dotprod_16x+0x14e>
    16d9:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    16de:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    16e2:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    16e7:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    16ec:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    16f1:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    16f5:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    16f9:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    16fe:	f2 45 0f 58 c4       	addsd  %xmm12,%xmm8
    1703:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    1708:	f2 44 0f 58 e7       	addsd  %xmm7,%xmm12
    170d:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    1711:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1716:	f2 44 0f 58 e6       	addsd  %xmm6,%xmm12
    171b:	66 0f 15 f6          	unpckhpd %xmm6,%xmm6
    171f:	f2 0f 58 f7          	addsd  %xmm7,%xmm6
    1723:	f2 45 0f 58 e3       	addsd  %xmm11,%xmm12
    1728:	66 45 0f 15 db       	unpckhpd %xmm11,%xmm11
    172d:	f2 44 0f 58 de       	addsd  %xmm6,%xmm11
    1732:	f2 45 0f 58 e2       	addsd  %xmm10,%xmm12
    1737:	66 45 0f 15 d2       	unpckhpd %xmm10,%xmm10
    173c:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    1741:	f2 45 0f 58 e1       	addsd  %xmm9,%xmm12
    1746:	66 45 0f 15 c9       	unpckhpd %xmm9,%xmm9
    174b:	f2 45 0f 58 ca       	addsd  %xmm10,%xmm9
    1750:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
    1755:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1759:	f2 41 0f 58 c4       	addsd  %xmm12,%xmm0
    175e:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1762:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    1767:	c3                   	retq   
    1768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    176f:	00 

0000000000001770 <main>:
    1770:	55                   	push   %rbp
    1771:	41 57                	push   %r15
    1773:	41 56                	push   %r14
    1775:	41 55                	push   %r13
    1777:	41 54                	push   %r12
    1779:	53                   	push   %rbx
    177a:	48 81 ec 38 02 00 00 	sub    $0x238,%rsp
    1781:	83 ff 02             	cmp    $0x2,%edi
    1784:	0f 85 7e 02 00 00    	jne    1a08 <main+0x298>
    178a:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    178e:	31 f6                	xor    %esi,%esi
    1790:	ba 0a 00 00 00       	mov    $0xa,%edx
    1795:	e8 b6 f8 ff ff       	callq  1050 <strtoll@plt>
    179a:	49 89 c6             	mov    %rax,%r14
    179d:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    17a4:	00 
    17a5:	bf 40 00 00 00       	mov    $0x40,%edi
    17aa:	48 89 de             	mov    %rbx,%rsi
    17ad:	e8 be f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17b2:	48 89 c5             	mov    %rax,%rbp
    17b5:	bf 40 00 00 00       	mov    $0x40,%edi
    17ba:	48 89 de             	mov    %rbx,%rsi
    17bd:	e8 ae f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17c2:	48 89 c3             	mov    %rax,%rbx
    17c5:	4d 85 f6             	test   %r14,%r14
    17c8:	74 0d                	je     17d7 <main+0x67>
    17ca:	49 83 fe 04          	cmp    $0x4,%r14
    17ce:	73 1c                	jae    17ec <main+0x7c>
    17d0:	31 c0                	xor    %eax,%eax
    17d2:	e9 0e 01 00 00       	jmpq   18e5 <main+0x175>
    17d7:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    17db:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    17df:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    17e3:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    17e7:	e9 ce 02 00 00       	jmpq   1aba <main+0x34a>
    17ec:	4c 89 f0             	mov    %r14,%rax
    17ef:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    17f3:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    17f7:	48 89 f2             	mov    %rsi,%rdx
    17fa:	48 c1 ea 02          	shr    $0x2,%rdx
    17fe:	48 83 c2 01          	add    $0x1,%rdx
    1802:	89 d1                	mov    %edx,%ecx
    1804:	83 e1 03             	and    $0x3,%ecx
    1807:	48 83 fe 0c          	cmp    $0xc,%rsi
    180b:	73 07                	jae    1814 <main+0xa4>
    180d:	31 f6                	xor    %esi,%esi
    180f:	e9 85 00 00 00       	jmpq   1899 <main+0x129>
    1814:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1818:	48 f7 da             	neg    %rdx
    181b:	31 f6                	xor    %esi,%esi
    181d:	66 0f 28 05 eb 17 00 	movapd 0x17eb(%rip),%xmm0        # 3010 <_IO_stdin_used+0x10>
    1824:	00 
    1825:	66 0f 28 0d f3 17 00 	movapd 0x17f3(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
    182c:	00 
    182d:	0f 1f 00             	nopl   (%rax)
    1830:	66 0f 11 44 f5 00    	movupd %xmm0,0x0(%rbp,%rsi,8)
    1836:	66 0f 11 44 f5 10    	movupd %xmm0,0x10(%rbp,%rsi,8)
    183c:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    1841:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
    1847:	66 0f 11 44 f5 20    	movupd %xmm0,0x20(%rbp,%rsi,8)
    184d:	66 0f 11 44 f5 30    	movupd %xmm0,0x30(%rbp,%rsi,8)
    1853:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    1859:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
    185f:	66 0f 11 44 f5 40    	movupd %xmm0,0x40(%rbp,%rsi,8)
    1865:	66 0f 11 44 f5 50    	movupd %xmm0,0x50(%rbp,%rsi,8)
    186b:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    1871:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
    1877:	66 0f 11 44 f5 60    	movupd %xmm0,0x60(%rbp,%rsi,8)
    187d:	66 0f 11 44 f5 70    	movupd %xmm0,0x70(%rbp,%rsi,8)
    1883:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1889:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
    188f:	48 83 c6 10          	add    $0x10,%rsi
    1893:	48 83 c2 04          	add    $0x4,%rdx
    1897:	75 97                	jne    1830 <main+0xc0>
    1899:	48 85 c9             	test   %rcx,%rcx
    189c:	74 42                	je     18e0 <main+0x170>
    189e:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    18a5:	00 
    18a6:	48 f7 d9             	neg    %rcx
    18a9:	66 0f 28 05 5f 17 00 	movapd 0x175f(%rip),%xmm0        # 3010 <_IO_stdin_used+0x10>
    18b0:	00 
    18b1:	66 0f 28 0d 67 17 00 	movapd 0x1767(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
    18b8:	00 
    18b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18c0:	66 0f 11 44 15 f0    	movupd %xmm0,-0x10(%rbp,%rdx,1)
    18c6:	66 0f 11 44 15 00    	movupd %xmm0,0x0(%rbp,%rdx,1)
    18cc:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    18d2:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
    18d7:	48 83 c2 20          	add    $0x20,%rdx
    18db:	48 ff c1             	inc    %rcx
    18de:	75 e0                	jne    18c0 <main+0x150>
    18e0:	49 39 c6             	cmp    %rax,%r14
    18e3:	74 2d                	je     1912 <main+0x1a2>
    18e5:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    18ec:	99 b9 3f 
    18ef:	48 ba 00 00 00 00 00 	movabs $0x3ff0000000000000,%rdx
    18f6:	00 f0 3f 
    18f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1900:	48 89 4c c5 00       	mov    %rcx,0x0(%rbp,%rax,8)
    1905:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
    1909:	48 83 c0 01          	add    $0x1,%rax
    190d:	49 39 c6             	cmp    %rax,%r14
    1910:	75 ee                	jne    1900 <main+0x190>
    1912:	49 83 fe 04          	cmp    $0x4,%r14
    1916:	73 0b                	jae    1923 <main+0x1b3>
    1918:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    191c:	31 c0                	xor    %eax,%eax
    191e:	e9 ef 00 00 00       	jmpq   1a12 <main+0x2a2>
    1923:	4c 89 f0             	mov    %r14,%rax
    1926:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    192a:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    192e:	48 89 d1             	mov    %rdx,%rcx
    1931:	48 c1 e9 02          	shr    $0x2,%rcx
    1935:	48 83 c1 01          	add    $0x1,%rcx
    1939:	48 85 d2             	test   %rdx,%rdx
    193c:	0f 84 b5 00 00 00    	je     19f7 <main+0x287>
    1942:	48 89 ce             	mov    %rcx,%rsi
    1945:	48 83 e6 fe          	and    $0xfffffffffffffffe,%rsi
    1949:	48 f7 de             	neg    %rsi
    194c:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1950:	31 d2                	xor    %edx,%edx
    1952:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1956:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    195d:	00 00 00 
    1960:	66 0f 10 54 d5 00    	movupd 0x0(%rbp,%rdx,8),%xmm2
    1966:	66 0f 10 5c d5 10    	movupd 0x10(%rbp,%rdx,8),%xmm3
    196c:	66 0f 10 64 d5 20    	movupd 0x20(%rbp,%rdx,8),%xmm4
    1972:	66 0f 10 6c d5 30    	movupd 0x30(%rbp,%rdx,8),%xmm5
    1978:	66 0f 10 34 d3       	movupd (%rbx,%rdx,8),%xmm6
    197d:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    1981:	66 0f 58 f0          	addpd  %xmm0,%xmm6
    1985:	66 0f 10 54 d3 10    	movupd 0x10(%rbx,%rdx,8),%xmm2
    198b:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    198f:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    1993:	66 0f 10 44 d3 20    	movupd 0x20(%rbx,%rdx,8),%xmm0
    1999:	66 0f 59 c4          	mulpd  %xmm4,%xmm0
    199d:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    19a1:	66 0f 10 4c d3 30    	movupd 0x30(%rbx,%rdx,8),%xmm1
    19a7:	66 0f 59 cd          	mulpd  %xmm5,%xmm1
    19ab:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    19af:	48 83 c2 08          	add    $0x8,%rdx
    19b3:	48 83 c6 02          	add    $0x2,%rsi
    19b7:	75 a7                	jne    1960 <main+0x1f0>
    19b9:	f6 c1 01             	test   $0x1,%cl
    19bc:	74 27                	je     19e5 <main+0x275>
    19be:	66 0f 10 14 d3       	movupd (%rbx,%rdx,8),%xmm2
    19c3:	66 0f 10 5c d3 10    	movupd 0x10(%rbx,%rdx,8),%xmm3
    19c9:	66 0f 10 64 d5 00    	movupd 0x0(%rbp,%rdx,8),%xmm4
    19cf:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    19d3:	66 0f 58 c4          	addpd  %xmm4,%xmm0
    19d7:	66 0f 10 54 d5 10    	movupd 0x10(%rbp,%rdx,8),%xmm2
    19dd:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    19e1:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    19e5:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    19e9:	66 0f 28 f0          	movapd %xmm0,%xmm6
    19ed:	66 0f 15 f0          	unpckhpd %xmm0,%xmm6
    19f1:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    19f5:	eb 2e                	jmp    1a25 <main+0x2b5>
    19f7:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    19fb:	31 d2                	xor    %edx,%edx
    19fd:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1a01:	f6 c1 01             	test   $0x1,%cl
    1a04:	75 b8                	jne    19be <main+0x24e>
    1a06:	eb dd                	jmp    19e5 <main+0x275>
    1a08:	bf 01 00 00 00       	mov    $0x1,%edi
    1a0d:	e8 4e f6 ff ff       	callq  1060 <exit@plt>
    1a12:	f2 0f 10 04 c3       	movsd  (%rbx,%rax,8),%xmm0
    1a17:	f2 0f 59 44 c5 00    	mulsd  0x0(%rbp,%rax,8),%xmm0
    1a1d:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1a21:	48 83 c0 01          	add    $0x1,%rax
    1a25:	49 39 c6             	cmp    %rax,%r14
    1a28:	75 e8                	jne    1a12 <main+0x2a2>
    1a2a:	41 f6 c6 01          	test   $0x1,%r14b
    1a2e:	75 3a                	jne    1a6a <main+0x2fa>
    1a30:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1a34:	31 c0                	xor    %eax,%eax
    1a36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a3d:	00 00 00 
    1a40:	66 0f 10 44 c5 00    	movupd 0x0(%rbp,%rax,8),%xmm0
    1a46:	66 0f 10 0c c3       	movupd (%rbx,%rax,8),%xmm1
    1a4b:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
    1a4f:	66 0f 58 f9          	addpd  %xmm1,%xmm7
    1a53:	48 83 c0 02          	add    $0x2,%rax
    1a57:	4c 39 f0             	cmp    %r14,%rax
    1a5a:	72 e4                	jb     1a40 <main+0x2d0>
    1a5c:	66 0f 28 c7          	movapd %xmm7,%xmm0
    1a60:	66 0f 15 c7          	unpckhpd %xmm7,%xmm0
    1a64:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1a68:	eb 50                	jmp    1aba <main+0x34a>
    1a6a:	4c 89 f0             	mov    %r14,%rax
    1a6d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1a71:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1a75:	74 25                	je     1a9c <main+0x32c>
    1a77:	31 c9                	xor    %ecx,%ecx
    1a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a80:	66 0f 10 4c cd 00    	movupd 0x0(%rbp,%rcx,8),%xmm1
    1a86:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    1a8b:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    1a8f:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    1a93:	48 83 c1 02          	add    $0x2,%rcx
    1a97:	48 39 c1             	cmp    %rax,%rcx
    1a9a:	72 e4                	jb     1a80 <main+0x310>
    1a9c:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1aa0:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1aa4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1aa8:	f2 42 0f 10 7c f3 f8 	movsd  -0x8(%rbx,%r14,8),%xmm7
    1aaf:	f2 42 0f 59 7c f5 f8 	mulsd  -0x8(%rbp,%r14,8),%xmm7
    1ab6:	f2 0f 58 f9          	addsd  %xmm1,%xmm7
    1aba:	4d 85 f6             	test   %r14,%r14
    1abd:	66 0f 29 34 24       	movapd %xmm6,(%rsp)
    1ac2:	66 0f 29 7c 24 40    	movapd %xmm7,0x40(%rsp)
    1ac8:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1acc:	0f 84 a2 00 00 00    	je     1b74 <main+0x404>
    1ad2:	31 c0                	xor    %eax,%eax
    1ad4:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1adf:	00 
    1ae0:	f2 0f 10 14 c3       	movsd  (%rbx,%rax,8),%xmm2
    1ae5:	f2 0f 10 5c c3 08    	movsd  0x8(%rbx,%rax,8),%xmm3
    1aeb:	66 0f 16 54 c3 10    	movhpd 0x10(%rbx,%rax,8),%xmm2
    1af1:	f2 0f 10 64 c5 00    	movsd  0x0(%rbp,%rax,8),%xmm4
    1af7:	f2 0f 10 6c c5 08    	movsd  0x8(%rbp,%rax,8),%xmm5
    1afd:	66 0f 16 64 c5 10    	movhpd 0x10(%rbp,%rax,8),%xmm4
    1b03:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1b07:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    1b0b:	66 0f 16 5c c3 18    	movhpd 0x18(%rbx,%rax,8),%xmm3
    1b11:	66 0f 16 6c c5 18    	movhpd 0x18(%rbp,%rax,8),%xmm5
    1b17:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    1b1b:	66 0f 58 c5          	addpd  %xmm5,%xmm0
    1b1f:	48 83 c0 04          	add    $0x4,%rax
    1b23:	4c 39 f0             	cmp    %r14,%rax
    1b26:	72 b8                	jb     1ae0 <main+0x370>
    1b28:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1b2c:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    1b30:	41 f6 c6 03          	test   $0x3,%r14b
    1b34:	75 46                	jne    1b7c <main+0x40c>
    1b36:	49 83 fe 03          	cmp    $0x3,%r14
    1b3a:	72 40                	jb     1b7c <main+0x40c>
    1b3c:	f2 42 0f 10 5c f3 e8 	movsd  -0x18(%rbx,%r14,8),%xmm3
    1b43:	f2 42 0f 10 64 f3 f0 	movsd  -0x10(%rbx,%r14,8),%xmm4
    1b4a:	f2 42 0f 59 5c f5 e8 	mulsd  -0x18(%rbp,%r14,8),%xmm3
    1b51:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1b55:	f2 42 0f 59 64 f5 f0 	mulsd  -0x10(%rbp,%r14,8),%xmm4
    1b5c:	f2 42 0f 10 4c f3 f8 	movsd  -0x8(%rbx,%r14,8),%xmm1
    1b63:	f2 42 0f 59 4c f5 f8 	mulsd  -0x8(%rbp,%r14,8),%xmm1
    1b6a:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1b6e:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1b72:	eb 08                	jmp    1b7c <main+0x40c>
    1b74:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    1b78:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1b7c:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1b80:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1b84:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1b88:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1b8c:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1b90:	66 0f 29 4c 24 10    	movapd %xmm1,0x10(%rsp)
    1b96:	48 89 ef             	mov    %rbp,%rdi
    1b99:	48 89 de             	mov    %rbx,%rsi
    1b9c:	4c 89 f2             	mov    %r14,%rdx
    1b9f:	e8 ac f8 ff ff       	callq  1450 <dotprod_8x>
    1ba4:	f2 0f 11 44 24 30    	movsd  %xmm0,0x30(%rsp)
    1baa:	48 89 ef             	mov    %rbp,%rdi
    1bad:	48 89 de             	mov    %rbx,%rsi
    1bb0:	4c 89 f2             	mov    %r14,%rdx
    1bb3:	e8 f8 f9 ff ff       	callq  15b0 <dotprod_16x>
    1bb8:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
    1bbe:	48 8d 3d 6b 14 00 00 	lea    0x146b(%rip),%rdi        # 3030 <_IO_stdin_used+0x30>
    1bc5:	0f 28 04 24          	movaps (%rsp),%xmm0
    1bc9:	b0 01                	mov    $0x1,%al
    1bcb:	e8 70 f4 ff ff       	callq  1040 <printf@plt>
    1bd0:	48 8d 3d 64 14 00 00 	lea    0x1464(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    1bd7:	0f 28 44 24 40       	movaps 0x40(%rsp),%xmm0
    1bdc:	b0 01                	mov    $0x1,%al
    1bde:	e8 5d f4 ff ff       	callq  1040 <printf@plt>
    1be3:	4c 8d 25 5f 14 00 00 	lea    0x145f(%rip),%r12        # 3049 <_IO_stdin_used+0x49>
    1bea:	4c 89 e7             	mov    %r12,%rdi
    1bed:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    1bf2:	b0 01                	mov    $0x1,%al
    1bf4:	e8 47 f4 ff ff       	callq  1040 <printf@plt>
    1bf9:	4c 8d 2d 57 14 00 00 	lea    0x1457(%rip),%r13        # 3057 <_IO_stdin_used+0x57>
    1c00:	4c 89 ef             	mov    %r13,%rdi
    1c03:	f2 0f 10 44 24 30    	movsd  0x30(%rsp),%xmm0
    1c09:	b0 01                	mov    $0x1,%al
    1c0b:	e8 30 f4 ff ff       	callq  1040 <printf@plt>
    1c10:	4c 8d 3d 4e 14 00 00 	lea    0x144e(%rip),%r15        # 3065 <_IO_stdin_used+0x65>
    1c17:	4c 89 ff             	mov    %r15,%rdi
    1c1a:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    1c20:	b0 01                	mov    $0x1,%al
    1c22:	e8 19 f4 ff ff       	callq  1040 <printf@plt>
    1c27:	48 89 ef             	mov    %rbp,%rdi
    1c2a:	e8 01 f4 ff ff       	callq  1030 <free@plt>
    1c2f:	48 89 df             	mov    %rbx,%rdi
    1c32:	e8 f9 f3 ff ff       	callq  1030 <free@plt>
    1c37:	bf 40 00 00 00       	mov    $0x40,%edi
    1c3c:	be 20 03 00 00       	mov    $0x320,%esi
    1c41:	e8 2a f4 ff ff       	callq  1070 <aligned_alloc@plt>
    1c46:	48 89 c5             	mov    %rax,%rbp
    1c49:	bf 40 00 00 00       	mov    $0x40,%edi
    1c4e:	be 20 03 00 00       	mov    $0x320,%esi
    1c53:	e8 18 f4 ff ff       	callq  1070 <aligned_alloc@plt>
    1c58:	49 89 c6             	mov    %rax,%r14
    1c5b:	0f 28 05 ae 13 00 00 	movaps 0x13ae(%rip),%xmm0        # 3010 <_IO_stdin_used+0x10>
    1c62:	0f 29 45 00          	movaps %xmm0,0x0(%rbp)
    1c66:	0f 28 0d b3 13 00 00 	movaps 0x13b3(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
    1c6d:	0f 29 08             	movaps %xmm1,(%rax)
    1c70:	0f 29 45 10          	movaps %xmm0,0x10(%rbp)
    1c74:	0f 29 48 10          	movaps %xmm1,0x10(%rax)
    1c78:	0f 29 45 20          	movaps %xmm0,0x20(%rbp)
    1c7c:	0f 29 48 20          	movaps %xmm1,0x20(%rax)
    1c80:	0f 29 45 30          	movaps %xmm0,0x30(%rbp)
    1c84:	0f 29 48 30          	movaps %xmm1,0x30(%rax)
    1c88:	0f 29 45 40          	movaps %xmm0,0x40(%rbp)
    1c8c:	0f 29 48 40          	movaps %xmm1,0x40(%rax)
    1c90:	0f 29 45 50          	movaps %xmm0,0x50(%rbp)
    1c94:	0f 29 48 50          	movaps %xmm1,0x50(%rax)
    1c98:	0f 29 45 60          	movaps %xmm0,0x60(%rbp)
    1c9c:	0f 29 48 60          	movaps %xmm1,0x60(%rax)
    1ca0:	0f 29 45 70          	movaps %xmm0,0x70(%rbp)
    1ca4:	0f 29 48 70          	movaps %xmm1,0x70(%rax)
    1ca8:	0f 29 85 80 00 00 00 	movaps %xmm0,0x80(%rbp)
    1caf:	0f 29 88 80 00 00 00 	movaps %xmm1,0x80(%rax)
    1cb6:	0f 29 85 90 00 00 00 	movaps %xmm0,0x90(%rbp)
    1cbd:	0f 29 88 90 00 00 00 	movaps %xmm1,0x90(%rax)
    1cc4:	0f 29 85 a0 00 00 00 	movaps %xmm0,0xa0(%rbp)
    1ccb:	0f 29 88 a0 00 00 00 	movaps %xmm1,0xa0(%rax)
    1cd2:	0f 29 85 b0 00 00 00 	movaps %xmm0,0xb0(%rbp)
    1cd9:	0f 29 88 b0 00 00 00 	movaps %xmm1,0xb0(%rax)
    1ce0:	0f 29 85 c0 00 00 00 	movaps %xmm0,0xc0(%rbp)
    1ce7:	0f 29 88 c0 00 00 00 	movaps %xmm1,0xc0(%rax)
    1cee:	0f 29 85 d0 00 00 00 	movaps %xmm0,0xd0(%rbp)
    1cf5:	0f 29 88 d0 00 00 00 	movaps %xmm1,0xd0(%rax)
    1cfc:	0f 29 85 e0 00 00 00 	movaps %xmm0,0xe0(%rbp)
    1d03:	0f 29 88 e0 00 00 00 	movaps %xmm1,0xe0(%rax)
    1d0a:	0f 29 85 f0 00 00 00 	movaps %xmm0,0xf0(%rbp)
    1d11:	0f 29 88 f0 00 00 00 	movaps %xmm1,0xf0(%rax)
    1d18:	0f 29 85 00 01 00 00 	movaps %xmm0,0x100(%rbp)
    1d1f:	0f 29 88 00 01 00 00 	movaps %xmm1,0x100(%rax)
    1d26:	0f 29 85 10 01 00 00 	movaps %xmm0,0x110(%rbp)
    1d2d:	0f 29 88 10 01 00 00 	movaps %xmm1,0x110(%rax)
    1d34:	0f 29 85 20 01 00 00 	movaps %xmm0,0x120(%rbp)
    1d3b:	0f 29 88 20 01 00 00 	movaps %xmm1,0x120(%rax)
    1d42:	0f 29 85 30 01 00 00 	movaps %xmm0,0x130(%rbp)
    1d49:	0f 29 88 30 01 00 00 	movaps %xmm1,0x130(%rax)
    1d50:	0f 29 85 40 01 00 00 	movaps %xmm0,0x140(%rbp)
    1d57:	0f 29 88 40 01 00 00 	movaps %xmm1,0x140(%rax)
    1d5e:	0f 29 85 50 01 00 00 	movaps %xmm0,0x150(%rbp)
    1d65:	0f 29 88 50 01 00 00 	movaps %xmm1,0x150(%rax)
    1d6c:	0f 29 85 60 01 00 00 	movaps %xmm0,0x160(%rbp)
    1d73:	0f 29 88 60 01 00 00 	movaps %xmm1,0x160(%rax)
    1d7a:	0f 29 85 70 01 00 00 	movaps %xmm0,0x170(%rbp)
    1d81:	0f 29 88 70 01 00 00 	movaps %xmm1,0x170(%rax)
    1d88:	0f 29 85 80 01 00 00 	movaps %xmm0,0x180(%rbp)
    1d8f:	0f 29 88 80 01 00 00 	movaps %xmm1,0x180(%rax)
    1d96:	0f 29 85 90 01 00 00 	movaps %xmm0,0x190(%rbp)
    1d9d:	0f 29 88 90 01 00 00 	movaps %xmm1,0x190(%rax)
    1da4:	0f 29 85 a0 01 00 00 	movaps %xmm0,0x1a0(%rbp)
    1dab:	0f 29 88 a0 01 00 00 	movaps %xmm1,0x1a0(%rax)
    1db2:	0f 29 85 b0 01 00 00 	movaps %xmm0,0x1b0(%rbp)
    1db9:	0f 29 88 b0 01 00 00 	movaps %xmm1,0x1b0(%rax)
    1dc0:	0f 29 85 c0 01 00 00 	movaps %xmm0,0x1c0(%rbp)
    1dc7:	0f 29 88 c0 01 00 00 	movaps %xmm1,0x1c0(%rax)
    1dce:	0f 29 85 d0 01 00 00 	movaps %xmm0,0x1d0(%rbp)
    1dd5:	0f 29 88 d0 01 00 00 	movaps %xmm1,0x1d0(%rax)
    1ddc:	0f 29 85 e0 01 00 00 	movaps %xmm0,0x1e0(%rbp)
    1de3:	0f 29 88 e0 01 00 00 	movaps %xmm1,0x1e0(%rax)
    1dea:	0f 29 85 f0 01 00 00 	movaps %xmm0,0x1f0(%rbp)
    1df1:	0f 29 88 f0 01 00 00 	movaps %xmm1,0x1f0(%rax)
    1df8:	0f 29 85 00 02 00 00 	movaps %xmm0,0x200(%rbp)
    1dff:	0f 29 88 00 02 00 00 	movaps %xmm1,0x200(%rax)
    1e06:	0f 29 85 10 02 00 00 	movaps %xmm0,0x210(%rbp)
    1e0d:	0f 29 88 10 02 00 00 	movaps %xmm1,0x210(%rax)
    1e14:	0f 29 85 20 02 00 00 	movaps %xmm0,0x220(%rbp)
    1e1b:	0f 29 88 20 02 00 00 	movaps %xmm1,0x220(%rax)
    1e22:	0f 29 85 30 02 00 00 	movaps %xmm0,0x230(%rbp)
    1e29:	0f 29 88 30 02 00 00 	movaps %xmm1,0x230(%rax)
    1e30:	0f 29 85 40 02 00 00 	movaps %xmm0,0x240(%rbp)
    1e37:	0f 29 88 40 02 00 00 	movaps %xmm1,0x240(%rax)
    1e3e:	0f 29 85 50 02 00 00 	movaps %xmm0,0x250(%rbp)
    1e45:	0f 29 88 50 02 00 00 	movaps %xmm1,0x250(%rax)
    1e4c:	0f 29 85 60 02 00 00 	movaps %xmm0,0x260(%rbp)
    1e53:	0f 29 88 60 02 00 00 	movaps %xmm1,0x260(%rax)
    1e5a:	0f 29 85 70 02 00 00 	movaps %xmm0,0x270(%rbp)
    1e61:	0f 29 88 70 02 00 00 	movaps %xmm1,0x270(%rax)
    1e68:	0f 29 85 80 02 00 00 	movaps %xmm0,0x280(%rbp)
    1e6f:	0f 29 88 80 02 00 00 	movaps %xmm1,0x280(%rax)
    1e76:	0f 29 85 90 02 00 00 	movaps %xmm0,0x290(%rbp)
    1e7d:	0f 29 88 90 02 00 00 	movaps %xmm1,0x290(%rax)
    1e84:	0f 29 85 a0 02 00 00 	movaps %xmm0,0x2a0(%rbp)
    1e8b:	0f 29 88 a0 02 00 00 	movaps %xmm1,0x2a0(%rax)
    1e92:	0f 29 85 b0 02 00 00 	movaps %xmm0,0x2b0(%rbp)
    1e99:	0f 29 88 b0 02 00 00 	movaps %xmm1,0x2b0(%rax)
    1ea0:	0f 29 85 c0 02 00 00 	movaps %xmm0,0x2c0(%rbp)
    1ea7:	0f 29 88 c0 02 00 00 	movaps %xmm1,0x2c0(%rax)
    1eae:	0f 29 85 d0 02 00 00 	movaps %xmm0,0x2d0(%rbp)
    1eb5:	0f 29 88 d0 02 00 00 	movaps %xmm1,0x2d0(%rax)
    1ebc:	0f 29 85 e0 02 00 00 	movaps %xmm0,0x2e0(%rbp)
    1ec3:	0f 29 88 e0 02 00 00 	movaps %xmm1,0x2e0(%rax)
    1eca:	0f 29 85 f0 02 00 00 	movaps %xmm0,0x2f0(%rbp)
    1ed1:	0f 29 88 f0 02 00 00 	movaps %xmm1,0x2f0(%rax)
    1ed8:	0f 29 85 00 03 00 00 	movaps %xmm0,0x300(%rbp)
    1edf:	0f 29 88 00 03 00 00 	movaps %xmm1,0x300(%rax)
    1ee6:	0f 29 85 10 03 00 00 	movaps %xmm0,0x310(%rbp)
    1eed:	0f 29 88 10 03 00 00 	movaps %xmm1,0x310(%rax)
    1ef4:	66 44 0f 28 48 30    	movapd 0x30(%rax),%xmm9
    1efa:	66 44 0f 28 50 50    	movapd 0x50(%rax),%xmm10
    1f00:	66 0f 28 78 70       	movapd 0x70(%rax),%xmm7
    1f05:	66 44 0f 28 80 90 00 	movapd 0x90(%rax),%xmm8
    1f0c:	00 00 
    1f0e:	66 0f 28 b0 b0 00 00 	movapd 0xb0(%rax),%xmm6
    1f15:	00 
    1f16:	66 44 0f 28 a8 f0 00 	movapd 0xf0(%rax),%xmm13
    1f1d:	00 00 
    1f1f:	66 44 0f 28 b0 30 01 	movapd 0x130(%rax),%xmm14
    1f26:	00 00 
    1f28:	66 44 0f 28 b8 70 01 	movapd 0x170(%rax),%xmm15
    1f2f:	00 00 
    1f31:	66 44 0f 28 98 b0 01 	movapd 0x1b0(%rax),%xmm11
    1f38:	00 00 
    1f3a:	66 44 0f 28 a0 d0 01 	movapd 0x1d0(%rax),%xmm12
    1f41:	00 00 
    1f43:	66 0f 28 80 f0 01 00 	movapd 0x1f0(%rax),%xmm0
    1f4a:	00 
    1f4b:	66 0f 28 90 30 02 00 	movapd 0x230(%rax),%xmm2
    1f52:	00 
    1f53:	66 0f 28 a8 70 02 00 	movapd 0x270(%rax),%xmm5
    1f5a:	00 
    1f5b:	66 0f 28 a0 b0 02 00 	movapd 0x2b0(%rax),%xmm4
    1f62:	00 
    1f63:	66 0f 28 98 f0 02 00 	movapd 0x2f0(%rax),%xmm3
    1f6a:	00 
    1f6b:	66 0f 59 9d f0 02 00 	mulpd  0x2f0(%rbp),%xmm3
    1f72:	00 
    1f73:	66 0f 29 9c 24 e0 00 	movapd %xmm3,0xe0(%rsp)
    1f7a:	00 00 
    1f7c:	66 0f 59 a5 b0 02 00 	mulpd  0x2b0(%rbp),%xmm4
    1f83:	00 
    1f84:	66 0f 29 64 24 40    	movapd %xmm4,0x40(%rsp)
    1f8a:	66 0f 59 ad 70 02 00 	mulpd  0x270(%rbp),%xmm5
    1f91:	00 
    1f92:	66 0f 29 2c 24       	movapd %xmm5,(%rsp)
    1f97:	66 0f 59 95 30 02 00 	mulpd  0x230(%rbp),%xmm2
    1f9e:	00 
    1f9f:	66 0f 29 54 24 30    	movapd %xmm2,0x30(%rsp)
    1fa5:	66 0f 59 85 f0 01 00 	mulpd  0x1f0(%rbp),%xmm0
    1fac:	00 
    1fad:	66 0f 29 84 24 90 00 	movapd %xmm0,0x90(%rsp)
    1fb4:	00 00 
    1fb6:	66 44 0f 59 9d b0 01 	mulpd  0x1b0(%rbp),%xmm11
    1fbd:	00 00 
    1fbf:	66 44 0f 59 bd 70 01 	mulpd  0x170(%rbp),%xmm15
    1fc6:	00 00 
    1fc8:	66 44 0f 59 b5 30 01 	mulpd  0x130(%rbp),%xmm14
    1fcf:	00 00 
    1fd1:	66 44 0f 59 ad f0 00 	mulpd  0xf0(%rbp),%xmm13
    1fd8:	00 00 
    1fda:	66 0f 59 b5 b0 00 00 	mulpd  0xb0(%rbp),%xmm6
    1fe1:	00 
    1fe2:	66 0f 59 7d 70       	mulpd  0x70(%rbp),%xmm7
    1fe7:	66 44 0f 59 4d 30    	mulpd  0x30(%rbp),%xmm9
    1fed:	66 44 0f 29 8c 24 e0 	movapd %xmm9,0x1e0(%rsp)
    1ff4:	01 00 00 
    1ff7:	66 44 0f 59 a5 d0 01 	mulpd  0x1d0(%rbp),%xmm12
    1ffe:	00 00 
    2000:	66 44 0f 29 64 24 70 	movapd %xmm12,0x70(%rsp)
    2007:	66 44 0f 59 85 90 00 	mulpd  0x90(%rbp),%xmm8
    200e:	00 00 
    2010:	66 41 0f 28 d2       	movapd %xmm10,%xmm2
    2015:	66 0f 59 55 50       	mulpd  0x50(%rbp),%xmm2
    201a:	66 0f 29 54 24 10    	movapd %xmm2,0x10(%rsp)
    2020:	66 44 0f 28 90 80 00 	movapd 0x80(%rax),%xmm10
    2027:	00 00 
    2029:	66 44 0f 59 95 80 00 	mulpd  0x80(%rbp),%xmm10
    2030:	00 00 
    2032:	66 0f 58 d7          	addpd  %xmm7,%xmm2
    2036:	66 0f 29 54 24 20    	movapd %xmm2,0x20(%rsp)
    203c:	66 41 0f 28 ea       	movapd %xmm10,%xmm5
    2041:	66 41 0f 28 da       	movapd %xmm10,%xmm3
    2046:	66 44 0f 58 d7       	addpd  %xmm7,%xmm10
    204b:	66 0f 28 90 a0 00 00 	movapd 0xa0(%rax),%xmm2
    2052:	00 
    2053:	66 0f 59 95 a0 00 00 	mulpd  0xa0(%rbp),%xmm2
    205a:	00 
    205b:	66 41 0f 58 f9       	addpd  %xmm9,%xmm7
    2060:	66 0f 28 a0 c0 00 00 	movapd 0xc0(%rax),%xmm4
    2067:	00 
    2068:	66 0f 59 a5 c0 00 00 	mulpd  0xc0(%rbp),%xmm4
    206f:	00 
    2070:	66 0f 58 ec          	addpd  %xmm4,%xmm5
    2074:	66 0f 29 6c 24 60    	movapd %xmm5,0x60(%rsp)
    207a:	66 41 0f 28 c8       	movapd %xmm8,%xmm1
    207f:	66 44 0f 29 84 24 80 	movapd %xmm8,0x80(%rsp)
    2086:	00 00 00 
    2089:	66 41 0f 28 c0       	movapd %xmm8,%xmm0
    208e:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2092:	66 0f 29 84 24 00 02 	movapd %xmm0,0x200(%rsp)
    2099:	00 00 
    209b:	66 0f 58 da          	addpd  %xmm2,%xmm3
    209f:	66 0f 58 dc          	addpd  %xmm4,%xmm3
    20a3:	66 0f 29 9c 24 f0 01 	movapd %xmm3,0x1f0(%rsp)
    20aa:	00 00 
    20ac:	66 0f 58 e6          	addpd  %xmm6,%xmm4
    20b0:	66 44 0f 28 a0 90 01 	movapd 0x190(%rax),%xmm12
    20b7:	00 00 
    20b9:	66 44 0f 59 a5 90 01 	mulpd  0x190(%rbp),%xmm12
    20c0:	00 00 
    20c2:	66 41 0f 58 f5       	addpd  %xmm13,%xmm6
    20c7:	66 44 0f 28 88 10 01 	movapd 0x110(%rax),%xmm9
    20ce:	00 00 
    20d0:	66 44 0f 59 8d 10 01 	mulpd  0x110(%rbp),%xmm9
    20d7:	00 00 
    20d9:	66 0f 58 f7          	addpd  %xmm7,%xmm6
    20dd:	66 0f 28 80 d0 00 00 	movapd 0xd0(%rax),%xmm0
    20e4:	00 
    20e5:	66 0f 59 85 d0 00 00 	mulpd  0xd0(%rbp),%xmm0
    20ec:	00 
    20ed:	66 44 0f 28 80 20 01 	movapd 0x120(%rax),%xmm8
    20f4:	00 00 
    20f6:	66 44 0f 59 85 20 01 	mulpd  0x120(%rbp),%xmm8
    20fd:	00 00 
    20ff:	66 0f 28 98 e0 00 00 	movapd 0xe0(%rax),%xmm3
    2106:	00 
    2107:	66 0f 59 9d e0 00 00 	mulpd  0xe0(%rbp),%xmm3
    210e:	00 
    210f:	66 41 0f 28 ea       	movapd %xmm10,%xmm5
    2114:	66 0f 58 e9          	addpd  %xmm1,%xmm5
    2118:	66 0f 58 ea          	addpd  %xmm2,%xmm5
    211c:	66 0f 29 ac 24 20 02 	movapd %xmm5,0x220(%rsp)
    2123:	00 00 
    2125:	66 0f 58 d3          	addpd  %xmm3,%xmm2
    2129:	66 0f 29 94 24 a0 00 	movapd %xmm2,0xa0(%rsp)
    2130:	00 00 
    2132:	66 0f 28 90 00 01 00 	movapd 0x100(%rax),%xmm2
    2139:	00 
    213a:	66 0f 59 95 00 01 00 	mulpd  0x100(%rbp),%xmm2
    2141:	00 
    2142:	66 0f 58 e0          	addpd  %xmm0,%xmm4
    2146:	66 0f 29 84 24 20 01 	movapd %xmm0,0x120(%rsp)
    214d:	00 00 
    214f:	66 0f 58 e3          	addpd  %xmm3,%xmm4
    2153:	66 0f 58 da          	addpd  %xmm2,%xmm3
    2157:	66 0f 28 fb          	movapd %xmm3,%xmm7
    215b:	66 41 0f 58 e5       	addpd  %xmm13,%xmm4
    2160:	66 0f 29 a4 24 10 02 	movapd %xmm4,0x210(%rsp)
    2167:	00 00 
    2169:	66 45 0f 58 e9       	addpd  %xmm9,%xmm13
    216e:	66 45 0f 58 ee       	addpd  %xmm14,%xmm13
    2173:	66 44 0f 29 ac 24 c0 	movapd %xmm13,0x1c0(%rsp)
    217a:	01 00 00 
    217d:	66 0f 29 54 24 50    	movapd %xmm2,0x50(%rsp)
    2183:	66 41 0f 58 d1       	addpd  %xmm9,%xmm2
    2188:	66 41 0f 58 d0       	addpd  %xmm8,%xmm2
    218d:	66 41 0f 58 d6       	addpd  %xmm14,%xmm2
    2192:	66 0f 29 94 24 d0 01 	movapd %xmm2,0x1d0(%rsp)
    2199:	00 00 
    219b:	66 0f 28 a0 e0 01 00 	movapd 0x1e0(%rax),%xmm4
    21a2:	00 
    21a3:	66 0f 59 a5 e0 01 00 	mulpd  0x1e0(%rbp),%xmm4
    21aa:	00 
    21ab:	66 45 0f 58 f7       	addpd  %xmm15,%xmm14
    21b0:	66 0f 28 88 a0 01 00 	movapd 0x1a0(%rax),%xmm1
    21b7:	00 
    21b8:	66 0f 59 8d a0 01 00 	mulpd  0x1a0(%rbp),%xmm1
    21bf:	00 
    21c0:	66 44 0f 28 e9       	movapd %xmm1,%xmm13
    21c5:	66 0f 29 8c 24 50 01 	movapd %xmm1,0x150(%rsp)
    21cc:	00 00 
    21ce:	66 44 0f 29 9c 24 40 	movapd %xmm11,0x140(%rsp)
    21d5:	01 00 00 
    21d8:	66 45 0f 58 f3       	addpd  %xmm11,%xmm14
    21dd:	66 0f 28 a8 60 01 00 	movapd 0x160(%rax),%xmm5
    21e4:	00 
    21e5:	66 0f 59 ad 60 01 00 	mulpd  0x160(%rbp),%xmm5
    21ec:	00 
    21ed:	66 44 0f 58 f6       	addpd  %xmm6,%xmm14
    21f2:	66 0f 28 88 c0 01 00 	movapd 0x1c0(%rax),%xmm1
    21f9:	00 
    21fa:	66 0f 59 8d c0 01 00 	mulpd  0x1c0(%rbp),%xmm1
    2201:	00 
    2202:	66 0f 29 8c 24 80 01 	movapd %xmm1,0x180(%rsp)
    2209:	00 00 
    220b:	66 41 0f 58 f8       	addpd  %xmm8,%xmm7
    2210:	66 0f 29 bc 24 b0 01 	movapd %xmm7,0x1b0(%rsp)
    2217:	00 00 
    2219:	66 45 0f 28 d0       	movapd %xmm8,%xmm10
    221e:	66 0f 28 b0 80 01 00 	movapd 0x180(%rax),%xmm6
    2225:	00 
    2226:	66 0f 59 b5 80 01 00 	mulpd  0x180(%rbp),%xmm6
    222d:	00 
    222e:	66 0f 29 b4 24 b0 00 	movapd %xmm6,0xb0(%rsp)
    2235:	00 00 
    2237:	66 44 0f 58 d5       	addpd  %xmm5,%xmm10
    223c:	66 0f 28 d5          	movapd %xmm5,%xmm2
    2240:	66 0f 58 d6          	addpd  %xmm6,%xmm2
    2244:	66 41 0f 58 ef       	addpd  %xmm15,%xmm5
    2249:	66 41 0f 28 f7       	movapd %xmm15,%xmm6
    224e:	66 41 0f 58 f4       	addpd  %xmm12,%xmm6
    2253:	66 41 0f 58 f3       	addpd  %xmm11,%xmm6
    2258:	66 41 0f 58 d5       	addpd  %xmm13,%xmm2
    225d:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    2261:	66 44 0f 28 7c 24 70 	movapd 0x70(%rsp),%xmm15
    2268:	66 41 0f 58 f7       	addpd  %xmm15,%xmm6
    226d:	66 0f 28 8c 24 90 00 	movapd 0x90(%rsp),%xmm1
    2274:	00 00 
    2276:	66 0f 58 f1          	addpd  %xmm1,%xmm6
    227a:	66 0f 29 b4 24 90 01 	movapd %xmm6,0x190(%rsp)
    2281:	00 00 
    2283:	66 0f 58 d4          	addpd  %xmm4,%xmm2
    2287:	66 0f 29 94 24 a0 01 	movapd %xmm2,0x1a0(%rsp)
    228e:	00 00 
    2290:	66 0f 28 d4          	movapd %xmm4,%xmm2
    2294:	66 41 0f 58 e7       	addpd  %xmm15,%xmm4
    2299:	66 0f 58 e1          	addpd  %xmm1,%xmm4
    229d:	66 0f 28 74 24 30    	movapd 0x30(%rsp),%xmm6
    22a3:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    22a7:	66 0f 28 b0 90 02 00 	movapd 0x290(%rax),%xmm6
    22ae:	00 
    22af:	66 0f 59 b5 90 02 00 	mulpd  0x290(%rbp),%xmm6
    22b6:	00 
    22b7:	66 44 0f 28 ee       	movapd %xmm6,%xmm13
    22bc:	66 0f 29 b4 24 d0 00 	movapd %xmm6,0xd0(%rsp)
    22c3:	00 00 
    22c5:	66 0f 58 0c 24       	addpd  (%rsp),%xmm1
    22ca:	66 0f 28 78 10       	movapd 0x10(%rax),%xmm7
    22cf:	66 0f 59 7d 10       	mulpd  0x10(%rbp),%xmm7
    22d4:	66 0f 29 bc 24 90 00 	movapd %xmm7,0x90(%rsp)
    22db:	00 00 
    22dd:	66 0f 58 4c 24 40    	addpd  0x40(%rsp),%xmm1
    22e3:	66 44 0f 28 58 40    	movapd 0x40(%rax),%xmm11
    22e9:	66 44 0f 59 5d 40    	mulpd  0x40(%rbp),%xmm11
    22ef:	66 41 0f 58 ce       	addpd  %xmm14,%xmm1
    22f4:	66 44 0f 29 9c 24 00 	movapd %xmm11,0x100(%rsp)
    22fb:	01 00 00 
    22fe:	66 45 0f 28 f3       	movapd %xmm11,%xmm14
    2303:	66 0f 28 5c 24 10    	movapd 0x10(%rsp),%xmm3
    2309:	66 44 0f 58 db       	addpd  %xmm3,%xmm11
    230e:	66 0f 58 df          	addpd  %xmm7,%xmm3
    2312:	66 0f 28 b4 24 80 00 	movapd 0x80(%rsp),%xmm6
    2319:	00 00 
    231b:	66 0f 58 f0          	addpd  %xmm0,%xmm6
    231f:	66 0f 58 f3          	addpd  %xmm3,%xmm6
    2323:	66 44 0f 28 80 50 02 	movapd 0x250(%rax),%xmm8
    232a:	00 00 
    232c:	66 44 0f 59 85 50 02 	mulpd  0x250(%rbp),%xmm8
    2333:	00 00 
    2335:	66 44 0f 29 84 24 c0 	movapd %xmm8,0xc0(%rsp)
    233c:	00 00 00 
    233f:	66 0f 28 b8 10 02 00 	movapd 0x210(%rax),%xmm7
    2346:	00 
    2347:	66 0f 59 bd 10 02 00 	mulpd  0x210(%rbp),%xmm7
    234e:	00 
    234f:	66 0f 29 bc 24 30 01 	movapd %xmm7,0x130(%rsp)
    2356:	00 00 
    2358:	66 0f 28 98 50 01 00 	movapd 0x150(%rax),%xmm3
    235f:	00 
    2360:	66 0f 59 9d 50 01 00 	mulpd  0x150(%rbp),%xmm3
    2367:	00 
    2368:	66 0f 29 9c 24 80 00 	movapd %xmm3,0x80(%rsp)
    236f:	00 00 
    2371:	66 41 0f 28 c1       	movapd %xmm9,%xmm0
    2376:	66 0f 58 c3          	addpd  %xmm3,%xmm0
    237a:	66 41 0f 58 c4       	addpd  %xmm12,%xmm0
    237f:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2383:	66 45 0f 28 cf       	movapd %xmm15,%xmm9
    2388:	66 44 0f 58 cf       	addpd  %xmm7,%xmm9
    238d:	66 45 0f 58 c8       	addpd  %xmm8,%xmm9
    2392:	66 45 0f 58 cd       	addpd  %xmm13,%xmm9
    2397:	66 44 0f 58 c8       	addpd  %xmm0,%xmm9
    239c:	66 0f 28 80 d0 02 00 	movapd 0x2d0(%rax),%xmm0
    23a3:	00 
    23a4:	66 0f 59 85 d0 02 00 	mulpd  0x2d0(%rbp),%xmm0
    23ab:	00 
    23ac:	66 0f 29 84 24 70 01 	movapd %xmm0,0x170(%rsp)
    23b3:	00 00 
    23b5:	66 0f 58 8c 24 e0 00 	addpd  0xe0(%rsp),%xmm1
    23bc:	00 00 
    23be:	66 44 0f 58 c8       	addpd  %xmm0,%xmm9
    23c3:	66 41 0f 28 c1       	movapd %xmm9,%xmm0
    23c8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    23cc:	66 0f 28 d8          	movapd %xmm0,%xmm3
    23d0:	66 0f 28 80 30 03 00 	movapd 0x330(%rax),%xmm0
    23d7:	00 
    23d8:	66 0f 59 85 30 03 00 	mulpd  0x330(%rbp),%xmm0
    23df:	00 
    23e0:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    23e4:	66 0f 29 44 24 10    	movapd %xmm0,0x10(%rsp)
    23ea:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    23ee:	66 41 0f 28 c1       	movapd %xmm9,%xmm0
    23f3:	66 41 0f 15 c1       	unpckhpd %xmm9,%xmm0
    23f8:	66 0f 28 70 60       	movapd 0x60(%rax),%xmm6
    23fd:	66 0f 59 75 60       	mulpd  0x60(%rbp),%xmm6
    2402:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2406:	66 44 0f 28 68 20    	movapd 0x20(%rax),%xmm13
    240c:	66 44 0f 59 6d 20    	mulpd  0x20(%rbp),%xmm13
    2412:	66 0f 14 d8          	unpcklpd %xmm0,%xmm3
    2416:	66 0f 29 9c 24 60 01 	movapd %xmm3,0x160(%rsp)
    241d:	00 00 
    241f:	66 44 0f 58 f6       	addpd  %xmm6,%xmm14
    2424:	66 44 0f 29 b4 24 f0 	movapd %xmm14,0xf0(%rsp)
    242b:	00 00 00 
    242e:	66 44 0f 58 de       	addpd  %xmm6,%xmm11
    2433:	66 44 0f 29 9c 24 10 	movapd %xmm11,0x110(%rsp)
    243a:	01 00 00 
    243d:	66 41 0f 58 f5       	addpd  %xmm13,%xmm6
    2442:	66 0f 28 8c 24 a0 00 	movapd 0xa0(%rsp),%xmm1
    2449:	00 00 
    244b:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    244f:	66 0f 28 b0 a0 02 00 	movapd 0x2a0(%rax),%xmm6
    2456:	00 
    2457:	66 0f 59 b5 a0 02 00 	mulpd  0x2a0(%rbp),%xmm6
    245e:	00 
    245f:	66 0f 29 b4 24 a0 00 	movapd %xmm6,0xa0(%rsp)
    2466:	00 00 
    2468:	66 0f 28 80 60 02 00 	movapd 0x260(%rax),%xmm0
    246f:	00 
    2470:	66 0f 59 85 60 02 00 	mulpd  0x260(%rbp),%xmm0
    2477:	00 
    2478:	66 0f 28 9c 24 50 01 	movapd 0x150(%rsp),%xmm3
    247f:	00 00 
    2481:	66 44 0f 58 d3       	addpd  %xmm3,%xmm10
    2486:	66 44 0f 58 d1       	addpd  %xmm1,%xmm10
    248b:	66 0f 28 88 20 02 00 	movapd 0x220(%rax),%xmm1
    2492:	00 
    2493:	66 0f 59 8d 20 02 00 	mulpd  0x220(%rbp),%xmm1
    249a:	00 
    249b:	66 0f 29 4c 24 70    	movapd %xmm1,0x70(%rsp)
    24a1:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    24a5:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    24a9:	66 0f 58 d6          	addpd  %xmm6,%xmm2
    24ad:	66 41 0f 58 d2       	addpd  %xmm10,%xmm2
    24b2:	66 44 0f 28 30       	movapd (%rax),%xmm14
    24b7:	66 44 0f 59 75 00    	mulpd  0x0(%rbp),%xmm14
    24bd:	66 0f 28 8c 24 00 01 	movapd 0x100(%rsp),%xmm1
    24c4:	00 00 
    24c6:	66 41 0f 58 ce       	addpd  %xmm14,%xmm1
    24cb:	66 44 0f 28 54 24 60 	movapd 0x60(%rsp),%xmm10
    24d2:	66 44 0f 58 d1       	addpd  %xmm1,%xmm10
    24d7:	66 0f 28 b0 40 01 00 	movapd 0x140(%rax),%xmm6
    24de:	00 
    24df:	66 0f 59 b5 40 01 00 	mulpd  0x140(%rbp),%xmm6
    24e6:	00 
    24e7:	66 0f 29 74 24 60    	movapd %xmm6,0x60(%rsp)
    24ed:	66 0f 28 4c 24 50    	movapd 0x50(%rsp),%xmm1
    24f3:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    24f7:	66 0f 28 b4 24 b0 00 	movapd 0xb0(%rsp),%xmm6
    24fe:	00 00 
    2500:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2504:	66 41 0f 58 ca       	addpd  %xmm10,%xmm1
    2509:	66 0f 58 ee          	addpd  %xmm6,%xmm5
    250d:	66 41 0f 58 ec       	addpd  %xmm12,%xmm5
    2512:	66 0f 28 b0 80 02 00 	movapd 0x280(%rax),%xmm6
    2519:	00 
    251a:	66 0f 59 b5 80 02 00 	mulpd  0x280(%rbp),%xmm6
    2521:	00 
    2522:	66 0f 29 b4 24 b0 00 	movapd %xmm6,0xb0(%rsp)
    2529:	00 00 
    252b:	66 0f 58 eb          	addpd  %xmm3,%xmm5
    252f:	66 0f 28 98 40 02 00 	movapd 0x240(%rax),%xmm3
    2536:	00 
    2537:	66 0f 59 9d 40 02 00 	mulpd  0x240(%rbp),%xmm3
    253e:	00 
    253f:	66 0f 29 5c 24 50    	movapd %xmm3,0x50(%rsp)
    2545:	66 0f 58 ac 24 40 01 	addpd  0x140(%rsp),%xmm5
    254c:	00 00 
    254e:	66 44 0f 28 98 00 02 	movapd 0x200(%rax),%xmm11
    2555:	00 00 
    2557:	66 44 0f 59 9d 00 02 	mulpd  0x200(%rbp),%xmm11
    255e:	00 00 
    2560:	66 0f 28 bc 24 80 01 	movapd 0x180(%rsp),%xmm7
    2567:	00 00 
    2569:	66 0f 58 ef          	addpd  %xmm7,%xmm5
    256d:	66 41 0f 58 fb       	addpd  %xmm11,%xmm7
    2572:	66 0f 58 fb          	addpd  %xmm3,%xmm7
    2576:	66 0f 58 fe          	addpd  %xmm6,%xmm7
    257a:	66 0f 58 f9          	addpd  %xmm1,%xmm7
    257e:	66 0f 28 88 e0 02 00 	movapd 0x2e0(%rax),%xmm1
    2585:	00 
    2586:	66 0f 59 8d e0 02 00 	mulpd  0x2e0(%rbp),%xmm1
    258d:	00 
    258e:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    2592:	66 44 0f 28 a0 c0 02 	movapd 0x2c0(%rax),%xmm12
    2599:	00 00 
    259b:	66 44 0f 59 a5 c0 02 	mulpd  0x2c0(%rbp),%xmm12
    25a2:	00 00 
    25a4:	66 41 0f 58 fc       	addpd  %xmm12,%xmm7
    25a9:	66 44 0f 28 80 20 03 	movapd 0x320(%rax),%xmm8
    25b0:	00 00 
    25b2:	66 44 0f 59 85 20 03 	mulpd  0x320(%rbp),%xmm8
    25b9:	00 00 
    25bb:	66 44 0f 28 d7       	movapd %xmm7,%xmm10
    25c0:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
    25c5:	66 44 0f 58 c2       	addpd  %xmm2,%xmm8
    25ca:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    25ce:	66 0f 28 f7          	movapd %xmm7,%xmm6
    25d2:	66 0f 15 f7          	unpckhpd %xmm7,%xmm6
    25d6:	f2 0f 58 f2          	addsd  %xmm2,%xmm6
    25da:	66 44 0f 14 d6       	unpcklpd %xmm6,%xmm10
    25df:	66 41 0f 28 d5       	movapd %xmm13,%xmm2
    25e4:	66 0f 28 b4 24 e0 01 	movapd 0x1e0(%rsp),%xmm6
    25eb:	00 00 
    25ed:	66 44 0f 58 ee       	addpd  %xmm6,%xmm13
    25f2:	66 0f 58 b4 24 90 00 	addpd  0x90(%rsp),%xmm6
    25f9:	00 00 
    25fb:	66 44 0f 28 7c 24 20 	movapd 0x20(%rsp),%xmm15
    2602:	66 44 0f 58 fe       	addpd  %xmm6,%xmm15
    2607:	66 44 0f 29 7c 24 20 	movapd %xmm15,0x20(%rsp)
    260e:	66 41 0f 58 d6       	addpd  %xmm14,%xmm2
    2613:	66 0f 28 9c 24 f0 00 	movapd 0xf0(%rsp),%xmm3
    261a:	00 00 
    261c:	66 0f 58 da          	addpd  %xmm2,%xmm3
    2620:	66 0f 28 b4 24 f0 01 	movapd 0x1f0(%rsp),%xmm6
    2627:	00 00 
    2629:	66 0f 58 f3          	addpd  %xmm3,%xmm6
    262d:	66 0f 28 94 24 00 02 	movapd 0x200(%rsp),%xmm2
    2634:	00 00 
    2636:	66 0f 58 94 24 20 01 	addpd  0x120(%rsp),%xmm2
    263d:	00 00 
    263f:	66 0f 58 54 24 20    	addpd  0x20(%rsp),%xmm2
    2645:	66 0f 28 9c 24 b0 01 	movapd 0x1b0(%rsp),%xmm3
    264c:	00 00 
    264e:	66 0f 58 5c 24 60    	addpd  0x60(%rsp),%xmm3
    2654:	66 0f 58 de          	addpd  %xmm6,%xmm3
    2658:	66 44 0f 28 fb       	movapd %xmm3,%xmm15
    265d:	66 0f 28 b4 24 c0 01 	movapd 0x1c0(%rsp),%xmm6
    2664:	00 00 
    2666:	66 0f 58 b4 24 80 00 	addpd  0x80(%rsp),%xmm6
    266d:	00 00 
    266f:	66 0f 58 f2          	addpd  %xmm2,%xmm6
    2673:	66 0f 28 94 24 90 01 	movapd 0x190(%rsp),%xmm2
    267a:	00 00 
    267c:	66 0f 58 d6          	addpd  %xmm6,%xmm2
    2680:	66 0f 28 9c 24 a0 01 	movapd 0x1a0(%rsp),%xmm3
    2687:	00 00 
    2689:	66 41 0f 58 df       	addpd  %xmm15,%xmm3
    268e:	66 41 0f 58 e3       	addpd  %xmm11,%xmm4
    2693:	66 0f 28 b4 24 30 01 	movapd 0x130(%rsp),%xmm6
    269a:	00 00 
    269c:	66 0f 58 e6          	addpd  %xmm6,%xmm4
    26a0:	66 0f 58 74 24 30    	addpd  0x30(%rsp),%xmm6
    26a6:	66 0f 58 b4 24 c0 00 	addpd  0xc0(%rsp),%xmm6
    26ad:	00 00 
    26af:	66 0f 58 34 24       	addpd  (%rsp),%xmm6
    26b4:	66 0f 58 b4 24 d0 00 	addpd  0xd0(%rsp),%xmm6
    26bb:	00 00 
    26bd:	66 0f 58 74 24 40    	addpd  0x40(%rsp),%xmm6
    26c3:	66 0f 58 f2          	addpd  %xmm2,%xmm6
    26c7:	66 44 0f 58 5c 24 70 	addpd  0x70(%rsp),%xmm11
    26ce:	66 44 0f 58 5c 24 50 	addpd  0x50(%rsp),%xmm11
    26d5:	66 44 0f 58 d8       	addpd  %xmm0,%xmm11
    26da:	66 0f 28 94 24 b0 00 	movapd 0xb0(%rsp),%xmm2
    26e1:	00 00 
    26e3:	66 44 0f 58 da       	addpd  %xmm2,%xmm11
    26e8:	66 44 0f 28 bc 24 a0 	movapd 0xa0(%rsp),%xmm15
    26ef:	00 00 00 
    26f2:	66 45 0f 58 df       	addpd  %xmm15,%xmm11
    26f7:	66 44 0f 58 db       	addpd  %xmm3,%xmm11
    26fc:	66 0f 58 84 24 c0 00 	addpd  0xc0(%rsp),%xmm0
    2703:	00 00 
    2705:	66 0f 58 04 24       	addpd  (%rsp),%xmm0
    270a:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    270e:	66 0f 58 84 24 d0 00 	addpd  0xd0(%rsp),%xmm0
    2715:	00 00 
    2717:	66 41 0f 58 c7       	addpd  %xmm15,%xmm0
    271c:	66 0f 58 44 24 40    	addpd  0x40(%rsp),%xmm0
    2722:	66 0f 28 90 00 03 00 	movapd 0x300(%rax),%xmm2
    2729:	00 
    272a:	66 0f 59 95 00 03 00 	mulpd  0x300(%rbp),%xmm2
    2731:	00 
    2732:	66 41 0f 58 c4       	addpd  %xmm12,%xmm0
    2737:	66 44 0f 58 e1       	addpd  %xmm1,%xmm12
    273c:	66 44 0f 58 e2       	addpd  %xmm2,%xmm12
    2741:	66 45 0f 58 e3       	addpd  %xmm11,%xmm12
    2746:	66 0f 28 9c 24 70 01 	movapd 0x170(%rsp),%xmm3
    274d:	00 00 
    274f:	66 0f 58 c3          	addpd  %xmm3,%xmm0
    2753:	66 44 0f 28 9c 24 e0 	movapd 0xe0(%rsp),%xmm11
    275a:	00 00 00 
    275d:	66 41 0f 58 db       	addpd  %xmm11,%xmm3
    2762:	66 44 0f 28 bd 10 03 	movapd 0x310(%rbp),%xmm15
    2769:	00 00 
    276b:	66 41 0f 58 df       	addpd  %xmm15,%xmm3
    2770:	66 0f 58 de          	addpd  %xmm6,%xmm3
    2774:	66 0f 29 1c 24       	movapd %xmm3,(%rsp)
    2779:	66 44 0f 58 b4 24 90 	addpd  0x90(%rsp),%xmm14
    2780:	00 00 00 
    2783:	66 45 0f 58 ee       	addpd  %xmm14,%xmm13
    2788:	66 0f 28 b4 24 10 01 	movapd 0x110(%rsp),%xmm6
    278f:	00 00 
    2791:	66 41 0f 58 f5       	addpd  %xmm13,%xmm6
    2796:	66 0f 28 9c 24 20 02 	movapd 0x220(%rsp),%xmm3
    279d:	00 00 
    279f:	66 0f 58 de          	addpd  %xmm6,%xmm3
    27a3:	66 0f 28 b4 24 10 02 	movapd 0x210(%rsp),%xmm6
    27aa:	00 00 
    27ac:	66 0f 58 f3          	addpd  %xmm3,%xmm6
    27b0:	66 0f 28 9c 24 d0 01 	movapd 0x1d0(%rsp),%xmm3
    27b7:	00 00 
    27b9:	66 0f 58 5c 24 60    	addpd  0x60(%rsp),%xmm3
    27bf:	66 0f 58 9c 24 80 00 	addpd  0x80(%rsp),%xmm3
    27c6:	00 00 
    27c8:	66 0f 58 de          	addpd  %xmm6,%xmm3
    27cc:	66 0f 58 eb          	addpd  %xmm3,%xmm5
    27d0:	66 0f 58 64 24 70    	addpd  0x70(%rsp),%xmm4
    27d6:	66 0f 58 64 24 30    	addpd  0x30(%rsp),%xmm4
    27dc:	66 0f 58 64 24 50    	addpd  0x50(%rsp),%xmm4
    27e2:	66 0f 58 e5          	addpd  %xmm5,%xmm4
    27e6:	66 0f 58 c4          	addpd  %xmm4,%xmm0
    27ea:	66 41 0f 58 cb       	addpd  %xmm11,%xmm1
    27ef:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    27f3:	66 41 0f 58 cf       	addpd  %xmm15,%xmm1
    27f8:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    27fc:	66 44 0f 58 d2       	addpd  %xmm2,%xmm10
    2801:	66 0f 58 d7          	addpd  %xmm7,%xmm2
    2805:	66 0f 28 1c 24       	movapd (%rsp),%xmm3
    280a:	66 0f 28 c3          	movapd %xmm3,%xmm0
    280e:	66 0f 15 c3          	unpckhpd %xmm3,%xmm0
    2812:	f2 41 0f 58 dc       	addsd  %xmm12,%xmm3
    2817:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    281c:	f2 44 0f 58 e0       	addsd  %xmm0,%xmm12
    2821:	f2 41 0f 58 dc       	addsd  %xmm12,%xmm3
    2826:	66 0f 29 1c 24       	movapd %xmm3,(%rsp)
    282b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    282f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    2833:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    2837:	66 0f 29 44 24 40    	movapd %xmm0,0x40(%rsp)
    283d:	66 41 0f 28 c2       	movapd %xmm10,%xmm0
    2842:	66 41 0f 15 c2       	unpckhpd %xmm10,%xmm0
    2847:	f2 41 0f 58 c2       	addsd  %xmm10,%xmm0
    284c:	66 0f 28 8c 24 60 01 	movapd 0x160(%rsp),%xmm1
    2853:	00 00 
    2855:	66 41 0f 58 cf       	addpd  %xmm15,%xmm1
    285a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    285e:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    2862:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    2866:	f2 0f 10 80 08 03 00 	movsd  0x308(%rax),%xmm0
    286d:	00 
    286e:	f2 0f 59 85 08 03 00 	mulsd  0x308(%rbp),%xmm0
    2875:	00 
    2876:	66 45 0f 58 cf       	addpd  %xmm15,%xmm9
    287b:	f2 41 0f 58 c7       	addsd  %xmm15,%xmm0
    2880:	66 45 0f 15 ff       	unpckhpd %xmm15,%xmm15
    2885:	f2 44 0f 58 f8       	addsd  %xmm0,%xmm15
    288a:	f2 44 0f 58 f9       	addsd  %xmm1,%xmm15
    288f:	66 44 0f 29 7c 24 30 	movapd %xmm15,0x30(%rsp)
    2896:	66 0f 28 c2          	movapd %xmm2,%xmm0
    289a:	66 0f 15 c2          	unpckhpd %xmm2,%xmm0
    289e:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    28a2:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    28a7:	66 45 0f 15 c9       	unpckhpd %xmm9,%xmm9
    28ac:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
    28b1:	f2 45 0f 58 c8       	addsd  %xmm8,%xmm9
    28b6:	66 45 0f 15 c0       	unpckhpd %xmm8,%xmm8
    28bb:	f2 45 0f 58 c1       	addsd  %xmm9,%xmm8
    28c0:	66 0f 28 44 24 10    	movapd 0x10(%rsp),%xmm0
    28c6:	f2 44 0f 58 c0       	addsd  %xmm0,%xmm8
    28cb:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    28cf:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    28d4:	66 0f 29 44 24 10    	movapd %xmm0,0x10(%rsp)
    28da:	ba 64 00 00 00       	mov    $0x64,%edx
    28df:	48 89 ef             	mov    %rbp,%rdi
    28e2:	48 89 c6             	mov    %rax,%rsi
    28e5:	e8 c6 ec ff ff       	callq  15b0 <dotprod_16x>
    28ea:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
    28f0:	48 8d 3d 39 07 00 00 	lea    0x739(%rip),%rdi        # 3030 <_IO_stdin_used+0x30>
    28f7:	0f 28 44 24 40       	movaps 0x40(%rsp),%xmm0
    28fc:	b0 01                	mov    $0x1,%al
    28fe:	e8 3d e7 ff ff       	callq  1040 <printf@plt>
    2903:	48 8d 3d 31 07 00 00 	lea    0x731(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    290a:	0f 28 04 24          	movaps (%rsp),%xmm0
    290e:	b0 01                	mov    $0x1,%al
    2910:	e8 2b e7 ff ff       	callq  1040 <printf@plt>
    2915:	4c 89 e7             	mov    %r12,%rdi
    2918:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    291d:	b0 01                	mov    $0x1,%al
    291f:	e8 1c e7 ff ff       	callq  1040 <printf@plt>
    2924:	4c 89 ef             	mov    %r13,%rdi
    2927:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    292c:	b0 01                	mov    $0x1,%al
    292e:	e8 0d e7 ff ff       	callq  1040 <printf@plt>
    2933:	4c 89 ff             	mov    %r15,%rdi
    2936:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    293c:	b0 01                	mov    $0x1,%al
    293e:	e8 fd e6 ff ff       	callq  1040 <printf@plt>
    2943:	48 89 ef             	mov    %rbp,%rdi
    2946:	e8 e5 e6 ff ff       	callq  1030 <free@plt>
    294b:	4c 89 f7             	mov    %r14,%rdi
    294e:	e8 dd e6 ff ff       	callq  1030 <free@plt>
    2953:	31 c0                	xor    %eax,%eax
    2955:	48 81 c4 38 02 00 00 	add    $0x238,%rsp
    295c:	5b                   	pop    %rbx
    295d:	41 5c                	pop    %r12
    295f:	41 5d                	pop    %r13
    2961:	41 5e                	pop    %r14
    2963:	41 5f                	pop    %r15
    2965:	5d                   	pop    %rbp
    2966:	c3                   	retq   
    2967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    296e:	00 00 

0000000000002970 <__libc_csu_init>:
    2970:	f3 0f 1e fa          	endbr64 
    2974:	41 57                	push   %r15
    2976:	4c 8d 3d 53 24 00 00 	lea    0x2453(%rip),%r15        # 4dd0 <__frame_dummy_init_array_entry>
    297d:	41 56                	push   %r14
    297f:	49 89 d6             	mov    %rdx,%r14
    2982:	41 55                	push   %r13
    2984:	49 89 f5             	mov    %rsi,%r13
    2987:	41 54                	push   %r12
    2989:	41 89 fc             	mov    %edi,%r12d
    298c:	55                   	push   %rbp
    298d:	48 8d 2d 4c 24 00 00 	lea    0x244c(%rip),%rbp        # 4de0 <__do_global_dtors_aux_fini_array_entry>
    2994:	53                   	push   %rbx
    2995:	4c 29 fd             	sub    %r15,%rbp
    2998:	48 83 ec 08          	sub    $0x8,%rsp
    299c:	e8 5f e6 ff ff       	callq  1000 <_init>
    29a1:	48 c1 fd 03          	sar    $0x3,%rbp
    29a5:	74 1f                	je     29c6 <__libc_csu_init+0x56>
    29a7:	31 db                	xor    %ebx,%ebx
    29a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    29b0:	4c 89 f2             	mov    %r14,%rdx
    29b3:	4c 89 ee             	mov    %r13,%rsi
    29b6:	44 89 e7             	mov    %r12d,%edi
    29b9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    29bd:	48 83 c3 01          	add    $0x1,%rbx
    29c1:	48 39 dd             	cmp    %rbx,%rbp
    29c4:	75 ea                	jne    29b0 <__libc_csu_init+0x40>
    29c6:	48 83 c4 08          	add    $0x8,%rsp
    29ca:	5b                   	pop    %rbx
    29cb:	5d                   	pop    %rbp
    29cc:	41 5c                	pop    %r12
    29ce:	41 5d                	pop    %r13
    29d0:	41 5e                	pop    %r14
    29d2:	41 5f                	pop    %r15
    29d4:	c3                   	retq   
    29d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    29dc:	00 00 00 00 

00000000000029e0 <__libc_csu_fini>:
    29e0:	f3 0f 1e fa          	endbr64 
    29e4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000029e8 <_fini>:
    29e8:	f3 0f 1e fa          	endbr64 
    29ec:	48 83 ec 08          	sub    $0x8,%rsp
    29f0:	48 83 c4 08          	add    $0x8,%rsp
    29f4:	c3                   	retq   

Déassemblage de la section .rodata :

0000000000003000 <_IO_stdin_used>:
    3000:	01 00                	add    %eax,(%rax)
    3002:	02 00                	add    (%rax),%al
	...
    3010:	9a                   	(bad)  
    3011:	99                   	cltd   
    3012:	99                   	cltd   
    3013:	99                   	cltd   
    3014:	99                   	cltd   
    3015:	99                   	cltd   
    3016:	b9 3f 9a 99 99       	mov    $0x99999a3f,%ecx
    301b:	99                   	cltd   
    301c:	99                   	cltd   
    301d:	99                   	cltd   
    301e:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    3023:	00 00                	add    %al,(%rax)
    3025:	00 f0                	add    %dh,%al
    3027:	3f                   	(bad)  
    3028:	00 00                	add    %al,(%rax)
    302a:	00 00                	add    %al,(%rax)
    302c:	00 00                	add    %al,(%rax)
    302e:	f0 3f                	lock (bad) 
    3030:	72 65                	jb     3097 <__GNU_EH_FRAME_HDR+0x23>
    3032:	73 20                	jae    3054 <_IO_stdin_used+0x54>
    3034:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3039:	0a 00                	or     (%rax),%al
    303b:	72 65                	jb     30a2 <__GNU_EH_FRAME_HDR+0x2e>
    303d:	73 5f                	jae    309e <__GNU_EH_FRAME_HDR+0x2a>
    303f:	32 78 20             	xor    0x20(%rax),%bh
    3042:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3047:	0a 00                	or     (%rax),%al
    3049:	72 65                	jb     30b0 <__GNU_EH_FRAME_HDR+0x3c>
    304b:	73 5f                	jae    30ac <__GNU_EH_FRAME_HDR+0x38>
    304d:	34 78                	xor    $0x78,%al
    304f:	20 3d 20 25 6c 66    	and    %bh,0x666c2520(%rip)        # 666c5575 <_end+0x666c051d>
    3055:	0a 00                	or     (%rax),%al
    3057:	72 65                	jb     30be <__GNU_EH_FRAME_HDR+0x4a>
    3059:	73 5f                	jae    30ba <__GNU_EH_FRAME_HDR+0x46>
    305b:	38 78 20             	cmp    %bh,0x20(%rax)
    305e:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3063:	0a 00                	or     (%rax),%al
    3065:	72 65                	jb     30cc <__GNU_EH_FRAME_HDR+0x58>
    3067:	73 5f                	jae    30c8 <__GNU_EH_FRAME_HDR+0x54>
    3069:	31 36                	xor    %esi,(%rsi)
    306b:	78 20                	js     308d <__GNU_EH_FRAME_HDR+0x19>
    306d:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    3072:	0a 00                	or     (%rax),%al

Déassemblage de la section .eh_frame_hdr :

0000000000003074 <__GNU_EH_FRAME_HDR>:
    3074:	01 1b                	add    %ebx,(%rbx)
    3076:	03 3b                	add    (%rbx),%edi
    3078:	68 00 00 00 0c       	pushq  $0xc000000
    307d:	00 00                	add    %al,(%rax)
    307f:	00 ac df ff ff 9c 00 	add    %ch,0x9cffff(%rdi,%rbx,8)
    3086:	00 00                	add    %al,(%rax)
    3088:	0c e0                	or     $0xe0,%al
    308a:	ff                   	(bad)  
    308b:	ff c4                	inc    %esp
    308d:	00 00                	add    %al,(%rax)
    308f:	00 2c e0             	add    %ch,(%rax,%riz,8)
    3092:	ff                   	(bad)  
    3093:	ff 84 00 00 00 2c e1 	incl   -0x1ed40000(%rax,%rax,1)
    309a:	ff                   	(bad)  
    309b:	ff                   	(bad)  
    309c:	dc 00                	faddl  (%rax)
    309e:	00 00                	add    %al,(%rax)
    30a0:	5c                   	pop    %rsp
    30a1:	e1 ff                	loope  30a2 <__GNU_EH_FRAME_HDR+0x2e>
    30a3:	ff                   	(bad)  
    30a4:	f8                   	clc    
    30a5:	00 00                	add    %al,(%rax)
    30a7:	00 7c e2 ff          	add    %bh,-0x1(%rdx,%riz,8)
    30ab:	ff 0c 01             	decl   (%rcx,%rax,1)
    30ae:	00 00                	add    %al,(%rax)
    30b0:	0c e3                	or     $0xe3,%al
    30b2:	ff                   	(bad)  
    30b3:	ff 20                	jmpq   *(%rax)
    30b5:	01 00                	add    %eax,(%rax)
    30b7:	00 dc                	add    %bl,%ah
    30b9:	e3 ff                	jrcxz  30ba <__GNU_EH_FRAME_HDR+0x46>
    30bb:	ff 34 01             	pushq  (%rcx,%rax,1)
    30be:	00 00                	add    %al,(%rax)
    30c0:	3c e5                	cmp    $0xe5,%al
    30c2:	ff                   	(bad)  
    30c3:	ff 48 01             	decl   0x1(%rax)
    30c6:	00 00                	add    %al,(%rax)
    30c8:	fc                   	cld    
    30c9:	e6 ff                	out    %al,$0xff
    30cb:	ff 5c 01 00          	lcall  *0x0(%rcx,%rax,1)
    30cf:	00 fc                	add    %bh,%ah
    30d1:	f8                   	clc    
    30d2:	ff                   	(bad)  
    30d3:	ff ac 01 00 00 6c f9 	ljmp   *-0x6940000(%rcx,%rax,1)
    30da:	ff                   	(bad)  
    30db:	ff f4                	push   %rsp
    30dd:	01 00                	add    %eax,(%rax)
	...

Déassemblage de la section .eh_frame :

00000000000030e0 <__FRAME_END__-0x19c>:
    30e0:	14 00                	adc    $0x0,%al
    30e2:	00 00                	add    %al,(%rax)
    30e4:	00 00                	add    %al,(%rax)
    30e6:	00 00                	add    %al,(%rax)
    30e8:	01 7a 52             	add    %edi,0x52(%rdx)
    30eb:	00 01                	add    %al,(%rcx)
    30ed:	78 10                	js     30ff <__GNU_EH_FRAME_HDR+0x8b>
    30ef:	01 1b                	add    %ebx,(%rbx)
    30f1:	0c 07                	or     $0x7,%al
    30f3:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    30f9:	00 00                	add    %al,(%rax)
    30fb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    30fe:	00 00                	add    %al,(%rax)
    3100:	a0 df ff ff 2f 00 00 	movabs 0x2fffffdf,%al
    3107:	00 00 
    3109:	44 07                	rex.R (bad) 
    310b:	10 00                	adc    %al,(%rax)
    310d:	00 00                	add    %al,(%rax)
    310f:	00 24 00             	add    %ah,(%rax,%rax,1)
    3112:	00 00                	add    %al,(%rax)
    3114:	34 00                	xor    $0x0,%al
    3116:	00 00                	add    %al,(%rax)
    3118:	08 df                	or     %bl,%bh
    311a:	ff                   	(bad)  
    311b:	ff 60 00             	jmpq   *0x0(%rax)
    311e:	00 00                	add    %al,(%rax)
    3120:	00 0e                	add    %cl,(%rsi)
    3122:	10 46 0e             	adc    %al,0xe(%rsi)
    3125:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    3128:	0b 77 08             	or     0x8(%rdi),%esi
    312b:	80 00 3f             	addb   $0x3f,(%rax)
    312e:	1a 3b                	sbb    (%rbx),%bh
    3130:	2a 33                	sub    (%rbx),%dh
    3132:	24 22                	and    $0x22,%al
    3134:	00 00                	add    %al,(%rax)
    3136:	00 00                	add    %al,(%rax)
    3138:	14 00                	adc    $0x0,%al
    313a:	00 00                	add    %al,(%rax)
    313c:	5c                   	pop    %rsp
    313d:	00 00                	add    %al,(%rax)
    313f:	00 40 df             	add    %al,-0x21(%rax)
    3142:	ff                   	(bad)  
    3143:	ff 17                	callq  *(%rdi)
	...
    314d:	00 00                	add    %al,(%rax)
    314f:	00 18                	add    %bl,(%rax)
    3151:	00 00                	add    %al,(%rax)
    3153:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
    3157:	00 48 e0             	add    %cl,-0x20(%rax)
    315a:	ff                   	(bad)  
    315b:	ff 21                	jmpq   *(%rcx)
    315d:	00 00                	add    %al,(%rax)
    315f:	00 00                	add    %al,(%rax)
    3161:	41 0e                	rex.B (bad) 
    3163:	10 51 0e             	adc    %dl,0xe(%rcx)
    3166:	08 45 0e             	or     %al,0xe(%rbp)
    3169:	10 00                	adc    %al,(%rax)
    316b:	00 10                	add    %dl,(%rax)
    316d:	00 00                	add    %al,(%rax)
    316f:	00 90 00 00 00 5c    	add    %dl,0x5c000000(%rax)
    3175:	e0 ff                	loopne 3176 <__GNU_EH_FRAME_HDR+0x102>
    3177:	ff 1a                	lcall  *(%rdx)
    3179:	01 00                	add    %eax,(%rax)
    317b:	00 00                	add    %al,(%rax)
    317d:	00 00                	add    %al,(%rax)
    317f:	00 10                	add    %dl,(%rax)
    3181:	00 00                	add    %al,(%rax)
    3183:	00 a4 00 00 00 68 e1 	add    %ah,-0x1e980000(%rax,%rax,1)
    318a:	ff                   	(bad)  
    318b:	ff 88 00 00 00 00    	decl   0x0(%rax)
    3191:	00 00                	add    %al,(%rax)
    3193:	00 10                	add    %dl,(%rax)
    3195:	00 00                	add    %al,(%rax)
    3197:	00 b8 00 00 00 e4    	add    %bh,-0x1c000000(%rax)
    319d:	e1 ff                	loope  319e <__GNU_EH_FRAME_HDR+0x12a>
    319f:	ff c5                	inc    %ebp
    31a1:	00 00                	add    %al,(%rax)
    31a3:	00 00                	add    %al,(%rax)
    31a5:	00 00                	add    %al,(%rax)
    31a7:	00 10                	add    %dl,(%rax)
    31a9:	00 00                	add    %al,(%rax)
    31ab:	00 cc                	add    %cl,%ah
    31ad:	00 00                	add    %al,(%rax)
    31af:	00 a0 e2 ff ff 55    	add    %ah,0x55ffffe2(%rax)
    31b5:	01 00                	add    %eax,(%rax)
    31b7:	00 00                	add    %al,(%rax)
    31b9:	00 00                	add    %al,(%rax)
    31bb:	00 10                	add    %dl,(%rax)
    31bd:	00 00                	add    %al,(%rax)
    31bf:	00 e0                	add    %ah,%al
    31c1:	00 00                	add    %al,(%rax)
    31c3:	00 ec                	add    %ch,%ah
    31c5:	e3 ff                	jrcxz  31c6 <__GNU_EH_FRAME_HDR+0x152>
    31c7:	ff                   	(bad)  
    31c8:	b8 01 00 00 00       	mov    $0x1,%eax
    31cd:	00 00                	add    %al,(%rax)
    31cf:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    31d3:	00 f4                	add    %dh,%ah
    31d5:	00 00                	add    %al,(%rax)
    31d7:	00 98 e5 ff ff f7    	add    %bl,-0x800001b(%rax)
    31dd:	11 00                	adc    %eax,(%rax)
    31df:	00 00                	add    %al,(%rax)
    31e1:	41 0e                	rex.B (bad) 
    31e3:	10 42 0e             	adc    %al,0xe(%rdx)
    31e6:	18 42 0e             	sbb    %al,0xe(%rdx)
    31e9:	20 42 0e             	and    %al,0xe(%rdx)
    31ec:	28 42 0e             	sub    %al,0xe(%rdx)
    31ef:	30 41 0e             	xor    %al,0xe(%rcx)
    31f2:	38 47 0e             	cmp    %al,0xe(%rdi)
    31f5:	f0 04 83             	lock add $0x83,%al
    31f8:	07                   	(bad)  
    31f9:	8c 06                	mov    %es,(%rsi)
    31fb:	8d 05 8e 04 8f 03    	lea    0x38f048e(%rip),%eax        # 38f368f <_end+0x38ee637>
    3201:	86 02                	xchg   %al,(%rdx)
    3203:	03 db                	add    %ebx,%ebx
    3205:	11 0e                	adc    %ecx,(%rsi)
    3207:	38 41 0e             	cmp    %al,0xe(%rcx)
    320a:	30 42 0e             	xor    %al,0xe(%rdx)
    320d:	28 42 0e             	sub    %al,0xe(%rdx)
    3210:	20 42 0e             	and    %al,0xe(%rdx)
    3213:	18 42 0e             	sbb    %al,0xe(%rdx)
    3216:	10 41 0e             	adc    %al,0xe(%rcx)
    3219:	08 00                	or     %al,(%rax)
    321b:	00 00                	add    %al,(%rax)
    321d:	00 00                	add    %al,(%rax)
    321f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    3223:	00 44 01 00          	add    %al,0x0(%rcx,%rax,1)
    3227:	00 48 f7             	add    %cl,-0x9(%rax)
    322a:	ff                   	(bad)  
    322b:	ff 65 00             	jmpq   *0x0(%rbp)
    322e:	00 00                	add    %al,(%rax)
    3230:	00 46 0e             	add    %al,0xe(%rsi)
    3233:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    3239:	8e 03                	mov    (%rbx),%es
    323b:	45 0e                	rex.RB (bad) 
    323d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    3243:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8630408d <_end+0xffffffff862ff035>
    3249:	06                   	(bad)  
    324a:	48 0e                	rex.W (bad) 
    324c:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    3252:	6e                   	outsb  %ds:(%rsi),(%dx)
    3253:	0e                   	(bad)  
    3254:	38 41 0e             	cmp    %al,0xe(%rcx)
    3257:	30 41 0e             	xor    %al,0xe(%rcx)
    325a:	28 42 0e             	sub    %al,0xe(%rdx)
    325d:	20 42 0e             	and    %al,0xe(%rdx)
    3260:	18 42 0e             	sbb    %al,0xe(%rdx)
    3263:	10 42 0e             	adc    %al,0xe(%rdx)
    3266:	08 00                	or     %al,(%rax)
    3268:	10 00                	adc    %al,(%rax)
    326a:	00 00                	add    %al,(%rax)
    326c:	8c 01                	mov    %es,(%rcx)
    326e:	00 00                	add    %al,(%rax)
    3270:	70 f7                	jo     3269 <__GNU_EH_FRAME_HDR+0x1f5>
    3272:	ff                   	(bad)  
    3273:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 3279 <__GNU_EH_FRAME_HDR+0x205>
    3279:	00 00                	add    %al,(%rax)
	...

000000000000327c <__FRAME_END__>:
    327c:	00 00                	add    %al,(%rax)
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
    4e0f:	00 e8                	add    %ch,%al
    4e11:	29 00                	sub    %eax,(%rax)
    4e13:	00 00                	add    %al,(%rax)
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
  63:	00 3d 09 00 00 04    	add    %bh,0x4000009(%rip)        # 4000072 <_end+0x3ffb01a>
  69:	00 4d 00             	add    %cl,0x0(%rbp)
  6c:	00 00                	add    %al,(%rax)
  6e:	08 01                	or     %al,(%rcx)
  70:	36 01 00             	add    %eax,%ss:(%rax)
  73:	00 0c 00             	add    %cl,(%rax,%rax,1)
  76:	4b 01 00             	rex.WXB add %rax,(%r8)
  79:	00 7d 00             	add    %bh,0x0(%rbp)
  7c:	00 00                	add    %al,(%rax)
  7e:	55                   	push   %rbp
  7f:	01 00                	add    %eax,(%rax)
  81:	00 a0 11 00 00 00    	add    %ah,0x11(%rax)
  87:	00 00                	add    %al,(%rax)
  89:	00 c7                	add    %al,%bh
  8b:	17                   	(bad)  
  8c:	00 00                	add    %al,(%rax)
  8e:	02 a0 11 00 00 00    	add    0x11(%rax),%ah
  94:	00 00                	add    %al,(%rax)
  96:	00 21                	add    %ah,(%rcx)
  98:	00 00                	add    %al,(%rax)
  9a:	00 01                	add    %al,(%rcx)
  9c:	57                   	push   %rdi
  9d:	b2 02                	mov    $0x2,%dl
  9f:	00 00                	add    %al,(%rax)
  a1:	03 59 00             	add    0x0(%rcx),%ebx
  a4:	00 00                	add    %al,(%rax)
  a6:	be 02 00 00 03       	mov    $0x3000002,%esi
  ab:	bb 00 00 00 c9       	mov    $0xc9000000,%ebx
  b0:	02 00                	add    (%rax),%al
  b2:	00 00                	add    %al,(%rax)
  b4:	02 d0                	add    %al,%dl
  b6:	11 00                	adc    %eax,(%rax)
  b8:	00 00                	add    %al,(%rax)
  ba:	00 00                	add    %al,(%rax)
  bc:	00 1a                	add    %bl,(%rdx)
  be:	01 00                	add    %eax,(%rax)
  c0:	00 01                	add    %al,(%rcx)
  c2:	57                   	push   %rdi
  c3:	af                   	scas   %es:(%rdi),%eax
  c4:	03 00                	add    (%rax),%eax
  c6:	00 04 01             	add    %al,(%rcx,%rax,1)
  c9:	55                   	push   %rbp
  ca:	bb 03 00 00 04       	mov    $0x4000003,%ebx
  cf:	01 54 c6 03          	add    %edx,0x3(%rsi,%rax,8)
  d3:	00 00                	add    %al,(%rax)
  d5:	04 01                	add    $0x1,%al
  d7:	51                   	push   %rcx
  d8:	d1 03                	roll   (%rbx)
  da:	00 00                	add    %al,(%rax)
  dc:	05 1d 01 00 00       	add    $0x11d,%eax
  e1:	dc 03                	faddl  (%rbx)
  e3:	00 00                	add    %al,(%rax)
  e5:	06                   	(bad)  
  e6:	20 00                	and    %al,(%rax)
  e8:	00 00                	add    %al,(%rax)
  ea:	05 8f 01 00 00       	add    $0x18f,%eax
  ef:	e8 03 00 00 00       	callq  f7 <__abi_tag-0x1cd>
  f4:	00 02                	add    %al,(%rdx)
  f6:	f0 12 00             	lock adc (%rax),%al
  f9:	00 00                	add    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 88 00 00 00 01    	add    %cl,0x1000000(%rax)
 103:	57                   	push   %rdi
 104:	3c 03                	cmp    $0x3,%al
 106:	00 00                	add    %al,(%rax)
 108:	04 01                	add    $0x1,%al
 10a:	55                   	push   %rbp
 10b:	48 03 00             	add    (%rax),%rax
 10e:	00 04 01             	add    %al,(%rcx,%rax,1)
 111:	54                   	push   %rsp
 112:	53                   	push   %rbx
 113:	03 00                	add    (%rax),%eax
 115:	00 04 01             	add    %al,(%rcx,%rax,1)
 118:	51                   	push   %rcx
 119:	5e                   	pop    %rsi
 11a:	03 00                	add    (%rax),%eax
 11c:	00 05 ee 01 00 00    	add    %al,0x1ee(%rip)        # 310 <__abi_tag+0x4c>
 122:	69 03 00 00 07 f9    	imul   $0xf9070000,(%rbx),%eax
 128:	12 00                	adc    (%rax),%al
 12a:	00 00                	add    %al,(%rax)
 12c:	00 00                	add    %al,(%rax)
 12e:	00 22                	add    %ah,(%rdx)
 130:	00 00                	add    %al,(%rax)
 132:	00 05 32 02 00 00    	add    %al,0x232(%rip)        # 36a <__abi_tag+0xa6>
 138:	75 03                	jne    13d <__abi_tag-0x187>
 13a:	00 00                	add    %al,(%rax)
 13c:	00 07                	add    %al,(%rdi)
 13e:	28 13                	sub    %dl,(%rbx)
 140:	00 00                	add    %al,(%rax)
 142:	00 00                	add    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	4b 00 00             	rex.WXB add %al,(%r8)
 149:	00 05 a0 02 00 00    	add    %al,0x2a0(%rip)        # 3ef <__abi_tag+0x12b>
 14f:	82                   	(bad)  
 150:	03 00                	add    (%rax),%eax
 152:	00 07                	add    %al,(%rdi)
 154:	28 13                	sub    %dl,(%rbx)
 156:	00 00                	add    %al,(%rax)
 158:	00 00                	add    %al,(%rax)
 15a:	00 00                	add    %al,(%rax)
 15c:	33 00                	xor    (%rax),%eax
 15e:	00 00                	add    %al,(%rax)
 160:	05 69 02 00 00       	add    $0x269,%eax
 165:	8e 03                	mov    (%rbx),%es
 167:	00 00                	add    %al,(%rax)
 169:	00 00                	add    %al,(%rax)
 16b:	00 02                	add    %al,(%rdx)
 16d:	80 13 00             	adcb   $0x0,(%rbx)
 170:	00 00                	add    %al,(%rax)
 172:	00 00                	add    %al,(%rax)
 174:	00 c5                	add    %al,%ch
 176:	00 00                	add    %al,(%rax)
 178:	00 01                	add    %al,(%rcx)
 17a:	57                   	push   %rdi
 17b:	f5                   	cmc    
 17c:	03 00                	add    (%rax),%eax
 17e:	00 04 01             	add    %al,(%rcx,%rax,1)
 181:	55                   	push   %rbp
 182:	01 04 00             	add    %eax,(%rax,%rax,1)
 185:	00 04 01             	add    %al,(%rcx,%rax,1)
 188:	54                   	push   %rsp
 189:	0c 04                	or     $0x4,%al
 18b:	00 00                	add    %al,(%rax)
 18d:	04 01                	add    $0x1,%al
 18f:	51                   	push   %rcx
 190:	17                   	(bad)  
 191:	04 00                	add    $0x0,%al
 193:	00 05 c3 02 00 00    	add    %al,0x2c3(%rip)        # 45c <__abi_tag+0x198>
 199:	2d 04 00 00 08       	sub    $0x8000004,%eax
 19e:	22 04 00             	and    (%rax,%rax,1),%al
 1a1:	00 07                	add    %al,(%rdi)
 1a3:	84 13                	test   %dl,(%rbx)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	00 00                	add    %al,(%rax)
 1a9:	00 00                	add    %al,(%rax)
 1ab:	63 00                	movsxd (%rax),%eax
 1ad:	00 00                	add    %al,(%rax)
 1af:	05 41 03 00 00       	add    $0x341,%eax
 1b4:	39 04 00             	cmp    %eax,(%rax,%rax,1)
 1b7:	00 00                	add    %al,(%rax)
 1b9:	07                   	(bad)  
 1ba:	f4                   	hlt    
 1bb:	13 00                	adc    (%rax),%eax
 1bd:	00 00                	add    %al,(%rax)
 1bf:	00 00                	add    %al,(%rax)
 1c1:	00 38                	add    %bh,(%rax)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	00 05 78 03 00 00    	add    %al,0x378(%rip)        # 543 <__abi_tag+0x27f>
 1cb:	46 04 00             	rex.RX add $0x0,%al
 1ce:	00 07                	add    %al,(%rdi)
 1d0:	f4                   	hlt    
 1d1:	13 00                	adc    (%rax),%eax
 1d3:	00 00                	add    %al,(%rax)
 1d5:	00 00                	add    %al,(%rax)
 1d7:	00 38                	add    %bh,(%rax)
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 05 9d 03 00 00    	add    %al,0x39d(%rip)        # 57e <__abi_tag+0x2ba>
 1e1:	52                   	push   %rdx
 1e2:	04 00                	add    $0x0,%al
 1e4:	00 00                	add    %al,(%rax)
 1e6:	00 00                	add    %al,(%rax)
 1e8:	02 50 14             	add    0x14(%rax),%dl
 1eb:	00 00                	add    %al,(%rax)
 1ed:	00 00                	add    %al,(%rax)
 1ef:	00 00                	add    %al,(%rax)
 1f1:	55                   	push   %rbp
 1f2:	01 00                	add    %eax,(%rax)
 1f4:	00 01                	add    %al,(%rcx)
 1f6:	57                   	push   %rdi
 1f7:	6c                   	insb   (%dx),%es:(%rdi)
 1f8:	04 00                	add    $0x0,%al
 1fa:	00 04 01             	add    %al,(%rcx,%rax,1)
 1fd:	55                   	push   %rbp
 1fe:	78 04                	js     204 <__abi_tag-0xc0>
 200:	00 00                	add    %al,(%rax)
 202:	04 01                	add    $0x1,%al
 204:	54                   	push   %rsp
 205:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
 209:	04 01                	add    $0x1,%al
 20b:	51                   	push   %rcx
 20c:	8e 04 00             	mov    (%rax,%rax,1),%es
 20f:	00 05 c2 03 00 00    	add    %al,0x3c2(%rip)        # 5d7 <__abi_tag+0x313>
 215:	99                   	cltd   
 216:	04 00                	add    $0x0,%al
 218:	00 08                	add    %cl,(%rax)
 21a:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 21b:	04 00                	add    $0x0,%al
 21d:	00 07                	add    %al,(%rdi)
 21f:	54                   	push   %rsp
 220:	14 00                	adc    $0x0,%al
 222:	00 00                	add    %al,(%rax)
 224:	00 00                	add    %al,(%rax)
 226:	00 8b 00 00 00 05    	add    %cl,0x5000000(%rbx)
 22c:	60                   	(bad)  
 22d:	04 00                	add    $0x0,%al
 22f:	00 b0 04 00 00 00    	add    %dh,0x4(%rax)
 235:	07                   	(bad)  
 236:	f0 14 00             	lock adc $0x0,%al
 239:	00 00                	add    %al,(%rax)
 23b:	00 00                	add    %al,(%rax)
 23d:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 241:	00 05 97 04 00 00    	add    %al,0x497(%rip)        # 6de <__abi_tag+0x41a>
 247:	bd 04 00 00 07       	mov    $0x7000004,%ebp
 24c:	f0 14 00             	lock adc $0x0,%al
 24f:	00 00                	add    %al,(%rax)
 251:	00 00                	add    %al,(%rax)
 253:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 257:	00 05 bc 04 00 00    	add    %al,0x4bc(%rip)        # 719 <__abi_tag+0x455>
 25d:	c9                   	leaveq 
 25e:	04 00                	add    $0x0,%al
 260:	00 00                	add    %al,(%rax)
 262:	00 00                	add    %al,(%rax)
 264:	09 b0 15 00 00 00    	or     %esi,0x15(%rax)
 26a:	00 00                	add    %al,(%rax)
 26c:	00 b8 01 00 00 01    	add    %bh,0x1000001(%rax)
 272:	57                   	push   %rdi
 273:	19 02                	sbb    %eax,(%rdx)
 275:	00 00                	add    %al,(%rax)
 277:	01 7a 35             	add    %edi,0x35(%rdx)
 27a:	03 00                	add    (%rax),%eax
 27c:	00 0a                	add    %cl,(%rdx)
 27e:	01 55 ab             	add    %edx,-0x55(%rbp)
 281:	01 00                	add    %eax,(%rax)
 283:	00 01                	add    %al,(%rcx)
 285:	7a 2b                	jp     2b2 <__abi_tag-0x12>
 287:	03 00                	add    (%rax),%eax
 289:	00 0a                	add    %cl,(%rdx)
 28b:	01 54 b4 01          	add    %edx,0x1(%rsp,%rsi,4)
 28f:	00 00                	add    %al,(%rax)
 291:	01 7a 2b             	add    %edi,0x2b(%rdx)
 294:	03 00                	add    (%rax),%eax
 296:	00 0a                	add    %cl,(%rdx)
 298:	01 51 28             	add    %edx,0x28(%rcx)
 29b:	02 00                	add    (%rax),%al
 29d:	00 01                	add    %al,(%rcx)
 29f:	7a d5                	jp     276 <__abi_tag-0x4e>
 2a1:	02 00                	add    (%rax),%al
 2a3:	00 0b                	add    %cl,(%rbx)
 2a5:	e1 04                	loope  2ab <__abi_tag-0x19>
 2a7:	00 00                	add    %al,(%rax)
 2a9:	73 01                	jae    2ac <__abi_tag-0x18>
 2ab:	00 00                	add    %al,(%rax)
 2ad:	01 7c 34 09          	add    %edi,0x9(%rsp,%rsi,1)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	0c ee                	or     $0xee,%al
 2b5:	01 00                	add    %eax,(%rax)
 2b7:	00 01                	add    %al,(%rcx)
 2b9:	7d d5                	jge    290 <__abi_tag-0x34>
 2bb:	02 00                	add    (%rax),%al
 2bd:	00 07                	add    %al,(%rdi)
 2bf:	b4 15                	mov    $0x15,%ah
 2c1:	00 00                	add    %al,(%rax)
 2c3:	00 00                	add    %al,(%rax)
 2c5:	00 00                	add    %al,(%rax)
 2c7:	f3 00 00             	repz add %al,(%rax)
 2ca:	00 0b                	add    %cl,(%rbx)
 2cc:	bf 05 00 00 b6       	mov    $0xb6000005,%edi
 2d1:	01 00                	add    %eax,(%rax)
 2d3:	00 01                	add    %al,(%rcx)
 2d5:	7f d5                	jg     2ac <__abi_tag-0x18>
 2d7:	02 00                	add    (%rax),%al
 2d9:	00 00                	add    %al,(%rax)
 2db:	07                   	(bad)  
 2dc:	bc 16 00 00 00       	mov    $0x16,%esp
 2e1:	00 00                	add    %al,(%rax)
 2e3:	00 1d 00 00 00 0b    	add    %bl,0xb000000(%rip)        # b0002e9 <_end+0xaffb291>
 2e9:	2e 06                	cs (bad) 
 2eb:	00 00                	add    %al,(%rax)
 2ed:	2a 02                	sub    (%rdx),%al
 2ef:	00 00                	add    %al,(%rax)
 2f1:	01 95 d5 02 00 00    	add    %edx,0x2d5(%rbp)
 2f7:	07                   	(bad)  
 2f8:	bc 16 00 00 00       	mov    $0x16,%esp
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 1d 00 00 00 0b    	add    %bl,0xb000000(%rip)        # b000305 <_end+0xaffb2ad>
 305:	f6 05 00 00 b6 01 00 	testb  $0x0,0x1b60000(%rip)        # 1b6030c <_end+0x1b5b2b4>
 30c:	00 01                	add    %al,(%rcx)
 30e:	97                   	xchg   %eax,%edi
 30f:	d5                   	(bad)  
 310:	02 00                	add    (%rax),%al
 312:	00 00                	add    %al,(%rax)
 314:	00 00                	add    %al,(%rax)
 316:	0d 75 01 00 00       	or     $0x175,%eax
 31b:	01 08                	add    %ecx,(%rax)
 31d:	d5                   	(bad)  
 31e:	02 00                	add    (%rax),%al
 320:	00 01                	add    %al,(%rcx)
 322:	0e                   	(bad)  
 323:	97                   	xchg   %eax,%edi
 324:	01 00                	add    %eax,(%rax)
 326:	00 01                	add    %al,(%rcx)
 328:	08 dc                	or     %bl,%ah
 32a:	02 00                	add    (%rax),%al
 32c:	00 0e                	add    %cl,(%rsi)
 32e:	9c                   	pushfq 
 32f:	01 00                	add    %eax,(%rax)
 331:	00 01                	add    %al,(%rcx)
 333:	08 e3                	or     %ah,%bl
 335:	02 00                	add    (%rax),%al
 337:	00 00                	add    %al,(%rax)
 339:	0f 80 01 00 00 07    	jo     7000340 <_end+0x6ffb2e8>
 33f:	08 0f                	or     %cl,(%rdi)
 341:	93                   	xchg   %eax,%ebx
 342:	01 00                	add    %eax,(%rax)
 344:	00 05 04 10 e8 02    	add    %al,0x2e81004(%rip)        # 2e8134e <_end+0x2e7c2f6>
 34a:	00 00                	add    %al,(%rax)
 34c:	10 ed                	adc    %ch,%ch
 34e:	02 00                	add    (%rax),%al
 350:	00 0f                	add    %cl,(%rdi)
 352:	a1 01 00 00 06 01 11 	movabs 0x1a6110106000001,%eax
 359:	a6 01 
 35b:	00 00                	add    %al,(%rax)
 35d:	01 11                	add    %edx,(%rcx)
 35f:	01 0e                	add    %ecx,(%rsi)
 361:	ab                   	stos   %eax,%es:(%rdi)
 362:	01 00                	add    %eax,(%rax)
 364:	00 01                	add    %al,(%rcx)
 366:	11 2b                	adc    %ebp,(%rbx)
 368:	03 00                	add    (%rax),%eax
 36a:	00 0e                	add    %cl,(%rsi)
 36c:	b4 01                	mov    $0x1,%ah
 36e:	00 00                	add    %al,(%rax)
 370:	01 11                	add    %edx,(%rcx)
 372:	2b 03                	sub    (%rbx),%eax
 374:	00 00                	add    %al,(%rax)
 376:	0e                   	(bad)  
 377:	28 02                	sub    %al,(%rdx)
 379:	00 00                	add    %al,(%rax)
 37b:	01 11                	add    %edx,(%rcx)
 37d:	d5                   	(bad)  
 37e:	02 00                	add    (%rax),%al
 380:	00 12                	add    %dl,(%rdx)
 382:	0c b6                	or     $0xb6,%al
 384:	01 00                	add    %eax,(%rax)
 386:	00 01                	add    %al,(%rcx)
 388:	13 d5                	adc    %ebp,%edx
 38a:	02 00                	add    (%rax),%al
 38c:	00 00                	add    %al,(%rax)
 38e:	00 13                	add    %dl,(%rbx)
 390:	30 03                	xor    %al,(%rbx)
 392:	00 00                	add    %al,(%rax)
 394:	10 35 03 00 00 0f    	adc    %dh,0xf000003(%rip)        # f00039d <_end+0xeffb345>
 39a:	ad                   	lods   %ds:(%rsi),%eax
 39b:	01 00                	add    %eax,(%rax)
 39d:	00 04 08             	add    %al,(%rax,%rcx,1)
 3a0:	0d b8 01 00 00       	or     $0x1b8,%eax
 3a5:	01 26                	add    %esp,(%rsi)
 3a7:	35 03 00 00 01       	xor    $0x1000003,%eax
 3ac:	0e                   	(bad)  
 3ad:	ab                   	stos   %eax,%es:(%rdi)
 3ae:	01 00                	add    %eax,(%rax)
 3b0:	00 01                	add    %al,(%rcx)
 3b2:	26 2b 03             	sub    %es:(%rbx),%eax
 3b5:	00 00                	add    %al,(%rax)
 3b7:	0e                   	(bad)  
 3b8:	b4 01                	mov    $0x1,%ah
 3ba:	00 00                	add    %al,(%rax)
 3bc:	01 26                	add    %esp,(%rsi)
 3be:	2b 03                	sub    (%rbx),%eax
 3c0:	00 00                	add    %al,(%rax)
 3c2:	0e                   	(bad)  
 3c3:	28 02                	sub    %al,(%rdx)
 3c5:	00 00                	add    %al,(%rax)
 3c7:	01 26                	add    %esp,(%rsi)
 3c9:	d5                   	(bad)  
 3ca:	02 00                	add    (%rax),%al
 3cc:	00 0c 73             	add    %cl,(%rbx,%rsi,2)
 3cf:	01 00                	add    %eax,(%rax)
 3d1:	00 01                	add    %al,(%rcx)
 3d3:	28 9c 03 00 00 12 0c 	sub    %bl,0xc120000(%rbx,%rax,1)
 3da:	b6 01                	mov    $0x1,%dh
 3dc:	00 00                	add    %al,(%rax)
 3de:	01 39                	add    %edi,(%rcx)
 3e0:	d5                   	(bad)  
 3e1:	02 00                	add    (%rax),%al
 3e3:	00 00                	add    %al,(%rax)
 3e5:	12 0c d7             	adc    (%rdi,%rdx,8),%cl
 3e8:	01 00                	add    %eax,(%rax)
 3ea:	00 01                	add    %al,(%rcx)
 3ec:	2d d5 02 00 00       	sub    $0x2d5,%eax
 3f1:	12 0c b6             	adc    (%rsi,%rsi,4),%cl
 3f4:	01 00                	add    %eax,(%rax)
 3f6:	00 01                	add    %al,(%rcx)
 3f8:	2f                   	(bad)  
 3f9:	d5                   	(bad)  
 3fa:	02 00                	add    (%rax),%al
 3fc:	00 00                	add    %al,(%rax)
 3fe:	00 00                	add    %al,(%rax)
 400:	14 35                	adc    $0x35,%al
 402:	03 00                	add    (%rax),%eax
 404:	00 15 a8 03 00 00    	add    %dl,0x3a8(%rip)        # 7b2 <__abi_tag+0x4ee>
 40a:	02 00                	add    (%rax),%al
 40c:	16                   	(bad)  
 40d:	c3                   	retq   
 40e:	01 00                	add    %eax,(%rax)
 410:	00 08                	add    %cl,(%rax)
 412:	07                   	(bad)  
 413:	0d db 01 00 00       	or     $0x1db,%eax
 418:	01 1b                	add    %ebx,(%rbx)
 41a:	35 03 00 00 01       	xor    $0x1000003,%eax
 41f:	0e                   	(bad)  
 420:	ab                   	stos   %eax,%es:(%rdi)
 421:	01 00                	add    %eax,(%rax)
 423:	00 01                	add    %al,(%rcx)
 425:	1b 2b                	sbb    (%rbx),%ebp
 427:	03 00                	add    (%rax),%eax
 429:	00 0e                	add    %cl,(%rsi)
 42b:	b4 01                	mov    $0x1,%ah
 42d:	00 00                	add    %al,(%rax)
 42f:	01 1b                	add    %ebx,(%rbx)
 431:	2b 03                	sub    (%rbx),%eax
 433:	00 00                	add    %al,(%rax)
 435:	0e                   	(bad)  
 436:	28 02                	sub    %al,(%rdx)
 438:	00 00                	add    %al,(%rax)
 43a:	01 1b                	add    %ebx,(%rbx)
 43c:	d5                   	(bad)  
 43d:	02 00                	add    (%rax),%al
 43f:	00 0c 73             	add    %cl,(%rbx,%rsi,2)
 442:	01 00                	add    %eax,(%rax)
 444:	00 01                	add    %al,(%rcx)
 446:	1d 35 03 00 00       	sbb    $0x335,%eax
 44b:	12 0c b6             	adc    (%rsi,%rsi,4),%cl
 44e:	01 00                	add    %eax,(%rax)
 450:	00 01                	add    %al,(%rcx)
 452:	1f                   	(bad)  
 453:	d5                   	(bad)  
 454:	02 00                	add    (%rax),%al
 456:	00 00                	add    %al,(%rax)
 458:	00 0d e3 01 00 00    	add    %cl,0x1e3(%rip)        # 641 <__abi_tag+0x37d>
 45e:	01 44 35 03          	add    %eax,0x3(%rbp,%rsi,1)
 462:	00 00                	add    %al,(%rax)
 464:	01 0e                	add    %ecx,(%rsi)
 466:	ab                   	stos   %eax,%es:(%rdi)
 467:	01 00                	add    %eax,(%rax)
 469:	00 01                	add    %al,(%rcx)
 46b:	44 2b 03             	sub    (%rbx),%r8d
 46e:	00 00                	add    %al,(%rax)
 470:	0e                   	(bad)  
 471:	b4 01                	mov    $0x1,%ah
 473:	00 00                	add    %al,(%rax)
 475:	01 44 2b 03          	add    %eax,0x3(%rbx,%rbp,1)
 479:	00 00                	add    %al,(%rax)
 47b:	0e                   	(bad)  
 47c:	28 02                	sub    %al,(%rdx)
 47e:	00 00                	add    %al,(%rax)
 480:	01 44 d5 02          	add    %eax,0x2(%rbp,%rdx,8)
 484:	00 00                	add    %al,(%rax)
 486:	0c ee                	or     $0xee,%al
 488:	01 00                	add    %eax,(%rax)
 48a:	00 01                	add    %al,(%rcx)
 48c:	47 d5                	rex.RXB (bad) 
 48e:	02 00                	add    (%rax),%al
 490:	00 0c 73             	add    %cl,(%rbx,%rsi,2)
 493:	01 00                	add    %eax,(%rax)
 495:	00 01                	add    %al,(%rcx)
 497:	46 60                	rex.RX (bad) 
 499:	04 00                	add    $0x0,%al
 49b:	00 12                	add    %dl,(%rdx)
 49d:	0c b6                	or     $0xb6,%al
 49f:	01 00                	add    %eax,(%rax)
 4a1:	00 01                	add    %al,(%rcx)
 4a3:	49 d5                	rex.WB (bad) 
 4a5:	02 00                	add    (%rax),%al
 4a7:	00 00                	add    %al,(%rax)
 4a9:	12 0c f3             	adc    (%rbx,%rsi,8),%cl
 4ac:	01 00                	add    %eax,(%rax)
 4ae:	00 01                	add    %al,(%rcx)
 4b0:	53                   	push   %rbx
 4b1:	d5                   	(bad)  
 4b2:	02 00                	add    (%rax),%al
 4b4:	00 12                	add    %dl,(%rdx)
 4b6:	0c b6                	or     $0xb6,%al
 4b8:	01 00                	add    %eax,(%rax)
 4ba:	00 01                	add    %al,(%rcx)
 4bc:	55                   	push   %rbp
 4bd:	d5                   	(bad)  
 4be:	02 00                	add    (%rax),%al
 4c0:	00 00                	add    %al,(%rax)
 4c2:	00 00                	add    %al,(%rax)
 4c4:	14 35                	adc    $0x35,%al
 4c6:	03 00                	add    (%rax),%eax
 4c8:	00 15 a8 03 00 00    	add    %dl,0x3a8(%rip)        # 876 <__abi_tag+0x5b2>
 4ce:	04 00                	add    $0x0,%al
 4d0:	0d f7 01 00 00       	or     $0x1f7,%eax
 4d5:	01 5d 35             	add    %ebx,0x35(%rbp)
 4d8:	03 00                	add    (%rax),%eax
 4da:	00 01                	add    %al,(%rcx)
 4dc:	0e                   	(bad)  
 4dd:	ab                   	stos   %eax,%es:(%rdi)
 4de:	01 00                	add    %eax,(%rax)
 4e0:	00 01                	add    %al,(%rcx)
 4e2:	5d                   	pop    %rbp
 4e3:	2b 03                	sub    (%rbx),%eax
 4e5:	00 00                	add    %al,(%rax)
 4e7:	0e                   	(bad)  
 4e8:	b4 01                	mov    $0x1,%ah
 4ea:	00 00                	add    %al,(%rax)
 4ec:	01 5d 2b             	add    %ebx,0x2b(%rbp)
 4ef:	03 00                	add    (%rax),%eax
 4f1:	00 0e                	add    %cl,(%rsi)
 4f3:	28 02                	sub    %al,(%rdx)
 4f5:	00 00                	add    %al,(%rax)
 4f7:	01 5d d5             	add    %ebx,-0x2b(%rbp)
 4fa:	02 00                	add    (%rax),%al
 4fc:	00 0c 73             	add    %cl,(%rbx,%rsi,2)
 4ff:	01 00                	add    %eax,(%rax)
 501:	00 01                	add    %al,(%rcx)
 503:	5f                   	pop    %rdi
 504:	d7                   	xlat   %ds:(%rbx)
 505:	04 00                	add    $0x0,%al
 507:	00 0c ee             	add    %cl,(%rsi,%rbp,8)
 50a:	01 00                	add    %eax,(%rax)
 50c:	00 01                	add    %al,(%rcx)
 50e:	60                   	(bad)  
 50f:	d5                   	(bad)  
 510:	02 00                	add    (%rax),%al
 512:	00 12                	add    %dl,(%rdx)
 514:	0c b6                	or     $0xb6,%al
 516:	01 00                	add    %eax,(%rax)
 518:	00 01                	add    %al,(%rcx)
 51a:	62                   	(bad)  
 51b:	d5                   	(bad)  
 51c:	02 00                	add    (%rax),%al
 51e:	00 00                	add    %al,(%rax)
 520:	12 0c 02             	adc    (%rdx,%rax,1),%cl
 523:	02 00                	add    (%rax),%al
 525:	00 01                	add    %al,(%rcx)
 527:	70 d5                	jo     4fe <__abi_tag+0x23a>
 529:	02 00                	add    (%rax),%al
 52b:	00 12                	add    %dl,(%rdx)
 52d:	0c b6                	or     $0xb6,%al
 52f:	01 00                	add    %eax,(%rax)
 531:	00 01                	add    %al,(%rcx)
 533:	72 d5                	jb     50a <__abi_tag+0x246>
 535:	02 00                	add    (%rax),%al
 537:	00 00                	add    %al,(%rax)
 539:	00 00                	add    %al,(%rax)
 53b:	14 35                	adc    $0x35,%al
 53d:	03 00                	add    (%rax),%eax
 53f:	00 15 a8 03 00 00    	add    %dl,0x3a8(%rip)        # 8ed <__abi_tag+0x629>
 545:	08 00                	or     %al,(%rax)
 547:	09 70 17             	or     %esi,0x17(%rax)
 54a:	00 00                	add    %al,(%rax)
 54c:	00 00                	add    %al,(%rax)
 54e:	00 00                	add    %al,(%rax)
 550:	f7 11                	notl   (%rcx)
 552:	00 00                	add    %al,(%rax)
 554:	01 57 25             	add    %edx,0x25(%rdi)
 557:	02 00                	add    (%rax),%al
 559:	00 01                	add    %al,(%rcx)
 55b:	9e                   	sahf   
 55c:	dc 02                	faddl  (%rdx)
 55e:	00 00                	add    %al,(%rax)
 560:	17                   	(bad)  
 561:	53                   	push   %rbx
 562:	06                   	(bad)  
 563:	00 00                	add    %al,(%rax)
 565:	97                   	xchg   %eax,%edi
 566:	01 00                	add    %eax,(%rax)
 568:	00 01                	add    %al,(%rcx)
 56a:	9e                   	sahf   
 56b:	dc 02                	faddl  (%rdx)
 56d:	00 00                	add    %al,(%rax)
 56f:	17                   	(bad)  
 570:	b5 06                	mov    $0x6,%ch
 572:	00 00                	add    %al,(%rax)
 574:	9c                   	pushfq 
 575:	01 00                	add    %eax,(%rax)
 577:	00 01                	add    %al,(%rcx)
 579:	9e                   	sahf   
 57a:	e3 02                	jrcxz  57e <__abi_tag+0x2ba>
 57c:	00 00                	add    %al,(%rax)
 57e:	0b 83 07 00 00 28    	or     0x28000007(%rbx),%eax
 584:	02 00                	add    (%rax),%al
 586:	00 01                	add    %al,(%rcx)
 588:	a3 d5 02 00 00 0b ce 	movabs %eax,0x7ce0b000002d5
 58f:	07 00 
 591:	00 ab 01 00 00 01    	add    %ch,0x1000001(%rbx)
 597:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 598:	30 03                	xor    %al,(%rbx)
 59a:	00 00                	add    %al,(%rax)
 59c:	0b 85 08 00 00 b4    	or     -0x4bfffff8(%rbp),%eax
 5a2:	01 00                	add    %eax,(%rax)
 5a4:	00 01                	add    %al,(%rcx)
 5a6:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 5a7:	30 03                	xor    %al,(%rbx)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	0b 0f                	or     (%rdi),%ecx
 5ad:	0a 00                	or     (%rax),%al
 5af:	00 2f                	add    %ch,(%rdi)
 5b1:	02 00                	add    (%rax),%al
 5b3:	00 01                	add    %al,(%rcx)
 5b5:	ad                   	lods   %ds:(%rsi),%eax
 5b6:	35 03 00 00 0b       	xor    $0xb000003,%eax
 5bb:	18 0b                	sbb    %cl,(%rbx)
 5bd:	00 00                	add    %al,(%rax)
 5bf:	33 02                	xor    (%rdx),%eax
 5c1:	00 00                	add    %al,(%rax)
 5c3:	01 ae 35 03 00 00    	add    %ebp,0x335(%rsi)
 5c9:	0c 3a                	or     $0x3a,%al
 5cb:	02 00                	add    (%rax),%al
 5cd:	00 01                	add    %al,(%rcx)
 5cf:	af                   	scas   %es:(%rdi),%eax
 5d0:	35 03 00 00 0b       	xor    $0xb000003,%eax
 5d5:	05 0d 00 00 41       	add    $0x4100000d,%eax
 5da:	02 00                	add    (%rax),%al
 5dc:	00 01                	add    %al,(%rcx)
 5de:	b0 35                	mov    $0x35,%al
 5e0:	03 00                	add    (%rax),%eax
 5e2:	00 0b                	add    %cl,(%rbx)
 5e4:	50                   	push   %rax
 5e5:	0d 00 00 48 02       	or     $0x2480000,%eax
 5ea:	00 00                	add    %al,(%rax)
 5ec:	01 b1 35 03 00 00    	add    %esi,0x335(%rcx)
 5f2:	0b 74 0d 00          	or     0x0(%rbp,%rcx,1),%esi
 5f6:	00 53 01             	add    %dl,0x1(%rbx)
 5f9:	00 00                	add    %al,(%rax)
 5fb:	01 c2                	add    %eax,%edx
 5fd:	30 03                	xor    %al,(%rbx)
 5ff:	00 00                	add    %al,(%rax)
 601:	0b 15 0e 00 00 73    	or     0x7300000e(%rip),%edx        # 73000615 <_end+0x72ffb5bd>
 607:	01 00                	add    %eax,(%rax)
 609:	00 01                	add    %al,(%rcx)
 60b:	c3                   	retq   
 60c:	30 03                	xor    %al,(%rbx)
 60e:	00 00                	add    %al,(%rax)
 610:	18 b2 02 00 00 60    	sbb    %dh,0x60000002(%rdx)
 616:	00 00                	add    %al,(%rax)
 618:	00 01                	add    %al,(%rcx)
 61a:	a3 1a 03 17 07 00 00 	movabs %eax,0x2be00000717031a
 621:	be 02 
 623:	00 00                	add    %al,(%rax)
 625:	03 4d 07             	add    0x7(%rbp),%ecx
 628:	00 00                	add    %al,(%rax)
 62a:	c9                   	leaveq 
 62b:	02 00                	add    (%rax),%al
 62d:	00 00                	add    %al,(%rax)
 62f:	18 f4                	sbb    %dh,%ah
 631:	02 00                	add    (%rax),%al
 633:	00 90 00 00 00 01    	add    %dl,0x1000000(%rax)
 639:	aa                   	stos   %al,%es:(%rdi)
 63a:	03 03                	add    (%rbx),%eax
 63c:	bb 08 00 00 fc       	mov    $0xfc000008,%ebx
 641:	02 00                	add    (%rax),%al
 643:	00 03                	add    %al,(%rbx)
 645:	4f 08 00             	rex.WRXB or %r8b,(%r8)
 648:	00 07                	add    %al,(%rdi)
 64a:	03 00                	add    (%rax),%eax
 64c:	00 03                	add    %al,(%rbx)
 64e:	f1                   	icebp  
 64f:	08 00                	or     %al,(%rax)
 651:	00 12                	add    %dl,(%rdx)
 653:	03 00                	add    (%rax),%eax
 655:	00 06                	add    %al,(%rsi)
 657:	d0 00                	rolb   (%rax)
 659:	00 00                	add    %al,(%rax)
 65b:	05 04 08 00 00       	add    $0x804,%eax
 660:	1e                   	(bad)  
 661:	03 00                	add    (%rax),%eax
 663:	00 00                	add    %al,(%rax)
 665:	00 18                	add    %bl,(%rax)
 667:	3c 03                	cmp    $0x3,%al
 669:	00 00                	add    %al,(%rax)
 66b:	10 01                	adc    %al,(%rcx)
 66d:	00 00                	add    %al,(%rax)
 66f:	01 ae 13 03 32 0a    	add    %ebp,0xa320313(%rsi)
 675:	00 00                	add    %al,(%rax)
 677:	48 03 00             	add    (%rax),%rax
 67a:	00 03                	add    %al,(%rbx)
 67c:	55                   	push   %rbp
 67d:	0a 00                	or     (%rax),%al
 67f:	00 53 03             	add    %dl,0x3(%rbx)
 682:	00 00                	add    %al,(%rax)
 684:	03 78 0a             	add    0xa(%rax),%edi
 687:	00 00                	add    %al,(%rax)
 689:	5e                   	pop    %rsi
 68a:	03 00                	add    (%rax),%eax
 68c:	00 05 27 09 00 00    	add    %al,0x927(%rip)        # fb9 <__abi_tag+0xcf5>
 692:	69 03 00 00 07 36    	imul   $0x36070000,(%rbx),%eax
 698:	1a 00                	sbb    (%rax),%al
 69a:	00 00                	add    %al,(%rax)
 69c:	00 00                	add    %al,(%rax)
 69e:	00 2e                	add    %ch,(%rsi)
 6a0:	00 00                	add    %al,(%rax)
 6a2:	00 05 9b 0a 00 00    	add    %al,0xa9b(%rip)        # 1143 <__do_global_dtors_aux+0x3>
 6a8:	75 03                	jne    6ad <__abi_tag+0x3e9>
 6aa:	00 00                	add    %al,(%rax)
 6ac:	00 07                	add    %al,(%rdi)
 6ae:	6a 1a                	pushq  $0x1a
 6b0:	00 00                	add    %al,(%rax)
 6b2:	00 00                	add    %al,(%rax)
 6b4:	00 00                	add    %al,(%rax)
 6b6:	50                   	push   %rax
 6b7:	00 00                	add    %al,(%rax)
 6b9:	00 05 f5 0a 00 00    	add    %al,0xaf5(%rip)        # 11b4 <parse_args+0x14>
 6bf:	82                   	(bad)  
 6c0:	03 00                	add    (%rax),%eax
 6c2:	00 07                	add    %al,(%rdi)
 6c4:	6a 1a                	pushq  $0x1a
 6c6:	00 00                	add    %al,(%rax)
 6c8:	00 00                	add    %al,(%rax)
 6ca:	00 00                	add    %al,(%rax)
 6cc:	32 00                	xor    (%rax),%al
 6ce:	00 00                	add    %al,(%rax)
 6d0:	05 be 0a 00 00       	add    $0xabe,%eax
 6d5:	8e 03                	mov    (%rbx),%es
 6d7:	00 00                	add    %al,(%rax)
 6d9:	00 00                	add    %al,(%rax)
 6db:	00 18                	add    %bl,(%rax)
 6dd:	af                   	scas   %es:(%rdi),%eax
 6de:	03 00                	add    (%rax),%eax
 6e0:	00 40 01             	add    %al,0x1(%rax)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	01 ad 10 05 ec 09    	add    %ebp,0x9ec0510(%rbp)
 6eb:	00 00                	add    %al,(%rax)
 6ed:	dc 03                	faddl  (%rbx)
 6ef:	00 00                	add    %al,(%rax)
 6f1:	06                   	(bad)  
 6f2:	70 01                	jo     6f5 <__abi_tag+0x431>
 6f4:	00 00                	add    %al,(%rax)
 6f6:	05 c9 09 00 00       	add    $0x9c9,%eax
 6fb:	e8 03 00 00 00       	callq  703 <__abi_tag+0x43f>
 700:	00 19                	add    %bl,(%rcx)
 702:	f5                   	cmc    
 703:	03 00                	add    (%rax),%eax
 705:	00 cc                	add    %cl,%ah
 707:	1a 00                	sbb    (%rax),%al
 709:	00 00                	add    %al,(%rax)
 70b:	00 00                	add    %al,(%rax)
 70d:	00 ca                	add    %cl,%dl
 70f:	00 00                	add    %al,(%rax)
 711:	00 01                	add    %al,(%rcx)
 713:	af                   	scas   %es:(%rdi),%eax
 714:	13 03                	adc    (%rbx),%eax
 716:	85 0c 00             	test   %ecx,(%rax,%rax,1)
 719:	00 01                	add    %al,(%rcx)
 71b:	04 00                	add    $0x0,%al
 71d:	00 03                	add    %al,(%rbx)
 71f:	62                   	(bad)  
 720:	0c 00                	or     $0x0,%al
 722:	00 0c 04             	add    %cl,(%rsp,%rax,1)
 725:	00 00                	add    %al,(%rax)
 727:	03 3f                	add    (%rdi),%edi
 729:	0c 00                	or     $0x0,%al
 72b:	00 17                	add    %dl,(%rdi)
 72d:	04 00                	add    $0x0,%al
 72f:	00 08                	add    %cl,(%rax)
 731:	22 04 00             	and    (%rax,%rax,1),%al
 734:	00 05 c1 0b 00 00    	add    %al,0xbc1(%rip)        # 12fb <dotprod_2x+0xb>
 73a:	2d 04 00 00 07       	sub    $0x7000004,%eax
 73f:	cc                   	int3   
 740:	1a 00                	sbb    (%rax),%al
 742:	00 00                	add    %al,(%rax)
 744:	00 00                	add    %al,(%rax)
 746:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
 74a:	00 05 8a 0b 00 00    	add    %al,0xb8a(%rip)        # 12da <dotprod+0x10a>
 750:	39 04 00             	cmp    %eax,(%rax,%rax,1)
 753:	00 00                	add    %al,(%rax)
 755:	07                   	(bad)  
 756:	36 1b 00             	sbb    %ss:(%rax),%eax
 759:	00 00                	add    %al,(%rax)
 75b:	00 00                	add    %al,(%rax)
 75d:	00 3e                	add    %bh,(%rsi)
 75f:	00 00                	add    %al,(%rax)
 761:	00 05 a8 0c 00 00    	add    %al,0xca8(%rip)        # 140f <dotprod_4x+0x8f>
 767:	46 04 00             	rex.RX add $0x0,%al
 76a:	00 07                	add    %al,(%rdi)
 76c:	36 1b 00             	sbb    %ss:(%rax),%eax
 76f:	00 00                	add    %al,(%rax)
 771:	00 00                	add    %al,(%rax)
 773:	00 3e                	add    %bh,(%rsi)
 775:	00 00                	add    %al,(%rax)
 777:	00 05 cd 0c 00 00    	add    %al,0xccd(%rip)        # 144a <dotprod_4x+0xca>
 77d:	52                   	push   %rdx
 77e:	04 00                	add    $0x0,%al
 780:	00 00                	add    %al,(%rax)
 782:	00 00                	add    %al,(%rax)
 784:	19 f4                	sbb    %esi,%esp
 786:	02 00                	add    (%rax),%al
 788:	00 5b 1c             	add    %bl,0x1c(%rbx)
 78b:	00 00                	add    %al,(%rax)
 78d:	00 00                	add    %al,(%rax)
 78f:	00 00                	add    %al,(%rax)
 791:	99                   	cltd   
 792:	02 00                	add    (%rax),%al
 794:	00 01                	add    %al,(%rcx)
 796:	c6 03 04             	movb   $0x4,(%rbx)
 799:	01 56 fc             	add    %edx,-0x4(%rsi)
 79c:	02 00                	add    (%rax),%al
 79e:	00 04 01             	add    %al,(%rcx,%rax,1)
 7a1:	5e                   	pop    %rsi
 7a2:	07                   	(bad)  
 7a3:	03 00                	add    (%rax),%eax
 7a5:	00 1a                	add    %bl,(%rdx)
 7a7:	64 12 03             	adc    %fs:(%rbx),%al
 7aa:	00 00                	add    %al,(%rax)
 7ac:	07                   	(bad)  
 7ad:	5b                   	pop    %rbx
 7ae:	1c 00                	sbb    $0x0,%al
 7b0:	00 00                	add    %al,(%rax)
 7b2:	00 00                	add    %al,(%rax)
 7b4:	00 99 02 00 00 1b    	add    %bl,0x1b000002(%rcx)
 7ba:	00 1e                	add    %bl,(%rsi)
 7bc:	03 00                	add    (%rax),%eax
 7be:	00 00                	add    %al,(%rax)
 7c0:	00 1c af             	add    %bl,(%rdi,%rbp,4)
 7c3:	03 00                	add    (%rax),%eax
 7c5:	00 a0 01 00 00 01    	add    %ah,0x1000001(%rax)
 7cb:	c9                   	leaveq 
 7cc:	09 18                	or     %ebx,(%rax)
 7ce:	f5                   	cmc    
 7cf:	03 00                	add    (%rax),%eax
 7d1:	00 90 04 00 00 01    	add    %dl,0x1000004(%rax)
 7d7:	cb                   	lret   
 7d8:	0c 08                	or     $0x8,%al
 7da:	2d 04 00 00 06       	sub    $0x6000004,%eax
 7df:	30 06                	xor    %al,(%rsi)
 7e1:	00 00                	add    %al,(%rax)
 7e3:	05 38 0e 00 00       	add    $0xe38,%eax
 7e8:	39 04 00             	cmp    %eax,(%rax,%rax,1)
 7eb:	00 00                	add    %al,(%rax)
 7ed:	06                   	(bad)  
 7ee:	f0 07                	lock (bad) 
 7f0:	00 00                	add    %al,(%rax)
 7f2:	1d 05 10 64 34       	sbb    $0x34641005,%eax
 7f7:	1c 9f                	sbb    $0x9f,%al
 7f9:	46 04 00             	rex.RX add $0x0,%al
 7fc:	00 06                	add    %al,(%rsi)
 7fe:	c0 07 00             	rolb   $0x0,(%rdi)
 801:	00 1b                	add    %bl,(%rbx)
 803:	64 52                	fs push %rdx
 805:	04 00                	add    $0x0,%al
 807:	00 00                	add    %al,(%rax)
 809:	00 00                	add    %al,(%rax)
 80b:	1c 3c                	sbb    $0x3c,%al
 80d:	03 00                	add    (%rax),%eax
 80f:	00 20                	add    %ah,(%rax)
 811:	08 00                	or     %al,(%rax)
 813:	00 01                	add    %al,(%rcx)
 815:	ca 0c 18             	lret   $0x180c
 818:	6c                   	insb   (%dx),%es:(%rdi)
 819:	04 00                	add    $0x0,%al
 81b:	00 f0                	add    %dh,%al
 81d:	09 00                	or     %eax,(%rax)
 81f:	00 01                	add    %al,(%rcx)
 821:	cc                   	int3   
 822:	0c 04                	or     $0x4,%al
 824:	01 56 78             	add    %edx,0x78(%rsi)
 827:	04 00                	add    $0x0,%al
 829:	00 04 01             	add    %al,(%rcx,%rax,1)
 82c:	5e                   	pop    %rsi
 82d:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
 831:	1a 64 8e 04          	sbb    0x4(%rsi,%rcx,4),%ah
 835:	00 00                	add    %al,(%rax)
 837:	05 97 0d 00 00       	add    $0xd97,%eax
 83c:	99                   	cltd   
 83d:	04 00                	add    $0x0,%al
 83f:	00 1b                	add    %bl,(%rbx)
 841:	04 a4                	add    $0xa4,%al
 843:	04 00                	add    $0x0,%al
 845:	00 06                	add    %al,(%rsi)
 847:	b0 0b                	mov    $0xb,%al
 849:	00 00                	add    %al,(%rax)
 84b:	05 72 0e 00 00       	add    $0xe72,%eax
 850:	b0 04                	mov    $0x4,%al
 852:	00 00                	add    %al,(%rax)
 854:	00 00                	add    %al,(%rax)
 856:	1e                   	(bad)  
 857:	07                   	(bad)  
 858:	09 00                	or     %eax,(%rax)
 85a:	00 b2 17 00 00 00    	add    %dh,0x17(%rdx)
 860:	00 00                	add    %al,(%rax)
 862:	00 1f                	add    %bl,(%rdi)
 864:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 868:	00 1f                	add    %bl,(%rdi)
 86a:	01 55 02             	add    %edx,0x2(%rbp)
 86d:	10 40 00             	adc    %al,0x0(%rax)
 870:	1e                   	(bad)  
 871:	07                   	(bad)  
 872:	09 00                	or     %eax,(%rax)
 874:	00 c2                	add    %al,%dl
 876:	17                   	(bad)  
 877:	00 00                	add    %al,(%rax)
 879:	00 00                	add    %al,(%rax)
 87b:	00 00                	add    %al,(%rax)
 87d:	1f                   	(bad)  
 87e:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 882:	00 1f                	add    %bl,(%rdi)
 884:	01 55 02             	add    %edx,0x2(%rbp)
 887:	10 40 00             	adc    %al,0x0(%rax)
 88a:	1e                   	(bad)  
 88b:	84 01                	test   %al,(%rcx)
 88d:	00 00                	add    %al,(%rax)
 88f:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 890:	1b 00                	sbb    (%rax),%eax
 892:	00 00                	add    %al,(%rax)
 894:	00 00                	add    %al,(%rax)
 896:	00 1f                	add    %bl,(%rdi)
 898:	01 51 02             	add    %edx,0x2(%rcx)
 89b:	7e 00                	jle    89d <__abi_tag+0x5d9>
 89d:	1f                   	(bad)  
 89e:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 8a2:	00 1f                	add    %bl,(%rdi)
 8a4:	01 55 02             	add    %edx,0x2(%rbp)
 8a7:	76 00                	jbe    8a9 <__abi_tag+0x5e5>
 8a9:	00 1e                	add    %bl,(%rsi)
 8ab:	00 02                	add    %al,(%rdx)
 8ad:	00 00                	add    %al,(%rax)
 8af:	b8 1b 00 00 00       	mov    $0x1b,%eax
 8b4:	00 00                	add    %al,(%rax)
 8b6:	00 1f                	add    %bl,(%rdi)
 8b8:	01 51 02             	add    %edx,0x2(%rcx)
 8bb:	7e 00                	jle    8bd <__abi_tag+0x5f9>
 8bd:	1f                   	(bad)  
 8be:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 8c2:	00 1f                	add    %bl,(%rdi)
 8c4:	01 55 02             	add    %edx,0x2(%rbp)
 8c7:	76 00                	jbe    8c9 <__abi_tag+0x605>
 8c9:	00 1e                	add    %bl,(%rsi)
 8cb:	26 09 00             	or     %eax,%es:(%rax)
 8ce:	00 2f                	add    %ch,(%rdi)
 8d0:	1c 00                	sbb    $0x0,%al
 8d2:	00 00                	add    %al,(%rax)
 8d4:	00 00                	add    %al,(%rax)
 8d6:	00 1f                	add    %bl,(%rdi)
 8d8:	01 55 02             	add    %edx,0x2(%rbp)
 8db:	76 00                	jbe    8dd <__abi_tag+0x619>
 8dd:	00 1e                	add    %bl,(%rsi)
 8df:	26 09 00             	or     %eax,%es:(%rax)
 8e2:	00 37                	add    %dh,(%rdi)
 8e4:	1c 00                	sbb    $0x0,%al
 8e6:	00 00                	add    %al,(%rax)
 8e8:	00 00                	add    %al,(%rax)
 8ea:	00 1f                	add    %bl,(%rdi)
 8ec:	01 55 02             	add    %edx,0x2(%rbp)
 8ef:	73 00                	jae    8f1 <__abi_tag+0x62d>
 8f1:	00 1e                	add    %bl,(%rsi)
 8f3:	07                   	(bad)  
 8f4:	09 00                	or     %eax,(%rax)
 8f6:	00 46 1c             	add    %al,0x1c(%rsi)
 8f9:	00 00                	add    %al,(%rax)
 8fb:	00 00                	add    %al,(%rax)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	1f                   	(bad)  
 900:	01 54 03 10          	add    %edx,0x10(%rbx,%rax,1)
 904:	a0 06 1f 01 55 02 10 	movabs 0x40100255011f06,%al
 90b:	40 00 
 90d:	1e                   	(bad)  
 90e:	07                   	(bad)  
 90f:	09 00                	or     %eax,(%rax)
 911:	00 58 1c             	add    %bl,0x1c(%rax)
 914:	00 00                	add    %al,(%rax)
 916:	00 00                	add    %al,(%rax)
 918:	00 00                	add    %al,(%rax)
 91a:	1f                   	(bad)  
 91b:	01 54 03 10          	add    %edx,0x10(%rbx,%rax,1)
 91f:	a0 06 1f 01 55 02 10 	movabs 0x40100255011f06,%al
 926:	40 00 
 928:	1e                   	(bad)  
 929:	00 02                	add    %al,(%rdx)
 92b:	00 00                	add    %al,(%rax)
 92d:	ea                   	(bad)  
 92e:	28 00                	sub    %al,(%rax)
 930:	00 00                	add    %al,(%rax)
 932:	00 00                	add    %al,(%rax)
 934:	00 1f                	add    %bl,(%rdi)
 936:	01 55 02             	add    %edx,0x2(%rbp)
 939:	76 00                	jbe    93b <__abi_tag+0x677>
 93b:	1f                   	(bad)  
 93c:	01 51 02             	add    %edx,0x2(%rcx)
 93f:	10 64 00 1e          	adc    %ah,0x1e(%rax,%rax,1)
 943:	26 09 00             	or     %eax,%es:(%rax)
 946:	00 4b 29             	add    %cl,0x29(%rbx)
 949:	00 00                	add    %al,(%rax)
 94b:	00 00                	add    %al,(%rax)
 94d:	00 00                	add    %al,(%rax)
 94f:	1f                   	(bad)  
 950:	01 55 02             	add    %edx,0x2(%rbp)
 953:	76 00                	jbe    955 <__abi_tag+0x691>
 955:	00 1e                	add    %bl,(%rsi)
 957:	26 09 00             	or     %eax,%es:(%rax)
 95a:	00 53 29             	add    %dl,0x29(%rbx)
 95d:	00 00                	add    %al,(%rax)
 95f:	00 00                	add    %al,(%rax)
 961:	00 00                	add    %al,(%rax)
 963:	1f                   	(bad)  
 964:	01 55 02             	add    %edx,0x2(%rbp)
 967:	7e 00                	jle    969 <__abi_tag+0x6a5>
 969:	00 00                	add    %al,(%rax)
 96b:	20 06                	and    %al,(%rsi)
 96d:	02 00                	add    (%rax),%al
 96f:	00 02                	add    %al,(%rdx)
 971:	4a 02 1e             	rex.WX add (%rsi),%bl
 974:	09 00                	or     %eax,(%rax)
 976:	00 21                	add    %ah,(%rcx)
 978:	1f                   	(bad)  
 979:	09 00                	or     %eax,(%rax)
 97b:	00 21                	add    %ah,(%rcx)
 97d:	1f                   	(bad)  
 97e:	09 00                	or     %eax,(%rax)
 980:	00 00                	add    %al,(%rax)
 982:	22 0f                	and    (%rdi),%cl
 984:	85 01                	test   %eax,(%rcx)
 986:	00 00                	add    %al,(%rax)
 988:	07                   	(bad)  
 989:	08 23                	or     %ah,(%rbx)
 98b:	14 02                	adc    $0x2,%al
 98d:	00 00                	add    %al,(%rax)
 98f:	02 35 02 21 1e 09    	add    0x91e2102(%rip),%dh        # 91e2a97 <_end+0x91dda3f>
 995:	00 00                	add    %al,(%rax)
 997:	00 14 35 03 00 00 15 	add    %dl,0x15000003(,%rsi,1)
 99e:	a8 03                	test   $0x3,%al
 9a0:	00 00                	add    %al,(%rax)
 9a2:	10 00                	adc    %al,(%rax)
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
  62:	01 11                	add    %edx,(%rcx)
  64:	01 12                	add    %edx,(%rdx)
  66:	06                   	(bad)  
  67:	40 18 97 42 19 31 13 	sbb    %dl,0x13311942(%rdi)
  6e:	00 00                	add    %al,(%rax)
  70:	03 05 00 02 17 31    	add    0x31170200(%rip),%eax        # 31170276 <_end+0x3116b21e>
  76:	13 00                	adc    (%rax),%eax
  78:	00 04 05 00 02 18 31 	add    %al,0x31180200(,%rax,1)
  7f:	13 00                	adc    (%rax),%eax
  81:	00 05 34 00 02 17    	add    %al,0x17020034(%rip)        # 170200bb <_end+0x1701b063>
  87:	31 13                	xor    %edx,(%rbx)
  89:	00 00                	add    %al,(%rax)
  8b:	06                   	(bad)  
  8c:	0b 01                	or     (%rcx),%eax
  8e:	55                   	push   %rbp
  8f:	17                   	(bad)  
  90:	00 00                	add    %al,(%rax)
  92:	07                   	(bad)  
  93:	0b 01                	or     (%rcx),%eax
  95:	11 01                	adc    %eax,(%rcx)
  97:	12 06                	adc    (%rsi),%al
  99:	00 00                	add    %al,(%rax)
  9b:	08 34 00             	or     %dh,(%rax,%rax,1)
  9e:	31 13                	xor    %edx,(%rbx)
  a0:	00 00                	add    %al,(%rax)
  a2:	09 2e                	or     %ebp,(%rsi)
  a4:	01 11                	add    %edx,(%rcx)
  a6:	01 12                	add    %edx,(%rdx)
  a8:	06                   	(bad)  
  a9:	40 18 97 42 19 03 0e 	sbb    %dl,0xe031942(%rdi)
  b0:	3a 0b                	cmp    (%rbx),%cl
  b2:	3b 0b                	cmp    (%rbx),%ecx
  b4:	27                   	(bad)  
  b5:	19 49 13             	sbb    %ecx,0x13(%rcx)
  b8:	3f                   	(bad)  
  b9:	19 00                	sbb    %eax,(%rax)
  bb:	00 0a                	add    %cl,(%rdx)
  bd:	05 00 02 18 03       	add    $0x3180200,%eax
  c2:	0e                   	(bad)  
  c3:	3a 0b                	cmp    (%rbx),%cl
  c5:	3b 0b                	cmp    (%rbx),%ecx
  c7:	49 13 00             	adc    (%r8),%rax
  ca:	00 0b                	add    %cl,(%rbx)
  cc:	34 00                	xor    $0x0,%al
  ce:	02 17                	add    (%rdi),%dl
  d0:	03 0e                	add    (%rsi),%ecx
  d2:	3a 0b                	cmp    (%rbx),%cl
  d4:	3b 0b                	cmp    (%rbx),%ecx
  d6:	49 13 00             	adc    (%r8),%rax
  d9:	00 0c 34             	add    %cl,(%rsp,%rsi,1)
  dc:	00 03                	add    %al,(%rbx)
  de:	0e                   	(bad)  
  df:	3a 0b                	cmp    (%rbx),%cl
  e1:	3b 0b                	cmp    (%rbx),%ecx
  e3:	49 13 00             	adc    (%r8),%rax
  e6:	00 0d 2e 01 03 0e    	add    %cl,0xe03012e(%rip)        # e03021a <_end+0xe02b1c2>
  ec:	3a 0b                	cmp    (%rbx),%cl
  ee:	3b 0b                	cmp    (%rbx),%ecx
  f0:	27                   	(bad)  
  f1:	19 49 13             	sbb    %ecx,0x13(%rcx)
  f4:	3f                   	(bad)  
  f5:	19 20                	sbb    %esp,(%rax)
  f7:	0b 00                	or     (%rax),%eax
  f9:	00 0e                	add    %cl,(%rsi)
  fb:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 100:	0b 3b                	or     (%rbx),%edi
 102:	0b 49 13             	or     0x13(%rcx),%ecx
 105:	00 00                	add    %al,(%rax)
 107:	0f 24                	(bad)  
 109:	00 03                	add    %al,(%rbx)
 10b:	0e                   	(bad)  
 10c:	3e 0b 0b             	or     %ds:(%rbx),%ecx
 10f:	0b 00                	or     (%rax),%eax
 111:	00 10                	add    %dl,(%rax)
 113:	0f 00 49 13          	str    0x13(%rcx)
 117:	00 00                	add    %al,(%rax)
 119:	11 2e                	adc    %ebp,(%rsi)
 11b:	01 03                	add    %eax,(%rbx)
 11d:	0e                   	(bad)  
 11e:	3a 0b                	cmp    (%rbx),%cl
 120:	3b 0b                	cmp    (%rbx),%ecx
 122:	27                   	(bad)  
 123:	19 20                	sbb    %esp,(%rax)
 125:	0b 00                	or     (%rax),%eax
 127:	00 12                	add    %dl,(%rdx)
 129:	0b 01                	or     (%rcx),%eax
 12b:	00 00                	add    %al,(%rax)
 12d:	13 37                	adc    (%rdi),%esi
 12f:	00 49 13             	add    %cl,0x13(%rcx)
 132:	00 00                	add    %al,(%rax)
 134:	14 01                	adc    $0x1,%al
 136:	01 49 13             	add    %ecx,0x13(%rcx)
 139:	00 00                	add    %al,(%rax)
 13b:	15 21 00 49 13       	adc    $0x13490021,%eax
 140:	37                   	(bad)  
 141:	0b 00                	or     (%rax),%eax
 143:	00 16                	add    %dl,(%rsi)
 145:	24 00                	and    $0x0,%al
 147:	03 0e                	add    (%rsi),%ecx
 149:	0b 0b                	or     (%rbx),%ecx
 14b:	3e 0b 00             	or     %ds:(%rax),%eax
 14e:	00 17                	add    %dl,(%rdi)
 150:	05 00 02 17 03       	add    $0x3170200,%eax
 155:	0e                   	(bad)  
 156:	3a 0b                	cmp    (%rbx),%cl
 158:	3b 0b                	cmp    (%rbx),%ecx
 15a:	49 13 00             	adc    (%r8),%rax
 15d:	00 18                	add    %bl,(%rax)
 15f:	1d 01 31 13 55       	sbb    $0x55133101,%eax
 164:	17                   	(bad)  
 165:	58                   	pop    %rax
 166:	0b 59 0b             	or     0xb(%rcx),%ebx
 169:	57                   	push   %rdi
 16a:	0b 00                	or     (%rax),%eax
 16c:	00 19                	add    %bl,(%rcx)
 16e:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 173:	01 12                	add    %edx,(%rdx)
 175:	06                   	(bad)  
 176:	58                   	pop    %rax
 177:	0b 59 0b             	or     0xb(%rcx),%ebx
 17a:	57                   	push   %rdi
 17b:	0b 00                	or     (%rax),%eax
 17d:	00 1a                	add    %bl,(%rdx)
 17f:	05 00 1c 0f 31       	add    $0x310f1c00,%eax
 184:	13 00                	adc    (%rax),%eax
 186:	00 1b                	add    %bl,(%rbx)
 188:	34 00                	xor    $0x0,%al
 18a:	1c 0f                	sbb    $0xf,%al
 18c:	31 13                	xor    %edx,(%rbx)
 18e:	00 00                	add    %al,(%rax)
 190:	1c 1d                	sbb    $0x1d,%al
 192:	00 31                	add    %dh,(%rcx)
 194:	13 55 17             	adc    0x17(%rbp),%edx
 197:	58                   	pop    %rax
 198:	0b 59 0b             	or     0xb(%rcx),%ebx
 19b:	57                   	push   %rdi
 19c:	0b 00                	or     (%rax),%eax
 19e:	00 1d 34 00 02 18    	add    %bl,0x18020034(%rip)        # 180201d8 <_end+0x1801b180>
 1a4:	31 13                	xor    %edx,(%rbx)
 1a6:	00 00                	add    %al,(%rax)
 1a8:	1e                   	(bad)  
 1a9:	89 82 01 01 31 13    	mov    %eax,0x13310101(%rdx)
 1af:	11 01                	adc    %eax,(%rcx)
 1b1:	00 00                	add    %al,(%rax)
 1b3:	1f                   	(bad)  
 1b4:	8a 82 01 00 02 18    	mov    0x18020001(%rdx),%al
 1ba:	91                   	xchg   %eax,%ecx
 1bb:	42 18 00             	rex.X sbb %al,(%rax)
 1be:	00 20                	add    %ah,(%rax)
 1c0:	2e 01 03             	add    %eax,%cs:(%rbx)
 1c3:	0e                   	(bad)  
 1c4:	3a 0b                	cmp    (%rbx),%cl
 1c6:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491af3 <_end+0x1348ca9b>
 1cc:	3c 19                	cmp    $0x19,%al
 1ce:	3f                   	(bad)  
 1cf:	19 00                	sbb    %eax,(%rax)
 1d1:	00 21                	add    %ah,(%rcx)
 1d3:	05 00 49 13 00       	add    $0x134900,%eax
 1d8:	00 22                	add    %ah,(%rdx)
 1da:	0f 00 00             	sldt   (%rax)
 1dd:	00 23                	add    %ah,(%rbx)
 1df:	2e 01 03             	add    %eax,%cs:(%rbx)
 1e2:	0e                   	(bad)  
 1e3:	3a 0b                	cmp    (%rbx),%cl
 1e5:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1b12 <_end+0x193bcaba>
 1eb:	3f                   	(bad)  
 1ec:	19 00                	sbb    %eax,(%rax)
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
  7c:	01 12                	add    %edx,(%rdx)
  7e:	0a 00                	or     (%rax),%al
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
  cb:	00 1a                	add    %bl,(%rdx)
  cd:	05 0c 0a 21 05       	add    $0x5210a0c,%eax
  d2:	07                   	(bad)  
  d3:	06                   	(bad)  
  d4:	3c 05                	cmp    $0x5,%al
  d6:	12 06                	adc    (%rsi),%al
  d8:	31 05 0a 06 4a 05    	xor    %eax,0x54a060a(%rip)        # 54a06e8 <_end+0x549b690>
  de:	05 06 c6 05 00       	add    $0x5c606,%eax
  e3:	03 11                	add    (%rcx),%edx
  e5:	08 82 05 24 0a 15    	or     %al,0x150a2405(%rdx)
  eb:	05 03 06 3c 03       	add    $0x33c0603,%eax
  f0:	61                   	(bad)  
  f1:	82                   	(bad)  
  f2:	06                   	(bad)  
  f3:	03 22                	add    (%rdx),%esp
  f5:	d6                   	(bad)  
  f6:	1d 05 0a 02 36       	sbb    $0x36020a05,%eax
  fb:	13 05 11 06 08 66    	adc    0x66080611(%rip),%eax        # 66080712 <_end+0x6607b6ba>
 101:	05 0f 58 05 07       	add    $0x705580f,%eax
 106:	4a 05 11 4a 05 0f    	rex.WX add $0xf054a11,%rax
 10c:	66 05 07 4a          	add    $0x4a07,%ax
 110:	05 11 4a 05 0f       	add    $0xf054a11,%eax
 115:	66 05 07 4a          	add    $0x4a07,%ax
 119:	05 11 4a 05 0f       	add    $0xf054a11,%eax
 11e:	66 05 07 4a          	add    $0x4a07,%ax
 122:	05 29 06 49 05       	add    $0x5490629,%eax
 127:	11 f3                	adc    %esi,%ebx
 129:	05 0a 06 ac 05       	add    $0x5ac060a,%eax
 12e:	0f 58 05 07 4a 05 0a 	addps  0xa054a07(%rip),%xmm0        # a054b3c <_end+0xa04fae4>
 135:	4a 05 0f 66 05 07    	rex.WX add $0x705660f,%rax
 13b:	4a 05 03 06 49 05    	rex.WX add $0x5490603,%rax
 141:	11 08                	adc    %ecx,(%rax)
 143:	ad                   	lods   %ds:(%rsi),%eax
 144:	05 0f 06 58 05       	add    $0x558060f,%eax
 149:	07                   	(bad)  
 14a:	58                   	pop    %rax
 14b:	05 29 06 49 05       	add    $0x5490629,%eax
 150:	24 06                	and    $0x6,%al
 152:	4a 05 03 3c 06 31    	rex.WX add $0x31063c03,%rax
 158:	06                   	(bad)  
 159:	03 5e 20             	add    0x20(%rsi),%ebx
 15c:	05 29 06 03 1f       	add    $0x1f030629,%eax
 161:	9e                   	sahf   
 162:	05 00 de 05 07       	add    $0x705de00,%eax
 167:	0a 16                	or     (%rsi),%dl
 169:	06                   	(bad)  
 16a:	03 55 58             	add    0x58(%rbp),%edx
 16d:	05 28 06 03 39       	add    $0x39030628,%eax
 172:	4a 05 07 06 3c 03    	rex.WX add $0x33c0607,%rax
 178:	47                   	rex.RXB
 179:	2e 05 0c 06 03 3b    	cs add $0x3b03060c,%eax
 17f:	2e 05 13 06 58 05    	cs add $0x5580613,%eax
 185:	11 58 05             	adc    %ebx,0x5(%rax)
 188:	09 4a 05             	or     %ecx,0x5(%rdx)
 18b:	2f                   	(bad)  
 18c:	06                   	(bad)  
 18d:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 193:	07                   	(bad)  
 194:	3c 05                	cmp    $0x5,%al
 196:	13 06                	adc    (%rsi),%eax
 198:	34 05                	xor    $0x5,%al
 19a:	00 06                	add    %al,(%rsi)
 19c:	03 41 82             	add    -0x7e(%rcx),%eax
 19f:	05 01 06 03 c1       	add    $0xc1030601,%eax
 1a4:	00 4a 05             	add    %cl,0x5(%rdx)
 1a7:	28 03                	sub    %al,(%rbx)
 1a9:	6e                   	outsb  %ds:(%rsi),(%dx)
 1aa:	20 05 07 06 ac 03    	and    %al,0x3ac0607(%rip)        # 3ac07b7 <_end+0x3abb75f>
 1b0:	51                   	push   %rcx
 1b1:	2e 05 0c 06 03 31    	cs add $0x3103060c,%eax
 1b7:	ac                   	lods   %ds:(%rsi),%al
 1b8:	05 13 06 58 05       	add    $0x5580613,%eax
 1bd:	11 58 05             	adc    %ebx,0x5(%rax)
 1c0:	09 4a 05             	or     %ecx,0x5(%rdx)
 1c3:	31 06                	xor    %eax,(%rsi)
 1c5:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 1cb:	07                   	(bad)  
 1cc:	3c 05                	cmp    $0x5,%al
 1ce:	13 06                	adc    (%rsi),%eax
 1d0:	34 05                	xor    $0x5,%al
 1d2:	25 06 ba 05 23       	and    $0x2305ba06,%eax
 1d7:	66 05 00 03          	add    $0x300,%ax
 1db:	4b                   	rex.WXB
 1dc:	66 05 01 06          	add    $0x601,%ax
 1e0:	03 c1                	add    %ecx,%eax
 1e2:	00 4a 05             	add    %cl,0x5(%rdx)
 1e5:	00 94 05 24 0a 4e 05 	add    %dl,0x54e0a24(%rbp,%rax,1)
 1ec:	03 06                	add    (%rsi),%eax
 1ee:	3c 03                	cmp    $0x3,%al
 1f0:	b7 7f                	mov    $0x7f,%bh
 1f2:	66 05 14 06          	add    $0x614,%ax
 1f6:	03 cb                	add    %ebx,%ecx
 1f8:	00 08                	add    %cl,(%rax)
 1fa:	2e 05 18 59 05 14    	cs add $0x14055918,%eax
 200:	65 05 18 ad 05 14    	gs add $0x1405ad18,%eax
 206:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 20c:	18 06                	sbb    %al,(%rsi)
 20e:	4b 05 0c 06 f2 05    	rex.WXB add $0x5f2060c,%rax
 214:	2b 06                	sub    (%rsi),%eax
 216:	47 05 24 06 4a 05    	rex.RXB add $0x54a0624,%eax
 21c:	03 3c 05 07 06 36 05 	add    0x5360607(,%rax,1),%edi
 223:	09 06                	or     %eax,(%rsi)
 225:	82                   	(bad)  
 226:	05 07 3c 05 2e       	add    $0x2e053c07,%eax
 22b:	06                   	(bad)  
 22c:	32 05 07 06 4a 05    	xor    0x54a0607(%rip),%al        # 54a0839 <_end+0x549b7e1>
 232:	13 06                	adc    (%rsi),%eax
 234:	2f                   	(bad)  
 235:	05 11 06 ba 05       	add    $0x5ba0611,%eax
 23a:	09 66 05             	or     %esp,0x5(%rsi)
 23d:	11 4a 05             	adc    %ecx,0x5(%rdx)
 240:	13 66 05             	adc    0x5(%rsi),%esp
 243:	11 66 05             	adc    %esp,0x5(%rsi)
 246:	09 66 03             	or     %esp,0x3(%rsi)
 249:	aa                   	stos   %al,%es:(%rdi)
 24a:	7f 9e                	jg     1ea <__abi_tag-0xda>
 24c:	05 0a 06 03 c6       	add    $0xc603060a,%eax
 251:	00 4a 05             	add    %cl,0x5(%rdx)
 254:	0f 03 13             	lsl    (%rbx),%edx
 257:	4a 05 16 06 82 05    	rex.WX add $0x5820616,%rax
 25d:	1d 4a 05 03 4a       	sbb    $0x4a03054a,%eax
 262:	05 00 06 bf 05       	add    $0x5bf0600,%eax
 267:	24 0a                	and    $0xa,%al
 269:	4e 05 03 06 3c 03    	rex.WRX add $0x33c0603,%rax
 26f:	9e                   	sahf   
 270:	7f 66                	jg     2d8 <__abi_tag+0x14>
 272:	05 14 06 03 e4       	add    $0xe4030614,%eax
 277:	00 08                	add    %cl,(%rax)
 279:	2e 05 18 59 05 14    	cs add $0x14055918,%eax
 27f:	65 05 18 ad 05 14    	gs add $0x1405ad18,%eax
 285:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 28b:	0f 06                	clts   
 28d:	4d 05 1a 06 66 05    	rex.WRB add $0x566061a,%rax
 293:	18 66 05             	sbb    %ah,0x5(%rsi)
 296:	0c 4a                	or     $0x4a,%al
 298:	05 0f 06 4c 05       	add    $0x54c060f,%eax
 29d:	1a 06                	sbb    (%rsi),%al
 29f:	66 05 18 66          	add    $0x6618,%ax
 2a3:	05 0c 4a 05 18       	add    $0x18054a0c,%eax
 2a8:	06                   	(bad)  
 2a9:	46 05 0c 06 f2 05    	rex.RX add $0x5f2060c,%eax
 2af:	2b 06                	sub    (%rsi),%eax
 2b1:	47 05 24 06 4a 05    	rex.RXB add $0x54a0624,%eax
 2b7:	03 3c 05 07 06 03 0c 	add    0xc030607(,%rax,1),%edi
 2be:	2e 05 09 06 82 05    	cs add $0x5820609,%eax
 2c4:	07                   	(bad)  
 2c5:	3c 05                	cmp    $0x5,%al
 2c7:	2e 06                	cs (bad) 
 2c9:	6a 05                	pushq  $0x5
 2cb:	07                   	(bad)  
 2cc:	06                   	(bad)  
 2cd:	4a 05 13 06 67 05    	rex.WX add $0x5670613,%rax
 2d3:	11 06                	adc    %eax,(%rsi)
 2d5:	ba 05 09 66 05       	mov    $0x5660905,%edx
 2da:	11 4a 05             	adc    %ecx,0x5(%rdx)
 2dd:	13 66 05             	adc    0x5(%rsi),%esp
 2e0:	11 66 05             	adc    %esp,0x5(%rsi)
 2e3:	09 66 05             	or     %esp,0x5(%rsi)
 2e6:	13 4a 05             	adc    0x5(%rdx),%ecx
 2e9:	11 66 05             	adc    %esp,0x5(%rsi)
 2ec:	09 66 05             	or     %esp,0x5(%rsi)
 2ef:	13 82 05 11 66 05    	adc    0x5661105(%rdx),%eax
 2f5:	13 66 05             	adc    0x5(%rsi),%esp
 2f8:	11 66 05             	adc    %esp,0x5(%rsi)
 2fb:	09 66 05             	or     %esp,0x5(%rsi)
 2fe:	13 4a 05             	adc    0x5(%rdx),%ecx
 301:	11 66 05             	adc    %esp,0x5(%rsi)
 304:	09 66 03             	or     %esp,0x3(%rsi)
 307:	8d 7f 82             	lea    -0x7e(%rdi),%edi
 30a:	05 0a 06 03 df       	add    $0xdf03060a,%eax
 30f:	00 66 05             	add    %ah,0x5(%rsi)
 312:	0f 03 17             	lsl    (%rdi),%edx
 315:	ba 05 16 06 4a       	mov    $0x4a061605,%edx
 31a:	05 24 82 05 1d       	add    $0x1d058224,%eax
 31f:	4a 05 2b 4a 05 24    	rex.WX add $0x24054a2b,%rax
 325:	82                   	(bad)  
 326:	05 32 4a 05 39       	add    $0x39054a32,%eax
 32b:	4a 05 03 4a 05 00    	rex.WX add $0x54a03,%rax
 331:	06                   	(bad)  
 332:	bf 05 24 0a 4e       	mov    $0x4e0a2405,%edi
 337:	05 03 06 3c 03       	add    $0x33c0603,%eax
 33c:	81 7f 66 05 14 06 03 	cmpl   $0x3061405,0x66(%rdi)
 343:	81 01 02 23 01 05    	addl   $0x5012302,(%rcx)
 349:	18 59 05             	sbb    %bl,0x5(%rcx)
 34c:	14 65                	adc    $0x65,%al
 34e:	05 18 ad 05 14       	add    $0x1405ad18,%eax
 353:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 359:	0f 06                	clts   
 35b:	4d 05 1a 06 66 05    	rex.WRB add $0x566061a,%rax
 361:	18 66 05             	sbb    %ah,0x5(%rsi)
 364:	0c 4a                	or     $0x4a,%al
 366:	05 0f 06 5a 05       	add    $0x55a060f,%eax
 36b:	1a 06                	sbb    (%rsi),%al
 36d:	66 05 18 66          	add    $0x6618,%ax
 371:	05 0c 4a 05 0f       	add    $0xf054a0c,%eax
 376:	06                   	(bad)  
 377:	4c 05 1a 06 66 05    	rex.WR add $0x566061a,%rax
 37d:	18 66 05             	sbb    %ah,0x5(%rsi)
 380:	0c 4a                	or     $0x4a,%al
 382:	05 0f 06 4c 05       	add    $0x54c060f,%eax
 387:	1a 06                	sbb    (%rsi),%al
 389:	66 05 18 66          	add    $0x6618,%ax
 38d:	05 0c 4a 05 10       	add    $0x10054a0c,%eax
 392:	06                   	(bad)  
 393:	5a                   	pop    %rdx
 394:	05 1c 06 66 05       	add    $0x566061c,%eax
 399:	1a 66 05             	sbb    0x5(%rsi),%ah
 39c:	0d 4a 05 10 06       	or     $0x610054a,%eax
 3a1:	5a                   	pop    %rdx
 3a2:	05 1c 06 66 05       	add    $0x566061c,%eax
 3a7:	1a 66 05             	sbb    0x5(%rsi),%ah
 3aa:	0d 4a 05 18 06       	or     $0x618054a,%eax
 3af:	03 74 58 05          	add    0x5(%rax,%rbx,2),%esi
 3b3:	0c 06                	or     $0x6,%al
 3b5:	f2 05 2b 06 47 05    	repnz add $0x547062b,%eax
 3bb:	24 06                	and    $0x6,%al
 3bd:	4a 05 03 3c 05 07    	rex.WX add $0x7053c03,%rax
 3c3:	06                   	(bad)  
 3c4:	03 14 66             	add    (%rsi,%riz,2),%edx
 3c7:	05 09 06 9e 05       	add    $0x59e0609,%eax
 3cc:	07                   	(bad)  
 3cd:	3c 05                	cmp    $0x5,%al
 3cf:	28 06                	sub    %al,(%rsi)
 3d1:	86 05 13 4b 05 11    	xchg   %al,0x11054b13(%rip)        # 11054eea <_end+0x1104fe92>
 3d7:	06                   	(bad)  
 3d8:	58                   	pop    %rax
 3d9:	05 09 58 05 34       	add    $0x34055809,%eax
 3de:	06                   	(bad)  
 3df:	49 05 2f 06 4a 03    	rex.WB add $0x34a062f,%rax
 3e5:	e9 7e 74 05 0a       	jmpq   a057868 <_end+0xa052810>
 3ea:	06                   	(bad)  
 3eb:	03 fc                	add    %esp,%edi
 3ed:	00 58 05             	add    %bl,0x5(%rax)
 3f0:	11 03                	adc    %eax,(%rbx)
 3f2:	1f                   	(bad)  
 3f3:	08 e4                	or     %ah,%ah
 3f5:	05 18 06 58 05       	add    $0x5580618,%eax
 3fa:	26 9e                	es sahf 
 3fc:	05 1f 4a 05 26       	add    $0x26054a1f,%eax
 401:	58                   	pop    %rax
 402:	05 34 58 05 2d       	add    $0x2d055834,%eax
 407:	4a 05 34 4a 05 42    	rex.WX add $0x42054a34,%rax
 40d:	58                   	pop    %rax
 40e:	05 3b 58 05 42       	add    $0x4205583b,%eax
 413:	58                   	pop    %rax
 414:	05 50 58 05 49       	add    $0x49055850,%eax
 419:	58                   	pop    %rax
 41a:	05 50 58 05 60       	add    $0x60055850,%eax
 41f:	58                   	pop    %rax
 420:	05 58 58 05 68       	add    $0x68055858,%eax
 425:	58                   	pop    %rax
 426:	05 60 90 05 70       	add    $0x70059060,%eax
 42b:	58                   	pop    %rax
 42c:	05 78 4a 05 05       	add    $0x5054a78,%eax
 431:	58                   	pop    %rax
 432:	05 00 06 94 05       	add    $0x5940600,%eax
 437:	0c 0a                	or     $0xa,%al
 439:	03 eb                	add    %ebx,%ebp
 43b:	7e 08                	jle    445 <__abi_tag+0x181>
 43d:	12 05 07 06 3c 05    	adc    0x53c0607(%rip),%al        # 53c0a4a <_end+0x53bb9f2>
 443:	12 06                	adc    (%rsi),%al
 445:	69 05 0a 06 4a 05 23 	imul   $0x99030623,0x54a060a(%rip),%eax        # 54a0a59 <_end+0x549ba01>
 44c:	06 03 99 
 44f:	01 e4                	add    %esp,%esp
 451:	05 0f 06 82 06       	add    $0x682060f,%eax
 456:	f3 05 24 03 ec 7e    	repz add $0x7eec0324,%eax
 45c:	f2 05 03 06 3c 03    	repnz add $0x33c0603,%eax
 462:	6d                   	insl   (%dx),%es:(%rdi)
 463:	82                   	(bad)  
 464:	05 13 06 03 3f       	add    $0x3f030613,%eax
 469:	08 2e                	or     %ch,(%rsi)
 46b:	06                   	(bad)  
 46c:	03 41 4a             	add    0x4a(%rcx),%eax
 46f:	05 03 06 03 13       	add    $0x13030603,%eax
 474:	58                   	pop    %rax
 475:	06                   	(bad)  
 476:	03 6d 08             	add    0x8(%rbp),%ebp
 479:	f2 03 13             	repnz add (%rbx),%edx
 47c:	74 05                	je     483 <__abi_tag+0x1bf>
 47e:	0c 06                	or     $0x6,%al
 480:	08 ae bb ab bb b9    	or     %ch,-0x46445445(%rsi)
 486:	bb b9 bb 05 2a       	mov    $0x2a05bbb9,%ebx
 48b:	b7 05                	mov    $0x5,%bh
 48d:	0c 02                	or     $0x2,%al
 48f:	31 14 bb             	xor    %edx,(%rbx,%rdi,4)
 492:	05 2a a9 05 03       	add    $0x305a92a,%eax
 497:	06                   	(bad)  
 498:	90                   	nop
 499:	03 6d 58             	add    0x58(%rbp),%ebp
 49c:	05 0c 06 03 15       	add    $0x1503060c,%eax
 4a1:	08 9e 59 05 2a 47    	or     %bl,0x472a0559(%rsi)
 4a7:	05 24 06 4a 05       	add    $0x54a0624,%eax
 4ac:	03 3c 06             	add    (%rsi,%rax,1),%edi
 4af:	03 0c 2e             	add    (%rsi,%rbp,1),%ecx
 4b2:	06                   	(bad)  
 4b3:	03 61 66             	add    0x66(%rcx),%esp
 4b6:	03 1f                	add    (%rdi),%ebx
 4b8:	ac                   	lods   %ds:(%rsi),%al
 4b9:	05 0a 06 02 3d       	add    $0x3d02060a,%eax
 4be:	13 05 11 06 08 74    	adc    0x74080611(%rip),%eax        # 74080ad5 <_end+0x7407ba7d>
 4c4:	05 0f 58 05 07       	add    $0x705580f,%eax
 4c9:	4a 05 11 4a 05 0f    	rex.WX add $0xf054a11,%rax
 4cf:	66 05 07 4a          	add    $0x4a07,%ax
 4d3:	05 11 4a 05 0f       	add    $0xf054a11,%eax
 4d8:	66 05 07 4a          	add    $0x4a07,%ax
 4dc:	05 11 4a 05 0f       	add    $0xf054a11,%eax
 4e1:	66 05 07 4a          	add    $0x4a07,%ax
 4e5:	05 29 06 49 05       	add    $0x5490629,%eax
 4ea:	11 e5                	adc    %esp,%ebp
 4ec:	05 0a 06 ac 05       	add    $0x5ac060a,%eax
 4f1:	0f 66 05 07 4a 05 0a 	pcmpgtd 0xa054a07(%rip),%mm0        # a054eff <_end+0xa04fea7>
 4f8:	4a 05 0f 66 05 07    	rex.WX add $0x705660f,%rax
 4fe:	4a 05 03 06 49 06    	rex.WX add $0x6490603,%rax
 504:	03 61 08             	add    0x8(%rcx),%esp
 507:	20 05 29 03 1f 9e    	and    %al,-0x61e0fcd7(%rip)        # ffffffff9e1f0836 <_end+0xffffffff9e1eb7de>
 50d:	05 05 06 03 6c       	add    $0x6c030605,%eax
 512:	74 05                	je     519 <__abi_tag+0x255>
 514:	11 03                	adc    %eax,(%rbx)
 516:	15 9e 05 0f 06       	adc    $0x60f059e,%eax
 51b:	58                   	pop    %rax
 51c:	05 07 66 05 29       	add    $0x29056607,%eax
 521:	06                   	(bad)  
 522:	49 05 00 06 03 61    	rex.WB add $0x61030600,%rax
 528:	4a 05 03 03 1f 3c    	rex.WX add $0x3c1f0303,%rax
 52e:	05 07 06 03 0c       	add    $0xc030607,%eax
 533:	2e 06                	cs (bad) 
 535:	03 55 66             	add    0x66(%rbp),%edx
 538:	05 0c 06 03 3b       	add    $0x3b03060c,%eax
 53d:	f2 05 13 06 66 05    	repnz add $0x5660613,%eax
 543:	11 58 05             	adc    %ebx,0x5(%rax)
 546:	09 4a 05             	or     %ecx,0x5(%rdx)
 549:	2f                   	(bad)  
 54a:	06                   	(bad)  
 54b:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 551:	07                   	(bad)  
 552:	3c 05                	cmp    $0x5,%al
 554:	13 06                	adc    (%rsi),%eax
 556:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 557:	06                   	(bad)  
 558:	03 41 4a             	add    0x4a(%rcx),%eax
 55b:	05 28 06 03 2f       	add    $0x2f030628,%eax
 560:	2e 05 07 06 ac 03    	cs add $0x3ac0607,%eax
 566:	51                   	push   %rcx
 567:	2e 05 0c 06 03 31    	cs add $0x3103060c,%eax
 56d:	90                   	nop
 56e:	05 13 06 66 05       	add    $0x5660613,%eax
 573:	11 58 05             	adc    %ebx,0x5(%rax)
 576:	09 4a 05             	or     %ecx,0x5(%rdx)
 579:	31 06                	xor    %eax,(%rsi)
 57b:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 581:	07                   	(bad)  
 582:	3c 05                	cmp    $0x5,%al
 584:	13 06                	adc    (%rsi),%eax
 586:	34 05                	xor    $0x5,%al
 588:	25 06 ba 05 23       	and    $0x2305ba06,%eax
 58d:	74 05                	je     594 <__abi_tag+0x2d0>
 58f:	1a 74 05 24          	sbb    0x24(%rbp,%rax,1),%dh
 593:	06                   	(bad)  
 594:	03 5e 4a             	add    0x4a(%rsi),%ebx
 597:	06                   	(bad)  
 598:	03 6d 3c             	add    0x3c(%rbp),%ebp
 59b:	05 03 06 03 c9       	add    $0xc9030603,%eax
 5a0:	00 e4                	add    %ah,%ah
 5a2:	06                   	(bad)  
 5a3:	03 b7 7f 66 05 14    	add    0x1405667f(%rdi),%esi
 5a9:	06                   	(bad)  
 5aa:	03 cb                	add    %ebx,%ecx
 5ac:	00 d6                	add    %dl,%dh
 5ae:	05 18 59 05 14       	add    $0x14055918,%eax
 5b3:	65 05 18 bb 05 14    	gs add $0x1405bb18,%eax
 5b9:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 5bf:	18 06                	sbb    %al,(%rsi)
 5c1:	4b 05 0c 06 f2 05    	rex.WXB add $0x5f2060c,%rax
 5c7:	2b 06                	sub    (%rsi),%eax
 5c9:	47 05 24 06 4a 05    	rex.RXB add $0x54a0624,%eax
 5cf:	03 3c 05 07 06 36 05 	add    0x5360607(,%rax,1),%edi
 5d6:	09 06                	or     %eax,(%rsi)
 5d8:	82                   	(bad)  
 5d9:	05 07 4a 05 2e       	add    $0x2e054a07,%eax
 5de:	06                   	(bad)  
 5df:	32 05 07 06 4a 05    	xor    0x54a0607(%rip),%al        # 54a0bec <_end+0x549bb94>
 5e5:	13 06                	adc    (%rsi),%eax
 5e7:	2f                   	(bad)  
 5e8:	05 11 06 d6 05       	add    $0x5d60611,%eax
 5ed:	09 74 05 11          	or     %esi,0x11(%rbp,%rax,1)
 5f1:	4a 05 13 74 05 11    	rex.WX add $0x11057413,%rax
 5f7:	74 05                	je     5fe <__abi_tag+0x33a>
 5f9:	09 74 03 aa          	or     %esi,-0x56(%rbx,%rax,1)
 5fd:	7f 82                	jg     581 <__abi_tag+0x2bd>
 5ff:	05 0a 06 03 c6       	add    $0xc603060a,%eax
 604:	00 66 05             	add    %ah,0x5(%rsi)
 607:	16                   	(bad)  
 608:	03 13                	add    (%rbx),%edx
 60a:	4a 05 0f 06 4a 05    	rex.WX add $0x54a060f,%rax
 610:	1d ba 03 a7 7f       	sbb    $0x7fa703ba,%eax
 615:	4a 05 13 06 03 b0    	rex.WX add $0xffffffffb0030613,%rax
 61b:	01 66 06             	add    %esp,0x6(%rsi)
 61e:	03 d0                	add    %eax,%edx
 620:	7e d6                	jle    5f8 <__abi_tag+0x334>
 622:	05 14 06 03 b1       	add    $0xb1030614,%eax
 627:	01 66 06             	add    %esp,0x6(%rsi)
 62a:	03 cf                	add    %edi,%ecx
 62c:	7e d6                	jle    604 <__abi_tag+0x340>
 62e:	05 03 06 03 b4       	add    $0xb4030603,%eax
 633:	01 66 08             	add    %esp,0x8(%rsi)
 636:	21 08                	and    %ecx,(%rax)
 638:	2f                   	(bad)  
 639:	08 59 08             	or     %bl,0x8(%rcx)
 63c:	67 08 69 83          	or     %ch,-0x7d(%ecx)
 640:	05 0f 88 08 21       	add    $0x2108880f,%eax
 645:	05 0c 03 d2 7e       	add    $0x7ed2030c,%eax
 64a:	08 20                	or     %ah,(%rax)
 64c:	ad                   	lods   %ds:(%rsi),%eax
 64d:	9d                   	popfq  
 64e:	4b                   	rex.WXB
 64f:	49                   	rex.WB
 650:	4b                   	rex.WXB
 651:	49                   	rex.WB
 652:	4b                   	rex.WXB
 653:	49                   	rex.WB
 654:	4b                   	rex.WXB
 655:	49                   	rex.WB
 656:	4b                   	rex.WXB
 657:	49                   	rex.WB
 658:	4b                   	rex.WXB
 659:	49                   	rex.WB
 65a:	4b                   	rex.WXB
 65b:	49 75 73             	rex.WB jne 6d1 <__abi_tag+0x40d>
 65e:	75 73                	jne    6d3 <__abi_tag+0x40f>
 660:	75 73                	jne    6d5 <__abi_tag+0x411>
 662:	75 73                	jne    6d7 <__abi_tag+0x413>
 664:	75 73                	jne    6d9 <__abi_tag+0x415>
 666:	75 73                	jne    6db <__abi_tag+0x417>
 668:	75 73                	jne    6dd <__abi_tag+0x419>
 66a:	75 73                	jne    6df <__abi_tag+0x41b>
 66c:	75 73                	jne    6e1 <__abi_tag+0x41d>
 66e:	75 73                	jne    6e3 <__abi_tag+0x41f>
 670:	75 73                	jne    6e5 <__abi_tag+0x421>
 672:	75 73                	jne    6e7 <__abi_tag+0x423>
 674:	75 73                	jne    6e9 <__abi_tag+0x425>
 676:	75 73                	jne    6eb <__abi_tag+0x427>
 678:	75 73                	jne    6ed <__abi_tag+0x429>
 67a:	75 73                	jne    6ef <__abi_tag+0x42b>
 67c:	75 73                	jne    6f1 <__abi_tag+0x42d>
 67e:	75 73                	jne    6f3 <__abi_tag+0x42f>
 680:	75 73                	jne    6f5 <__abi_tag+0x431>
 682:	75 73                	jne    6f7 <__abi_tag+0x433>
 684:	75 73                	jne    6f9 <__abi_tag+0x435>
 686:	75 73                	jne    6fb <__abi_tag+0x437>
 688:	75 73                	jne    6fd <__abi_tag+0x439>
 68a:	75 73                	jne    6ff <__abi_tag+0x43b>
 68c:	75 73                	jne    701 <__abi_tag+0x43d>
 68e:	75 73                	jne    703 <__abi_tag+0x43f>
 690:	75 73                	jne    705 <__abi_tag+0x441>
 692:	75 73                	jne    707 <__abi_tag+0x443>
 694:	75 73                	jne    709 <__abi_tag+0x445>
 696:	75 73                	jne    70b <__abi_tag+0x447>
 698:	75 73                	jne    70d <__abi_tag+0x449>
 69a:	75 73                	jne    70f <__abi_tag+0x44b>
 69c:	75 73                	jne    711 <__abi_tag+0x44d>
 69e:	75 73                	jne    713 <__abi_tag+0x44f>
 6a0:	75 73                	jne    715 <__abi_tag+0x451>
 6a2:	75 73                	jne    717 <__abi_tag+0x453>
 6a4:	75 73                	jne    719 <__abi_tag+0x455>
 6a6:	75 73                	jne    71b <__abi_tag+0x457>
 6a8:	75 73                	jne    71d <__abi_tag+0x459>
 6aa:	75 73                	jne    71f <__abi_tag+0x45b>
 6ac:	75 73                	jne    721 <__abi_tag+0x45d>
 6ae:	75 05                	jne    6b5 <__abi_tag+0x3f1>
 6b0:	11 03                	adc    %eax,(%rbx)
 6b2:	0a 74 05 0f          	or     0xf(%rbp,%rax,1),%dh
 6b6:	06                   	(bad)  
 6b7:	02 77 12             	add    0x12(%rdi),%dh
 6ba:	03 60 02             	add    0x2(%rax),%esp
 6bd:	82                   	(bad)  
 6be:	01 01                	add    %eax,(%rcx)
 6c0:	03 20                	add    (%rax),%esp
 6c2:	9e                   	sahf   
 6c3:	05 11 02 29 12       	add    $0x12290211,%eax
 6c8:	05 18 06 03 2d       	add    $0x2d030618,%eax
 6cd:	90                   	nop
 6ce:	05 09 03 6f 90       	add    $0x906f0309,%eax
 6d3:	05 0c 03 11 9e       	add    $0x9e11030c,%eax
 6d8:	05 09 03 6f 58       	add    $0x586f0309,%eax
 6dd:	05 07 03 64 58       	add    $0x58640307,%eax
 6e2:	05 11 06 58 05       	add    $0x5580611,%eax
 6e7:	15 06 03 1c 82       	adc    $0x821c0306,%eax
 6ec:	05 0c 03 2e 82       	add    $0x822e030c,%eax
 6f1:	05 11 03 b6 7f       	add    $0x7fb60311,%eax
 6f6:	58                   	pop    %rax
 6f7:	05 18 03 2d 82       	add    $0x822d0318,%eax
 6fc:	05 0c 06 82 05       	add    $0x582060c,%eax
 701:	09 06                	or     %eax,(%rsi)
 703:	03 6f 08             	add    0x8(%rdi),%ebp
 706:	82                   	(bad)  
 707:	05 07 03 64 02       	add    $0x2640307,%eax
 70c:	23 01                	and    (%rcx),%eax
 70e:	05 11 06 4a 05       	add    $0x54a0611,%eax
 713:	0f 90 05 0c 06 03 ca 	seto   -0x35fcf9f4(%rip)        # ffffffffca030d26 <_end+0xffffffffca02bcce>
 71a:	00 90 05 11 03 b6    	add    %dl,-0x49fceefb(%rax)
 720:	7f 58                	jg     77a <__abi_tag+0x4b6>
 722:	05 0f 06 90 05       	add    $0x590060f,%eax
 727:	0c 06                	or     $0x6,%al
 729:	03 ca                	add    %edx,%ecx
 72b:	00 90 05 11 03 b6    	add    %dl,-0x49fceefb(%rax)
 731:	7f 4a                	jg     77d <__abi_tag+0x4b9>
 733:	05 0f 06 82 05       	add    $0x582060f,%eax
 738:	11 82 05 15 06 03    	adc    %eax,0x3061505(%rdx)
 73e:	1c 90                	sbb    $0x90,%al
 740:	05 11 03 64 90       	add    $0x90640311,%eax
 745:	05 15 03 1c 82       	add    $0x821c0315,%eax
 74a:	05 07 03 64 c8       	add    $0xc8640307,%eax
 74f:	05 0c 03 c8 00       	add    $0xc8030c,%eax
 754:	08 12                	or     %dl,(%rdx)
 756:	05 11 03 b8 7f       	add    $0x7fb80311,%eax
 75b:	c8 05 18 03          	enterq $0x1805,$0x3
 75f:	2d 82 05 07 03       	sub    $0x3070582,%eax
 764:	53                   	push   %rbx
 765:	82                   	(bad)  
 766:	05 09 03 1c 08       	add    $0x81c0309,%eax
 76b:	12 05 07 03 64 82    	adc    -0x7d9bfcf9(%rip),%al        # ffffffff82640a78 <_end+0xffffffff8263ba20>
 771:	05 09 03 1c d6       	add    $0xd61c0309,%eax
 776:	05 07 03 64 08       	add    $0x8640307,%eax
 77b:	90                   	nop
 77c:	05 11 06 08 74       	add    $0x74080611,%eax
 781:	05 15 06 03 1c       	add    $0x1c030615,%eax
 786:	82                   	(bad)  
 787:	05 0c 03 2e 82       	add    $0x822e030c,%eax
 78c:	05 11 03 b6 7f       	add    $0x7fb60311,%eax
 791:	58                   	pop    %rax
 792:	05 15 03 1c 82       	add    $0x821c0315,%eax
 797:	05 0c 03 2e 08       	add    $0x82e030c,%eax
 79c:	e4 05                	in     $0x5,%al
 79e:	11 03                	adc    %eax,(%rbx)
 7a0:	b6 7f                	mov    $0x7f,%dh
 7a2:	58                   	pop    %rax
 7a3:	05 15 03 1c 82       	add    $0x821c0315,%eax
 7a8:	05 0c 03 2e 82       	add    $0x822e030c,%eax
 7ad:	05 11 03 b6 7f       	add    $0x7fb60311,%eax
 7b2:	58                   	pop    %rax
 7b3:	05 18 03 2d 82       	add    $0x822d0318,%eax
 7b8:	05 09 03 6f 08       	add    $0x86f0309,%eax
 7bd:	12 05 0c 03 2c d6    	adc    -0x29d3fcf4(%rip),%al        # ffffffffd62c0acf <_end+0xffffffffd62bba77>
 7c3:	05 11 03 b8 7f       	add    $0x7fb80311,%eax
 7c8:	58                   	pop    %rax
 7c9:	05 18 03 2d 82       	add    $0x822d0318,%eax
 7ce:	05 0c 03 1b 08       	add    $0x81b030c,%eax
 7d3:	12 05 09 03 54 58    	adc    0x58540309(%rip),%al        # 58540ae2 <_end+0x5853ba8a>
 7d9:	05 07 03 64 82       	add    $0x82640307,%eax
 7de:	05 09 03 1c 58       	add    $0x581c0309,%eax
 7e3:	05 0c 03 2c 02       	add    $0x22c030c,%eax
 7e8:	47 01 05 07 03 b8 7f 	rex.RXB add %r8d,0x7fb80307(%rip)        # 7fb80af6 <_end+0x7fb7ba9e>
 7ef:	4a 06                	rex.WX (bad) 
 7f1:	03 60 90             	add    -0x70(%rax),%esp
 7f4:	05 0c 06 03 ea       	add    $0xea03060c,%eax
 7f9:	00 66 05             	add    %ah,0x5(%rsi)
 7fc:	11 03                	adc    %eax,(%rbx)
 7fe:	b6 7f                	mov    $0x7f,%dh
 800:	4a 05 0f 06 82 05    	rex.WX add $0x582060f,%rax
 806:	0c 06                	or     $0x6,%al
 808:	03 ca                	add    %edx,%ecx
 80a:	00 08                	add    %cl,(%rax)
 80c:	58                   	pop    %rax
 80d:	05 11 03 b6 7f       	add    $0x7fb60311,%eax
 812:	58                   	pop    %rax
 813:	05 18 03 2d 58       	add    $0x582d0318,%eax
 818:	06                   	(bad)  
 819:	03 b3 7f 58 05 0c    	add    0xc05587f(%rbx),%esi
 81f:	06                   	(bad)  
 820:	03 ea                	add    %edx,%ebp
 822:	00 90 05 11 03 b6    	add    %dl,-0x49fceefb(%rax)
 828:	7f 66                	jg     890 <__abi_tag+0x5cc>
 82a:	05 18 03 2d 66       	add    $0x662d0318,%eax
 82f:	05 0c 03 1d 66       	add    $0x661d030c,%eax
 834:	06                   	(bad)  
 835:	03 96 7f 58 05 09    	add    0x905587f(%rsi),%edx
 83b:	06                   	(bad)  
 83c:	03 3c 9e             	add    (%rsi,%rbx,4),%edi
 83f:	05 07 03 64 ac       	add    $0xac640307,%eax
 844:	05 0c 03 c6 00       	add    $0xc6030c,%eax
 849:	58                   	pop    %rax
 84a:	06                   	(bad)  
 84b:	03 9a 7f 4a 03 e6    	add    -0x19fcb581(%rdx),%ebx
 851:	00 90 05 11 06 03    	add    %dl,0x3061105(%rax)
 857:	ba 7f 82 05 0f       	mov    $0xf05827f,%edx
 85c:	06                   	(bad)  
 85d:	90                   	nop
 85e:	05 11 08 2e 05       	add    $0x52e0811,%eax
 863:	0f 82 05 11 08 12    	jb     1208196e <_end+0x1207c916>
 869:	05 0f 82 05 0c       	add    $0xc05820f,%eax
 86e:	06                   	(bad)  
 86f:	03 c6                	add    %esi,%eax
 871:	00 08                	add    %cl,(%rax)
 873:	12 05 11 03 ba 7f    	adc    0x7fba0311(%rip),%al        # 7fba0b8a <_end+0x7fb9bb32>
 879:	02 2b                	add    (%rbx),%ch
 87b:	01 05 0f 06 82 05    	add    %eax,0x582060f(%rip)        # 5820e90 <_end+0x581be38>
 881:	0c 06                	or     $0x6,%al
 883:	03 ca                	add    %edx,%ecx
 885:	00 08                	add    %cl,(%rax)
 887:	12 8c 05 03 03 63 58 	adc    0x58630303(%rbp,%rax,1),%cl
 88e:	05 1a 03 21 c8       	add    $0xc821031a,%eax
 893:	05 18 06 82 05       	add    $0x5820618,%eax
 898:	0c 82                	or     $0x82,%al
 89a:	03 96 7f 4a 06 03    	add    0x3064a7f(%rsi),%edx
 8a0:	ce                   	(bad)  
 8a1:	00 66 05             	add    %ah,0x5(%rsi)
 8a4:	11 03                	adc    %eax,(%rbx)
 8a6:	52                   	push   %rdx
 8a7:	d6                   	(bad)  
 8a8:	05 15 03 1c 58       	add    $0x581c0315,%eax
 8ad:	05 03 03 0d 58       	add    $0x580d0303,%eax
 8b2:	05 11 03 57 4a       	add    $0x4a570311,%eax
 8b7:	05 18 03 2d 66       	add    $0x662d0318,%eax
 8bc:	06                   	(bad)  
 8bd:	03 b3 7f 66 05 09    	add    0x905667f(%rbx),%esi
 8c3:	06                   	(bad)  
 8c4:	03 3c c8             	add    (%rax,%rcx,8),%edi
 8c7:	05 07 03 64 e4       	add    $0xe4640307,%eax
 8cc:	05 0c 03 c8 00       	add    $0xc8030c,%eax
 8d1:	e4 06                	in     $0x6,%al
 8d3:	03 98 7f 58 03 e8    	add    -0x17fca781(%rax),%ebx
 8d9:	00 90 05 11 06 03    	add    %dl,0x3061105(%rax)
 8df:	b8 7f 4a 05 15       	mov    $0x15054a7f,%eax
 8e4:	03 1c 82             	add    (%rdx,%rax,4),%ebx
 8e7:	05 11 03 64 08       	add    $0x8640311,%eax
 8ec:	12 05 15 03 1c 82    	adc    -0x7de3fceb(%rip),%al        # ffffffff821c0c07 <_end+0xffffffff821bbbaf>
 8f2:	05 0c 03 2c 08       	add    $0x82c030c,%eax
 8f7:	12 05 11 03 b8 7f    	adc    0x7fb80311(%rip),%al        # 7fb80c0e <_end+0x7fb7bbb6>
 8fd:	9e                   	sahf   
 8fe:	05 15 03 1c 82       	add    $0x821c0315,%eax
 903:	05 0c 03 2c d6       	add    $0xd62c030c,%eax
 908:	05 11 03 b8 7f       	add    $0x7fb80311,%eax
 90d:	08 12                	or     %dl,(%rdx)
 90f:	05 18 03 2d 58       	add    $0x582d0318,%eax
 914:	06                   	(bad)  
 915:	03 b3 7f 66 05 0c    	add    0xc05667f(%rbx),%esi
 91b:	03 cd                	add    %ebp,%ecx
 91d:	00 90 03 b3 7f 58    	add    %dl,0x587fb303(%rax)
 923:	03 cd                	add    %ebp,%ecx
 925:	00 74 05 11          	add    %dh,0x11(%rbp,%rax,1)
 929:	06                   	(bad)  
 92a:	03 53 58             	add    0x58(%rbx),%edx
 92d:	05 18 03 2d 82       	add    $0x822d0318,%eax
 932:	05 0c 06 08 3c       	add    $0x3c08060c,%eax
 937:	03 b3 7f 4a 03 cd    	add    -0x32fcb581(%rbx),%esi
 93d:	00 90 05 07 06 03    	add    %dl,0x3060705(%rax)
 943:	53                   	push   %rbx
 944:	90                   	nop
 945:	05 11 06 90 05       	add    $0x5900611,%eax
 94a:	18 06                	sbb    %al,(%rsi)
 94c:	03 2d 82 05 07 03    	add    0x3070582(%rip),%ebp        # 3070ed4 <_end+0x306be7c>
 952:	53                   	push   %rbx
 953:	08 12                	or     %dl,(%rdx)
 955:	05 11 06 4a 05       	add    $0x54a0611,%eax
 95a:	18 06                	sbb    %al,(%rsi)
 95c:	03 2d 82 05 07 03    	add    0x3070582(%rip),%ebp        # 3070ee4 <_end+0x306be8c>
 962:	53                   	push   %rbx
 963:	d6                   	(bad)  
 964:	05 11 06 90 05       	add    $0x5900611,%eax
 969:	18 06                	sbb    %al,(%rsi)
 96b:	03 2d 90 05 07 03    	add    0x3070590(%rip),%ebp        # 3070f01 <_end+0x306bea9>
 971:	53                   	push   %rbx
 972:	08 20                	or     %ah,(%rax)
 974:	05 0c 03 2d 4a       	add    $0x4a2d030c,%eax
 979:	05 11 03 53 08       	add    $0x8530311,%eax
 97e:	12 05 15 03 1c 82    	adc    -0x7de3fceb(%rip),%al        # ffffffff821c0c99 <_end+0xffffffff821bbc41>
 984:	05 0c 03 2c 82       	add    $0x822c030c,%eax
 989:	05 11 03 b8 7f       	add    $0x7fb80311,%eax
 98e:	4a 05 18 03 2d 90    	rex.WX add $0xffffffff902d0318,%rax
 994:	05 0c 06 90 05       	add    $0x590060c,%eax
 999:	1a 06                	sbb    (%rsi),%al
 99b:	03 1b                	add    (%rbx),%ebx
 99d:	58                   	pop    %rax
 99e:	05 18 06 90 05       	add    $0x5900618,%eax
 9a3:	03 06                	add    (%rsi),%eax
 9a5:	03 61 90             	add    -0x70(%rcx),%esp
 9a8:	05 0c 03 1f 9e       	add    $0x9e1f030c,%eax
 9ad:	03 64 58 05          	add    0x5(%rax,%rbx,2),%esp
 9b1:	03 b7 05 09 03 73    	add    0x73030905(%rdi),%esi
 9b7:	90                   	nop
 9b8:	05 07 03 64 d6       	add    $0xd6640307,%eax
 9bd:	05 09 03 1c 58       	add    $0x581c0309,%eax
 9c2:	05 07 03 64 02       	add    $0x2640307,%eax
 9c7:	9c                   	pushfq 
 9c8:	01 01                	add    %eax,(%rcx)
 9ca:	05 09 03 1c 08       	add    $0x81c0309,%eax
 9cf:	20 05 07 03 64 02    	and    %al,0x2640307(%rip)        # 2640cdc <_end+0x263bc84>
 9d5:	5c                   	pop    %rsp
 9d6:	01 05 11 06 02 26    	add    %eax,0x26020611(%rip)        # 26020fed <_end+0x2601bf95>
 9dc:	12 05 14 06 03 2b    	adc    0x2b030614(%rip),%al        # 2b030ff6 <_end+0x2b02bf9e>
 9e2:	82                   	(bad)  
 9e3:	05 07 03 55 82       	add    $0x82550307,%eax
 9e8:	05 09 03 1c 58       	add    $0x581c0309,%eax
 9ed:	05 07 03 64 08       	add    $0x8640307,%eax
 9f2:	74 05                	je     9f9 <__abi_tag+0x735>
 9f4:	09 03                	or     %eax,(%rbx)
 9f6:	1c d6                	sbb    $0xd6,%al
 9f8:	05 0a 03 64 58       	add    $0x5864030a,%eax
 9fd:	05 09 03 1c 90       	add    $0x901c0309,%eax
 a02:	05 07 03 64 d6       	add    $0xd6640307,%eax
 a07:	05 0c 03 2b 02       	add    $0x22b030c,%eax
 a0c:	83 01 01             	addl   $0x1,(%rcx)
 a0f:	03 19                	add    (%rcx),%ebx
 a11:	58                   	pop    %rax
 a12:	06                   	(bad)  
 a13:	03 9c 7f 4a 05 09 06 	add    0x609054a(%rdi,%rdi,2),%ebx
 a1a:	03 3c 58             	add    (%rax,%rbx,2),%edi
 a1d:	05 07 7f 05 09       	add    $0x9057f07,%eax
 a22:	5b                   	pop    %rbx
 a23:	05 07 55 05 13       	add    $0x13055507,%eax
 a28:	5e                   	pop    %rsi
 a29:	06                   	(bad)  
 a2a:	03 41 58             	add    0x58(%rcx),%eax
 a2d:	05 03 06 03 1f       	add    $0x1f030603,%eax
 a32:	58                   	pop    %rax
 a33:	05 09 03 37 08       	add    $0x8370309,%eax
 a38:	20 05 0c 03 77 08    	and    %al,0x877030c(%rip)        # 8770d4a <_end+0x876bcf2>
 a3e:	74 05                	je     a45 <__abi_tag+0x781>
 a40:	09 03                	or     %eax,(%rbx)
 a42:	09 58 05             	or     %ebx,0x5(%rax)
 a45:	13 06                	adc    (%rsi),%eax
 a47:	ba 05 11 82 05       	mov    $0x5821105,%edx
 a4c:	0c 06                	or     $0x6,%al
 a4e:	03 10                	add    (%rax),%edx
 a50:	82                   	(bad)  
 a51:	05 0f 03 73 58       	add    $0x5873030f,%eax
 a56:	05 1d 06 58 05       	add    $0x558061d,%eax
 a5b:	16                   	(bad)  
 a5c:	58                   	pop    %rax
 a5d:	05 1d 58 03 a7       	add    $0xa703581d,%eax
 a62:	7f 58                	jg     abc <__abi_tag+0x7f8>
 a64:	05 39 06 03 f6       	add    $0xf6030639,%eax
 a69:	00 74 06 03          	add    %dh,0x3(%rsi,%rax,1)
 a6d:	8a 7f 02             	mov    0x2(%rdi),%bh
 a70:	3e 01 05 0d 06 03 cd 	add    %eax,%ds:-0x32fcf9f3(%rip)        # ffffffffcd031084 <_end+0xffffffffcd02c02c>
 a77:	01 66 06             	add    %esp,0x6(%rsi)
 a7a:	03 b3 7e f2 05 03    	add    0x305f27e(%rbx),%esi
 a80:	06                   	(bad)  
 a81:	03 d0                	add    %eax,%edx
 a83:	01 66 08             	add    %esp,0x8(%rsi)
 a86:	2f                   	(bad)  
 a87:	08 21                	or     %ah,(%rcx)
 a89:	e5 e5                	in     $0xe5,%eax
 a8b:	f5                   	cmc    
 a8c:	83                   	.byte 0x83
 a8d:	84 02                	test   %al,(%rdx)
 a8f:	14 00                	adc    $0x0,%al
 a91:	01 01                	add    %eax,(%rcx)

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
 1be:	64 5f                	fs pop %rdi
 1c0:	32 78 00             	xor    0x0(%rax),%bh
 1c3:	5f                   	pop    %rdi
 1c4:	5f                   	pop    %rdi
 1c5:	41 52                	push   %r10
 1c7:	52                   	push   %rdx
 1c8:	41 59                	pop    %r9
 1ca:	5f                   	pop    %rdi
 1cb:	53                   	push   %rbx
 1cc:	49 5a                	rex.WB pop %r10
 1ce:	45 5f                	rex.RB pop %r15
 1d0:	54                   	push   %rsp
 1d1:	59                   	pop    %rcx
 1d2:	50                   	push   %rax
 1d3:	45 5f                	rex.RB pop %r15
 1d5:	5f                   	pop    %rdi
 1d6:	00 6e 5f             	add    %ch,0x5f(%rsi)
 1d9:	31 00                	xor    %eax,(%rax)
 1db:	64 6f                	outsl  %fs:(%rsi),(%dx)
 1dd:	74 70                	je     24f <__abi_tag-0x75>
 1df:	72 6f                	jb     250 <__abi_tag-0x74>
 1e1:	64 00 64 6f 74       	add    %ah,%fs:0x74(%rdi,%rbp,2)
 1e6:	70 72                	jo     25a <__abi_tag-0x6a>
 1e8:	6f                   	outsl  %ds:(%rsi),(%dx)
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
 206:	61                   	(bad)  
 207:	6c                   	insb   (%dx),%es:(%rdi)
 208:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
 20f:	6c                   	insb   (%dx),%es:(%rdi)
 210:	6c                   	insb   (%dx),%es:(%rdi)
 211:	6f                   	outsl  %ds:(%rsi),(%dx)
 212:	63 00                	movsxd (%rax),%eax
 214:	66 72 65             	data16 jb 27c <__abi_tag-0x48>
 217:	65 00 64 6f 74       	add    %ah,%gs:0x74(%rdi,%rbp,2)
 21c:	70 72                	jo     290 <__abi_tag-0x34>
 21e:	6f                   	outsl  %ds:(%rsi),(%dx)
 21f:	64 5f                	fs pop %rdi
 221:	31 36                	xor    %esi,(%rsi)
 223:	78 00                	js     225 <__abi_tag-0x9f>
 225:	6d                   	insl   (%dx),%es:(%rdi)
 226:	61                   	(bad)  
 227:	69 6e 00 6e 5f 31 36 	imul   $0x36315f6e,0x0(%rsi),%ebp
 22e:	00 72 65             	add    %dh,0x65(%rdx)
 231:	73 00                	jae    233 <__abi_tag-0x91>
 233:	72 65                	jb     29a <__abi_tag-0x2a>
 235:	73 5f                	jae    296 <__abi_tag-0x2e>
 237:	32 78 00             	xor    0x0(%rax),%bh
 23a:	72 65                	jb     2a1 <__abi_tag-0x23>
 23c:	73 5f                	jae    29d <__abi_tag-0x27>
 23e:	34 78                	xor    $0x78,%al
 240:	00 72 65             	add    %dh,0x65(%rdx)
 243:	73 5f                	jae    2a4 <__abi_tag-0x20>
 245:	38 78 00             	cmp    %bh,0x0(%rax)
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
  60:	00 0a                	add    %cl,(%rdx)
  62:	00 00                	add    %al,(%rax)
  64:	00 00                	add    %al,(%rax)
  66:	00 00                	add    %al,(%rax)
  68:	00 01                	add    %al,(%rcx)
  6a:	00 55 0a             	add    %dl,0xa(%rbp)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 00                	add    %al,(%rax)
  71:	00 00                	add    %al,(%rax)
  73:	00 17                	add    %dl,(%rdi)
  75:	00 00                	add    %al,(%rax)
  77:	00 00                	add    %al,(%rax)
  79:	00 00                	add    %al,(%rax)
  7b:	00 04 00             	add    %al,(%rax,%rax,1)
  7e:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  82:	17                   	(bad)  
  83:	00 00                	add    %al,(%rax)
  85:	00 00                	add    %al,(%rax)
  87:	00 00                	add    %al,(%rax)
  89:	00 1c 00             	add    %bl,(%rax,%rax,1)
  8c:	00 00                	add    %al,(%rax)
  8e:	00 00                	add    %al,(%rax)
  90:	00 00                	add    %al,(%rax)
  92:	01 00                	add    %eax,(%rax)
  94:	55                   	push   %rbp
  95:	1c 00                	sbb    $0x0,%al
  97:	00 00                	add    %al,(%rax)
  99:	00 00                	add    %al,(%rax)
  9b:	00 00                	add    %al,(%rax)
  9d:	21 00                	and    %eax,(%rax)
  9f:	00 00                	add    %al,(%rax)
  a1:	00 00                	add    %al,(%rax)
  a3:	00 00                	add    %al,(%rax)
  a5:	04 00                	add    $0x0,%al
  a7:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  c3:	0c 00                	or     $0x0,%al
  c5:	00 00                	add    %al,(%rax)
  c7:	00 00                	add    %al,(%rax)
  c9:	00 00                	add    %al,(%rax)
  cb:	01 00                	add    %eax,(%rax)
  cd:	54                   	push   %rsp
  ce:	0c 00                	or     $0x0,%al
  d0:	00 00                	add    %al,(%rax)
  d2:	00 00                	add    %al,(%rax)
  d4:	00 00                	add    %al,(%rax)
  d6:	17                   	(bad)  
  d7:	00 00                	add    %al,(%rax)
  d9:	00 00                	add    %al,(%rax)
  db:	00 00                	add    %al,(%rax)
  dd:	00 04 00             	add    %al,(%rax,%rax,1)
  e0:	f3 01 54 9f 17       	repz add %edx,0x17(%rdi,%rbx,4)
  e5:	00 00                	add    %al,(%rax)
  e7:	00 00                	add    %al,(%rax)
  e9:	00 00                	add    %al,(%rax)
  eb:	00 21                	add    %ah,(%rcx)
  ed:	00 00                	add    %al,(%rax)
  ef:	00 00                	add    %al,(%rax)
  f1:	00 00                	add    %al,(%rax)
  f3:	00 01                	add    %al,(%rcx)
  f5:	00 54 21 00          	add    %dl,0x0(%rcx,%riz,1)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 00                	add    %al,(%rax)
  ff:	21 00                	and    %eax,(%rax)
 101:	00 00                	add    %al,(%rax)
 103:	00 00                	add    %al,(%rax)
 105:	00 00                	add    %al,(%rax)
 107:	04 00                	add    $0x0,%al
 109:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 11a:	00 00                	add    %al,(%rax)
 11c:	00 30                	add    %dh,(%rax)
 11e:	00 00                	add    %al,(%rax)
 120:	00 00                	add    %al,(%rax)
 122:	00 00                	add    %al,(%rax)
 124:	00 49 00             	add    %cl,0x0(%rcx)
 127:	00 00                	add    %al,(%rax)
 129:	00 00                	add    %al,(%rax)
 12b:	00 00                	add    %al,(%rax)
 12d:	02 00                	add    (%rax),%al
 12f:	30 9f 49 00 00 00    	xor    %bl,0x49(%rdi)
 135:	00 00                	add    %al,(%rax)
 137:	00 00                	add    %al,(%rax)
 139:	4a 00 00             	rex.WX add %al,(%rax)
 13c:	00 00                	add    %al,(%rax)
 13e:	00 00                	add    %al,(%rax)
 140:	00 01                	add    %al,(%rcx)
 142:	00 61 4a             	add    %ah,0x4a(%rcx)
 145:	00 00                	add    %al,(%rax)
 147:	00 00                	add    %al,(%rax)
 149:	00 00                	add    %al,(%rax)
 14b:	00 19                	add    %bl,(%rcx)
 14d:	01 00                	add    %eax,(%rax)
 14f:	00 00                	add    %al,(%rax)
 151:	00 00                	add    %al,(%rax)
 153:	00 02                	add    %al,(%rdx)
 155:	00 30                	add    %dh,(%rax)
 157:	9f                   	lahf   
 158:	19 01                	sbb    %eax,(%rcx)
 15a:	00 00                	add    %al,(%rax)
 15c:	00 00                	add    %al,(%rax)
 15e:	00 00                	add    %al,(%rax)
 160:	38 01                	cmp    %al,(%rcx)
 162:	00 00                	add    %al,(%rax)
 164:	00 00                	add    %al,(%rax)
 166:	00 00                	add    %al,(%rax)
 168:	01 00                	add    %eax,(%rax)
 16a:	61                   	(bad)  
 16b:	38 01                	cmp    %al,(%rcx)
 16d:	00 00                	add    %al,(%rax)
 16f:	00 00                	add    %al,(%rax)
 171:	00 00                	add    %al,(%rax)
 173:	4a 01 00             	rex.WX add %rax,(%rax)
 176:	00 00                	add    %al,(%rax)
 178:	00 00                	add    %al,(%rax)
 17a:	00 02                	add    %al,(%rdx)
 17c:	00 30                	add    %dh,(%rax)
 17e:	9f                   	lahf   
	...
 18f:	30 00                	xor    %al,(%rax)
 191:	00 00                	add    %al,(%rax)
 193:	00 00                	add    %al,(%rax)
 195:	00 00                	add    %al,(%rax)
 197:	46 00 00             	rex.RX add %r8b,(%rax)
 19a:	00 00                	add    %al,(%rax)
 19c:	00 00                	add    %al,(%rax)
 19e:	00 02                	add    %al,(%rdx)
 1a0:	00 30                	add    %dh,(%rax)
 1a2:	9f                   	lahf   
 1a3:	4a 00 00             	rex.WX add %al,(%rax)
 1a6:	00 00                	add    %al,(%rax)
 1a8:	00 00                	add    %al,(%rax)
 1aa:	00 19                	add    %bl,(%rcx)
 1ac:	01 00                	add    %eax,(%rax)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	00 00                	add    %al,(%rax)
 1b2:	00 02                	add    %al,(%rdx)
 1b4:	00 30                	add    %dh,(%rax)
 1b6:	9f                   	lahf   
 1b7:	19 01                	sbb    %eax,(%rcx)
 1b9:	00 00                	add    %al,(%rax)
 1bb:	00 00                	add    %al,(%rax)
 1bd:	00 00                	add    %al,(%rax)
 1bf:	37                   	(bad)  
 1c0:	01 00                	add    %eax,(%rax)
 1c2:	00 00                	add    %al,(%rax)
 1c4:	00 00                	add    %al,(%rax)
 1c6:	00 01                	add    %al,(%rcx)
 1c8:	00 50 38             	add    %dl,0x38(%rax)
 1cb:	01 00                	add    %eax,(%rax)
 1cd:	00 00                	add    %al,(%rax)
 1cf:	00 00                	add    %al,(%rax)
 1d1:	00 4a 01             	add    %cl,0x1(%rdx)
 1d4:	00 00                	add    %al,(%rax)
 1d6:	00 00                	add    %al,(%rax)
 1d8:	00 00                	add    %al,(%rax)
 1da:	02 00                	add    (%rax),%al
 1dc:	30 9f 00 00 00 00    	xor    %bl,0x0(%rdi)
	...
 1ee:	50                   	push   %rax
 1ef:	01 00                	add    %eax,(%rax)
 1f1:	00 00                	add    %al,(%rax)
 1f3:	00 00                	add    %al,(%rax)
 1f5:	00 60 01             	add    %ah,0x1(%rax)
 1f8:	00 00                	add    %al,(%rax)
 1fa:	00 00                	add    %al,(%rax)
 1fc:	00 00                	add    %al,(%rax)
 1fe:	08 00                	or     %al,(%rax)
 200:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 206:	93                   	xchg   %eax,%ebx
 207:	08 88 01 00 00 00    	or     %cl,0x1(%rax)
 20d:	00 00                	add    %al,(%rax)
 20f:	00 97 01 00 00 00    	add    %dl,0x1(%rdi)
 215:	00 00                	add    %al,(%rax)
 217:	00 08                	add    %cl,(%rax)
 219:	00 30                	add    %dh,(%rax)
 21b:	9f                   	lahf   
 21c:	93                   	xchg   %eax,%ebx
 21d:	08 30                	or     %dh,(%rax)
 21f:	9f                   	lahf   
 220:	93                   	xchg   %eax,%ebx
 221:	08 00                	or     %al,(%rax)
	...
 22f:	00 00                	add    %al,(%rax)
 231:	00 55 01             	add    %dl,0x1(%rbp)
 234:	00 00                	add    %al,(%rax)
 236:	00 00                	add    %al,(%rax)
 238:	00 00                	add    %al,(%rax)
 23a:	60                   	(bad)  
 23b:	01 00                	add    %eax,(%rax)
 23d:	00 00                	add    %al,(%rax)
 23f:	00 00                	add    %al,(%rax)
 241:	00 02                	add    %al,(%rdx)
 243:	00 30                	add    %dh,(%rax)
 245:	9f                   	lahf   
 246:	60                   	(bad)  
 247:	01 00                	add    %eax,(%rax)
 249:	00 00                	add    %al,(%rax)
 24b:	00 00                	add    %al,(%rax)
 24d:	00 7b 01             	add    %bh,0x1(%rbx)
 250:	00 00                	add    %al,(%rax)
 252:	00 00                	add    %al,(%rax)
 254:	00 00                	add    %al,(%rax)
 256:	01 00                	add    %eax,(%rax)
 258:	50                   	push   %rax
	...
 269:	88 01                	mov    %al,(%rcx)
 26b:	00 00                	add    %al,(%rax)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 00                	add    %al,(%rax)
 271:	97                   	xchg   %eax,%edi
 272:	01 00                	add    %eax,(%rax)
 274:	00 00                	add    %al,(%rax)
 276:	00 00                	add    %al,(%rax)
 278:	00 02                	add    %al,(%rdx)
 27a:	00 30                	add    %dh,(%rax)
 27c:	9f                   	lahf   
 27d:	97                   	xchg   %eax,%edi
 27e:	01 00                	add    %eax,(%rax)
 280:	00 00                	add    %al,(%rax)
 282:	00 00                	add    %al,(%rax)
 284:	00 bb 01 00 00 00    	add    %bh,0x1(%rbx)
 28a:	00 00                	add    %al,(%rax)
 28c:	00 01                	add    %al,(%rcx)
 28e:	00 52 00             	add    %dl,0x0(%rdx)
	...
 29d:	00 00                	add    %al,(%rax)
 29f:	00 93 01 00 00 00    	add    %dl,0x1(%rbx)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 d8                	add    %bl,%al
 2a9:	01 00                	add    %eax,(%rax)
 2ab:	00 00                	add    %al,(%rax)
 2ad:	00 00                	add    %al,(%rax)
 2af:	00 01                	add    %al,(%rcx)
 2b1:	00 50 00             	add    %dl,0x0(%rax)
	...
 2c0:	00 00                	add    %al,(%rax)
 2c2:	00 e0                	add    %ah,%al
 2c4:	01 00                	add    %eax,(%rax)
 2c6:	00 00                	add    %al,(%rax)
 2c8:	00 00                	add    %al,(%rax)
 2ca:	00 f3                	add    %dh,%bl
 2cc:	01 00                	add    %eax,(%rax)
 2ce:	00 00                	add    %al,(%rax)
 2d0:	00 00                	add    %al,(%rax)
 2d2:	00 10                	add    %dl,(%rax)
 2d4:	00 30                	add    %dh,(%rax)
 2d6:	9f                   	lahf   
 2d7:	93                   	xchg   %eax,%ebx
 2d8:	08 30                	or     %dh,(%rax)
 2da:	9f                   	lahf   
 2db:	93                   	xchg   %eax,%ebx
 2dc:	08 30                	or     %dh,(%rax)
 2de:	9f                   	lahf   
 2df:	93                   	xchg   %eax,%ebx
 2e0:	08 30                	or     %dh,(%rax)
 2e2:	9f                   	lahf   
 2e3:	93                   	xchg   %eax,%ebx
 2e4:	08 70 02             	or     %dh,0x2(%rax)
 2e7:	00 00                	add    %al,(%rax)
 2e9:	00 00                	add    %al,(%rax)
 2eb:	00 00                	add    %al,(%rax)
 2ed:	76 02                	jbe    2f1 <__abi_tag+0x2d>
 2ef:	00 00                	add    %al,(%rax)
 2f1:	00 00                	add    %al,(%rax)
 2f3:	00 00                	add    %al,(%rax)
 2f5:	03 00                	add    (%rax),%eax
 2f7:	64 93                	fs xchg %eax,%ebx
 2f9:	08 8c 02 00 00 00 00 	or     %cl,0x0(%rdx,%rax,1)
 300:	00 00                	add    %al,(%rax)
 302:	94                   	xchg   %eax,%esp
 303:	02 00                	add    (%rax),%al
 305:	00 00                	add    %al,(%rax)
 307:	00 00                	add    %al,(%rax)
 309:	00 10                	add    %dl,(%rax)
 30b:	00 30                	add    %dh,(%rax)
 30d:	9f                   	lahf   
 30e:	93                   	xchg   %eax,%ebx
 30f:	08 30                	or     %dh,(%rax)
 311:	9f                   	lahf   
 312:	93                   	xchg   %eax,%ebx
 313:	08 30                	or     %dh,(%rax)
 315:	9f                   	lahf   
 316:	93                   	xchg   %eax,%ebx
 317:	08 30                	or     %dh,(%rax)
 319:	9f                   	lahf   
 31a:	93                   	xchg   %eax,%ebx
 31b:	08 98 02 00 00 00    	or     %bl,0x2(%rax)
 321:	00 00                	add    %al,(%rax)
 323:	00 a5 02 00 00 00    	add    %ah,0x2(%rbp)
 329:	00 00                	add    %al,(%rax)
 32b:	00 03                	add    %al,(%rbx)
 32d:	00 62 93             	add    %ah,-0x6d(%rdx)
 330:	08 00                	or     %al,(%rax)
	...
 33e:	00 00                	add    %al,(%rax)
 340:	00 e0                	add    %ah,%al
 342:	01 00                	add    %eax,(%rax)
 344:	00 00                	add    %al,(%rax)
 346:	00 00                	add    %al,(%rax)
 348:	00 f3                	add    %dh,%bl
 34a:	01 00                	add    %eax,(%rax)
 34c:	00 00                	add    %al,(%rax)
 34e:	00 00                	add    %al,(%rax)
 350:	00 02                	add    %al,(%rdx)
 352:	00 30                	add    %dh,(%rax)
 354:	9f                   	lahf   
 355:	f3 01 00             	repz add %eax,(%rax)
 358:	00 00                	add    %al,(%rax)
 35a:	00 00                	add    %al,(%rax)
 35c:	00 47 02             	add    %al,0x2(%rdi)
 35f:	00 00                	add    %al,(%rax)
 361:	00 00                	add    %al,(%rax)
 363:	00 00                	add    %al,(%rax)
 365:	01 00                	add    %eax,(%rax)
 367:	50                   	push   %rax
	...
 378:	54                   	push   %rsp
 379:	02 00                	add    (%rax),%al
 37b:	00 00                	add    %al,(%rax)
 37d:	00 00                	add    %al,(%rax)
 37f:	00 8c 02 00 00 00 00 	add    %cl,0x0(%rdx,%rax,1)
 386:	00 00                	add    %al,(%rax)
 388:	03 00                	add    (%rax),%eax
 38a:	71 7c                	jno    408 <__abi_tag+0x144>
 38c:	9f                   	lahf   
	...
 39d:	54                   	push   %rsp
 39e:	02 00                	add    (%rax),%al
 3a0:	00 00                	add    %al,(%rax)
 3a2:	00 00                	add    %al,(%rax)
 3a4:	00 60 02             	add    %ah,0x2(%rax)
 3a7:	00 00                	add    %al,(%rax)
 3a9:	00 00                	add    %al,(%rax)
 3ab:	00 00                	add    %al,(%rax)
 3ad:	03 00                	add    (%rax),%eax
 3af:	71 7d                	jno    42e <__abi_tag+0x16a>
 3b1:	9f                   	lahf   
	...
 3c2:	b0 02                	mov    $0x2,%al
 3c4:	00 00                	add    %al,(%rax)
 3c6:	00 00                	add    %al,(%rax)
 3c8:	00 00                	add    %al,(%rax)
 3ca:	cb                   	lret   
 3cb:	02 00                	add    (%rax),%al
 3cd:	00 00                	add    %al,(%rax)
 3cf:	00 00                	add    %al,(%rax)
 3d1:	00 20                	add    %ah,(%rax)
 3d3:	00 30                	add    %dh,(%rax)
 3d5:	9f                   	lahf   
 3d6:	93                   	xchg   %eax,%ebx
 3d7:	08 30                	or     %dh,(%rax)
 3d9:	9f                   	lahf   
 3da:	93                   	xchg   %eax,%ebx
 3db:	08 30                	or     %dh,(%rax)
 3dd:	9f                   	lahf   
 3de:	93                   	xchg   %eax,%ebx
 3df:	08 30                	or     %dh,(%rax)
 3e1:	9f                   	lahf   
 3e2:	93                   	xchg   %eax,%ebx
 3e3:	08 30                	or     %dh,(%rax)
 3e5:	9f                   	lahf   
 3e6:	93                   	xchg   %eax,%ebx
 3e7:	08 30                	or     %dh,(%rax)
 3e9:	9f                   	lahf   
 3ea:	93                   	xchg   %eax,%ebx
 3eb:	08 30                	or     %dh,(%rax)
 3ed:	9f                   	lahf   
 3ee:	93                   	xchg   %eax,%ebx
 3ef:	08 30                	or     %dh,(%rax)
 3f1:	9f                   	lahf   
 3f2:	93                   	xchg   %eax,%ebx
 3f3:	08 70 03             	or     %dh,0x3(%rax)
 3f6:	00 00                	add    %al,(%rax)
 3f8:	00 00                	add    %al,(%rax)
 3fa:	00 00                	add    %al,(%rax)
 3fc:	76 03                	jbe    401 <__abi_tag+0x13d>
 3fe:	00 00                	add    %al,(%rax)
 400:	00 00                	add    %al,(%rax)
 402:	00 00                	add    %al,(%rax)
 404:	03 00                	add    (%rax),%eax
 406:	66 93                	xchg   %ax,%bx
 408:	08 cc                	or     %cl,%ah
 40a:	03 00                	add    (%rax),%eax
 40c:	00 00                	add    %al,(%rax)
 40e:	00 00                	add    %al,(%rax)
 410:	00 dc                	add    %bl,%ah
 412:	03 00                	add    (%rax),%eax
 414:	00 00                	add    %al,(%rax)
 416:	00 00                	add    %al,(%rax)
 418:	00 20                	add    %ah,(%rax)
 41a:	00 30                	add    %dh,(%rax)
 41c:	9f                   	lahf   
 41d:	93                   	xchg   %eax,%ebx
 41e:	08 30                	or     %dh,(%rax)
 420:	9f                   	lahf   
 421:	93                   	xchg   %eax,%ebx
 422:	08 30                	or     %dh,(%rax)
 424:	9f                   	lahf   
 425:	93                   	xchg   %eax,%ebx
 426:	08 30                	or     %dh,(%rax)
 428:	9f                   	lahf   
 429:	93                   	xchg   %eax,%ebx
 42a:	08 30                	or     %dh,(%rax)
 42c:	9f                   	lahf   
 42d:	93                   	xchg   %eax,%ebx
 42e:	08 30                	or     %dh,(%rax)
 430:	9f                   	lahf   
 431:	93                   	xchg   %eax,%ebx
 432:	08 30                	or     %dh,(%rax)
 434:	9f                   	lahf   
 435:	93                   	xchg   %eax,%ebx
 436:	08 30                	or     %dh,(%rax)
 438:	9f                   	lahf   
 439:	93                   	xchg   %eax,%ebx
 43a:	08 dc                	or     %bl,%ah
 43c:	03 00                	add    (%rax),%eax
 43e:	00 00                	add    %al,(%rax)
 440:	00 00                	add    %al,(%rax)
 442:	00 05 04 00 00 00    	add    %al,0x4(%rip)        # 44c <__abi_tag+0x188>
 448:	00 00                	add    %al,(%rax)
 44a:	00 03                	add    %al,(%rbx)
 44c:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
	...
 460:	b0 02                	mov    $0x2,%al
 462:	00 00                	add    %al,(%rax)
 464:	00 00                	add    %al,(%rax)
 466:	00 00                	add    %al,(%rax)
 468:	cb                   	lret   
 469:	02 00                	add    (%rax),%al
 46b:	00 00                	add    %al,(%rax)
 46d:	00 00                	add    %al,(%rax)
 46f:	00 02                	add    %al,(%rdx)
 471:	00 30                	add    %dh,(%rax)
 473:	9f                   	lahf   
 474:	cb                   	lret   
 475:	02 00                	add    (%rax),%al
 477:	00 00                	add    %al,(%rax)
 479:	00 00                	add    %al,(%rax)
 47b:	00 3f                	add    %bh,(%rdi)
 47d:	03 00                	add    (%rax),%eax
 47f:	00 00                	add    %al,(%rax)
 481:	00 00                	add    %al,(%rax)
 483:	00 01                	add    %al,(%rcx)
 485:	00 50 00             	add    %dl,0x0(%rax)
	...
 494:	00 00                	add    %al,(%rax)
 496:	00 50 03             	add    %dl,0x3(%rax)
 499:	00 00                	add    %al,(%rax)
 49b:	00 00                	add    %al,(%rax)
 49d:	00 00                	add    %al,(%rax)
 49f:	cc                   	int3   
 4a0:	03 00                	add    (%rax),%eax
 4a2:	00 00                	add    %al,(%rax)
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 03                	add    %al,(%rbx)
 4a8:	00 71 78             	add    %dh,0x78(%rcx)
 4ab:	9f                   	lahf   
	...
 4bc:	50                   	push   %rax
 4bd:	03 00                	add    (%rax),%eax
 4bf:	00 00                	add    %al,(%rax)
 4c1:	00 00                	add    %al,(%rax)
 4c3:	00 60 03             	add    %ah,0x3(%rax)
 4c6:	00 00                	add    %al,(%rax)
 4c8:	00 00                	add    %al,(%rax)
 4ca:	00 00                	add    %al,(%rax)
 4cc:	03 00                	add    (%rax),%eax
 4ce:	71 79                	jno    549 <__abi_tag+0x285>
 4d0:	9f                   	lahf   
	...
 4e1:	10 04 00             	adc    %al,(%rax,%rax,1)
 4e4:	00 00                	add    %al,(%rax)
 4e6:	00 00                	add    %al,(%rax)
 4e8:	00 3f                	add    %bh,(%rdi)
 4ea:	04 00                	add    $0x0,%al
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 00                	add    %al,(%rax)
 4f0:	00 40 00             	add    %al,0x0(%rax)
 4f3:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 4f9:	93                   	xchg   %eax,%ebx
 4fa:	08 30                	or     %dh,(%rax)
 4fc:	9f                   	lahf   
 4fd:	93                   	xchg   %eax,%ebx
 4fe:	08 30                	or     %dh,(%rax)
 500:	9f                   	lahf   
 501:	93                   	xchg   %eax,%ebx
 502:	08 30                	or     %dh,(%rax)
 504:	9f                   	lahf   
 505:	93                   	xchg   %eax,%ebx
 506:	08 30                	or     %dh,(%rax)
 508:	9f                   	lahf   
 509:	93                   	xchg   %eax,%ebx
 50a:	08 30                	or     %dh,(%rax)
 50c:	9f                   	lahf   
 50d:	93                   	xchg   %eax,%ebx
 50e:	08 30                	or     %dh,(%rax)
 510:	9f                   	lahf   
 511:	93                   	xchg   %eax,%ebx
 512:	08 30                	or     %dh,(%rax)
 514:	9f                   	lahf   
 515:	93                   	xchg   %eax,%ebx
 516:	08 30                	or     %dh,(%rax)
 518:	9f                   	lahf   
 519:	93                   	xchg   %eax,%ebx
 51a:	08 30                	or     %dh,(%rax)
 51c:	9f                   	lahf   
 51d:	93                   	xchg   %eax,%ebx
 51e:	08 30                	or     %dh,(%rax)
 520:	9f                   	lahf   
 521:	93                   	xchg   %eax,%ebx
 522:	08 30                	or     %dh,(%rax)
 524:	9f                   	lahf   
 525:	93                   	xchg   %eax,%ebx
 526:	08 30                	or     %dh,(%rax)
 528:	9f                   	lahf   
 529:	93                   	xchg   %eax,%ebx
 52a:	08 30                	or     %dh,(%rax)
 52c:	9f                   	lahf   
 52d:	93                   	xchg   %eax,%ebx
 52e:	08 30                	or     %dh,(%rax)
 530:	9f                   	lahf   
 531:	93                   	xchg   %eax,%ebx
 532:	08 20                	or     %ah,(%rax)
 534:	05 00 00 00 00       	add    $0x0,%eax
 539:	00 00                	add    %al,(%rax)
 53b:	39 05 00 00 00 00    	cmp    %eax,0x0(%rip)        # 541 <__abi_tag+0x27d>
 541:	00 00                	add    %al,(%rax)
 543:	03 00                	add    (%rax),%eax
 545:	63 93 08 39 05 00    	movsxd 0x53908(%rbx),%edx
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	00 5e 05             	add    %bl,0x5(%rsi)
 552:	00 00                	add    %al,(%rax)
 554:	00 00                	add    %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	40 00 30             	add    %sil,(%rax)
 55b:	9f                   	lahf   
 55c:	93                   	xchg   %eax,%ebx
 55d:	08 30                	or     %dh,(%rax)
 55f:	9f                   	lahf   
 560:	93                   	xchg   %eax,%ebx
 561:	08 30                	or     %dh,(%rax)
 563:	9f                   	lahf   
 564:	93                   	xchg   %eax,%ebx
 565:	08 30                	or     %dh,(%rax)
 567:	9f                   	lahf   
 568:	93                   	xchg   %eax,%ebx
 569:	08 30                	or     %dh,(%rax)
 56b:	9f                   	lahf   
 56c:	93                   	xchg   %eax,%ebx
 56d:	08 30                	or     %dh,(%rax)
 56f:	9f                   	lahf   
 570:	93                   	xchg   %eax,%ebx
 571:	08 30                	or     %dh,(%rax)
 573:	9f                   	lahf   
 574:	93                   	xchg   %eax,%ebx
 575:	08 30                	or     %dh,(%rax)
 577:	9f                   	lahf   
 578:	93                   	xchg   %eax,%ebx
 579:	08 30                	or     %dh,(%rax)
 57b:	9f                   	lahf   
 57c:	93                   	xchg   %eax,%ebx
 57d:	08 30                	or     %dh,(%rax)
 57f:	9f                   	lahf   
 580:	93                   	xchg   %eax,%ebx
 581:	08 30                	or     %dh,(%rax)
 583:	9f                   	lahf   
 584:	93                   	xchg   %eax,%ebx
 585:	08 30                	or     %dh,(%rax)
 587:	9f                   	lahf   
 588:	93                   	xchg   %eax,%ebx
 589:	08 30                	or     %dh,(%rax)
 58b:	9f                   	lahf   
 58c:	93                   	xchg   %eax,%ebx
 58d:	08 30                	or     %dh,(%rax)
 58f:	9f                   	lahf   
 590:	93                   	xchg   %eax,%ebx
 591:	08 30                	or     %dh,(%rax)
 593:	9f                   	lahf   
 594:	93                   	xchg   %eax,%ebx
 595:	08 30                	or     %dh,(%rax)
 597:	9f                   	lahf   
 598:	93                   	xchg   %eax,%ebx
 599:	08 5e 05             	or     %bl,0x5(%rsi)
 59c:	00 00                	add    %al,(%rax)
 59e:	00 00                	add    %al,(%rax)
 5a0:	00 00                	add    %al,(%rax)
 5a2:	c8 05 00 00          	enterq $0x5,$0x0
 5a6:	00 00                	add    %al,(%rax)
 5a8:	00 00                	add    %al,(%rax)
 5aa:	03 00                	add    (%rax),%eax
 5ac:	63 93 08 00 00 00    	movsxd 0x8(%rbx),%edx
	...
 5be:	00 10                	add    %dl,(%rax)
 5c0:	04 00                	add    $0x0,%al
 5c2:	00 00                	add    %al,(%rax)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 3f                	add    %bh,(%rdi)
 5c8:	04 00                	add    $0x0,%al
 5ca:	00 00                	add    %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 02                	add    %al,(%rdx)
 5d0:	00 30                	add    %dh,(%rax)
 5d2:	9f                   	lahf   
 5d3:	3f                   	(bad)  
 5d4:	04 00                	add    $0x0,%al
 5d6:	00 00                	add    %al,(%rax)
 5d8:	00 00                	add    %al,(%rax)
 5da:	00 07                	add    %al,(%rdi)
 5dc:	05 00 00 00 00       	add    $0x0,%eax
 5e1:	00 00                	add    %al,(%rax)
 5e3:	01 00                	add    %eax,(%rax)
 5e5:	50                   	push   %rax
	...
 5f6:	14 05                	adc    $0x5,%al
 5f8:	00 00                	add    %al,(%rax)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	00 00                	add    %al,(%rax)
 5fe:	16                   	(bad)  
 5ff:	05 00 00 00 00       	add    $0x0,%eax
 604:	00 00                	add    %al,(%rax)
 606:	03 00                	add    (%rax),%eax
 608:	71 71                	jno    67b <__abi_tag+0x3b7>
 60a:	9f                   	lahf   
 60b:	20 05 00 00 00 00    	and    %al,0x0(%rip)        # 611 <__abi_tag+0x34d>
 611:	00 00                	add    %al,(%rax)
 613:	39 05 00 00 00 00    	cmp    %eax,0x0(%rip)        # 619 <__abi_tag+0x355>
 619:	00 00                	add    %al,(%rax)
 61b:	01 00                	add    %eax,(%rax)
 61d:	50                   	push   %rax
	...
 62e:	14 05                	adc    $0x5,%al
 630:	00 00                	add    %al,(%rax)
 632:	00 00                	add    %al,(%rax)
 634:	00 00                	add    %al,(%rax)
 636:	16                   	(bad)  
 637:	05 00 00 00 00       	add    $0x0,%eax
 63c:	00 00                	add    %al,(%rax)
 63e:	03 00                	add    (%rax),%eax
 640:	71 70                	jno    6b2 <__abi_tag+0x3ee>
 642:	9f                   	lahf   
	...
 653:	d0 05 00 00 00 00    	rolb   0x0(%rip)        # 659 <__abi_tag+0x395>
 659:	00 00                	add    %al,(%rax)
 65b:	ee                   	out    %al,(%dx)
 65c:	05 00 00 00 00       	add    $0x0,%eax
 661:	00 00                	add    %al,(%rax)
 663:	01 00                	add    %eax,(%rax)
 665:	55                   	push   %rbp
 666:	ee                   	out    %al,(%dx)
 667:	05 00 00 00 00       	add    $0x0,%eax
 66c:	00 00                	add    %al,(%rax)
 66e:	68 08 00 00 00       	pushq  $0x8
 673:	00 00                	add    %al,(%rax)
 675:	00 04 00             	add    %al,(%rax,%rax,1)
 678:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 67c:	68 08 00 00 00       	pushq  $0x8
 681:	00 00                	add    %al,(%rax)
 683:	00 6d 08             	add    %ch,0x8(%rbp)
 686:	00 00                	add    %al,(%rax)
 688:	00 00                	add    %al,(%rax)
 68a:	00 00                	add    %al,(%rax)
 68c:	01 00                	add    %eax,(%rax)
 68e:	55                   	push   %rbp
 68f:	6d                   	insl   (%dx),%es:(%rdi)
 690:	08 00                	or     %al,(%rax)
 692:	00 00                	add    %al,(%rax)
 694:	00 00                	add    %al,(%rax)
 696:	00 c7                	add    %al,%bh
 698:	17                   	(bad)  
 699:	00 00                	add    %al,(%rax)
 69b:	00 00                	add    %al,(%rax)
 69d:	00 00                	add    %al,(%rax)
 69f:	04 00                	add    $0x0,%al
 6a1:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 6b5:	d0 05 00 00 00 00    	rolb   0x0(%rip)        # 6bb <__abi_tag+0x3f7>
 6bb:	00 00                	add    %al,(%rax)
 6bd:	f0 05 00 00 00 00    	lock add $0x0,%eax
 6c3:	00 00                	add    %al,(%rax)
 6c5:	01 00                	add    %eax,(%rax)
 6c7:	54                   	push   %rsp
 6c8:	f0 05 00 00 00 00    	lock add $0x0,%eax
 6ce:	00 00                	add    %al,(%rax)
 6d0:	68 08 00 00 00       	pushq  $0x8
 6d5:	00 00                	add    %al,(%rax)
 6d7:	00 04 00             	add    %al,(%rax,%rax,1)
 6da:	f3 01 54 9f 68       	repz add %edx,0x68(%rdi,%rbx,4)
 6df:	08 00                	or     %al,(%rax)
 6e1:	00 00                	add    %al,(%rax)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	00 72 08             	add    %dh,0x8(%rdx)
 6e8:	00 00                	add    %al,(%rax)
 6ea:	00 00                	add    %al,(%rax)
 6ec:	00 00                	add    %al,(%rax)
 6ee:	01 00                	add    %eax,(%rax)
 6f0:	54                   	push   %rsp
 6f1:	72 08                	jb     6fb <__abi_tag+0x437>
 6f3:	00 00                	add    %al,(%rax)
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 00                	add    %al,(%rax)
 6f9:	c7                   	(bad)  
 6fa:	17                   	(bad)  
 6fb:	00 00                	add    %al,(%rax)
 6fd:	00 00                	add    %al,(%rax)
 6ff:	00 00                	add    %al,(%rax)
 701:	04 00                	add    $0x0,%al
 703:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 714:	00 00                	add    %al,(%rax)
 716:	00 d0                	add    %dl,%al
 718:	05 00 00 00 00       	add    $0x0,%eax
 71d:	00 00                	add    %al,(%rax)
 71f:	ee                   	out    %al,(%dx)
 720:	05 00 00 00 00       	add    $0x0,%eax
 725:	00 00                	add    %al,(%rax)
 727:	01 00                	add    %eax,(%rax)
 729:	55                   	push   %rbp
 72a:	68 08 00 00 00       	pushq  $0x8
 72f:	00 00                	add    %al,(%rax)
 731:	00 6d 08             	add    %ch,0x8(%rbp)
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	00 00                	add    %al,(%rax)
 73a:	01 00                	add    %eax,(%rax)
 73c:	55                   	push   %rbp
	...
 74d:	d0 05 00 00 00 00    	rolb   0x0(%rip)        # 753 <__abi_tag+0x48f>
 753:	00 00                	add    %al,(%rax)
 755:	f0 05 00 00 00 00    	lock add $0x0,%eax
 75b:	00 00                	add    %al,(%rax)
 75d:	01 00                	add    %eax,(%rax)
 75f:	54                   	push   %rsp
 760:	68 08 00 00 00       	pushq  $0x8
 765:	00 00                	add    %al,(%rax)
 767:	00 72 08             	add    %dh,0x8(%rdx)
 76a:	00 00                	add    %al,(%rax)
 76c:	00 00                	add    %al,(%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	01 00                	add    %eax,(%rax)
 772:	54                   	push   %rsp
	...
 783:	fd                   	std    
 784:	05 00 00 00 00       	add    $0x0,%eax
 789:	00 00                	add    %al,(%rax)
 78b:	68 08 00 00 00       	pushq  $0x8
 790:	00 00                	add    %al,(%rax)
 792:	00 01                	add    %al,(%rcx)
 794:	00 5e 72             	add    %bl,0x72(%rsi)
 797:	08 00                	or     %al,(%rax)
 799:	00 00                	add    %al,(%rax)
 79b:	00 00                	add    %al,(%rax)
 79d:	00 97 0a 00 00 00    	add    %dl,0xa(%rdi)
 7a3:	00 00                	add    %al,(%rax)
 7a5:	00 01                	add    %al,(%rcx)
 7a7:	00 5e 97             	add    %bl,-0x69(%rsi)
 7aa:	0a 00                	or     (%rax),%al
 7ac:	00 00                	add    %al,(%rax)
 7ae:	00 00                	add    %al,(%rax)
 7b0:	00 c7                	add    %al,%bh
 7b2:	17                   	(bad)  
 7b3:	00 00                	add    %al,(%rax)
 7b5:	00 00                	add    %al,(%rax)
 7b7:	00 00                	add    %al,(%rax)
 7b9:	03 00                	add    (%rax),%eax
 7bb:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
 7cb:	00 00                	add    %al,(%rax)
 7cd:	00 15 06 00 00 00    	add    %dl,0x6(%rip)        # 7d9 <__abi_tag+0x515>
 7d3:	00 00                	add    %al,(%rax)
 7d5:	00 68 08             	add    %ch,0x8(%rax)
 7d8:	00 00                	add    %al,(%rax)
 7da:	00 00                	add    %al,(%rax)
 7dc:	00 00                	add    %al,(%rax)
 7de:	01 00                	add    %eax,(%rax)
 7e0:	56                   	push   %rsi
 7e1:	72 08                	jb     7eb <__abi_tag+0x527>
 7e3:	00 00                	add    %al,(%rax)
 7e5:	00 00                	add    %al,(%rax)
 7e7:	00 00                	add    %al,(%rax)
 7e9:	a9 0a 00 00 00       	test   $0xa,%eax
 7ee:	00 00                	add    %al,(%rax)
 7f0:	00 01                	add    %al,(%rcx)
 7f2:	00 56 00             	add    %dl,0x0(%rsi)
	...
 801:	00 00                	add    %al,(%rax)
 803:	00 25 06 00 00 00    	add    %ah,0x6(%rip)        # 80f <__abi_tag+0x54b>
 809:	00 00                	add    %al,(%rax)
 80b:	00 37                	add    %dh,(%rdi)
 80d:	06                   	(bad)  
 80e:	00 00                	add    %al,(%rax)
 810:	00 00                	add    %al,(%rax)
 812:	00 00                	add    %al,(%rax)
 814:	02 00                	add    (%rax),%al
 816:	30 9f 4c 06 00 00    	xor    %bl,0x64c(%rdi)
 81c:	00 00                	add    %al,(%rax)
 81e:	00 00                	add    %al,(%rax)
 820:	59                   	pop    %rcx
 821:	07                   	(bad)  
 822:	00 00                	add    %al,(%rax)
 824:	00 00                	add    %al,(%rax)
 826:	00 00                	add    %al,(%rax)
 828:	02 00                	add    (%rax),%al
 82a:	30 9f 59 07 00 00    	xor    %bl,0x759(%rdi)
 830:	00 00                	add    %al,(%rax)
 832:	00 00                	add    %al,(%rax)
 834:	72 07                	jb     83d <__abi_tag+0x579>
 836:	00 00                	add    %al,(%rax)
 838:	00 00                	add    %al,(%rax)
 83a:	00 00                	add    %al,(%rax)
 83c:	01 00                	add    %eax,(%rax)
 83e:	50                   	push   %rax
	...
 84f:	25 06 00 00 00       	and    $0x6,%eax
 854:	00 00                	add    %al,(%rax)
 856:	00 37                	add    %dh,(%rdi)
 858:	06                   	(bad)  
 859:	00 00                	add    %al,(%rax)
 85b:	00 00                	add    %al,(%rax)
 85d:	00 00                	add    %al,(%rax)
 85f:	01 00                	add    %eax,(%rax)
 861:	53                   	push   %rbx
 862:	4c 06                	rex.WR (bad) 
 864:	00 00                	add    %al,(%rax)
 866:	00 00                	add    %al,(%rax)
 868:	00 00                	add    %al,(%rax)
 86a:	72 07                	jb     873 <__abi_tag+0x5af>
 86c:	00 00                	add    %al,(%rax)
 86e:	00 00                	add    %al,(%rax)
 870:	00 00                	add    %al,(%rax)
 872:	01 00                	add    %eax,(%rax)
 874:	53                   	push   %rbx
	...
 885:	25 06 00 00 00       	and    $0x6,%eax
 88a:	00 00                	add    %al,(%rax)
 88c:	00 68 08             	add    %ch,0x8(%rax)
 88f:	00 00                	add    %al,(%rax)
 891:	00 00                	add    %al,(%rax)
 893:	00 00                	add    %al,(%rax)
 895:	01 00                	add    %eax,(%rax)
 897:	53                   	push   %rbx
 898:	72 08                	jb     8a2 <__abi_tag+0x5de>
 89a:	00 00                	add    %al,(%rax)
 89c:	00 00                	add    %al,(%rax)
 89e:	00 00                	add    %al,(%rax)
 8a0:	bd 17 00 00 00       	mov    $0x17,%ebp
 8a5:	00 00                	add    %al,(%rax)
 8a7:	00 01                	add    %al,(%rcx)
 8a9:	00 53 00             	add    %dl,0x0(%rbx)
	...
 8b8:	00 00                	add    %al,(%rax)
 8ba:	00 25 06 00 00 00    	add    %ah,0x6(%rip)        # 8c6 <__abi_tag+0x602>
 8c0:	00 00                	add    %al,(%rax)
 8c2:	00 37                	add    %dh,(%rdi)
 8c4:	06                   	(bad)  
 8c5:	00 00                	add    %al,(%rax)
 8c7:	00 00                	add    %al,(%rax)
 8c9:	00 00                	add    %al,(%rax)
 8cb:	01 00                	add    %eax,(%rax)
 8cd:	56                   	push   %rsi
 8ce:	4c 06                	rex.WR (bad) 
 8d0:	00 00                	add    %al,(%rax)
 8d2:	00 00                	add    %al,(%rax)
 8d4:	00 00                	add    %al,(%rax)
 8d6:	72 07                	jb     8df <__abi_tag+0x61b>
 8d8:	00 00                	add    %al,(%rax)
 8da:	00 00                	add    %al,(%rax)
 8dc:	00 00                	add    %al,(%rax)
 8de:	01 00                	add    %eax,(%rax)
 8e0:	56                   	push   %rsi
	...
 8f1:	25 06 00 00 00       	and    $0x6,%eax
 8f6:	00 00                	add    %al,(%rax)
 8f8:	00 37                	add    %dh,(%rdi)
 8fa:	06                   	(bad)  
 8fb:	00 00                	add    %al,(%rax)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	00 00                	add    %al,(%rax)
 901:	01 00                	add    %eax,(%rax)
 903:	5e                   	pop    %rsi
 904:	4c 06                	rex.WR (bad) 
 906:	00 00                	add    %al,(%rax)
 908:	00 00                	add    %al,(%rax)
 90a:	00 00                	add    %al,(%rax)
 90c:	72 07                	jb     915 <__abi_tag+0x651>
 90e:	00 00                	add    %al,(%rax)
 910:	00 00                	add    %al,(%rax)
 912:	00 00                	add    %al,(%rax)
 914:	01 00                	add    %eax,(%rax)
 916:	5e                   	pop    %rsi
	...
 927:	43 06                	rex.XB (bad) 
 929:	00 00                	add    %al,(%rax)
 92b:	00 00                	add    %al,(%rax)
 92d:	00 00                	add    %al,(%rax)
 92f:	47 06                	rex.RXB (bad) 
 931:	00 00                	add    %al,(%rax)
 933:	00 00                	add    %al,(%rax)
 935:	00 00                	add    %al,(%rax)
 937:	06                   	(bad)  
 938:	00 68 93             	add    %ch,-0x6d(%rax)
 93b:	08 61 93             	or     %ah,-0x6d(%rcx)
 93e:	08 47 06             	or     %al,0x6(%rdi)
 941:	00 00                	add    %al,(%rax)
 943:	00 00                	add    %al,(%rax)
 945:	00 00                	add    %al,(%rax)
 947:	4c 06                	rex.WR (bad) 
 949:	00 00                	add    %al,(%rax)
 94b:	00 00                	add    %al,(%rax)
 94d:	00 00                	add    %al,(%rax)
 94f:	05 00 93 08 61       	add    $0x61089300,%eax
 954:	93                   	xchg   %eax,%ebx
 955:	08 8a 08 00 00 00    	or     %cl,0x8(%rdx)
 95b:	00 00                	add    %al,(%rax)
 95d:	00 96 08 00 00 00    	add    %dl,0x8(%rsi)
 963:	00 00                	add    %al,(%rax)
 965:	00 08                	add    %cl,(%rax)
 967:	00 30                	add    %dh,(%rax)
 969:	9f                   	lahf   
 96a:	93                   	xchg   %eax,%ebx
 96b:	08 30                	or     %dh,(%rax)
 96d:	9f                   	lahf   
 96e:	93                   	xchg   %eax,%ebx
 96f:	08 c4                	or     %al,%ah
 971:	08 00                	or     %al,(%rax)
 973:	00 00                	add    %al,(%rax)
 975:	00 00                	add    %al,(%rax)
 977:	00 c8                	add    %cl,%al
 979:	08 00                	or     %al,(%rax)
 97b:	00 00                	add    %al,(%rax)
 97d:	00 00                	add    %al,(%rax)
 97f:	00 06                	add    %al,(%rsi)
 981:	00 68 93             	add    %ch,-0x6d(%rax)
 984:	08 61 93             	or     %ah,-0x6d(%rcx)
 987:	08 c8                	or     %cl,%al
 989:	08 00                	or     %al,(%rax)
 98b:	00 00                	add    %al,(%rax)
 98d:	00 00                	add    %al,(%rax)
 98f:	00 ca                	add    %cl,%dl
 991:	08 00                	or     %al,(%rax)
 993:	00 00                	add    %al,(%rax)
 995:	00 00                	add    %al,(%rax)
 997:	00 05 00 93 08 61    	add    %al,0x61089300(%rip)        # 61089c9d <_end+0x61084c45>
 99d:	93                   	xchg   %eax,%ebx
 99e:	08 ca                	or     %cl,%dl
 9a0:	08 00                	or     %al,(%rax)
 9a2:	00 00                	add    %al,(%rax)
 9a4:	00 00                	add    %al,(%rax)
 9a6:	00 d9                	add    %bl,%cl
 9a8:	08 00                	or     %al,(%rax)
 9aa:	00 00                	add    %al,(%rax)
 9ac:	00 00                	add    %al,(%rax)
 9ae:	00 08                	add    %cl,(%rax)
 9b0:	00 30                	add    %dh,(%rax)
 9b2:	9f                   	lahf   
 9b3:	93                   	xchg   %eax,%ebx
 9b4:	08 30                	or     %dh,(%rax)
 9b6:	9f                   	lahf   
 9b7:	93                   	xchg   %eax,%ebx
 9b8:	08 00                	or     %al,(%rax)
	...
 9c6:	00 00                	add    %al,(%rax)
 9c8:	00 72 08             	add    %dh,0x8(%rdx)
 9cb:	00 00                	add    %al,(%rax)
 9cd:	00 00                	add    %al,(%rax)
 9cf:	00 00                	add    %al,(%rax)
 9d1:	85 08                	test   %ecx,(%rax)
 9d3:	00 00                	add    %al,(%rax)
 9d5:	00 00                	add    %al,(%rax)
 9d7:	00 00                	add    %al,(%rax)
 9d9:	01 00                	add    %eax,(%rax)
 9db:	50                   	push   %rax
	...
 9ec:	72 08                	jb     9f6 <__abi_tag+0x732>
 9ee:	00 00                	add    %al,(%rax)
 9f0:	00 00                	add    %al,(%rax)
 9f2:	00 00                	add    %al,(%rax)
 9f4:	85 08                	test   %ecx,(%rax)
 9f6:	00 00                	add    %al,(%rax)
 9f8:	00 00                	add    %al,(%rax)
 9fa:	00 00                	add    %al,(%rax)
 9fc:	01 00                	add    %eax,(%rax)
 9fe:	67 00 00             	add    %al,(%eax)
	...
 a0d:	00 00                	add    %al,(%rax)
 a0f:	8a 08                	mov    (%rax),%cl
 a11:	00 00                	add    %al,(%rax)
 a13:	00 00                	add    %al,(%rax)
 a15:	00 00                	add    %al,(%rax)
 a17:	1a 09                	sbb    (%rcx),%cl
 a19:	00 00                	add    %al,(%rax)
 a1b:	00 00                	add    %al,(%rax)
 a1d:	00 00                	add    %al,(%rax)
 a1f:	01 00                	add    %eax,(%rax)
 a21:	67 00 00             	add    %al,(%eax)
	...
 a30:	00 00                	add    %al,(%rax)
 a32:	8a 08                	mov    (%rax),%cl
 a34:	00 00                	add    %al,(%rax)
 a36:	00 00                	add    %al,(%rax)
 a38:	00 00                	add    %al,(%rax)
 a3a:	1a 09                	sbb    (%rcx),%cl
 a3c:	00 00                	add    %al,(%rax)
 a3e:	00 00                	add    %al,(%rax)
 a40:	00 00                	add    %al,(%rax)
 a42:	01 00                	add    %eax,(%rax)
 a44:	56                   	push   %rsi
	...
 a55:	8a 08                	mov    (%rax),%cl
 a57:	00 00                	add    %al,(%rax)
 a59:	00 00                	add    %al,(%rax)
 a5b:	00 00                	add    %al,(%rax)
 a5d:	1a 09                	sbb    (%rcx),%cl
 a5f:	00 00                	add    %al,(%rax)
 a61:	00 00                	add    %al,(%rax)
 a63:	00 00                	add    %al,(%rax)
 a65:	01 00                	add    %eax,(%rax)
 a67:	53                   	push   %rbx
	...
 a78:	8a 08                	mov    (%rax),%cl
 a7a:	00 00                	add    %al,(%rax)
 a7c:	00 00                	add    %al,(%rax)
 a7e:	00 00                	add    %al,(%rax)
 a80:	1a 09                	sbb    (%rcx),%cl
 a82:	00 00                	add    %al,(%rax)
 a84:	00 00                	add    %al,(%rax)
 a86:	00 00                	add    %al,(%rax)
 a88:	01 00                	add    %eax,(%rax)
 a8a:	5e                   	pop    %rsi
	...
 a9b:	96                   	xchg   %eax,%esi
 a9c:	08 00                	or     %al,(%rax)
 a9e:	00 00                	add    %al,(%rax)
 aa0:	00 00                	add    %al,(%rax)
 aa2:	00 ca                	add    %cl,%dl
 aa4:	08 00                	or     %al,(%rax)
 aa6:	00 00                	add    %al,(%rax)
 aa8:	00 00                	add    %al,(%rax)
 aaa:	00 01                	add    %al,(%rcx)
 aac:	00 50 00             	add    %dl,0x0(%rax)
	...
 abb:	00 00                	add    %al,(%rax)
 abd:	00 ca                	add    %cl,%dl
 abf:	08 00                	or     %al,(%rax)
 ac1:	00 00                	add    %al,(%rax)
 ac3:	00 00                	add    %al,(%rax)
 ac5:	00 d9                	add    %bl,%cl
 ac7:	08 00                	or     %al,(%rax)
 ac9:	00 00                	add    %al,(%rax)
 acb:	00 00                	add    %al,(%rax)
 acd:	00 02                	add    %al,(%rdx)
 acf:	00 30                	add    %dh,(%rax)
 ad1:	9f                   	lahf   
 ad2:	d9 08                	(bad)  (%rax)
 ad4:	00 00                	add    %al,(%rax)
 ad6:	00 00                	add    %al,(%rax)
 ad8:	00 00                	add    %al,(%rax)
 ada:	fc                   	cld    
 adb:	08 00                	or     %al,(%rax)
 add:	00 00                	add    %al,(%rax)
 adf:	00 00                	add    %al,(%rax)
 ae1:	00 01                	add    %al,(%rcx)
 ae3:	00 52 00             	add    %dl,0x0(%rdx)
	...
 af2:	00 00                	add    %al,(%rax)
 af4:	00 d5                	add    %dl,%ch
 af6:	08 00                	or     %al,(%rax)
 af8:	00 00                	add    %al,(%rax)
 afa:	00 00                	add    %al,(%rax)
 afc:	00 1a                	add    %bl,(%rdx)
 afe:	09 00                	or     %eax,(%rax)
 b00:	00 00                	add    %al,(%rax)
 b02:	00 00                	add    %al,(%rax)
 b04:	00 01                	add    %al,(%rcx)
 b06:	00 50 00             	add    %dl,0x0(%rax)
	...
 b15:	00 00                	add    %al,(%rax)
 b17:	00 1d 09 00 00 00    	add    %bl,0x9(%rip)        # b26 <__abi_tag+0x862>
 b1d:	00 00                	add    %al,(%rax)
 b1f:	00 28                	add    %ch,(%rax)
 b21:	09 00                	or     %eax,(%rax)
 b23:	00 00                	add    %al,(%rax)
 b25:	00 00                	add    %al,(%rax)
 b27:	00 01                	add    %al,(%rcx)
 b29:	00 68 28             	add    %ch,0x28(%rax)
 b2c:	09 00                	or     %eax,(%rax)
 b2e:	00 00                	add    %al,(%rax)
 b30:	00 00                	add    %al,(%rax)
 b32:	00 3c 0a             	add    %bh,(%rdx,%rcx,1)
 b35:	00 00                	add    %al,(%rax)
 b37:	00 00                	add    %al,(%rax)
 b39:	00 00                	add    %al,(%rax)
 b3b:	03 00                	add    (%rax),%eax
 b3d:	77 c0                	ja     aff <__abi_tag+0x83b>
 b3f:	00 3c 0a             	add    %bh,(%rdx,%rcx,1)
 b42:	00 00                	add    %al,(%rax)
 b44:	00 00                	add    %al,(%rax)
 b46:	00 00                	add    %al,(%rax)
 b48:	43 0a 00             	rex.XB or (%r8),%al
 b4b:	00 00                	add    %al,(%rax)
 b4d:	00 00                	add    %al,(%rax)
 b4f:	00 01                	add    %al,(%rcx)
 b51:	00 61 86             	add    %ah,-0x7a(%rcx)
 b54:	16                   	(bad)  
 b55:	00 00                	add    %al,(%rax)
 b57:	00 00                	add    %al,(%rax)
 b59:	00 00                	add    %al,(%rax)
 b5b:	8b 16                	mov    (%rsi),%edx
 b5d:	00 00                	add    %al,(%rax)
 b5f:	00 00                	add    %al,(%rax)
 b61:	00 00                	add    %al,(%rax)
 b63:	01 00                	add    %eax,(%rax)
 b65:	64 8b 16             	mov    %fs:(%rsi),%edx
 b68:	00 00                	add    %al,(%rax)
 b6a:	00 00                	add    %al,(%rax)
 b6c:	00 00                	add    %al,(%rax)
 b6e:	c7                   	(bad)  
 b6f:	17                   	(bad)  
 b70:	00 00                	add    %al,(%rax)
 b72:	00 00                	add    %al,(%rax)
 b74:	00 00                	add    %al,(%rax)
 b76:	02 00                	add    (%rax),%al
 b78:	77 00                	ja     b7a <__abi_tag+0x8b6>
	...
 b8a:	28 09                	sub    %cl,(%rcx)
 b8c:	00 00                	add    %al,(%rax)
 b8e:	00 00                	add    %al,(%rax)
 b90:	00 00                	add    %al,(%rax)
 b92:	38 09                	cmp    %cl,(%rcx)
 b94:	00 00                	add    %al,(%rax)
 b96:	00 00                	add    %al,(%rax)
 b98:	00 00                	add    %al,(%rax)
 b9a:	02 00                	add    (%rax),%al
 b9c:	30 9f 38 09 00 00    	xor    %bl,0x938(%rdi)
 ba2:	00 00                	add    %al,(%rax)
 ba4:	00 00                	add    %al,(%rax)
 ba6:	88 09                	mov    %cl,(%rcx)
 ba8:	00 00                	add    %al,(%rax)
 baa:	00 00                	add    %al,(%rax)
 bac:	00 00                	add    %al,(%rax)
 bae:	01 00                	add    %eax,(%rax)
 bb0:	50                   	push   %rax
	...
 bc1:	28 09                	sub    %cl,(%rcx)
 bc3:	00 00                	add    %al,(%rax)
 bc5:	00 00                	add    %al,(%rax)
 bc7:	00 00                	add    %al,(%rax)
 bc9:	38 09                	cmp    %cl,(%rcx)
 bcb:	00 00                	add    %al,(%rax)
 bcd:	00 00                	add    %al,(%rax)
 bcf:	00 00                	add    %al,(%rax)
 bd1:	10 00                	adc    %al,(%rax)
 bd3:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 bd9:	93                   	xchg   %eax,%ebx
 bda:	08 30                	or     %dh,(%rax)
 bdc:	9f                   	lahf   
 bdd:	93                   	xchg   %eax,%ebx
 bde:	08 30                	or     %dh,(%rax)
 be0:	9f                   	lahf   
 be1:	93                   	xchg   %eax,%ebx
 be2:	08 b5 09 00 00 00    	or     %dh,0x9(%rbp)
 be8:	00 00                	add    %al,(%rax)
 bea:	00 bc 09 00 00 00 00 	add    %bh,0x0(%rcx,%rcx,1)
 bf1:	00 00                	add    %al,(%rax)
 bf3:	03 00                	add    (%rax),%eax
 bf5:	64 93                	fs xchg %eax,%ebx
 bf7:	08 d4                	or     %dl,%ah
 bf9:	09 00                	or     %eax,(%rax)
 bfb:	00 00                	add    %al,(%rax)
 bfd:	00 00                	add    %al,(%rax)
 bff:	00 dc                	add    %bl,%ah
 c01:	09 00                	or     %eax,(%rax)
 c03:	00 00                	add    %al,(%rax)
 c05:	00 00                	add    %al,(%rax)
 c07:	00 10                	add    %dl,(%rax)
 c09:	00 30                	add    %dh,(%rax)
 c0b:	9f                   	lahf   
 c0c:	93                   	xchg   %eax,%ebx
 c0d:	08 30                	or     %dh,(%rax)
 c0f:	9f                   	lahf   
 c10:	93                   	xchg   %eax,%ebx
 c11:	08 30                	or     %dh,(%rax)
 c13:	9f                   	lahf   
 c14:	93                   	xchg   %eax,%ebx
 c15:	08 30                	or     %dh,(%rax)
 c17:	9f                   	lahf   
 c18:	93                   	xchg   %eax,%ebx
 c19:	08 dc                	or     %bl,%ah
 c1b:	09 00                	or     %eax,(%rax)
 c1d:	00 00                	add    %al,(%rax)
 c1f:	00 00                	add    %al,(%rax)
 c21:	00 e4                	add    %ah,%ah
 c23:	09 00                	or     %eax,(%rax)
 c25:	00 00                	add    %al,(%rax)
 c27:	00 00                	add    %al,(%rax)
 c29:	00 03                	add    %al,(%rbx)
 c2b:	00 62 93             	add    %ah,-0x6d(%rdx)
 c2e:	08 00                	or     %al,(%rax)
	...
 c3c:	00 00                	add    %al,(%rax)
 c3e:	00 28                	add    %ch,(%rax)
 c40:	09 00                	or     %eax,(%rax)
 c42:	00 00                	add    %al,(%rax)
 c44:	00 00                	add    %al,(%rax)
 c46:	00 bb 0a 00 00 00    	add    %bh,0xa(%rbx)
 c4c:	00 00                	add    %al,(%rax)
 c4e:	00 01                	add    %al,(%rcx)
 c50:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 c5f:	00 00                	add    %al,(%rax)
 c61:	00 28                	add    %ch,(%rax)
 c63:	09 00                	or     %eax,(%rax)
 c65:	00 00                	add    %al,(%rax)
 c67:	00 00                	add    %al,(%rax)
 c69:	00 bd 17 00 00 00    	add    %bh,0x17(%rbp)
 c6f:	00 00                	add    %al,(%rax)
 c71:	00 01                	add    %al,(%rcx)
 c73:	00 53 00             	add    %dl,0x0(%rbx)
	...
 c82:	00 00                	add    %al,(%rax)
 c84:	00 28                	add    %ch,(%rax)
 c86:	09 00                	or     %eax,(%rax)
 c88:	00 00                	add    %al,(%rax)
 c8a:	00 00                	add    %al,(%rax)
 c8c:	00 a9 0a 00 00 00    	add    %ch,0xa(%rcx)
 c92:	00 00                	add    %al,(%rax)
 c94:	00 01                	add    %al,(%rcx)
 c96:	00 56 00             	add    %dl,0x0(%rsi)
	...
 ca5:	00 00                	add    %al,(%rax)
 ca7:	00 96 09 00 00 00    	add    %dl,0x9(%rsi)
 cad:	00 00                	add    %al,(%rax)
 caf:	00 d4                	add    %dl,%ah
 cb1:	09 00                	or     %eax,(%rax)
 cb3:	00 00                	add    %al,(%rax)
 cb5:	00 00                	add    %al,(%rax)
 cb7:	00 03                	add    %al,(%rbx)
 cb9:	00 7e 7c             	add    %bh,0x7c(%rsi)
 cbc:	9f                   	lahf   
	...
 ccd:	96                   	xchg   %eax,%esi
 cce:	09 00                	or     %eax,(%rax)
 cd0:	00 00                	add    %al,(%rax)
 cd2:	00 00                	add    %al,(%rax)
 cd4:	00 a3 09 00 00 00    	add    %ah,0x9(%rbx)
 cda:	00 00                	add    %al,(%rax)
 cdc:	00 03                	add    %al,(%rbx)
 cde:	00 7e 7d             	add    %bh,0x7d(%rsi)
 ce1:	9f                   	lahf   
 ce2:	d2 09                	rorb   %cl,(%rcx)
 ce4:	00 00                	add    %al,(%rax)
 ce6:	00 00                	add    %al,(%rax)
 ce8:	00 00                	add    %al,(%rax)
 cea:	d4                   	(bad)  
 ceb:	09 00                	or     %eax,(%rax)
 ced:	00 00                	add    %al,(%rax)
 cef:	00 00                	add    %al,(%rax)
 cf1:	00 01                	add    %al,(%rcx)
 cf3:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 d02:	00 00                	add    %al,(%rax)
 d04:	00 0a                	add    %cl,(%rdx)
 d06:	0a 00                	or     (%rax),%al
 d08:	00 00                	add    %al,(%rax)
 d0a:	00 00                	add    %al,(%rax)
 d0c:	00 34 17             	add    %dh,(%rdi,%rdx,1)
 d0f:	00 00                	add    %al,(%rax)
 d11:	00 00                	add    %al,(%rax)
 d13:	00 00                	add    %al,(%rax)
 d15:	02 00                	add    (%rax),%al
 d17:	77 30                	ja     d49 <__abi_tag+0xa85>
 d19:	34 17                	xor    $0x17,%al
 d1b:	00 00                	add    %al,(%rax)
 d1d:	00 00                	add    %al,(%rax)
 d1f:	00 00                	add    %al,(%rax)
 d21:	3a 17                	cmp    (%rdi),%dl
 d23:	00 00                	add    %al,(%rax)
 d25:	00 00                	add    %al,(%rax)
 d27:	00 00                	add    %al,(%rax)
 d29:	01 00                	add    %eax,(%rax)
 d2b:	61                   	(bad)  
 d2c:	3a 17                	cmp    (%rdi),%dl
 d2e:	00 00                	add    %al,(%rax)
 d30:	00 00                	add    %al,(%rax)
 d32:	00 00                	add    %al,(%rax)
 d34:	c7                   	(bad)  
 d35:	17                   	(bad)  
 d36:	00 00                	add    %al,(%rax)
 d38:	00 00                	add    %al,(%rax)
 d3a:	00 00                	add    %al,(%rax)
 d3c:	02 00                	add    (%rax),%al
 d3e:	77 10                	ja     d50 <__abi_tag+0xa8c>
	...
 d50:	1e                   	(bad)  
 d51:	0a 00                	or     (%rax),%al
 d53:	00 00                	add    %al,(%rax)
 d55:	00 00                	add    %al,(%rax)
 d57:	00 c7                	add    %al,%bh
 d59:	17                   	(bad)  
 d5a:	00 00                	add    %al,(%rax)
 d5c:	00 00                	add    %al,(%rax)
 d5e:	00 00                	add    %al,(%rax)
 d60:	02 00                	add    (%rax),%al
 d62:	77 20                	ja     d84 <__abi_tag+0xac0>
	...
 d74:	a9 0a 00 00 00       	test   $0xa,%eax
 d79:	00 00                	add    %al,(%rax)
 d7b:	00 c6                	add    %al,%dh
 d7d:	17                   	(bad)  
 d7e:	00 00                	add    %al,(%rax)
 d80:	00 00                	add    %al,(%rax)
 d82:	00 00                	add    %al,(%rax)
 d84:	01 00                	add    %eax,(%rax)
 d86:	56                   	push   %rsi
	...
 d97:	bb 0a 00 00 00       	mov    $0xa,%ebx
 d9c:	00 00                	add    %al,(%rax)
 d9e:	00 4d 0e             	add    %cl,0xe(%rbp)
 da1:	00 00                	add    %al,(%rax)
 da3:	00 00                	add    %al,(%rax)
 da5:	00 00                	add    %al,(%rax)
 da7:	0a 00                	or     (%rax),%al
 da9:	93                   	xchg   %eax,%ebx
 daa:	28 30                	sub    %dh,(%rax)
 dac:	9f                   	lahf   
 dad:	93                   	xchg   %eax,%ebx
 dae:	08 30                	or     %dh,(%rax)
 db0:	9f                   	lahf   
 db1:	93                   	xchg   %eax,%ebx
 db2:	08 ab 0e 00 00 00    	or     %ch,0xe(%rbx)
 db8:	00 00                	add    %al,(%rax)
 dba:	00 34 11             	add    %dh,(%rcx,%rdx,1)
 dbd:	00 00                	add    %al,(%rax)
 dbf:	00 00                	add    %al,(%rax)
 dc1:	00 00                	add    %al,(%rax)
 dc3:	1a 00                	sbb    (%rax),%al
 dc5:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 dcb:	93                   	xchg   %eax,%ebx
 dcc:	08 30                	or     %dh,(%rax)
 dce:	9f                   	lahf   
 dcf:	93                   	xchg   %eax,%ebx
 dd0:	08 30                	or     %dh,(%rax)
 dd2:	9f                   	lahf   
 dd3:	93                   	xchg   %eax,%ebx
 dd4:	08 30                	or     %dh,(%rax)
 dd6:	9f                   	lahf   
 dd7:	93                   	xchg   %eax,%ebx
 dd8:	08 93 10 30 9f 93    	or     %dl,-0x6c60cff0(%rbx)
 dde:	08 34 11             	or     %dh,(%rcx,%rdx,1)
 de1:	00 00                	add    %al,(%rax)
 de3:	00 00                	add    %al,(%rax)
 de5:	00 00                	add    %al,(%rax)
 de7:	44 12 00             	adc    (%rax),%r8b
 dea:	00 00                	add    %al,(%rax)
 dec:	00 00                	add    %al,(%rax)
 dee:	00 14 00             	add    %dl,(%rax,%rax,1)
 df1:	30 9f 93 08 93 10    	xor    %bl,0x10930893(%rdi)
 df7:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 dfd:	93                   	xchg   %eax,%ebx
 dfe:	08 93 10 30 9f 93    	or     %dl,-0x6c60cff0(%rbx)
 e04:	08 00                	or     %al,(%rax)
	...
 e12:	00 00                	add    %al,(%rax)
 e14:	00 bb 0a 00 00 00    	add    %bh,0xa(%rbx)
 e1a:	00 00                	add    %al,(%rax)
 e1c:	00 c3                	add    %al,%bl
 e1e:	17                   	(bad)  
 e1f:	00 00                	add    %al,(%rax)
 e21:	00 00                	add    %al,(%rax)
 e23:	00 00                	add    %al,(%rax)
 e25:	01 00                	add    %eax,(%rax)
 e27:	5e                   	pop    %rsi
	...
 e38:	89 0e                	mov    %ecx,(%rsi)
 e3a:	00 00                	add    %al,(%rax)
 e3c:	00 00                	add    %al,(%rax)
 e3e:	00 00                	add    %al,(%rax)
 e40:	3f                   	(bad)  
 e41:	14 00                	adc    $0x0,%al
 e43:	00 00                	add    %al,(%rax)
 e45:	00 00                	add    %al,(%rax)
 e47:	00 03                	add    %al,(%rbx)
 e49:	00 10                	add    %dl,(%rax)
 e4b:	64 9f                	fs lahf 
 e4d:	3f                   	(bad)  
 e4e:	14 00                	adc    $0x0,%al
 e50:	00 00                	add    %al,(%rax)
 e52:	00 00                	add    %al,(%rax)
 e54:	00 c7                	add    %al,%bh
 e56:	17                   	(bad)  
 e57:	00 00                	add    %al,(%rax)
 e59:	00 00                	add    %al,(%rax)
 e5b:	00 00                	add    %al,(%rax)
 e5d:	03 00                	add    (%rax),%eax
 e5f:	10 60 9f             	adc    %ah,-0x61(%rax)
	...
 e72:	ab                   	stos   %eax,%es:(%rdi)
 e73:	0e                   	(bad)  
 e74:	00 00                	add    %al,(%rax)
 e76:	00 00                	add    %al,(%rax)
 e78:	00 00                	add    %al,(%rax)
 e7a:	44 12 00             	adc    (%rax),%r8b
 e7d:	00 00                	add    %al,(%rax)
 e7f:	00 00                	add    %al,(%rax)
 e81:	00 02                	add    %al,(%rdx)
 e83:	00 30                	add    %dh,(%rax)
 e85:	9f                   	lahf   
 e86:	44 12 00             	adc    (%rax),%r8b
 e89:	00 00                	add    %al,(%rax)
 e8b:	00 00                	add    %al,(%rax)
 e8d:	00 1d 13 00 00 00    	add    %bl,0x13(%rip)        # ea6 <__abi_tag+0xbe2>
 e93:	00 00                	add    %al,(%rax)
 e95:	00 03                	add    %al,(%rbx)
 e97:	00 10                	add    %dl,(%rax)
 e99:	68 9f 1d 13 00       	pushq  $0x131d9f
 e9e:	00 00                	add    %al,(%rax)
 ea0:	00 00                	add    %al,(%rax)
 ea2:	00 2b                	add    %ch,(%rbx)
 ea4:	13 00                	adc    (%rax),%eax
 ea6:	00 00                	add    %al,(%rax)
 ea8:	00 00                	add    %al,(%rax)
 eaa:	00 02                	add    %al,(%rdx)
 eac:	00 38                	add    %bh,(%rax)
 eae:	9f                   	lahf   
 eaf:	2b 13                	sub    (%rbx),%edx
 eb1:	00 00                	add    %al,(%rax)
 eb3:	00 00                	add    %al,(%rax)
 eb5:	00 00                	add    %al,(%rax)
 eb7:	37                   	(bad)  
 eb8:	13 00                	adc    (%rax),%eax
 eba:	00 00                	add    %al,(%rax)
 ebc:	00 00                	add    %al,(%rax)
 ebe:	00 02                	add    %al,(%rdx)
 ec0:	00 48 9f             	add    %cl,-0x61(%rax)
 ec3:	37                   	(bad)  
 ec4:	13 00                	adc    (%rax),%eax
 ec6:	00 00                	add    %al,(%rax)
 ec8:	00 00                	add    %al,(%rax)
 eca:	00 57 13             	add    %dl,0x13(%rdi)
 ecd:	00 00                	add    %al,(%rax)
 ecf:	00 00                	add    %al,(%rax)
 ed1:	00 00                	add    %al,(%rax)
 ed3:	03 00                	add    (%rax),%eax
 ed5:	10 28                	adc    %ch,(%rax)
 ed7:	9f                   	lahf   
 ed8:	57                   	push   %rdi
 ed9:	13 00                	adc    (%rax),%eax
 edb:	00 00                	add    %al,(%rax)
 edd:	00 00                	add    %al,(%rax)
 edf:	00 69 13             	add    %ch,0x13(%rcx)
 ee2:	00 00                	add    %al,(%rax)
 ee4:	00 00                	add    %al,(%rax)
 ee6:	00 00                	add    %al,(%rax)
 ee8:	03 00                	add    (%rax),%eax
 eea:	10 30                	adc    %dh,(%rax)
 eec:	9f                   	lahf   
 eed:	69 13 00 00 00 00    	imul   $0x0,(%rbx),%edx
 ef3:	00 00                	add    %al,(%rax)
 ef5:	d2 13                	rclb   %cl,(%rbx)
 ef7:	00 00                	add    %al,(%rax)
 ef9:	00 00                	add    %al,(%rax)
 efb:	00 00                	add    %al,(%rax)
 efd:	03 00                	add    (%rax),%eax
 eff:	10 40 9f             	adc    %al,-0x61(%rax)
 f02:	d2 13                	rclb   %cl,(%rbx)
 f04:	00 00                	add    %al,(%rax)
 f06:	00 00                	add    %al,(%rax)
 f08:	00 00                	add    %al,(%rax)
 f0a:	d6                   	(bad)  
 f0b:	13 00                	adc    (%rax),%eax
 f0d:	00 00                	add    %al,(%rax)
 f0f:	00 00                	add    %al,(%rax)
 f11:	00 03                	add    %al,(%rbx)
 f13:	00 10                	add    %dl,(%rax)
 f15:	48 9f                	rex.W lahf 
 f17:	d6                   	(bad)  
 f18:	13 00                	adc    (%rax),%eax
 f1a:	00 00                	add    %al,(%rax)
 f1c:	00 00                	add    %al,(%rax)
 f1e:	00 ee                	add    %ch,%dh
 f20:	13 00                	adc    (%rax),%eax
 f22:	00 00                	add    %al,(%rax)
 f24:	00 00                	add    %al,(%rax)
 f26:	00 03                	add    %al,(%rbx)
 f28:	00 10                	add    %dl,(%rax)
 f2a:	50                   	push   %rax
 f2b:	9f                   	lahf   
 f2c:	ee                   	out    %al,(%dx)
 f2d:	13 00                	adc    (%rax),%eax
 f2f:	00 00                	add    %al,(%rax)
 f31:	00 00                	add    %al,(%rax)
 f33:	00 61 16             	add    %ah,0x16(%rcx)
 f36:	00 00                	add    %al,(%rax)
 f38:	00 00                	add    %al,(%rax)
 f3a:	00 00                	add    %al,(%rax)
 f3c:	03 00                	add    (%rax),%eax
 f3e:	10 58 9f             	adc    %bl,-0x61(%rax)
 f41:	61                   	(bad)  
 f42:	16                   	(bad)  
 f43:	00 00                	add    %al,(%rax)
 f45:	00 00                	add    %al,(%rax)
 f47:	00 00                	add    %al,(%rax)
 f49:	c7                   	(bad)  
 f4a:	17                   	(bad)  
 f4b:	00 00                	add    %al,(%rax)
 f4d:	00 00                	add    %al,(%rax)
 f4f:	00 00                	add    %al,(%rax)
 f51:	03 00                	add    (%rax),%eax
 f53:	10 60 9f             	adc    %ah,-0x61(%rax)
	...

Déassemblage de la section .debug_ranges :

0000000000000000 <.debug_ranges>:
   0:	80 10 00             	adcb   $0x0,(%rax)
   3:	00 00                	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 97 10 00 00 00    	add    %dl,0x10(%rdi)
	...
  1d:	00 00                	add    %al,(%rax)
  1f:	00 30                	add    %dh,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	00 00                	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 3b                	add    %bh,(%rbx)
  29:	00 00                	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
  2f:	00 4a 00             	add    %cl,0x0(%rdx)
  32:	00 00                	add    %al,(%rax)
  34:	00 00                	add    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	37                   	(bad)  
  39:	01 00                	add    %eax,(%rax)
  3b:	00 00                	add    %al,(%rax)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 42 01             	add    %al,0x1(%rdx)
  42:	00 00                	add    %al,(%rax)
  44:	00 00                	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	4a 01 00             	rex.WX add %rax,(%rax)
	...
  5f:	00 d0                	add    %dl,%al
  61:	05 00 00 00 00       	add    $0x0,%eax
  66:	00 00                	add    %al,(%rax)
  68:	fd                   	std    
  69:	05 00 00 00 00       	add    $0x0,%eax
  6e:	00 00                	add    %al,(%rax)
  70:	68 08 00 00 00       	pushq  $0x8
  75:	00 00                	add    %al,(%rax)
  77:	00 72 08             	add    %dh,0x8(%rdx)
	...
  8e:	00 00                	add    %al,(%rax)
  90:	25 06 00 00 00       	and    $0x6,%eax
  95:	00 00                	add    %al,(%rax)
  97:	00 30                	add    %dh,(%rax)
  99:	06                   	(bad)  
  9a:	00 00                	add    %al,(%rax)
  9c:	00 00                	add    %al,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	4c 06                	rex.WR (bad) 
  a2:	00 00                	add    %al,(%rax)
  a4:	00 00                	add    %al,(%rax)
  a6:	00 00                	add    %al,(%rax)
  a8:	72 07                	jb     b1 <__abi_tag-0x213>
  aa:	00 00                	add    %al,(%rax)
  ac:	00 00                	add    %al,(%rax)
  ae:	00 00                	add    %al,(%rax)
  b0:	1a 09                	sbb    (%rcx),%cl
  b2:	00 00                	add    %al,(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	2c 09                	sub    $0x9,%al
	...
  ce:	00 00                	add    %al,(%rax)
  d0:	25 06 00 00 00       	and    $0x6,%eax
  d5:	00 00                	add    %al,(%rax)
  d7:	00 30                	add    %dh,(%rax)
  d9:	06                   	(bad)  
  da:	00 00                	add    %al,(%rax)
  dc:	00 00                	add    %al,(%rax)
  de:	00 00                	add    %al,(%rax)
  e0:	4c 06                	rex.WR (bad) 
  e2:	00 00                	add    %al,(%rax)
  e4:	00 00                	add    %al,(%rax)
  e6:	00 00                	add    %al,(%rax)
  e8:	72 07                	jb     f1 <__abi_tag-0x1d3>
  ea:	00 00                	add    %al,(%rax)
  ec:	00 00                	add    %al,(%rax)
  ee:	00 00                	add    %al,(%rax)
  f0:	1a 09                	sbb    (%rcx),%cl
  f2:	00 00                	add    %al,(%rax)
  f4:	00 00                	add    %al,(%rax)
  f6:	00 00                	add    %al,(%rax)
  f8:	2c 09                	sub    $0x9,%al
	...
 10e:	00 00                	add    %al,(%rax)
 110:	3b 06                	cmp    (%rsi),%eax
 112:	00 00                	add    %al,(%rax)
 114:	00 00                	add    %al,(%rax)
 116:	00 00                	add    %al,(%rax)
 118:	4c 06                	rex.WR (bad) 
 11a:	00 00                	add    %al,(%rax)
 11c:	00 00                	add    %al,(%rax)
 11e:	00 00                	add    %al,(%rax)
 120:	8a 08                	mov    (%rax),%cl
 122:	00 00                	add    %al,(%rax)
 124:	00 00                	add    %al,(%rax)
 126:	00 00                	add    %al,(%rax)
 128:	1a 09                	sbb    (%rcx),%cl
	...
 13e:	00 00                	add    %al,(%rax)
 140:	72 07                	jb     149 <__abi_tag-0x17b>
 142:	00 00                	add    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	00 00                	add    %al,(%rax)
 148:	68 08 00 00 00       	pushq  $0x8
 14d:	00 00                	add    %al,(%rax)
 14f:	00 72 08             	add    %dh,0x8(%rdx)
 152:	00 00                	add    %al,(%rax)
 154:	00 00                	add    %al,(%rax)
 156:	00 00                	add    %al,(%rax)
 158:	8a 08                	mov    (%rax),%cl
	...
 16e:	00 00                	add    %al,(%rax)
 170:	72 07                	jb     179 <__abi_tag-0x14b>
 172:	00 00                	add    %al,(%rax)
 174:	00 00                	add    %al,(%rax)
 176:	00 00                	add    %al,(%rax)
 178:	68 08 00 00 00       	pushq  $0x8
 17d:	00 00                	add    %al,(%rax)
 17f:	00 72 08             	add    %dh,0x8(%rdx)
 182:	00 00                	add    %al,(%rax)
 184:	00 00                	add    %al,(%rax)
 186:	00 00                	add    %al,(%rax)
 188:	8a 08                	mov    (%rax),%cl
	...
 19e:	00 00                	add    %al,(%rax)
 1a0:	54                   	push   %rsp
 1a1:	0d 00 00 00 00       	or     $0x0,%eax
 1a6:	00 00                	add    %al,(%rax)
 1a8:	89 0e                	mov    %ecx,(%rsi)
 1aa:	00 00                	add    %al,(%rax)
 1ac:	00 00                	add    %al,(%rax)
 1ae:	00 00                	add    %al,(%rax)
 1b0:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 1b1:	0e                   	(bad)  
 1b2:	00 00                	add    %al,(%rax)
 1b4:	00 00                	add    %al,(%rax)
 1b6:	00 00                	add    %al,(%rax)
 1b8:	b3 0e                	mov    $0xe,%bl
 1ba:	00 00                	add    %al,(%rax)
 1bc:	00 00                	add    %al,(%rax)
 1be:	00 00                	add    %al,(%rax)
 1c0:	c0 0e 00             	rorb   $0x0,(%rsi)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	00 00                	add    %al,(%rax)
 1c7:	00 c8                	add    %cl,%al
 1c9:	0e                   	(bad)  
 1ca:	00 00                	add    %al,(%rax)
 1cc:	00 00                	add    %al,(%rax)
 1ce:	00 00                	add    %al,(%rax)
 1d0:	0c 0f                	or     $0xf,%al
 1d2:	00 00                	add    %al,(%rax)
 1d4:	00 00                	add    %al,(%rax)
 1d6:	00 00                	add    %al,(%rax)
 1d8:	22 0f                	and    (%rdi),%cl
 1da:	00 00                	add    %al,(%rax)
 1dc:	00 00                	add    %al,(%rax)
 1de:	00 00                	add    %al,(%rax)
 1e0:	27                   	(bad)  
 1e1:	0f 00 00             	sldt   (%rax)
 1e4:	00 00                	add    %al,(%rax)
 1e6:	00 00                	add    %al,(%rax)
 1e8:	39 0f                	cmp    %ecx,(%rdi)
 1ea:	00 00                	add    %al,(%rax)
 1ec:	00 00                	add    %al,(%rax)
 1ee:	00 00                	add    %al,(%rax)
 1f0:	3d 0f 00 00 00       	cmp    $0xf,%eax
 1f5:	00 00                	add    %al,(%rax)
 1f7:	00 56 0f             	add    %dl,0xf(%rsi)
 1fa:	00 00                	add    %al,(%rax)
 1fc:	00 00                	add    %al,(%rax)
 1fe:	00 00                	add    %al,(%rax)
 200:	5f                   	pop    %rdi
 201:	0f 00 00             	sldt   (%rax)
 204:	00 00                	add    %al,(%rax)
 206:	00 00                	add    %al,(%rax)
 208:	67 0f 00 00          	sldt   (%eax)
 20c:	00 00                	add    %al,(%rax)
 20e:	00 00                	add    %al,(%rax)
 210:	74 0f                	je     221 <__abi_tag-0xa3>
 212:	00 00                	add    %al,(%rax)
 214:	00 00                	add    %al,(%rax)
 216:	00 00                	add    %al,(%rax)
 218:	85 0f                	test   %ecx,(%rdi)
 21a:	00 00                	add    %al,(%rax)
 21c:	00 00                	add    %al,(%rax)
 21e:	00 00                	add    %al,(%rax)
 220:	92                   	xchg   %eax,%edx
 221:	0f 00 00             	sldt   (%rax)
 224:	00 00                	add    %al,(%rax)
 226:	00 00                	add    %al,(%rax)
 228:	9a                   	(bad)  
 229:	0f 00 00             	sldt   (%rax)
 22c:	00 00                	add    %al,(%rax)
 22e:	00 00                	add    %al,(%rax)
 230:	a2 0f 00 00 00 00 00 	movabs %al,0xb30000000000000f
 237:	00 b3 
 239:	0f 00 00             	sldt   (%rax)
 23c:	00 00                	add    %al,(%rax)
 23e:	00 00                	add    %al,(%rax)
 240:	bb 0f 00 00 00       	mov    $0xf,%ebx
 245:	00 00                	add    %al,(%rax)
 247:	00 c9                	add    %cl,%cl
 249:	0f 00 00             	sldt   (%rax)
 24c:	00 00                	add    %al,(%rax)
 24e:	00 00                	add    %al,(%rax)
 250:	e3 0f                	jrcxz  261 <__abi_tag-0x63>
 252:	00 00                	add    %al,(%rax)
 254:	00 00                	add    %al,(%rax)
 256:	00 00                	add    %al,(%rax)
 258:	03 10                	add    (%rax),%edx
 25a:	00 00                	add    %al,(%rax)
 25c:	00 00                	add    %al,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	10 10                	adc    %dl,(%rax)
 262:	00 00                	add    %al,(%rax)
 264:	00 00                	add    %al,(%rax)
 266:	00 00                	add    %al,(%rax)
 268:	18 10                	sbb    %dl,(%rax)
 26a:	00 00                	add    %al,(%rax)
 26c:	00 00                	add    %al,(%rax)
 26e:	00 00                	add    %al,(%rax)
 270:	3d 10 00 00 00       	cmp    $0x10,%eax
 275:	00 00                	add    %al,(%rax)
 277:	00 45 10             	add    %al,0x10(%rbp)
 27a:	00 00                	add    %al,(%rax)
 27c:	00 00                	add    %al,(%rax)
 27e:	00 00                	add    %al,(%rax)
 280:	52                   	push   %rdx
 281:	10 00                	adc    %al,(%rax)
 283:	00 00                	add    %al,(%rax)
 285:	00 00                	add    %al,(%rax)
 287:	00 5a 10             	add    %bl,0x10(%rdx)
 28a:	00 00                	add    %al,(%rax)
 28c:	00 00                	add    %al,(%rax)
 28e:	00 00                	add    %al,(%rax)
 290:	7e 10                	jle    2a2 <__abi_tag-0x22>
 292:	00 00                	add    %al,(%rax)
 294:	00 00                	add    %al,(%rax)
 296:	00 00                	add    %al,(%rax)
 298:	86 10                	xchg   %dl,(%rax)
 29a:	00 00                	add    %al,(%rax)
 29c:	00 00                	add    %al,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 2a1:	10 00                	adc    %al,(%rax)
 2a3:	00 00                	add    %al,(%rax)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 a9 10 00 00 00    	add    %ch,0x10(%rcx)
 2ad:	00 00                	add    %al,(%rax)
 2af:	00 f4                	add    %dh,%ah
 2b1:	10 00                	adc    %al,(%rax)
 2b3:	00 00                	add    %al,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 03                	add    %al,(%rbx)
 2b9:	11 00                	adc    %eax,(%rax)
 2bb:	00 00                	add    %al,(%rax)
 2bd:	00 00                	add    %al,(%rax)
 2bf:	00 07                	add    %al,(%rdi)
 2c1:	11 00                	adc    %eax,(%rax)
 2c3:	00 00                	add    %al,(%rax)
 2c5:	00 00                	add    %al,(%rax)
 2c7:	00 25 11 00 00 00    	add    %ah,0x11(%rip)        # 2de <__abi_tag+0x1a>
 2cd:	00 00                	add    %al,(%rax)
 2cf:	00 2a                	add    %ch,(%rdx)
 2d1:	11 00                	adc    %eax,(%rax)
 2d3:	00 00                	add    %al,(%rax)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	00 2f                	add    %ch,(%rdi)
 2d9:	11 00                	adc    %eax,(%rax)
 2db:	00 00                	add    %al,(%rax)
 2dd:	00 00                	add    %al,(%rax)
 2df:	00 43 11             	add    %al,0x11(%rbx)
 2e2:	00 00                	add    %al,(%rax)
 2e4:	00 00                	add    %al,(%rax)
 2e6:	00 00                	add    %al,(%rax)
 2e8:	49 11 00             	adc    %rax,(%r8)
 2eb:	00 00                	add    %al,(%rax)
 2ed:	00 00                	add    %al,(%rax)
 2ef:	00 69 11             	add    %ch,0x11(%rcx)
 2f2:	00 00                	add    %al,(%rax)
 2f4:	00 00                	add    %al,(%rax)
 2f6:	00 00                	add    %al,(%rax)
 2f8:	6e                   	outsb  %ds:(%rsi),(%dx)
 2f9:	11 00                	adc    %eax,(%rax)
 2fb:	00 00                	add    %al,(%rax)
 2fd:	00 00                	add    %al,(%rax)
 2ff:	00 83 11 00 00 00    	add    %al,0x11(%rbx)
 305:	00 00                	add    %al,(%rax)
 307:	00 d1                	add    %dl,%cl
 309:	11 00                	adc    %eax,(%rax)
 30b:	00 00                	add    %al,(%rax)
 30d:	00 00                	add    %al,(%rax)
 30f:	00 fc                	add    %bh,%ah
 311:	11 00                	adc    %eax,(%rax)
 313:	00 00                	add    %al,(%rax)
 315:	00 00                	add    %al,(%rax)
 317:	00 15 12 00 00 00    	add    %dl,0x12(%rip)        # 32f <__abi_tag+0x6b>
 31d:	00 00                	add    %al,(%rax)
 31f:	00 58 12             	add    %bl,0x12(%rax)
 322:	00 00                	add    %al,(%rax)
 324:	00 00                	add    %al,(%rax)
 326:	00 00                	add    %al,(%rax)
 328:	5d                   	pop    %rbp
 329:	12 00                	adc    (%rax),%al
 32b:	00 00                	add    %al,(%rax)
 32d:	00 00                	add    %al,(%rax)
 32f:	00 66 12             	add    %ah,0x12(%rsi)
 332:	00 00                	add    %al,(%rax)
 334:	00 00                	add    %al,(%rax)
 336:	00 00                	add    %al,(%rax)
 338:	6c                   	insb   (%dx),%es:(%rdi)
 339:	12 00                	adc    (%rax),%al
 33b:	00 00                	add    %al,(%rax)
 33d:	00 00                	add    %al,(%rax)
 33f:	00 8e 12 00 00 00    	add    %cl,0x12(%rsi)
 345:	00 00                	add    %al,(%rax)
 347:	00 9d 12 00 00 00    	add    %bl,0x12(%rbp)
 34d:	00 00                	add    %al,(%rax)
 34f:	00 af 12 00 00 00    	add    %ch,0x12(%rdi)
 355:	00 00                	add    %al,(%rax)
 357:	00 b7 12 00 00 00    	add    %dh,0x12(%rdi)
 35d:	00 00                	add    %al,(%rax)
 35f:	00 c8                	add    %cl,%al
 361:	12 00                	adc    (%rax),%al
 363:	00 00                	add    %al,(%rax)
 365:	00 00                	add    %al,(%rax)
 367:	00 d0                	add    %dl,%al
 369:	12 00                	adc    (%rax),%al
 36b:	00 00                	add    %al,(%rax)
 36d:	00 00                	add    %al,(%rax)
 36f:	00 eb                	add    %ch,%bl
 371:	12 00                	adc    (%rax),%al
 373:	00 00                	add    %al,(%rax)
 375:	00 00                	add    %al,(%rax)
 377:	00 f3                	add    %dh,%bl
 379:	12 00                	adc    (%rax),%al
 37b:	00 00                	add    %al,(%rax)
 37d:	00 00                	add    %al,(%rax)
 37f:	00 12                	add    %dl,(%rdx)
 381:	13 00                	adc    (%rax),%eax
 383:	00 00                	add    %al,(%rax)
 385:	00 00                	add    %al,(%rax)
 387:	00 17                	add    %dl,(%rdi)
 389:	13 00                	adc    (%rax),%eax
 38b:	00 00                	add    %al,(%rax)
 38d:	00 00                	add    %al,(%rax)
 38f:	00 37                	add    %dh,(%rdi)
 391:	13 00                	adc    (%rax),%eax
 393:	00 00                	add    %al,(%rax)
 395:	00 00                	add    %al,(%rax)
 397:	00 3f                	add    %bh,(%rdi)
 399:	13 00                	adc    (%rax),%eax
 39b:	00 00                	add    %al,(%rax)
 39d:	00 00                	add    %al,(%rax)
 39f:	00 69 13             	add    %ch,0x13(%rcx)
 3a2:	00 00                	add    %al,(%rax)
 3a4:	00 00                	add    %al,(%rax)
 3a6:	00 00                	add    %al,(%rax)
 3a8:	7a 13                	jp     3bd <__abi_tag+0xf9>
 3aa:	00 00                	add    %al,(%rax)
 3ac:	00 00                	add    %al,(%rax)
 3ae:	00 00                	add    %al,(%rax)
 3b0:	8b 13                	mov    (%rbx),%edx
 3b2:	00 00                	add    %al,(%rax)
 3b4:	00 00                	add    %al,(%rax)
 3b6:	00 00                	add    %al,(%rax)
 3b8:	97                   	xchg   %eax,%edi
 3b9:	13 00                	adc    (%rax),%eax
 3bb:	00 00                	add    %al,(%rax)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 a5 13 00 00 00    	add    %ah,0x13(%rbp)
 3c5:	00 00                	add    %al,(%rax)
 3c7:	00 b7 13 00 00 00    	add    %dh,0x13(%rdi)
 3cd:	00 00                	add    %al,(%rax)
 3cf:	00 c9                	add    %cl,%cl
 3d1:	13 00                	adc    (%rax),%eax
 3d3:	00 00                	add    %al,(%rax)
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 cd                	add    %cl,%ch
 3d9:	13 00                	adc    (%rax),%eax
 3db:	00 00                	add    %al,(%rax)
 3dd:	00 00                	add    %al,(%rax)
 3df:	00 de                	add    %bl,%dh
 3e1:	13 00                	adc    (%rax),%eax
 3e3:	00 00                	add    %al,(%rax)
 3e5:	00 00                	add    %al,(%rax)
 3e7:	00 e6                	add    %ah,%dh
 3e9:	13 00                	adc    (%rax),%eax
 3eb:	00 00                	add    %al,(%rax)
 3ed:	00 00                	add    %al,(%rax)
 3ef:	00 f2                	add    %dh,%dl
 3f1:	13 00                	adc    (%rax),%eax
 3f3:	00 00                	add    %al,(%rax)
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 fb                	add    %bh,%bl
 3f9:	13 00                	adc    (%rax),%eax
 3fb:	00 00                	add    %al,(%rax)
 3fd:	00 00                	add    %al,(%rax)
 3ff:	00 4d 14             	add    %cl,0x14(%rbp)
 402:	00 00                	add    %al,(%rax)
 404:	00 00                	add    %al,(%rax)
 406:	00 00                	add    %al,(%rax)
 408:	52                   	push   %rdx
 409:	14 00                	adc    $0x0,%al
 40b:	00 00                	add    %al,(%rax)
 40d:	00 00                	add    %al,(%rax)
 40f:	00 ee                	add    %ch,%dh
 411:	14 00                	adc    $0x0,%al
 413:	00 00                	add    %al,(%rax)
 415:	00 00                	add    %al,(%rax)
 417:	00 00                	add    %al,(%rax)
 419:	15 00 00 00 00       	adc    $0x0,%eax
 41e:	00 00                	add    %al,(%rax)
 420:	5c                   	pop    %rsp
 421:	15 00 00 00 00       	adc    $0x0,%eax
 426:	00 00                	add    %al,(%rax)
 428:	8a 15 00 00 00 00    	mov    0x0(%rip),%dl        # 42e <__abi_tag+0x16a>
 42e:	00 00                	add    %al,(%rax)
 430:	92                   	xchg   %eax,%edx
 431:	15 00 00 00 00       	adc    $0x0,%eax
 436:	00 00                	add    %al,(%rax)
 438:	97                   	xchg   %eax,%edi
 439:	15 00 00 00 00       	adc    $0x0,%eax
 43e:	00 00                	add    %al,(%rax)
 440:	af                   	scas   %es:(%rdi),%eax
 441:	15 00 00 00 00       	adc    $0x0,%eax
 446:	00 00                	add    %al,(%rax)
 448:	bd 15 00 00 00       	mov    $0x15,%ebp
 44d:	00 00                	add    %al,(%rax)
 44f:	00 c2                	add    %al,%dl
 451:	15 00 00 00 00       	adc    $0x0,%eax
 456:	00 00                	add    %al,(%rax)
 458:	cb                   	lret   
 459:	15 00 00 00 00       	adc    $0x0,%eax
 45e:	00 00                	add    %al,(%rax)
 460:	d9 15 00 00 00 00    	fsts   0x0(%rip)        # 466 <__abi_tag+0x1a2>
 466:	00 00                	add    %al,(%rax)
 468:	5c                   	pop    %rsp
 469:	16                   	(bad)  
 46a:	00 00                	add    %al,(%rax)
 46c:	00 00                	add    %al,(%rax)
 46e:	00 00                	add    %al,(%rax)
 470:	8b 16                	mov    (%rsi),%edx
 472:	00 00                	add    %al,(%rax)
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	9d                   	popfq  
 479:	16                   	(bad)  
	...
 48e:	00 00                	add    %al,(%rax)
 490:	89 0e                	mov    %ecx,(%rsi)
 492:	00 00                	add    %al,(%rax)
 494:	00 00                	add    %al,(%rax)
 496:	00 00                	add    %al,(%rax)
 498:	92                   	xchg   %eax,%edx
 499:	0e                   	(bad)  
 49a:	00 00                	add    %al,(%rax)
 49c:	00 00                	add    %al,(%rax)
 49e:	00 00                	add    %al,(%rax)
 4a0:	9c                   	pushfq 
 4a1:	0e                   	(bad)  
 4a2:	00 00                	add    %al,(%rax)
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	a1 0e 00 00 00 00 00 	movabs 0xc80000000000000e,%eax
 4af:	00 c8 
 4b1:	0e                   	(bad)  
 4b2:	00 00                	add    %al,(%rax)
 4b4:	00 00                	add    %al,(%rax)
 4b6:	00 00                	add    %al,(%rax)
 4b8:	e9 0e 00 00 00       	jmpq   4cb <__abi_tag+0x207>
 4bd:	00 00                	add    %al,(%rax)
 4bf:	00 9a 0f 00 00 00    	add    %bl,0xf(%rdx)
 4c5:	00 00                	add    %al,(%rax)
 4c7:	00 a2 0f 00 00 00    	add    %ah,0xf(%rdx)
 4cd:	00 00                	add    %al,(%rax)
 4cf:	00 5a 10             	add    %bl,0x10(%rdx)
 4d2:	00 00                	add    %al,(%rax)
 4d4:	00 00                	add    %al,(%rax)
 4d6:	00 00                	add    %al,(%rax)
 4d8:	6b 10 00             	imul   $0x0,(%rax),%edx
 4db:	00 00                	add    %al,(%rax)
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 86 10 00 00 00    	add    %al,0x10(%rsi)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 97 10 00 00 00    	add    %dl,0x10(%rdi)
 4ed:	00 00                	add    %al,(%rax)
 4ef:	00 2f                	add    %ch,(%rdi)
 4f1:	11 00                	adc    %eax,(%rax)
 4f3:	00 00                	add    %al,(%rax)
 4f5:	00 00                	add    %al,(%rax)
 4f7:	00 3d 11 00 00 00    	add    %bh,0x11(%rip)        # 50e <__abi_tag+0x24a>
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 49 11             	add    %cl,0x11(%rcx)
 502:	00 00                	add    %al,(%rax)
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	4f 11 00             	rex.WRXB adc %r8,(%r8)
 50b:	00 00                	add    %al,(%rax)
 50d:	00 00                	add    %al,(%rax)
 50f:	00 23                	add    %ah,(%rbx)
 511:	12 00                	adc    (%rax),%al
 513:	00 00                	add    %al,(%rax)
 515:	00 00                	add    %al,(%rax)
 517:	00 30                	add    %dh,(%rax)
 519:	12 00                	adc    (%rax),%al
 51b:	00 00                	add    %al,(%rax)
 51d:	00 00                	add    %al,(%rax)
 51f:	00 4a 12             	add    %cl,0x12(%rdx)
 522:	00 00                	add    %al,(%rax)
 524:	00 00                	add    %al,(%rax)
 526:	00 00                	add    %al,(%rax)
 528:	58                   	pop    %rax
 529:	12 00                	adc    (%rax),%al
 52b:	00 00                	add    %al,(%rax)
 52d:	00 00                	add    %al,(%rax)
 52f:	00 62 12             	add    %ah,0x12(%rdx)
 532:	00 00                	add    %al,(%rax)
 534:	00 00                	add    %al,(%rax)
 536:	00 00                	add    %al,(%rax)
 538:	66 12 00             	data16 adc (%rax),%al
 53b:	00 00                	add    %al,(%rax)
 53d:	00 00                	add    %al,(%rax)
 53f:	00 6c 12 00          	add    %ch,0x0(%rdx,%rdx,1)
 543:	00 00                	add    %al,(%rax)
 545:	00 00                	add    %al,(%rax)
 547:	00 7f 12             	add    %bh,0x12(%rdi)
 54a:	00 00                	add    %al,(%rax)
 54c:	00 00                	add    %al,(%rax)
 54e:	00 00                	add    %al,(%rax)
 550:	17                   	(bad)  
 551:	13 00                	adc    (%rax),%eax
 553:	00 00                	add    %al,(%rax)
 555:	00 00                	add    %al,(%rax)
 557:	00 37                	add    %dh,(%rdi)
 559:	13 00                	adc    (%rax),%eax
 55b:	00 00                	add    %al,(%rax)
 55d:	00 00                	add    %al,(%rax)
 55f:	00 3f                	add    %bh,(%rdi)
 561:	13 00                	adc    (%rax),%eax
 563:	00 00                	add    %al,(%rax)
 565:	00 00                	add    %al,(%rax)
 567:	00 69 13             	add    %ch,0x13(%rcx)
 56a:	00 00                	add    %al,(%rax)
 56c:	00 00                	add    %al,(%rax)
 56e:	00 00                	add    %al,(%rax)
 570:	7a 13                	jp     585 <__abi_tag+0x2c1>
 572:	00 00                	add    %al,(%rax)
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	8b 13                	mov    (%rbx),%edx
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	97                   	xchg   %eax,%edi
 581:	13 00                	adc    (%rax),%eax
 583:	00 00                	add    %al,(%rax)
 585:	00 00                	add    %al,(%rax)
 587:	00 a5 13 00 00 00    	add    %ah,0x13(%rbp)
 58d:	00 00                	add    %al,(%rax)
 58f:	00 b7 13 00 00 00    	add    %dh,0x13(%rdi)
 595:	00 00                	add    %al,(%rax)
 597:	00 c9                	add    %cl,%cl
 599:	13 00                	adc    (%rax),%eax
 59b:	00 00                	add    %al,(%rax)
 59d:	00 00                	add    %al,(%rax)
 59f:	00 cd                	add    %cl,%ch
 5a1:	13 00                	adc    (%rax),%eax
 5a3:	00 00                	add    %al,(%rax)
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 de                	add    %bl,%dh
 5a9:	13 00                	adc    (%rax),%eax
 5ab:	00 00                	add    %al,(%rax)
 5ad:	00 00                	add    %al,(%rax)
 5af:	00 fb                	add    %bh,%bl
 5b1:	13 00                	adc    (%rax),%eax
 5b3:	00 00                	add    %al,(%rax)
 5b5:	00 00                	add    %al,(%rax)
 5b7:	00 09                	add    %cl,(%rcx)
 5b9:	14 00                	adc    $0x0,%al
 5bb:	00 00                	add    %al,(%rax)
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 1b                	add    %bl,(%rbx)
 5c1:	14 00                	adc    $0x0,%al
 5c3:	00 00                	add    %al,(%rax)
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 25 14 00 00 00    	add    %ah,0x14(%rip)        # 5e1 <__abi_tag+0x31d>
 5cd:	00 00                	add    %al,(%rax)
 5cf:	00 2a                	add    %ch,(%rdx)
 5d1:	14 00                	adc    $0x0,%al
 5d3:	00 00                	add    %al,(%rax)
 5d5:	00 00                	add    %al,(%rax)
 5d7:	00 3f                	add    %bh,(%rdi)
 5d9:	14 00                	adc    $0x0,%al
 5db:	00 00                	add    %al,(%rax)
 5dd:	00 00                	add    %al,(%rax)
 5df:	00 8a 15 00 00 00    	add    %cl,0x15(%rdx)
 5e5:	00 00                	add    %al,(%rax)
 5e7:	00 92 15 00 00 00    	add    %dl,0x15(%rdx)
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 5c 16 00          	add    %bl,0x0(%rsi,%rdx,1)
 5f3:	00 00                	add    %al,(%rax)
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 61 16             	add    %ah,0x16(%rcx)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	00 00                	add    %al,(%rax)
 5fe:	00 00                	add    %al,(%rax)
 600:	9d                   	popfq  
 601:	16                   	(bad)  
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 00                	add    %al,(%rax)
 608:	d6                   	(bad)  
 609:	16                   	(bad)  
 60a:	00 00                	add    %al,(%rax)
 60c:	00 00                	add    %al,(%rax)
 60e:	00 00                	add    %al,(%rax)
 610:	db 16                	fistl  (%rsi)
 612:	00 00                	add    %al,(%rax)
 614:	00 00                	add    %al,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	f6 16                	notb   (%rsi)
	...
 62e:	00 00                	add    %al,(%rax)
 630:	89 0e                	mov    %ecx,(%rsi)
 632:	00 00                	add    %al,(%rax)
 634:	00 00                	add    %al,(%rax)
 636:	00 00                	add    %al,(%rax)
 638:	92                   	xchg   %eax,%edx
 639:	0e                   	(bad)  
 63a:	00 00                	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	9c                   	pushfq 
 641:	0e                   	(bad)  
 642:	00 00                	add    %al,(%rax)
 644:	00 00                	add    %al,(%rax)
 646:	00 00                	add    %al,(%rax)
 648:	a1 0e 00 00 00 00 00 	movabs 0xc80000000000000e,%eax
 64f:	00 c8 
 651:	0e                   	(bad)  
 652:	00 00                	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	e9 0e 00 00 00       	jmpq   66b <__abi_tag+0x3a7>
 65d:	00 00                	add    %al,(%rax)
 65f:	00 9a 0f 00 00 00    	add    %bl,0xf(%rdx)
 665:	00 00                	add    %al,(%rax)
 667:	00 a2 0f 00 00 00    	add    %ah,0xf(%rdx)
 66d:	00 00                	add    %al,(%rax)
 66f:	00 5a 10             	add    %bl,0x10(%rdx)
 672:	00 00                	add    %al,(%rax)
 674:	00 00                	add    %al,(%rax)
 676:	00 00                	add    %al,(%rax)
 678:	6b 10 00             	imul   $0x0,(%rax),%edx
 67b:	00 00                	add    %al,(%rax)
 67d:	00 00                	add    %al,(%rax)
 67f:	00 86 10 00 00 00    	add    %al,0x10(%rsi)
 685:	00 00                	add    %al,(%rax)
 687:	00 97 10 00 00 00    	add    %dl,0x10(%rdi)
 68d:	00 00                	add    %al,(%rax)
 68f:	00 2f                	add    %ch,(%rdi)
 691:	11 00                	adc    %eax,(%rax)
 693:	00 00                	add    %al,(%rax)
 695:	00 00                	add    %al,(%rax)
 697:	00 3d 11 00 00 00    	add    %bh,0x11(%rip)        # 6ae <__abi_tag+0x3ea>
 69d:	00 00                	add    %al,(%rax)
 69f:	00 49 11             	add    %cl,0x11(%rcx)
 6a2:	00 00                	add    %al,(%rax)
 6a4:	00 00                	add    %al,(%rax)
 6a6:	00 00                	add    %al,(%rax)
 6a8:	4f 11 00             	rex.WRXB adc %r8,(%r8)
 6ab:	00 00                	add    %al,(%rax)
 6ad:	00 00                	add    %al,(%rax)
 6af:	00 23                	add    %ah,(%rbx)
 6b1:	12 00                	adc    (%rax),%al
 6b3:	00 00                	add    %al,(%rax)
 6b5:	00 00                	add    %al,(%rax)
 6b7:	00 30                	add    %dh,(%rax)
 6b9:	12 00                	adc    (%rax),%al
 6bb:	00 00                	add    %al,(%rax)
 6bd:	00 00                	add    %al,(%rax)
 6bf:	00 4a 12             	add    %cl,0x12(%rdx)
 6c2:	00 00                	add    %al,(%rax)
 6c4:	00 00                	add    %al,(%rax)
 6c6:	00 00                	add    %al,(%rax)
 6c8:	58                   	pop    %rax
 6c9:	12 00                	adc    (%rax),%al
 6cb:	00 00                	add    %al,(%rax)
 6cd:	00 00                	add    %al,(%rax)
 6cf:	00 62 12             	add    %ah,0x12(%rdx)
 6d2:	00 00                	add    %al,(%rax)
 6d4:	00 00                	add    %al,(%rax)
 6d6:	00 00                	add    %al,(%rax)
 6d8:	66 12 00             	data16 adc (%rax),%al
 6db:	00 00                	add    %al,(%rax)
 6dd:	00 00                	add    %al,(%rax)
 6df:	00 6c 12 00          	add    %ch,0x0(%rdx,%rdx,1)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	00 00                	add    %al,(%rax)
 6e7:	00 7f 12             	add    %bh,0x12(%rdi)
 6ea:	00 00                	add    %al,(%rax)
 6ec:	00 00                	add    %al,(%rax)
 6ee:	00 00                	add    %al,(%rax)
 6f0:	17                   	(bad)  
 6f1:	13 00                	adc    (%rax),%eax
 6f3:	00 00                	add    %al,(%rax)
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 37                	add    %dh,(%rdi)
 6f9:	13 00                	adc    (%rax),%eax
 6fb:	00 00                	add    %al,(%rax)
 6fd:	00 00                	add    %al,(%rax)
 6ff:	00 3f                	add    %bh,(%rdi)
 701:	13 00                	adc    (%rax),%eax
 703:	00 00                	add    %al,(%rax)
 705:	00 00                	add    %al,(%rax)
 707:	00 69 13             	add    %ch,0x13(%rcx)
 70a:	00 00                	add    %al,(%rax)
 70c:	00 00                	add    %al,(%rax)
 70e:	00 00                	add    %al,(%rax)
 710:	7a 13                	jp     725 <__abi_tag+0x461>
 712:	00 00                	add    %al,(%rax)
 714:	00 00                	add    %al,(%rax)
 716:	00 00                	add    %al,(%rax)
 718:	8b 13                	mov    (%rbx),%edx
 71a:	00 00                	add    %al,(%rax)
 71c:	00 00                	add    %al,(%rax)
 71e:	00 00                	add    %al,(%rax)
 720:	97                   	xchg   %eax,%edi
 721:	13 00                	adc    (%rax),%eax
 723:	00 00                	add    %al,(%rax)
 725:	00 00                	add    %al,(%rax)
 727:	00 a5 13 00 00 00    	add    %ah,0x13(%rbp)
 72d:	00 00                	add    %al,(%rax)
 72f:	00 b7 13 00 00 00    	add    %dh,0x13(%rdi)
 735:	00 00                	add    %al,(%rax)
 737:	00 c9                	add    %cl,%cl
 739:	13 00                	adc    (%rax),%eax
 73b:	00 00                	add    %al,(%rax)
 73d:	00 00                	add    %al,(%rax)
 73f:	00 cd                	add    %cl,%ch
 741:	13 00                	adc    (%rax),%eax
 743:	00 00                	add    %al,(%rax)
 745:	00 00                	add    %al,(%rax)
 747:	00 de                	add    %bl,%dh
 749:	13 00                	adc    (%rax),%eax
 74b:	00 00                	add    %al,(%rax)
 74d:	00 00                	add    %al,(%rax)
 74f:	00 fb                	add    %bh,%bl
 751:	13 00                	adc    (%rax),%eax
 753:	00 00                	add    %al,(%rax)
 755:	00 00                	add    %al,(%rax)
 757:	00 09                	add    %cl,(%rcx)
 759:	14 00                	adc    $0x0,%al
 75b:	00 00                	add    %al,(%rax)
 75d:	00 00                	add    %al,(%rax)
 75f:	00 1b                	add    %bl,(%rbx)
 761:	14 00                	adc    $0x0,%al
 763:	00 00                	add    %al,(%rax)
 765:	00 00                	add    %al,(%rax)
 767:	00 25 14 00 00 00    	add    %ah,0x14(%rip)        # 781 <__abi_tag+0x4bd>
 76d:	00 00                	add    %al,(%rax)
 76f:	00 2a                	add    %ch,(%rdx)
 771:	14 00                	adc    $0x0,%al
 773:	00 00                	add    %al,(%rax)
 775:	00 00                	add    %al,(%rax)
 777:	00 3f                	add    %bh,(%rdi)
 779:	14 00                	adc    $0x0,%al
 77b:	00 00                	add    %al,(%rax)
 77d:	00 00                	add    %al,(%rax)
 77f:	00 8a 15 00 00 00    	add    %cl,0x15(%rdx)
 785:	00 00                	add    %al,(%rax)
 787:	00 92 15 00 00 00    	add    %dl,0x15(%rdx)
 78d:	00 00                	add    %al,(%rax)
 78f:	00 5c 16 00          	add    %bl,0x0(%rsi,%rdx,1)
 793:	00 00                	add    %al,(%rax)
 795:	00 00                	add    %al,(%rax)
 797:	00 61 16             	add    %ah,0x16(%rcx)
 79a:	00 00                	add    %al,(%rax)
 79c:	00 00                	add    %al,(%rax)
 79e:	00 00                	add    %al,(%rax)
 7a0:	b5 16                	mov    $0x16,%ch
 7a2:	00 00                	add    %al,(%rax)
 7a4:	00 00                	add    %al,(%rax)
 7a6:	00 00                	add    %al,(%rax)
 7a8:	ba 16 00 00 00       	mov    $0x16,%edx
	...
 7bd:	00 00                	add    %al,(%rax)
 7bf:	00 9d 16 00 00 00    	add    %bl,0x16(%rbp)
 7c5:	00 00                	add    %al,(%rax)
 7c7:	00 b5 16 00 00 00    	add    %dh,0x16(%rbp)
 7cd:	00 00                	add    %al,(%rax)
 7cf:	00 ba 16 00 00 00    	add    %bh,0x16(%rdx)
 7d5:	00 00                	add    %al,(%rax)
 7d7:	00 d6                	add    %dl,%dh
 7d9:	16                   	(bad)  
	...
 7ee:	00 00                	add    %al,(%rax)
 7f0:	9d                   	popfq  
 7f1:	16                   	(bad)  
 7f2:	00 00                	add    %al,(%rax)
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 00                	add    %al,(%rax)
 7f8:	b5 16                	mov    $0x16,%ch
 7fa:	00 00                	add    %al,(%rax)
 7fc:	00 00                	add    %al,(%rax)
 7fe:	00 00                	add    %al,(%rax)
 800:	ba 16 00 00 00       	mov    $0x16,%edx
 805:	00 00                	add    %al,(%rax)
 807:	00 d6                	add    %dl,%dh
 809:	16                   	(bad)  
	...
 81e:	00 00                	add    %al,(%rax)
 820:	92                   	xchg   %eax,%edx
 821:	0e                   	(bad)  
 822:	00 00                	add    %al,(%rax)
 824:	00 00                	add    %al,(%rax)
 826:	00 00                	add    %al,(%rax)
 828:	9c                   	pushfq 
 829:	0e                   	(bad)  
 82a:	00 00                	add    %al,(%rax)
 82c:	00 00                	add    %al,(%rax)
 82e:	00 00                	add    %al,(%rax)
 830:	a1 0e 00 00 00 00 00 	movabs 0xa60000000000000e,%eax
 837:	00 a6 
 839:	0e                   	(bad)  
 83a:	00 00                	add    %al,(%rax)
 83c:	00 00                	add    %al,(%rax)
 83e:	00 00                	add    %al,(%rax)
 840:	b3 0e                	mov    $0xe,%bl
 842:	00 00                	add    %al,(%rax)
 844:	00 00                	add    %al,(%rax)
 846:	00 00                	add    %al,(%rax)
 848:	bb 0e 00 00 00       	mov    $0xe,%ebx
 84d:	00 00                	add    %al,(%rax)
 84f:	00 e9                	add    %ch,%cl
 851:	0e                   	(bad)  
 852:	00 00                	add    %al,(%rax)
 854:	00 00                	add    %al,(%rax)
 856:	00 00                	add    %al,(%rax)
 858:	0c 0f                	or     $0xf,%al
 85a:	00 00                	add    %al,(%rax)
 85c:	00 00                	add    %al,(%rax)
 85e:	00 00                	add    %al,(%rax)
 860:	56                   	push   %rsi
 861:	0f 00 00             	sldt   (%rax)
 864:	00 00                	add    %al,(%rax)
 866:	00 00                	add    %al,(%rax)
 868:	5f                   	pop    %rdi
 869:	0f 00 00             	sldt   (%rax)
 86c:	00 00                	add    %al,(%rax)
 86e:	00 00                	add    %al,(%rax)
 870:	67 0f 00 00          	sldt   (%eax)
 874:	00 00                	add    %al,(%rax)
 876:	00 00                	add    %al,(%rax)
 878:	74 0f                	je     889 <__abi_tag+0x5c5>
 87a:	00 00                	add    %al,(%rax)
 87c:	00 00                	add    %al,(%rax)
 87e:	00 00                	add    %al,(%rax)
 880:	b3 0f                	mov    $0xf,%bl
 882:	00 00                	add    %al,(%rax)
 884:	00 00                	add    %al,(%rax)
 886:	00 00                	add    %al,(%rax)
 888:	bb 0f 00 00 00       	mov    $0xf,%ebx
 88d:	00 00                	add    %al,(%rax)
 88f:	00 c9                	add    %cl,%cl
 891:	0f 00 00             	sldt   (%rax)
 894:	00 00                	add    %al,(%rax)
 896:	00 00                	add    %al,(%rax)
 898:	e3 0f                	jrcxz  8a9 <__abi_tag+0x5e5>
 89a:	00 00                	add    %al,(%rax)
 89c:	00 00                	add    %al,(%rax)
 89e:	00 00                	add    %al,(%rax)
 8a0:	03 10                	add    (%rax),%edx
 8a2:	00 00                	add    %al,(%rax)
 8a4:	00 00                	add    %al,(%rax)
 8a6:	00 00                	add    %al,(%rax)
 8a8:	0b 10                	or     (%rax),%edx
 8aa:	00 00                	add    %al,(%rax)
 8ac:	00 00                	add    %al,(%rax)
 8ae:	00 00                	add    %al,(%rax)
 8b0:	18 10                	sbb    %dl,(%rax)
 8b2:	00 00                	add    %al,(%rax)
 8b4:	00 00                	add    %al,(%rax)
 8b6:	00 00                	add    %al,(%rax)
 8b8:	38 10                	cmp    %dl,(%rax)
 8ba:	00 00                	add    %al,(%rax)
 8bc:	00 00                	add    %al,(%rax)
 8be:	00 00                	add    %al,(%rax)
 8c0:	45 10 00             	adc    %r8b,(%r8)
 8c3:	00 00                	add    %al,(%rax)
 8c5:	00 00                	add    %al,(%rax)
 8c7:	00 4d 10             	add    %cl,0x10(%rbp)
 8ca:	00 00                	add    %al,(%rax)
 8cc:	00 00                	add    %al,(%rax)
 8ce:	00 00                	add    %al,(%rax)
 8d0:	6b 10 00             	imul   $0x0,(%rax),%edx
 8d3:	00 00                	add    %al,(%rax)
 8d5:	00 00                	add    %al,(%rax)
 8d7:	00 79 10             	add    %bh,0x10(%rcx)
 8da:	00 00                	add    %al,(%rax)
 8dc:	00 00                	add    %al,(%rax)
 8de:	00 00                	add    %al,(%rax)
 8e0:	9c                   	pushfq 
 8e1:	10 00                	adc    %al,(%rax)
 8e3:	00 00                	add    %al,(%rax)
 8e5:	00 00                	add    %al,(%rax)
 8e7:	00 a4 10 00 00 00 00 	add    %ah,0x0(%rax,%rdx,1)
 8ee:	00 00                	add    %al,(%rax)
 8f0:	a9 10 00 00 00       	test   $0x10,%eax
 8f5:	00 00                	add    %al,(%rax)
 8f7:	00 f0                	add    %dh,%al
 8f9:	10 00                	adc    %al,(%rax)
 8fb:	00 00                	add    %al,(%rax)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	00 5e 11             	add    %bl,0x11(%rsi)
 902:	00 00                	add    %al,(%rax)
 904:	00 00                	add    %al,(%rax)
 906:	00 00                	add    %al,(%rax)
 908:	69 11 00 00 00 00    	imul   $0x0,(%rcx),%edx
 90e:	00 00                	add    %al,(%rax)
 910:	5d                   	pop    %rbp
 911:	12 00                	adc    (%rax),%al
 913:	00 00                	add    %al,(%rax)
 915:	00 00                	add    %al,(%rax)
 917:	00 62 12             	add    %ah,0x12(%rdx)
 91a:	00 00                	add    %al,(%rax)
 91c:	00 00                	add    %al,(%rax)
 91e:	00 00                	add    %al,(%rax)
 920:	7f 12                	jg     934 <__abi_tag+0x670>
 922:	00 00                	add    %al,(%rax)
 924:	00 00                	add    %al,(%rax)
 926:	00 00                	add    %al,(%rax)
 928:	8e 12                	mov    (%rdx),%ss
 92a:	00 00                	add    %al,(%rax)
 92c:	00 00                	add    %al,(%rax)
 92e:	00 00                	add    %al,(%rax)
 930:	b7 12                	mov    $0x12,%bh
 932:	00 00                	add    %al,(%rax)
 934:	00 00                	add    %al,(%rax)
 936:	00 00                	add    %al,(%rax)
 938:	c8 12 00 00          	enterq $0x12,$0x0
 93c:	00 00                	add    %al,(%rax)
 93e:	00 00                	add    %al,(%rax)
 940:	d0 12                	rclb   (%rdx)
 942:	00 00                	add    %al,(%rax)
 944:	00 00                	add    %al,(%rax)
 946:	00 00                	add    %al,(%rax)
 948:	e1 12                	loope  95c <__abi_tag+0x698>
 94a:	00 00                	add    %al,(%rax)
 94c:	00 00                	add    %al,(%rax)
 94e:	00 00                	add    %al,(%rax)
 950:	f3 12 00             	repz adc (%rax),%al
 953:	00 00                	add    %al,(%rax)
 955:	00 00                	add    %al,(%rax)
 957:	00 01                	add    %al,(%rcx)
 959:	13 00                	adc    (%rax),%eax
 95b:	00 00                	add    %al,(%rax)
 95d:	00 00                	add    %al,(%rax)
 95f:	00 e6                	add    %ah,%dh
 961:	13 00                	adc    (%rax),%eax
 963:	00 00                	add    %al,(%rax)
 965:	00 00                	add    %al,(%rax)
 967:	00 ee                	add    %ch,%dh
 969:	13 00                	adc    (%rax),%eax
 96b:	00 00                	add    %al,(%rax)
 96d:	00 00                	add    %al,(%rax)
 96f:	00 3f                	add    %bh,(%rdi)
 971:	14 00                	adc    $0x0,%al
 973:	00 00                	add    %al,(%rax)
 975:	00 00                	add    %al,(%rax)
 977:	00 4d 14             	add    %cl,0x14(%rbp)
 97a:	00 00                	add    %al,(%rax)
 97c:	00 00                	add    %al,(%rax)
 97e:	00 00                	add    %al,(%rax)
 980:	52                   	push   %rdx
 981:	14 00                	adc    $0x0,%al
 983:	00 00                	add    %al,(%rax)
 985:	00 00                	add    %al,(%rax)
 987:	00 ee                	add    %ch,%dh
 989:	14 00                	adc    $0x0,%al
 98b:	00 00                	add    %al,(%rax)
 98d:	00 00                	add    %al,(%rax)
 98f:	00 00                	add    %al,(%rax)
 991:	15 00 00 00 00       	adc    $0x0,%eax
 996:	00 00                	add    %al,(%rax)
 998:	5c                   	pop    %rsp
 999:	15 00 00 00 00       	adc    $0x0,%eax
 99e:	00 00                	add    %al,(%rax)
 9a0:	97                   	xchg   %eax,%edi
 9a1:	15 00 00 00 00       	adc    $0x0,%eax
 9a6:	00 00                	add    %al,(%rax)
 9a8:	af                   	scas   %es:(%rdi),%eax
 9a9:	15 00 00 00 00       	adc    $0x0,%eax
 9ae:	00 00                	add    %al,(%rax)
 9b0:	bd 15 00 00 00       	mov    $0x15,%ebp
 9b5:	00 00                	add    %al,(%rax)
 9b7:	00 c2                	add    %al,%dl
 9b9:	15 00 00 00 00       	adc    $0x0,%eax
 9be:	00 00                	add    %al,(%rax)
 9c0:	cb                   	lret   
 9c1:	15 00 00 00 00       	adc    $0x0,%eax
 9c6:	00 00                	add    %al,(%rax)
 9c8:	d9 15 00 00 00 00    	fsts   0x0(%rip)        # 9ce <__abi_tag+0x70a>
 9ce:	00 00                	add    %al,(%rax)
 9d0:	6a 16                	pushq  $0x16
 9d2:	00 00                	add    %al,(%rax)
 9d4:	00 00                	add    %al,(%rax)
 9d6:	00 00                	add    %al,(%rax)
 9d8:	8b 16                	mov    (%rsi),%edx
	...
 9ee:	00 00                	add    %al,(%rax)
 9f0:	bb 0e 00 00 00       	mov    $0xe,%ebx
 9f5:	00 00                	add    %al,(%rax)
 9f7:	00 c0                	add    %al,%al
 9f9:	0e                   	(bad)  
 9fa:	00 00                	add    %al,(%rax)
 9fc:	00 00                	add    %al,(%rax)
 9fe:	00 00                	add    %al,(%rax)
 a00:	22 0f                	and    (%rdi),%cl
 a02:	00 00                	add    %al,(%rax)
 a04:	00 00                	add    %al,(%rax)
 a06:	00 00                	add    %al,(%rax)
 a08:	27                   	(bad)  
 a09:	0f 00 00             	sldt   (%rax)
 a0c:	00 00                	add    %al,(%rax)
 a0e:	00 00                	add    %al,(%rax)
 a10:	39 0f                	cmp    %ecx,(%rdi)
 a12:	00 00                	add    %al,(%rax)
 a14:	00 00                	add    %al,(%rax)
 a16:	00 00                	add    %al,(%rax)
 a18:	3d 0f 00 00 00       	cmp    $0xf,%eax
 a1d:	00 00                	add    %al,(%rax)
 a1f:	00 85 0f 00 00 00    	add    %al,0xf(%rbp)
 a25:	00 00                	add    %al,(%rax)
 a27:	00 92 0f 00 00 00    	add    %dl,0xf(%rdx)
 a2d:	00 00                	add    %al,(%rax)
 a2f:	00 0b                	add    %cl,(%rbx)
 a31:	10 00                	adc    %al,(%rax)
 a33:	00 00                	add    %al,(%rax)
 a35:	00 00                	add    %al,(%rax)
 a37:	00 10                	add    %dl,(%rax)
 a39:	10 00                	adc    %al,(%rax)
 a3b:	00 00                	add    %al,(%rax)
 a3d:	00 00                	add    %al,(%rax)
 a3f:	00 38                	add    %bh,(%rax)
 a41:	10 00                	adc    %al,(%rax)
 a43:	00 00                	add    %al,(%rax)
 a45:	00 00                	add    %al,(%rax)
 a47:	00 3d 10 00 00 00    	add    %bh,0x10(%rip)        # a5d <__abi_tag+0x799>
 a4d:	00 00                	add    %al,(%rax)
 a4f:	00 4d 10             	add    %cl,0x10(%rbp)
 a52:	00 00                	add    %al,(%rax)
 a54:	00 00                	add    %al,(%rax)
 a56:	00 00                	add    %al,(%rax)
 a58:	52                   	push   %rdx
 a59:	10 00                	adc    %al,(%rax)
 a5b:	00 00                	add    %al,(%rax)
 a5d:	00 00                	add    %al,(%rax)
 a5f:	00 79 10             	add    %bh,0x10(%rcx)
 a62:	00 00                	add    %al,(%rax)
 a64:	00 00                	add    %al,(%rax)
 a66:	00 00                	add    %al,(%rax)
 a68:	7e 10                	jle    a7a <__abi_tag+0x7b6>
 a6a:	00 00                	add    %al,(%rax)
 a6c:	00 00                	add    %al,(%rax)
 a6e:	00 00                	add    %al,(%rax)
 a70:	97                   	xchg   %eax,%edi
 a71:	10 00                	adc    %al,(%rax)
 a73:	00 00                	add    %al,(%rax)
 a75:	00 00                	add    %al,(%rax)
 a77:	00 9c 10 00 00 00 00 	add    %bl,0x0(%rax,%rdx,1)
 a7e:	00 00                	add    %al,(%rax)
 a80:	f0 10 00             	lock adc %al,(%rax)
 a83:	00 00                	add    %al,(%rax)
 a85:	00 00                	add    %al,(%rax)
 a87:	00 f4                	add    %dh,%ah
 a89:	10 00                	adc    %al,(%rax)
 a8b:	00 00                	add    %al,(%rax)
 a8d:	00 00                	add    %al,(%rax)
 a8f:	00 03                	add    %al,(%rbx)
 a91:	11 00                	adc    %eax,(%rax)
 a93:	00 00                	add    %al,(%rax)
 a95:	00 00                	add    %al,(%rax)
 a97:	00 07                	add    %al,(%rdi)
 a99:	11 00                	adc    %eax,(%rax)
 a9b:	00 00                	add    %al,(%rax)
 a9d:	00 00                	add    %al,(%rax)
 a9f:	00 25 11 00 00 00    	add    %ah,0x11(%rip)        # ab6 <__abi_tag+0x7f2>
 aa5:	00 00                	add    %al,(%rax)
 aa7:	00 2a                	add    %ch,(%rdx)
 aa9:	11 00                	adc    %eax,(%rax)
 aab:	00 00                	add    %al,(%rax)
 aad:	00 00                	add    %al,(%rax)
 aaf:	00 3d 11 00 00 00    	add    %bh,0x11(%rip)        # ac6 <__abi_tag+0x802>
 ab5:	00 00                	add    %al,(%rax)
 ab7:	00 43 11             	add    %al,0x11(%rbx)
 aba:	00 00                	add    %al,(%rax)
 abc:	00 00                	add    %al,(%rax)
 abe:	00 00                	add    %al,(%rax)
 ac0:	4f 11 00             	rex.WRXB adc %r8,(%r8)
 ac3:	00 00                	add    %al,(%rax)
 ac5:	00 00                	add    %al,(%rax)
 ac7:	00 5e 11             	add    %bl,0x11(%rsi)
 aca:	00 00                	add    %al,(%rax)
 acc:	00 00                	add    %al,(%rax)
 ace:	00 00                	add    %al,(%rax)
 ad0:	6e                   	outsb  %ds:(%rsi),(%dx)
 ad1:	11 00                	adc    %eax,(%rax)
 ad3:	00 00                	add    %al,(%rax)
 ad5:	00 00                	add    %al,(%rax)
 ad7:	00 83 11 00 00 00    	add    %al,0x11(%rbx)
 add:	00 00                	add    %al,(%rax)
 adf:	00 d1                	add    %dl,%cl
 ae1:	11 00                	adc    %eax,(%rax)
 ae3:	00 00                	add    %al,(%rax)
 ae5:	00 00                	add    %al,(%rax)
 ae7:	00 fc                	add    %bh,%ah
 ae9:	11 00                	adc    %eax,(%rax)
 aeb:	00 00                	add    %al,(%rax)
 aed:	00 00                	add    %al,(%rax)
 aef:	00 15 12 00 00 00    	add    %dl,0x12(%rip)        # b07 <__abi_tag+0x843>
 af5:	00 00                	add    %al,(%rax)
 af7:	00 23                	add    %ah,(%rbx)
 af9:	12 00                	adc    (%rax),%al
 afb:	00 00                	add    %al,(%rax)
 afd:	00 00                	add    %al,(%rax)
 aff:	00 30                	add    %dh,(%rax)
 b01:	12 00                	adc    (%rax),%al
 b03:	00 00                	add    %al,(%rax)
 b05:	00 00                	add    %al,(%rax)
 b07:	00 4a 12             	add    %cl,0x12(%rdx)
 b0a:	00 00                	add    %al,(%rax)
 b0c:	00 00                	add    %al,(%rax)
 b0e:	00 00                	add    %al,(%rax)
 b10:	9d                   	popfq  
 b11:	12 00                	adc    (%rax),%al
 b13:	00 00                	add    %al,(%rax)
 b15:	00 00                	add    %al,(%rax)
 b17:	00 af 12 00 00 00    	add    %ch,0x12(%rdi)
 b1d:	00 00                	add    %al,(%rax)
 b1f:	00 e1                	add    %ah,%cl
 b21:	12 00                	adc    (%rax),%al
 b23:	00 00                	add    %al,(%rax)
 b25:	00 00                	add    %al,(%rax)
 b27:	00 eb                	add    %ch,%bl
 b29:	12 00                	adc    (%rax),%al
 b2b:	00 00                	add    %al,(%rax)
 b2d:	00 00                	add    %al,(%rax)
 b2f:	00 01                	add    %al,(%rcx)
 b31:	13 00                	adc    (%rax),%eax
 b33:	00 00                	add    %al,(%rax)
 b35:	00 00                	add    %al,(%rax)
 b37:	00 12                	add    %dl,(%rdx)
 b39:	13 00                	adc    (%rax),%eax
 b3b:	00 00                	add    %al,(%rax)
 b3d:	00 00                	add    %al,(%rax)
 b3f:	00 ee                	add    %ch,%dh
 b41:	13 00                	adc    (%rax),%eax
 b43:	00 00                	add    %al,(%rax)
 b45:	00 00                	add    %al,(%rax)
 b47:	00 f2                	add    %dh,%dl
 b49:	13 00                	adc    (%rax),%eax
 b4b:	00 00                	add    %al,(%rax)
 b4d:	00 00                	add    %al,(%rax)
 b4f:	00 09                	add    %cl,(%rcx)
 b51:	14 00                	adc    $0x0,%al
 b53:	00 00                	add    %al,(%rax)
 b55:	00 00                	add    %al,(%rax)
 b57:	00 1b                	add    %bl,(%rbx)
 b59:	14 00                	adc    $0x0,%al
 b5b:	00 00                	add    %al,(%rax)
 b5d:	00 00                	add    %al,(%rax)
 b5f:	00 25 14 00 00 00    	add    %ah,0x14(%rip)        # b79 <__abi_tag+0x8b5>
 b65:	00 00                	add    %al,(%rax)
 b67:	00 2a                	add    %ch,(%rdx)
 b69:	14 00                	adc    $0x0,%al
 b6b:	00 00                	add    %al,(%rax)
 b6d:	00 00                	add    %al,(%rax)
 b6f:	00 61 16             	add    %ah,0x16(%rcx)
 b72:	00 00                	add    %al,(%rax)
 b74:	00 00                	add    %al,(%rax)
 b76:	00 00                	add    %al,(%rax)
 b78:	6a 16                	pushq  $0x16
 b7a:	00 00                	add    %al,(%rax)
 b7c:	00 00                	add    %al,(%rax)
 b7e:	00 00                	add    %al,(%rax)
 b80:	d6                   	(bad)  
 b81:	16                   	(bad)  
 b82:	00 00                	add    %al,(%rax)
 b84:	00 00                	add    %al,(%rax)
 b86:	00 00                	add    %al,(%rax)
 b88:	db 16                	fistl  (%rsi)
 b8a:	00 00                	add    %al,(%rax)
 b8c:	00 00                	add    %al,(%rax)
 b8e:	00 00                	add    %al,(%rax)
 b90:	f6 16                	notb   (%rsi)
 b92:	00 00                	add    %al,(%rax)
 b94:	00 00                	add    %al,(%rax)
 b96:	00 00                	add    %al,(%rax)
 b98:	3a 17                	cmp    (%rdi),%dl
	...
 bae:	00 00                	add    %al,(%rax)
 bb0:	bb 0e 00 00 00       	mov    $0xe,%ebx
 bb5:	00 00                	add    %al,(%rax)
 bb7:	00 c0                	add    %al,%al
 bb9:	0e                   	(bad)  
 bba:	00 00                	add    %al,(%rax)
 bbc:	00 00                	add    %al,(%rax)
 bbe:	00 00                	add    %al,(%rax)
 bc0:	22 0f                	and    (%rdi),%cl
 bc2:	00 00                	add    %al,(%rax)
 bc4:	00 00                	add    %al,(%rax)
 bc6:	00 00                	add    %al,(%rax)
 bc8:	27                   	(bad)  
 bc9:	0f 00 00             	sldt   (%rax)
 bcc:	00 00                	add    %al,(%rax)
 bce:	00 00                	add    %al,(%rax)
 bd0:	39 0f                	cmp    %ecx,(%rdi)
 bd2:	00 00                	add    %al,(%rax)
 bd4:	00 00                	add    %al,(%rax)
 bd6:	00 00                	add    %al,(%rax)
 bd8:	3d 0f 00 00 00       	cmp    $0xf,%eax
 bdd:	00 00                	add    %al,(%rax)
 bdf:	00 85 0f 00 00 00    	add    %al,0xf(%rbp)
 be5:	00 00                	add    %al,(%rax)
 be7:	00 92 0f 00 00 00    	add    %dl,0xf(%rdx)
 bed:	00 00                	add    %al,(%rax)
 bef:	00 0b                	add    %cl,(%rbx)
 bf1:	10 00                	adc    %al,(%rax)
 bf3:	00 00                	add    %al,(%rax)
 bf5:	00 00                	add    %al,(%rax)
 bf7:	00 10                	add    %dl,(%rax)
 bf9:	10 00                	adc    %al,(%rax)
 bfb:	00 00                	add    %al,(%rax)
 bfd:	00 00                	add    %al,(%rax)
 bff:	00 38                	add    %bh,(%rax)
 c01:	10 00                	adc    %al,(%rax)
 c03:	00 00                	add    %al,(%rax)
 c05:	00 00                	add    %al,(%rax)
 c07:	00 3d 10 00 00 00    	add    %bh,0x10(%rip)        # c1d <__abi_tag+0x959>
 c0d:	00 00                	add    %al,(%rax)
 c0f:	00 4d 10             	add    %cl,0x10(%rbp)
 c12:	00 00                	add    %al,(%rax)
 c14:	00 00                	add    %al,(%rax)
 c16:	00 00                	add    %al,(%rax)
 c18:	52                   	push   %rdx
 c19:	10 00                	adc    %al,(%rax)
 c1b:	00 00                	add    %al,(%rax)
 c1d:	00 00                	add    %al,(%rax)
 c1f:	00 79 10             	add    %bh,0x10(%rcx)
 c22:	00 00                	add    %al,(%rax)
 c24:	00 00                	add    %al,(%rax)
 c26:	00 00                	add    %al,(%rax)
 c28:	7e 10                	jle    c3a <__abi_tag+0x976>
 c2a:	00 00                	add    %al,(%rax)
 c2c:	00 00                	add    %al,(%rax)
 c2e:	00 00                	add    %al,(%rax)
 c30:	97                   	xchg   %eax,%edi
 c31:	10 00                	adc    %al,(%rax)
 c33:	00 00                	add    %al,(%rax)
 c35:	00 00                	add    %al,(%rax)
 c37:	00 9c 10 00 00 00 00 	add    %bl,0x0(%rax,%rdx,1)
 c3e:	00 00                	add    %al,(%rax)
 c40:	f0 10 00             	lock adc %al,(%rax)
 c43:	00 00                	add    %al,(%rax)
 c45:	00 00                	add    %al,(%rax)
 c47:	00 f4                	add    %dh,%ah
 c49:	10 00                	adc    %al,(%rax)
 c4b:	00 00                	add    %al,(%rax)
 c4d:	00 00                	add    %al,(%rax)
 c4f:	00 03                	add    %al,(%rbx)
 c51:	11 00                	adc    %eax,(%rax)
 c53:	00 00                	add    %al,(%rax)
 c55:	00 00                	add    %al,(%rax)
 c57:	00 07                	add    %al,(%rdi)
 c59:	11 00                	adc    %eax,(%rax)
 c5b:	00 00                	add    %al,(%rax)
 c5d:	00 00                	add    %al,(%rax)
 c5f:	00 25 11 00 00 00    	add    %ah,0x11(%rip)        # c76 <__abi_tag+0x9b2>
 c65:	00 00                	add    %al,(%rax)
 c67:	00 2a                	add    %ch,(%rdx)
 c69:	11 00                	adc    %eax,(%rax)
 c6b:	00 00                	add    %al,(%rax)
 c6d:	00 00                	add    %al,(%rax)
 c6f:	00 3d 11 00 00 00    	add    %bh,0x11(%rip)        # c86 <__abi_tag+0x9c2>
 c75:	00 00                	add    %al,(%rax)
 c77:	00 43 11             	add    %al,0x11(%rbx)
 c7a:	00 00                	add    %al,(%rax)
 c7c:	00 00                	add    %al,(%rax)
 c7e:	00 00                	add    %al,(%rax)
 c80:	4f 11 00             	rex.WRXB adc %r8,(%r8)
 c83:	00 00                	add    %al,(%rax)
 c85:	00 00                	add    %al,(%rax)
 c87:	00 5e 11             	add    %bl,0x11(%rsi)
 c8a:	00 00                	add    %al,(%rax)
 c8c:	00 00                	add    %al,(%rax)
 c8e:	00 00                	add    %al,(%rax)
 c90:	6e                   	outsb  %ds:(%rsi),(%dx)
 c91:	11 00                	adc    %eax,(%rax)
 c93:	00 00                	add    %al,(%rax)
 c95:	00 00                	add    %al,(%rax)
 c97:	00 83 11 00 00 00    	add    %al,0x11(%rbx)
 c9d:	00 00                	add    %al,(%rax)
 c9f:	00 d1                	add    %dl,%cl
 ca1:	11 00                	adc    %eax,(%rax)
 ca3:	00 00                	add    %al,(%rax)
 ca5:	00 00                	add    %al,(%rax)
 ca7:	00 fc                	add    %bh,%ah
 ca9:	11 00                	adc    %eax,(%rax)
 cab:	00 00                	add    %al,(%rax)
 cad:	00 00                	add    %al,(%rax)
 caf:	00 15 12 00 00 00    	add    %dl,0x12(%rip)        # cc7 <__abi_tag+0xa03>
 cb5:	00 00                	add    %al,(%rax)
 cb7:	00 23                	add    %ah,(%rbx)
 cb9:	12 00                	adc    (%rax),%al
 cbb:	00 00                	add    %al,(%rax)
 cbd:	00 00                	add    %al,(%rax)
 cbf:	00 30                	add    %dh,(%rax)
 cc1:	12 00                	adc    (%rax),%al
 cc3:	00 00                	add    %al,(%rax)
 cc5:	00 00                	add    %al,(%rax)
 cc7:	00 4a 12             	add    %cl,0x12(%rdx)
 cca:	00 00                	add    %al,(%rax)
 ccc:	00 00                	add    %al,(%rax)
 cce:	00 00                	add    %al,(%rax)
 cd0:	9d                   	popfq  
 cd1:	12 00                	adc    (%rax),%al
 cd3:	00 00                	add    %al,(%rax)
 cd5:	00 00                	add    %al,(%rax)
 cd7:	00 af 12 00 00 00    	add    %ch,0x12(%rdi)
 cdd:	00 00                	add    %al,(%rax)
 cdf:	00 e1                	add    %ah,%cl
 ce1:	12 00                	adc    (%rax),%al
 ce3:	00 00                	add    %al,(%rax)
 ce5:	00 00                	add    %al,(%rax)
 ce7:	00 eb                	add    %ch,%bl
 ce9:	12 00                	adc    (%rax),%al
 ceb:	00 00                	add    %al,(%rax)
 ced:	00 00                	add    %al,(%rax)
 cef:	00 01                	add    %al,(%rcx)
 cf1:	13 00                	adc    (%rax),%eax
 cf3:	00 00                	add    %al,(%rax)
 cf5:	00 00                	add    %al,(%rax)
 cf7:	00 12                	add    %dl,(%rdx)
 cf9:	13 00                	adc    (%rax),%eax
 cfb:	00 00                	add    %al,(%rax)
 cfd:	00 00                	add    %al,(%rax)
 cff:	00 ee                	add    %ch,%dh
 d01:	13 00                	adc    (%rax),%eax
 d03:	00 00                	add    %al,(%rax)
 d05:	00 00                	add    %al,(%rax)
 d07:	00 f2                	add    %dh,%dl
 d09:	13 00                	adc    (%rax),%eax
 d0b:	00 00                	add    %al,(%rax)
 d0d:	00 00                	add    %al,(%rax)
 d0f:	00 09                	add    %cl,(%rcx)
 d11:	14 00                	adc    $0x0,%al
 d13:	00 00                	add    %al,(%rax)
 d15:	00 00                	add    %al,(%rax)
 d17:	00 1b                	add    %bl,(%rbx)
 d19:	14 00                	adc    $0x0,%al
 d1b:	00 00                	add    %al,(%rax)
 d1d:	00 00                	add    %al,(%rax)
 d1f:	00 25 14 00 00 00    	add    %ah,0x14(%rip)        # d39 <__abi_tag+0xa75>
 d25:	00 00                	add    %al,(%rax)
 d27:	00 2a                	add    %ch,(%rdx)
 d29:	14 00                	adc    $0x0,%al
 d2b:	00 00                	add    %al,(%rax)
 d2d:	00 00                	add    %al,(%rax)
 d2f:	00 61 16             	add    %ah,0x16(%rcx)
 d32:	00 00                	add    %al,(%rax)
 d34:	00 00                	add    %al,(%rax)
 d36:	00 00                	add    %al,(%rax)
 d38:	6a 16                	pushq  $0x16
 d3a:	00 00                	add    %al,(%rax)
 d3c:	00 00                	add    %al,(%rax)
 d3e:	00 00                	add    %al,(%rax)
 d40:	d6                   	(bad)  
 d41:	16                   	(bad)  
 d42:	00 00                	add    %al,(%rax)
 d44:	00 00                	add    %al,(%rax)
 d46:	00 00                	add    %al,(%rax)
 d48:	db 16                	fistl  (%rsi)
	...
