
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
 41f:	00 15 00 00 00 12    	add    %dl,0x12000000(%rip)        # 12000425 <_end+0x11ffc3cd>
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
    10b3:	4c 8d 05 f6 0b 00 00 	lea    0xbf6(%rip),%r8        # 1cb0 <__libc_csu_fini>
    10ba:	48 8d 0d 7f 0b 00 00 	lea    0xb7f(%rip),%rcx        # 1c40 <__libc_csu_init>
    10c1:	48 8d 3d a8 06 00 00 	lea    0x6a8(%rip),%rdi        # 1770 <main>
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
    1770:	41 57                	push   %r15
    1772:	41 56                	push   %r14
    1774:	53                   	push   %rbx
    1775:	48 83 ec 40          	sub    $0x40,%rsp
    1779:	83 ff 02             	cmp    $0x2,%edi
    177c:	0f 85 8a 02 00 00    	jne    1a0c <main+0x29c>
    1782:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1786:	31 f6                	xor    %esi,%esi
    1788:	ba 0a 00 00 00       	mov    $0xa,%edx
    178d:	e8 be f8 ff ff       	callq  1050 <strtoll@plt>
    1792:	49 89 c7             	mov    %rax,%r15
    1795:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    179c:	00 
    179d:	bf 40 00 00 00       	mov    $0x40,%edi
    17a2:	48 89 de             	mov    %rbx,%rsi
    17a5:	e8 c6 f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17aa:	49 89 c6             	mov    %rax,%r14
    17ad:	bf 40 00 00 00       	mov    $0x40,%edi
    17b2:	48 89 de             	mov    %rbx,%rsi
    17b5:	e8 b6 f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17ba:	48 89 c3             	mov    %rax,%rbx
    17bd:	4d 85 ff             	test   %r15,%r15
    17c0:	74 0d                	je     17cf <main+0x5f>
    17c2:	49 83 ff 04          	cmp    $0x4,%r15
    17c6:	73 1c                	jae    17e4 <main+0x74>
    17c8:	31 c0                	xor    %eax,%eax
    17ca:	e9 17 01 00 00       	jmpq   18e6 <main+0x176>
    17cf:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    17d3:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    17d7:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    17db:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    17df:	e9 d6 02 00 00       	jmpq   1aba <main+0x34a>
    17e4:	4c 89 f8             	mov    %r15,%rax
    17e7:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    17eb:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    17ef:	48 89 f2             	mov    %rsi,%rdx
    17f2:	48 c1 ea 02          	shr    $0x2,%rdx
    17f6:	48 83 c2 01          	add    $0x1,%rdx
    17fa:	89 d1                	mov    %edx,%ecx
    17fc:	83 e1 03             	and    $0x3,%ecx
    17ff:	48 83 fe 0c          	cmp    $0xc,%rsi
    1803:	73 07                	jae    180c <main+0x9c>
    1805:	31 f6                	xor    %esi,%esi
    1807:	e9 94 00 00 00       	jmpq   18a0 <main+0x130>
    180c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1810:	48 f7 da             	neg    %rdx
    1813:	31 f6                	xor    %esi,%esi
    1815:	66 0f 28 05 f3 07 00 	movapd 0x7f3(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    181c:	00 
    181d:	66 0f 28 0d fb 07 00 	movapd 0x7fb(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1824:	00 
    1825:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    182c:	00 00 00 
    182f:	90                   	nop
    1830:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    1836:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
    183d:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    1842:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
    1848:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    184f:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
    1856:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    185c:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
    1862:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    1869:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
    1870:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    1876:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
    187c:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    1883:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
    188a:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1890:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
    1896:	48 83 c6 10          	add    $0x10,%rsi
    189a:	48 83 c2 04          	add    $0x4,%rdx
    189e:	75 90                	jne    1830 <main+0xc0>
    18a0:	48 85 c9             	test   %rcx,%rcx
    18a3:	74 3c                	je     18e1 <main+0x171>
    18a5:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    18ac:	00 
    18ad:	48 f7 d9             	neg    %rcx
    18b0:	66 0f 28 05 58 07 00 	movapd 0x758(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    18b7:	00 
    18b8:	66 0f 28 0d 60 07 00 	movapd 0x760(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    18bf:	00 
    18c0:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    18c7:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
    18cd:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    18d3:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
    18d8:	48 83 c2 20          	add    $0x20,%rdx
    18dc:	48 ff c1             	inc    %rcx
    18df:	75 df                	jne    18c0 <main+0x150>
    18e1:	49 39 c7             	cmp    %rax,%r15
    18e4:	74 2b                	je     1911 <main+0x1a1>
    18e6:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    18ed:	99 b9 3f 
    18f0:	48 ba 00 00 00 00 00 	movabs $0x3ff0000000000000,%rdx
    18f7:	00 f0 3f 
    18fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1900:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
    1904:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
    1908:	48 83 c0 01          	add    $0x1,%rax
    190c:	49 39 c7             	cmp    %rax,%r15
    190f:	75 ef                	jne    1900 <main+0x190>
    1911:	49 83 ff 04          	cmp    $0x4,%r15
    1915:	73 0b                	jae    1922 <main+0x1b2>
    1917:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    191b:	31 c0                	xor    %eax,%eax
    191d:	e9 f4 00 00 00       	jmpq   1a16 <main+0x2a6>
    1922:	4c 89 f8             	mov    %r15,%rax
    1925:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    1929:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    192d:	48 89 d1             	mov    %rdx,%rcx
    1930:	48 c1 e9 02          	shr    $0x2,%rcx
    1934:	48 83 c1 01          	add    $0x1,%rcx
    1938:	48 85 d2             	test   %rdx,%rdx
    193b:	0f 84 ba 00 00 00    	je     19fb <main+0x28b>
    1941:	48 89 ce             	mov    %rcx,%rsi
    1944:	48 83 e6 fe          	and    $0xfffffffffffffffe,%rsi
    1948:	48 f7 de             	neg    %rsi
    194b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    194f:	31 d2                	xor    %edx,%edx
    1951:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1955:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    195c:	00 00 00 
    195f:	90                   	nop
    1960:	66 41 0f 10 14 d6    	movupd (%r14,%rdx,8),%xmm2
    1966:	66 41 0f 10 5c d6 10 	movupd 0x10(%r14,%rdx,8),%xmm3
    196d:	66 41 0f 10 64 d6 20 	movupd 0x20(%r14,%rdx,8),%xmm4
    1974:	66 41 0f 10 6c d6 30 	movupd 0x30(%r14,%rdx,8),%xmm5
    197b:	66 0f 10 34 d3       	movupd (%rbx,%rdx,8),%xmm6
    1980:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    1984:	66 0f 58 f0          	addpd  %xmm0,%xmm6
    1988:	66 0f 10 54 d3 10    	movupd 0x10(%rbx,%rdx,8),%xmm2
    198e:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    1992:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    1996:	66 0f 10 44 d3 20    	movupd 0x20(%rbx,%rdx,8),%xmm0
    199c:	66 0f 59 c4          	mulpd  %xmm4,%xmm0
    19a0:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    19a4:	66 0f 10 4c d3 30    	movupd 0x30(%rbx,%rdx,8),%xmm1
    19aa:	66 0f 59 cd          	mulpd  %xmm5,%xmm1
    19ae:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    19b2:	48 83 c2 08          	add    $0x8,%rdx
    19b6:	48 83 c6 02          	add    $0x2,%rsi
    19ba:	75 a4                	jne    1960 <main+0x1f0>
    19bc:	f6 c1 01             	test   $0x1,%cl
    19bf:	74 28                	je     19e9 <main+0x279>
    19c1:	66 0f 10 14 d3       	movupd (%rbx,%rdx,8),%xmm2
    19c6:	66 0f 10 5c d3 10    	movupd 0x10(%rbx,%rdx,8),%xmm3
    19cc:	66 41 0f 10 24 d6    	movupd (%r14,%rdx,8),%xmm4
    19d2:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    19d6:	66 0f 58 c4          	addpd  %xmm4,%xmm0
    19da:	66 41 0f 10 54 d6 10 	movupd 0x10(%r14,%rdx,8),%xmm2
    19e1:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    19e5:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    19e9:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    19ed:	66 0f 28 f0          	movapd %xmm0,%xmm6
    19f1:	66 0f 15 f0          	unpckhpd %xmm0,%xmm6
    19f5:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    19f9:	eb 2e                	jmp    1a29 <main+0x2b9>
    19fb:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    19ff:	31 d2                	xor    %edx,%edx
    1a01:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1a05:	f6 c1 01             	test   $0x1,%cl
    1a08:	75 b7                	jne    19c1 <main+0x251>
    1a0a:	eb dd                	jmp    19e9 <main+0x279>
    1a0c:	bf 01 00 00 00       	mov    $0x1,%edi
    1a11:	e8 4a f6 ff ff       	callq  1060 <exit@plt>
    1a16:	f2 0f 10 04 c3       	movsd  (%rbx,%rax,8),%xmm0
    1a1b:	f2 41 0f 59 04 c6    	mulsd  (%r14,%rax,8),%xmm0
    1a21:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1a25:	48 83 c0 01          	add    $0x1,%rax
    1a29:	49 39 c7             	cmp    %rax,%r15
    1a2c:	75 e8                	jne    1a16 <main+0x2a6>
    1a2e:	41 f6 c7 01          	test   $0x1,%r15b
    1a32:	75 36                	jne    1a6a <main+0x2fa>
    1a34:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1a38:	31 c0                	xor    %eax,%eax
    1a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1a40:	66 41 0f 10 04 c6    	movupd (%r14,%rax,8),%xmm0
    1a46:	66 0f 10 0c c3       	movupd (%rbx,%rax,8),%xmm1
    1a4b:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
    1a4f:	66 0f 58 f9          	addpd  %xmm1,%xmm7
    1a53:	48 83 c0 02          	add    $0x2,%rax
    1a57:	4c 39 f8             	cmp    %r15,%rax
    1a5a:	72 e4                	jb     1a40 <main+0x2d0>
    1a5c:	66 0f 28 c7          	movapd %xmm7,%xmm0
    1a60:	66 0f 15 c7          	unpckhpd %xmm7,%xmm0
    1a64:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1a68:	eb 50                	jmp    1aba <main+0x34a>
    1a6a:	4c 89 f8             	mov    %r15,%rax
    1a6d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1a71:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1a75:	74 25                	je     1a9c <main+0x32c>
    1a77:	31 c9                	xor    %ecx,%ecx
    1a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a80:	66 41 0f 10 0c ce    	movupd (%r14,%rcx,8),%xmm1
    1a86:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    1a8b:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    1a8f:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    1a93:	48 83 c1 02          	add    $0x2,%rcx
    1a97:	48 39 c1             	cmp    %rax,%rcx
    1a9a:	72 e4                	jb     1a80 <main+0x310>
    1a9c:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1aa0:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1aa4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1aa8:	f2 42 0f 10 7c fb f8 	movsd  -0x8(%rbx,%r15,8),%xmm7
    1aaf:	f2 43 0f 59 7c fe f8 	mulsd  -0x8(%r14,%r15,8),%xmm7
    1ab6:	f2 0f 58 f9          	addsd  %xmm1,%xmm7
    1aba:	4d 85 ff             	test   %r15,%r15
    1abd:	66 0f 29 74 24 30    	movapd %xmm6,0x30(%rsp)
    1ac3:	66 0f 29 7c 24 20    	movapd %xmm7,0x20(%rsp)
    1ac9:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1acd:	0f 84 a4 00 00 00    	je     1b77 <main+0x407>
    1ad3:	31 c0                	xor    %eax,%eax
    1ad5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1ae0:	f2 0f 10 14 c3       	movsd  (%rbx,%rax,8),%xmm2
    1ae5:	f2 0f 10 5c c3 08    	movsd  0x8(%rbx,%rax,8),%xmm3
    1aeb:	66 0f 16 54 c3 10    	movhpd 0x10(%rbx,%rax,8),%xmm2
    1af1:	f2 41 0f 10 24 c6    	movsd  (%r14,%rax,8),%xmm4
    1af7:	f2 41 0f 10 6c c6 08 	movsd  0x8(%r14,%rax,8),%xmm5
    1afe:	66 41 0f 16 64 c6 10 	movhpd 0x10(%r14,%rax,8),%xmm4
    1b05:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1b09:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    1b0d:	66 0f 16 5c c3 18    	movhpd 0x18(%rbx,%rax,8),%xmm3
    1b13:	66 41 0f 16 6c c6 18 	movhpd 0x18(%r14,%rax,8),%xmm5
    1b1a:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    1b1e:	66 0f 58 c5          	addpd  %xmm5,%xmm0
    1b22:	48 83 c0 04          	add    $0x4,%rax
    1b26:	4c 39 f8             	cmp    %r15,%rax
    1b29:	72 b5                	jb     1ae0 <main+0x370>
    1b2b:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1b2f:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    1b33:	41 f6 c7 03          	test   $0x3,%r15b
    1b37:	75 46                	jne    1b7f <main+0x40f>
    1b39:	49 83 ff 03          	cmp    $0x3,%r15
    1b3d:	72 40                	jb     1b7f <main+0x40f>
    1b3f:	f2 42 0f 10 5c fb e8 	movsd  -0x18(%rbx,%r15,8),%xmm3
    1b46:	f2 42 0f 10 64 fb f0 	movsd  -0x10(%rbx,%r15,8),%xmm4
    1b4d:	f2 43 0f 59 5c fe e8 	mulsd  -0x18(%r14,%r15,8),%xmm3
    1b54:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1b58:	f2 43 0f 59 64 fe f0 	mulsd  -0x10(%r14,%r15,8),%xmm4
    1b5f:	f2 42 0f 10 4c fb f8 	movsd  -0x8(%rbx,%r15,8),%xmm1
    1b66:	f2 43 0f 59 4c fe f8 	mulsd  -0x8(%r14,%r15,8),%xmm1
    1b6d:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1b71:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1b75:	eb 08                	jmp    1b7f <main+0x40f>
    1b77:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    1b7b:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1b7f:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1b83:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1b87:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1b8b:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1b8f:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1b93:	66 0f 29 4c 24 10    	movapd %xmm1,0x10(%rsp)
    1b99:	4c 89 f7             	mov    %r14,%rdi
    1b9c:	48 89 de             	mov    %rbx,%rsi
    1b9f:	4c 89 fa             	mov    %r15,%rdx
    1ba2:	e8 a9 f8 ff ff       	callq  1450 <dotprod_8x>
    1ba7:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1bad:	4c 89 f7             	mov    %r14,%rdi
    1bb0:	48 89 de             	mov    %rbx,%rsi
    1bb3:	4c 89 fa             	mov    %r15,%rdx
    1bb6:	e8 f5 f9 ff ff       	callq  15b0 <dotprod_16x>
    1bbb:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    1bc0:	48 8d 3d 69 04 00 00 	lea    0x469(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    1bc7:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1bcc:	b0 01                	mov    $0x1,%al
    1bce:	e8 6d f4 ff ff       	callq  1040 <printf@plt>
    1bd3:	48 8d 3d 61 04 00 00 	lea    0x461(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1bda:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    1bdf:	b0 01                	mov    $0x1,%al
    1be1:	e8 5a f4 ff ff       	callq  1040 <printf@plt>
    1be6:	48 8d 3d 5c 04 00 00 	lea    0x45c(%rip),%rdi        # 2049 <_IO_stdin_used+0x49>
    1bed:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    1bf2:	b0 01                	mov    $0x1,%al
    1bf4:	e8 47 f4 ff ff       	callq  1040 <printf@plt>
    1bf9:	48 8d 3d 57 04 00 00 	lea    0x457(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1c00:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1c06:	b0 01                	mov    $0x1,%al
    1c08:	e8 33 f4 ff ff       	callq  1040 <printf@plt>
    1c0d:	48 8d 3d 51 04 00 00 	lea    0x451(%rip),%rdi        # 2065 <_IO_stdin_used+0x65>
    1c14:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    1c19:	b0 01                	mov    $0x1,%al
    1c1b:	e8 20 f4 ff ff       	callq  1040 <printf@plt>
    1c20:	4c 89 f7             	mov    %r14,%rdi
    1c23:	e8 08 f4 ff ff       	callq  1030 <free@plt>
    1c28:	48 89 df             	mov    %rbx,%rdi
    1c2b:	e8 00 f4 ff ff       	callq  1030 <free@plt>
    1c30:	31 c0                	xor    %eax,%eax
    1c32:	48 83 c4 40          	add    $0x40,%rsp
    1c36:	5b                   	pop    %rbx
    1c37:	41 5e                	pop    %r14
    1c39:	41 5f                	pop    %r15
    1c3b:	c3                   	retq   
    1c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001c40 <__libc_csu_init>:
    1c40:	f3 0f 1e fa          	endbr64 
    1c44:	41 57                	push   %r15
    1c46:	4c 8d 3d 83 21 00 00 	lea    0x2183(%rip),%r15        # 3dd0 <__frame_dummy_init_array_entry>
    1c4d:	41 56                	push   %r14
    1c4f:	49 89 d6             	mov    %rdx,%r14
    1c52:	41 55                	push   %r13
    1c54:	49 89 f5             	mov    %rsi,%r13
    1c57:	41 54                	push   %r12
    1c59:	41 89 fc             	mov    %edi,%r12d
    1c5c:	55                   	push   %rbp
    1c5d:	48 8d 2d 7c 21 00 00 	lea    0x217c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1c64:	53                   	push   %rbx
    1c65:	4c 29 fd             	sub    %r15,%rbp
    1c68:	48 83 ec 08          	sub    $0x8,%rsp
    1c6c:	e8 8f f3 ff ff       	callq  1000 <_init>
    1c71:	48 c1 fd 03          	sar    $0x3,%rbp
    1c75:	74 1f                	je     1c96 <__libc_csu_init+0x56>
    1c77:	31 db                	xor    %ebx,%ebx
    1c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c80:	4c 89 f2             	mov    %r14,%rdx
    1c83:	4c 89 ee             	mov    %r13,%rsi
    1c86:	44 89 e7             	mov    %r12d,%edi
    1c89:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1c8d:	48 83 c3 01          	add    $0x1,%rbx
    1c91:	48 39 dd             	cmp    %rbx,%rbp
    1c94:	75 ea                	jne    1c80 <__libc_csu_init+0x40>
    1c96:	48 83 c4 08          	add    $0x8,%rsp
    1c9a:	5b                   	pop    %rbx
    1c9b:	5d                   	pop    %rbp
    1c9c:	41 5c                	pop    %r12
    1c9e:	41 5d                	pop    %r13
    1ca0:	41 5e                	pop    %r14
    1ca2:	41 5f                	pop    %r15
    1ca4:	c3                   	retq   
    1ca5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1cac:	00 00 00 00 

0000000000001cb0 <__libc_csu_fini>:
    1cb0:	f3 0f 1e fa          	endbr64 
    1cb4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001cb8 <_fini>:
    1cb8:	f3 0f 1e fa          	endbr64 
    1cbc:	48 83 ec 08          	sub    $0x8,%rsp
    1cc0:	48 83 c4 08          	add    $0x8,%rsp
    1cc4:	c3                   	retq   

Déassemblage de la section .rodata :

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
	...
    2010:	9a                   	(bad)  
    2011:	99                   	cltd   
    2012:	99                   	cltd   
    2013:	99                   	cltd   
    2014:	99                   	cltd   
    2015:	99                   	cltd   
    2016:	b9 3f 9a 99 99       	mov    $0x99999a3f,%ecx
    201b:	99                   	cltd   
    201c:	99                   	cltd   
    201d:	99                   	cltd   
    201e:	b9 3f 00 00 00       	mov    $0x3f,%ecx
    2023:	00 00                	add    %al,(%rax)
    2025:	00 f0                	add    %dh,%al
    2027:	3f                   	(bad)  
    2028:	00 00                	add    %al,(%rax)
    202a:	00 00                	add    %al,(%rax)
    202c:	00 00                	add    %al,(%rax)
    202e:	f0 3f                	lock (bad) 
    2030:	72 65                	jb     2097 <__GNU_EH_FRAME_HDR+0x23>
    2032:	73 20                	jae    2054 <_IO_stdin_used+0x54>
    2034:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2039:	0a 00                	or     (%rax),%al
    203b:	72 65                	jb     20a2 <__GNU_EH_FRAME_HDR+0x2e>
    203d:	73 5f                	jae    209e <__GNU_EH_FRAME_HDR+0x2a>
    203f:	32 78 20             	xor    0x20(%rax),%bh
    2042:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2047:	0a 00                	or     (%rax),%al
    2049:	72 65                	jb     20b0 <__GNU_EH_FRAME_HDR+0x3c>
    204b:	73 5f                	jae    20ac <__GNU_EH_FRAME_HDR+0x38>
    204d:	34 78                	xor    $0x78,%al
    204f:	20 3d 20 25 6c 66    	and    %bh,0x666c2520(%rip)        # 666c4575 <_end+0x666c051d>
    2055:	0a 00                	or     (%rax),%al
    2057:	72 65                	jb     20be <__GNU_EH_FRAME_HDR+0x4a>
    2059:	73 5f                	jae    20ba <__GNU_EH_FRAME_HDR+0x46>
    205b:	38 78 20             	cmp    %bh,0x20(%rax)
    205e:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2063:	0a 00                	or     (%rax),%al
    2065:	72 65                	jb     20cc <__GNU_EH_FRAME_HDR+0x58>
    2067:	73 5f                	jae    20c8 <__GNU_EH_FRAME_HDR+0x54>
    2069:	31 36                	xor    %esi,(%rsi)
    206b:	78 20                	js     208d <__GNU_EH_FRAME_HDR+0x19>
    206d:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2072:	0a 00                	or     (%rax),%al

Déassemblage de la section .eh_frame_hdr :

0000000000002074 <__GNU_EH_FRAME_HDR>:
    2074:	01 1b                	add    %ebx,(%rbx)
    2076:	03 3b                	add    (%rbx),%edi
    2078:	68 00 00 00 0c       	pushq  $0xc000000
    207d:	00 00                	add    %al,(%rax)
    207f:	00 ac ef ff ff 9c 00 	add    %ch,0x9cffff(%rdi,%rbp,8)
    2086:	00 00                	add    %al,(%rax)
    2088:	0c f0                	or     $0xf0,%al
    208a:	ff                   	(bad)  
    208b:	ff c4                	inc    %esp
    208d:	00 00                	add    %al,(%rax)
    208f:	00 2c f0             	add    %ch,(%rax,%rsi,8)
    2092:	ff                   	(bad)  
    2093:	ff 84 00 00 00 2c f1 	incl   -0xed40000(%rax,%rax,1)
    209a:	ff                   	(bad)  
    209b:	ff                   	(bad)  
    209c:	dc 00                	faddl  (%rax)
    209e:	00 00                	add    %al,(%rax)
    20a0:	5c                   	pop    %rsp
    20a1:	f1                   	icebp  
    20a2:	ff                   	(bad)  
    20a3:	ff                   	(bad)  
    20a4:	f8                   	clc    
    20a5:	00 00                	add    %al,(%rax)
    20a7:	00 7c f2 ff          	add    %bh,-0x1(%rdx,%rsi,8)
    20ab:	ff 0c 01             	decl   (%rcx,%rax,1)
    20ae:	00 00                	add    %al,(%rax)
    20b0:	0c f3                	or     $0xf3,%al
    20b2:	ff                   	(bad)  
    20b3:	ff 20                	jmpq   *(%rax)
    20b5:	01 00                	add    %eax,(%rax)
    20b7:	00 dc                	add    %bl,%ah
    20b9:	f3 ff                	repz (bad) 
    20bb:	ff 34 01             	pushq  (%rcx,%rax,1)
    20be:	00 00                	add    %al,(%rax)
    20c0:	3c f5                	cmp    $0xf5,%al
    20c2:	ff                   	(bad)  
    20c3:	ff 48 01             	decl   0x1(%rax)
    20c6:	00 00                	add    %al,(%rax)
    20c8:	fc                   	cld    
    20c9:	f6 ff                	idiv   %bh
    20cb:	ff 5c 01 00          	lcall  *0x0(%rcx,%rax,1)
    20cf:	00 cc                	add    %cl,%ah
    20d1:	fb                   	sti    
    20d2:	ff                   	(bad)  
    20d3:	ff 94 01 00 00 3c fc 	callq  *-0x3c40000(%rcx,%rax,1)
    20da:	ff                   	(bad)  
    20db:	ff                   	(bad)  
    20dc:	dc 01                	faddl  (%rcx)
	...

Déassemblage de la section .eh_frame :

00000000000020e0 <__FRAME_END__-0x184>:
    20e0:	14 00                	adc    $0x0,%al
    20e2:	00 00                	add    %al,(%rax)
    20e4:	00 00                	add    %al,(%rax)
    20e6:	00 00                	add    %al,(%rax)
    20e8:	01 7a 52             	add    %edi,0x52(%rdx)
    20eb:	00 01                	add    %al,(%rcx)
    20ed:	78 10                	js     20ff <__GNU_EH_FRAME_HDR+0x8b>
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
    214f:	00 18                	add    %bl,(%rax)
    2151:	00 00                	add    %al,(%rax)
    2153:	00 74 00 00          	add    %dh,0x0(%rax,%rax,1)
    2157:	00 48 f0             	add    %cl,-0x10(%rax)
    215a:	ff                   	(bad)  
    215b:	ff 21                	jmpq   *(%rcx)
    215d:	00 00                	add    %al,(%rax)
    215f:	00 00                	add    %al,(%rax)
    2161:	41 0e                	rex.B (bad) 
    2163:	10 51 0e             	adc    %dl,0xe(%rcx)
    2166:	08 45 0e             	or     %al,0xe(%rbp)
    2169:	10 00                	adc    %al,(%rax)
    216b:	00 10                	add    %dl,(%rax)
    216d:	00 00                	add    %al,(%rax)
    216f:	00 90 00 00 00 5c    	add    %dl,0x5c000000(%rax)
    2175:	f0 ff                	lock (bad) 
    2177:	ff 1a                	lcall  *(%rdx)
    2179:	01 00                	add    %eax,(%rax)
    217b:	00 00                	add    %al,(%rax)
    217d:	00 00                	add    %al,(%rax)
    217f:	00 10                	add    %dl,(%rax)
    2181:	00 00                	add    %al,(%rax)
    2183:	00 a4 00 00 00 68 f1 	add    %ah,-0xe980000(%rax,%rax,1)
    218a:	ff                   	(bad)  
    218b:	ff 88 00 00 00 00    	decl   0x0(%rax)
    2191:	00 00                	add    %al,(%rax)
    2193:	00 10                	add    %dl,(%rax)
    2195:	00 00                	add    %al,(%rax)
    2197:	00 b8 00 00 00 e4    	add    %bh,-0x1c000000(%rax)
    219d:	f1                   	icebp  
    219e:	ff                   	(bad)  
    219f:	ff c5                	inc    %ebp
    21a1:	00 00                	add    %al,(%rax)
    21a3:	00 00                	add    %al,(%rax)
    21a5:	00 00                	add    %al,(%rax)
    21a7:	00 10                	add    %dl,(%rax)
    21a9:	00 00                	add    %al,(%rax)
    21ab:	00 cc                	add    %cl,%ah
    21ad:	00 00                	add    %al,(%rax)
    21af:	00 a0 f2 ff ff 55    	add    %ah,0x55fffff2(%rax)
    21b5:	01 00                	add    %eax,(%rax)
    21b7:	00 00                	add    %al,(%rax)
    21b9:	00 00                	add    %al,(%rax)
    21bb:	00 10                	add    %dl,(%rax)
    21bd:	00 00                	add    %al,(%rax)
    21bf:	00 e0                	add    %ah,%al
    21c1:	00 00                	add    %al,(%rax)
    21c3:	00 ec                	add    %ch,%ah
    21c5:	f3 ff                	repz (bad) 
    21c7:	ff                   	(bad)  
    21c8:	b8 01 00 00 00       	mov    $0x1,%eax
    21cd:	00 00                	add    %al,(%rax)
    21cf:	00 34 00             	add    %dh,(%rax,%rax,1)
    21d2:	00 00                	add    %al,(%rax)
    21d4:	f4                   	hlt    
    21d5:	00 00                	add    %al,(%rax)
    21d7:	00 98 f5 ff ff cc    	add    %bl,-0x3300000b(%rax)
    21dd:	04 00                	add    $0x0,%al
    21df:	00 00                	add    %al,(%rax)
    21e1:	42 0e                	rex.X (bad) 
    21e3:	10 42 0e             	adc    %al,0xe(%rdx)
    21e6:	18 41 0e             	sbb    %al,0xe(%rcx)
    21e9:	20 44 0e 60          	and    %al,0x60(%rsi,%rcx,1)
    21ed:	83 04 8e 03          	addl   $0x3,(%rsi,%rcx,4)
    21f1:	8f 02                	popq   (%rdx)
    21f3:	03 bd 04 0e 20 41    	add    0x41200e04(%rbp),%edi
    21f9:	0e                   	(bad)  
    21fa:	18 42 0e             	sbb    %al,0xe(%rdx)
    21fd:	10 42 0e             	adc    %al,0xe(%rdx)
    2200:	08 00                	or     %al,(%rax)
    2202:	00 00                	add    %al,(%rax)
    2204:	00 00                	add    %al,(%rax)
    2206:	00 00                	add    %al,(%rax)
    2208:	44 00 00             	add    %r8b,(%rax)
    220b:	00 2c 01             	add    %ch,(%rcx,%rax,1)
    220e:	00 00                	add    %al,(%rax)
    2210:	30 fa                	xor    %bh,%dl
    2212:	ff                   	(bad)  
    2213:	ff 65 00             	jmpq   *0x0(%rbp)
    2216:	00 00                	add    %al,(%rax)
    2218:	00 46 0e             	add    %al,0xe(%rsi)
    221b:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2221:	8e 03                	mov    (%rbx),%es
    2223:	45 0e                	rex.RB (bad) 
    2225:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    222b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86303075 <_end+0xffffffff862ff01d>
    2231:	06                   	(bad)  
    2232:	48 0e                	rex.W (bad) 
    2234:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    223a:	6e                   	outsb  %ds:(%rsi),(%dx)
    223b:	0e                   	(bad)  
    223c:	38 41 0e             	cmp    %al,0xe(%rcx)
    223f:	30 41 0e             	xor    %al,0xe(%rcx)
    2242:	28 42 0e             	sub    %al,0xe(%rdx)
    2245:	20 42 0e             	and    %al,0xe(%rdx)
    2248:	18 42 0e             	sbb    %al,0xe(%rdx)
    224b:	10 42 0e             	adc    %al,0xe(%rdx)
    224e:	08 00                	or     %al,(%rax)
    2250:	10 00                	adc    %al,(%rax)
    2252:	00 00                	add    %al,(%rax)
    2254:	74 01                	je     2257 <__GNU_EH_FRAME_HDR+0x1e3>
    2256:	00 00                	add    %al,(%rax)
    2258:	58                   	pop    %rax
    2259:	fa                   	cli    
    225a:	ff                   	(bad)  
    225b:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 2261 <__GNU_EH_FRAME_HDR+0x1ed>
    2261:	00 00                	add    %al,(%rax)
	...

0000000000002264 <__FRAME_END__>:
    2264:	00 00                	add    %al,(%rax)
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
    3e0f:	00 b8 1c 00 00 00    	add    %bh,0x1c(%rax)
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
  63:	00 a0 07 00 00 04    	add    %ah,0x4000007(%rax)
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
  89:	00 9c 0a 00 00 02 a0 	add    %bl,-0x5ffe0000(%rdx,%rcx,1)
  90:	11 00                	adc    %eax,(%rax)
  92:	00 00                	add    %al,(%rax)
  94:	00 00                	add    %al,(%rax)
  96:	00 21                	add    %ah,(%rcx)
  98:	00 00                	add    %al,(%rax)
  9a:	00 01                	add    %al,(%rcx)
  9c:	57                   	push   %rdi
  9d:	e8 02 00 00 03       	callq  30000a4 <_end+0x2ffc04c>
  a2:	59                   	pop    %rcx
  a3:	00 00                	add    %al,(%rax)
  a5:	00 f4                	add    %dh,%ah
  a7:	02 00                	add    (%rax),%al
  a9:	00 03                	add    %al,(%rbx)
  ab:	bb 00 00 00 ff       	mov    $0xff000000,%ebx
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
  c3:	e5 03                	in     $0x3,%eax
  c5:	00 00                	add    %al,(%rax)
  c7:	04 01                	add    $0x1,%al
  c9:	55                   	push   %rbp
  ca:	f1                   	icebp  
  cb:	03 00                	add    (%rax),%eax
  cd:	00 04 01             	add    %al,(%rcx,%rax,1)
  d0:	54                   	push   %rsp
  d1:	fc                   	cld    
  d2:	03 00                	add    (%rax),%eax
  d4:	00 04 01             	add    %al,(%rcx,%rax,1)
  d7:	51                   	push   %rcx
  d8:	07                   	(bad)  
  d9:	04 00                	add    $0x0,%al
  db:	00 05 1d 01 00 00    	add    %al,0x11d(%rip)        # 1fe <__abi_tag-0xc6>
  e1:	12 04 00             	adc    (%rax,%rax,1),%al
  e4:	00 06                	add    %al,(%rsi)
  e6:	20 00                	and    %al,(%rax)
  e8:	00 00                	add    %al,(%rax)
  ea:	05 8f 01 00 00       	add    $0x18f,%eax
  ef:	1e                   	(bad)  
  f0:	04 00                	add    $0x0,%al
  f2:	00 00                	add    %al,(%rax)
  f4:	00 02                	add    %al,(%rdx)
  f6:	f0 12 00             	lock adc (%rax),%al
  f9:	00 00                	add    %al,(%rax)
  fb:	00 00                	add    %al,(%rax)
  fd:	00 88 00 00 00 01    	add    %cl,0x1000000(%rax)
 103:	57                   	push   %rdi
 104:	72 03                	jb     109 <__abi_tag-0x1bb>
 106:	00 00                	add    %al,(%rax)
 108:	04 01                	add    $0x1,%al
 10a:	55                   	push   %rbp
 10b:	7e 03                	jle    110 <__abi_tag-0x1b4>
 10d:	00 00                	add    %al,(%rax)
 10f:	04 01                	add    $0x1,%al
 111:	54                   	push   %rsp
 112:	89 03                	mov    %eax,(%rbx)
 114:	00 00                	add    %al,(%rax)
 116:	04 01                	add    $0x1,%al
 118:	51                   	push   %rcx
 119:	94                   	xchg   %eax,%esp
 11a:	03 00                	add    (%rax),%eax
 11c:	00 05 ee 01 00 00    	add    %al,0x1ee(%rip)        # 310 <__abi_tag+0x4c>
 122:	9f                   	lahf   
 123:	03 00                	add    (%rax),%eax
 125:	00 07                	add    %al,(%rdi)
 127:	f9                   	stc    
 128:	12 00                	adc    (%rax),%al
 12a:	00 00                	add    %al,(%rax)
 12c:	00 00                	add    %al,(%rax)
 12e:	00 22                	add    %ah,(%rdx)
 130:	00 00                	add    %al,(%rax)
 132:	00 05 32 02 00 00    	add    %al,0x232(%rip)        # 36a <__abi_tag+0xa6>
 138:	ab                   	stos   %eax,%es:(%rdi)
 139:	03 00                	add    (%rax),%eax
 13b:	00 00                	add    %al,(%rax)
 13d:	07                   	(bad)  
 13e:	28 13                	sub    %dl,(%rbx)
 140:	00 00                	add    %al,(%rax)
 142:	00 00                	add    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	4b 00 00             	rex.WXB add %al,(%r8)
 149:	00 05 a0 02 00 00    	add    %al,0x2a0(%rip)        # 3ef <__abi_tag+0x12b>
 14f:	b8 03 00 00 07       	mov    $0x7000003,%eax
 154:	28 13                	sub    %dl,(%rbx)
 156:	00 00                	add    %al,(%rax)
 158:	00 00                	add    %al,(%rax)
 15a:	00 00                	add    %al,(%rax)
 15c:	33 00                	xor    (%rax),%eax
 15e:	00 00                	add    %al,(%rax)
 160:	05 69 02 00 00       	add    $0x269,%eax
 165:	c4 03 00 00          	(bad)
 169:	00 00                	add    %al,(%rax)
 16b:	00 02                	add    %al,(%rdx)
 16d:	80 13 00             	adcb   $0x0,(%rbx)
 170:	00 00                	add    %al,(%rax)
 172:	00 00                	add    %al,(%rax)
 174:	00 c5                	add    %al,%ch
 176:	00 00                	add    %al,(%rax)
 178:	00 01                	add    %al,(%rcx)
 17a:	57                   	push   %rdi
 17b:	2b 04 00             	sub    (%rax,%rax,1),%eax
 17e:	00 04 01             	add    %al,(%rcx,%rax,1)
 181:	55                   	push   %rbp
 182:	37                   	(bad)  
 183:	04 00                	add    $0x0,%al
 185:	00 04 01             	add    %al,(%rcx,%rax,1)
 188:	54                   	push   %rsp
 189:	42 04 00             	rex.X add $0x0,%al
 18c:	00 04 01             	add    %al,(%rcx,%rax,1)
 18f:	51                   	push   %rcx
 190:	4d 04 00             	rex.WRB add $0x0,%al
 193:	00 05 c3 02 00 00    	add    %al,0x2c3(%rip)        # 45c <__abi_tag+0x198>
 199:	63 04 00             	movsxd (%rax,%rax,1),%eax
 19c:	00 08                	add    %cl,(%rax)
 19e:	58                   	pop    %rax
 19f:	04 00                	add    $0x0,%al
 1a1:	00 07                	add    %al,(%rdi)
 1a3:	84 13                	test   %dl,(%rbx)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	00 00                	add    %al,(%rax)
 1a9:	00 00                	add    %al,(%rax)
 1ab:	63 00                	movsxd (%rax),%eax
 1ad:	00 00                	add    %al,(%rax)
 1af:	05 41 03 00 00       	add    $0x341,%eax
 1b4:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b5:	04 00                	add    $0x0,%al
 1b7:	00 00                	add    %al,(%rax)
 1b9:	07                   	(bad)  
 1ba:	f4                   	hlt    
 1bb:	13 00                	adc    (%rax),%eax
 1bd:	00 00                	add    %al,(%rax)
 1bf:	00 00                	add    %al,(%rax)
 1c1:	00 38                	add    %bh,(%rax)
 1c3:	00 00                	add    %al,(%rax)
 1c5:	00 05 78 03 00 00    	add    %al,0x378(%rip)        # 543 <__abi_tag+0x27f>
 1cb:	7c 04                	jl     1d1 <__abi_tag-0xf3>
 1cd:	00 00                	add    %al,(%rax)
 1cf:	07                   	(bad)  
 1d0:	f4                   	hlt    
 1d1:	13 00                	adc    (%rax),%eax
 1d3:	00 00                	add    %al,(%rax)
 1d5:	00 00                	add    %al,(%rax)
 1d7:	00 38                	add    %bh,(%rax)
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 05 9d 03 00 00    	add    %al,0x39d(%rip)        # 57e <__abi_tag+0x2ba>
 1e1:	88 04 00             	mov    %al,(%rax,%rax,1)
 1e4:	00 00                	add    %al,(%rax)
 1e6:	00 00                	add    %al,(%rax)
 1e8:	09 50 14             	or     %edx,0x14(%rax)
 1eb:	00 00                	add    %al,(%rax)
 1ed:	00 00                	add    %al,(%rax)
 1ef:	00 00                	add    %al,(%rax)
 1f1:	55                   	push   %rbp
 1f2:	01 00                	add    %eax,(%rax)
 1f4:	00 01                	add    %al,(%rcx)
 1f6:	57                   	push   %rdi
 1f7:	0a 02                	or     (%rdx),%al
 1f9:	00 00                	add    %al,(%rax)
 1fb:	01 5d 6b             	add    %ebx,0x6b(%rbp)
 1fe:	03 00                	add    (%rax),%eax
 200:	00 0a                	add    %cl,(%rdx)
 202:	01 55 ab             	add    %edx,-0x55(%rbp)
 205:	01 00                	add    %eax,(%rax)
 207:	00 01                	add    %al,(%rcx)
 209:	5d                   	pop    %rbp
 20a:	61                   	(bad)  
 20b:	03 00                	add    (%rax),%eax
 20d:	00 0a                	add    %cl,(%rdx)
 20f:	01 54 b4 01          	add    %edx,0x1(%rsp,%rsi,4)
 213:	00 00                	add    %al,(%rax)
 215:	01 5d 61             	add    %ebx,0x61(%rbp)
 218:	03 00                	add    (%rax),%eax
 21a:	00 0a                	add    %cl,(%rdx)
 21c:	01 51 24             	add    %edx,0x24(%rcx)
 21f:	02 00                	add    (%rax),%al
 221:	00 01                	add    %al,(%rcx)
 223:	5d                   	pop    %rbp
 224:	0b 03                	or     (%rbx),%eax
 226:	00 00                	add    %al,(%rax)
 228:	0b c2                	or     %edx,%eax
 22a:	03 00                	add    (%rax),%eax
 22c:	00 73 01             	add    %dh,0x1(%rbx)
 22f:	00 00                	add    %al,(%rax)
 231:	01 5f 8b             	add    %ebx,-0x75(%rdi)
 234:	07                   	(bad)  
 235:	00 00                	add    %al,(%rax)
 237:	0c ee                	or     $0xee,%al
 239:	01 00                	add    %eax,(%rax)
 23b:	00 01                	add    %al,(%rcx)
 23d:	60                   	(bad)  
 23e:	0b 03                	or     (%rbx),%eax
 240:	00 00                	add    %al,(%rax)
 242:	07                   	(bad)  
 243:	54                   	push   %rsp
 244:	14 00                	adc    $0x0,%al
 246:	00 00                	add    %al,(%rax)
 248:	00 00                	add    %al,(%rax)
 24a:	00 8b 00 00 00 0b    	add    %cl,0xb000000(%rbx)
 250:	60                   	(bad)  
 251:	04 00                	add    $0x0,%al
 253:	00 b6 01 00 00 01    	add    %dh,0x1000001(%rsi)
 259:	62                   	(bad)  
 25a:	0b 03                	or     (%rbx),%eax
 25c:	00 00                	add    %al,(%rax)
 25e:	00 07                	add    %al,(%rdi)
 260:	f0 14 00             	lock adc $0x0,%al
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 26b:	00 0b                	add    %cl,(%rbx)
 26d:	97                   	xchg   %eax,%edi
 26e:	04 00                	add    $0x0,%al
 270:	00 26                	add    %ah,(%rsi)
 272:	02 00                	add    (%rax),%al
 274:	00 01                	add    %al,(%rcx)
 276:	70 0b                	jo     283 <__abi_tag-0x41>
 278:	03 00                	add    (%rax),%eax
 27a:	00 07                	add    %al,(%rdi)
 27c:	f0 14 00             	lock adc $0x0,%al
 27f:	00 00                	add    %al,(%rax)
 281:	00 00                	add    %al,(%rax)
 283:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 287:	00 0b                	add    %cl,(%rbx)
 289:	bc 04 00 00 b6       	mov    $0xb6000004,%esp
 28e:	01 00                	add    %eax,(%rax)
 290:	00 01                	add    %al,(%rcx)
 292:	72 0b                	jb     29f <__abi_tag-0x25>
 294:	03 00                	add    (%rax),%eax
 296:	00 00                	add    %al,(%rax)
 298:	00 00                	add    %al,(%rax)
 29a:	09 b0 15 00 00 00    	or     %esi,0x15(%rax)
 2a0:	00 00                	add    %al,(%rax)
 2a2:	00 b8 01 00 00 01    	add    %bh,0x1000001(%rax)
 2a8:	57                   	push   %rdi
 2a9:	15 02 00 00 01       	adc    $0x1000002,%eax
 2ae:	7a 6b                	jp     31b <__abi_tag+0x57>
 2b0:	03 00                	add    (%rax),%eax
 2b2:	00 0a                	add    %cl,(%rdx)
 2b4:	01 55 ab             	add    %edx,-0x55(%rbp)
 2b7:	01 00                	add    %eax,(%rax)
 2b9:	00 01                	add    %al,(%rcx)
 2bb:	7a 61                	jp     31e <__abi_tag+0x5a>
 2bd:	03 00                	add    (%rax),%eax
 2bf:	00 0a                	add    %cl,(%rdx)
 2c1:	01 54 b4 01          	add    %edx,0x1(%rsp,%rsi,4)
 2c5:	00 00                	add    %al,(%rax)
 2c7:	01 7a 61             	add    %edi,0x61(%rdx)
 2ca:	03 00                	add    (%rax),%eax
 2cc:	00 0a                	add    %cl,(%rdx)
 2ce:	01 51 24             	add    %edx,0x24(%rcx)
 2d1:	02 00                	add    (%rax),%al
 2d3:	00 01                	add    %al,(%rcx)
 2d5:	7a 0b                	jp     2e2 <__abi_tag+0x1e>
 2d7:	03 00                	add    (%rax),%eax
 2d9:	00 0b                	add    %cl,(%rbx)
 2db:	e1 04                	loope  2e1 <__abi_tag+0x1d>
 2dd:	00 00                	add    %al,(%rax)
 2df:	73 01                	jae    2e2 <__abi_tag+0x1e>
 2e1:	00 00                	add    %al,(%rax)
 2e3:	01 7c 97 07          	add    %edi,0x7(%rdi,%rdx,4)
 2e7:	00 00                	add    %al,(%rax)
 2e9:	0c ee                	or     $0xee,%al
 2eb:	01 00                	add    %eax,(%rax)
 2ed:	00 01                	add    %al,(%rcx)
 2ef:	7d 0b                	jge    2fc <__abi_tag+0x38>
 2f1:	03 00                	add    (%rax),%eax
 2f3:	00 07                	add    %al,(%rdi)
 2f5:	b4 15                	mov    $0x15,%ah
 2f7:	00 00                	add    %al,(%rax)
 2f9:	00 00                	add    %al,(%rax)
 2fb:	00 00                	add    %al,(%rax)
 2fd:	f3 00 00             	repz add %al,(%rax)
 300:	00 0b                	add    %cl,(%rbx)
 302:	bf 05 00 00 b6       	mov    $0xb6000005,%edi
 307:	01 00                	add    %eax,(%rax)
 309:	00 01                	add    %al,(%rcx)
 30b:	7f 0b                	jg     318 <__abi_tag+0x54>
 30d:	03 00                	add    (%rax),%eax
 30f:	00 00                	add    %al,(%rax)
 311:	07                   	(bad)  
 312:	bc 16 00 00 00       	mov    $0x16,%esp
 317:	00 00                	add    %al,(%rax)
 319:	00 1d 00 00 00 0b    	add    %bl,0xb000000(%rip)        # b00031f <_end+0xaffc2c7>
 31f:	2e 06                	cs (bad) 
 321:	00 00                	add    %al,(%rax)
 323:	2a 02                	sub    (%rdx),%al
 325:	00 00                	add    %al,(%rax)
 327:	01 95 0b 03 00 00    	add    %edx,0x30b(%rbp)
 32d:	07                   	(bad)  
 32e:	bc 16 00 00 00       	mov    $0x16,%esp
 333:	00 00                	add    %al,(%rax)
 335:	00 1d 00 00 00 0b    	add    %bl,0xb000000(%rip)        # b00033b <_end+0xaffc2e3>
 33b:	f6 05 00 00 b6 01 00 	testb  $0x0,0x1b60000(%rip)        # 1b60342 <_end+0x1b5c2ea>
 342:	00 01                	add    %al,(%rcx)
 344:	97                   	xchg   %eax,%edi
 345:	0b 03                	or     (%rbx),%eax
 347:	00 00                	add    %al,(%rax)
 349:	00 00                	add    %al,(%rax)
 34b:	00 0d 75 01 00 00    	add    %cl,0x175(%rip)        # 4c6 <__abi_tag+0x202>
 351:	01 08                	add    %ecx,(%rax)
 353:	0b 03                	or     (%rbx),%eax
 355:	00 00                	add    %al,(%rax)
 357:	01 0e                	add    %ecx,(%rsi)
 359:	97                   	xchg   %eax,%edi
 35a:	01 00                	add    %eax,(%rax)
 35c:	00 01                	add    %al,(%rcx)
 35e:	08 12                	or     %dl,(%rdx)
 360:	03 00                	add    (%rax),%eax
 362:	00 0e                	add    %cl,(%rsi)
 364:	9c                   	pushfq 
 365:	01 00                	add    %eax,(%rax)
 367:	00 01                	add    %al,(%rcx)
 369:	08 19                	or     %bl,(%rcx)
 36b:	03 00                	add    (%rax),%eax
 36d:	00 00                	add    %al,(%rax)
 36f:	0f 80 01 00 00 07    	jo     7000376 <_end+0x6ffc31e>
 375:	08 0f                	or     %cl,(%rdi)
 377:	93                   	xchg   %eax,%ebx
 378:	01 00                	add    %eax,(%rax)
 37a:	00 05 04 10 1e 03    	add    %al,0x31e1004(%rip)        # 31e1384 <_end+0x31dd32c>
 380:	00 00                	add    %al,(%rax)
 382:	10 23                	adc    %ah,(%rbx)
 384:	03 00                	add    (%rax),%eax
 386:	00 0f                	add    %cl,(%rdi)
 388:	a1 01 00 00 06 01 11 	movabs 0x1a6110106000001,%eax
 38f:	a6 01 
 391:	00 00                	add    %al,(%rax)
 393:	01 11                	add    %edx,(%rcx)
 395:	01 0e                	add    %ecx,(%rsi)
 397:	ab                   	stos   %eax,%es:(%rdi)
 398:	01 00                	add    %eax,(%rax)
 39a:	00 01                	add    %al,(%rcx)
 39c:	11 61 03             	adc    %esp,0x3(%rcx)
 39f:	00 00                	add    %al,(%rax)
 3a1:	0e                   	(bad)  
 3a2:	b4 01                	mov    $0x1,%ah
 3a4:	00 00                	add    %al,(%rax)
 3a6:	01 11                	add    %edx,(%rcx)
 3a8:	61                   	(bad)  
 3a9:	03 00                	add    (%rax),%eax
 3ab:	00 0e                	add    %cl,(%rsi)
 3ad:	24 02                	and    $0x2,%al
 3af:	00 00                	add    %al,(%rax)
 3b1:	01 11                	add    %edx,(%rcx)
 3b3:	0b 03                	or     (%rbx),%eax
 3b5:	00 00                	add    %al,(%rax)
 3b7:	12 0c b6             	adc    (%rsi,%rsi,4),%cl
 3ba:	01 00                	add    %eax,(%rax)
 3bc:	00 01                	add    %al,(%rcx)
 3be:	13 0b                	adc    (%rbx),%ecx
 3c0:	03 00                	add    (%rax),%eax
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 13                	add    %dl,(%rbx)
 3c6:	66 03 00             	add    (%rax),%ax
 3c9:	00 10                	add    %dl,(%rax)
 3cb:	6b 03 00             	imul   $0x0,(%rbx),%eax
 3ce:	00 0f                	add    %cl,(%rdi)
 3d0:	ad                   	lods   %ds:(%rsi),%eax
 3d1:	01 00                	add    %eax,(%rax)
 3d3:	00 04 08             	add    %al,(%rax,%rcx,1)
 3d6:	0d b8 01 00 00       	or     $0x1b8,%eax
 3db:	01 26                	add    %esp,(%rsi)
 3dd:	6b 03 00             	imul   $0x0,(%rbx),%eax
 3e0:	00 01                	add    %al,(%rcx)
 3e2:	0e                   	(bad)  
 3e3:	ab                   	stos   %eax,%es:(%rdi)
 3e4:	01 00                	add    %eax,(%rax)
 3e6:	00 01                	add    %al,(%rcx)
 3e8:	26 61                	es (bad) 
 3ea:	03 00                	add    (%rax),%eax
 3ec:	00 0e                	add    %cl,(%rsi)
 3ee:	b4 01                	mov    $0x1,%ah
 3f0:	00 00                	add    %al,(%rax)
 3f2:	01 26                	add    %esp,(%rsi)
 3f4:	61                   	(bad)  
 3f5:	03 00                	add    (%rax),%eax
 3f7:	00 0e                	add    %cl,(%rsi)
 3f9:	24 02                	and    $0x2,%al
 3fb:	00 00                	add    %al,(%rax)
 3fd:	01 26                	add    %esp,(%rsi)
 3ff:	0b 03                	or     (%rbx),%eax
 401:	00 00                	add    %al,(%rax)
 403:	0c 73                	or     $0x73,%al
 405:	01 00                	add    %eax,(%rax)
 407:	00 01                	add    %al,(%rcx)
 409:	28 d2                	sub    %dl,%dl
 40b:	03 00                	add    (%rax),%eax
 40d:	00 12                	add    %dl,(%rdx)
 40f:	0c b6                	or     $0xb6,%al
 411:	01 00                	add    %eax,(%rax)
 413:	00 01                	add    %al,(%rcx)
 415:	39 0b                	cmp    %ecx,(%rbx)
 417:	03 00                	add    (%rax),%eax
 419:	00 00                	add    %al,(%rax)
 41b:	12 0c d7             	adc    (%rdi,%rdx,8),%cl
 41e:	01 00                	add    %eax,(%rax)
 420:	00 01                	add    %al,(%rcx)
 422:	2d 0b 03 00 00       	sub    $0x30b,%eax
 427:	12 0c b6             	adc    (%rsi,%rsi,4),%cl
 42a:	01 00                	add    %eax,(%rax)
 42c:	00 01                	add    %al,(%rcx)
 42e:	2f                   	(bad)  
 42f:	0b 03                	or     (%rbx),%eax
 431:	00 00                	add    %al,(%rax)
 433:	00 00                	add    %al,(%rax)
 435:	00 14 6b             	add    %dl,(%rbx,%rbp,2)
 438:	03 00                	add    (%rax),%eax
 43a:	00 15 de 03 00 00    	add    %dl,0x3de(%rip)        # 81e <__abi_tag+0x55a>
 440:	02 00                	add    (%rax),%al
 442:	16                   	(bad)  
 443:	c3                   	retq   
 444:	01 00                	add    %eax,(%rax)
 446:	00 08                	add    %cl,(%rax)
 448:	07                   	(bad)  
 449:	0d db 01 00 00       	or     $0x1db,%eax
 44e:	01 1b                	add    %ebx,(%rbx)
 450:	6b 03 00             	imul   $0x0,(%rbx),%eax
 453:	00 01                	add    %al,(%rcx)
 455:	0e                   	(bad)  
 456:	ab                   	stos   %eax,%es:(%rdi)
 457:	01 00                	add    %eax,(%rax)
 459:	00 01                	add    %al,(%rcx)
 45b:	1b 61 03             	sbb    0x3(%rcx),%esp
 45e:	00 00                	add    %al,(%rax)
 460:	0e                   	(bad)  
 461:	b4 01                	mov    $0x1,%ah
 463:	00 00                	add    %al,(%rax)
 465:	01 1b                	add    %ebx,(%rbx)
 467:	61                   	(bad)  
 468:	03 00                	add    (%rax),%eax
 46a:	00 0e                	add    %cl,(%rsi)
 46c:	24 02                	and    $0x2,%al
 46e:	00 00                	add    %al,(%rax)
 470:	01 1b                	add    %ebx,(%rbx)
 472:	0b 03                	or     (%rbx),%eax
 474:	00 00                	add    %al,(%rax)
 476:	0c 73                	or     $0x73,%al
 478:	01 00                	add    %eax,(%rax)
 47a:	00 01                	add    %al,(%rcx)
 47c:	1d 6b 03 00 00       	sbb    $0x36b,%eax
 481:	12 0c b6             	adc    (%rsi,%rsi,4),%cl
 484:	01 00                	add    %eax,(%rax)
 486:	00 01                	add    %al,(%rcx)
 488:	1f                   	(bad)  
 489:	0b 03                	or     (%rbx),%eax
 48b:	00 00                	add    %al,(%rax)
 48d:	00 00                	add    %al,(%rax)
 48f:	0d e3 01 00 00       	or     $0x1e3,%eax
 494:	01 44 6b 03          	add    %eax,0x3(%rbx,%rbp,2)
 498:	00 00                	add    %al,(%rax)
 49a:	01 0e                	add    %ecx,(%rsi)
 49c:	ab                   	stos   %eax,%es:(%rdi)
 49d:	01 00                	add    %eax,(%rax)
 49f:	00 01                	add    %al,(%rcx)
 4a1:	44 61                	rex.R (bad) 
 4a3:	03 00                	add    (%rax),%eax
 4a5:	00 0e                	add    %cl,(%rsi)
 4a7:	b4 01                	mov    $0x1,%ah
 4a9:	00 00                	add    %al,(%rax)
 4ab:	01 44 61 03          	add    %eax,0x3(%rcx,%riz,2)
 4af:	00 00                	add    %al,(%rax)
 4b1:	0e                   	(bad)  
 4b2:	24 02                	and    $0x2,%al
 4b4:	00 00                	add    %al,(%rax)
 4b6:	01 44 0b 03          	add    %eax,0x3(%rbx,%rcx,1)
 4ba:	00 00                	add    %al,(%rax)
 4bc:	0c ee                	or     $0xee,%al
 4be:	01 00                	add    %eax,(%rax)
 4c0:	00 01                	add    %al,(%rcx)
 4c2:	47 0b 03             	rex.RXB or (%r11),%r8d
 4c5:	00 00                	add    %al,(%rax)
 4c7:	0c 73                	or     $0x73,%al
 4c9:	01 00                	add    %eax,(%rax)
 4cb:	00 01                	add    %al,(%rcx)
 4cd:	46 96                	rex.RX xchg %eax,%esi
 4cf:	04 00                	add    $0x0,%al
 4d1:	00 12                	add    %dl,(%rdx)
 4d3:	0c b6                	or     $0xb6,%al
 4d5:	01 00                	add    %eax,(%rax)
 4d7:	00 01                	add    %al,(%rcx)
 4d9:	49 0b 03             	or     (%r11),%rax
 4dc:	00 00                	add    %al,(%rax)
 4de:	00 12                	add    %dl,(%rdx)
 4e0:	0c f3                	or     $0xf3,%al
 4e2:	01 00                	add    %eax,(%rax)
 4e4:	00 01                	add    %al,(%rcx)
 4e6:	53                   	push   %rbx
 4e7:	0b 03                	or     (%rbx),%eax
 4e9:	00 00                	add    %al,(%rax)
 4eb:	12 0c b6             	adc    (%rsi,%rsi,4),%cl
 4ee:	01 00                	add    %eax,(%rax)
 4f0:	00 01                	add    %al,(%rcx)
 4f2:	55                   	push   %rbp
 4f3:	0b 03                	or     (%rbx),%eax
 4f5:	00 00                	add    %al,(%rax)
 4f7:	00 00                	add    %al,(%rax)
 4f9:	00 14 6b             	add    %dl,(%rbx,%rbp,2)
 4fc:	03 00                	add    (%rax),%eax
 4fe:	00 15 de 03 00 00    	add    %dl,0x3de(%rip)        # 8e2 <__abi_tag+0x61e>
 504:	04 00                	add    $0x0,%al
 506:	09 70 17             	or     %esi,0x17(%rax)
 509:	00 00                	add    %al,(%rax)
 50b:	00 00                	add    %al,(%rax)
 50d:	00 00                	add    %al,(%rax)
 50f:	cc                   	int3   
 510:	04 00                	add    $0x0,%al
 512:	00 01                	add    %al,(%rcx)
 514:	57                   	push   %rdi
 515:	21 02                	and    %eax,(%rdx)
 517:	00 00                	add    %al,(%rax)
 519:	01 9e 12 03 00 00    	add    %ebx,0x312(%rsi)
 51f:	17                   	(bad)  
 520:	53                   	push   %rbx
 521:	06                   	(bad)  
 522:	00 00                	add    %al,(%rax)
 524:	97                   	xchg   %eax,%edi
 525:	01 00                	add    %eax,(%rax)
 527:	00 01                	add    %al,(%rcx)
 529:	9e                   	sahf   
 52a:	12 03                	adc    (%rbx),%al
 52c:	00 00                	add    %al,(%rax)
 52e:	17                   	(bad)  
 52f:	b5 06                	mov    $0x6,%ch
 531:	00 00                	add    %al,(%rax)
 533:	9c                   	pushfq 
 534:	01 00                	add    %eax,(%rax)
 536:	00 01                	add    %al,(%rcx)
 538:	9e                   	sahf   
 539:	19 03                	sbb    %eax,(%rbx)
 53b:	00 00                	add    %al,(%rax)
 53d:	0b 83 07 00 00 24    	or     0x24000007(%rbx),%eax
 543:	02 00                	add    (%rax),%al
 545:	00 01                	add    %al,(%rcx)
 547:	a1 0b 03 00 00 0b b9 	movabs 0x7b90b0000030b,%eax
 54e:	07 00 
 550:	00 ab 01 00 00 01    	add    %ch,0x1000001(%rbx)
 556:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 557:	66 03 00             	add    (%rax),%ax
 55a:	00 0b                	add    %cl,(%rbx)
 55c:	70 08                	jo     566 <__abi_tag+0x2a2>
 55e:	00 00                	add    %al,(%rax)
 560:	b4 01                	mov    $0x1,%ah
 562:	00 00                	add    %al,(%rax)
 564:	01 a5 66 03 00 00    	add    %esp,0x366(%rbp)
 56a:	0b fa                	or     %edx,%edi
 56c:	09 00                	or     %eax,(%rax)
 56e:	00 2f                	add    %ch,(%rdi)
 570:	02 00                	add    (%rax),%al
 572:	00 01                	add    %al,(%rcx)
 574:	ab                   	stos   %eax,%es:(%rdi)
 575:	6b 03 00             	imul   $0x0,(%rbx),%eax
 578:	00 0b                	add    %cl,(%rbx)
 57a:	03 0b                	add    (%rbx),%ecx
 57c:	00 00                	add    %al,(%rax)
 57e:	33 02                	xor    (%rdx),%eax
 580:	00 00                	add    %al,(%rax)
 582:	01 ac 6b 03 00 00 0c 	add    %ebp,0xc000003(%rbx,%rbp,2)
 589:	3a 02                	cmp    (%rdx),%al
 58b:	00 00                	add    %al,(%rax)
 58d:	01 ad 6b 03 00 00    	add    %ebp,0x36b(%rbp)
 593:	0b c8                	or     %eax,%ecx
 595:	0c 00                	or     $0x0,%al
 597:	00 41 02             	add    %al,0x2(%rcx)
 59a:	00 00                	add    %al,(%rax)
 59c:	01 ae 6b 03 00 00    	add    %ebp,0x36b(%rsi)
 5a2:	0b ec                	or     %esp,%ebp
 5a4:	0c 00                	or     $0x0,%al
 5a6:	00 48 02             	add    %cl,0x2(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	01 af 6b 03 00 00    	add    %ebp,0x36b(%rdi)
 5b1:	18 e8                	sbb    %ch,%al
 5b3:	02 00                	add    (%rax),%al
 5b5:	00 60 00             	add    %ah,0x0(%rax)
 5b8:	00 00                	add    %al,(%rax)
 5ba:	01 a1 1a 03 17 07    	add    %esp,0x717031a(%rcx)
 5c0:	00 00                	add    %al,(%rax)
 5c2:	f4                   	hlt    
 5c3:	02 00                	add    (%rax),%al
 5c5:	00 03                	add    %al,(%rbx)
 5c7:	4d 07                	rex.WRB (bad) 
 5c9:	00 00                	add    %al,(%rax)
 5cb:	ff 02                	incl   (%rdx)
 5cd:	00 00                	add    %al,(%rax)
 5cf:	00 18                	add    %bl,(%rax)
 5d1:	2a 03                	sub    (%rbx),%al
 5d3:	00 00                	add    %al,(%rax)
 5d5:	90                   	nop
 5d6:	00 00                	add    %al,(%rax)
 5d8:	00 01                	add    %al,(%rcx)
 5da:	a8 03                	test   $0x3,%al
 5dc:	03 a6 08 00 00 32    	add    0x32000008(%rsi),%esp
 5e2:	03 00                	add    (%rax),%eax
 5e4:	00 03                	add    %al,(%rbx)
 5e6:	3a 08                	cmp    (%rax),%cl
 5e8:	00 00                	add    %al,(%rax)
 5ea:	3d 03 00 00 03       	cmp    $0x3000003,%eax
 5ef:	dc 08                	fmull  (%rax)
 5f1:	00 00                	add    %al,(%rax)
 5f3:	48 03 00             	add    (%rax),%rax
 5f6:	00 06                	add    %al,(%rsi)
 5f8:	d0 00                	rolb   (%rax)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	05 ef 07 00 00       	add    $0x7ef,%eax
 601:	54                   	push   %rsp
 602:	03 00                	add    (%rax),%eax
 604:	00 00                	add    %al,(%rax)
 606:	00 18                	add    %bl,(%rax)
 608:	72 03                	jb     60d <__abi_tag+0x349>
 60a:	00 00                	add    %al,(%rax)
 60c:	10 01                	adc    %al,(%rcx)
 60e:	00 00                	add    %al,(%rax)
 610:	01 ac 13 03 1d 0a 00 	add    %ebp,0xa1d03(%rbx,%rdx,1)
 617:	00 7e 03             	add    %bh,0x3(%rsi)
 61a:	00 00                	add    %al,(%rax)
 61c:	03 40 0a             	add    0xa(%rax),%eax
 61f:	00 00                	add    %al,(%rax)
 621:	89 03                	mov    %eax,(%rbx)
 623:	00 00                	add    %al,(%rax)
 625:	03 63 0a             	add    0xa(%rbx),%esp
 628:	00 00                	add    %al,(%rax)
 62a:	94                   	xchg   %eax,%esp
 62b:	03 00                	add    (%rax),%eax
 62d:	00 05 12 09 00 00    	add    %al,0x912(%rip)        # f45 <__abi_tag+0xc81>
 633:	9f                   	lahf   
 634:	03 00                	add    (%rax),%eax
 636:	00 07                	add    %al,(%rdi)
 638:	3a 1a                	cmp    (%rdx),%bl
 63a:	00 00                	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	2a 00                	sub    (%rax),%al
 642:	00 00                	add    %al,(%rax)
 644:	05 86 0a 00 00       	add    $0xa86,%eax
 649:	ab                   	stos   %eax,%es:(%rdi)
 64a:	03 00                	add    (%rax),%eax
 64c:	00 00                	add    %al,(%rax)
 64e:	07                   	(bad)  
 64f:	6a 1a                	pushq  $0x1a
 651:	00 00                	add    %al,(%rax)
 653:	00 00                	add    %al,(%rax)
 655:	00 00                	add    %al,(%rax)
 657:	50                   	push   %rax
 658:	00 00                	add    %al,(%rax)
 65a:	00 05 e0 0a 00 00    	add    %al,0xae0(%rip)        # 1140 <__do_global_dtors_aux>
 660:	b8 03 00 00 07       	mov    $0x7000003,%eax
 665:	6a 1a                	pushq  $0x1a
 667:	00 00                	add    %al,(%rax)
 669:	00 00                	add    %al,(%rax)
 66b:	00 00                	add    %al,(%rax)
 66d:	32 00                	xor    (%rax),%al
 66f:	00 00                	add    %al,(%rax)
 671:	05 a9 0a 00 00       	add    $0xaa9,%eax
 676:	c4 03 00 00          	(bad)
 67a:	00 00                	add    %al,(%rax)
 67c:	00 18                	add    %bl,(%rax)
 67e:	e5 03                	in     $0x3,%eax
 680:	00 00                	add    %al,(%rax)
 682:	40 01 00             	rex add %eax,(%rax)
 685:	00 01                	add    %al,(%rcx)
 687:	ab                   	stos   %eax,%es:(%rdi)
 688:	10 05 d7 09 00 00    	adc    %al,0x9d7(%rip)        # 1065 <exit@plt+0x5>
 68e:	12 04 00             	adc    (%rax,%rax,1),%al
 691:	00 06                	add    %al,(%rsi)
 693:	70 01                	jo     696 <__abi_tag+0x3d2>
 695:	00 00                	add    %al,(%rax)
 697:	05 b4 09 00 00       	add    $0x9b4,%eax
 69c:	1e                   	(bad)  
 69d:	04 00                	add    $0x0,%al
 69f:	00 00                	add    %al,(%rax)
 6a1:	00 19                	add    %bl,(%rcx)
 6a3:	2b 04 00             	sub    (%rax,%rax,1),%eax
 6a6:	00 cd                	add    %cl,%ch
 6a8:	1a 00                	sbb    (%rax),%al
 6aa:	00 00                	add    %al,(%rax)
 6ac:	00 00                	add    %al,(%rax)
 6ae:	00 cc                	add    %cl,%ah
 6b0:	00 00                	add    %al,(%rax)
 6b2:	00 01                	add    %al,(%rcx)
 6b4:	ad                   	lods   %ds:(%rsi),%eax
 6b5:	13 03                	adc    (%rbx),%eax
 6b7:	48 0c 00             	rex.W or $0x0,%al
 6ba:	00 37                	add    %dh,(%rdi)
 6bc:	04 00                	add    $0x0,%al
 6be:	00 03                	add    %al,(%rbx)
 6c0:	25 0c 00 00 42       	and    $0x4200000c,%eax
 6c5:	04 00                	add    $0x0,%al
 6c7:	00 03                	add    %al,(%rbx)
 6c9:	02 0c 00             	add    (%rax,%rax,1),%cl
 6cc:	00 4d 04             	add    %cl,0x4(%rbp)
 6cf:	00 00                	add    %al,(%rax)
 6d1:	08 58 04             	or     %bl,0x4(%rax)
 6d4:	00 00                	add    %al,(%rax)
 6d6:	05 84 0b 00 00       	add    $0xb84,%eax
 6db:	63 04 00             	movsxd (%rax,%rax,1),%eax
 6de:	00 07                	add    %al,(%rdi)
 6e0:	cd 1a                	int    $0x1a
 6e2:	00 00                	add    %al,(%rax)
 6e4:	00 00                	add    %al,(%rax)
 6e6:	00 00                	add    %al,(%rax)
 6e8:	5e                   	pop    %rsi
 6e9:	00 00                	add    %al,(%rax)
 6eb:	00 05 4d 0b 00 00    	add    %al,0xb4d(%rip)        # 123e <dotprod+0x6e>
 6f1:	6f                   	outsl  %ds:(%rsi),(%dx)
 6f2:	04 00                	add    $0x0,%al
 6f4:	00 00                	add    %al,(%rax)
 6f6:	07                   	(bad)  
 6f7:	39 1b                	cmp    %ebx,(%rbx)
 6f9:	00 00                	add    %al,(%rax)
 6fb:	00 00                	add    %al,(%rax)
 6fd:	00 00                	add    %al,(%rax)
 6ff:	3e 00 00             	add    %al,%ds:(%rax)
 702:	00 05 6b 0c 00 00    	add    %al,0xc6b(%rip)        # 1373 <dotprod_2x+0x83>
 708:	7c 04                	jl     70e <__abi_tag+0x44a>
 70a:	00 00                	add    %al,(%rax)
 70c:	07                   	(bad)  
 70d:	39 1b                	cmp    %ebx,(%rbx)
 70f:	00 00                	add    %al,(%rax)
 711:	00 00                	add    %al,(%rax)
 713:	00 00                	add    %al,(%rax)
 715:	3e 00 00             	add    %al,%ds:(%rax)
 718:	00 05 90 0c 00 00    	add    %al,0xc90(%rip)        # 13ae <dotprod_4x+0x2e>
 71e:	88 04 00             	mov    %al,(%rax,%rax,1)
 721:	00 00                	add    %al,(%rax)
 723:	00 00                	add    %al,(%rax)
 725:	1a 5e 07             	sbb    0x7(%rsi),%bl
 728:	00 00                	add    %al,(%rax)
 72a:	aa                   	stos   %al,%es:(%rdi)
 72b:	17                   	(bad)  
 72c:	00 00                	add    %al,(%rax)
 72e:	00 00                	add    %al,(%rax)
 730:	00 00                	add    %al,(%rax)
 732:	1b 01                	sbb    (%rcx),%eax
 734:	54                   	push   %rsp
 735:	02 73 00             	add    0x0(%rbx),%dh
 738:	1b 01                	sbb    (%rcx),%eax
 73a:	55                   	push   %rbp
 73b:	02 10                	add    (%rax),%dl
 73d:	40 00 1a             	add    %bl,(%rdx)
 740:	5e                   	pop    %rsi
 741:	07                   	(bad)  
 742:	00 00                	add    %al,(%rax)
 744:	ba 17 00 00 00       	mov    $0x17,%edx
 749:	00 00                	add    %al,(%rax)
 74b:	00 1b                	add    %bl,(%rbx)
 74d:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 751:	00 1b                	add    %bl,(%rbx)
 753:	01 55 02             	add    %edx,0x2(%rbp)
 756:	10 40 00             	adc    %al,0x0(%rax)
 759:	1a 84 01 00 00 a7 1b 	sbb    0x1ba70000(%rcx,%rax,1),%al
 760:	00 00                	add    %al,(%rax)
 762:	00 00                	add    %al,(%rax)
 764:	00 00                	add    %al,(%rax)
 766:	1b 01                	sbb    (%rcx),%eax
 768:	51                   	push   %rcx
 769:	02 7f 00             	add    0x0(%rdi),%bh
 76c:	1b 01                	sbb    (%rcx),%eax
 76e:	54                   	push   %rsp
 76f:	02 73 00             	add    0x0(%rbx),%dh
 772:	1b 01                	sbb    (%rcx),%eax
 774:	55                   	push   %rbp
 775:	02 7e 00             	add    0x0(%rsi),%bh
 778:	00 1a                	add    %bl,(%rdx)
 77a:	36 02 00             	add    %ss:(%rax),%al
 77d:	00 bb 1b 00 00 00    	add    %bh,0x1b(%rbx)
 783:	00 00                	add    %al,(%rax)
 785:	00 1b                	add    %bl,(%rbx)
 787:	01 51 02             	add    %edx,0x2(%rcx)
 78a:	7f 00                	jg     78c <__abi_tag+0x4c8>
 78c:	1b 01                	sbb    (%rcx),%eax
 78e:	54                   	push   %rsp
 78f:	02 73 00             	add    0x0(%rbx),%dh
 792:	1b 01                	sbb    (%rcx),%eax
 794:	55                   	push   %rbp
 795:	02 7e 00             	add    0x0(%rsi),%bh
 798:	00 1a                	add    %bl,(%rdx)
 79a:	7d 07                	jge    7a3 <__abi_tag+0x4df>
 79c:	00 00                	add    %al,(%rax)
 79e:	28 1c 00             	sub    %bl,(%rax,%rax,1)
 7a1:	00 00                	add    %al,(%rax)
 7a3:	00 00                	add    %al,(%rax)
 7a5:	00 1b                	add    %bl,(%rbx)
 7a7:	01 55 02             	add    %edx,0x2(%rbp)
 7aa:	7e 00                	jle    7ac <__abi_tag+0x4e8>
 7ac:	00 1a                	add    %bl,(%rdx)
 7ae:	7d 07                	jge    7b7 <__abi_tag+0x4f3>
 7b0:	00 00                	add    %al,(%rax)
 7b2:	30 1c 00             	xor    %bl,(%rax,%rax,1)
 7b5:	00 00                	add    %al,(%rax)
 7b7:	00 00                	add    %al,(%rax)
 7b9:	00 1b                	add    %bl,(%rbx)
 7bb:	01 55 02             	add    %edx,0x2(%rbp)
 7be:	73 00                	jae    7c0 <__abi_tag+0x4fc>
 7c0:	00 00                	add    %al,(%rax)
 7c2:	1c f7                	sbb    $0xf7,%al
 7c4:	01 00                	add    %eax,(%rax)
 7c6:	00 02                	add    %al,(%rdx)
 7c8:	4a 02 75 07          	rex.WX add 0x7(%rbp),%sil
 7cc:	00 00                	add    %al,(%rax)
 7ce:	1d 76 07 00 00       	sbb    $0x776,%eax
 7d3:	1d 76 07 00 00       	sbb    $0x776,%eax
 7d8:	00 1e                	add    %bl,(%rsi)
 7da:	0f 85 01 00 00 07    	jne    70007e1 <_end+0x6ffc789>
 7e0:	08 1f                	or     %bl,(%rdi)
 7e2:	05 02 00 00 02       	add    $0x2000002,%eax
 7e7:	35 02 1d 75 07       	xor    $0x7751d02,%eax
 7ec:	00 00                	add    %al,(%rax)
 7ee:	00 14 6b             	add    %dl,(%rbx,%rbp,2)
 7f1:	03 00                	add    (%rax),%eax
 7f3:	00 15 de 03 00 00    	add    %dl,0x3de(%rip)        # bd7 <__abi_tag+0x913>
 7f9:	08 00                	or     %al,(%rax)
 7fb:	14 6b                	adc    $0x6b,%al
 7fd:	03 00                	add    (%rax),%eax
 7ff:	00 15 de 03 00 00    	add    %dl,0x3de(%rip)        # be3 <__abi_tag+0x91f>
 805:	10 00                	adc    %al,(%rax)
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
  62:	01 11                	add    %edx,(%rcx)
  64:	01 12                	add    %edx,(%rdx)
  66:	06                   	(bad)  
  67:	40 18 97 42 19 31 13 	sbb    %dl,0x13311942(%rdi)
  6e:	00 00                	add    %al,(%rax)
  70:	03 05 00 02 17 31    	add    0x31170200(%rip),%eax        # 31170276 <_end+0x3116c21e>
  76:	13 00                	adc    (%rax),%eax
  78:	00 04 05 00 02 18 31 	add    %al,0x31180200(,%rax,1)
  7f:	13 00                	adc    (%rax),%eax
  81:	00 05 34 00 02 17    	add    %al,0x17020034(%rip)        # 170200bb <_end+0x1701c063>
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
  e6:	00 0d 2e 01 03 0e    	add    %cl,0xe03012e(%rip)        # e03021a <_end+0xe02c1c2>
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
 17f:	89 82 01 01 31 13    	mov    %eax,0x13310101(%rdx)
 185:	11 01                	adc    %eax,(%rcx)
 187:	00 00                	add    %al,(%rax)
 189:	1b 8a 82 01 00 02    	sbb    0x2000182(%rdx),%ecx
 18f:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 195:	1c 2e                	sbb    $0x2e,%al
 197:	01 03                	add    %eax,(%rbx)
 199:	0e                   	(bad)  
 19a:	3a 0b                	cmp    (%rbx),%cl
 19c:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491ac9 <_end+0x1348da71>
 1a2:	3c 19                	cmp    $0x19,%al
 1a4:	3f                   	(bad)  
 1a5:	19 00                	sbb    %eax,(%rax)
 1a7:	00 1d 05 00 49 13    	add    %bl,0x13490005(%rip)        # 134901b2 <_end+0x1348c15a>
 1ad:	00 00                	add    %al,(%rax)
 1af:	1e                   	(bad)  
 1b0:	0f 00 00             	sldt   (%rax)
 1b3:	00 1f                	add    %bl,(%rdi)
 1b5:	2e 01 03             	add    %eax,%cs:(%rbx)
 1b8:	0e                   	(bad)  
 1b9:	3a 0b                	cmp    (%rbx),%cl
 1bb:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1ae8 <_end+0x193bda90>
 1c1:	3f                   	(bad)  
 1c2:	19 00                	sbb    %eax,(%rax)
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
  7c:	01 c6                	add    %eax,%esi
  7e:	05 00 00 04 00       	add    $0x40000,%eax
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
  d8:	31 05 0a 06 4a 05    	xor    %eax,0x54a060a(%rip)        # 54a06e8 <_end+0x549c690>
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
  fb:	13 05 11 06 08 66    	adc    0x66080611(%rip),%eax        # 66080712 <_end+0x6607c6ba>
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
 12e:	0f 58 05 07 4a 05 0a 	addps  0xa054a07(%rip),%xmm0        # a054b3c <_end+0xa050ae4>
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
 1aa:	20 05 07 06 ac 03    	and    %al,0x3ac0607(%rip)        # 3ac07b7 <_end+0x3abc75f>
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
 22c:	32 05 07 06 4a 05    	xor    0x54a0607(%rip),%al        # 54a0839 <_end+0x549c7e1>
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
 3d1:	86 05 13 4b 05 11    	xchg   %al,0x11054b13(%rip)        # 11054eea <_end+0x11050e92>
 3d7:	06                   	(bad)  
 3d8:	58                   	pop    %rax
 3d9:	05 09 58 05 34       	add    $0x34055809,%eax
 3de:	06                   	(bad)  
 3df:	49 05 2f 06 4a 03    	rex.WB add $0x34a062f,%rax
 3e5:	e9 7e 74 05 0a       	jmpq   a057868 <_end+0xa053810>
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
 43b:	7e 90                	jle    3cd <__abi_tag+0x109>
 43d:	05 07 06 3c 05       	add    $0x53c0607,%eax
 442:	12 06                	adc    (%rsi),%al
 444:	69 05 0a 06 4a 05 23 	imul   $0x97030623,0x54a060a(%rip),%eax        # 54a0a58 <_end+0x549ca00>
 44b:	06 03 97 
 44e:	01 e4                	add    %esp,%esp
 450:	05 0f 06 82 06       	add    $0x682060f,%eax
 455:	f3 05 24 03 ee 7e    	repz add $0x7eee0324,%eax
 45b:	f2 05 03 06 3c 03    	repnz add $0x33c0603,%eax
 461:	6d                   	insl   (%dx),%es:(%rdi)
 462:	82                   	(bad)  
 463:	05 13 06 03 3f       	add    $0x3f030613,%eax
 468:	08 2e                	or     %ch,(%rsi)
 46a:	06                   	(bad)  
 46b:	03 41 4a             	add    0x4a(%rcx),%eax
 46e:	05 03 06 03 13       	add    $0x13030603,%eax
 473:	58                   	pop    %rax
 474:	06                   	(bad)  
 475:	03 6d 08             	add    0x8(%rbp),%ebp
 478:	f2 03 13             	repnz add (%rbx),%edx
 47b:	74 05                	je     482 <__abi_tag+0x1be>
 47d:	0c 06                	or     $0x6,%al
 47f:	02 24 14             	add    (%rsp,%rdx,1),%ah
 482:	c9                   	leaveq 
 483:	ab                   	stos   %eax,%es:(%rdi)
 484:	d7                   	xlat   %ds:(%rbx)
 485:	b9 d7 b9 d7 05       	mov    $0x5d7b9d7,%ecx
 48a:	2a b7 05 0c 02 2a    	sub    0x2a020c05(%rdi),%dh
 490:	14 c9                	adc    $0xc9,%al
 492:	05 2a a9 05 03       	add    $0x305a92a,%eax
 497:	06                   	(bad)  
 498:	90                   	nop
 499:	03 6d 58             	add    0x58(%rbp),%ebp
 49c:	05 0c 06 03 15       	add    $0x1503060c,%eax
 4a1:	08 90 4b 05 2a 47    	or     %dl,0x472a054b(%rax)
 4a7:	05 24 06 4a 05       	add    $0x54a0624,%eax
 4ac:	03 3c 06             	add    (%rsi,%rax,1),%edi
 4af:	03 0c 2e             	add    (%rsi,%rbp,1),%ecx
 4b2:	06                   	(bad)  
 4b3:	03 61 66             	add    0x66(%rcx),%esp
 4b6:	03 1f                	add    (%rdi),%ebx
 4b8:	ac                   	lods   %ds:(%rsi),%al
 4b9:	05 0a 06 02 3e       	add    $0x3e02060a,%eax
 4be:	13 05 11 06 08 9e    	adc    -0x61f7f9ef(%rip),%eax        # ffffffff9e080ad5 <_end+0xffffffff9e07ca7d>
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
 4f1:	0f 66 05 07 4a 05 0a 	pcmpgtd 0xa054a07(%rip),%mm0        # a054eff <_end+0xa050ea7>
 4f8:	4a 05 0f 74 05 07    	rex.WX add $0x705740f,%rax
 4fe:	4a 05 03 06 49 06    	rex.WX add $0x6490603,%rax
 504:	03 61 08             	add    0x8(%rcx),%esp
 507:	20 05 29 03 1f 9e    	and    %al,-0x61e0fcd7(%rip)        # ffffffff9e1f0836 <_end+0xffffffff9e1ec7de>
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
 53d:	ba 05 13 06 66       	mov    $0x66061305,%edx
 542:	05 11 58 05 09       	add    $0x9055811,%eax
 547:	4a 05 2f 06 48 05    	rex.WX add $0x548062f,%rax
 54d:	28 06                	sub    %al,(%rsi)
 54f:	4a 05 07 3c 05 13    	rex.WX add $0x13053c07,%rax
 555:	06                   	(bad)  
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
 5a0:	00 f2                	add    %dh,%dl
 5a2:	06                   	(bad)  
 5a3:	03 b7 7f 66 05 14    	add    0x1405667f(%rdi),%esi
 5a9:	06                   	(bad)  
 5aa:	03 cb                	add    %ebx,%ecx
 5ac:	00 c8                	add    %cl,%al
 5ae:	05 18 59 05 14       	add    $0x14055918,%eax
 5b3:	65 05 18 bb 05 14    	gs add $0x1405bb18,%eax
 5b9:	73 05                	jae    5c0 <__abi_tag+0x2fc>
 5bb:	0c 06                	or     $0x6,%al
 5bd:	ac                   	lods   %ds:(%rsi),%al
 5be:	05 18 06 4b 05       	add    $0x54b0618,%eax
 5c3:	0c 06                	or     $0x6,%al
 5c5:	08 12                	or     %dl,(%rdx)
 5c7:	05 2b 06 47 05       	add    $0x547062b,%eax
 5cc:	24 06                	and    $0x6,%al
 5ce:	4a 05 03 3c 05 07    	rex.WX add $0x7053c03,%rax
 5d4:	06                   	(bad)  
 5d5:	36 05 09 06 82 05    	ss add $0x5820609,%eax
 5db:	07                   	(bad)  
 5dc:	4a 05 2e 06 32 05    	rex.WX add $0x532062e,%rax
 5e2:	07                   	(bad)  
 5e3:	06                   	(bad)  
 5e4:	4a 05 13 06 2f 05    	rex.WX add $0x52f0613,%rax
 5ea:	11 06                	adc    %eax,(%rsi)
 5ec:	d6                   	(bad)  
 5ed:	05 09 74 05 11       	add    $0x11057409,%eax
 5f2:	4a 05 13 74 05 11    	rex.WX add $0x11057413,%rax
 5f8:	74 05                	je     5ff <__abi_tag+0x33b>
 5fa:	09 74 03 aa          	or     %esi,-0x56(%rbx,%rax,1)
 5fe:	7f 82                	jg     582 <__abi_tag+0x2be>
 600:	05 0a 06 03 c6       	add    $0xc603060a,%eax
 605:	00 66 05             	add    %ah,0x5(%rsi)
 608:	16                   	(bad)  
 609:	03 13                	add    (%rbx),%edx
 60b:	4a 05 0f 06 4a 05    	rex.WX add $0x54a060f,%rax
 611:	1d ba 03 a7 7f       	sbb    $0x7fa703ba,%eax
 616:	4a 05 13 06 03 ae    	rex.WX add $0xffffffffae030613,%rax
 61c:	01 66 06             	add    %esp,0x6(%rsi)
 61f:	03 d2                	add    %edx,%edx
 621:	7e d6                	jle    5f9 <__abi_tag+0x335>
 623:	05 14 06 03 af       	add    $0xaf030614,%eax
 628:	01 66 06             	add    %esp,0x6(%rsi)
 62b:	03 d1                	add    %ecx,%edx
 62d:	7e d6                	jle    605 <__abi_tag+0x341>
 62f:	05 03 06 03 b2       	add    $0xb2030603,%eax
 634:	01 58 08             	add    %ebx,0x8(%rax)
 637:	2f                   	(bad)  
 638:	08 2f                	or     %ch,(%rdi)
 63a:	08 2f                	or     %ch,(%rdi)
 63c:	08 3d 08 31 83 84    	or     %bh,-0x7b7ccef8(%rip)        # ffffffff8483374a <_end+0xffffffff8482f6f2>
 642:	02 0c 00             	add    (%rax,%rax,1),%cl
 645:	01 01                	add    %eax,(%rcx)

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
 1f7:	61                   	(bad)  
 1f8:	6c                   	insb   (%dx),%es:(%rdi)
 1f9:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
 200:	6c                   	insb   (%dx),%es:(%rdi)
 201:	6c                   	insb   (%dx),%es:(%rdi)
 202:	6f                   	outsl  %ds:(%rsi),(%dx)
 203:	63 00                	movsxd (%rax),%eax
 205:	66 72 65             	data16 jb 26d <__abi_tag-0x57>
 208:	65 00 64 6f 74       	add    %ah,%gs:0x74(%rdi,%rbp,2)
 20d:	70 72                	jo     281 <__abi_tag-0x43>
 20f:	6f                   	outsl  %ds:(%rsi),(%dx)
 210:	64 5f                	fs pop %rdi
 212:	38 78 00             	cmp    %bh,0x0(%rax)
 215:	64 6f                	outsl  %fs:(%rsi),(%dx)
 217:	74 70                	je     289 <__abi_tag-0x3b>
 219:	72 6f                	jb     28a <__abi_tag-0x3a>
 21b:	64 5f                	fs pop %rdi
 21d:	31 36                	xor    %esi,(%rsi)
 21f:	78 00                	js     221 <__abi_tag-0xa3>
 221:	6d                   	insl   (%dx),%es:(%rdi)
 222:	61                   	(bad)  
 223:	69 6e 00 6e 5f 38 00 	imul   $0x385f6e,0x0(%rsi),%ebp
 22a:	6e                   	outsb  %ds:(%rsi),(%dx)
 22b:	5f                   	pop    %rdi
 22c:	31 36                	xor    %esi,(%rsi)
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
 65b:	e6 05                	out    %al,$0x5
 65d:	00 00                	add    %al,(%rax)
 65f:	00 00                	add    %al,(%rax)
 661:	00 00                	add    %al,(%rax)
 663:	01 00                	add    %eax,(%rax)
 665:	55                   	push   %rbp
 666:	e6 05                	out    %al,$0x5
 668:	00 00                	add    %al,(%rax)
 66a:	00 00                	add    %al,(%rax)
 66c:	00 00                	add    %al,(%rax)
 66e:	6c                   	insb   (%dx),%es:(%rdi)
 66f:	08 00                	or     %al,(%rax)
 671:	00 00                	add    %al,(%rax)
 673:	00 00                	add    %al,(%rax)
 675:	00 04 00             	add    %al,(%rax,%rax,1)
 678:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 67c:	6c                   	insb   (%dx),%es:(%rdi)
 67d:	08 00                	or     %al,(%rax)
 67f:	00 00                	add    %al,(%rax)
 681:	00 00                	add    %al,(%rax)
 683:	00 71 08             	add    %dh,0x8(%rcx)
 686:	00 00                	add    %al,(%rax)
 688:	00 00                	add    %al,(%rax)
 68a:	00 00                	add    %al,(%rax)
 68c:	01 00                	add    %eax,(%rax)
 68e:	55                   	push   %rbp
 68f:	71 08                	jno    699 <__abi_tag+0x3d5>
 691:	00 00                	add    %al,(%rax)
 693:	00 00                	add    %al,(%rax)
 695:	00 00                	add    %al,(%rax)
 697:	9c                   	pushfq 
 698:	0a 00                	or     (%rax),%al
 69a:	00 00                	add    %al,(%rax)
 69c:	00 00                	add    %al,(%rax)
 69e:	00 04 00             	add    %al,(%rax,%rax,1)
 6a1:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 6b5:	d0 05 00 00 00 00    	rolb   0x0(%rip)        # 6bb <__abi_tag+0x3f7>
 6bb:	00 00                	add    %al,(%rax)
 6bd:	e8 05 00 00 00       	callq  6c7 <__abi_tag+0x403>
 6c2:	00 00                	add    %al,(%rax)
 6c4:	00 01                	add    %al,(%rcx)
 6c6:	00 54 e8 05          	add    %dl,0x5(%rax,%rbp,8)
 6ca:	00 00                	add    %al,(%rax)
 6cc:	00 00                	add    %al,(%rax)
 6ce:	00 00                	add    %al,(%rax)
 6d0:	6c                   	insb   (%dx),%es:(%rdi)
 6d1:	08 00                	or     %al,(%rax)
 6d3:	00 00                	add    %al,(%rax)
 6d5:	00 00                	add    %al,(%rax)
 6d7:	00 04 00             	add    %al,(%rax,%rax,1)
 6da:	f3 01 54 9f 6c       	repz add %edx,0x6c(%rdi,%rbx,4)
 6df:	08 00                	or     %al,(%rax)
 6e1:	00 00                	add    %al,(%rax)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	00 76 08             	add    %dh,0x8(%rsi)
 6e8:	00 00                	add    %al,(%rax)
 6ea:	00 00                	add    %al,(%rax)
 6ec:	00 00                	add    %al,(%rax)
 6ee:	01 00                	add    %eax,(%rax)
 6f0:	54                   	push   %rsp
 6f1:	76 08                	jbe    6fb <__abi_tag+0x437>
 6f3:	00 00                	add    %al,(%rax)
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 00                	add    %al,(%rax)
 6f9:	9c                   	pushfq 
 6fa:	0a 00                	or     (%rax),%al
 6fc:	00 00                	add    %al,(%rax)
 6fe:	00 00                	add    %al,(%rax)
 700:	00 04 00             	add    %al,(%rax,%rax,1)
 703:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
 714:	00 00                	add    %al,(%rax)
 716:	00 d0                	add    %dl,%al
 718:	05 00 00 00 00       	add    $0x0,%eax
 71d:	00 00                	add    %al,(%rax)
 71f:	e6 05                	out    %al,$0x5
 721:	00 00                	add    %al,(%rax)
 723:	00 00                	add    %al,(%rax)
 725:	00 00                	add    %al,(%rax)
 727:	01 00                	add    %eax,(%rax)
 729:	55                   	push   %rbp
 72a:	6c                   	insb   (%dx),%es:(%rdi)
 72b:	08 00                	or     %al,(%rax)
 72d:	00 00                	add    %al,(%rax)
 72f:	00 00                	add    %al,(%rax)
 731:	00 71 08             	add    %dh,0x8(%rcx)
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	00 00                	add    %al,(%rax)
 73a:	01 00                	add    %eax,(%rax)
 73c:	55                   	push   %rbp
	...
 74d:	d0 05 00 00 00 00    	rolb   0x0(%rip)        # 753 <__abi_tag+0x48f>
 753:	00 00                	add    %al,(%rax)
 755:	e8 05 00 00 00       	callq  75f <__abi_tag+0x49b>
 75a:	00 00                	add    %al,(%rax)
 75c:	00 01                	add    %al,(%rcx)
 75e:	00 54 6c 08          	add    %dl,0x8(%rsp,%rbp,2)
 762:	00 00                	add    %al,(%rax)
 764:	00 00                	add    %al,(%rax)
 766:	00 00                	add    %al,(%rax)
 768:	76 08                	jbe    772 <__abi_tag+0x4ae>
 76a:	00 00                	add    %al,(%rax)
 76c:	00 00                	add    %al,(%rax)
 76e:	00 00                	add    %al,(%rax)
 770:	01 00                	add    %eax,(%rax)
 772:	54                   	push   %rsp
	...
 783:	f5                   	cmc    
 784:	05 00 00 00 00       	add    $0x0,%eax
 789:	00 00                	add    %al,(%rax)
 78b:	6c                   	insb   (%dx),%es:(%rdi)
 78c:	08 00                	or     %al,(%rax)
 78e:	00 00                	add    %al,(%rax)
 790:	00 00                	add    %al,(%rax)
 792:	00 01                	add    %al,(%rcx)
 794:	00 5f 76             	add    %bl,0x76(%rdi)
 797:	08 00                	or     %al,(%rax)
 799:	00 00                	add    %al,(%rax)
 79b:	00 00                	add    %al,(%rax)
 79d:	00 9b 0a 00 00 00    	add    %bl,0xa(%rbx)
 7a3:	00 00                	add    %al,(%rax)
 7a5:	00 01                	add    %al,(%rcx)
 7a7:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 7b6:	00 00                	add    %al,(%rax)
 7b8:	00 0d 06 00 00 00    	add    %cl,0x6(%rip)        # 7c4 <__abi_tag+0x500>
 7be:	00 00                	add    %al,(%rax)
 7c0:	00 6c 08 00          	add    %ch,0x0(%rax,%rcx,1)
 7c4:	00 00                	add    %al,(%rax)
 7c6:	00 00                	add    %al,(%rax)
 7c8:	00 01                	add    %al,(%rcx)
 7ca:	00 5e 76             	add    %bl,0x76(%rsi)
 7cd:	08 00                	or     %al,(%rax)
 7cf:	00 00                	add    %al,(%rax)
 7d1:	00 00                	add    %al,(%rax)
 7d3:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
 7d9:	00 00                	add    %al,(%rax)
 7db:	00 01                	add    %al,(%rcx)
 7dd:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 7ec:	00 00                	add    %al,(%rax)
 7ee:	00 1d 06 00 00 00    	add    %bl,0x6(%rip)        # 7fa <__abi_tag+0x536>
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 2f                	add    %ch,(%rdi)
 7f8:	06                   	(bad)  
 7f9:	00 00                	add    %al,(%rax)
 7fb:	00 00                	add    %al,(%rax)
 7fd:	00 00                	add    %al,(%rax)
 7ff:	02 00                	add    (%rax),%al
 801:	30 9f 44 06 00 00    	xor    %bl,0x644(%rdi)
 807:	00 00                	add    %al,(%rax)
 809:	00 00                	add    %al,(%rax)
 80b:	5a                   	pop    %rdx
 80c:	07                   	(bad)  
 80d:	00 00                	add    %al,(%rax)
 80f:	00 00                	add    %al,(%rax)
 811:	00 00                	add    %al,(%rax)
 813:	02 00                	add    (%rax),%al
 815:	30 9f 5a 07 00 00    	xor    %bl,0x75a(%rdi)
 81b:	00 00                	add    %al,(%rax)
 81d:	00 00                	add    %al,(%rax)
 81f:	71 07                	jno    828 <__abi_tag+0x564>
 821:	00 00                	add    %al,(%rax)
 823:	00 00                	add    %al,(%rax)
 825:	00 00                	add    %al,(%rax)
 827:	01 00                	add    %eax,(%rax)
 829:	50                   	push   %rax
	...
 83a:	1d 06 00 00 00       	sbb    $0x6,%eax
 83f:	00 00                	add    %al,(%rax)
 841:	00 2f                	add    %ch,(%rdi)
 843:	06                   	(bad)  
 844:	00 00                	add    %al,(%rax)
 846:	00 00                	add    %al,(%rax)
 848:	00 00                	add    %al,(%rax)
 84a:	01 00                	add    %eax,(%rax)
 84c:	53                   	push   %rbx
 84d:	44 06                	rex.R (bad) 
 84f:	00 00                	add    %al,(%rax)
 851:	00 00                	add    %al,(%rax)
 853:	00 00                	add    %al,(%rax)
 855:	71 07                	jno    85e <__abi_tag+0x59a>
 857:	00 00                	add    %al,(%rax)
 859:	00 00                	add    %al,(%rax)
 85b:	00 00                	add    %al,(%rax)
 85d:	01 00                	add    %eax,(%rax)
 85f:	53                   	push   %rbx
	...
 870:	1d 06 00 00 00       	sbb    $0x6,%eax
 875:	00 00                	add    %al,(%rax)
 877:	00 6c 08 00          	add    %ch,0x0(%rax,%rcx,1)
 87b:	00 00                	add    %al,(%rax)
 87d:	00 00                	add    %al,(%rax)
 87f:	00 01                	add    %al,(%rcx)
 881:	00 53 76             	add    %dl,0x76(%rbx)
 884:	08 00                	or     %al,(%rax)
 886:	00 00                	add    %al,(%rax)
 888:	00 00                	add    %al,(%rax)
 88a:	00 97 0a 00 00 00    	add    %dl,0xa(%rdi)
 890:	00 00                	add    %al,(%rax)
 892:	00 01                	add    %al,(%rcx)
 894:	00 53 00             	add    %dl,0x0(%rbx)
	...
 8a3:	00 00                	add    %al,(%rax)
 8a5:	00 1d 06 00 00 00    	add    %bl,0x6(%rip)        # 8b1 <__abi_tag+0x5ed>
 8ab:	00 00                	add    %al,(%rax)
 8ad:	00 2f                	add    %ch,(%rdi)
 8af:	06                   	(bad)  
 8b0:	00 00                	add    %al,(%rax)
 8b2:	00 00                	add    %al,(%rax)
 8b4:	00 00                	add    %al,(%rax)
 8b6:	01 00                	add    %eax,(%rax)
 8b8:	5e                   	pop    %rsi
 8b9:	44 06                	rex.R (bad) 
 8bb:	00 00                	add    %al,(%rax)
 8bd:	00 00                	add    %al,(%rax)
 8bf:	00 00                	add    %al,(%rax)
 8c1:	71 07                	jno    8ca <__abi_tag+0x606>
 8c3:	00 00                	add    %al,(%rax)
 8c5:	00 00                	add    %al,(%rax)
 8c7:	00 00                	add    %al,(%rax)
 8c9:	01 00                	add    %eax,(%rax)
 8cb:	5e                   	pop    %rsi
	...
 8dc:	1d 06 00 00 00       	sbb    $0x6,%eax
 8e1:	00 00                	add    %al,(%rax)
 8e3:	00 2f                	add    %ch,(%rdi)
 8e5:	06                   	(bad)  
 8e6:	00 00                	add    %al,(%rax)
 8e8:	00 00                	add    %al,(%rax)
 8ea:	00 00                	add    %al,(%rax)
 8ec:	01 00                	add    %eax,(%rax)
 8ee:	5f                   	pop    %rdi
 8ef:	44 06                	rex.R (bad) 
 8f1:	00 00                	add    %al,(%rax)
 8f3:	00 00                	add    %al,(%rax)
 8f5:	00 00                	add    %al,(%rax)
 8f7:	71 07                	jno    900 <__abi_tag+0x63c>
 8f9:	00 00                	add    %al,(%rax)
 8fb:	00 00                	add    %al,(%rax)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	01 00                	add    %eax,(%rax)
 901:	5f                   	pop    %rdi
	...
 912:	3b 06                	cmp    (%rsi),%eax
 914:	00 00                	add    %al,(%rax)
 916:	00 00                	add    %al,(%rax)
 918:	00 00                	add    %al,(%rax)
 91a:	3f                   	(bad)  
 91b:	06                   	(bad)  
 91c:	00 00                	add    %al,(%rax)
 91e:	00 00                	add    %al,(%rax)
 920:	00 00                	add    %al,(%rax)
 922:	06                   	(bad)  
 923:	00 68 93             	add    %ch,-0x6d(%rax)
 926:	08 61 93             	or     %ah,-0x6d(%rcx)
 929:	08 3f                	or     %bh,(%rdi)
 92b:	06                   	(bad)  
 92c:	00 00                	add    %al,(%rax)
 92e:	00 00                	add    %al,(%rax)
 930:	00 00                	add    %al,(%rax)
 932:	44 06                	rex.R (bad) 
 934:	00 00                	add    %al,(%rax)
 936:	00 00                	add    %al,(%rax)
 938:	00 00                	add    %al,(%rax)
 93a:	05 00 93 08 61       	add    $0x61089300,%eax
 93f:	93                   	xchg   %eax,%ebx
 940:	08 8e 08 00 00 00    	or     %cl,0x8(%rsi)
 946:	00 00                	add    %al,(%rax)
 948:	00 9a 08 00 00 00    	add    %bl,0x8(%rdx)
 94e:	00 00                	add    %al,(%rax)
 950:	00 08                	add    %cl,(%rax)
 952:	00 30                	add    %dh,(%rax)
 954:	9f                   	lahf   
 955:	93                   	xchg   %eax,%ebx
 956:	08 30                	or     %dh,(%rax)
 958:	9f                   	lahf   
 959:	93                   	xchg   %eax,%ebx
 95a:	08 c4                	or     %al,%ah
 95c:	08 00                	or     %al,(%rax)
 95e:	00 00                	add    %al,(%rax)
 960:	00 00                	add    %al,(%rax)
 962:	00 c8                	add    %cl,%al
 964:	08 00                	or     %al,(%rax)
 966:	00 00                	add    %al,(%rax)
 968:	00 00                	add    %al,(%rax)
 96a:	00 06                	add    %al,(%rsi)
 96c:	00 68 93             	add    %ch,-0x6d(%rax)
 96f:	08 61 93             	or     %ah,-0x6d(%rcx)
 972:	08 c8                	or     %cl,%al
 974:	08 00                	or     %al,(%rax)
 976:	00 00                	add    %al,(%rax)
 978:	00 00                	add    %al,(%rax)
 97a:	00 ca                	add    %cl,%dl
 97c:	08 00                	or     %al,(%rax)
 97e:	00 00                	add    %al,(%rax)
 980:	00 00                	add    %al,(%rax)
 982:	00 05 00 93 08 61    	add    %al,0x61089300(%rip)        # 61089c88 <_end+0x61085c30>
 988:	93                   	xchg   %eax,%ebx
 989:	08 ca                	or     %cl,%dl
 98b:	08 00                	or     %al,(%rax)
 98d:	00 00                	add    %al,(%rax)
 98f:	00 00                	add    %al,(%rax)
 991:	00 d9                	add    %bl,%cl
 993:	08 00                	or     %al,(%rax)
 995:	00 00                	add    %al,(%rax)
 997:	00 00                	add    %al,(%rax)
 999:	00 08                	add    %cl,(%rax)
 99b:	00 30                	add    %dh,(%rax)
 99d:	9f                   	lahf   
 99e:	93                   	xchg   %eax,%ebx
 99f:	08 30                	or     %dh,(%rax)
 9a1:	9f                   	lahf   
 9a2:	93                   	xchg   %eax,%ebx
 9a3:	08 00                	or     %al,(%rax)
	...
 9b1:	00 00                	add    %al,(%rax)
 9b3:	00 76 08             	add    %dh,0x8(%rsi)
 9b6:	00 00                	add    %al,(%rax)
 9b8:	00 00                	add    %al,(%rax)
 9ba:	00 00                	add    %al,(%rax)
 9bc:	89 08                	mov    %ecx,(%rax)
 9be:	00 00                	add    %al,(%rax)
 9c0:	00 00                	add    %al,(%rax)
 9c2:	00 00                	add    %al,(%rax)
 9c4:	01 00                	add    %eax,(%rax)
 9c6:	50                   	push   %rax
	...
 9d7:	76 08                	jbe    9e1 <__abi_tag+0x71d>
 9d9:	00 00                	add    %al,(%rax)
 9db:	00 00                	add    %al,(%rax)
 9dd:	00 00                	add    %al,(%rax)
 9df:	89 08                	mov    %ecx,(%rax)
 9e1:	00 00                	add    %al,(%rax)
 9e3:	00 00                	add    %al,(%rax)
 9e5:	00 00                	add    %al,(%rax)
 9e7:	01 00                	add    %eax,(%rax)
 9e9:	67 00 00             	add    %al,(%eax)
	...
 9f8:	00 00                	add    %al,(%rax)
 9fa:	8e 08                	mov    (%rax),%cs
 9fc:	00 00                	add    %al,(%rax)
 9fe:	00 00                	add    %al,(%rax)
 a00:	00 00                	add    %al,(%rax)
 a02:	1a 09                	sbb    (%rcx),%cl
 a04:	00 00                	add    %al,(%rax)
 a06:	00 00                	add    %al,(%rax)
 a08:	00 00                	add    %al,(%rax)
 a0a:	01 00                	add    %eax,(%rax)
 a0c:	67 00 00             	add    %al,(%eax)
	...
 a1b:	00 00                	add    %al,(%rax)
 a1d:	8e 08                	mov    (%rax),%cs
 a1f:	00 00                	add    %al,(%rax)
 a21:	00 00                	add    %al,(%rax)
 a23:	00 00                	add    %al,(%rax)
 a25:	1a 09                	sbb    (%rcx),%cl
 a27:	00 00                	add    %al,(%rax)
 a29:	00 00                	add    %al,(%rax)
 a2b:	00 00                	add    %al,(%rax)
 a2d:	01 00                	add    %eax,(%rax)
 a2f:	5e                   	pop    %rsi
	...
 a40:	8e 08                	mov    (%rax),%cs
 a42:	00 00                	add    %al,(%rax)
 a44:	00 00                	add    %al,(%rax)
 a46:	00 00                	add    %al,(%rax)
 a48:	1a 09                	sbb    (%rcx),%cl
 a4a:	00 00                	add    %al,(%rax)
 a4c:	00 00                	add    %al,(%rax)
 a4e:	00 00                	add    %al,(%rax)
 a50:	01 00                	add    %eax,(%rax)
 a52:	53                   	push   %rbx
	...
 a63:	8e 08                	mov    (%rax),%cs
 a65:	00 00                	add    %al,(%rax)
 a67:	00 00                	add    %al,(%rax)
 a69:	00 00                	add    %al,(%rax)
 a6b:	1a 09                	sbb    (%rcx),%cl
 a6d:	00 00                	add    %al,(%rax)
 a6f:	00 00                	add    %al,(%rax)
 a71:	00 00                	add    %al,(%rax)
 a73:	01 00                	add    %eax,(%rax)
 a75:	5f                   	pop    %rdi
	...
 a86:	9a                   	(bad)  
 a87:	08 00                	or     %al,(%rax)
 a89:	00 00                	add    %al,(%rax)
 a8b:	00 00                	add    %al,(%rax)
 a8d:	00 ca                	add    %cl,%dl
 a8f:	08 00                	or     %al,(%rax)
 a91:	00 00                	add    %al,(%rax)
 a93:	00 00                	add    %al,(%rax)
 a95:	00 01                	add    %al,(%rcx)
 a97:	00 50 00             	add    %dl,0x0(%rax)
	...
 aa6:	00 00                	add    %al,(%rax)
 aa8:	00 ca                	add    %cl,%dl
 aaa:	08 00                	or     %al,(%rax)
 aac:	00 00                	add    %al,(%rax)
 aae:	00 00                	add    %al,(%rax)
 ab0:	00 d9                	add    %bl,%cl
 ab2:	08 00                	or     %al,(%rax)
 ab4:	00 00                	add    %al,(%rax)
 ab6:	00 00                	add    %al,(%rax)
 ab8:	00 02                	add    %al,(%rdx)
 aba:	00 30                	add    %dh,(%rax)
 abc:	9f                   	lahf   
 abd:	d9 08                	(bad)  (%rax)
 abf:	00 00                	add    %al,(%rax)
 ac1:	00 00                	add    %al,(%rax)
 ac3:	00 00                	add    %al,(%rax)
 ac5:	fc                   	cld    
 ac6:	08 00                	or     %al,(%rax)
 ac8:	00 00                	add    %al,(%rax)
 aca:	00 00                	add    %al,(%rax)
 acc:	00 01                	add    %al,(%rcx)
 ace:	00 52 00             	add    %dl,0x0(%rdx)
	...
 add:	00 00                	add    %al,(%rax)
 adf:	00 d5                	add    %dl,%ch
 ae1:	08 00                	or     %al,(%rax)
 ae3:	00 00                	add    %al,(%rax)
 ae5:	00 00                	add    %al,(%rax)
 ae7:	00 1a                	add    %bl,(%rdx)
 ae9:	09 00                	or     %eax,(%rax)
 aeb:	00 00                	add    %al,(%rax)
 aed:	00 00                	add    %al,(%rax)
 aef:	00 01                	add    %al,(%rcx)
 af1:	00 50 00             	add    %dl,0x0(%rax)
	...
 b00:	00 00                	add    %al,(%rax)
 b02:	00 1d 09 00 00 00    	add    %bl,0x9(%rip)        # b11 <__abi_tag+0x84d>
 b08:	00 00                	add    %al,(%rax)
 b0a:	00 29                	add    %ch,(%rcx)
 b0c:	09 00                	or     %eax,(%rax)
 b0e:	00 00                	add    %al,(%rax)
 b10:	00 00                	add    %al,(%rax)
 b12:	00 01                	add    %al,(%rcx)
 b14:	00 68 29             	add    %ch,0x29(%rax)
 b17:	09 00                	or     %eax,(%rax)
 b19:	00 00                	add    %al,(%rax)
 b1b:	00 00                	add    %al,(%rax)
 b1d:	00 3f                	add    %bh,(%rdi)
 b1f:	0a 00                	or     (%rax),%al
 b21:	00 00                	add    %al,(%rax)
 b23:	00 00                	add    %al,(%rax)
 b25:	00 02                	add    %al,(%rdx)
 b27:	00 77 20             	add    %dh,0x20(%rdi)
 b2a:	3f                   	(bad)  
 b2b:	0a 00                	or     (%rax),%al
 b2d:	00 00                	add    %al,(%rax)
 b2f:	00 00                	add    %al,(%rax)
 b31:	00 46 0a             	add    %al,0xa(%rsi)
 b34:	00 00                	add    %al,(%rax)
 b36:	00 00                	add    %al,(%rax)
 b38:	00 00                	add    %al,(%rax)
 b3a:	01 00                	add    %eax,(%rax)
 b3c:	61                   	(bad)  
	...
 b4d:	29 09                	sub    %ecx,(%rcx)
 b4f:	00 00                	add    %al,(%rax)
 b51:	00 00                	add    %al,(%rax)
 b53:	00 00                	add    %al,(%rax)
 b55:	39 09                	cmp    %ecx,(%rcx)
 b57:	00 00                	add    %al,(%rax)
 b59:	00 00                	add    %al,(%rax)
 b5b:	00 00                	add    %al,(%rax)
 b5d:	02 00                	add    (%rax),%al
 b5f:	30 9f 39 09 00 00    	xor    %bl,0x939(%rdi)
 b65:	00 00                	add    %al,(%rax)
 b67:	00 00                	add    %al,(%rax)
 b69:	8b 09                	mov    (%rcx),%ecx
 b6b:	00 00                	add    %al,(%rax)
 b6d:	00 00                	add    %al,(%rax)
 b6f:	00 00                	add    %al,(%rax)
 b71:	01 00                	add    %eax,(%rax)
 b73:	50                   	push   %rax
	...
 b84:	29 09                	sub    %ecx,(%rcx)
 b86:	00 00                	add    %al,(%rax)
 b88:	00 00                	add    %al,(%rax)
 b8a:	00 00                	add    %al,(%rax)
 b8c:	39 09                	cmp    %ecx,(%rcx)
 b8e:	00 00                	add    %al,(%rax)
 b90:	00 00                	add    %al,(%rax)
 b92:	00 00                	add    %al,(%rax)
 b94:	10 00                	adc    %al,(%rax)
 b96:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 b9c:	93                   	xchg   %eax,%ebx
 b9d:	08 30                	or     %dh,(%rax)
 b9f:	9f                   	lahf   
 ba0:	93                   	xchg   %eax,%ebx
 ba1:	08 30                	or     %dh,(%rax)
 ba3:	9f                   	lahf   
 ba4:	93                   	xchg   %eax,%ebx
 ba5:	08 b8 09 00 00 00    	or     %bh,0x9(%rax)
 bab:	00 00                	add    %al,(%rax)
 bad:	00 bf 09 00 00 00    	add    %bh,0x9(%rdi)
 bb3:	00 00                	add    %al,(%rax)
 bb5:	00 03                	add    %al,(%rbx)
 bb7:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
 bbb:	d7                   	xlat   %ds:(%rbx)
 bbc:	09 00                	or     %eax,(%rax)
 bbe:	00 00                	add    %al,(%rax)
 bc0:	00 00                	add    %al,(%rax)
 bc2:	00 df                	add    %bl,%bh
 bc4:	09 00                	or     %eax,(%rax)
 bc6:	00 00                	add    %al,(%rax)
 bc8:	00 00                	add    %al,(%rax)
 bca:	00 10                	add    %dl,(%rax)
 bcc:	00 30                	add    %dh,(%rax)
 bce:	9f                   	lahf   
 bcf:	93                   	xchg   %eax,%ebx
 bd0:	08 30                	or     %dh,(%rax)
 bd2:	9f                   	lahf   
 bd3:	93                   	xchg   %eax,%ebx
 bd4:	08 30                	or     %dh,(%rax)
 bd6:	9f                   	lahf   
 bd7:	93                   	xchg   %eax,%ebx
 bd8:	08 30                	or     %dh,(%rax)
 bda:	9f                   	lahf   
 bdb:	93                   	xchg   %eax,%ebx
 bdc:	08 df                	or     %bl,%bh
 bde:	09 00                	or     %eax,(%rax)
 be0:	00 00                	add    %al,(%rax)
 be2:	00 00                	add    %al,(%rax)
 be4:	00 e7                	add    %ah,%bh
 be6:	09 00                	or     %eax,(%rax)
 be8:	00 00                	add    %al,(%rax)
 bea:	00 00                	add    %al,(%rax)
 bec:	00 03                	add    %al,(%rbx)
 bee:	00 62 93             	add    %ah,-0x6d(%rdx)
 bf1:	08 00                	or     %al,(%rax)
	...
 bff:	00 00                	add    %al,(%rax)
 c01:	00 29                	add    %ch,(%rcx)
 c03:	09 00                	or     %eax,(%rax)
 c05:	00 00                	add    %al,(%rax)
 c07:	00 00                	add    %al,(%rax)
 c09:	00 9b 0a 00 00 00    	add    %bl,0xa(%rbx)
 c0f:	00 00                	add    %al,(%rax)
 c11:	00 01                	add    %al,(%rcx)
 c13:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 c22:	00 00                	add    %al,(%rax)
 c24:	00 29                	add    %ch,(%rcx)
 c26:	09 00                	or     %eax,(%rax)
 c28:	00 00                	add    %al,(%rax)
 c2a:	00 00                	add    %al,(%rax)
 c2c:	00 97 0a 00 00 00    	add    %dl,0xa(%rdi)
 c32:	00 00                	add    %al,(%rax)
 c34:	00 01                	add    %al,(%rcx)
 c36:	00 53 00             	add    %dl,0x0(%rbx)
	...
 c45:	00 00                	add    %al,(%rax)
 c47:	00 29                	add    %ch,(%rcx)
 c49:	09 00                	or     %eax,(%rax)
 c4b:	00 00                	add    %al,(%rax)
 c4d:	00 00                	add    %al,(%rax)
 c4f:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
 c55:	00 00                	add    %al,(%rax)
 c57:	00 01                	add    %al,(%rcx)
 c59:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 c68:	00 00                	add    %al,(%rax)
 c6a:	00 99 09 00 00 00    	add    %bl,0x9(%rcx)
 c70:	00 00                	add    %al,(%rax)
 c72:	00 d7                	add    %dl,%bh
 c74:	09 00                	or     %eax,(%rax)
 c76:	00 00                	add    %al,(%rax)
 c78:	00 00                	add    %al,(%rax)
 c7a:	00 03                	add    %al,(%rbx)
 c7c:	00 7f 7c             	add    %bh,0x7c(%rdi)
 c7f:	9f                   	lahf   
	...
 c90:	99                   	cltd   
 c91:	09 00                	or     %eax,(%rax)
 c93:	00 00                	add    %al,(%rax)
 c95:	00 00                	add    %al,(%rax)
 c97:	00 a6 09 00 00 00    	add    %ah,0x9(%rsi)
 c9d:	00 00                	add    %al,(%rax)
 c9f:	00 03                	add    %al,(%rbx)
 ca1:	00 7f 7d             	add    %bh,0x7d(%rdi)
 ca4:	9f                   	lahf   
 ca5:	d5                   	(bad)  
 ca6:	09 00                	or     %eax,(%rax)
 ca8:	00 00                	add    %al,(%rax)
 caa:	00 00                	add    %al,(%rax)
 cac:	00 d7                	add    %dl,%bh
 cae:	09 00                	or     %eax,(%rax)
 cb0:	00 00                	add    %al,(%rax)
 cb2:	00 00                	add    %al,(%rax)
 cb4:	00 01                	add    %al,(%rcx)
 cb6:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 cc5:	00 00                	add    %al,(%rax)
 cc7:	00 0d 0a 00 00 00    	add    %cl,0xa(%rip)        # cd7 <__abi_tag+0xa13>
 ccd:	00 00                	add    %al,(%rax)
 ccf:	00 9c 0a 00 00 00 00 	add    %bl,0x0(%rdx,%rcx,1)
 cd6:	00 00                	add    %al,(%rax)
 cd8:	02 00                	add    (%rax),%al
 cda:	77 08                	ja     ce4 <__abi_tag+0xa20>
	...
 cec:	20 0a                	and    %cl,(%rdx)
 cee:	00 00                	add    %al,(%rax)
 cf0:	00 00                	add    %al,(%rax)
 cf2:	00 00                	add    %al,(%rax)
 cf4:	9c                   	pushfq 
 cf5:	0a 00                	or     (%rax),%al
 cf7:	00 00                	add    %al,(%rax)
 cf9:	00 00                	add    %al,(%rax)
 cfb:	00 02                	add    %al,(%rdx)
 cfd:	00 77 00             	add    %dh,0x0(%rdi)
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
  68:	f5                   	cmc    
  69:	05 00 00 00 00       	add    $0x0,%eax
  6e:	00 00                	add    %al,(%rax)
  70:	6c                   	insb   (%dx),%es:(%rdi)
  71:	08 00                	or     %al,(%rax)
  73:	00 00                	add    %al,(%rax)
  75:	00 00                	add    %al,(%rax)
  77:	00 76 08             	add    %dh,0x8(%rsi)
	...
  8e:	00 00                	add    %al,(%rax)
  90:	1d 06 00 00 00       	sbb    $0x6,%eax
  95:	00 00                	add    %al,(%rax)
  97:	00 28                	add    %ch,(%rax)
  99:	06                   	(bad)  
  9a:	00 00                	add    %al,(%rax)
  9c:	00 00                	add    %al,(%rax)
  9e:	00 00                	add    %al,(%rax)
  a0:	44 06                	rex.R (bad) 
  a2:	00 00                	add    %al,(%rax)
  a4:	00 00                	add    %al,(%rax)
  a6:	00 00                	add    %al,(%rax)
  a8:	71 07                	jno    b1 <__abi_tag-0x213>
  aa:	00 00                	add    %al,(%rax)
  ac:	00 00                	add    %al,(%rax)
  ae:	00 00                	add    %al,(%rax)
  b0:	1a 09                	sbb    (%rcx),%cl
  b2:	00 00                	add    %al,(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	2d 09 00 00 00       	sub    $0x9,%eax
	...
  cd:	00 00                	add    %al,(%rax)
  cf:	00 1d 06 00 00 00    	add    %bl,0x6(%rip)        # db <__abi_tag-0x1e9>
  d5:	00 00                	add    %al,(%rax)
  d7:	00 28                	add    %ch,(%rax)
  d9:	06                   	(bad)  
  da:	00 00                	add    %al,(%rax)
  dc:	00 00                	add    %al,(%rax)
  de:	00 00                	add    %al,(%rax)
  e0:	44 06                	rex.R (bad) 
  e2:	00 00                	add    %al,(%rax)
  e4:	00 00                	add    %al,(%rax)
  e6:	00 00                	add    %al,(%rax)
  e8:	71 07                	jno    f1 <__abi_tag-0x1d3>
  ea:	00 00                	add    %al,(%rax)
  ec:	00 00                	add    %al,(%rax)
  ee:	00 00                	add    %al,(%rax)
  f0:	1a 09                	sbb    (%rcx),%cl
  f2:	00 00                	add    %al,(%rax)
  f4:	00 00                	add    %al,(%rax)
  f6:	00 00                	add    %al,(%rax)
  f8:	2d 09 00 00 00       	sub    $0x9,%eax
	...
 10d:	00 00                	add    %al,(%rax)
 10f:	00 33                	add    %dh,(%rbx)
 111:	06                   	(bad)  
 112:	00 00                	add    %al,(%rax)
 114:	00 00                	add    %al,(%rax)
 116:	00 00                	add    %al,(%rax)
 118:	44 06                	rex.R (bad) 
 11a:	00 00                	add    %al,(%rax)
 11c:	00 00                	add    %al,(%rax)
 11e:	00 00                	add    %al,(%rax)
 120:	8e 08                	mov    (%rax),%cs
 122:	00 00                	add    %al,(%rax)
 124:	00 00                	add    %al,(%rax)
 126:	00 00                	add    %al,(%rax)
 128:	1a 09                	sbb    (%rcx),%cl
	...
 13e:	00 00                	add    %al,(%rax)
 140:	71 07                	jno    149 <__abi_tag-0x17b>
 142:	00 00                	add    %al,(%rax)
 144:	00 00                	add    %al,(%rax)
 146:	00 00                	add    %al,(%rax)
 148:	6c                   	insb   (%dx),%es:(%rdi)
 149:	08 00                	or     %al,(%rax)
 14b:	00 00                	add    %al,(%rax)
 14d:	00 00                	add    %al,(%rax)
 14f:	00 76 08             	add    %dh,0x8(%rsi)
 152:	00 00                	add    %al,(%rax)
 154:	00 00                	add    %al,(%rax)
 156:	00 00                	add    %al,(%rax)
 158:	8e 08                	mov    (%rax),%cs
	...
 16e:	00 00                	add    %al,(%rax)
 170:	71 07                	jno    179 <__abi_tag-0x14b>
 172:	00 00                	add    %al,(%rax)
 174:	00 00                	add    %al,(%rax)
 176:	00 00                	add    %al,(%rax)
 178:	6c                   	insb   (%dx),%es:(%rdi)
 179:	08 00                	or     %al,(%rax)
 17b:	00 00                	add    %al,(%rax)
 17d:	00 00                	add    %al,(%rax)
 17f:	00 76 08             	add    %dh,0x8(%rsi)
 182:	00 00                	add    %al,(%rax)
 184:	00 00                	add    %al,(%rax)
 186:	00 00                	add    %al,(%rax)
 188:	8e 08                	mov    (%rax),%cs
	...
