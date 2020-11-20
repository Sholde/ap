
light_clang:     format de fichier elf64-x86-64


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
 548:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 54e <__abi_tag+0x28a>
 54e:	00 00                	add    %al,(%rax)
 550:	08 00                	or     %al,(%rax)
 552:	00 00                	add    %al,(%rax)
 554:	00 00                	add    %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	70 11                	jo     56b <__abi_tag+0x2a7>
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	e0 3d                	loopne 59f <__abi_tag+0x2db>
 562:	00 00                	add    %al,(%rax)
 564:	00 00                	add    %al,(%rax)
 566:	00 00                	add    %al,(%rax)
 568:	08 00                	or     %al,(%rax)
 56a:	00 00                	add    %al,(%rax)
 56c:	00 00                	add    %al,(%rax)
 56e:	00 00                	add    %al,(%rax)
 570:	20 11                	and    %dl,(%rcx)
 572:	00 00                	add    %al,(%rax)
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	48                   	rex.W
 579:	40 00 00             	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	08 00                	or     %al,(%rax)
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	48                   	rex.W
 589:	40 00 00             	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	d8 3f                	fdivrs (%rdi)
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	06                   	(bad)  
 599:	00 00                	add    %al,(%rax)
 59b:	00 02                	add    %al,(%rdx)
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 e0                	add    %ah,%al
 5a9:	3f                   	(bad)  
 5aa:	00 00                	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	06                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5be:	00 00                	add    %al,(%rax)
 5c0:	e8 3f 00 00 00       	callq  604 <__abi_tag+0x340>
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 06                	add    %al,(%rsi)
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 06                	add    %al,(%rsi)
	...
 5d5:	00 00                	add    %al,(%rax)
 5d7:	00 f0                	add    %dh,%al
 5d9:	3f                   	(bad)  
 5da:	00 00                	add    %al,(%rax)
 5dc:	00 00                	add    %al,(%rax)
 5de:	00 00                	add    %al,(%rax)
 5e0:	06                   	(bad)  
 5e1:	00 00                	add    %al,(%rax)
 5e3:	00 08                	add    %cl,(%rax)
	...
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 f8                	add    %bh,%al
 5f1:	3f                   	(bad)  
 5f2:	00 00                	add    %al,(%rax)
 5f4:	00 00                	add    %al,(%rax)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	06                   	(bad)  
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 0a                	add    %cl,(%rdx)
	...

Déassemblage de la section .rela.plt :

0000000000000608 <.rela.plt>:
 608:	18 40 00             	sbb    %al,0x0(%rax)
 60b:	00 00                	add    %al,(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 07                	add    %al,(%rdi)
 611:	00 00                	add    %al,(%rax)
 613:	00 01                	add    %al,(%rcx)
	...
 61d:	00 00                	add    %al,(%rax)
 61f:	00 20                	add    %ah,(%rax)
 621:	40 00 00             	add    %al,(%rax)
 624:	00 00                	add    %al,(%rax)
 626:	00 00                	add    %al,(%rax)
 628:	07                   	(bad)  
 629:	00 00                	add    %al,(%rax)
 62b:	00 03                	add    %al,(%rbx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 28                	add    %ch,(%rax)
 639:	40 00 00             	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	07                   	(bad)  
 641:	00 00                	add    %al,(%rax)
 643:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 649 <__abi_tag+0x385>
 649:	00 00                	add    %al,(%rax)
 64b:	00 00                	add    %al,(%rax)
 64d:	00 00                	add    %al,(%rax)
 64f:	00 30                	add    %dh,(%rax)
 651:	40 00 00             	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	07                   	(bad)  
 659:	00 00                	add    %al,(%rax)
 65b:	00 07                	add    %al,(%rdi)
	...
 665:	00 00                	add    %al,(%rax)
 667:	00 38                	add    %bh,(%rax)
 669:	40 00 00             	add    %al,(%rax)
 66c:	00 00                	add    %al,(%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	07                   	(bad)  
 671:	00 00                	add    %al,(%rax)
 673:	00 09                	add    %cl,(%rcx)
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

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	4c 8d 05 f6 0b 00 00 	lea    0xbf6(%rip),%r8        # 1c90 <__libc_csu_fini>
    109a:	48 8d 0d 7f 0b 00 00 	lea    0xb7f(%rip),%rcx        # 1c20 <__libc_csu_init>
    10a1:	48 8d 3d 38 06 00 00 	lea    0x638(%rip),%rdi        # 16e0 <main>
    10a8:	ff 15 32 2f 00 00    	callq  *0x2f32(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ae:	f4                   	hlt    
    10af:	90                   	nop

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4050 <__TMC_END__>
    10b7:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4050 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 2f 00 00 	mov    0x2f0e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmpq   *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	retq   
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4050 <__TMC_END__>
    10e7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4050 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmpq   *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4050 <__TMC_END__>
    112b:	75 33                	jne    1160 <__do_global_dtors_aux+0x40>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0d                	je     1148 <__do_global_dtors_aux+0x28>
    113b:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4048 <__dso_handle>
    1142:	ff 15 b0 2e 00 00    	callq  *0x2eb0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	callq  10b0 <deregister_tm_clones>
    114d:	c6 05 fc 2e 00 00 01 	movb   $0x1,0x2efc(%rip)        # 4050 <__TMC_END__>
    1154:	5d                   	pop    %rbp
    1155:	c3                   	retq   
    1156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    115d:	00 00 00 
    1160:	c3                   	retq   
    1161:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001170 <frame_dummy>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	e9 67 ff ff ff       	jmpq   10e0 <register_tm_clones>
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <parse_args>:
    1180:	50                   	push   %rax
    1181:	83 ff 02             	cmp    $0x2,%edi
    1184:	75 11                	jne    1197 <parse_args+0x17>
    1186:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    118a:	31 f6                	xor    %esi,%esi
    118c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1191:	58                   	pop    %rax
    1192:	e9 b9 fe ff ff       	jmpq   1050 <strtoll@plt>
    1197:	bf 01 00 00 00       	mov    $0x1,%edi
    119c:	e8 bf fe ff ff       	callq  1060 <exit@plt>
    11a1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11a8:	00 00 00 
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <dotprod>:
    11b0:	48 85 d2             	test   %rdx,%rdx
    11b3:	74 17                	je     11cc <dotprod+0x1c>
    11b5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    11b9:	89 d0                	mov    %edx,%eax
    11bb:	83 e0 03             	and    $0x3,%eax
    11be:	48 83 f9 03          	cmp    $0x3,%rcx
    11c2:	73 0c                	jae    11d0 <dotprod+0x20>
    11c4:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11c8:	31 c9                	xor    %ecx,%ecx
    11ca:	eb 5b                	jmp    1227 <dotprod+0x77>
    11cc:	0f 57 c0             	xorps  %xmm0,%xmm0
    11cf:	c3                   	retq   
    11d0:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    11d4:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11d8:	31 c9                	xor    %ecx,%ecx
    11da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11e0:	f2 0f 10 0c cf       	movsd  (%rdi,%rcx,8),%xmm1
    11e5:	f2 0f 10 54 cf 08    	movsd  0x8(%rdi,%rcx,8),%xmm2
    11eb:	f2 0f 59 0c ce       	mulsd  (%rsi,%rcx,8),%xmm1
    11f0:	f2 0f 59 54 ce 08    	mulsd  0x8(%rsi,%rcx,8),%xmm2
    11f6:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    11fa:	f2 0f 10 5c cf 10    	movsd  0x10(%rdi,%rcx,8),%xmm3
    1200:	f2 0f 59 5c ce 10    	mulsd  0x10(%rsi,%rcx,8),%xmm3
    1206:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    120a:	f2 0f 10 44 cf 18    	movsd  0x18(%rdi,%rcx,8),%xmm0
    1210:	f2 0f 59 44 ce 18    	mulsd  0x18(%rsi,%rcx,8),%xmm0
    1216:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    121a:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    121e:	48 83 c1 04          	add    $0x4,%rcx
    1222:	48 39 ca             	cmp    %rcx,%rdx
    1225:	75 b9                	jne    11e0 <dotprod+0x30>
    1227:	48 85 c0             	test   %rax,%rax
    122a:	74 2b                	je     1257 <dotprod+0xa7>
    122c:	48 8d 14 ce          	lea    (%rsi,%rcx,8),%rdx
    1230:	48 8d 0c cf          	lea    (%rdi,%rcx,8),%rcx
    1234:	31 f6                	xor    %esi,%esi
    1236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123d:	00 00 00 
    1240:	f2 0f 10 0c f1       	movsd  (%rcx,%rsi,8),%xmm1
    1245:	f2 0f 59 0c f2       	mulsd  (%rdx,%rsi,8),%xmm1
    124a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    124e:	48 83 c6 01          	add    $0x1,%rsi
    1252:	48 39 f0             	cmp    %rsi,%rax
    1255:	75 e9                	jne    1240 <dotprod+0x90>
    1257:	c3                   	retq   
    1258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    125f:	00 

0000000000001260 <dotprod_2x>:
    1260:	f6 c2 01             	test   $0x1,%dl
    1263:	75 33                	jne    1298 <dotprod_2x+0x38>
    1265:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1269:	48 85 d2             	test   %rdx,%rdx
    126c:	74 1d                	je     128b <dotprod_2x+0x2b>
    126e:	31 c0                	xor    %eax,%eax
    1270:	66 0f 10 04 c7       	movupd (%rdi,%rax,8),%xmm0
    1275:	66 0f 10 14 c6       	movupd (%rsi,%rax,8),%xmm2
    127a:	66 0f 59 d0          	mulpd  %xmm0,%xmm2
    127e:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1282:	48 83 c0 02          	add    $0x2,%rax
    1286:	48 39 d0             	cmp    %rdx,%rax
    1289:	72 e5                	jb     1270 <dotprod_2x+0x10>
    128b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    128f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1293:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1297:	c3                   	retq   
    1298:	48 89 d0             	mov    %rdx,%rax
    129b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    129f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    12a3:	74 26                	je     12cb <dotprod_2x+0x6b>
    12a5:	31 c9                	xor    %ecx,%ecx
    12a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ae:	00 00 
    12b0:	66 0f 10 0c cf       	movupd (%rdi,%rcx,8),%xmm1
    12b5:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    12ba:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    12be:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    12c2:	48 83 c1 02          	add    $0x2,%rcx
    12c6:	48 39 c1             	cmp    %rax,%rcx
    12c9:	72 e5                	jb     12b0 <dotprod_2x+0x50>
    12cb:	66 0f 28 c8          	movapd %xmm0,%xmm1
    12cf:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    12d3:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    12d7:	f2 0f 10 44 d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm0
    12dd:	f2 0f 59 44 d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm0
    12e3:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    12e7:	c3                   	retq   
    12e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12ef:	00 

00000000000012f0 <dotprod_4x>:
    12f0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12f4:	48 85 d2             	test   %rdx,%rdx
    12f7:	0f 84 9f 00 00 00    	je     139c <dotprod_4x+0xac>
    12fd:	31 c0                	xor    %eax,%eax
    12ff:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1303:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    130a:	00 00 00 
    130d:	0f 1f 00             	nopl   (%rax)
    1310:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
    1315:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
    131b:	66 0f 16 54 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm2
    1321:	f2 0f 10 24 c6       	movsd  (%rsi,%rax,8),%xmm4
    1326:	f2 0f 10 6c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm5
    132c:	66 0f 16 64 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm4
    1332:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1336:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    133a:	66 0f 16 5c c7 18    	movhpd 0x18(%rdi,%rax,8),%xmm3
    1340:	66 0f 16 6c c6 18    	movhpd 0x18(%rsi,%rax,8),%xmm5
    1346:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    134a:	66 0f 58 c5          	addpd  %xmm5,%xmm0
    134e:	48 83 c0 04          	add    $0x4,%rax
    1352:	48 39 d0             	cmp    %rdx,%rax
    1355:	72 b9                	jb     1310 <dotprod_4x+0x20>
    1357:	66 0f 28 d1          	movapd %xmm1,%xmm2
    135b:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    135f:	f6 c2 03             	test   $0x3,%dl
    1362:	75 40                	jne    13a4 <dotprod_4x+0xb4>
    1364:	48 83 fa 03          	cmp    $0x3,%rdx
    1368:	72 3a                	jb     13a4 <dotprod_4x+0xb4>
    136a:	f2 0f 10 5c d7 e8    	movsd  -0x18(%rdi,%rdx,8),%xmm3
    1370:	f2 0f 10 64 d7 f0    	movsd  -0x10(%rdi,%rdx,8),%xmm4
    1376:	f2 0f 59 5c d6 e8    	mulsd  -0x18(%rsi,%rdx,8),%xmm3
    137c:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1380:	f2 0f 59 64 d6 f0    	mulsd  -0x10(%rsi,%rdx,8),%xmm4
    1386:	f2 0f 58 e3          	addsd  %xmm3,%xmm4
    138a:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    1390:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    1396:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    139a:	eb 08                	jmp    13a4 <dotprod_4x+0xb4>
    139c:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    13a0:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    13a4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    13a8:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    13ac:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    13b0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    13b4:	c3                   	retq   
    13b5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13bc:	00 00 00 
    13bf:	90                   	nop

00000000000013c0 <dotprod_8x>:
    13c0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    13c4:	48 85 d2             	test   %rdx,%rdx
    13c7:	0f 84 0f 01 00 00    	je     14dc <dotprod_8x+0x11c>
    13cd:	31 c0                	xor    %eax,%eax
    13cf:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    13d3:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    13d7:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    13e0:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
    13e5:	f2 0f 10 6c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm5
    13eb:	66 0f 16 64 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm4
    13f1:	f2 0f 10 34 c6       	movsd  (%rsi,%rax,8),%xmm6
    13f6:	f2 0f 10 7c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm7
    13fc:	66 0f 16 74 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm6
    1402:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    1406:	66 0f 58 de          	addpd  %xmm6,%xmm3
    140a:	66 0f 10 64 c7 18    	movupd 0x18(%rdi,%rax,8),%xmm4
    1410:	66 0f 10 74 c6 18    	movupd 0x18(%rsi,%rax,8),%xmm6
    1416:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    141a:	66 0f 58 d6          	addpd  %xmm6,%xmm2
    141e:	66 0f 10 64 c7 28    	movupd 0x28(%rdi,%rax,8),%xmm4
    1424:	66 0f 10 74 c6 28    	movupd 0x28(%rsi,%rax,8),%xmm6
    142a:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    142e:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1432:	66 0f 16 6c c7 38    	movhpd 0x38(%rdi,%rax,8),%xmm5
    1438:	66 0f 16 7c c6 38    	movhpd 0x38(%rsi,%rax,8),%xmm7
    143e:	66 0f 59 fd          	mulpd  %xmm5,%xmm7
    1442:	66 0f 58 c7          	addpd  %xmm7,%xmm0
    1446:	48 83 c0 08          	add    $0x8,%rax
    144a:	48 39 d0             	cmp    %rdx,%rax
    144d:	72 91                	jb     13e0 <dotprod_8x+0x20>
    144f:	66 0f 28 e3          	movapd %xmm3,%xmm4
    1453:	66 0f 15 e3          	unpckhpd %xmm3,%xmm4
    1457:	f6 c2 07             	test   $0x7,%dl
    145a:	0f 85 8c 00 00 00    	jne    14ec <dotprod_8x+0x12c>
    1460:	48 83 fa 07          	cmp    $0x7,%rdx
    1464:	0f 82 82 00 00 00    	jb     14ec <dotprod_8x+0x12c>
    146a:	f2 0f 10 6c d7 c8    	movsd  -0x38(%rdi,%rdx,8),%xmm5
    1470:	f2 0f 10 74 d7 d0    	movsd  -0x30(%rdi,%rdx,8),%xmm6
    1476:	f2 0f 59 6c d6 c8    	mulsd  -0x38(%rsi,%rdx,8),%xmm5
    147c:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    1480:	f2 0f 59 74 d6 d0    	mulsd  -0x30(%rsi,%rdx,8),%xmm6
    1486:	f2 0f 58 f5          	addsd  %xmm5,%xmm6
    148a:	f2 0f 10 5c d7 d8    	movsd  -0x28(%rdi,%rdx,8),%xmm3
    1490:	f2 0f 59 5c d6 d8    	mulsd  -0x28(%rsi,%rdx,8),%xmm3
    1496:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    149a:	f2 0f 10 6c d7 e0    	movsd  -0x20(%rdi,%rdx,8),%xmm5
    14a0:	f2 0f 59 6c d6 e0    	mulsd  -0x20(%rsi,%rdx,8),%xmm5
    14a6:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    14aa:	f2 0f 10 5c d7 e8    	movsd  -0x18(%rdi,%rdx,8),%xmm3
    14b0:	f2 0f 59 5c d6 e8    	mulsd  -0x18(%rsi,%rdx,8),%xmm3
    14b6:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    14ba:	f2 0f 10 6c d7 f0    	movsd  -0x10(%rdi,%rdx,8),%xmm5
    14c0:	f2 0f 59 6c d6 f0    	mulsd  -0x10(%rsi,%rdx,8),%xmm5
    14c6:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    14ca:	f2 0f 10 5c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm3
    14d0:	f2 0f 59 5c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm3
    14d6:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    14da:	eb 10                	jmp    14ec <dotprod_8x+0x12c>
    14dc:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    14e0:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    14e4:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    14e8:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14ec:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
    14f0:	f2 0f 58 dc          	addsd  %xmm4,%xmm3
    14f4:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    14f8:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    14fc:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
    1500:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1504:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    1508:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    150c:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1510:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1514:	c3                   	retq   
    1515:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    151c:	00 00 00 
    151f:	90                   	nop

0000000000001520 <dotprod_16x>:
    1520:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1524:	48 85 d2             	test   %rdx,%rdx
    1527:	0f 84 1c 01 00 00    	je     1649 <dotprod_16x+0x129>
    152d:	31 c0                	xor    %eax,%eax
    152f:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1534:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    1539:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    153e:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    1543:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1547:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    154b:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    154f:	90                   	nop
    1550:	f2 0f 10 1c c7       	movsd  (%rdi,%rax,8),%xmm3
    1555:	f2 0f 10 4c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm1
    155b:	66 0f 16 5c c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm3
    1561:	f2 0f 10 24 c6       	movsd  (%rsi,%rax,8),%xmm4
    1566:	f2 0f 10 54 c6 08    	movsd  0x8(%rsi,%rax,8),%xmm2
    156c:	66 0f 16 64 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm4
    1572:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    1576:	66 0f 58 f4          	addpd  %xmm4,%xmm6
    157a:	66 0f 10 5c c7 18    	movupd 0x18(%rdi,%rax,8),%xmm3
    1580:	66 0f 10 64 c6 18    	movupd 0x18(%rsi,%rax,8),%xmm4
    1586:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    158a:	66 0f 58 fc          	addpd  %xmm4,%xmm7
    158e:	66 0f 10 5c c7 28    	movupd 0x28(%rdi,%rax,8),%xmm3
    1594:	66 0f 10 64 c6 28    	movupd 0x28(%rsi,%rax,8),%xmm4
    159a:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    159e:	66 0f 58 ec          	addpd  %xmm4,%xmm5
    15a2:	66 0f 10 5c c7 38    	movupd 0x38(%rdi,%rax,8),%xmm3
    15a8:	66 0f 10 64 c6 38    	movupd 0x38(%rsi,%rax,8),%xmm4
    15ae:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15b2:	66 44 0f 58 e4       	addpd  %xmm4,%xmm12
    15b7:	66 0f 10 5c c7 48    	movupd 0x48(%rdi,%rax,8),%xmm3
    15bd:	66 0f 10 64 c6 48    	movupd 0x48(%rsi,%rax,8),%xmm4
    15c3:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15c7:	66 44 0f 58 dc       	addpd  %xmm4,%xmm11
    15cc:	66 0f 10 5c c7 58    	movupd 0x58(%rdi,%rax,8),%xmm3
    15d2:	66 0f 10 64 c6 58    	movupd 0x58(%rsi,%rax,8),%xmm4
    15d8:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15dc:	66 44 0f 58 d4       	addpd  %xmm4,%xmm10
    15e1:	66 0f 10 5c c7 68    	movupd 0x68(%rdi,%rax,8),%xmm3
    15e7:	66 0f 10 64 c6 68    	movupd 0x68(%rsi,%rax,8),%xmm4
    15ed:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15f1:	66 44 0f 58 cc       	addpd  %xmm4,%xmm9
    15f6:	66 0f 16 4c c7 78    	movhpd 0x78(%rdi,%rax,8),%xmm1
    15fc:	66 0f 16 54 c6 78    	movhpd 0x78(%rsi,%rax,8),%xmm2
    1602:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    1606:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    160a:	48 83 c0 10          	add    $0x10,%rax
    160e:	48 39 d0             	cmp    %rdx,%rax
    1611:	0f 82 39 ff ff ff    	jb     1550 <dotprod_16x+0x30>
    1617:	66 44 0f 28 c6       	movapd %xmm6,%xmm8
    161c:	66 44 0f 15 c6       	unpckhpd %xmm6,%xmm8
    1621:	f6 c2 0f             	test   $0xf,%dl
    1624:	75 48                	jne    166e <dotprod_16x+0x14e>
    1626:	48 83 fa 0e          	cmp    $0xe,%rdx
    162a:	76 42                	jbe    166e <dotprod_16x+0x14e>
    162c:	48 8d 42 f1          	lea    -0xf(%rdx),%rax
    1630:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1635:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    163a:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
    163e:	48 83 c0 01          	add    $0x1,%rax
    1642:	48 39 d0             	cmp    %rdx,%rax
    1645:	72 e9                	jb     1630 <dotprod_16x+0x110>
    1647:	eb 25                	jmp    166e <dotprod_16x+0x14e>
    1649:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    164e:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1652:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1657:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    165c:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    1661:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    1666:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    166a:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    166e:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1672:	f2 41 0f 58 f0       	addsd  %xmm8,%xmm6
    1677:	f2 0f 58 f7          	addsd  %xmm7,%xmm6
    167b:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    167f:	f2 0f 58 fe          	addsd  %xmm6,%xmm7
    1683:	f2 0f 58 fd          	addsd  %xmm5,%xmm7
    1687:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
    168b:	f2 0f 58 ef          	addsd  %xmm7,%xmm5
    168f:	f2 41 0f 58 ec       	addsd  %xmm12,%xmm5
    1694:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    1699:	f2 44 0f 58 e5       	addsd  %xmm5,%xmm12
    169e:	f2 45 0f 58 e3       	addsd  %xmm11,%xmm12
    16a3:	66 45 0f 15 db       	unpckhpd %xmm11,%xmm11
    16a8:	f2 45 0f 58 dc       	addsd  %xmm12,%xmm11
    16ad:	f2 45 0f 58 da       	addsd  %xmm10,%xmm11
    16b2:	66 45 0f 15 d2       	unpckhpd %xmm10,%xmm10
    16b7:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    16bc:	f2 45 0f 58 d1       	addsd  %xmm9,%xmm10
    16c1:	66 45 0f 15 c9       	unpckhpd %xmm9,%xmm9
    16c6:	f2 45 0f 58 ca       	addsd  %xmm10,%xmm9
    16cb:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    16cf:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    16d4:	c3                   	retq   
    16d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16dc:	00 00 00 
    16df:	90                   	nop

00000000000016e0 <main>:
    16e0:	55                   	push   %rbp
    16e1:	41 57                	push   %r15
    16e3:	41 56                	push   %r14
    16e5:	41 55                	push   %r13
    16e7:	41 54                	push   %r12
    16e9:	53                   	push   %rbx
    16ea:	48 83 ec 48          	sub    $0x48,%rsp
    16ee:	83 ff 02             	cmp    $0x2,%edi
    16f1:	0f 85 6c 01 00 00    	jne    1863 <main+0x183>
    16f7:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    16fb:	31 f6                	xor    %esi,%esi
    16fd:	ba 0a 00 00 00       	mov    $0xa,%edx
    1702:	e8 49 f9 ff ff       	callq  1050 <strtoll@plt>
    1707:	49 89 c7             	mov    %rax,%r15
    170a:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    1711:	00 
    1712:	bf 40 00 00 00       	mov    $0x40,%edi
    1717:	48 89 de             	mov    %rbx,%rsi
    171a:	e8 51 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    171f:	49 89 c6             	mov    %rax,%r14
    1722:	bf 40 00 00 00       	mov    $0x40,%edi
    1727:	48 89 de             	mov    %rbx,%rsi
    172a:	e8 41 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    172f:	48 89 c3             	mov    %rax,%rbx
    1732:	49 bd 9a 99 99 99 99 	movabs $0x3fb999999999999a,%r13
    1739:	99 b9 3f 
    173c:	49 bc 00 00 00 00 00 	movabs $0x3ff0000000000000,%r12
    1743:	00 f0 3f 
    1746:	4d 85 ff             	test   %r15,%r15
    1749:	74 0d                	je     1758 <main+0x78>
    174b:	49 83 ff 04          	cmp    $0x4,%r15
    174f:	73 1c                	jae    176d <main+0x8d>
    1751:	31 c0                	xor    %eax,%eax
    1753:	e9 15 01 00 00       	jmpq   186d <main+0x18d>
    1758:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    175c:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1760:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1764:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1768:	e9 4d 02 00 00       	jmpq   19ba <main+0x2da>
    176d:	4c 89 f8             	mov    %r15,%rax
    1770:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    1774:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    1778:	48 89 f2             	mov    %rsi,%rdx
    177b:	48 c1 ea 02          	shr    $0x2,%rdx
    177f:	48 83 c2 01          	add    $0x1,%rdx
    1783:	89 d1                	mov    %edx,%ecx
    1785:	83 e1 03             	and    $0x3,%ecx
    1788:	48 83 fe 0c          	cmp    $0xc,%rsi
    178c:	73 07                	jae    1795 <main+0xb5>
    178e:	31 f6                	xor    %esi,%esi
    1790:	e9 8b 00 00 00       	jmpq   1820 <main+0x140>
    1795:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1799:	48 f7 da             	neg    %rdx
    179c:	31 f6                	xor    %esi,%esi
    179e:	66 0f 28 05 6a 08 00 	movapd 0x86a(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    17a5:	00 
    17a6:	66 0f 28 0d 72 08 00 	movapd 0x872(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    17ad:	00 
    17ae:	66 90                	xchg   %ax,%ax
    17b0:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    17b6:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
    17bd:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    17c2:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
    17c8:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    17cf:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
    17d6:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    17dc:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
    17e2:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    17e9:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
    17f0:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    17f6:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
    17fc:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    1803:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
    180a:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1810:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
    1816:	48 83 c6 10          	add    $0x10,%rsi
    181a:	48 83 c2 04          	add    $0x4,%rdx
    181e:	75 90                	jne    17b0 <main+0xd0>
    1820:	48 85 c9             	test   %rcx,%rcx
    1823:	74 54                	je     1879 <main+0x199>
    1825:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    182c:	00 
    182d:	48 f7 d9             	neg    %rcx
    1830:	66 0f 28 05 d8 07 00 	movapd 0x7d8(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1837:	00 
    1838:	66 0f 28 0d e0 07 00 	movapd 0x7e0(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    183f:	00 
    1840:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    1847:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
    184d:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    1853:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
    1858:	48 83 c2 20          	add    $0x20,%rdx
    185c:	48 ff c1             	inc    %rcx
    185f:	75 df                	jne    1840 <main+0x160>
    1861:	eb 16                	jmp    1879 <main+0x199>
    1863:	bf 01 00 00 00       	mov    $0x1,%edi
    1868:	e8 f3 f7 ff ff       	callq  1060 <exit@plt>
    186d:	4d 89 2c c6          	mov    %r13,(%r14,%rax,8)
    1871:	4c 89 24 c3          	mov    %r12,(%rbx,%rax,8)
    1875:	48 83 c0 01          	add    $0x1,%rax
    1879:	49 39 c7             	cmp    %rax,%r15
    187c:	75 ef                	jne    186d <main+0x18d>
    187e:	49 8d 4f ff          	lea    -0x1(%r15),%rcx
    1882:	44 89 f8             	mov    %r15d,%eax
    1885:	83 e0 03             	and    $0x3,%eax
    1888:	48 83 f9 03          	cmp    $0x3,%rcx
    188c:	73 08                	jae    1896 <main+0x1b6>
    188e:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1892:	31 c9                	xor    %ecx,%ecx
    1894:	eb 65                	jmp    18fb <main+0x21b>
    1896:	4c 89 fa             	mov    %r15,%rdx
    1899:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    189d:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    18a1:	31 c9                	xor    %ecx,%ecx
    18a3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    18aa:	00 00 00 
    18ad:	0f 1f 00             	nopl   (%rax)
    18b0:	f2 41 0f 10 04 ce    	movsd  (%r14,%rcx,8),%xmm0
    18b6:	f2 41 0f 10 4c ce 08 	movsd  0x8(%r14,%rcx,8),%xmm1
    18bd:	f2 0f 59 04 cb       	mulsd  (%rbx,%rcx,8),%xmm0
    18c2:	f2 0f 59 4c cb 08    	mulsd  0x8(%rbx,%rcx,8),%xmm1
    18c8:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    18cc:	f2 41 0f 10 54 ce 10 	movsd  0x10(%r14,%rcx,8),%xmm2
    18d3:	f2 0f 59 54 cb 10    	mulsd  0x10(%rbx,%rcx,8),%xmm2
    18d9:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    18dd:	f2 41 0f 10 6c ce 18 	movsd  0x18(%r14,%rcx,8),%xmm5
    18e4:	f2 0f 59 6c cb 18    	mulsd  0x18(%rbx,%rcx,8),%xmm5
    18ea:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    18ee:	f2 0f 58 ea          	addsd  %xmm2,%xmm5
    18f2:	48 83 c1 04          	add    $0x4,%rcx
    18f6:	48 39 ca             	cmp    %rcx,%rdx
    18f9:	75 b5                	jne    18b0 <main+0x1d0>
    18fb:	48 85 c0             	test   %rax,%rax
    18fe:	74 27                	je     1927 <main+0x247>
    1900:	48 8d 14 cb          	lea    (%rbx,%rcx,8),%rdx
    1904:	49 8d 0c ce          	lea    (%r14,%rcx,8),%rcx
    1908:	31 f6                	xor    %esi,%esi
    190a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1910:	f2 0f 10 04 f1       	movsd  (%rcx,%rsi,8),%xmm0
    1915:	f2 0f 59 04 f2       	mulsd  (%rdx,%rsi,8),%xmm0
    191a:	f2 0f 58 e8          	addsd  %xmm0,%xmm5
    191e:	48 83 c6 01          	add    $0x1,%rsi
    1922:	48 39 f0             	cmp    %rsi,%rax
    1925:	75 e9                	jne    1910 <main+0x230>
    1927:	41 f6 c7 01          	test   $0x1,%r15b
    192b:	75 3d                	jne    196a <main+0x28a>
    192d:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1931:	31 c0                	xor    %eax,%eax
    1933:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    193a:	00 00 00 
    193d:	0f 1f 00             	nopl   (%rax)
    1940:	66 41 0f 10 04 c6    	movupd (%r14,%rax,8),%xmm0
    1946:	66 0f 10 0c c3       	movupd (%rbx,%rax,8),%xmm1
    194b:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
    194f:	66 0f 58 f1          	addpd  %xmm1,%xmm6
    1953:	48 83 c0 02          	add    $0x2,%rax
    1957:	4c 39 f8             	cmp    %r15,%rax
    195a:	72 e4                	jb     1940 <main+0x260>
    195c:	66 0f 28 c6          	movapd %xmm6,%xmm0
    1960:	66 0f 15 c6          	unpckhpd %xmm6,%xmm0
    1964:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1968:	eb 50                	jmp    19ba <main+0x2da>
    196a:	4c 89 f8             	mov    %r15,%rax
    196d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1971:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1975:	74 25                	je     199c <main+0x2bc>
    1977:	31 c9                	xor    %ecx,%ecx
    1979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1980:	66 41 0f 10 0c ce    	movupd (%r14,%rcx,8),%xmm1
    1986:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    198b:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    198f:	66 0f 58 c2          	addpd  %xmm2,%xmm0
    1993:	48 83 c1 02          	add    $0x2,%rcx
    1997:	48 39 c1             	cmp    %rax,%rcx
    199a:	72 e4                	jb     1980 <main+0x2a0>
    199c:	66 0f 28 c8          	movapd %xmm0,%xmm1
    19a0:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    19a4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    19a8:	f2 43 0f 10 74 fe f8 	movsd  -0x8(%r14,%r15,8),%xmm6
    19af:	f2 42 0f 59 74 fb f8 	mulsd  -0x8(%rbx,%r15,8),%xmm6
    19b6:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
    19ba:	4d 85 ff             	test   %r15,%r15
    19bd:	f2 0f 11 6c 24 08    	movsd  %xmm5,0x8(%rsp)
    19c3:	66 0f 29 74 24 30    	movapd %xmm6,0x30(%rsp)
    19c9:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    19cd:	0f 84 a4 00 00 00    	je     1a77 <main+0x397>
    19d3:	31 c0                	xor    %eax,%eax
    19d5:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    19d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    19e0:	f2 41 0f 10 0c c6    	movsd  (%r14,%rax,8),%xmm1
    19e6:	f2 41 0f 10 54 c6 08 	movsd  0x8(%r14,%rax,8),%xmm2
    19ed:	66 41 0f 16 4c c6 10 	movhpd 0x10(%r14,%rax,8),%xmm1
    19f4:	f2 0f 10 1c c3       	movsd  (%rbx,%rax,8),%xmm3
    19f9:	f2 0f 10 64 c3 08    	movsd  0x8(%rbx,%rax,8),%xmm4
    19ff:	66 0f 16 5c c3 10    	movhpd 0x10(%rbx,%rax,8),%xmm3
    1a05:	66 0f 59 d9          	mulpd  %xmm1,%xmm3
    1a09:	66 0f 58 c3          	addpd  %xmm3,%xmm0
    1a0d:	66 41 0f 16 54 c6 18 	movhpd 0x18(%r14,%rax,8),%xmm2
    1a14:	66 0f 16 64 c3 18    	movhpd 0x18(%rbx,%rax,8),%xmm4
    1a1a:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1a1e:	66 0f 58 fc          	addpd  %xmm4,%xmm7
    1a22:	48 83 c0 04          	add    $0x4,%rax
    1a26:	4c 39 f8             	cmp    %r15,%rax
    1a29:	72 b5                	jb     19e0 <main+0x300>
    1a2b:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a2f:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1a33:	41 f6 c7 03          	test   $0x3,%r15b
    1a37:	75 46                	jne    1a7f <main+0x39f>
    1a39:	49 83 ff 03          	cmp    $0x3,%r15
    1a3d:	72 40                	jb     1a7f <main+0x39f>
    1a3f:	f2 43 0f 10 54 fe e8 	movsd  -0x18(%r14,%r15,8),%xmm2
    1a46:	f2 43 0f 10 5c fe f0 	movsd  -0x10(%r14,%r15,8),%xmm3
    1a4d:	f2 42 0f 59 54 fb e8 	mulsd  -0x18(%rbx,%r15,8),%xmm2
    1a54:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    1a58:	f2 42 0f 59 5c fb f0 	mulsd  -0x10(%rbx,%r15,8),%xmm3
    1a5f:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    1a63:	f2 43 0f 10 44 fe f8 	movsd  -0x8(%r14,%r15,8),%xmm0
    1a6a:	f2 42 0f 59 44 fb f8 	mulsd  -0x8(%rbx,%r15,8),%xmm0
    1a71:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1a75:	eb 08                	jmp    1a7f <main+0x39f>
    1a77:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1a7b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1a7f:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    1a83:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1a87:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    1a8b:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1a8f:	66 0f 29 7c 24 20    	movapd %xmm7,0x20(%rsp)
    1a95:	4c 89 f7             	mov    %r14,%rdi
    1a98:	48 89 de             	mov    %rbx,%rsi
    1a9b:	4c 89 fa             	mov    %r15,%rdx
    1a9e:	e8 1d f9 ff ff       	callq  13c0 <dotprod_8x>
    1aa3:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
    1aa9:	4c 89 f7             	mov    %r14,%rdi
    1aac:	48 89 de             	mov    %rbx,%rsi
    1aaf:	4c 89 fa             	mov    %r15,%rdx
    1ab2:	e8 69 fa ff ff       	callq  1520 <dotprod_16x>
    1ab7:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
    1abd:	48 8d 3d 7c 05 00 00 	lea    0x57c(%rip),%rdi        # 2040 <_IO_stdin_used+0x40>
    1ac4:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1aca:	b0 01                	mov    $0x1,%al
    1acc:	e8 6f f5 ff ff       	callq  1040 <printf@plt>
    1ad1:	48 8d 3d 73 05 00 00 	lea    0x573(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    1ad8:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1add:	b0 01                	mov    $0x1,%al
    1adf:	e8 5c f5 ff ff       	callq  1040 <printf@plt>
    1ae4:	48 8d 3d 6e 05 00 00 	lea    0x56e(%rip),%rdi        # 2059 <_IO_stdin_used+0x59>
    1aeb:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    1af0:	b0 01                	mov    $0x1,%al
    1af2:	e8 49 f5 ff ff       	callq  1040 <printf@plt>
    1af7:	48 8d 3d 69 05 00 00 	lea    0x569(%rip),%rdi        # 2067 <_IO_stdin_used+0x67>
    1afe:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    1b04:	b0 01                	mov    $0x1,%al
    1b06:	e8 35 f5 ff ff       	callq  1040 <printf@plt>
    1b0b:	4c 8d 3d 63 05 00 00 	lea    0x563(%rip),%r15        # 2075 <_IO_stdin_used+0x75>
    1b12:	4c 89 ff             	mov    %r15,%rdi
    1b15:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    1b1b:	b0 01                	mov    $0x1,%al
    1b1d:	e8 1e f5 ff ff       	callq  1040 <printf@plt>
    1b22:	4c 89 f7             	mov    %r14,%rdi
    1b25:	e8 06 f5 ff ff       	callq  1030 <free@plt>
    1b2a:	48 89 df             	mov    %rbx,%rdi
    1b2d:	e8 fe f4 ff ff       	callq  1030 <free@plt>
    1b32:	bf 40 00 00 00       	mov    $0x40,%edi
    1b37:	be 28 00 00 00       	mov    $0x28,%esi
    1b3c:	e8 2f f5 ff ff       	callq  1070 <aligned_alloc@plt>
    1b41:	48 89 c3             	mov    %rax,%rbx
    1b44:	bf 40 00 00 00       	mov    $0x40,%edi
    1b49:	be 28 00 00 00       	mov    $0x28,%esi
    1b4e:	e8 1d f5 ff ff       	callq  1070 <aligned_alloc@plt>
    1b53:	48 89 c5             	mov    %rax,%rbp
    1b56:	0f 28 05 b3 04 00 00 	movaps 0x4b3(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1b5d:	0f 29 03             	movaps %xmm0,(%rbx)
    1b60:	0f 28 0d b9 04 00 00 	movaps 0x4b9(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1b67:	0f 29 08             	movaps %xmm1,(%rax)
    1b6a:	0f 29 43 10          	movaps %xmm0,0x10(%rbx)
    1b6e:	0f 29 48 10          	movaps %xmm1,0x10(%rax)
    1b72:	4c 89 6b 20          	mov    %r13,0x20(%rbx)
    1b76:	4c 89 60 20          	mov    %r12,0x20(%rax)
    1b7a:	ba 05 00 00 00       	mov    $0x5,%edx
    1b7f:	48 89 df             	mov    %rbx,%rdi
    1b82:	48 89 c6             	mov    %rax,%rsi
    1b85:	e8 96 f9 ff ff       	callq  1520 <dotprod_16x>
    1b8a:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1b90:	f2 0f 10 05 98 04 00 	movsd  0x498(%rip),%xmm0        # 2030 <_IO_stdin_used+0x30>
    1b97:	00 
    1b98:	48 8d 3d a1 04 00 00 	lea    0x4a1(%rip),%rdi        # 2040 <_IO_stdin_used+0x40>
    1b9f:	b0 01                	mov    $0x1,%al
    1ba1:	e8 9a f4 ff ff       	callq  1040 <printf@plt>
    1ba6:	48 8d 3d 9e 04 00 00 	lea    0x49e(%rip),%rdi        # 204b <_IO_stdin_used+0x4b>
    1bad:	f2 0f 10 05 7b 04 00 	movsd  0x47b(%rip),%xmm0        # 2030 <_IO_stdin_used+0x30>
    1bb4:	00 
    1bb5:	b0 01                	mov    $0x1,%al
    1bb7:	e8 84 f4 ff ff       	callq  1040 <printf@plt>
    1bbc:	f2 0f 10 05 74 04 00 	movsd  0x474(%rip),%xmm0        # 2038 <_IO_stdin_used+0x38>
    1bc3:	00 
    1bc4:	48 8d 3d 8e 04 00 00 	lea    0x48e(%rip),%rdi        # 2059 <_IO_stdin_used+0x59>
    1bcb:	b0 01                	mov    $0x1,%al
    1bcd:	e8 6e f4 ff ff       	callq  1040 <printf@plt>
    1bd2:	48 8d 3d 8e 04 00 00 	lea    0x48e(%rip),%rdi        # 2067 <_IO_stdin_used+0x67>
    1bd9:	f2 0f 10 05 57 04 00 	movsd  0x457(%rip),%xmm0        # 2038 <_IO_stdin_used+0x38>
    1be0:	00 
    1be1:	b0 01                	mov    $0x1,%al
    1be3:	e8 58 f4 ff ff       	callq  1040 <printf@plt>
    1be8:	4c 89 ff             	mov    %r15,%rdi
    1beb:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1bf1:	b0 01                	mov    $0x1,%al
    1bf3:	e8 48 f4 ff ff       	callq  1040 <printf@plt>
    1bf8:	48 89 df             	mov    %rbx,%rdi
    1bfb:	e8 30 f4 ff ff       	callq  1030 <free@plt>
    1c00:	48 89 ef             	mov    %rbp,%rdi
    1c03:	e8 28 f4 ff ff       	callq  1030 <free@plt>
    1c08:	31 c0                	xor    %eax,%eax
    1c0a:	48 83 c4 48          	add    $0x48,%rsp
    1c0e:	5b                   	pop    %rbx
    1c0f:	41 5c                	pop    %r12
    1c11:	41 5d                	pop    %r13
    1c13:	41 5e                	pop    %r14
    1c15:	41 5f                	pop    %r15
    1c17:	5d                   	pop    %rbp
    1c18:	c3                   	retq   
    1c19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001c20 <__libc_csu_init>:
    1c20:	f3 0f 1e fa          	endbr64 
    1c24:	41 57                	push   %r15
    1c26:	4c 8d 3d ab 21 00 00 	lea    0x21ab(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    1c2d:	41 56                	push   %r14
    1c2f:	49 89 d6             	mov    %rdx,%r14
    1c32:	41 55                	push   %r13
    1c34:	49 89 f5             	mov    %rsi,%r13
    1c37:	41 54                	push   %r12
    1c39:	41 89 fc             	mov    %edi,%r12d
    1c3c:	55                   	push   %rbp
    1c3d:	48 8d 2d 9c 21 00 00 	lea    0x219c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1c44:	53                   	push   %rbx
    1c45:	4c 29 fd             	sub    %r15,%rbp
    1c48:	48 83 ec 08          	sub    $0x8,%rsp
    1c4c:	e8 af f3 ff ff       	callq  1000 <_init>
    1c51:	48 c1 fd 03          	sar    $0x3,%rbp
    1c55:	74 1f                	je     1c76 <__libc_csu_init+0x56>
    1c57:	31 db                	xor    %ebx,%ebx
    1c59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c60:	4c 89 f2             	mov    %r14,%rdx
    1c63:	4c 89 ee             	mov    %r13,%rsi
    1c66:	44 89 e7             	mov    %r12d,%edi
    1c69:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1c6d:	48 83 c3 01          	add    $0x1,%rbx
    1c71:	48 39 dd             	cmp    %rbx,%rbp
    1c74:	75 ea                	jne    1c60 <__libc_csu_init+0x40>
    1c76:	48 83 c4 08          	add    $0x8,%rsp
    1c7a:	5b                   	pop    %rbx
    1c7b:	5d                   	pop    %rbp
    1c7c:	41 5c                	pop    %r12
    1c7e:	41 5d                	pop    %r13
    1c80:	41 5e                	pop    %r14
    1c82:	41 5f                	pop    %r15
    1c84:	c3                   	retq   
    1c85:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1c8c:	00 00 00 00 

0000000000001c90 <__libc_csu_fini>:
    1c90:	f3 0f 1e fa          	endbr64 
    1c94:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001c98 <_fini>:
    1c98:	f3 0f 1e fa          	endbr64 
    1c9c:	48 83 ec 08          	sub    $0x8,%rsp
    1ca0:	48 83 c4 08          	add    $0x8,%rsp
    1ca4:	c3                   	retq   

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
    2030:	00 00                	add    %al,(%rax)
    2032:	00 00                	add    %al,(%rax)
    2034:	00 00                	add    %al,(%rax)
    2036:	e0 3f                	loopne 2077 <_IO_stdin_used+0x77>
    2038:	00 00                	add    %al,(%rax)
    203a:	00 00                	add    %al,(%rax)
    203c:	00 00                	add    %al,(%rax)
    203e:	f8                   	clc    
    203f:	7f 72                	jg     20b3 <__GNU_EH_FRAME_HDR+0x2f>
    2041:	65 73 20             	gs jae 2064 <_IO_stdin_used+0x64>
    2044:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2049:	0a 00                	or     (%rax),%al
    204b:	72 65                	jb     20b2 <__GNU_EH_FRAME_HDR+0x2e>
    204d:	73 5f                	jae    20ae <__GNU_EH_FRAME_HDR+0x2a>
    204f:	32 78 20             	xor    0x20(%rax),%bh
    2052:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2057:	0a 00                	or     (%rax),%al
    2059:	72 65                	jb     20c0 <__GNU_EH_FRAME_HDR+0x3c>
    205b:	73 5f                	jae    20bc <__GNU_EH_FRAME_HDR+0x38>
    205d:	34 78                	xor    $0x78,%al
    205f:	20 3d 20 25 6c 66    	and    %bh,0x666c2520(%rip)        # 666c4585 <_end+0x666c052d>
    2065:	0a 00                	or     (%rax),%al
    2067:	72 65                	jb     20ce <__GNU_EH_FRAME_HDR+0x4a>
    2069:	73 5f                	jae    20ca <__GNU_EH_FRAME_HDR+0x46>
    206b:	38 78 20             	cmp    %bh,0x20(%rax)
    206e:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2073:	0a 00                	or     (%rax),%al
    2075:	72 65                	jb     20dc <__GNU_EH_FRAME_HDR+0x58>
    2077:	73 5f                	jae    20d8 <__GNU_EH_FRAME_HDR+0x54>
    2079:	31 36                	xor    %esi,(%rsi)
    207b:	78 20                	js     209d <__GNU_EH_FRAME_HDR+0x19>
    207d:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2082:	0a 00                	or     (%rax),%al

Déassemblage de la section .eh_frame_hdr :

0000000000002084 <__GNU_EH_FRAME_HDR>:
    2084:	01 1b                	add    %ebx,(%rbx)
    2086:	03 3b                	add    (%rbx),%edi
    2088:	60                   	(bad)  
    2089:	00 00                	add    %al,(%rax)
    208b:	00 0b                	add    %cl,(%rbx)
    208d:	00 00                	add    %al,(%rax)
    208f:	00 9c ef ff ff 94 00 	add    %bl,0x94ffff(%rdi,%rbp,8)
    2096:	00 00                	add    %al,(%rax)
    2098:	fc                   	cld    
    2099:	ef                   	out    %eax,(%dx)
    209a:	ff                   	(bad)  
    209b:	ff                   	(bad)  
    209c:	7c 00                	jl     209e <__GNU_EH_FRAME_HDR+0x1a>
    209e:	00 00                	add    %al,(%rax)
    20a0:	fc                   	cld    
    20a1:	f0 ff                	lock (bad) 
    20a3:	ff                   	(bad)  
    20a4:	bc 00 00 00 2c       	mov    $0x2c000000,%esp
    20a9:	f1                   	icebp  
    20aa:	ff                   	(bad)  
    20ab:	ff                   	(bad)  
    20ac:	d8 00                	fadds  (%rax)
    20ae:	00 00                	add    %al,(%rax)
    20b0:	dc f1                	fdiv   %st,%st(1)
    20b2:	ff                   	(bad)  
    20b3:	ff                   	(bad)  
    20b4:	ec                   	in     (%dx),%al
    20b5:	00 00                	add    %al,(%rax)
    20b7:	00 6c f2 ff          	add    %ch,-0x1(%rdx,%rsi,8)
    20bb:	ff 00                	incl   (%rax)
    20bd:	01 00                	add    %eax,(%rax)
    20bf:	00 3c f3             	add    %bh,(%rbx,%rsi,8)
    20c2:	ff                   	(bad)  
    20c3:	ff 14 01             	callq  *(%rcx,%rax,1)
    20c6:	00 00                	add    %al,(%rax)
    20c8:	9c                   	pushfq 
    20c9:	f4                   	hlt    
    20ca:	ff                   	(bad)  
    20cb:	ff 28                	ljmp   *(%rax)
    20cd:	01 00                	add    %eax,(%rax)
    20cf:	00 5c f6 ff          	add    %bl,-0x1(%rsi,%rsi,8)
    20d3:	ff                   	(bad)  
    20d4:	3c 01                	cmp    $0x1,%al
    20d6:	00 00                	add    %al,(%rax)
    20d8:	9c                   	pushfq 
    20d9:	fb                   	sti    
    20da:	ff                   	(bad)  
    20db:	ff 8c 01 00 00 0c fc 	decl   -0x3f40000(%rcx,%rax,1)
    20e2:	ff                   	(bad)  
    20e3:	ff d4                	callq  *%rsp
    20e5:	01 00                	add    %eax,(%rax)
	...

Déassemblage de la section .eh_frame :

00000000000020e8 <__FRAME_END__-0x184>:
    20e8:	14 00                	adc    $0x0,%al
    20ea:	00 00                	add    %al,(%rax)
    20ec:	00 00                	add    %al,(%rax)
    20ee:	00 00                	add    %al,(%rax)
    20f0:	01 7a 52             	add    %edi,0x52(%rdx)
    20f3:	00 01                	add    %al,(%rcx)
    20f5:	78 10                	js     2107 <__GNU_EH_FRAME_HDR+0x83>
    20f7:	01 1b                	add    %ebx,(%rbx)
    20f9:	0c 07                	or     $0x7,%al
    20fb:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2101:	00 00                	add    %al,(%rax)
    2103:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2106:	00 00                	add    %al,(%rax)
    2108:	78 ef                	js     20f9 <__GNU_EH_FRAME_HDR+0x75>
    210a:	ff                   	(bad)  
    210b:	ff 2f                	ljmp   *(%rdi)
    210d:	00 00                	add    %al,(%rax)
    210f:	00 00                	add    %al,(%rax)
    2111:	44 07                	rex.R (bad) 
    2113:	10 00                	adc    %al,(%rax)
    2115:	00 00                	add    %al,(%rax)
    2117:	00 24 00             	add    %ah,(%rax,%rax,1)
    211a:	00 00                	add    %al,(%rax)
    211c:	34 00                	xor    $0x0,%al
    211e:	00 00                	add    %al,(%rax)
    2120:	00 ef                	add    %ch,%bh
    2122:	ff                   	(bad)  
    2123:	ff 60 00             	jmpq   *0x0(%rax)
    2126:	00 00                	add    %al,(%rax)
    2128:	00 0e                	add    %cl,(%rsi)
    212a:	10 46 0e             	adc    %al,0xe(%rsi)
    212d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2130:	0b 77 08             	or     0x8(%rdi),%esi
    2133:	80 00 3f             	addb   $0x3f,(%rax)
    2136:	1a 3b                	sbb    (%rbx),%bh
    2138:	2a 33                	sub    (%rbx),%dh
    213a:	24 22                	and    $0x22,%al
    213c:	00 00                	add    %al,(%rax)
    213e:	00 00                	add    %al,(%rax)
    2140:	18 00                	sbb    %al,(%rax)
    2142:	00 00                	add    %al,(%rax)
    2144:	5c                   	pop    %rsp
    2145:	00 00                	add    %al,(%rax)
    2147:	00 38                	add    %bh,(%rax)
    2149:	f0 ff                	lock (bad) 
    214b:	ff 21                	jmpq   *(%rcx)
    214d:	00 00                	add    %al,(%rax)
    214f:	00 00                	add    %al,(%rax)
    2151:	41 0e                	rex.B (bad) 
    2153:	10 51 0e             	adc    %dl,0xe(%rcx)
    2156:	08 45 0e             	or     %al,0xe(%rbp)
    2159:	10 00                	adc    %al,(%rax)
    215b:	00 10                	add    %dl,(%rax)
    215d:	00 00                	add    %al,(%rax)
    215f:	00 78 00             	add    %bh,0x0(%rax)
    2162:	00 00                	add    %al,(%rax)
    2164:	4c                   	rex.WR
    2165:	f0 ff                	lock (bad) 
    2167:	ff a8 00 00 00 00    	ljmp   *0x0(%rax)
    216d:	00 00                	add    %al,(%rax)
    216f:	00 10                	add    %dl,(%rax)
    2171:	00 00                	add    %al,(%rax)
    2173:	00 8c 00 00 00 e8 f0 	add    %cl,-0xf180000(%rax,%rax,1)
    217a:	ff                   	(bad)  
    217b:	ff 88 00 00 00 00    	decl   0x0(%rax)
    2181:	00 00                	add    %al,(%rax)
    2183:	00 10                	add    %dl,(%rax)
    2185:	00 00                	add    %al,(%rax)
    2187:	00 a0 00 00 00 64    	add    %ah,0x64000000(%rax)
    218d:	f1                   	icebp  
    218e:	ff                   	(bad)  
    218f:	ff c5                	inc    %ebp
    2191:	00 00                	add    %al,(%rax)
    2193:	00 00                	add    %al,(%rax)
    2195:	00 00                	add    %al,(%rax)
    2197:	00 10                	add    %dl,(%rax)
    2199:	00 00                	add    %al,(%rax)
    219b:	00 b4 00 00 00 20 f2 	add    %dh,-0xde00000(%rax,%rax,1)
    21a2:	ff                   	(bad)  
    21a3:	ff 55 01             	callq  *0x1(%rbp)
    21a6:	00 00                	add    %al,(%rax)
    21a8:	00 00                	add    %al,(%rax)
    21aa:	00 00                	add    %al,(%rax)
    21ac:	10 00                	adc    %al,(%rax)
    21ae:	00 00                	add    %al,(%rax)
    21b0:	c8 00 00 00          	enterq $0x0,$0x0
    21b4:	6c                   	insb   (%dx),%es:(%rdi)
    21b5:	f3 ff                	repz (bad) 
    21b7:	ff b5 01 00 00 00    	pushq  0x1(%rbp)
    21bd:	00 00                	add    %al,(%rax)
    21bf:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
    21c3:	00 dc                	add    %bl,%ah
    21c5:	00 00                	add    %al,(%rax)
    21c7:	00 18                	add    %bl,(%rax)
    21c9:	f5                   	cmc    
    21ca:	ff                   	(bad)  
    21cb:	ff                   	(bad)  
    21cc:	39 05 00 00 00 41    	cmp    %eax,0x41000000(%rip)        # 410021d2 <_end+0x40ffe17a>
    21d2:	0e                   	(bad)  
    21d3:	10 42 0e             	adc    %al,0xe(%rdx)
    21d6:	18 42 0e             	sbb    %al,0xe(%rdx)
    21d9:	20 42 0e             	and    %al,0xe(%rdx)
    21dc:	28 42 0e             	sub    %al,0xe(%rdx)
    21df:	30 41 0e             	xor    %al,0xe(%rcx)
    21e2:	38 44 0e 80          	cmp    %al,-0x80(%rsi,%rcx,1)
    21e6:	01 83 07 8c 06 8d    	add    %eax,-0x72f973f9(%rbx)
    21ec:	05 8e 04 8f 03       	add    $0x38f048e,%eax
    21f1:	86 02                	xchg   %al,(%rdx)
    21f3:	03 20                	add    (%rax),%esp
    21f5:	05 0e 38 41 0e       	add    $0xe41380e,%eax
    21fa:	30 42 0e             	xor    %al,0xe(%rdx)
    21fd:	28 42 0e             	sub    %al,0xe(%rdx)
    2200:	20 42 0e             	and    %al,0xe(%rdx)
    2203:	18 42 0e             	sbb    %al,0xe(%rdx)
    2206:	10 41 0e             	adc    %al,0xe(%rcx)
    2209:	08 00                	or     %al,(%rax)
    220b:	00 00                	add    %al,(%rax)
    220d:	00 00                	add    %al,(%rax)
    220f:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    2213:	00 2c 01             	add    %ch,(%rcx,%rax,1)
    2216:	00 00                	add    %al,(%rax)
    2218:	08 fa                	or     %bh,%dl
    221a:	ff                   	(bad)  
    221b:	ff 65 00             	jmpq   *0x0(%rbp)
    221e:	00 00                	add    %al,(%rax)
    2220:	00 46 0e             	add    %al,0xe(%rsi)
    2223:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2229:	8e 03                	mov    (%rbx),%es
    222b:	45 0e                	rex.RB (bad) 
    222d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    2233:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8630307d <_end+0xffffffff862ff025>
    2239:	06                   	(bad)  
    223a:	48 0e                	rex.W (bad) 
    223c:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    2242:	6e                   	outsb  %ds:(%rsi),(%dx)
    2243:	0e                   	(bad)  
    2244:	38 41 0e             	cmp    %al,0xe(%rcx)
    2247:	30 41 0e             	xor    %al,0xe(%rcx)
    224a:	28 42 0e             	sub    %al,0xe(%rdx)
    224d:	20 42 0e             	and    %al,0xe(%rdx)
    2250:	18 42 0e             	sbb    %al,0xe(%rdx)
    2253:	10 42 0e             	adc    %al,0xe(%rdx)
    2256:	08 00                	or     %al,(%rax)
    2258:	10 00                	adc    %al,(%rax)
    225a:	00 00                	add    %al,(%rax)
    225c:	74 01                	je     225f <__GNU_EH_FRAME_HDR+0x1db>
    225e:	00 00                	add    %al,(%rax)
    2260:	30 fa                	xor    %bh,%dl
    2262:	ff                   	(bad)  
    2263:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 2269 <__GNU_EH_FRAME_HDR+0x1e5>
    2269:	00 00                	add    %al,(%rax)
	...

000000000000226c <__FRAME_END__>:
    226c:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .init_array :

0000000000003dd8 <__frame_dummy_init_array_entry>:
    3dd8:	70 11                	jo     3deb <_DYNAMIC+0x3>
    3dda:	00 00                	add    %al,(%rax)
    3ddc:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .fini_array :

0000000000003de0 <__do_global_dtors_aux_fini_array_entry>:
    3de0:	20 11                	and    %dl,(%rcx)
    3de2:	00 00                	add    %al,(%rax)
    3de4:	00 00                	add    %al,(%rax)
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
    3e0f:	00 98 1c 00 00 00    	add    %bl,0x1c(%rax)
    3e15:	00 00                	add    %al,(%rax)
    3e17:	00 19                	add    %bl,(%rcx)
    3e19:	00 00                	add    %al,(%rax)
    3e1b:	00 00                	add    %al,(%rax)
    3e1d:	00 00                	add    %al,(%rax)
    3e1f:	00 d8                	add    %bl,%al
    3e21:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e26:	00 00                	add    %al,(%rax)
    3e28:	1b 00                	sbb    (%rax),%eax
    3e2a:	00 00                	add    %al,(%rax)
    3e2c:	00 00                	add    %al,(%rax)
    3e2e:	00 00                	add    %al,(%rax)
    3e30:	08 00                	or     %al,(%rax)
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
    3eff:	00 08                	add    %cl,(%rax)
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
    3f20:	c0 00 00             	rolb   $0x0,(%rax)
    3f23:	00 00                	add    %al,(%rax)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 09                	add    %cl,(%rcx)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	00 00                	add    %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 18                	add    %bl,(%rax)
    3f31:	00 00                	add    %al,(%rax)
    3f33:	00 00                	add    %al,(%rax)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 fb                	add    %bh,%bl
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
    3f7f:	00 03                	add    %al,(%rbx)
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

Déassemblage de la section .debug_info :

0000000000000000 <.debug_info>:
   0:	8b 08                	mov    (%rax),%ecx
   2:	00 00                	add    %al,(%rax)
   4:	04 00                	add    $0x0,%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	0c 00                	or     $0x0,%al
  12:	15 00 00 00 00       	adc    $0x0,%eax
  17:	00 00                	add    %al,(%rax)
  19:	00 1f                	add    %bl,(%rdi)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 80 11 00 00 00    	add    %al,0x11(%rax)
  23:	00 00                	add    %al,(%rax)
  25:	00 99 0a 00 00 02    	add    %bl,0x200000a(%rcx)
  2b:	80 11 00             	adcb   $0x0,(%rcx)
  2e:	00 00                	add    %al,(%rax)
  30:	00 00                	add    %al,(%rax)
  32:	00 21                	add    %ah,(%rcx)
  34:	00 00                	add    %al,(%rax)
  36:	00 01                	add    %al,(%rcx)
  38:	57                   	push   %rdi
  39:	ec                   	in     (%dx),%al
  3a:	02 00                	add    (%rax),%al
  3c:	00 03                	add    %al,(%rbx)
  3e:	00 00                	add    %al,(%rax)
  40:	00 00                	add    %al,(%rax)
  42:	f8                   	clc    
  43:	02 00                	add    (%rax),%al
  45:	00 03                	add    %al,(%rbx)
  47:	62                   	(bad)  
  48:	00 00                	add    %al,(%rax)
  4a:	00 03                	add    %al,(%rbx)
  4c:	03 00                	add    (%rax),%eax
  4e:	00 00                	add    %al,(%rax)
  50:	02 b0 11 00 00 00    	add    0x11(%rax),%dh
  56:	00 00                	add    %al,(%rax)
  58:	00 a8 00 00 00 01    	add    %ch,0x1000000(%rax)
  5e:	57                   	push   %rdi
  5f:	e9 03 00 00 04       	jmpq   4000067 <_end+0x3ffc00f>
  64:	01 55 f5             	add    %edx,-0xb(%rbp)
  67:	03 00                	add    (%rax),%eax
  69:	00 03                	add    %al,(%rbx)
  6b:	c4                   	(bad)  
  6c:	00 00                	add    %al,(%rax)
  6e:	00 00                	add    %al,(%rax)
  70:	04 00                	add    $0x0,%al
  72:	00 03                	add    %al,(%rbx)
  74:	fd                   	std    
  75:	00 00                	add    %al,(%rax)
  77:	00 0b                	add    %cl,(%rbx)
  79:	04 00                	add    $0x0,%al
  7b:	00 05 36 01 00 00    	add    %al,0x136(%rip)        # 1b7 <__abi_tag-0x10d>
  81:	16                   	(bad)  
  82:	04 00                	add    $0x0,%al
  84:	00 06                	add    %al,(%rsi)
  86:	00 00                	add    %al,(%rax)
  88:	00 00                	add    %al,(%rax)
  8a:	05 f3 01 00 00       	add    $0x1f3,%eax
  8f:	22 04 00             	and    (%rax,%rax,1),%al
  92:	00 00                	add    %al,(%rax)
  94:	00 02                	add    %al,(%rdx)
  96:	60                   	(bad)  
  97:	12 00                	adc    (%rax),%al
  99:	00 00                	add    %al,(%rax)
  9b:	00 00                	add    %al,(%rax)
  9d:	00 88 00 00 00 01    	add    %cl,0x1000000(%rax)
  a3:	57                   	push   %rdi
  a4:	76 03                	jbe    a9 <__abi_tag-0x21b>
  a6:	00 00                	add    %al,(%rax)
  a8:	04 01                	add    $0x1,%al
  aa:	55                   	push   %rbp
  ab:	82                   	(bad)  
  ac:	03 00                	add    (%rax),%eax
  ae:	00 04 01             	add    %al,(%rcx,%rax,1)
  b1:	54                   	push   %rsp
  b2:	8d 03                	lea    (%rbx),%eax
  b4:	00 00                	add    %al,(%rax)
  b6:	04 01                	add    $0x1,%al
  b8:	51                   	push   %rcx
  b9:	98                   	cwtl   
  ba:	03 00                	add    (%rax),%eax
  bc:	00 05 96 02 00 00    	add    %al,0x296(%rip)        # 358 <__abi_tag+0x94>
  c2:	a3 03 00 00 07 69 12 	movabs %eax,0x126907000003
  c9:	00 00 
  cb:	00 00                	add    %al,(%rax)
  cd:	00 00                	add    %al,(%rax)
  cf:	22 00                	and    (%rax),%al
  d1:	00 00                	add    %al,(%rax)
  d3:	05 da 02 00 00       	add    $0x2da,%eax
  d8:	af                   	scas   %es:(%rdi),%eax
  d9:	03 00                	add    (%rax),%eax
  db:	00 00                	add    %al,(%rax)
  dd:	07                   	(bad)  
  de:	98                   	cwtl   
  df:	12 00                	adc    (%rax),%al
  e1:	00 00                	add    %al,(%rax)
  e3:	00 00                	add    %al,(%rax)
  e5:	00 4b 00             	add    %cl,0x0(%rbx)
  e8:	00 00                	add    %al,(%rax)
  ea:	05 48 03 00 00       	add    $0x348,%eax
  ef:	bc 03 00 00 07       	mov    $0x7000003,%esp
  f4:	98                   	cwtl   
  f5:	12 00                	adc    (%rax),%al
  f7:	00 00                	add    %al,(%rax)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 33                	add    %dh,(%rbx)
  fd:	00 00                	add    %al,(%rax)
  ff:	00 05 11 03 00 00    	add    %al,0x311(%rip)        # 416 <__abi_tag+0x152>
 105:	c8 03 00 00          	enterq $0x3,$0x0
 109:	00 00                	add    %al,(%rax)
 10b:	00 02                	add    %al,(%rdx)
 10d:	f0 12 00             	lock adc (%rax),%al
 110:	00 00                	add    %al,(%rax)
 112:	00 00                	add    %al,(%rax)
 114:	00 c5                	add    %al,%ch
 116:	00 00                	add    %al,(%rax)
 118:	00 01                	add    %al,(%rcx)
 11a:	57                   	push   %rdi
 11b:	2f                   	(bad)  
 11c:	04 00                	add    $0x0,%al
 11e:	00 04 01             	add    %al,(%rcx,%rax,1)
 121:	55                   	push   %rbp
 122:	3b 04 00             	cmp    (%rax,%rax,1),%eax
 125:	00 04 01             	add    %al,(%rcx,%rax,1)
 128:	54                   	push   %rsp
 129:	46 04 00             	rex.RX add $0x0,%al
 12c:	00 04 01             	add    %al,(%rcx,%rax,1)
 12f:	51                   	push   %rcx
 130:	51                   	push   %rcx
 131:	04 00                	add    $0x0,%al
 133:	00 05 6b 03 00 00    	add    %al,0x36b(%rip)        # 4a4 <__abi_tag+0x1e0>
 139:	67 04 00             	addr32 add $0x0,%al
 13c:	00 08                	add    %cl,(%rax)
 13e:	5c                   	pop    %rsp
 13f:	04 00                	add    $0x0,%al
 141:	00 07                	add    %al,(%rdi)
 143:	f4                   	hlt    
 144:	12 00                	adc    (%rax),%al
 146:	00 00                	add    %al,(%rax)
 148:	00 00                	add    %al,(%rax)
 14a:	00 63 00             	add    %ah,0x0(%rbx)
 14d:	00 00                	add    %al,(%rax)
 14f:	05 13 04 00 00       	add    $0x413,%eax
 154:	73 04                	jae    15a <__abi_tag-0x16a>
 156:	00 00                	add    %al,(%rax)
 158:	00 07                	add    %al,(%rdi)
 15a:	64 13 00             	adc    %fs:(%rax),%eax
 15d:	00 00                	add    %al,(%rax)
 15f:	00 00                	add    %al,(%rax)
 161:	00 38                	add    %bh,(%rax)
 163:	00 00                	add    %al,(%rax)
 165:	00 05 4a 04 00 00    	add    %al,0x44a(%rip)        # 5b5 <__abi_tag+0x2f1>
 16b:	80 04 00 00          	addb   $0x0,(%rax,%rax,1)
 16f:	07                   	(bad)  
 170:	64 13 00             	adc    %fs:(%rax),%eax
 173:	00 00                	add    %al,(%rax)
 175:	00 00                	add    %al,(%rax)
 177:	00 38                	add    %bh,(%rax)
 179:	00 00                	add    %al,(%rax)
 17b:	00 05 6f 04 00 00    	add    %al,0x46f(%rip)        # 5f0 <__abi_tag+0x32c>
 181:	8c 04 00             	mov    %es,(%rax,%rax,1)
 184:	00 00                	add    %al,(%rax)
 186:	00 00                	add    %al,(%rax)
 188:	09 c0                	or     %eax,%eax
 18a:	13 00                	adc    (%rax),%eax
 18c:	00 00                	add    %al,(%rax)
 18e:	00 00                	add    %al,(%rax)
 190:	00 55 01             	add    %dl,0x1(%rbp)
 193:	00 00                	add    %al,(%rax)
 195:	01 57 d4             	add    %edx,-0x2c(%rdi)
 198:	00 00                	add    %al,(%rax)
 19a:	00 01                	add    %al,(%rcx)
 19c:	5d                   	pop    %rbp
 19d:	6f                   	outsl  %ds:(%rsi),(%dx)
 19e:	03 00                	add    (%rax),%eax
 1a0:	00 0a                	add    %cl,(%rdx)
 1a2:	01 55 75             	add    %edx,0x75(%rbp)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	00 01                	add    %al,(%rcx)
 1a9:	5d                   	pop    %rbp
 1aa:	65 03 00             	add    %gs:(%rax),%eax
 1ad:	00 0a                	add    %cl,(%rdx)
 1af:	01 54 7e 00          	add    %edx,0x0(%rsi,%rdi,2)
 1b3:	00 00                	add    %al,(%rax)
 1b5:	01 5d 65             	add    %ebx,0x65(%rbp)
 1b8:	03 00                	add    (%rax),%eax
 1ba:	00 0a                	add    %cl,(%rdx)
 1bc:	01 51 ee             	add    %edx,-0x12(%rcx)
 1bf:	00 00                	add    %al,(%rax)
 1c1:	00 01                	add    %al,(%rcx)
 1c3:	5d                   	pop    %rbp
 1c4:	0f 03 00             	lsl    (%rax),%eax
 1c7:	00 0b                	add    %cl,(%rbx)
 1c9:	94                   	xchg   %eax,%esp
 1ca:	04 00                	add    $0x0,%al
 1cc:	00 3d 00 00 00 01    	add    %bh,0x1000000(%rip)        # 10001d2 <_end+0xffc17a>
 1d2:	5f                   	pop    %rdi
 1d3:	76 08                	jbe    1dd <__abi_tag-0xe7>
 1d5:	00 00                	add    %al,(%rax)
 1d7:	0c b8                	or     $0xb8,%al
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 01                	add    %al,(%rcx)
 1dd:	60                   	(bad)  
 1de:	0f 03 00             	lsl    (%rax),%eax
 1e1:	00 07                	add    %al,(%rdi)
 1e3:	c4                   	(bad)  
 1e4:	13 00                	adc    (%rax),%eax
 1e6:	00 00                	add    %al,(%rax)
 1e8:	00 00                	add    %al,(%rax)
 1ea:	00 8b 00 00 00 0b    	add    %cl,0xb000000(%rbx)
 1f0:	b0 05                	mov    $0x5,%al
 1f2:	00 00                	add    %al,(%rax)
 1f4:	80 00 00             	addb   $0x0,(%rax)
 1f7:	00 01                	add    %al,(%rcx)
 1f9:	62                   	(bad)  
 1fa:	0f 03 00             	lsl    (%rax),%eax
 1fd:	00 00                	add    %al,(%rax)
 1ff:	07                   	(bad)  
 200:	60                   	(bad)  
 201:	14 00                	adc    $0x0,%al
 203:	00 00                	add    %al,(%rax)
 205:	00 00                	add    %al,(%rax)
 207:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 20b:	00 0b                	add    %cl,(%rbx)
 20d:	e7 05                	out    %eax,$0x5
 20f:	00 00                	add    %al,(%rax)
 211:	f0 00 00             	lock add %al,(%rax)
 214:	00 01                	add    %al,(%rcx)
 216:	70 0f                	jo     227 <__abi_tag-0x9d>
 218:	03 00                	add    (%rax),%eax
 21a:	00 07                	add    %al,(%rdi)
 21c:	60                   	(bad)  
 21d:	14 00                	adc    $0x0,%al
 21f:	00 00                	add    %al,(%rax)
 221:	00 00                	add    %al,(%rax)
 223:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 227:	00 0b                	add    %cl,(%rbx)
 229:	0c 06                	or     $0x6,%al
 22b:	00 00                	add    %al,(%rax)
 22d:	80 00 00             	addb   $0x0,(%rax)
 230:	00 01                	add    %al,(%rcx)
 232:	72 0f                	jb     243 <__abi_tag-0x81>
 234:	03 00                	add    (%rax),%eax
 236:	00 00                	add    %al,(%rax)
 238:	00 00                	add    %al,(%rax)
 23a:	09 20                	or     %esp,(%rax)
 23c:	15 00 00 00 00       	adc    $0x0,%eax
 241:	00 00                	add    %al,(%rax)
 243:	b5 01                	mov    $0x1,%ch
 245:	00 00                	add    %al,(%rax)
 247:	01 57 df             	add    %edx,-0x21(%rdi)
 24a:	00 00                	add    %al,(%rax)
 24c:	00 01                	add    %al,(%rcx)
 24e:	7a 6f                	jp     2bf <__abi_tag-0x5>
 250:	03 00                	add    (%rax),%eax
 252:	00 0a                	add    %cl,(%rdx)
 254:	01 55 75             	add    %edx,0x75(%rbp)
 257:	00 00                	add    %al,(%rax)
 259:	00 01                	add    %al,(%rcx)
 25b:	7a 65                	jp     2c2 <__abi_tag-0x2>
 25d:	03 00                	add    (%rax),%eax
 25f:	00 0a                	add    %cl,(%rdx)
 261:	01 54 7e 00          	add    %edx,0x0(%rsi,%rdi,2)
 265:	00 00                	add    %al,(%rax)
 267:	01 7a 65             	add    %edi,0x65(%rdx)
 26a:	03 00                	add    (%rax),%eax
 26c:	00 0a                	add    %cl,(%rdx)
 26e:	01 51 ee             	add    %edx,-0x12(%rcx)
 271:	00 00                	add    %al,(%rax)
 273:	00 01                	add    %al,(%rcx)
 275:	7a 0f                	jp     286 <__abi_tag-0x3e>
 277:	03 00                	add    (%rax),%eax
 279:	00 0b                	add    %cl,(%rbx)
 27b:	31 06                	xor    %eax,(%rsi)
 27d:	00 00                	add    %al,(%rax)
 27f:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 284:	7c 82                	jl     208 <__abi_tag-0xbc>
 286:	08 00                	or     %al,(%rax)
 288:	00 0c b8             	add    %cl,(%rax,%rdi,4)
 28b:	00 00                	add    %al,(%rax)
 28d:	00 01                	add    %al,(%rcx)
 28f:	7d 0f                	jge    2a0 <__abi_tag-0x24>
 291:	03 00                	add    (%rax),%eax
 293:	00 07                	add    %al,(%rdi)
 295:	24 15                	and    $0x15,%al
 297:	00 00                	add    %al,(%rax)
 299:	00 00                	add    %al,(%rax)
 29b:	00 00                	add    %al,(%rax)
 29d:	f3 00 00             	repz add %al,(%rax)
 2a0:	00 0b                	add    %cl,(%rbx)
 2a2:	0f 07                	sysret 
 2a4:	00 00                	add    %al,(%rax)
 2a6:	80 00 00             	addb   $0x0,(%rax)
 2a9:	00 01                	add    %al,(%rcx)
 2ab:	7f 0f                	jg     2bc <__abi_tag-0x8>
 2ad:	03 00                	add    (%rax),%eax
 2af:	00 00                	add    %al,(%rax)
 2b1:	07                   	(bad)  
 2b2:	2c 16                	sub    $0x16,%al
 2b4:	00 00                	add    %al,(%rax)
 2b6:	00 00                	add    %al,(%rax)
 2b8:	00 00                	add    %al,(%rax)
 2ba:	1d 00 00 00 0b       	sbb    $0xb000000,%eax
 2bf:	7e 07                	jle    2c8 <__abi_tag+0x4>
 2c1:	00 00                	add    %al,(%rax)
 2c3:	f4                   	hlt    
 2c4:	00 00                	add    %al,(%rax)
 2c6:	00 01                	add    %al,(%rcx)
 2c8:	95                   	xchg   %eax,%ebp
 2c9:	0f 03 00             	lsl    (%rax),%eax
 2cc:	00 07                	add    %al,(%rdi)
 2ce:	2c 16                	sub    $0x16,%al
 2d0:	00 00                	add    %al,(%rax)
 2d2:	00 00                	add    %al,(%rax)
 2d4:	00 00                	add    %al,(%rax)
 2d6:	1d 00 00 00 0b       	sbb    $0xb000000,%eax
 2db:	46 07                	rex.RX (bad) 
 2dd:	00 00                	add    %al,(%rax)
 2df:	80 00 00             	addb   $0x0,(%rax)
 2e2:	00 01                	add    %al,(%rcx)
 2e4:	97                   	xchg   %eax,%edi
 2e5:	0f 03 00             	lsl    (%rax),%eax
 2e8:	00 00                	add    %al,(%rax)
 2ea:	00 00                	add    %al,(%rax)
 2ec:	0d 3f 00 00 00       	or     $0x3f,%eax
 2f1:	01 08                	add    %ecx,(%rax)
 2f3:	0f 03 00             	lsl    (%rax),%eax
 2f6:	00 01                	add    %al,(%rcx)
 2f8:	0e                   	(bad)  
 2f9:	61                   	(bad)  
 2fa:	00 00                	add    %al,(%rax)
 2fc:	00 01                	add    %al,(%rcx)
 2fe:	08 16                	or     %dl,(%rsi)
 300:	03 00                	add    (%rax),%eax
 302:	00 0e                	add    %cl,(%rsi)
 304:	66 00 00             	data16 add %al,(%rax)
 307:	00 01                	add    %al,(%rcx)
 309:	08 1d 03 00 00 00    	or     %bl,0x3(%rip)        # 312 <__abi_tag+0x4e>
 30f:	0f 4a 00             	cmovp  (%rax),%eax
 312:	00 00                	add    %al,(%rax)
 314:	07                   	(bad)  
 315:	08 0f                	or     %cl,(%rdi)
 317:	5d                   	pop    %rbp
 318:	00 00                	add    %al,(%rax)
 31a:	00 05 04 10 22 03    	add    %al,0x3221004(%rip)        # 3221324 <_end+0x321d2cc>
 320:	00 00                	add    %al,(%rax)
 322:	10 27                	adc    %ah,(%rdi)
 324:	03 00                	add    (%rax),%eax
 326:	00 0f                	add    %cl,(%rdi)
 328:	6b 00 00             	imul   $0x0,(%rax),%eax
 32b:	00 06                	add    %al,(%rsi)
 32d:	01 11                	add    %edx,(%rcx)
 32f:	70 00                	jo     331 <__abi_tag+0x6d>
 331:	00 00                	add    %al,(%rax)
 333:	01 11                	add    %edx,(%rcx)
 335:	01 0e                	add    %ecx,(%rsi)
 337:	75 00                	jne    339 <__abi_tag+0x75>
 339:	00 00                	add    %al,(%rax)
 33b:	01 11                	add    %edx,(%rcx)
 33d:	65 03 00             	add    %gs:(%rax),%eax
 340:	00 0e                	add    %cl,(%rsi)
 342:	7e 00                	jle    344 <__abi_tag+0x80>
 344:	00 00                	add    %al,(%rax)
 346:	01 11                	add    %edx,(%rcx)
 348:	65 03 00             	add    %gs:(%rax),%eax
 34b:	00 0e                	add    %cl,(%rsi)
 34d:	ee                   	out    %al,(%dx)
 34e:	00 00                	add    %al,(%rax)
 350:	00 01                	add    %al,(%rcx)
 352:	11 0f                	adc    %ecx,(%rdi)
 354:	03 00                	add    (%rax),%eax
 356:	00 12                	add    %dl,(%rdx)
 358:	0c 80                	or     $0x80,%al
 35a:	00 00                	add    %al,(%rax)
 35c:	00 01                	add    %al,(%rcx)
 35e:	13 0f                	adc    (%rdi),%ecx
 360:	03 00                	add    (%rax),%eax
 362:	00 00                	add    %al,(%rax)
 364:	00 13                	add    %dl,(%rbx)
 366:	6a 03                	pushq  $0x3
 368:	00 00                	add    %al,(%rax)
 36a:	10 6f 03             	adc    %ch,0x3(%rdi)
 36d:	00 00                	add    %al,(%rax)
 36f:	0f 77                	emms   
 371:	00 00                	add    %al,(%rax)
 373:	00 04 08             	add    %al,(%rax,%rcx,1)
 376:	0d 82 00 00 00       	or     $0x82,%eax
 37b:	01 26                	add    %esp,(%rsi)
 37d:	6f                   	outsl  %ds:(%rsi),(%dx)
 37e:	03 00                	add    (%rax),%eax
 380:	00 01                	add    %al,(%rcx)
 382:	0e                   	(bad)  
 383:	75 00                	jne    385 <__abi_tag+0xc1>
 385:	00 00                	add    %al,(%rax)
 387:	01 26                	add    %esp,(%rsi)
 389:	65 03 00             	add    %gs:(%rax),%eax
 38c:	00 0e                	add    %cl,(%rsi)
 38e:	7e 00                	jle    390 <__abi_tag+0xcc>
 390:	00 00                	add    %al,(%rax)
 392:	01 26                	add    %esp,(%rsi)
 394:	65 03 00             	add    %gs:(%rax),%eax
 397:	00 0e                	add    %cl,(%rsi)
 399:	ee                   	out    %al,(%dx)
 39a:	00 00                	add    %al,(%rax)
 39c:	00 01                	add    %al,(%rcx)
 39e:	26 0f 03 00          	lsl    %es:(%rax),%eax
 3a2:	00 0c 3d 00 00 00 01 	add    %cl,0x1000000(,%rdi,1)
 3a9:	28 d6                	sub    %dl,%dh
 3ab:	03 00                	add    (%rax),%eax
 3ad:	00 12                	add    %dl,(%rdx)
 3af:	0c 80                	or     $0x80,%al
 3b1:	00 00                	add    %al,(%rax)
 3b3:	00 01                	add    %al,(%rcx)
 3b5:	39 0f                	cmp    %ecx,(%rdi)
 3b7:	03 00                	add    (%rax),%eax
 3b9:	00 00                	add    %al,(%rax)
 3bb:	12 0c a1             	adc    (%rcx,%riz,4),%cl
 3be:	00 00                	add    %al,(%rax)
 3c0:	00 01                	add    %al,(%rcx)
 3c2:	2d 0f 03 00 00       	sub    $0x30f,%eax
 3c7:	12 0c 80             	adc    (%rax,%rax,4),%cl
 3ca:	00 00                	add    %al,(%rax)
 3cc:	00 01                	add    %al,(%rcx)
 3ce:	2f                   	(bad)  
 3cf:	0f 03 00             	lsl    (%rax),%eax
 3d2:	00 00                	add    %al,(%rax)
 3d4:	00 00                	add    %al,(%rax)
 3d6:	14 6f                	adc    $0x6f,%al
 3d8:	03 00                	add    (%rax),%eax
 3da:	00 15 e2 03 00 00    	add    %dl,0x3e2(%rip)        # 7c2 <__abi_tag+0x4fe>
 3e0:	02 00                	add    (%rax),%al
 3e2:	16                   	(bad)  
 3e3:	8d 00                	lea    (%rax),%eax
 3e5:	00 00                	add    %al,(%rax)
 3e7:	08 07                	or     %al,(%rdi)
 3e9:	0d a5 00 00 00       	or     $0xa5,%eax
 3ee:	01 1b                	add    %ebx,(%rbx)
 3f0:	6f                   	outsl  %ds:(%rsi),(%dx)
 3f1:	03 00                	add    (%rax),%eax
 3f3:	00 01                	add    %al,(%rcx)
 3f5:	0e                   	(bad)  
 3f6:	75 00                	jne    3f8 <__abi_tag+0x134>
 3f8:	00 00                	add    %al,(%rax)
 3fa:	01 1b                	add    %ebx,(%rbx)
 3fc:	65 03 00             	add    %gs:(%rax),%eax
 3ff:	00 0e                	add    %cl,(%rsi)
 401:	7e 00                	jle    403 <__abi_tag+0x13f>
 403:	00 00                	add    %al,(%rax)
 405:	01 1b                	add    %ebx,(%rbx)
 407:	65 03 00             	add    %gs:(%rax),%eax
 40a:	00 0e                	add    %cl,(%rsi)
 40c:	ee                   	out    %al,(%dx)
 40d:	00 00                	add    %al,(%rax)
 40f:	00 01                	add    %al,(%rcx)
 411:	1b 0f                	sbb    (%rdi),%ecx
 413:	03 00                	add    (%rax),%eax
 415:	00 0c 3d 00 00 00 01 	add    %cl,0x1000000(,%rdi,1)
 41c:	1d 6f 03 00 00       	sbb    $0x36f,%eax
 421:	12 0c 80             	adc    (%rax,%rax,4),%cl
 424:	00 00                	add    %al,(%rax)
 426:	00 01                	add    %al,(%rcx)
 428:	1f                   	(bad)  
 429:	0f 03 00             	lsl    (%rax),%eax
 42c:	00 00                	add    %al,(%rax)
 42e:	00 0d ad 00 00 00    	add    %cl,0xad(%rip)        # 4e1 <__abi_tag+0x21d>
 434:	01 44 6f 03          	add    %eax,0x3(%rdi,%rbp,2)
 438:	00 00                	add    %al,(%rax)
 43a:	01 0e                	add    %ecx,(%rsi)
 43c:	75 00                	jne    43e <__abi_tag+0x17a>
 43e:	00 00                	add    %al,(%rax)
 440:	01 44 65 03          	add    %eax,0x3(%rbp,%riz,2)
 444:	00 00                	add    %al,(%rax)
 446:	0e                   	(bad)  
 447:	7e 00                	jle    449 <__abi_tag+0x185>
 449:	00 00                	add    %al,(%rax)
 44b:	01 44 65 03          	add    %eax,0x3(%rbp,%riz,2)
 44f:	00 00                	add    %al,(%rax)
 451:	0e                   	(bad)  
 452:	ee                   	out    %al,(%dx)
 453:	00 00                	add    %al,(%rax)
 455:	00 01                	add    %al,(%rcx)
 457:	44 0f 03 00          	lsl    (%rax),%r8d
 45b:	00 0c b8             	add    %cl,(%rax,%rdi,4)
 45e:	00 00                	add    %al,(%rax)
 460:	00 01                	add    %al,(%rcx)
 462:	47 0f 03 00          	rex.RXB lsl (%r8),%r8d
 466:	00 0c 3d 00 00 00 01 	add    %cl,0x1000000(,%rdi,1)
 46d:	46 9a                	rex.RX (bad) 
 46f:	04 00                	add    $0x0,%al
 471:	00 12                	add    %dl,(%rdx)
 473:	0c 80                	or     $0x80,%al
 475:	00 00                	add    %al,(%rax)
 477:	00 01                	add    %al,(%rcx)
 479:	49 0f 03 00          	lsl    (%r8),%rax
 47d:	00 00                	add    %al,(%rax)
 47f:	12 0c bd 00 00 00 01 	adc    0x1000000(,%rdi,4),%cl
 486:	53                   	push   %rbx
 487:	0f 03 00             	lsl    (%rax),%eax
 48a:	00 12                	add    %dl,(%rdx)
 48c:	0c 80                	or     $0x80,%al
 48e:	00 00                	add    %al,(%rax)
 490:	00 01                	add    %al,(%rcx)
 492:	55                   	push   %rbp
 493:	0f 03 00             	lsl    (%rax),%eax
 496:	00 00                	add    %al,(%rax)
 498:	00 00                	add    %al,(%rax)
 49a:	14 6f                	adc    $0x6f,%al
 49c:	03 00                	add    (%rax),%eax
 49e:	00 15 e2 03 00 00    	add    %dl,0x3e2(%rip)        # 886 <__abi_tag+0x5c2>
 4a4:	04 00                	add    $0x0,%al
 4a6:	09 e0                	or     %esp,%eax
 4a8:	16                   	(bad)  
 4a9:	00 00                	add    %al,(%rax)
 4ab:	00 00                	add    %al,(%rax)
 4ad:	00 00                	add    %al,(%rax)
 4af:	39 05 00 00 01 57    	cmp    %eax,0x57010000(%rip)        # 570104b5 <_end+0x5700c45d>
 4b5:	eb 00                	jmp    4b7 <__abi_tag+0x1f3>
 4b7:	00 00                	add    %al,(%rax)
 4b9:	01 9e 16 03 00 00    	add    %ebx,0x316(%rsi)
 4bf:	17                   	(bad)  
 4c0:	a3 07 00 00 61 00 00 	movabs %eax,0x100000061000007
 4c7:	00 01 
 4c9:	9e                   	sahf   
 4ca:	16                   	(bad)  
 4cb:	03 00                	add    (%rax),%eax
 4cd:	00 17                	add    %dl,(%rdi)
 4cf:	05 08 00 00 66       	add    $0x66000008,%eax
 4d4:	00 00                	add    %al,(%rax)
 4d6:	00 01                	add    %al,(%rcx)
 4d8:	9e                   	sahf   
 4d9:	1d 03 00 00 0b       	sbb    $0xb000003,%eax
 4de:	d3 08                	rorl   %cl,(%rax)
 4e0:	00 00                	add    %al,(%rax)
 4e2:	ee                   	out    %al,(%dx)
 4e3:	00 00                	add    %al,(%rax)
 4e5:	00 01                	add    %al,(%rcx)
 4e7:	a3 0f 03 00 00 0b 1d 	movabs %eax,0x91d0b0000030f
 4ee:	09 00 
 4f0:	00 75 00             	add    %dh,0x0(%rbp)
 4f3:	00 00                	add    %al,(%rax)
 4f5:	01 a6 6a 03 00 00    	add    %esp,0x36a(%rsi)
 4fb:	0b 53 09             	or     0x9(%rbx),%edx
 4fe:	00 00                	add    %al,(%rax)
 500:	7e 00                	jle    502 <__abi_tag+0x23e>
 502:	00 00                	add    %al,(%rax)
 504:	01 a7 6a 03 00 00    	add    %esp,0x36a(%rdi)
 50a:	0b 4e 0c             	or     0xc(%rsi),%ecx
 50d:	00 00                	add    %al,(%rax)
 50f:	f9                   	stc    
 510:	00 00                	add    %al,(%rax)
 512:	00 01                	add    %al,(%rcx)
 514:	ad                   	lods   %ds:(%rsi),%eax
 515:	6f                   	outsl  %ds:(%rsi),(%dx)
 516:	03 00                	add    (%rax),%eax
 518:	00 0b                	add    %cl,(%rbx)
 51a:	57                   	push   %rdi
 51b:	0d 00 00 fd 00       	or     $0xfd0000,%eax
 520:	00 00                	add    %al,(%rax)
 522:	01 ae 6f 03 00 00    	add    %ebp,0x36f(%rsi)
 528:	0b 63 0f             	or     0xf(%rbx),%esp
 52b:	00 00                	add    %al,(%rax)
 52d:	04 01                	add    $0x1,%al
 52f:	00 00                	add    %al,(%rax)
 531:	01 af 6f 03 00 00    	add    %ebp,0x36f(%rdi)
 537:	0b b7 0f 00 00 0b    	or     0xb00000f(%rdi),%esi
 53d:	01 00                	add    %eax,(%rax)
 53f:	00 01                	add    %al,(%rcx)
 541:	b0 6f                	mov    $0x6f,%al
 543:	03 00                	add    (%rax),%eax
 545:	00 0b                	add    %cl,(%rbx)
 547:	f8                   	clc    
 548:	0f 00 00             	sldt   (%rax)
 54b:	12 01                	adc    (%rcx),%al
 54d:	00 00                	add    %al,(%rax)
 54f:	01 b1 6f 03 00 00    	add    %esi,0x36f(%rcx)
 555:	0b 30                	or     (%rax),%esi
 557:	10 00                	adc    %al,(%rax)
 559:	00 1d 00 00 00 01    	add    %bl,0x1000000(%rip)        # 100055f <_end+0xffc507>
 55f:	c2 6a 03             	retq   $0x36a
 562:	00 00                	add    %al,(%rax)
 564:	0b b3 10 00 00 3d    	or     0x3d000010(%rbx),%esi
 56a:	00 00                	add    %al,(%rax)
 56c:	00 01                	add    %al,(%rcx)
 56e:	c3                   	retq   
 56f:	6a 03                	pushq  $0x3
 571:	00 00                	add    %al,(%rax)
 573:	18 ec                	sbb    %ch,%ah
 575:	02 00                	add    (%rax),%al
 577:	00 30                	add    %dh,(%rax)
 579:	00 00                	add    %al,(%rax)
 57b:	00 01                	add    %al,(%rcx)
 57d:	a3 1a 03 67 08 00 00 	movabs %eax,0x2f800000867031a
 584:	f8 02 
 586:	00 00                	add    %al,(%rax)
 588:	03 9d 08 00 00 03    	add    0x3000008(%rbp),%ebx
 58e:	03 00                	add    (%rax),%eax
 590:	00 00                	add    %al,(%rax)
 592:	18 2e                	sbb    %ch,(%rsi)
 594:	03 00                	add    (%rax),%eax
 596:	00 60 00             	add    %ah,0x0(%rax)
 599:	00 00                	add    %al,(%rax)
 59b:	01 aa 03 03 1d 0a    	add    %ebp,0xa1d0303(%rdx)
 5a1:	00 00                	add    %al,(%rax)
 5a3:	36 03 00             	add    %ss:(%rax),%eax
 5a6:	00 03                	add    %al,(%rbx)
 5a8:	d4                   	(bad)  
 5a9:	09 00                	or     %eax,(%rax)
 5ab:	00 41 03             	add    %al,0x3(%rcx)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	03 66 0a             	add    0xa(%rsi),%esp
 5b3:	00 00                	add    %al,(%rax)
 5b5:	4c 03 00             	add    (%rax),%r8
 5b8:	00 06                	add    %al,(%rsi)
 5ba:	b0 00                	mov    $0x0,%al
 5bc:	00 00                	add    %al,(%rax)
 5be:	05 89 09 00 00       	add    $0x989,%eax
 5c3:	58                   	pop    %rax
 5c4:	03 00                	add    (%rax),%eax
 5c6:	00 00                	add    %al,(%rax)
 5c8:	00 18                	add    %bl,(%rax)
 5ca:	76 03                	jbe    5cf <__abi_tag+0x30b>
 5cc:	00 00                	add    %al,(%rax)
 5ce:	00 01                	add    %al,(%rcx)
 5d0:	00 00                	add    %al,(%rax)
 5d2:	01 ae 13 03 71 0c    	add    %ebp,0xc710313(%rsi)
 5d8:	00 00                	add    %al,(%rax)
 5da:	82                   	(bad)  
 5db:	03 00                	add    (%rax),%eax
 5dd:	00 03                	add    %al,(%rbx)
 5df:	94                   	xchg   %eax,%esp
 5e0:	0c 00                	or     $0x0,%al
 5e2:	00 8d 03 00 00 03    	add    %cl,0x3000003(%rbp)
 5e8:	b7 0c                	mov    $0xc,%bh
 5ea:	00 00                	add    %al,(%rax)
 5ec:	98                   	cwtl   
 5ed:	03 00                	add    (%rax),%eax
 5ef:	00 05 af 0a 00 00    	add    %al,0xaaf(%rip)        # 10a4 <_start+0x24>
 5f5:	a3 03 00 00 07 33 19 	movabs %eax,0x193307000003
 5fc:	00 00 
 5fe:	00 00                	add    %al,(%rax)
 600:	00 00                	add    %al,(%rax)
 602:	31 00                	xor    %eax,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	05 da 0c 00 00       	add    $0xcda,%eax
 60b:	af                   	scas   %es:(%rdi),%eax
 60c:	03 00                	add    (%rax),%eax
 60e:	00 00                	add    %al,(%rax)
 610:	07                   	(bad)  
 611:	6a 19                	pushq  $0x19
 613:	00 00                	add    %al,(%rax)
 615:	00 00                	add    %al,(%rax)
 617:	00 00                	add    %al,(%rax)
 619:	50                   	push   %rax
 61a:	00 00                	add    %al,(%rax)
 61c:	00 05 34 0d 00 00    	add    %al,0xd34(%rip)        # 1356 <dotprod_4x+0x66>
 622:	bc 03 00 00 07       	mov    $0x7000003,%esp
 627:	6a 19                	pushq  $0x19
 629:	00 00                	add    %al,(%rax)
 62b:	00 00                	add    %al,(%rax)
 62d:	00 00                	add    %al,(%rax)
 62f:	32 00                	xor    (%rax),%al
 631:	00 00                	add    %al,(%rax)
 633:	05 fd 0c 00 00       	add    $0xcfd,%eax
 638:	c8 03 00 00          	enterq $0x3,$0x0
 63c:	00 00                	add    %al,(%rax)
 63e:	00 19                	add    %bl,(%rcx)
 640:	e9 03 00 00 7e       	jmpq   7e000648 <_end+0x7dffc5f0>
 645:	18 00                	sbb    %al,(%rax)
 647:	00 00                	add    %al,(%rax)
 649:	00 00                	add    %al,(%rax)
 64b:	00 a9 00 00 00 01    	add    %ch,0x1000000(%rcx)
 651:	ad                   	lods   %ds:(%rsi),%eax
 652:	10 05 cc 0b 00 00    	adc    %al,0xbcc(%rip)        # 1224 <dotprod+0x74>
 658:	16                   	(bad)  
 659:	04 00                	add    $0x0,%al
 65b:	00 07                	add    %al,(%rdi)
 65d:	7e 18                	jle    677 <__abi_tag+0x3b3>
 65f:	00 00                	add    %al,(%rax)
 661:	00 00                	add    %al,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	a9 00 00 00 05       	test   $0x5000000,%eax
 66a:	51                   	push   %rcx
 66b:	0b 00                	or     (%rax),%eax
 66d:	00 22                	add    %ah,(%rdx)
 66f:	04 00                	add    $0x0,%al
 671:	00 00                	add    %al,(%rax)
 673:	00 19                	add    %bl,(%rcx)
 675:	2f                   	(bad)  
 676:	04 00                	add    $0x0,%al
 678:	00 cd                	add    %cl,%ch
 67a:	19 00                	sbb    %eax,(%rax)
 67c:	00 00                	add    %al,(%rax)
 67e:	00 00                	add    %al,(%rax)
 680:	00 c8                	add    %cl,%al
 682:	00 00                	add    %al,(%rax)
 684:	00 01                	add    %al,(%rcx)
 686:	af                   	scas   %es:(%rdi),%eax
 687:	13 03                	adc    (%rbx),%eax
 689:	e3 0e                	jrcxz  699 <__abi_tag+0x3d5>
 68b:	00 00                	add    %al,(%rax)
 68d:	3b 04 00             	cmp    (%rax,%rax,1),%eax
 690:	00 03                	add    %al,(%rbx)
 692:	c0 0e 00             	rorb   $0x0,(%rsi)
 695:	00 46 04             	add    %al,0x4(%rsi)
 698:	00 00                	add    %al,(%rax)
 69a:	03 9d 0e 00 00 51    	add    0x5100000e(%rbp),%ebx
 6a0:	04 00                	add    $0x0,%al
 6a2:	00 08                	add    %cl,(%rax)
 6a4:	5c                   	pop    %rsp
 6a5:	04 00                	add    $0x0,%al
 6a7:	00 05 f5 0d 00 00    	add    %al,0xdf5(%rip)        # 14a2 <dotprod_8x+0xe2>
 6ad:	67 04 00             	addr32 add $0x0,%al
 6b0:	00 07                	add    %al,(%rdi)
 6b2:	cd 19                	int    $0x19
 6b4:	00 00                	add    %al,(%rax)
 6b6:	00 00                	add    %al,(%rax)
 6b8:	00 00                	add    %al,(%rax)
 6ba:	5e                   	pop    %rsi
 6bb:	00 00                	add    %al,(%rax)
 6bd:	00 05 be 0d 00 00    	add    %al,0xdbe(%rip)        # 1481 <dotprod_8x+0xc1>
 6c3:	73 04                	jae    6c9 <__abi_tag+0x405>
 6c5:	00 00                	add    %al,(%rax)
 6c7:	00 07                	add    %al,(%rdi)
 6c9:	39 1a                	cmp    %ebx,(%rdx)
 6cb:	00 00                	add    %al,(%rax)
 6cd:	00 00                	add    %al,(%rax)
 6cf:	00 00                	add    %al,(%rax)
 6d1:	3e 00 00             	add    %al,%ds:(%rax)
 6d4:	00 05 06 0f 00 00    	add    %al,0xf06(%rip)        # 15e0 <dotprod_16x+0xc0>
 6da:	80 04 00 00          	addb   $0x0,(%rax,%rax,1)
 6de:	07                   	(bad)  
 6df:	39 1a                	cmp    %ebx,(%rdx)
 6e1:	00 00                	add    %al,(%rax)
 6e3:	00 00                	add    %al,(%rax)
 6e5:	00 00                	add    %al,(%rax)
 6e7:	3e 00 00             	add    %al,%ds:(%rax)
 6ea:	00 05 2b 0f 00 00    	add    %al,0xf2b(%rip)        # 161b <dotprod_16x+0xfb>
 6f0:	8c 04 00             	mov    %es,(%rax,%rax,1)
 6f3:	00 00                	add    %al,(%rax)
 6f5:	00 00                	add    %al,(%rax)
 6f7:	19 2e                	sbb    %ebp,(%rsi)
 6f9:	03 00                	add    (%rax),%eax
 6fb:	00 56 1b             	add    %dl,0x1b(%rsi)
 6fe:	00 00                	add    %al,(%rax)
 700:	00 00                	add    %al,(%rax)
 702:	00 00                	add    %al,(%rax)
 704:	24 00                	and    $0x0,%al
 706:	00 00                	add    %al,(%rax)
 708:	01 c6                	add    %eax,%esi
 70a:	03 04 01             	add    (%rcx,%rax,1),%eax
 70d:	53                   	push   %rbx
 70e:	36 03 00             	add    %ss:(%rax),%eax
 711:	00 04 01             	add    %al,(%rcx,%rax,1)
 714:	56                   	push   %rsi
 715:	41 03 00             	add    (%r8),%eax
 718:	00 1a                	add    %bl,(%rdx)
 71a:	05 4c 03 00 00       	add    $0x34c,%eax
 71f:	07                   	(bad)  
 720:	56                   	push   %rsi
 721:	1b 00                	sbb    (%rax),%eax
 723:	00 00                	add    %al,(%rax)
 725:	00 00                	add    %al,(%rax)
 727:	00 24 00             	add    %ah,(%rax,%rax,1)
 72a:	00 00                	add    %al,(%rax)
 72c:	05 53 10 00 00       	add    $0x1053,%eax
 731:	58                   	pop    %rax
 732:	03 00                	add    (%rax),%eax
 734:	00 00                	add    %al,(%rax)
 736:	00 1b                	add    %bl,(%rbx)
 738:	49 08 00             	rex.WB or %al,(%r8)
 73b:	00 1f                	add    %bl,(%rdi)
 73d:	17                   	(bad)  
 73e:	00 00                	add    %al,(%rax)
 740:	00 00                	add    %al,(%rax)
 742:	00 00                	add    %al,(%rax)
 744:	1c 01                	sbb    $0x1,%al
 746:	54                   	push   %rsp
 747:	02 73 00             	add    0x0(%rbx),%dh
 74a:	1c 01                	sbb    $0x1,%al
 74c:	55                   	push   %rbp
 74d:	02 10                	add    (%rax),%dl
 74f:	40 00 1b             	add    %bl,(%rbx)
 752:	49 08 00             	rex.WB or %al,(%r8)
 755:	00 2f                	add    %ch,(%rdi)
 757:	17                   	(bad)  
 758:	00 00                	add    %al,(%rax)
 75a:	00 00                	add    %al,(%rax)
 75c:	00 00                	add    %al,(%rax)
 75e:	1c 01                	sbb    $0x1,%al
 760:	54                   	push   %rsp
 761:	02 73 00             	add    0x0(%rbx),%dh
 764:	1c 01                	sbb    $0x1,%al
 766:	55                   	push   %rbp
 767:	02 10                	add    (%rax),%dl
 769:	40 00 1b             	add    %bl,(%rbx)
 76c:	88 01                	mov    %al,(%rcx)
 76e:	00 00                	add    %al,(%rax)
 770:	a3 1a 00 00 00 00 00 	movabs %eax,0x1c0000000000001a
 777:	00 1c 
 779:	01 51 02             	add    %edx,0x2(%rcx)
 77c:	7f 00                	jg     77e <__abi_tag+0x4ba>
 77e:	1c 01                	sbb    $0x1,%al
 780:	54                   	push   %rsp
 781:	02 73 00             	add    0x0(%rbx),%dh
 784:	1c 01                	sbb    $0x1,%al
 786:	55                   	push   %rbp
 787:	02 7e 00             	add    0x0(%rsi),%bh
 78a:	00 1b                	add    %bl,(%rbx)
 78c:	3a 02                	cmp    (%rdx),%al
 78e:	00 00                	add    %al,(%rax)
 790:	b7 1a                	mov    $0x1a,%bh
 792:	00 00                	add    %al,(%rax)
 794:	00 00                	add    %al,(%rax)
 796:	00 00                	add    %al,(%rax)
 798:	1c 01                	sbb    $0x1,%al
 79a:	51                   	push   %rcx
 79b:	02 7f 00             	add    0x0(%rdi),%bh
 79e:	1c 01                	sbb    $0x1,%al
 7a0:	54                   	push   %rsp
 7a1:	02 73 00             	add    0x0(%rbx),%dh
 7a4:	1c 01                	sbb    $0x1,%al
 7a6:	55                   	push   %rbp
 7a7:	02 7e 00             	add    0x0(%rsi),%bh
 7aa:	00 1b                	add    %bl,(%rbx)
 7ac:	68 08 00 00 2a       	pushq  $0x2a000008
 7b1:	1b 00                	sbb    (%rax),%eax
 7b3:	00 00                	add    %al,(%rax)
 7b5:	00 00                	add    %al,(%rax)
 7b7:	00 1c 01             	add    %bl,(%rcx,%rax,1)
 7ba:	55                   	push   %rbp
 7bb:	02 7e 00             	add    0x0(%rsi),%bh
 7be:	00 1b                	add    %bl,(%rbx)
 7c0:	68 08 00 00 32       	pushq  $0x32000008
 7c5:	1b 00                	sbb    (%rax),%eax
 7c7:	00 00                	add    %al,(%rax)
 7c9:	00 00                	add    %al,(%rax)
 7cb:	00 1c 01             	add    %bl,(%rcx,%rax,1)
 7ce:	55                   	push   %rbp
 7cf:	02 73 00             	add    0x0(%rbx),%dh
 7d2:	00 1b                	add    %bl,(%rbx)
 7d4:	49 08 00             	rex.WB or %al,(%r8)
 7d7:	00 41 1b             	add    %al,0x1b(%rcx)
 7da:	00 00                	add    %al,(%rax)
 7dc:	00 00                	add    %al,(%rax)
 7de:	00 00                	add    %al,(%rax)
 7e0:	1c 01                	sbb    $0x1,%al
 7e2:	54                   	push   %rsp
 7e3:	02 10                	add    (%rax),%dl
 7e5:	28 1c 01             	sub    %bl,(%rcx,%rax,1)
 7e8:	55                   	push   %rbp
 7e9:	02 10                	add    (%rax),%dl
 7eb:	40 00 1b             	add    %bl,(%rbx)
 7ee:	49 08 00             	rex.WB or %al,(%r8)
 7f1:	00 53 1b             	add    %dl,0x1b(%rbx)
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 00                	add    %al,(%rax)
 7f8:	00 00                	add    %al,(%rax)
 7fa:	1c 01                	sbb    $0x1,%al
 7fc:	54                   	push   %rsp
 7fd:	02 10                	add    (%rax),%dl
 7ff:	28 1c 01             	sub    %bl,(%rcx,%rax,1)
 802:	55                   	push   %rbp
 803:	02 10                	add    (%rax),%dl
 805:	40 00 1b             	add    %bl,(%rbx)
 808:	3a 02                	cmp    (%rdx),%al
 80a:	00 00                	add    %al,(%rax)
 80c:	8a 1b                	mov    (%rbx),%bl
 80e:	00 00                	add    %al,(%rax)
 810:	00 00                	add    %al,(%rax)
 812:	00 00                	add    %al,(%rax)
 814:	1c 01                	sbb    $0x1,%al
 816:	55                   	push   %rbp
 817:	02 73 00             	add    0x0(%rbx),%dh
 81a:	1c 01                	sbb    $0x1,%al
 81c:	51                   	push   %rcx
 81d:	01 35 00 1b 68 08    	add    %esi,0x8681b00(%rip)        # 8682323 <_end+0x867e2cb>
 823:	00 00                	add    %al,(%rax)
 825:	00 1c 00             	add    %bl,(%rax,%rax,1)
 828:	00 00                	add    %al,(%rax)
 82a:	00 00                	add    %al,(%rax)
 82c:	00 1c 01             	add    %bl,(%rcx,%rax,1)
 82f:	55                   	push   %rbp
 830:	02 73 00             	add    0x0(%rbx),%dh
 833:	00 1b                	add    %bl,(%rbx)
 835:	68 08 00 00 08       	pushq  $0x8000008
 83a:	1c 00                	sbb    $0x0,%al
 83c:	00 00                	add    %al,(%rax)
 83e:	00 00                	add    %al,(%rax)
 840:	00 1c 01             	add    %bl,(%rcx,%rax,1)
 843:	55                   	push   %rbp
 844:	02 76 00             	add    0x0(%rsi),%dh
 847:	00 00                	add    %al,(%rax)
 849:	1d c1 00 00 00       	sbb    $0xc1,%eax
 84e:	02 4a 02             	add    0x2(%rdx),%cl
 851:	60                   	(bad)  
 852:	08 00                	or     %al,(%rax)
 854:	00 1e                	add    %bl,(%rsi)
 856:	61                   	(bad)  
 857:	08 00                	or     %al,(%rax)
 859:	00 1e                	add    %bl,(%rsi)
 85b:	61                   	(bad)  
 85c:	08 00                	or     %al,(%rax)
 85e:	00 00                	add    %al,(%rax)
 860:	1f                   	(bad)  
 861:	0f 4f 00             	cmovg  (%rax),%eax
 864:	00 00                	add    %al,(%rax)
 866:	07                   	(bad)  
 867:	08 20                	or     %ah,(%rax)
 869:	cf                   	iret   
 86a:	00 00                	add    %al,(%rax)
 86c:	00 02                	add    %al,(%rdx)
 86e:	35 02 1e 60 08       	xor    $0x8601e02,%eax
 873:	00 00                	add    %al,(%rax)
 875:	00 14 6f             	add    %dl,(%rdi,%rbp,2)
 878:	03 00                	add    (%rax),%eax
 87a:	00 15 e2 03 00 00    	add    %dl,0x3e2(%rip)        # c62 <__abi_tag+0x99e>
 880:	08 00                	or     %al,(%rax)
 882:	14 6f                	adc    $0x6f,%al
 884:	03 00                	add    (%rax),%eax
 886:	00 15 e2 03 00 00    	add    %dl,0x3e2(%rip)        # c6e <__abi_tag+0x9aa>
 88c:	10 00                	adc    %al,(%rax)
	...

Déassemblage de la section .debug_abbrev :

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 05 03    	add    %esp,0x305130e(%rip)        # 3051316 <_end+0x304d2be>
   8:	0e                   	(bad)  
   9:	10 17                	adc    %dl,(%rdi)
   b:	1b 0e                	sbb    (%rsi),%ecx
   d:	11 01                	adc    %eax,(%rcx)
   f:	12 06                	adc    (%rsi),%al
  11:	00 00                	add    %al,(%rax)
  13:	02 2e                	add    (%rsi),%ch
  15:	01 11                	add    %edx,(%rcx)
  17:	01 12                	add    %edx,(%rdx)
  19:	06                   	(bad)  
  1a:	40 18 97 42 19 31 13 	sbb    %dl,0x13311942(%rdi)
  21:	00 00                	add    %al,(%rax)
  23:	03 05 00 02 17 31    	add    0x31170200(%rip),%eax        # 31170229 <_end+0x3116c1d1>
  29:	13 00                	adc    (%rax),%eax
  2b:	00 04 05 00 02 18 31 	add    %al,0x31180200(,%rax,1)
  32:	13 00                	adc    (%rax),%eax
  34:	00 05 34 00 02 17    	add    %al,0x17020034(%rip)        # 1702006e <_end+0x1701c016>
  3a:	31 13                	xor    %edx,(%rbx)
  3c:	00 00                	add    %al,(%rax)
  3e:	06                   	(bad)  
  3f:	0b 01                	or     (%rcx),%eax
  41:	55                   	push   %rbp
  42:	17                   	(bad)  
  43:	00 00                	add    %al,(%rax)
  45:	07                   	(bad)  
  46:	0b 01                	or     (%rcx),%eax
  48:	11 01                	adc    %eax,(%rcx)
  4a:	12 06                	adc    (%rsi),%al
  4c:	00 00                	add    %al,(%rax)
  4e:	08 34 00             	or     %dh,(%rax,%rax,1)
  51:	31 13                	xor    %edx,(%rbx)
  53:	00 00                	add    %al,(%rax)
  55:	09 2e                	or     %ebp,(%rsi)
  57:	01 11                	add    %edx,(%rcx)
  59:	01 12                	add    %edx,(%rdx)
  5b:	06                   	(bad)  
  5c:	40 18 97 42 19 03 0e 	sbb    %dl,0xe031942(%rdi)
  63:	3a 0b                	cmp    (%rbx),%cl
  65:	3b 0b                	cmp    (%rbx),%ecx
  67:	27                   	(bad)  
  68:	19 49 13             	sbb    %ecx,0x13(%rcx)
  6b:	3f                   	(bad)  
  6c:	19 00                	sbb    %eax,(%rax)
  6e:	00 0a                	add    %cl,(%rdx)
  70:	05 00 02 18 03       	add    $0x3180200,%eax
  75:	0e                   	(bad)  
  76:	3a 0b                	cmp    (%rbx),%cl
  78:	3b 0b                	cmp    (%rbx),%ecx
  7a:	49 13 00             	adc    (%r8),%rax
  7d:	00 0b                	add    %cl,(%rbx)
  7f:	34 00                	xor    $0x0,%al
  81:	02 17                	add    (%rdi),%dl
  83:	03 0e                	add    (%rsi),%ecx
  85:	3a 0b                	cmp    (%rbx),%cl
  87:	3b 0b                	cmp    (%rbx),%ecx
  89:	49 13 00             	adc    (%r8),%rax
  8c:	00 0c 34             	add    %cl,(%rsp,%rsi,1)
  8f:	00 03                	add    %al,(%rbx)
  91:	0e                   	(bad)  
  92:	3a 0b                	cmp    (%rbx),%cl
  94:	3b 0b                	cmp    (%rbx),%ecx
  96:	49 13 00             	adc    (%r8),%rax
  99:	00 0d 2e 01 03 0e    	add    %cl,0xe03012e(%rip)        # e0301cd <_end+0xe02c175>
  9f:	3a 0b                	cmp    (%rbx),%cl
  a1:	3b 0b                	cmp    (%rbx),%ecx
  a3:	27                   	(bad)  
  a4:	19 49 13             	sbb    %ecx,0x13(%rcx)
  a7:	3f                   	(bad)  
  a8:	19 20                	sbb    %esp,(%rax)
  aa:	0b 00                	or     (%rax),%eax
  ac:	00 0e                	add    %cl,(%rsi)
  ae:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
  b3:	0b 3b                	or     (%rbx),%edi
  b5:	0b 49 13             	or     0x13(%rcx),%ecx
  b8:	00 00                	add    %al,(%rax)
  ba:	0f 24                	(bad)  
  bc:	00 03                	add    %al,(%rbx)
  be:	0e                   	(bad)  
  bf:	3e 0b 0b             	or     %ds:(%rbx),%ecx
  c2:	0b 00                	or     (%rax),%eax
  c4:	00 10                	add    %dl,(%rax)
  c6:	0f 00 49 13          	str    0x13(%rcx)
  ca:	00 00                	add    %al,(%rax)
  cc:	11 2e                	adc    %ebp,(%rsi)
  ce:	01 03                	add    %eax,(%rbx)
  d0:	0e                   	(bad)  
  d1:	3a 0b                	cmp    (%rbx),%cl
  d3:	3b 0b                	cmp    (%rbx),%ecx
  d5:	27                   	(bad)  
  d6:	19 20                	sbb    %esp,(%rax)
  d8:	0b 00                	or     (%rax),%eax
  da:	00 12                	add    %dl,(%rdx)
  dc:	0b 01                	or     (%rcx),%eax
  de:	00 00                	add    %al,(%rax)
  e0:	13 37                	adc    (%rdi),%esi
  e2:	00 49 13             	add    %cl,0x13(%rcx)
  e5:	00 00                	add    %al,(%rax)
  e7:	14 01                	adc    $0x1,%al
  e9:	01 49 13             	add    %ecx,0x13(%rcx)
  ec:	00 00                	add    %al,(%rax)
  ee:	15 21 00 49 13       	adc    $0x13490021,%eax
  f3:	37                   	(bad)  
  f4:	0b 00                	or     (%rax),%eax
  f6:	00 16                	add    %dl,(%rsi)
  f8:	24 00                	and    $0x0,%al
  fa:	03 0e                	add    (%rsi),%ecx
  fc:	0b 0b                	or     (%rbx),%ecx
  fe:	3e 0b 00             	or     %ds:(%rax),%eax
 101:	00 17                	add    %dl,(%rdi)
 103:	05 00 02 17 03       	add    $0x3170200,%eax
 108:	0e                   	(bad)  
 109:	3a 0b                	cmp    (%rbx),%cl
 10b:	3b 0b                	cmp    (%rbx),%ecx
 10d:	49 13 00             	adc    (%r8),%rax
 110:	00 18                	add    %bl,(%rax)
 112:	1d 01 31 13 55       	sbb    $0x55133101,%eax
 117:	17                   	(bad)  
 118:	58                   	pop    %rax
 119:	0b 59 0b             	or     0xb(%rcx),%ebx
 11c:	57                   	push   %rdi
 11d:	0b 00                	or     (%rax),%eax
 11f:	00 19                	add    %bl,(%rcx)
 121:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 126:	01 12                	add    %edx,(%rdx)
 128:	06                   	(bad)  
 129:	58                   	pop    %rax
 12a:	0b 59 0b             	or     0xb(%rcx),%ebx
 12d:	57                   	push   %rdi
 12e:	0b 00                	or     (%rax),%eax
 130:	00 1a                	add    %bl,(%rdx)
 132:	05 00 1c 0f 31       	add    $0x310f1c00,%eax
 137:	13 00                	adc    (%rax),%eax
 139:	00 1b                	add    %bl,(%rbx)
 13b:	89 82 01 01 31 13    	mov    %eax,0x13310101(%rdx)
 141:	11 01                	adc    %eax,(%rcx)
 143:	00 00                	add    %al,(%rax)
 145:	1c 8a                	sbb    $0x8a,%al
 147:	82                   	(bad)  
 148:	01 00                	add    %eax,(%rax)
 14a:	02 18                	add    (%rax),%bl
 14c:	91                   	xchg   %eax,%ecx
 14d:	42 18 00             	rex.X sbb %al,(%rax)
 150:	00 1d 2e 01 03 0e    	add    %bl,0xe03012e(%rip)        # e030284 <_end+0xe02c22c>
 156:	3a 0b                	cmp    (%rbx),%cl
 158:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491a85 <_end+0x1348da2d>
 15e:	3c 19                	cmp    $0x19,%al
 160:	3f                   	(bad)  
 161:	19 00                	sbb    %eax,(%rax)
 163:	00 1e                	add    %bl,(%rsi)
 165:	05 00 49 13 00       	add    $0x134900,%eax
 16a:	00 1f                	add    %bl,(%rdi)
 16c:	0f 00 00             	sldt   (%rax)
 16f:	00 20                	add    %ah,(%rax)
 171:	2e 01 03             	add    %eax,%cs:(%rbx)
 174:	0e                   	(bad)  
 175:	3a 0b                	cmp    (%rbx),%cl
 177:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1aa4 <_end+0x193bda4c>
 17d:	3f                   	(bad)  
 17e:	19 00                	sbb    %eax,(%rax)
	...

Déassemblage de la section .debug_line :

0000000000000000 <.debug_line>:
   0:	8b 05 00 00 04 00    	mov    0x40000(%rip),%eax        # 40006 <_end+0x3bfae>
   6:	3a 00                	cmp    (%rax),%al
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	01 fb                	add    %edi,%ebx
   e:	0e                   	(bad)  
   f:	0d 00 01 01 01       	or     $0x1010100,%eax
  14:	01 00                	add    %eax,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	01 00                	add    %eax,(%rax)
  1a:	00 01                	add    %al,(%rcx)
  1c:	2f                   	(bad)  
  1d:	75 73                	jne    92 <__abi_tag-0x232>
  1f:	72 2f                	jb     50 <__abi_tag-0x274>
  21:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  28:	00 00                	add    %al,(%rax)
  2a:	64 6f                	outsl  %fs:(%rsi),(%dx)
  2c:	74 70                	je     9e <__abi_tag-0x226>
  2e:	72 6f                	jb     9f <__abi_tag-0x225>
  30:	64 2e 63 00          	fs movsxd %cs:(%rax),%eax
  34:	00 00                	add    %al,(%rax)
  36:	00 73 74             	add    %dh,0x74(%rbx)
  39:	64 6c                	fs insb (%dx),%es:(%rdi)
  3b:	69 62 2e 68 00 01 00 	imul   $0x10068,0x2e(%rdx),%esp
  42:	00 00                	add    %al,(%rax)
  44:	00 09                	add    %cl,(%rcx)
  46:	02 80 11 00 00 00    	add    0x11(%rax),%al
  4c:	00 00                	add    %al,(%rax)
  4e:	00 1a                	add    %bl,(%rdx)
  50:	05 0c 0a 21 05       	add    $0x5210a0c,%eax
  55:	07                   	(bad)  
  56:	06                   	(bad)  
  57:	3c 05                	cmp    $0x5,%al
  59:	12 06                	adc    (%rsi),%al
  5b:	31 05 0a 06 4a 05    	xor    %eax,0x54a060a(%rip)        # 54a066b <_end+0x549c613>
  61:	05 06 c6 05 00       	add    $0x5c606,%eax
  66:	03 11                	add    (%rcx),%edx
  68:	08 82 05 24 0a 15    	or     %al,0x150a2405(%rdx)
  6e:	05 03 06 3c 03       	add    $0x33c0603,%eax
  73:	61                   	(bad)  
  74:	08 12                	or     %dl,(%rdx)
  76:	06                   	(bad)  
  77:	03 22                	add    (%rdx),%esp
  79:	ac                   	lods   %ds:(%rsi),%al
  7a:	1d 06 03 61 4a       	sbb    $0x4a610306,%eax
  7f:	05 0a 06 03 20       	add    $0x2003060a,%eax
  84:	ba 05 0f 06 ac       	mov    $0xac060f05,%edx
  89:	05 07 ac 05 0a       	add    $0xa05ac07,%eax
  8e:	4a 05 0f 66 05 07    	rex.WX add $0x705660f,%rax
  94:	66 05 0a 4a          	add    $0x4a0a,%ax
  98:	05 0f 66 05 07       	add    $0x705660f,%eax
  9d:	66 05 29 06          	add    $0x629,%ax
  a1:	81 05 03 06 4a 05 0a 	addl   $0xc908060a,0x54a0603(%rip)        # 54a06ae <_end+0x549c656>
  a8:	06 08 c9 
  ab:	05 0f 06 58 05       	add    $0x558060f,%eax
  b0:	07                   	(bad)  
  b1:	58                   	pop    %rax
  b2:	05 03 06 49 93       	add    $0x93490603,%eax
  b7:	05 00 95 05 07       	add    $0x7059500,%eax
  bc:	0a 16                	or     (%rsi),%dl
  be:	06                   	(bad)  
  bf:	03 55 58             	add    0x58(%rbp),%edx
  c2:	05 28 06 03 39       	add    $0x39030628,%eax
  c7:	4a 05 07 06 3c 03    	rex.WX add $0x33c0607,%rax
  cd:	47                   	rex.RXB
  ce:	2e 05 0c 06 03 3b    	cs add $0x3b03060c,%eax
  d4:	2e 05 13 06 58 05    	cs add $0x5580613,%eax
  da:	11 58 05             	adc    %ebx,0x5(%rax)
  dd:	09 4a 05             	or     %ecx,0x5(%rdx)
  e0:	2f                   	(bad)  
  e1:	06                   	(bad)  
  e2:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
  e8:	07                   	(bad)  
  e9:	3c 05                	cmp    $0x5,%al
  eb:	13 06                	adc    (%rsi),%eax
  ed:	34 05                	xor    $0x5,%al
  ef:	00 06                	add    %al,(%rsi)
  f1:	03 41 82             	add    -0x7e(%rcx),%eax
  f4:	05 01 06 03 c1       	add    $0xc1030601,%eax
  f9:	00 4a 05             	add    %cl,0x5(%rdx)
  fc:	28 03                	sub    %al,(%rbx)
  fe:	6e                   	outsb  %ds:(%rsi),(%dx)
  ff:	20 05 07 06 ac 03    	and    %al,0x3ac0607(%rip)        # 3ac070c <_end+0x3abc6b4>
 105:	51                   	push   %rcx
 106:	2e 05 0c 06 03 31    	cs add $0x3103060c,%eax
 10c:	ac                   	lods   %ds:(%rsi),%al
 10d:	05 13 06 58 05       	add    $0x5580613,%eax
 112:	11 58 05             	adc    %ebx,0x5(%rax)
 115:	09 4a 05             	or     %ecx,0x5(%rdx)
 118:	31 06                	xor    %eax,(%rsi)
 11a:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 120:	07                   	(bad)  
 121:	3c 05                	cmp    $0x5,%al
 123:	13 06                	adc    (%rsi),%eax
 125:	34 05                	xor    $0x5,%al
 127:	1c 06                	sbb    $0x6,%al
 129:	ba 05 23 66 05       	mov    $0x5662305,%edx
 12e:	00 03                	add    %al,(%rbx)
 130:	4b                   	rex.WXB
 131:	66 05 01 06          	add    $0x601,%ax
 135:	03 c1                	add    %ecx,%eax
 137:	00 4a 05             	add    %cl,0x5(%rdx)
 13a:	00 94 05 24 0a 4e 05 	add    %dl,0x54e0a24(%rbp,%rax,1)
 141:	03 06                	add    (%rsi),%eax
 143:	3c 03                	cmp    $0x3,%al
 145:	b7 7f                	mov    $0x7f,%bh
 147:	66 05 14 06          	add    $0x614,%ax
 14b:	03 cb                	add    %ebx,%ecx
 14d:	00 08                	add    %cl,(%rax)
 14f:	2e 05 18 59 05 14    	cs add $0x14055918,%eax
 155:	65 05 18 ad 05 14    	gs add $0x1405ad18,%eax
 15b:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 161:	18 06                	sbb    %al,(%rsi)
 163:	4b 05 0c 06 f2 05    	rex.WXB add $0x5f2060c,%rax
 169:	2b 06                	sub    (%rsi),%eax
 16b:	47 05 24 06 4a 05    	rex.RXB add $0x54a0624,%eax
 171:	03 3c 05 07 06 36 05 	add    0x5360607(,%rax,1),%edi
 178:	09 06                	or     %eax,(%rsi)
 17a:	82                   	(bad)  
 17b:	05 07 3c 05 2e       	add    $0x2e053c07,%eax
 180:	06                   	(bad)  
 181:	32 05 07 06 4a 05    	xor    0x54a0607(%rip),%al        # 54a078e <_end+0x549c736>
 187:	0c 06                	or     $0x6,%al
 189:	2f                   	(bad)  
 18a:	05 11 06 ba 05       	add    $0x5ba0611,%eax
 18f:	09 66 05             	or     %esp,0x5(%rsi)
 192:	11 4a 05             	adc    %ecx,0x5(%rdx)
 195:	09 66 05             	or     %esp,0x5(%rsi)
 198:	0c 4a                	or     $0x4a,%al
 19a:	05 11 66 05 09       	add    $0x9056611,%eax
 19f:	66 03 aa 7f 4a 05 0a 	add    0xa054a7f(%rdx),%bp
 1a6:	06                   	(bad)  
 1a7:	03 c6                	add    %esi,%eax
 1a9:	00 66 05             	add    %ah,0x5(%rsi)
 1ac:	0f 03 13             	lsl    (%rbx),%edx
 1af:	4a 05 16 06 4a 05    	rex.WX add $0x54a0616,%rax
 1b5:	1d 4a 05 03 82       	sbb    $0x8203054a,%eax
 1ba:	05 00 06 bf 05       	add    $0x5bf0600,%eax
 1bf:	24 0a                	and    $0xa,%al
 1c1:	4e 05 03 06 3c 03    	rex.WRX add $0x33c0603,%rax
 1c7:	9e                   	sahf   
 1c8:	7f 66                	jg     230 <__abi_tag-0x94>
 1ca:	05 14 06 03 e4       	add    $0xe4030614,%eax
 1cf:	00 08                	add    %cl,(%rax)
 1d1:	2e 05 18 59 05 14    	cs add $0x14055918,%eax
 1d7:	65 05 18 ad 05 14    	gs add $0x1405ad18,%eax
 1dd:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 1e3:	0f 06                	clts   
 1e5:	4d 05 1a 06 66 05    	rex.WRB add $0x566061a,%rax
 1eb:	18 66 05             	sbb    %ah,0x5(%rsi)
 1ee:	0c 4a                	or     $0x4a,%al
 1f0:	05 0f 06 4c 05       	add    $0x54c060f,%eax
 1f5:	1a 06                	sbb    (%rsi),%al
 1f7:	66 05 18 66          	add    $0x6618,%ax
 1fb:	05 0c 4a 05 18       	add    $0x18054a0c,%eax
 200:	06                   	(bad)  
 201:	46 05 0c 06 f2 05    	rex.RX add $0x5f2060c,%eax
 207:	2b 06                	sub    (%rsi),%eax
 209:	47 05 24 06 4a 05    	rex.RXB add $0x54a0624,%eax
 20f:	03 3c 05 07 06 03 0c 	add    0xc030607(,%rax,1),%edi
 216:	2e 05 09 06 82 05    	cs add $0x5820609,%eax
 21c:	07                   	(bad)  
 21d:	3c 05                	cmp    $0x5,%al
 21f:	2e 06                	cs (bad) 
 221:	6a 05                	pushq  $0x5
 223:	07                   	(bad)  
 224:	06                   	(bad)  
 225:	4a 05 0c 06 67 05    	rex.WX add $0x567060c,%rax
 22b:	11 06                	adc    %eax,(%rsi)
 22d:	ba 05 09 66 05       	mov    $0x5660905,%edx
 232:	11 4a 05             	adc    %ecx,0x5(%rdx)
 235:	09 66 05             	or     %esp,0x5(%rsi)
 238:	0c 4a                	or     $0x4a,%al
 23a:	05 11 66 05 09       	add    $0x9056611,%eax
 23f:	66 05 0c 4a          	add    $0x4a0c,%ax
 243:	05 11 66 05 09       	add    $0x9056611,%eax
 248:	66 05 0c 4a          	add    $0x4a0c,%ax
 24c:	05 11 66 05 09       	add    $0x9056611,%eax
 251:	66 05 0c 4a          	add    $0x4a0c,%ax
 255:	05 11 66 05 09       	add    $0x9056611,%eax
 25a:	66 05 0c 4a          	add    $0x4a0c,%ax
 25e:	05 11 66 05 09       	add    $0x9056611,%eax
 263:	66 03 8d 7f 4a 05 0a 	add    0xa054a7f(%rbp),%cx
 26a:	06                   	(bad)  
 26b:	03 df                	add    %edi,%ebx
 26d:	00 66 05             	add    %ah,0x5(%rsi)
 270:	0f 03 17             	lsl    (%rdi),%edx
 273:	ba 05 16 06 4a       	mov    $0x4a061605,%edx
 278:	05 1d 4a 05 24       	add    $0x24054a1d,%eax
 27d:	4a 05 2b 82 05 32    	rex.WX add $0x3205822b,%rax
 283:	4a 05 39 82 05 03    	rex.WX add $0x3058239,%rax
 289:	82                   	(bad)  
 28a:	05 00 06 bf 05       	add    $0x5bf0600,%eax
 28f:	24 0a                	and    $0xa,%al
 291:	4e 05 03 06 3c 03    	rex.WRX add $0x33c0603,%rax
 297:	81 7f 66 05 14 06 03 	cmpl   $0x3061405,0x66(%rdi)
 29e:	81 01 02 23 01 05    	addl   $0x5012302,(%rcx)
 2a4:	18 59 05             	sbb    %bl,0x5(%rcx)
 2a7:	14 65                	adc    $0x65,%al
 2a9:	05 18 ad 05 14       	add    $0x1405ad18,%eax
 2ae:	65 05 0c 06 9e 05    	gs add $0x59e060c,%eax
 2b4:	0f 06                	clts   
 2b6:	4d 05 1a 06 66 05    	rex.WRB add $0x566061a,%rax
 2bc:	18 66 05             	sbb    %ah,0x5(%rsi)
 2bf:	0c 4a                	or     $0x4a,%al
 2c1:	05 0f 06 4c 05       	add    $0x54c060f,%eax
 2c6:	1a 06                	sbb    (%rsi),%al
 2c8:	66 05 18 66          	add    $0x6618,%ax
 2cc:	05 0c 4a 05 0f       	add    $0xf054a0c,%eax
 2d1:	06                   	(bad)  
 2d2:	4c 05 1a 06 66 05    	rex.WR add $0x566061a,%rax
 2d8:	18 66 05             	sbb    %ah,0x5(%rsi)
 2db:	0c 4a                	or     $0x4a,%al
 2dd:	05 0f 06 5a 05       	add    $0x55a060f,%eax
 2e2:	1a 06                	sbb    (%rsi),%al
 2e4:	66 05 18 66          	add    $0x6618,%ax
 2e8:	05 0c 4a 05 10       	add    $0x10054a0c,%eax
 2ed:	06                   	(bad)  
 2ee:	5a                   	pop    %rdx
 2ef:	05 1c 06 66 05       	add    $0x566061c,%eax
 2f4:	1a 66 05             	sbb    0x5(%rsi),%ah
 2f7:	0d 4a 05 10 06       	or     $0x610054a,%eax
 2fc:	5a                   	pop    %rdx
 2fd:	05 1c 06 66 05       	add    $0x566061c,%eax
 302:	1a 66 05             	sbb    0x5(%rsi),%ah
 305:	0d 4a 05 18 06       	or     $0x618054a,%eax
 30a:	03 74 58 05          	add    0x5(%rax,%rbx,2),%esi
 30e:	0c 06                	or     $0x6,%al
 310:	f2 05 2b 06 47 05    	repnz add $0x547062b,%eax
 316:	24 06                	and    $0x6,%al
 318:	4a 05 03 3c 05 07    	rex.WX add $0x7053c03,%rax
 31e:	06                   	(bad)  
 31f:	03 14 66             	add    (%rsi,%riz,2),%edx
 322:	05 09 06 9e 05       	add    $0x59e0609,%eax
 327:	07                   	(bad)  
 328:	3c 05                	cmp    $0x5,%al
 32a:	28 06                	sub    %al,(%rsi)
 32c:	86 05 0c 4b 05 11    	xchg   %al,0x11054b0c(%rip)        # 11054e3e <_end+0x11050de6>
 332:	06                   	(bad)  
 333:	58                   	pop    %rax
 334:	05 09 58 05 34       	add    $0x34055809,%eax
 339:	06                   	(bad)  
 33a:	49 05 2f 06 4a 03    	rex.WB add $0x34a062f,%rax
 340:	e9 7e 74 05 0a       	jmpq   a0577c3 <_end+0xa05376b>
 345:	06                   	(bad)  
 346:	03 fc                	add    %esp,%edi
 348:	00 58 05             	add    %bl,0x5(%rax)
 34b:	11 03                	adc    %eax,(%rbx)
 34d:	1f                   	(bad)  
 34e:	08 e4                	or     %ah,%ah
 350:	05 18 06 4a 05       	add    $0x54a0618,%eax
 355:	1f                   	(bad)  
 356:	58                   	pop    %rax
 357:	05 26 4a 05 2d       	add    $0x2d054a26,%eax
 35c:	82                   	(bad)  
 35d:	05 34 4a 05 3b       	add    $0x3b054a34,%eax
 362:	82                   	(bad)  
 363:	05 42 58 05 49       	add    $0x49055842,%eax
 368:	9e                   	sahf   
 369:	05 50 58 05 58       	add    $0x58055850,%eax
 36e:	9e                   	sahf   
 36f:	05 60 58 05 68       	add    $0x68055860,%eax
 374:	9e                   	sahf   
 375:	05 70 58 05 78       	add    $0x78055870,%eax
 37a:	9e                   	sahf   
 37b:	05 05 90 05 00       	add    $0x59005,%eax
 380:	06                   	(bad)  
 381:	be 05 0c 0a 03       	mov    $0x30a0c05,%esi
 386:	eb 7e                	jmp    406 <__abi_tag+0x142>
 388:	d6                   	(bad)  
 389:	05 07 06 3c 05       	add    $0x53c0607,%eax
 38e:	12 06                	adc    (%rsi),%al
 390:	69 05 0a 06 4a 05 23 	imul   $0x99030623,0x54a060a(%rip),%eax        # 54a09a4 <_end+0x549c94c>
 397:	06 03 99 
 39a:	01 e4                	add    %esp,%esp
 39c:	05 0f 06 82 06       	add    $0x682060f,%eax
 3a1:	f3 06                	repz (bad) 
 3a3:	03 d9                	add    %ecx,%ebx
 3a5:	7e f2                	jle    399 <__abi_tag+0xd5>
 3a7:	05 24 06 03 13       	add    $0x13030624,%eax
 3ac:	08 3c 05 03 06 3c 03 	or     %bh,0x33c0603(,%rax,1)
 3b3:	6d                   	insl   (%dx),%es:(%rdi)
 3b4:	82                   	(bad)  
 3b5:	05 13 06 03 3f       	add    $0x3f030613,%eax
 3ba:	08 2e                	or     %ch,(%rsi)
 3bc:	06                   	(bad)  
 3bd:	03 41 4a             	add    0x4a(%rcx),%eax
 3c0:	05 03 06 03 13       	add    $0x13030603,%eax
 3c5:	58                   	pop    %rax
 3c6:	06                   	(bad)  
 3c7:	03 6d 08             	add    0x8(%rbp),%ebp
 3ca:	f2 03 13             	repnz add (%rbx),%edx
 3cd:	74 05                	je     3d4 <__abi_tag+0x110>
 3cf:	0c 06                	or     $0x6,%al
 3d1:	08 a0 c9 ab d7 b9    	or     %ah,-0x46285437(%rax)
 3d7:	d7                   	xlat   %ds:(%rbx)
 3d8:	b9 d7 05 2a b7       	mov    $0xb72a05d7,%ecx
 3dd:	05 0c 02 2a 14       	add    $0x142a020c,%eax
 3e2:	c9                   	leaveq 
 3e3:	05 2a a9 05 05       	add    $0x505a92a,%eax
 3e8:	03 78 ac             	add    -0x54(%rax),%edi
 3eb:	05 0c 03 0a 9e       	add    $0x9e0a030c,%eax
 3f0:	4b 05 2a 47 05 00    	rex.WXB add $0x5472a,%rax
 3f6:	06                   	(bad)  
 3f7:	03 6d 4a             	add    0x4a(%rbp),%ebp
 3fa:	05 03 03 13 3c       	add    $0x3c130303,%eax
 3ff:	06                   	(bad)  
 400:	03 0c 2e             	add    (%rsi,%rbp,1),%ecx
 403:	06                   	(bad)  
 404:	03 61 f2             	add    -0xe(%rcx),%esp
 407:	03 1f                	add    (%rdi),%ebx
 409:	82                   	(bad)  
 40a:	05 0a 06 08 91       	add    $0x9108060a,%eax
 40f:	05 0f 06 c8 05       	add    $0x5c8060f,%eax
 414:	07                   	(bad)  
 415:	ac                   	lods   %ds:(%rsi),%al
 416:	05 0a 4a 05 0f       	add    $0xf054a0a,%eax
 41b:	74 05                	je     422 <__abi_tag+0x15e>
 41d:	07                   	(bad)  
 41e:	66 05 0a 4a          	add    $0x4a0a,%ax
 422:	05 0f 74 05 07       	add    $0x705740f,%eax
 427:	66 05 29 06          	add    $0x629,%ax
 42b:	81 05 03 06 4a 05 0a 	addl   $0x9108060a,0x54a0603(%rip)        # 54a0a38 <_end+0x549c9e0>
 432:	06 08 91 
 435:	05 0f 06 58 05       	add    $0x558060f,%eax
 43a:	07                   	(bad)  
 43b:	58                   	pop    %rax
 43c:	05 03 06 49 05       	add    $0x5490603,%eax
 441:	07                   	(bad)  
 442:	03 0c 90             	add    (%rax,%rdx,4),%ecx
 445:	06                   	(bad)  
 446:	03 55 66             	add    0x66(%rbp),%edx
 449:	05 0c 06 03 3b       	add    $0x3b03060c,%eax
 44e:	08 2e                	or     %ch,(%rsi)
 450:	05 13 06 66 05       	add    $0x5660613,%eax
 455:	11 58 05             	adc    %ebx,0x5(%rax)
 458:	09 4a 05             	or     %ecx,0x5(%rdx)
 45b:	2f                   	(bad)  
 45c:	06                   	(bad)  
 45d:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 463:	07                   	(bad)  
 464:	3c 05                	cmp    $0x5,%al
 466:	13 06                	adc    (%rsi),%eax
 468:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 469:	06                   	(bad)  
 46a:	03 41 4a             	add    0x4a(%rcx),%eax
 46d:	05 28 06 03 2f       	add    $0x2f030628,%eax
 472:	2e 05 07 06 ac 03    	cs add $0x3ac0607,%eax
 478:	51                   	push   %rcx
 479:	2e 05 0c 06 03 31    	cs add $0x3103060c,%eax
 47f:	90                   	nop
 480:	05 13 06 66 05       	add    $0x5660613,%eax
 485:	11 58 05             	adc    %ebx,0x5(%rax)
 488:	09 4a 05             	or     %ecx,0x5(%rdx)
 48b:	31 06                	xor    %eax,(%rsi)
 48d:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 493:	07                   	(bad)  
 494:	3c 05                	cmp    $0x5,%al
 496:	13 06                	adc    (%rsi),%eax
 498:	34 05                	xor    $0x5,%al
 49a:	1c 06                	sbb    $0x6,%al
 49c:	ba 05 23 74 05       	mov    $0x5742305,%edx
 4a1:	1a 74 05 24          	sbb    0x24(%rbp,%rax,1),%dh
 4a5:	06                   	(bad)  
 4a6:	03 5e 4a             	add    0x4a(%rsi),%ebx
 4a9:	06                   	(bad)  
 4aa:	03 6d 3c             	add    0x3c(%rbp),%ebp
 4ad:	05 03 06 03 c9       	add    $0xc9030603,%eax
 4b2:	00 f2                	add    %dh,%dl
 4b4:	06                   	(bad)  
 4b5:	03 b7 7f 66 05 14    	add    0x1405667f(%rdi),%esi
 4bb:	06                   	(bad)  
 4bc:	03 cb                	add    %ebx,%ecx
 4be:	00 c8                	add    %cl,%al
 4c0:	05 18 67 05 14       	add    $0x14056718,%eax
 4c5:	73 05                	jae    4cc <__abi_tag+0x208>
 4c7:	18 bb 05 14 65 05    	sbb    %bh,0x5651405(%rbx)
 4cd:	0c 06                	or     $0x6,%al
 4cf:	9e                   	sahf   
 4d0:	05 18 06 4b 05       	add    $0x54b0618,%eax
 4d5:	0c 06                	or     $0x6,%al
 4d7:	08 12                	or     %dl,(%rdx)
 4d9:	05 2b 06 47 05       	add    $0x547062b,%eax
 4de:	24 06                	and    $0x6,%al
 4e0:	4a 05 03 3c 05 07    	rex.WX add $0x7053c03,%rax
 4e6:	06                   	(bad)  
 4e7:	36 05 09 06 82 05    	ss add $0x5820609,%eax
 4ed:	07                   	(bad)  
 4ee:	4a 05 2e 06 32 05    	rex.WX add $0x532062e,%rax
 4f4:	07                   	(bad)  
 4f5:	06                   	(bad)  
 4f6:	4a 05 0c 06 2f 05    	rex.WX add $0x52f060c,%rax
 4fc:	11 06                	adc    %eax,(%rsi)
 4fe:	d6                   	(bad)  
 4ff:	05 09 74 05 11       	add    $0x11057409,%eax
 504:	4a 05 09 74 05 0c    	rex.WX add $0xc057409,%rax
 50a:	4a 05 11 74 05 09    	rex.WX add $0x9057411,%rax
 510:	74 03                	je     515 <__abi_tag+0x251>
 512:	aa                   	stos   %al,%es:(%rdi)
 513:	7f 4a                	jg     55f <__abi_tag+0x29b>
 515:	05 0a 06 03 c6       	add    $0xc603060a,%eax
 51a:	00 66 05             	add    %ah,0x5(%rsi)
 51d:	0f 03 13             	lsl    (%rbx),%edx
 520:	4a 05 16 06 4a 05    	rex.WX add $0x54a0616,%rax
 526:	1d 4a 03 a7 7f       	sbb    $0x7fa7034a,%eax
 52b:	82                   	(bad)  
 52c:	05 13 06 03 b0       	add    $0xb0030613,%eax
 531:	01 66 06             	add    %esp,0x6(%rsi)
 534:	03 d0                	add    %eax,%edx
 536:	7e d6                	jle    50e <__abi_tag+0x24a>
 538:	05 14 06 03 b1       	add    $0xb1030614,%eax
 53d:	01 66 06             	add    %esp,0x6(%rsi)
 540:	03 cf                	add    %edi,%ecx
 542:	7e d6                	jle    51a <__abi_tag+0x256>
 544:	05 03 06 03 b4       	add    $0xb4030603,%eax
 549:	01 66 08             	add    %esp,0x8(%rsi)
 54c:	3d 08 2f 08 2f       	cmp    $0x2f082f08,%eax
 551:	08 3d 08 69 83 05    	or     %bh,0x5836908(%rip)        # 5836e5f <_end+0x5832e07>
 557:	0f 88 08 21 05 0c    	js     c052665 <_end+0xc04e60d>
 55d:	03 d2                	add    %edx,%edx
 55f:	7e 08                	jle    569 <__abi_tag+0x2a5>
 561:	20 9f 9d 4b 49 4b    	and    %bl,0x4b494b9d(%rdi)
 567:	05 0d 03 b7 01       	add    $0x1b7030d,%eax
 56c:	4a 06                	rex.WX (bad) 
 56e:	03 b3 7e f2 05 03    	add    0x305f27e(%rbx),%esi
 574:	06                   	(bad)  
 575:	03 d0                	add    %eax,%edx
 577:	01 d6                	add    %edx,%esi
 579:	d7                   	xlat   %ds:(%rbx)
 57a:	06                   	(bad)  
 57b:	03 af 7e 08 58 06    	add    0x658087e(%rdi),%ebp
 581:	03 d2                	add    %edx,%edx
 583:	01 82 d7 08 59 f5    	add    %eax,-0xaa6f729(%rdx)
 589:	83                   	.byte 0x83
 58a:	84 08                	test   %cl,(%rax)
 58c:	00 01                	add    %al,(%rcx)
 58e:	01                   	.byte 0x1

Déassemblage de la section .debug_str :

0000000000000000 <.debug_str>:
   0:	63 6c 61 6e          	movsxd 0x6e(%rcx,%riz,2),%ebp
   4:	67 20 76 65          	and    %dh,0x65(%esi)
   8:	72 73                	jb     7d <__abi_tag-0x247>
   a:	69 6f 6e 20 31 31 2e 	imul   $0x2e313120,0x6e(%rdi),%ebp
  11:	30 2e                	xor    %ch,(%rsi)
  13:	30 00                	xor    %al,(%rax)
  15:	64 6f                	outsl  %fs:(%rsi),(%dx)
  17:	74 70                	je     89 <__abi_tag-0x23b>
  19:	72 6f                	jb     8a <__abi_tag-0x23a>
  1b:	64 2e 63 00          	fs movsxd %cs:(%rax),%eax
  1f:	2f                   	(bad)  
  20:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  25:	73 68                	jae    8f <__abi_tag-0x235>
  27:	6f                   	outsl  %ds:(%rsi),(%dx)
  28:	6c                   	insb   (%dx),%es:(%rdi)
  29:	64 65 2f             	fs gs (bad) 
  2c:	64 65 76 2f          	fs gs jbe 5f <__abi_tag-0x265>
  30:	6d                   	insl   (%dx),%es:(%rdi)
  31:	61                   	(bad)  
  32:	73 74                	jae    a8 <__abi_tag-0x21c>
  34:	65 72 2f             	gs jb  66 <__abi_tag-0x25e>
  37:	61                   	(bad)  
  38:	70 2f                	jo     69 <__abi_tag-0x25b>
  3a:	73 69                	jae    a5 <__abi_tag-0x21f>
  3c:	6d                   	insl   (%dx),%es:(%rdi)
  3d:	64 00 70 61          	add    %dh,%fs:0x61(%rax)
  41:	72 73                	jb     b6 <__abi_tag-0x20e>
  43:	65 5f                	gs pop %rdi
  45:	61                   	(bad)  
  46:	72 67                	jb     af <__abi_tag-0x215>
  48:	73 00                	jae    4a <__abi_tag-0x27a>
  4a:	6c                   	insb   (%dx),%es:(%rdi)
  4b:	6f                   	outsl  %ds:(%rsi),(%dx)
  4c:	6e                   	outsb  %ds:(%rsi),(%dx)
  4d:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  52:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  56:	73 69                	jae    c1 <__abi_tag-0x203>
  58:	67 6e                	outsb  %ds:(%esi),(%dx)
  5a:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  5f:	74 00                	je     61 <__abi_tag-0x263>
  61:	61                   	(bad)  
  62:	72 67                	jb     cb <__abi_tag-0x1f9>
  64:	63 00                	movsxd (%rax),%eax
  66:	61                   	(bad)  
  67:	72 67                	jb     d0 <__abi_tag-0x1f4>
  69:	76 00                	jbe    6b <__abi_tag-0x259>
  6b:	63 68 61             	movsxd 0x61(%rax),%ebp
  6e:	72 00                	jb     70 <__abi_tag-0x254>
  70:	69 6e 69 74 00 61 00 	imul   $0x610074,0x69(%rsi),%ebp
  77:	64 6f                	outsl  %fs:(%rsi),(%dx)
  79:	75 62                	jne    dd <__abi_tag-0x1e7>
  7b:	6c                   	insb   (%dx),%es:(%rdi)
  7c:	65 00 62 00          	add    %ah,%gs:0x0(%rdx)
  80:	69 00 64 6f 74 70    	imul   $0x70746f64,(%rax),%eax
  86:	72 6f                	jb     f7 <__abi_tag-0x1cd>
  88:	64 5f                	fs pop %rdi
  8a:	32 78 00             	xor    0x0(%rax),%bh
  8d:	5f                   	pop    %rdi
  8e:	5f                   	pop    %rdi
  8f:	41 52                	push   %r10
  91:	52                   	push   %rdx
  92:	41 59                	pop    %r9
  94:	5f                   	pop    %rdi
  95:	53                   	push   %rbx
  96:	49 5a                	rex.WB pop %r10
  98:	45 5f                	rex.RB pop %r15
  9a:	54                   	push   %rsp
  9b:	59                   	pop    %rcx
  9c:	50                   	push   %rax
  9d:	45 5f                	rex.RB pop %r15
  9f:	5f                   	pop    %rdi
  a0:	00 6e 5f             	add    %ch,0x5f(%rsi)
  a3:	31 00                	xor    %eax,(%rax)
  a5:	64 6f                	outsl  %fs:(%rsi),(%dx)
  a7:	74 70                	je     119 <__abi_tag-0x1ab>
  a9:	72 6f                	jb     11a <__abi_tag-0x1aa>
  ab:	64 00 64 6f 74       	add    %ah,%fs:0x74(%rdi,%rbp,2)
  b0:	70 72                	jo     124 <__abi_tag-0x1a0>
  b2:	6f                   	outsl  %ds:(%rsi),(%dx)
  b3:	64 5f                	fs pop %rdi
  b5:	34 78                	xor    $0x78,%al
  b7:	00 74 65 73          	add    %dh,0x73(%rbp,%riz,2)
  bb:	74 00                	je     bd <__abi_tag-0x207>
  bd:	6e                   	outsb  %ds:(%rsi),(%dx)
  be:	5f                   	pop    %rdi
  bf:	34 00                	xor    $0x0,%al
  c1:	61                   	(bad)  
  c2:	6c                   	insb   (%dx),%es:(%rdi)
  c3:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
  ca:	6c                   	insb   (%dx),%es:(%rdi)
  cb:	6c                   	insb   (%dx),%es:(%rdi)
  cc:	6f                   	outsl  %ds:(%rsi),(%dx)
  cd:	63 00                	movsxd (%rax),%eax
  cf:	66 72 65             	data16 jb 137 <__abi_tag-0x18d>
  d2:	65 00 64 6f 74       	add    %ah,%gs:0x74(%rdi,%rbp,2)
  d7:	70 72                	jo     14b <__abi_tag-0x179>
  d9:	6f                   	outsl  %ds:(%rsi),(%dx)
  da:	64 5f                	fs pop %rdi
  dc:	38 78 00             	cmp    %bh,0x0(%rax)
  df:	64 6f                	outsl  %fs:(%rsi),(%dx)
  e1:	74 70                	je     153 <__abi_tag-0x171>
  e3:	72 6f                	jb     154 <__abi_tag-0x170>
  e5:	64 5f                	fs pop %rdi
  e7:	31 36                	xor    %esi,(%rsi)
  e9:	78 00                	js     eb <__abi_tag-0x1d9>
  eb:	6d                   	insl   (%dx),%es:(%rdi)
  ec:	61                   	(bad)  
  ed:	69 6e 00 6e 5f 38 00 	imul   $0x385f6e,0x0(%rsi),%ebp
  f4:	6e                   	outsb  %ds:(%rsi),(%dx)
  f5:	5f                   	pop    %rdi
  f6:	31 36                	xor    %esi,(%rsi)
  f8:	00 72 65             	add    %dh,0x65(%rdx)
  fb:	73 00                	jae    fd <__abi_tag-0x1c7>
  fd:	72 65                	jb     164 <__abi_tag-0x160>
  ff:	73 5f                	jae    160 <__abi_tag-0x164>
 101:	32 78 00             	xor    0x0(%rax),%bh
 104:	72 65                	jb     16b <__abi_tag-0x159>
 106:	73 5f                	jae    167 <__abi_tag-0x15d>
 108:	34 78                	xor    $0x78,%al
 10a:	00 72 65             	add    %dh,0x65(%rdx)
 10d:	73 5f                	jae    16e <__abi_tag-0x156>
 10f:	38 78 00             	cmp    %bh,0x0(%rax)
 112:	72 65                	jb     179 <__abi_tag-0x14b>
 114:	73 5f                	jae    175 <__abi_tag-0x14f>
 116:	31 36                	xor    %esi,(%rsi)
 118:	78 00                	js     11a <__abi_tag-0x1aa>

Déassemblage de la section .debug_loc :

0000000000000000 <.debug_loc>:
	...
       8:	0a 00                	or     (%rax),%al
       a:	00 00                	add    %al,(%rax)
       c:	00 00                	add    %al,(%rax)
       e:	00 00                	add    %al,(%rax)
      10:	01 00                	add    %eax,(%rax)
      12:	55                   	push   %rbp
      13:	0a 00                	or     (%rax),%al
      15:	00 00                	add    %al,(%rax)
      17:	00 00                	add    %al,(%rax)
      19:	00 00                	add    %al,(%rax)
      1b:	17                   	(bad)  
      1c:	00 00                	add    %al,(%rax)
      1e:	00 00                	add    %al,(%rax)
      20:	00 00                	add    %al,(%rax)
      22:	00 04 00             	add    %al,(%rax,%rax,1)
      25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
      29:	17                   	(bad)  
      2a:	00 00                	add    %al,(%rax)
      2c:	00 00                	add    %al,(%rax)
      2e:	00 00                	add    %al,(%rax)
      30:	00 1c 00             	add    %bl,(%rax,%rax,1)
      33:	00 00                	add    %al,(%rax)
      35:	00 00                	add    %al,(%rax)
      37:	00 00                	add    %al,(%rax)
      39:	01 00                	add    %eax,(%rax)
      3b:	55                   	push   %rbp
      3c:	1c 00                	sbb    $0x0,%al
      3e:	00 00                	add    %al,(%rax)
      40:	00 00                	add    %al,(%rax)
      42:	00 00                	add    %al,(%rax)
      44:	21 00                	and    %eax,(%rax)
      46:	00 00                	add    %al,(%rax)
      48:	00 00                	add    %al,(%rax)
      4a:	00 00                	add    %al,(%rax)
      4c:	04 00                	add    $0x0,%al
      4e:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
      6a:	0c 00                	or     $0x0,%al
      6c:	00 00                	add    %al,(%rax)
      6e:	00 00                	add    %al,(%rax)
      70:	00 00                	add    %al,(%rax)
      72:	01 00                	add    %eax,(%rax)
      74:	54                   	push   %rsp
      75:	0c 00                	or     $0x0,%al
      77:	00 00                	add    %al,(%rax)
      79:	00 00                	add    %al,(%rax)
      7b:	00 00                	add    %al,(%rax)
      7d:	17                   	(bad)  
      7e:	00 00                	add    %al,(%rax)
      80:	00 00                	add    %al,(%rax)
      82:	00 00                	add    %al,(%rax)
      84:	00 04 00             	add    %al,(%rax,%rax,1)
      87:	f3 01 54 9f 17       	repz add %edx,0x17(%rdi,%rbx,4)
      8c:	00 00                	add    %al,(%rax)
      8e:	00 00                	add    %al,(%rax)
      90:	00 00                	add    %al,(%rax)
      92:	00 21                	add    %ah,(%rcx)
      94:	00 00                	add    %al,(%rax)
      96:	00 00                	add    %al,(%rax)
      98:	00 00                	add    %al,(%rax)
      9a:	00 01                	add    %al,(%rcx)
      9c:	00 54 21 00          	add    %dl,0x0(%rcx,%riz,1)
      a0:	00 00                	add    %al,(%rax)
      a2:	00 00                	add    %al,(%rax)
      a4:	00 00                	add    %al,(%rax)
      a6:	21 00                	and    %eax,(%rax)
      a8:	00 00                	add    %al,(%rax)
      aa:	00 00                	add    %al,(%rax)
      ac:	00 00                	add    %al,(%rax)
      ae:	04 00                	add    $0x0,%al
      b0:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
      c1:	00 00                	add    %al,(%rax)
      c3:	00 30                	add    %dh,(%rax)
      c5:	00 00                	add    %al,(%rax)
      c7:	00 00                	add    %al,(%rax)
      c9:	00 00                	add    %al,(%rax)
      cb:	00 b6 00 00 00 00    	add    %dh,0x0(%rsi)
      d1:	00 00                	add    %al,(%rax)
      d3:	00 01                	add    %al,(%rcx)
      d5:	00 54 b6 00          	add    %dl,0x0(%rsi,%rsi,4)
      d9:	00 00                	add    %al,(%rax)
      db:	00 00                	add    %al,(%rax)
      dd:	00 00                	add    %al,(%rax)
      df:	d7                   	xlat   %ds:(%rbx)
      e0:	00 00                	add    %al,(%rax)
      e2:	00 00                	add    %al,(%rax)
      e4:	00 00                	add    %al,(%rax)
      e6:	00 04 00             	add    %al,(%rax,%rax,1)
      e9:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
      fa:	00 00                	add    %al,(%rax)
      fc:	00 30                	add    %dh,(%rax)
      fe:	00 00                	add    %al,(%rax)
     100:	00 00                	add    %al,(%rax)
     102:	00 00                	add    %al,(%rax)
     104:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
     108:	00 00                	add    %al,(%rax)
     10a:	00 00                	add    %al,(%rax)
     10c:	00 01                	add    %al,(%rcx)
     10e:	00 51 54             	add    %dl,0x54(%rcx)
     111:	00 00                	add    %al,(%rax)
     113:	00 00                	add    %al,(%rax)
     115:	00 00                	add    %al,(%rax)
     117:	00 a7 00 00 00 00    	add    %ah,0x0(%rdi)
     11d:	00 00                	add    %al,(%rax)
     11f:	00 04 00             	add    %al,(%rax,%rax,1)
     122:	f3 01 51 9f          	repz add %edx,-0x61(%rcx)
	...
     136:	30 00                	xor    %al,(%rax)
     138:	00 00                	add    %al,(%rax)
     13a:	00 00                	add    %al,(%rax)
     13c:	00 00                	add    %al,(%rax)
     13e:	4f 00 00             	rex.WRXB add %r8b,(%r8)
     141:	00 00                	add    %al,(%rax)
     143:	00 00                	add    %al,(%rax)
     145:	00 02                	add    %al,(%rdx)
     147:	00 30                	add    %dh,(%rax)
     149:	9f                   	lahf   
     14a:	4f 00 00             	rex.WRXB add %r8b,(%r8)
     14d:	00 00                	add    %al,(%rax)
     14f:	00 00                	add    %al,(%rax)
     151:	00 50 00             	add    %dl,0x0(%rax)
     154:	00 00                	add    %al,(%rax)
     156:	00 00                	add    %al,(%rax)
     158:	00 00                	add    %al,(%rax)
     15a:	01 00                	add    %eax,(%rax)
     15c:	61                   	(bad)  
     15d:	50                   	push   %rax
     15e:	00 00                	add    %al,(%rax)
     160:	00 00                	add    %al,(%rax)
     162:	00 00                	add    %al,(%rax)
     164:	00 5a 00             	add    %bl,0x0(%rdx)
     167:	00 00                	add    %al,(%rax)
     169:	00 00                	add    %al,(%rax)
     16b:	00 00                	add    %al,(%rax)
     16d:	02 00                	add    (%rax),%al
     16f:	30 9f 5a 00 00 00    	xor    %bl,0x5a(%rdi)
     175:	00 00                	add    %al,(%rax)
     177:	00 00                	add    %al,(%rax)
     179:	7a 00                	jp     17b <__abi_tag-0x149>
     17b:	00 00                	add    %al,(%rax)
     17d:	00 00                	add    %al,(%rax)
     17f:	00 00                	add    %al,(%rax)
     181:	01 00                	add    %eax,(%rax)
     183:	61                   	(bad)  
     184:	7a 00                	jp     186 <__abi_tag-0x13e>
     186:	00 00                	add    %al,(%rax)
     188:	00 00                	add    %al,(%rax)
     18a:	00 00                	add    %al,(%rax)
     18c:	8a 00                	mov    (%rax),%al
     18e:	00 00                	add    %al,(%rax)
     190:	00 00                	add    %al,(%rax)
     192:	00 00                	add    %al,(%rax)
     194:	01 00                	add    %eax,(%rax)
     196:	62                   	(bad)  
     197:	8a 00                	mov    (%rax),%al
     199:	00 00                	add    %al,(%rax)
     19b:	00 00                	add    %al,(%rax)
     19d:	00 00                	add    %al,(%rax)
     19f:	9a                   	(bad)  
     1a0:	00 00                	add    %al,(%rax)
     1a2:	00 00                	add    %al,(%rax)
     1a4:	00 00                	add    %al,(%rax)
     1a6:	00 01                	add    %al,(%rcx)
     1a8:	00 63 9a             	add    %ah,-0x66(%rbx)
     1ab:	00 00                	add    %al,(%rax)
     1ad:	00 00                	add    %al,(%rax)
     1af:	00 00                	add    %al,(%rax)
     1b1:	00 9e 00 00 00 00    	add    %bl,0x0(%rsi)
     1b7:	00 00                	add    %al,(%rax)
     1b9:	00 01                	add    %al,(%rcx)
     1bb:	00 64 9e 00          	add    %ah,0x0(%rsi,%rbx,4)
     1bf:	00 00                	add    %al,(%rax)
     1c1:	00 00                	add    %al,(%rax)
     1c3:	00 00                	add    %al,(%rax)
     1c5:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     1c6:	00 00                	add    %al,(%rax)
     1c8:	00 00                	add    %al,(%rax)
     1ca:	00 00                	add    %al,(%rax)
     1cc:	00 01                	add    %al,(%rcx)
     1ce:	00 61 b6             	add    %ah,-0x4a(%rcx)
     1d1:	00 00                	add    %al,(%rax)
     1d3:	00 00                	add    %al,(%rax)
     1d5:	00 00                	add    %al,(%rax)
     1d7:	00 d8                	add    %bl,%al
     1d9:	00 00                	add    %al,(%rax)
     1db:	00 00                	add    %al,(%rax)
     1dd:	00 00                	add    %al,(%rax)
     1df:	00 01                	add    %al,(%rcx)
     1e1:	00 61 00             	add    %ah,0x0(%rcx)
	...
     1f0:	00 00                	add    %al,(%rax)
     1f2:	00 30                	add    %dh,(%rax)
     1f4:	00 00                	add    %al,(%rax)
     1f6:	00 00                	add    %al,(%rax)
     1f8:	00 00                	add    %al,(%rax)
     1fa:	00 4c 00 00          	add    %cl,0x0(%rax,%rax,1)
     1fe:	00 00                	add    %al,(%rax)
     200:	00 00                	add    %al,(%rax)
     202:	00 02                	add    %al,(%rdx)
     204:	00 30                	add    %dh,(%rax)
     206:	9f                   	lahf   
     207:	50                   	push   %rax
     208:	00 00                	add    %al,(%rax)
     20a:	00 00                	add    %al,(%rax)
     20c:	00 00                	add    %al,(%rax)
     20e:	00 5a 00             	add    %bl,0x0(%rdx)
     211:	00 00                	add    %al,(%rax)
     213:	00 00                	add    %al,(%rax)
     215:	00 00                	add    %al,(%rax)
     217:	02 00                	add    (%rax),%al
     219:	30 9f 5a 00 00 00    	xor    %bl,0x5a(%rdi)
     21f:	00 00                	add    %al,(%rax)
     221:	00 00                	add    %al,(%rax)
     223:	65 00 00             	add    %al,%gs:(%rax)
     226:	00 00                	add    %al,(%rax)
     228:	00 00                	add    %al,(%rax)
     22a:	00 01                	add    %al,(%rcx)
     22c:	00 52 65             	add    %dl,0x65(%rdx)
     22f:	00 00                	add    %al,(%rax)
     231:	00 00                	add    %al,(%rax)
     233:	00 00                	add    %al,(%rax)
     235:	00 8a 00 00 00 00    	add    %cl,0x0(%rdx)
     23b:	00 00                	add    %al,(%rax)
     23d:	00 05 00 72 00 31    	add    %al,0x31007200(%rip)        # 31007443 <_end+0x310033eb>
     243:	21 9f 8a 00 00 00    	and    %ebx,0x8a(%rdi)
     249:	00 00                	add    %al,(%rax)
     24b:	00 00                	add    %al,(%rax)
     24d:	9a                   	(bad)  
     24e:	00 00                	add    %al,(%rax)
     250:	00 00                	add    %al,(%rax)
     252:	00 00                	add    %al,(%rax)
     254:	00 05 00 72 00 32    	add    %al,0x32007200(%rip)        # 3200745a <_end+0x32003402>
     25a:	21 9f 9a 00 00 00    	and    %ebx,0x9a(%rdi)
     260:	00 00                	add    %al,(%rax)
     262:	00 00                	add    %al,(%rax)
     264:	a2 00 00 00 00 00 00 	movabs %al,0x500000000000000
     26b:	00 05 
     26d:	00 72 00             	add    %dh,0x0(%rdx)
     270:	33 21                	xor    (%rcx),%esp
     272:	9f                   	lahf   
     273:	a2 00 00 00 00 00 00 	movabs %al,0xa700000000000000
     27a:	00 a7 
     27c:	00 00                	add    %al,(%rax)
     27e:	00 00                	add    %al,(%rax)
     280:	00 00                	add    %al,(%rax)
     282:	00 01                	add    %al,(%rcx)
     284:	00 52 00             	add    %dl,0x0(%rdx)
	...
     293:	00 00                	add    %al,(%rax)
     295:	00 e0                	add    %ah,%al
     297:	00 00                	add    %al,(%rax)
     299:	00 00                	add    %al,(%rax)
     29b:	00 00                	add    %al,(%rax)
     29d:	00 f0                	add    %dh,%al
     29f:	00 00                	add    %al,(%rax)
     2a1:	00 00                	add    %al,(%rax)
     2a3:	00 00                	add    %al,(%rax)
     2a5:	00 08                	add    %cl,(%rax)
     2a7:	00 30                	add    %dh,(%rax)
     2a9:	9f                   	lahf   
     2aa:	93                   	xchg   %eax,%ebx
     2ab:	08 30                	or     %dh,(%rax)
     2ad:	9f                   	lahf   
     2ae:	93                   	xchg   %eax,%ebx
     2af:	08 18                	or     %bl,(%rax)
     2b1:	01 00                	add    %eax,(%rax)
     2b3:	00 00                	add    %al,(%rax)
     2b5:	00 00                	add    %al,(%rax)
     2b7:	00 27                	add    %ah,(%rdi)
     2b9:	01 00                	add    %eax,(%rax)
     2bb:	00 00                	add    %al,(%rax)
     2bd:	00 00                	add    %al,(%rax)
     2bf:	00 08                	add    %cl,(%rax)
     2c1:	00 30                	add    %dh,(%rax)
     2c3:	9f                   	lahf   
     2c4:	93                   	xchg   %eax,%ebx
     2c5:	08 30                	or     %dh,(%rax)
     2c7:	9f                   	lahf   
     2c8:	93                   	xchg   %eax,%ebx
     2c9:	08 00                	or     %al,(%rax)
	...
     2d7:	00 00                	add    %al,(%rax)
     2d9:	00 e5                	add    %ah,%ch
     2db:	00 00                	add    %al,(%rax)
     2dd:	00 00                	add    %al,(%rax)
     2df:	00 00                	add    %al,(%rax)
     2e1:	00 f0                	add    %dh,%al
     2e3:	00 00                	add    %al,(%rax)
     2e5:	00 00                	add    %al,(%rax)
     2e7:	00 00                	add    %al,(%rax)
     2e9:	00 02                	add    %al,(%rdx)
     2eb:	00 30                	add    %dh,(%rax)
     2ed:	9f                   	lahf   
     2ee:	f0 00 00             	lock add %al,(%rax)
     2f1:	00 00                	add    %al,(%rax)
     2f3:	00 00                	add    %al,(%rax)
     2f5:	00 0b                	add    %cl,(%rbx)
     2f7:	01 00                	add    %eax,(%rax)
     2f9:	00 00                	add    %al,(%rax)
     2fb:	00 00                	add    %al,(%rax)
     2fd:	00 01                	add    %al,(%rcx)
     2ff:	00 50 00             	add    %dl,0x0(%rax)
	...
     30e:	00 00                	add    %al,(%rax)
     310:	00 18                	add    %bl,(%rax)
     312:	01 00                	add    %eax,(%rax)
     314:	00 00                	add    %al,(%rax)
     316:	00 00                	add    %al,(%rax)
     318:	00 27                	add    %ah,(%rdi)
     31a:	01 00                	add    %eax,(%rax)
     31c:	00 00                	add    %al,(%rax)
     31e:	00 00                	add    %al,(%rax)
     320:	00 02                	add    %al,(%rdx)
     322:	00 30                	add    %dh,(%rax)
     324:	9f                   	lahf   
     325:	27                   	(bad)  
     326:	01 00                	add    %eax,(%rax)
     328:	00 00                	add    %al,(%rax)
     32a:	00 00                	add    %al,(%rax)
     32c:	00 4b 01             	add    %cl,0x1(%rbx)
     32f:	00 00                	add    %al,(%rax)
     331:	00 00                	add    %al,(%rax)
     333:	00 00                	add    %al,(%rax)
     335:	01 00                	add    %eax,(%rax)
     337:	52                   	push   %rdx
	...
     348:	23 01                	and    (%rcx),%eax
     34a:	00 00                	add    %al,(%rax)
     34c:	00 00                	add    %al,(%rax)
     34e:	00 00                	add    %al,(%rax)
     350:	68 01 00 00 00       	pushq  $0x1
     355:	00 00                	add    %al,(%rax)
     357:	00 01                	add    %al,(%rcx)
     359:	00 50 00             	add    %dl,0x0(%rax)
	...
     368:	00 00                	add    %al,(%rax)
     36a:	00 70 01             	add    %dh,0x1(%rax)
     36d:	00 00                	add    %al,(%rax)
     36f:	00 00                	add    %al,(%rax)
     371:	00 00                	add    %al,(%rax)
     373:	83 01 00             	addl   $0x0,(%rcx)
     376:	00 00                	add    %al,(%rax)
     378:	00 00                	add    %al,(%rax)
     37a:	00 10                	add    %dl,(%rax)
     37c:	00 30                	add    %dh,(%rax)
     37e:	9f                   	lahf   
     37f:	93                   	xchg   %eax,%ebx
     380:	08 30                	or     %dh,(%rax)
     382:	9f                   	lahf   
     383:	93                   	xchg   %eax,%ebx
     384:	08 30                	or     %dh,(%rax)
     386:	9f                   	lahf   
     387:	93                   	xchg   %eax,%ebx
     388:	08 30                	or     %dh,(%rax)
     38a:	9f                   	lahf   
     38b:	93                   	xchg   %eax,%ebx
     38c:	08 00                	or     %al,(%rax)
     38e:	02 00                	add    (%rax),%al
     390:	00 00                	add    %al,(%rax)
     392:	00 00                	add    %al,(%rax)
     394:	00 0a                	add    %cl,(%rdx)
     396:	02 00                	add    (%rax),%al
     398:	00 00                	add    %al,(%rax)
     39a:	00 00                	add    %al,(%rax)
     39c:	00 03                	add    %al,(%rbx)
     39e:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
     3a2:	0a 02                	or     (%rdx),%al
     3a4:	00 00                	add    %al,(%rax)
     3a6:	00 00                	add    %al,(%rax)
     3a8:	00 00                	add    %al,(%rax)
     3aa:	1a 02                	sbb    (%rdx),%al
     3ac:	00 00                	add    %al,(%rax)
     3ae:	00 00                	add    %al,(%rax)
     3b0:	00 00                	add    %al,(%rax)
     3b2:	03 00                	add    (%rax),%eax
     3b4:	65 93                	gs xchg %eax,%ebx
     3b6:	08 1a                	or     %bl,(%rdx)
     3b8:	02 00                	add    (%rax),%al
     3ba:	00 00                	add    %al,(%rax)
     3bc:	00 00                	add    %al,(%rax)
     3be:	00 1c 02             	add    %bl,(%rdx,%rax,1)
     3c1:	00 00                	add    %al,(%rax)
     3c3:	00 00                	add    %al,(%rax)
     3c5:	00 00                	add    %al,(%rax)
     3c7:	03 00                	add    (%rax),%eax
     3c9:	62 93                	(bad)  
     3cb:	08 1c 02             	or     %bl,(%rdx,%rax,1)
     3ce:	00 00                	add    %al,(%rax)
     3d0:	00 00                	add    %al,(%rax)
     3d2:	00 00                	add    %al,(%rax)
     3d4:	24 02                	and    $0x2,%al
     3d6:	00 00                	add    %al,(%rax)
     3d8:	00 00                	add    %al,(%rax)
     3da:	00 00                	add    %al,(%rax)
     3dc:	10 00                	adc    %al,(%rax)
     3de:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     3e4:	93                   	xchg   %eax,%ebx
     3e5:	08 30                	or     %dh,(%rax)
     3e7:	9f                   	lahf   
     3e8:	93                   	xchg   %eax,%ebx
     3e9:	08 30                	or     %dh,(%rax)
     3eb:	9f                   	lahf   
     3ec:	93                   	xchg   %eax,%ebx
     3ed:	08 24 02             	or     %ah,(%rdx,%rax,1)
     3f0:	00 00                	add    %al,(%rax)
     3f2:	00 00                	add    %al,(%rax)
     3f4:	00 00                	add    %al,(%rax)
     3f6:	28 02                	sub    %al,(%rdx)
     3f8:	00 00                	add    %al,(%rax)
     3fa:	00 00                	add    %al,(%rax)
     3fc:	00 00                	add    %al,(%rax)
     3fe:	03 00                	add    (%rax),%eax
     400:	62 93                	(bad)  
     402:	08 00                	or     %al,(%rax)
	...
     410:	00 00                	add    %al,(%rax)
     412:	00 70 01             	add    %dh,0x1(%rax)
     415:	00 00                	add    %al,(%rax)
     417:	00 00                	add    %al,(%rax)
     419:	00 00                	add    %al,(%rax)
     41b:	83 01 00             	addl   $0x0,(%rcx)
     41e:	00 00                	add    %al,(%rax)
     420:	00 00                	add    %al,(%rax)
     422:	00 02                	add    %al,(%rdx)
     424:	00 30                	add    %dh,(%rax)
     426:	9f                   	lahf   
     427:	83 01 00             	addl   $0x0,(%rcx)
     42a:	00 00                	add    %al,(%rax)
     42c:	00 00                	add    %al,(%rax)
     42e:	00 d7                	add    %dl,%bh
     430:	01 00                	add    %eax,(%rax)
     432:	00 00                	add    %al,(%rax)
     434:	00 00                	add    %al,(%rax)
     436:	00 01                	add    %al,(%rcx)
     438:	00 50 00             	add    %dl,0x0(%rax)
	...
     447:	00 00                	add    %al,(%rax)
     449:	00 e4                	add    %ah,%ah
     44b:	01 00                	add    %eax,(%rax)
     44d:	00 00                	add    %al,(%rax)
     44f:	00 00                	add    %al,(%rax)
     451:	00 1c 02             	add    %bl,(%rdx,%rax,1)
     454:	00 00                	add    %al,(%rax)
     456:	00 00                	add    %al,(%rax)
     458:	00 00                	add    %al,(%rax)
     45a:	03 00                	add    (%rax),%eax
     45c:	71 7c                	jno    4da <__abi_tag+0x216>
     45e:	9f                   	lahf   
	...
     46f:	e4 01                	in     $0x1,%al
     471:	00 00                	add    %al,(%rax)
     473:	00 00                	add    %al,(%rax)
     475:	00 00                	add    %al,(%rax)
     477:	f0 01 00             	lock add %eax,(%rax)
     47a:	00 00                	add    %al,(%rax)
     47c:	00 00                	add    %al,(%rax)
     47e:	00 03                	add    %al,(%rbx)
     480:	00 71 7d             	add    %dh,0x7d(%rcx)
     483:	9f                   	lahf   
	...
     494:	40 02 00             	add    (%rax),%al
     497:	00 00                	add    %al,(%rax)
     499:	00 00                	add    %al,(%rax)
     49b:	00 5b 02             	add    %bl,0x2(%rbx)
     49e:	00 00                	add    %al,(%rax)
     4a0:	00 00                	add    %al,(%rax)
     4a2:	00 00                	add    %al,(%rax)
     4a4:	20 00                	and    %al,(%rax)
     4a6:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     4ac:	93                   	xchg   %eax,%ebx
     4ad:	08 30                	or     %dh,(%rax)
     4af:	9f                   	lahf   
     4b0:	93                   	xchg   %eax,%ebx
     4b1:	08 30                	or     %dh,(%rax)
     4b3:	9f                   	lahf   
     4b4:	93                   	xchg   %eax,%ebx
     4b5:	08 30                	or     %dh,(%rax)
     4b7:	9f                   	lahf   
     4b8:	93                   	xchg   %eax,%ebx
     4b9:	08 30                	or     %dh,(%rax)
     4bb:	9f                   	lahf   
     4bc:	93                   	xchg   %eax,%ebx
     4bd:	08 30                	or     %dh,(%rax)
     4bf:	9f                   	lahf   
     4c0:	93                   	xchg   %eax,%ebx
     4c1:	08 30                	or     %dh,(%rax)
     4c3:	9f                   	lahf   
     4c4:	93                   	xchg   %eax,%ebx
     4c5:	08 00                	or     %al,(%rax)
     4c7:	03 00                	add    (%rax),%eax
     4c9:	00 00                	add    %al,(%rax)
     4cb:	00 00                	add    %al,(%rax)
     4cd:	00 0a                	add    %cl,(%rdx)
     4cf:	03 00                	add    (%rax),%eax
     4d1:	00 00                	add    %al,(%rax)
     4d3:	00 00                	add    %al,(%rax)
     4d5:	00 03                	add    %al,(%rbx)
     4d7:	00 66 93             	add    %ah,-0x6d(%rsi)
     4da:	08 0a                	or     %cl,(%rdx)
     4dc:	03 00                	add    (%rax),%eax
     4de:	00 00                	add    %al,(%rax)
     4e0:	00 00                	add    %al,(%rax)
     4e2:	00 1a                	add    %bl,(%rdx)
     4e4:	03 00                	add    (%rax),%eax
     4e6:	00 00                	add    %al,(%rax)
     4e8:	00 00                	add    %al,(%rax)
     4ea:	00 03                	add    %al,(%rbx)
     4ec:	00 67 93             	add    %ah,-0x6d(%rdi)
     4ef:	08 1a                	or     %bl,(%rdx)
     4f1:	03 00                	add    (%rax),%eax
     4f3:	00 00                	add    %al,(%rax)
     4f5:	00 00                	add    %al,(%rax)
     4f7:	00 2a                	add    %ch,(%rdx)
     4f9:	03 00                	add    (%rax),%eax
     4fb:	00 00                	add    %al,(%rax)
     4fd:	00 00                	add    %al,(%rax)
     4ff:	00 03                	add    %al,(%rbx)
     501:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
     505:	2a 03                	sub    (%rbx),%al
     507:	00 00                	add    %al,(%rax)
     509:	00 00                	add    %al,(%rax)
     50b:	00 00                	add    %al,(%rax)
     50d:	3a 03                	cmp    (%rbx),%al
     50f:	00 00                	add    %al,(%rax)
     511:	00 00                	add    %al,(%rax)
     513:	00 00                	add    %al,(%rax)
     515:	03 00                	add    (%rax),%eax
     517:	66 93                	xchg   %ax,%bx
     519:	08 3a                	or     %bh,(%rdx)
     51b:	03 00                	add    (%rax),%eax
     51d:	00 00                	add    %al,(%rax)
     51f:	00 00                	add    %al,(%rax)
     521:	00 4a 03             	add    %cl,0x3(%rdx)
     524:	00 00                	add    %al,(%rax)
     526:	00 00                	add    %al,(%rax)
     528:	00 00                	add    %al,(%rax)
     52a:	03 00                	add    (%rax),%eax
     52c:	64 93                	fs xchg %eax,%ebx
     52e:	08 4a 03             	or     %cl,0x3(%rdx)
     531:	00 00                	add    %al,(%rax)
     533:	00 00                	add    %al,(%rax)
     535:	00 00                	add    %al,(%rax)
     537:	5a                   	pop    %rdx
     538:	03 00                	add    (%rax),%eax
     53a:	00 00                	add    %al,(%rax)
     53c:	00 00                	add    %al,(%rax)
     53e:	00 03                	add    %al,(%rbx)
     540:	00 66 93             	add    %ah,-0x6d(%rsi)
     543:	08 5a 03             	or     %bl,0x3(%rdx)
     546:	00 00                	add    %al,(%rax)
     548:	00 00                	add    %al,(%rax)
     54a:	00 00                	add    %al,(%rax)
     54c:	5c                   	pop    %rsp
     54d:	03 00                	add    (%rax),%eax
     54f:	00 00                	add    %al,(%rax)
     551:	00 00                	add    %al,(%rax)
     553:	00 03                	add    %al,(%rbx)
     555:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
     559:	5c                   	pop    %rsp
     55a:	03 00                	add    (%rax),%eax
     55c:	00 00                	add    %al,(%rax)
     55e:	00 00                	add    %al,(%rax)
     560:	00 6c 03 00          	add    %ch,0x0(%rbx,%rax,1)
     564:	00 00                	add    %al,(%rax)
     566:	00 00                	add    %al,(%rax)
     568:	00 20                	add    %ah,(%rax)
     56a:	00 30                	add    %dh,(%rax)
     56c:	9f                   	lahf   
     56d:	93                   	xchg   %eax,%ebx
     56e:	08 30                	or     %dh,(%rax)
     570:	9f                   	lahf   
     571:	93                   	xchg   %eax,%ebx
     572:	08 30                	or     %dh,(%rax)
     574:	9f                   	lahf   
     575:	93                   	xchg   %eax,%ebx
     576:	08 30                	or     %dh,(%rax)
     578:	9f                   	lahf   
     579:	93                   	xchg   %eax,%ebx
     57a:	08 30                	or     %dh,(%rax)
     57c:	9f                   	lahf   
     57d:	93                   	xchg   %eax,%ebx
     57e:	08 30                	or     %dh,(%rax)
     580:	9f                   	lahf   
     581:	93                   	xchg   %eax,%ebx
     582:	08 30                	or     %dh,(%rax)
     584:	9f                   	lahf   
     585:	93                   	xchg   %eax,%ebx
     586:	08 30                	or     %dh,(%rax)
     588:	9f                   	lahf   
     589:	93                   	xchg   %eax,%ebx
     58a:	08 6c 03 00          	or     %ch,0x0(%rbx,%rax,1)
     58e:	00 00                	add    %al,(%rax)
     590:	00 00                	add    %al,(%rax)
     592:	00 70 03             	add    %dh,0x3(%rax)
     595:	00 00                	add    %al,(%rax)
     597:	00 00                	add    %al,(%rax)
     599:	00 00                	add    %al,(%rax)
     59b:	03 00                	add    (%rax),%eax
     59d:	64 93                	fs xchg %eax,%ebx
     59f:	08 00                	or     %al,(%rax)
	...
     5ad:	00 00                	add    %al,(%rax)
     5af:	00 40 02             	add    %al,0x2(%rax)
     5b2:	00 00                	add    %al,(%rax)
     5b4:	00 00                	add    %al,(%rax)
     5b6:	00 00                	add    %al,(%rax)
     5b8:	5b                   	pop    %rbx
     5b9:	02 00                	add    (%rax),%al
     5bb:	00 00                	add    %al,(%rax)
     5bd:	00 00                	add    %al,(%rax)
     5bf:	00 02                	add    %al,(%rdx)
     5c1:	00 30                	add    %dh,(%rax)
     5c3:	9f                   	lahf   
     5c4:	5b                   	pop    %rbx
     5c5:	02 00                	add    (%rax),%al
     5c7:	00 00                	add    %al,(%rax)
     5c9:	00 00                	add    %al,(%rax)
     5cb:	00 cf                	add    %cl,%bh
     5cd:	02 00                	add    (%rax),%al
     5cf:	00 00                	add    %al,(%rax)
     5d1:	00 00                	add    %al,(%rax)
     5d3:	00 01                	add    %al,(%rcx)
     5d5:	00 50 00             	add    %dl,0x0(%rax)
	...
     5e4:	00 00                	add    %al,(%rax)
     5e6:	00 e0                	add    %ah,%al
     5e8:	02 00                	add    (%rax),%al
     5ea:	00 00                	add    %al,(%rax)
     5ec:	00 00                	add    %al,(%rax)
     5ee:	00 5c 03 00          	add    %bl,0x0(%rbx,%rax,1)
     5f2:	00 00                	add    %al,(%rax)
     5f4:	00 00                	add    %al,(%rax)
     5f6:	00 03                	add    %al,(%rbx)
     5f8:	00 71 78             	add    %dh,0x78(%rcx)
     5fb:	9f                   	lahf   
	...
     60c:	e0 02                	loopne 610 <__abi_tag+0x34c>
     60e:	00 00                	add    %al,(%rax)
     610:	00 00                	add    %al,(%rax)
     612:	00 00                	add    %al,(%rax)
     614:	f0 02 00             	lock add (%rax),%al
     617:	00 00                	add    %al,(%rax)
     619:	00 00                	add    %al,(%rax)
     61b:	00 03                	add    %al,(%rbx)
     61d:	00 71 79             	add    %dh,0x79(%rcx)
     620:	9f                   	lahf   
	...
     631:	a0 03 00 00 00 00 00 	movabs 0xcf00000000000003,%al
     638:	00 cf 
     63a:	03 00                	add    (%rax),%eax
     63c:	00 00                	add    %al,(%rax)
     63e:	00 00                	add    %al,(%rax)
     640:	00 40 00             	add    %al,0x0(%rax)
     643:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     649:	93                   	xchg   %eax,%ebx
     64a:	08 30                	or     %dh,(%rax)
     64c:	9f                   	lahf   
     64d:	93                   	xchg   %eax,%ebx
     64e:	08 30                	or     %dh,(%rax)
     650:	9f                   	lahf   
     651:	93                   	xchg   %eax,%ebx
     652:	08 30                	or     %dh,(%rax)
     654:	9f                   	lahf   
     655:	93                   	xchg   %eax,%ebx
     656:	08 30                	or     %dh,(%rax)
     658:	9f                   	lahf   
     659:	93                   	xchg   %eax,%ebx
     65a:	08 30                	or     %dh,(%rax)
     65c:	9f                   	lahf   
     65d:	93                   	xchg   %eax,%ebx
     65e:	08 30                	or     %dh,(%rax)
     660:	9f                   	lahf   
     661:	93                   	xchg   %eax,%ebx
     662:	08 30                	or     %dh,(%rax)
     664:	9f                   	lahf   
     665:	93                   	xchg   %eax,%ebx
     666:	08 30                	or     %dh,(%rax)
     668:	9f                   	lahf   
     669:	93                   	xchg   %eax,%ebx
     66a:	08 30                	or     %dh,(%rax)
     66c:	9f                   	lahf   
     66d:	93                   	xchg   %eax,%ebx
     66e:	08 30                	or     %dh,(%rax)
     670:	9f                   	lahf   
     671:	93                   	xchg   %eax,%ebx
     672:	08 30                	or     %dh,(%rax)
     674:	9f                   	lahf   
     675:	93                   	xchg   %eax,%ebx
     676:	08 30                	or     %dh,(%rax)
     678:	9f                   	lahf   
     679:	93                   	xchg   %eax,%ebx
     67a:	08 30                	or     %dh,(%rax)
     67c:	9f                   	lahf   
     67d:	93                   	xchg   %eax,%ebx
     67e:	08 30                	or     %dh,(%rax)
     680:	9f                   	lahf   
     681:	93                   	xchg   %eax,%ebx
     682:	08 b0 04 00 00 00    	or     %dh,0x4(%rax)
     688:	00 00                	add    %al,(%rax)
     68a:	00 c9                	add    %cl,%cl
     68c:	04 00                	add    $0x0,%al
     68e:	00 00                	add    %al,(%rax)
     690:	00 00                	add    %al,(%rax)
     692:	00 03                	add    %al,(%rbx)
     694:	00 67 93             	add    %ah,-0x6d(%rdi)
     697:	08 c9                	or     %cl,%cl
     699:	04 00                	add    $0x0,%al
     69b:	00 00                	add    %al,(%rax)
     69d:	00 00                	add    %al,(%rax)
     69f:	00 ee                	add    %ch,%dh
     6a1:	04 00                	add    $0x0,%al
     6a3:	00 00                	add    %al,(%rax)
     6a5:	00 00                	add    %al,(%rax)
     6a7:	00 40 00             	add    %al,0x0(%rax)
     6aa:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     6b0:	93                   	xchg   %eax,%ebx
     6b1:	08 30                	or     %dh,(%rax)
     6b3:	9f                   	lahf   
     6b4:	93                   	xchg   %eax,%ebx
     6b5:	08 30                	or     %dh,(%rax)
     6b7:	9f                   	lahf   
     6b8:	93                   	xchg   %eax,%ebx
     6b9:	08 30                	or     %dh,(%rax)
     6bb:	9f                   	lahf   
     6bc:	93                   	xchg   %eax,%ebx
     6bd:	08 30                	or     %dh,(%rax)
     6bf:	9f                   	lahf   
     6c0:	93                   	xchg   %eax,%ebx
     6c1:	08 30                	or     %dh,(%rax)
     6c3:	9f                   	lahf   
     6c4:	93                   	xchg   %eax,%ebx
     6c5:	08 30                	or     %dh,(%rax)
     6c7:	9f                   	lahf   
     6c8:	93                   	xchg   %eax,%ebx
     6c9:	08 30                	or     %dh,(%rax)
     6cb:	9f                   	lahf   
     6cc:	93                   	xchg   %eax,%ebx
     6cd:	08 30                	or     %dh,(%rax)
     6cf:	9f                   	lahf   
     6d0:	93                   	xchg   %eax,%ebx
     6d1:	08 30                	or     %dh,(%rax)
     6d3:	9f                   	lahf   
     6d4:	93                   	xchg   %eax,%ebx
     6d5:	08 30                	or     %dh,(%rax)
     6d7:	9f                   	lahf   
     6d8:	93                   	xchg   %eax,%ebx
     6d9:	08 30                	or     %dh,(%rax)
     6db:	9f                   	lahf   
     6dc:	93                   	xchg   %eax,%ebx
     6dd:	08 30                	or     %dh,(%rax)
     6df:	9f                   	lahf   
     6e0:	93                   	xchg   %eax,%ebx
     6e1:	08 30                	or     %dh,(%rax)
     6e3:	9f                   	lahf   
     6e4:	93                   	xchg   %eax,%ebx
     6e5:	08 30                	or     %dh,(%rax)
     6e7:	9f                   	lahf   
     6e8:	93                   	xchg   %eax,%ebx
     6e9:	08 ee                	or     %ch,%dh
     6eb:	04 00                	add    $0x0,%al
     6ed:	00 00                	add    %al,(%rax)
     6ef:	00 00                	add    %al,(%rax)
     6f1:	00 f2                	add    %dh,%dl
     6f3:	04 00                	add    $0x0,%al
     6f5:	00 00                	add    %al,(%rax)
     6f7:	00 00                	add    %al,(%rax)
     6f9:	00 03                	add    %al,(%rbx)
     6fb:	00 67 93             	add    %ah,-0x6d(%rdi)
     6fe:	08 00                	or     %al,(%rax)
	...
     70c:	00 00                	add    %al,(%rax)
     70e:	00 a0 03 00 00 00    	add    %ah,0x3(%rax)
     714:	00 00                	add    %al,(%rax)
     716:	00 cf                	add    %cl,%bh
     718:	03 00                	add    (%rax),%eax
     71a:	00 00                	add    %al,(%rax)
     71c:	00 00                	add    %al,(%rax)
     71e:	00 02                	add    %al,(%rdx)
     720:	00 30                	add    %dh,(%rax)
     722:	9f                   	lahf   
     723:	cf                   	iret   
     724:	03 00                	add    (%rax),%eax
     726:	00 00                	add    %al,(%rax)
     728:	00 00                	add    %al,(%rax)
     72a:	00 97 04 00 00 00    	add    %dl,0x4(%rdi)
     730:	00 00                	add    %al,(%rax)
     732:	00 01                	add    %al,(%rcx)
     734:	00 50 00             	add    %dl,0x0(%rax)
	...
     743:	00 00                	add    %al,(%rax)
     745:	00 a4 04 00 00 00 00 	add    %ah,0x0(%rsp,%rax,1)
     74c:	00 00                	add    %al,(%rax)
     74e:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     74f:	04 00                	add    $0x0,%al
     751:	00 00                	add    %al,(%rax)
     753:	00 00                	add    %al,(%rax)
     755:	00 03                	add    %al,(%rbx)
     757:	00 71 71             	add    %dh,0x71(%rcx)
     75a:	9f                   	lahf   
     75b:	b0 04                	mov    $0x4,%al
     75d:	00 00                	add    %al,(%rax)
     75f:	00 00                	add    %al,(%rax)
     761:	00 00                	add    %al,(%rax)
     763:	c9                   	leaveq 
     764:	04 00                	add    $0x0,%al
     766:	00 00                	add    %al,(%rax)
     768:	00 00                	add    %al,(%rax)
     76a:	00 01                	add    %al,(%rcx)
     76c:	00 50 00             	add    %dl,0x0(%rax)
	...
     77b:	00 00                	add    %al,(%rax)
     77d:	00 a4 04 00 00 00 00 	add    %ah,0x0(%rsp,%rax,1)
     784:	00 00                	add    %al,(%rax)
     786:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     787:	04 00                	add    $0x0,%al
     789:	00 00                	add    %al,(%rax)
     78b:	00 00                	add    %al,(%rax)
     78d:	00 03                	add    %al,(%rbx)
     78f:	00 71 70             	add    %dh,0x70(%rcx)
     792:	9f                   	lahf   
	...
     7a3:	60                   	(bad)  
     7a4:	05 00 00 00 00       	add    $0x0,%eax
     7a9:	00 00                	add    %al,(%rax)
     7ab:	7b 05                	jnp    7b2 <__abi_tag+0x4ee>
     7ad:	00 00                	add    %al,(%rax)
     7af:	00 00                	add    %al,(%rax)
     7b1:	00 00                	add    %al,(%rax)
     7b3:	01 00                	add    %eax,(%rax)
     7b5:	55                   	push   %rbp
     7b6:	7b 05                	jnp    7bd <__abi_tag+0x4f9>
     7b8:	00 00                	add    %al,(%rax)
     7ba:	00 00                	add    %al,(%rax)
     7bc:	00 00                	add    %al,(%rax)
     7be:	e3 06                	jrcxz  7c6 <__abi_tag+0x502>
     7c0:	00 00                	add    %al,(%rax)
     7c2:	00 00                	add    %al,(%rax)
     7c4:	00 00                	add    %al,(%rax)
     7c6:	04 00                	add    $0x0,%al
     7c8:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     7cc:	e3 06                	jrcxz  7d4 <__abi_tag+0x510>
     7ce:	00 00                	add    %al,(%rax)
     7d0:	00 00                	add    %al,(%rax)
     7d2:	00 00                	add    %al,(%rax)
     7d4:	e8 06 00 00 00       	callq  7df <__abi_tag+0x51b>
     7d9:	00 00                	add    %al,(%rax)
     7db:	00 01                	add    %al,(%rcx)
     7dd:	00 55 e8             	add    %dl,-0x18(%rbp)
     7e0:	06                   	(bad)  
     7e1:	00 00                	add    %al,(%rax)
     7e3:	00 00                	add    %al,(%rax)
     7e5:	00 00                	add    %al,(%rax)
     7e7:	99                   	cltd   
     7e8:	0a 00                	or     (%rax),%al
     7ea:	00 00                	add    %al,(%rax)
     7ec:	00 00                	add    %al,(%rax)
     7ee:	00 04 00             	add    %al,(%rax,%rax,1)
     7f1:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
     805:	60                   	(bad)  
     806:	05 00 00 00 00       	add    $0x0,%eax
     80b:	00 00                	add    %al,(%rax)
     80d:	7d 05                	jge    814 <__abi_tag+0x550>
     80f:	00 00                	add    %al,(%rax)
     811:	00 00                	add    %al,(%rax)
     813:	00 00                	add    %al,(%rax)
     815:	01 00                	add    %eax,(%rax)
     817:	54                   	push   %rsp
     818:	7d 05                	jge    81f <__abi_tag+0x55b>
     81a:	00 00                	add    %al,(%rax)
     81c:	00 00                	add    %al,(%rax)
     81e:	00 00                	add    %al,(%rax)
     820:	e3 06                	jrcxz  828 <__abi_tag+0x564>
     822:	00 00                	add    %al,(%rax)
     824:	00 00                	add    %al,(%rax)
     826:	00 00                	add    %al,(%rax)
     828:	04 00                	add    $0x0,%al
     82a:	f3 01 54 9f e3       	repz add %edx,-0x1d(%rdi,%rbx,4)
     82f:	06                   	(bad)  
     830:	00 00                	add    %al,(%rax)
     832:	00 00                	add    %al,(%rax)
     834:	00 00                	add    %al,(%rax)
     836:	ed                   	in     (%dx),%eax
     837:	06                   	(bad)  
     838:	00 00                	add    %al,(%rax)
     83a:	00 00                	add    %al,(%rax)
     83c:	00 00                	add    %al,(%rax)
     83e:	01 00                	add    %eax,(%rax)
     840:	54                   	push   %rsp
     841:	ed                   	in     (%dx),%eax
     842:	06                   	(bad)  
     843:	00 00                	add    %al,(%rax)
     845:	00 00                	add    %al,(%rax)
     847:	00 00                	add    %al,(%rax)
     849:	99                   	cltd   
     84a:	0a 00                	or     (%rax),%al
     84c:	00 00                	add    %al,(%rax)
     84e:	00 00                	add    %al,(%rax)
     850:	00 04 00             	add    %al,(%rax,%rax,1)
     853:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
     864:	00 00                	add    %al,(%rax)
     866:	00 60 05             	add    %ah,0x5(%rax)
     869:	00 00                	add    %al,(%rax)
     86b:	00 00                	add    %al,(%rax)
     86d:	00 00                	add    %al,(%rax)
     86f:	7b 05                	jnp    876 <__abi_tag+0x5b2>
     871:	00 00                	add    %al,(%rax)
     873:	00 00                	add    %al,(%rax)
     875:	00 00                	add    %al,(%rax)
     877:	01 00                	add    %eax,(%rax)
     879:	55                   	push   %rbp
     87a:	e3 06                	jrcxz  882 <__abi_tag+0x5be>
     87c:	00 00                	add    %al,(%rax)
     87e:	00 00                	add    %al,(%rax)
     880:	00 00                	add    %al,(%rax)
     882:	e8 06 00 00 00       	callq  88d <__abi_tag+0x5c9>
     887:	00 00                	add    %al,(%rax)
     889:	00 01                	add    %al,(%rcx)
     88b:	00 55 00             	add    %dl,0x0(%rbp)
	...
     89a:	00 00                	add    %al,(%rax)
     89c:	00 60 05             	add    %ah,0x5(%rax)
     89f:	00 00                	add    %al,(%rax)
     8a1:	00 00                	add    %al,(%rax)
     8a3:	00 00                	add    %al,(%rax)
     8a5:	7d 05                	jge    8ac <__abi_tag+0x5e8>
     8a7:	00 00                	add    %al,(%rax)
     8a9:	00 00                	add    %al,(%rax)
     8ab:	00 00                	add    %al,(%rax)
     8ad:	01 00                	add    %eax,(%rax)
     8af:	54                   	push   %rsp
     8b0:	e3 06                	jrcxz  8b8 <__abi_tag+0x5f4>
     8b2:	00 00                	add    %al,(%rax)
     8b4:	00 00                	add    %al,(%rax)
     8b6:	00 00                	add    %al,(%rax)
     8b8:	ed                   	in     (%dx),%eax
     8b9:	06                   	(bad)  
     8ba:	00 00                	add    %al,(%rax)
     8bc:	00 00                	add    %al,(%rax)
     8be:	00 00                	add    %al,(%rax)
     8c0:	01 00                	add    %eax,(%rax)
     8c2:	54                   	push   %rsp
	...
     8d3:	8a 05 00 00 00 00    	mov    0x0(%rip),%al        # 8d9 <__abi_tag+0x615>
     8d9:	00 00                	add    %al,(%rax)
     8db:	e3 06                	jrcxz  8e3 <__abi_tag+0x61f>
     8dd:	00 00                	add    %al,(%rax)
     8df:	00 00                	add    %al,(%rax)
     8e1:	00 00                	add    %al,(%rax)
     8e3:	01 00                	add    %eax,(%rax)
     8e5:	5f                   	pop    %rdi
     8e6:	ed                   	in     (%dx),%eax
     8e7:	06                   	(bad)  
     8e8:	00 00                	add    %al,(%rax)
     8ea:	00 00                	add    %al,(%rax)
     8ec:	00 00                	add    %al,(%rax)
     8ee:	92                   	xchg   %eax,%edx
     8ef:	09 00                	or     %eax,(%rax)
     8f1:	00 00                	add    %al,(%rax)
     8f3:	00 00                	add    %al,(%rax)
     8f5:	00 01                	add    %al,(%rcx)
     8f7:	00 5f b2             	add    %bl,-0x4e(%rdi)
     8fa:	09 00                	or     %eax,(%rax)
     8fc:	00 00                	add    %al,(%rax)
     8fe:	00 00                	add    %al,(%rax)
     900:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
     906:	00 00                	add    %al,(%rax)
     908:	00 02                	add    %al,(%rdx)
     90a:	00 35 9f 00 00 00    	add    %dh,0x9f(%rip)        # 9af <__abi_tag+0x6eb>
	...
     91c:	00 a2 05 00 00 00    	add    %ah,0x5(%rdx)
     922:	00 00                	add    %al,(%rax)
     924:	00 e3                	add    %ah,%bl
     926:	06                   	(bad)  
     927:	00 00                	add    %al,(%rax)
     929:	00 00                	add    %al,(%rax)
     92b:	00 00                	add    %al,(%rax)
     92d:	01 00                	add    %eax,(%rax)
     92f:	5e                   	pop    %rsi
     930:	ed                   	in     (%dx),%eax
     931:	06                   	(bad)  
     932:	00 00                	add    %al,(%rax)
     934:	00 00                	add    %al,(%rax)
     936:	00 00                	add    %al,(%rax)
     938:	95                   	xchg   %eax,%ebp
     939:	0a 00                	or     (%rax),%al
     93b:	00 00                	add    %al,(%rax)
     93d:	00 00                	add    %al,(%rax)
     93f:	00 01                	add    %al,(%rcx)
     941:	00 5e 00             	add    %bl,0x0(%rsi)
	...
     950:	00 00                	add    %al,(%rax)
     952:	00 b2 05 00 00 00    	add    %dh,0x5(%rdx)
     958:	00 00                	add    %al,(%rax)
     95a:	00 e3                	add    %ah,%bl
     95c:	06                   	(bad)  
     95d:	00 00                	add    %al,(%rax)
     95f:	00 00                	add    %al,(%rax)
     961:	00 00                	add    %al,(%rax)
     963:	01 00                	add    %eax,(%rax)
     965:	53                   	push   %rbx
     966:	ed                   	in     (%dx),%eax
     967:	06                   	(bad)  
     968:	00 00                	add    %al,(%rax)
     96a:	00 00                	add    %al,(%rax)
     96c:	00 00                	add    %al,(%rax)
     96e:	c4                   	(bad)  
     96f:	09 00                	or     %eax,(%rax)
     971:	00 00                	add    %al,(%rax)
     973:	00 00                	add    %al,(%rax)
     975:	00 01                	add    %al,(%rcx)
     977:	00 53 00             	add    %dl,0x0(%rbx)
	...
     986:	00 00                	add    %al,(%rax)
     988:	00 c6                	add    %al,%dh
     98a:	05 00 00 00 00       	add    $0x0,%eax
     98f:	00 00                	add    %al,(%rax)
     991:	d8 05 00 00 00 00    	fadds  0x0(%rip)        # 997 <__abi_tag+0x6d3>
     997:	00 00                	add    %al,(%rax)
     999:	02 00                	add    (%rax),%al
     99b:	30 9f ed 05 00 00    	xor    %bl,0x5ed(%rdi)
     9a1:	00 00                	add    %al,(%rax)
     9a3:	00 00                	add    %al,(%rax)
     9a5:	e3 06                	jrcxz  9ad <__abi_tag+0x6e9>
     9a7:	00 00                	add    %al,(%rax)
     9a9:	00 00                	add    %al,(%rax)
     9ab:	00 00                	add    %al,(%rax)
     9ad:	02 00                	add    (%rax),%al
     9af:	30 9f ed 06 00 00    	xor    %bl,0x6ed(%rdi)
     9b5:	00 00                	add    %al,(%rax)
     9b7:	00 00                	add    %al,(%rax)
     9b9:	f9                   	stc    
     9ba:	06                   	(bad)  
     9bb:	00 00                	add    %al,(%rax)
     9bd:	00 00                	add    %al,(%rax)
     9bf:	00 00                	add    %al,(%rax)
     9c1:	01 00                	add    %eax,(%rax)
     9c3:	50                   	push   %rax
	...
     9d4:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # 9db <__abi_tag+0x717>
     9db:	00 d8                	add    %bl,%al
     9dd:	05 00 00 00 00       	add    $0x0,%eax
     9e2:	00 00                	add    %al,(%rax)
     9e4:	01 00                	add    %eax,(%rax)
     9e6:	53                   	push   %rbx
     9e7:	ed                   	in     (%dx),%eax
     9e8:	05 00 00 00 00       	add    $0x0,%eax
     9ed:	00 00                	add    %al,(%rax)
     9ef:	e3 06                	jrcxz  9f7 <__abi_tag+0x733>
     9f1:	00 00                	add    %al,(%rax)
     9f3:	00 00                	add    %al,(%rax)
     9f5:	00 00                	add    %al,(%rax)
     9f7:	01 00                	add    %eax,(%rax)
     9f9:	53                   	push   %rbx
     9fa:	ed                   	in     (%dx),%eax
     9fb:	06                   	(bad)  
     9fc:	00 00                	add    %al,(%rax)
     9fe:	00 00                	add    %al,(%rax)
     a00:	00 00                	add    %al,(%rax)
     a02:	fe 06                	incb   (%rsi)
     a04:	00 00                	add    %al,(%rax)
     a06:	00 00                	add    %al,(%rax)
     a08:	00 00                	add    %al,(%rax)
     a0a:	01 00                	add    %eax,(%rax)
     a0c:	53                   	push   %rbx
	...
     a1d:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # a24 <__abi_tag+0x760>
     a24:	00 d8                	add    %bl,%al
     a26:	05 00 00 00 00       	add    $0x0,%eax
     a2b:	00 00                	add    %al,(%rax)
     a2d:	01 00                	add    %eax,(%rax)
     a2f:	5e                   	pop    %rsi
     a30:	ed                   	in     (%dx),%eax
     a31:	05 00 00 00 00       	add    $0x0,%eax
     a36:	00 00                	add    %al,(%rax)
     a38:	e3 06                	jrcxz  a40 <__abi_tag+0x77c>
     a3a:	00 00                	add    %al,(%rax)
     a3c:	00 00                	add    %al,(%rax)
     a3e:	00 00                	add    %al,(%rax)
     a40:	01 00                	add    %eax,(%rax)
     a42:	5e                   	pop    %rsi
     a43:	ed                   	in     (%dx),%eax
     a44:	06                   	(bad)  
     a45:	00 00                	add    %al,(%rax)
     a47:	00 00                	add    %al,(%rax)
     a49:	00 00                	add    %al,(%rax)
     a4b:	fe 06                	incb   (%rsi)
     a4d:	00 00                	add    %al,(%rax)
     a4f:	00 00                	add    %al,(%rax)
     a51:	00 00                	add    %al,(%rax)
     a53:	01 00                	add    %eax,(%rax)
     a55:	5e                   	pop    %rsi
	...
     a66:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # a6d <__abi_tag+0x7a9>
     a6d:	00 d8                	add    %bl,%al
     a6f:	05 00 00 00 00       	add    $0x0,%eax
     a74:	00 00                	add    %al,(%rax)
     a76:	01 00                	add    %eax,(%rax)
     a78:	5f                   	pop    %rdi
     a79:	ed                   	in     (%dx),%eax
     a7a:	05 00 00 00 00       	add    $0x0,%eax
     a7f:	00 00                	add    %al,(%rax)
     a81:	e3 06                	jrcxz  a89 <__abi_tag+0x7c5>
     a83:	00 00                	add    %al,(%rax)
     a85:	00 00                	add    %al,(%rax)
     a87:	00 00                	add    %al,(%rax)
     a89:	01 00                	add    %eax,(%rax)
     a8b:	5f                   	pop    %rdi
     a8c:	ed                   	in     (%dx),%eax
     a8d:	06                   	(bad)  
     a8e:	00 00                	add    %al,(%rax)
     a90:	00 00                	add    %al,(%rax)
     a92:	00 00                	add    %al,(%rax)
     a94:	fe 06                	incb   (%rsi)
     a96:	00 00                	add    %al,(%rax)
     a98:	00 00                	add    %al,(%rax)
     a9a:	00 00                	add    %al,(%rax)
     a9c:	01 00                	add    %eax,(%rax)
     a9e:	5f                   	pop    %rdi
	...
     aaf:	e4 05                	in     $0x5,%al
     ab1:	00 00                	add    %al,(%rax)
     ab3:	00 00                	add    %al,(%rax)
     ab5:	00 00                	add    %al,(%rax)
     ab7:	e8 05 00 00 00       	callq  ac1 <__abi_tag+0x7fd>
     abc:	00 00                	add    %al,(%rax)
     abe:	00 06                	add    %al,(%rsi)
     ac0:	00 67 93             	add    %ah,-0x6d(%rdi)
     ac3:	08 61 93             	or     %ah,-0x6d(%rcx)
     ac6:	08 e8                	or     %ch,%al
     ac8:	05 00 00 00 00       	add    $0x0,%eax
     acd:	00 00                	add    %al,(%rax)
     acf:	ed                   	in     (%dx),%eax
     ad0:	05 00 00 00 00       	add    $0x0,%eax
     ad5:	00 00                	add    %al,(%rax)
     ad7:	05 00 93 08 61       	add    $0x61089300,%eax
     adc:	93                   	xchg   %eax,%ebx
     add:	08 a7 07 00 00 00    	or     %ah,0x7(%rdi)
     ae3:	00 00                	add    %al,(%rax)
     ae5:	00 b3 07 00 00 00    	add    %dh,0x7(%rbx)
     aeb:	00 00                	add    %al,(%rax)
     aed:	00 08                	add    %cl,(%rax)
     aef:	00 30                	add    %dh,(%rax)
     af1:	9f                   	lahf   
     af2:	93                   	xchg   %eax,%ebx
     af3:	08 30                	or     %dh,(%rax)
     af5:	9f                   	lahf   
     af6:	93                   	xchg   %eax,%ebx
     af7:	08 e4                	or     %ah,%ah
     af9:	07                   	(bad)  
     afa:	00 00                	add    %al,(%rax)
     afc:	00 00                	add    %al,(%rax)
     afe:	00 00                	add    %al,(%rax)
     b00:	e8 07 00 00 00       	callq  b0c <__abi_tag+0x848>
     b05:	00 00                	add    %al,(%rax)
     b07:	00 06                	add    %al,(%rsi)
     b09:	00 67 93             	add    %ah,-0x6d(%rdi)
     b0c:	08 61 93             	or     %ah,-0x6d(%rcx)
     b0f:	08 e8                	or     %ch,%al
     b11:	07                   	(bad)  
     b12:	00 00                	add    %al,(%rax)
     b14:	00 00                	add    %al,(%rax)
     b16:	00 00                	add    %al,(%rax)
     b18:	ea                   	(bad)  
     b19:	07                   	(bad)  
     b1a:	00 00                	add    %al,(%rax)
     b1c:	00 00                	add    %al,(%rax)
     b1e:	00 00                	add    %al,(%rax)
     b20:	05 00 93 08 61       	add    $0x61089300,%eax
     b25:	93                   	xchg   %eax,%ebx
     b26:	08 ea                	or     %ch,%dl
     b28:	07                   	(bad)  
     b29:	00 00                	add    %al,(%rax)
     b2b:	00 00                	add    %al,(%rax)
     b2d:	00 00                	add    %al,(%rax)
     b2f:	f9                   	stc    
     b30:	07                   	(bad)  
     b31:	00 00                	add    %al,(%rax)
     b33:	00 00                	add    %al,(%rax)
     b35:	00 00                	add    %al,(%rax)
     b37:	08 00                	or     %al,(%rax)
     b39:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     b3f:	93                   	xchg   %eax,%ebx
     b40:	08 00                	or     %al,(%rax)
	...
     b4e:	00 00                	add    %al,(%rax)
     b50:	00 23                	add    %ah,(%rbx)
     b52:	07                   	(bad)  
     b53:	00 00                	add    %al,(%rax)
     b55:	00 00                	add    %al,(%rax)
     b57:	00 00                	add    %al,(%rax)
     b59:	36 07                	ss (bad) 
     b5b:	00 00                	add    %al,(%rax)
     b5d:	00 00                	add    %al,(%rax)
     b5f:	00 00                	add    %al,(%rax)
     b61:	01 00                	add    %eax,(%rax)
     b63:	52                   	push   %rdx
     b64:	36 07                	ss (bad) 
     b66:	00 00                	add    %al,(%rax)
     b68:	00 00                	add    %al,(%rax)
     b6a:	00 00                	add    %al,(%rax)
     b6c:	5d                   	pop    %rbp
     b6d:	07                   	(bad)  
     b6e:	00 00                	add    %al,(%rax)
     b70:	00 00                	add    %al,(%rax)
     b72:	00 00                	add    %al,(%rax)
     b74:	05 00 72 00 31       	add    $0x31007200,%eax
     b79:	21 9f 5d 07 00 00    	and    %ebx,0x75d(%rdi)
     b7f:	00 00                	add    %al,(%rax)
     b81:	00 00                	add    %al,(%rax)
     b83:	6e                   	outsb  %ds:(%rsi),(%dx)
     b84:	07                   	(bad)  
     b85:	00 00                	add    %al,(%rax)
     b87:	00 00                	add    %al,(%rax)
     b89:	00 00                	add    %al,(%rax)
     b8b:	05 00 72 00 32       	add    $0x32007200,%eax
     b90:	21 9f 6e 07 00 00    	and    %ebx,0x76e(%rdi)
     b96:	00 00                	add    %al,(%rax)
     b98:	00 00                	add    %al,(%rax)
     b9a:	76 07                	jbe    ba3 <__abi_tag+0x8df>
     b9c:	00 00                	add    %al,(%rax)
     b9e:	00 00                	add    %al,(%rax)
     ba0:	00 00                	add    %al,(%rax)
     ba2:	05 00 72 00 33       	add    $0x33007200,%eax
     ba7:	21 9f 76 07 00 00    	and    %ebx,0x776(%rdi)
     bad:	00 00                	add    %al,(%rax)
     baf:	00 00                	add    %al,(%rax)
     bb1:	7b 07                	jnp    bba <__abi_tag+0x8f6>
     bb3:	00 00                	add    %al,(%rax)
     bb5:	00 00                	add    %al,(%rax)
     bb7:	00 00                	add    %al,(%rax)
     bb9:	01 00                	add    %eax,(%rax)
     bbb:	52                   	push   %rdx
	...
     bcc:	23 07                	and    (%rdi),%eax
     bce:	00 00                	add    %al,(%rax)
     bd0:	00 00                	add    %al,(%rax)
     bd2:	00 00                	add    %al,(%rax)
     bd4:	4c 07                	rex.WR (bad) 
     bd6:	00 00                	add    %al,(%rax)
     bd8:	00 00                	add    %al,(%rax)
     bda:	00 00                	add    %al,(%rax)
     bdc:	01 00                	add    %eax,(%rax)
     bde:	66 4c 07             	data16 rex.WR (bad) 
     be1:	00 00                	add    %al,(%rax)
     be3:	00 00                	add    %al,(%rax)
     be5:	00 00                	add    %al,(%rax)
     be7:	5d                   	pop    %rbp
     be8:	07                   	(bad)  
     be9:	00 00                	add    %al,(%rax)
     beb:	00 00                	add    %al,(%rax)
     bed:	00 00                	add    %al,(%rax)
     bef:	01 00                	add    %eax,(%rax)
     bf1:	61                   	(bad)  
     bf2:	5d                   	pop    %rbp
     bf3:	07                   	(bad)  
     bf4:	00 00                	add    %al,(%rax)
     bf6:	00 00                	add    %al,(%rax)
     bf8:	00 00                	add    %al,(%rax)
     bfa:	6e                   	outsb  %ds:(%rsi),(%dx)
     bfb:	07                   	(bad)  
     bfc:	00 00                	add    %al,(%rax)
     bfe:	00 00                	add    %al,(%rax)
     c00:	00 00                	add    %al,(%rax)
     c02:	01 00                	add    %eax,(%rax)
     c04:	62                   	(bad)  
     c05:	6e                   	outsb  %ds:(%rsi),(%dx)
     c06:	07                   	(bad)  
     c07:	00 00                	add    %al,(%rax)
     c09:	00 00                	add    %al,(%rax)
     c0b:	00 00                	add    %al,(%rax)
     c0d:	72 07                	jb     c16 <__abi_tag+0x952>
     c0f:	00 00                	add    %al,(%rax)
     c11:	00 00                	add    %al,(%rax)
     c13:	00 00                	add    %al,(%rax)
     c15:	01 00                	add    %eax,(%rax)
     c17:	63 72 07             	movsxd 0x7(%rdx),%esi
     c1a:	00 00                	add    %al,(%rax)
     c1c:	00 00                	add    %al,(%rax)
     c1e:	00 00                	add    %al,(%rax)
     c20:	7b 07                	jnp    c29 <__abi_tag+0x965>
     c22:	00 00                	add    %al,(%rax)
     c24:	00 00                	add    %al,(%rax)
     c26:	00 00                	add    %al,(%rax)
     c28:	01 00                	add    %eax,(%rax)
     c2a:	66 8a 07             	data16 mov (%rdi),%al
     c2d:	00 00                	add    %al,(%rax)
     c2f:	00 00                	add    %al,(%rax)
     c31:	00 00                	add    %al,(%rax)
     c33:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c34:	07                   	(bad)  
     c35:	00 00                	add    %al,(%rax)
     c37:	00 00                	add    %al,(%rax)
     c39:	00 00                	add    %al,(%rax)
     c3b:	01 00                	add    %eax,(%rax)
     c3d:	66 00 00             	data16 add %al,(%rax)
	...
     c4c:	00 00                	add    %al,(%rax)
     c4e:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c4f:	07                   	(bad)  
     c50:	00 00                	add    %al,(%rax)
     c52:	00 00                	add    %al,(%rax)
     c54:	00 00                	add    %al,(%rax)
     c56:	3a 08                	cmp    (%rax),%cl
     c58:	00 00                	add    %al,(%rax)
     c5a:	00 00                	add    %al,(%rax)
     c5c:	00 00                	add    %al,(%rax)
     c5e:	01 00                	add    %eax,(%rax)
     c60:	66 00 00             	data16 add %al,(%rax)
	...
     c6f:	00 00                	add    %al,(%rax)
     c71:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c72:	07                   	(bad)  
     c73:	00 00                	add    %al,(%rax)
     c75:	00 00                	add    %al,(%rax)
     c77:	00 00                	add    %al,(%rax)
     c79:	3a 08                	cmp    (%rax),%cl
     c7b:	00 00                	add    %al,(%rax)
     c7d:	00 00                	add    %al,(%rax)
     c7f:	00 00                	add    %al,(%rax)
     c81:	01 00                	add    %eax,(%rax)
     c83:	5e                   	pop    %rsi
	...
     c94:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c95:	07                   	(bad)  
     c96:	00 00                	add    %al,(%rax)
     c98:	00 00                	add    %al,(%rax)
     c9a:	00 00                	add    %al,(%rax)
     c9c:	3a 08                	cmp    (%rax),%cl
     c9e:	00 00                	add    %al,(%rax)
     ca0:	00 00                	add    %al,(%rax)
     ca2:	00 00                	add    %al,(%rax)
     ca4:	01 00                	add    %eax,(%rax)
     ca6:	53                   	push   %rbx
	...
     cb7:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     cb8:	07                   	(bad)  
     cb9:	00 00                	add    %al,(%rax)
     cbb:	00 00                	add    %al,(%rax)
     cbd:	00 00                	add    %al,(%rax)
     cbf:	3a 08                	cmp    (%rax),%cl
     cc1:	00 00                	add    %al,(%rax)
     cc3:	00 00                	add    %al,(%rax)
     cc5:	00 00                	add    %al,(%rax)
     cc7:	01 00                	add    %eax,(%rax)
     cc9:	5f                   	pop    %rdi
	...
     cda:	b3 07                	mov    $0x7,%bl
     cdc:	00 00                	add    %al,(%rax)
     cde:	00 00                	add    %al,(%rax)
     ce0:	00 00                	add    %al,(%rax)
     ce2:	ea                   	(bad)  
     ce3:	07                   	(bad)  
     ce4:	00 00                	add    %al,(%rax)
     ce6:	00 00                	add    %al,(%rax)
     ce8:	00 00                	add    %al,(%rax)
     cea:	01 00                	add    %eax,(%rax)
     cec:	50                   	push   %rax
	...
     cfd:	ea                   	(bad)  
     cfe:	07                   	(bad)  
     cff:	00 00                	add    %al,(%rax)
     d01:	00 00                	add    %al,(%rax)
     d03:	00 00                	add    %al,(%rax)
     d05:	f9                   	stc    
     d06:	07                   	(bad)  
     d07:	00 00                	add    %al,(%rax)
     d09:	00 00                	add    %al,(%rax)
     d0b:	00 00                	add    %al,(%rax)
     d0d:	02 00                	add    (%rax),%al
     d0f:	30 9f f9 07 00 00    	xor    %bl,0x7f9(%rdi)
     d15:	00 00                	add    %al,(%rax)
     d17:	00 00                	add    %al,(%rax)
     d19:	1c 08                	sbb    $0x8,%al
     d1b:	00 00                	add    %al,(%rax)
     d1d:	00 00                	add    %al,(%rax)
     d1f:	00 00                	add    %al,(%rax)
     d21:	01 00                	add    %eax,(%rax)
     d23:	52                   	push   %rdx
	...
     d34:	f5                   	cmc    
     d35:	07                   	(bad)  
     d36:	00 00                	add    %al,(%rax)
     d38:	00 00                	add    %al,(%rax)
     d3a:	00 00                	add    %al,(%rax)
     d3c:	3a 08                	cmp    (%rax),%cl
     d3e:	00 00                	add    %al,(%rax)
     d40:	00 00                	add    %al,(%rax)
     d42:	00 00                	add    %al,(%rax)
     d44:	01 00                	add    %eax,(%rax)
     d46:	50                   	push   %rax
	...
     d57:	3d 08 00 00 00       	cmp    $0x8,%eax
     d5c:	00 00                	add    %al,(%rax)
     d5e:	00 49 08             	add    %cl,0x8(%rcx)
     d61:	00 00                	add    %al,(%rax)
     d63:	00 00                	add    %al,(%rax)
     d65:	00 00                	add    %al,(%rax)
     d67:	01 00                	add    %eax,(%rax)
     d69:	67 49 08 00          	rex.WB or %al,(%r8d)
     d6d:	00 00                	add    %al,(%rax)
     d6f:	00 00                	add    %al,(%rax)
     d71:	00 5d 09             	add    %bl,0x9(%rbp)
     d74:	00 00                	add    %al,(%rax)
     d76:	00 00                	add    %al,(%rax)
     d78:	00 00                	add    %al,(%rax)
     d7a:	02 00                	add    (%rax),%al
     d7c:	77 30                	ja     dae <__abi_tag+0xaea>
     d7e:	5d                   	pop    %rbp
     d7f:	09 00                	or     %eax,(%rax)
     d81:	00 00                	add    %al,(%rax)
     d83:	00 00                	add    %al,(%rax)
     d85:	00 64 09 00          	add    %ah,0x0(%rcx,%rcx,1)
     d89:	00 00                	add    %al,(%rax)
     d8b:	00 00                	add    %al,(%rax)
     d8d:	00 01                	add    %al,(%rcx)
     d8f:	00 61 fa             	add    %ah,-0x6(%rcx)
     d92:	09 00                	or     %eax,(%rax)
     d94:	00 00                	add    %al,(%rax)
     d96:	00 00                	add    %al,(%rax)
     d98:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
     d9e:	00 00                	add    %al,(%rax)
     da0:	00 0b                	add    %cl,(%rbx)
     da2:	00 10                	add    %dl,(%rax)
     da4:	80 80 80 80 80 80 80 	addb   $0x80,-0x7f7f7f80(%rax)
     dab:	f0 3f                	lock (bad) 
     dad:	9f                   	lahf   
	...
     dbe:	49 08 00             	rex.WB or %al,(%r8)
     dc1:	00 00                	add    %al,(%rax)
     dc3:	00 00                	add    %al,(%rax)
     dc5:	00 59 08             	add    %bl,0x8(%rcx)
     dc8:	00 00                	add    %al,(%rax)
     dca:	00 00                	add    %al,(%rax)
     dcc:	00 00                	add    %al,(%rax)
     dce:	02 00                	add    (%rax),%al
     dd0:	30 9f 59 08 00 00    	xor    %bl,0x859(%rdi)
     dd6:	00 00                	add    %al,(%rax)
     dd8:	00 00                	add    %al,(%rax)
     dda:	ab                   	stos   %eax,%es:(%rdi)
     ddb:	08 00                	or     %al,(%rax)
     ddd:	00 00                	add    %al,(%rax)
     ddf:	00 00                	add    %al,(%rax)
     de1:	00 01                	add    %al,(%rcx)
     de3:	00 50 00             	add    %dl,0x0(%rax)
	...
     df2:	00 00                	add    %al,(%rax)
     df4:	00 49 08             	add    %cl,0x8(%rcx)
     df7:	00 00                	add    %al,(%rax)
     df9:	00 00                	add    %al,(%rax)
     dfb:	00 00                	add    %al,(%rax)
     dfd:	59                   	pop    %rcx
     dfe:	08 00                	or     %al,(%rax)
     e00:	00 00                	add    %al,(%rax)
     e02:	00 00                	add    %al,(%rax)
     e04:	00 10                	add    %dl,(%rax)
     e06:	00 30                	add    %dh,(%rax)
     e08:	9f                   	lahf   
     e09:	93                   	xchg   %eax,%ebx
     e0a:	08 30                	or     %dh,(%rax)
     e0c:	9f                   	lahf   
     e0d:	93                   	xchg   %eax,%ebx
     e0e:	08 30                	or     %dh,(%rax)
     e10:	9f                   	lahf   
     e11:	93                   	xchg   %eax,%ebx
     e12:	08 30                	or     %dh,(%rax)
     e14:	9f                   	lahf   
     e15:	93                   	xchg   %eax,%ebx
     e16:	08 d8                	or     %bl,%al
     e18:	08 00                	or     %al,(%rax)
     e1a:	00 00                	add    %al,(%rax)
     e1c:	00 00                	add    %al,(%rax)
     e1e:	00 e3                	add    %ah,%bl
     e20:	08 00                	or     %al,(%rax)
     e22:	00 00                	add    %al,(%rax)
     e24:	00 00                	add    %al,(%rax)
     e26:	00 03                	add    %al,(%rbx)
     e28:	00 63 93             	add    %ah,-0x6d(%rbx)
     e2b:	08 e3                	or     %ah,%bl
     e2d:	08 00                	or     %al,(%rax)
     e2f:	00 00                	add    %al,(%rax)
     e31:	00 00                	add    %al,(%rax)
     e33:	00 f5                	add    %dh,%ch
     e35:	08 00                	or     %al,(%rax)
     e37:	00 00                	add    %al,(%rax)
     e39:	00 00                	add    %al,(%rax)
     e3b:	00 03                	add    %al,(%rbx)
     e3d:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
     e41:	f5                   	cmc    
     e42:	08 00                	or     %al,(%rax)
     e44:	00 00                	add    %al,(%rax)
     e46:	00 00                	add    %al,(%rax)
     e48:	00 f7                	add    %dh,%bh
     e4a:	08 00                	or     %al,(%rax)
     e4c:	00 00                	add    %al,(%rax)
     e4e:	00 00                	add    %al,(%rax)
     e50:	00 03                	add    %al,(%rbx)
     e52:	00 61 93             	add    %ah,-0x6d(%rcx)
     e55:	08 f7                	or     %dh,%bh
     e57:	08 00                	or     %al,(%rax)
     e59:	00 00                	add    %al,(%rax)
     e5b:	00 00                	add    %al,(%rax)
     e5d:	00 ff                	add    %bh,%bh
     e5f:	08 00                	or     %al,(%rax)
     e61:	00 00                	add    %al,(%rax)
     e63:	00 00                	add    %al,(%rax)
     e65:	00 10                	add    %dl,(%rax)
     e67:	00 30                	add    %dh,(%rax)
     e69:	9f                   	lahf   
     e6a:	93                   	xchg   %eax,%ebx
     e6b:	08 30                	or     %dh,(%rax)
     e6d:	9f                   	lahf   
     e6e:	93                   	xchg   %eax,%ebx
     e6f:	08 30                	or     %dh,(%rax)
     e71:	9f                   	lahf   
     e72:	93                   	xchg   %eax,%ebx
     e73:	08 30                	or     %dh,(%rax)
     e75:	9f                   	lahf   
     e76:	93                   	xchg   %eax,%ebx
     e77:	08 ff                	or     %bh,%bh
     e79:	08 00                	or     %al,(%rax)
     e7b:	00 00                	add    %al,(%rax)
     e7d:	00 00                	add    %al,(%rax)
     e7f:	00 03                	add    %al,(%rbx)
     e81:	09 00                	or     %eax,(%rax)
     e83:	00 00                	add    %al,(%rax)
     e85:	00 00                	add    %al,(%rax)
     e87:	00 03                	add    %al,(%rbx)
     e89:	00 61 93             	add    %ah,-0x6d(%rcx)
     e8c:	08 00                	or     %al,(%rax)
	...
     e9a:	00 00                	add    %al,(%rax)
     e9c:	00 49 08             	add    %cl,0x8(%rcx)
     e9f:	00 00                	add    %al,(%rax)
     ea1:	00 00                	add    %al,(%rax)
     ea3:	00 00                	add    %al,(%rax)
     ea5:	92                   	xchg   %eax,%edx
     ea6:	09 00                	or     %eax,(%rax)
     ea8:	00 00                	add    %al,(%rax)
     eaa:	00 00                	add    %al,(%rax)
     eac:	00 01                	add    %al,(%rcx)
     eae:	00 5f 00             	add    %bl,0x0(%rdi)
	...
     ebd:	00 00                	add    %al,(%rax)
     ebf:	00 49 08             	add    %cl,0x8(%rcx)
     ec2:	00 00                	add    %al,(%rax)
     ec4:	00 00                	add    %al,(%rax)
     ec6:	00 00                	add    %al,(%rax)
     ec8:	c4                   	(bad)  
     ec9:	09 00                	or     %eax,(%rax)
     ecb:	00 00                	add    %al,(%rax)
     ecd:	00 00                	add    %al,(%rax)
     ecf:	00 01                	add    %al,(%rcx)
     ed1:	00 53 00             	add    %dl,0x0(%rbx)
	...
     ee0:	00 00                	add    %al,(%rax)
     ee2:	00 49 08             	add    %cl,0x8(%rcx)
     ee5:	00 00                	add    %al,(%rax)
     ee7:	00 00                	add    %al,(%rax)
     ee9:	00 00                	add    %al,(%rax)
     eeb:	95                   	xchg   %eax,%ebp
     eec:	0a 00                	or     (%rax),%al
     eee:	00 00                	add    %al,(%rax)
     ef0:	00 00                	add    %al,(%rax)
     ef2:	00 01                	add    %al,(%rcx)
     ef4:	00 5e 00             	add    %bl,0x0(%rsi)
	...
     f03:	00 00                	add    %al,(%rax)
     f05:	00 b9 08 00 00 00    	add    %bh,0x8(%rcx)
     f0b:	00 00                	add    %al,(%rax)
     f0d:	00 f7                	add    %dh,%bh
     f0f:	08 00                	or     %al,(%rax)
     f11:	00 00                	add    %al,(%rax)
     f13:	00 00                	add    %al,(%rax)
     f15:	00 03                	add    %al,(%rbx)
     f17:	00 7f 7c             	add    %bh,0x7c(%rdi)
     f1a:	9f                   	lahf   
	...
     f2b:	b9 08 00 00 00       	mov    $0x8,%ecx
     f30:	00 00                	add    %al,(%rax)
     f32:	00 c6                	add    %al,%dh
     f34:	08 00                	or     %al,(%rax)
     f36:	00 00                	add    %al,(%rax)
     f38:	00 00                	add    %al,(%rax)
     f3a:	00 03                	add    %al,(%rbx)
     f3c:	00 7f 7d             	add    %bh,0x7d(%rdi)
     f3f:	9f                   	lahf   
     f40:	f5                   	cmc    
     f41:	08 00                	or     %al,(%rax)
     f43:	00 00                	add    %al,(%rax)
     f45:	00 00                	add    %al,(%rax)
     f47:	00 f7                	add    %dh,%bh
     f49:	08 00                	or     %al,(%rax)
     f4b:	00 00                	add    %al,(%rax)
     f4d:	00 00                	add    %al,(%rax)
     f4f:	00 01                	add    %al,(%rcx)
     f51:	00 5f 00             	add    %bl,0x0(%rdi)
	...
     f60:	00 00                	add    %al,(%rax)
     f62:	00 0f                	add    %cl,(%rdi)
     f64:	09 00                	or     %eax,(%rax)
     f66:	00 00                	add    %al,(%rax)
     f68:	00 00                	add    %al,(%rax)
     f6a:	00 15 09 00 00 00    	add    %dl,0x9(%rip)        # f79 <__abi_tag+0xcb5>
     f70:	00 00                	add    %al,(%rax)
     f72:	00 01                	add    %al,(%rcx)
     f74:	00 68 15             	add    %ch,0x15(%rax)
     f77:	09 00                	or     %eax,(%rax)
     f79:	00 00                	add    %al,(%rax)
     f7b:	00 00                	add    %al,(%rax)
     f7d:	00 fa                	add    %bh,%dl
     f7f:	09 00                	or     %eax,(%rax)
     f81:	00 00                	add    %al,(%rax)
     f83:	00 00                	add    %al,(%rax)
     f85:	00 02                	add    %al,(%rdx)
     f87:	00 77 20             	add    %dh,0x20(%rdi)
     f8a:	fa                   	cli    
     f8b:	09 00                	or     %eax,(%rax)
     f8d:	00 00                	add    %al,(%rax)
     f8f:	00 00                	add    %al,(%rax)
     f91:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
     f97:	00 00                	add    %al,(%rax)
     f99:	00 0b                	add    %cl,(%rbx)
     f9b:	00 10                	add    %dl,(%rax)
     f9d:	80 80 80 80 80 80 80 	addb   $0x80,-0x7f7f7f80(%rax)
     fa4:	fc                   	cld    
     fa5:	7f 9f                	jg     f46 <__abi_tag+0xc82>
	...
     fb7:	29 09                	sub    %ecx,(%rcx)
     fb9:	00 00                	add    %al,(%rax)
     fbb:	00 00                	add    %al,(%rax)
     fbd:	00 00                	add    %al,(%rax)
     fbf:	fa                   	cli    
     fc0:	09 00                	or     %eax,(%rax)
     fc2:	00 00                	add    %al,(%rax)
     fc4:	00 00                	add    %al,(%rax)
     fc6:	00 02                	add    %al,(%rdx)
     fc8:	00 77 18             	add    %dh,0x18(%rdi)
     fcb:	fa                   	cli    
     fcc:	09 00                	or     %eax,(%rax)
     fce:	00 00                	add    %al,(%rax)
     fd0:	00 00                	add    %al,(%rax)
     fd2:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
     fd8:	00 00                	add    %al,(%rax)
     fda:	00 0b                	add    %cl,(%rbx)
     fdc:	00 10                	add    %dl,(%rax)
     fde:	80 80 80 80 80 80 80 	addb   $0x80,-0x7f7f7f80(%rax)
     fe5:	fc                   	cld    
     fe6:	7f 9f                	jg     f87 <__abi_tag+0xcc3>
	...
     ff8:	3d 09 00 00 00       	cmp    $0x9,%eax
     ffd:	00 00                	add    %al,(%rax)
     fff:	00 10                	add    %dl,(%rax)
    1001:	0a 00                	or     (%rax),%al
    1003:	00 00                	add    %al,(%rax)
    1005:	00 00                	add    %al,(%rax)
    1007:	00 02                	add    %al,(%rdx)
    1009:	00 77 10             	add    %dh,0x10(%rdi)
    100c:	10 0a                	adc    %cl,(%rdx)
    100e:	00 00                	add    %al,(%rax)
    1010:	00 00                	add    %al,(%rax)
    1012:	00 00                	add    %al,(%rax)
    1014:	99                   	cltd   
    1015:	0a 00                	or     (%rax),%al
    1017:	00 00                	add    %al,(%rax)
    1019:	00 00                	add    %al,(%rax)
    101b:	00 02                	add    %al,(%rdx)
    101d:	00 77 08             	add    %dh,0x8(%rdi)
	...
    1030:	c4                   	(bad)  
    1031:	09 00                	or     %eax,(%rax)
    1033:	00 00                	add    %al,(%rax)
    1035:	00 00                	add    %al,(%rax)
    1037:	00 8f 0a 00 00 00    	add    %cl,0xa(%rdi)
    103d:	00 00                	add    %al,(%rax)
    103f:	00 01                	add    %al,(%rcx)
    1041:	00 53 00             	add    %dl,0x0(%rbx)
	...
    1050:	00 00                	add    %al,(%rax)
    1052:	00 d6                	add    %dl,%dh
    1054:	09 00                	or     %eax,(%rax)
    1056:	00 00                	add    %al,(%rax)
    1058:	00 00                	add    %al,(%rax)
    105a:	00 ea                	add    %ch,%dl
    105c:	09 00                	or     %eax,(%rax)
    105e:	00 00                	add    %al,(%rax)
    1060:	00 00                	add    %al,(%rax)
    1062:	00 02                	add    %al,(%rdx)
    1064:	00 31                	add    %dh,(%rcx)
    1066:	9f                   	lahf   
    1067:	ea                   	(bad)  
    1068:	09 00                	or     %eax,(%rax)
    106a:	00 00                	add    %al,(%rax)
    106c:	00 00                	add    %al,(%rax)
    106e:	00 f2                	add    %dh,%dl
    1070:	09 00                	or     %eax,(%rax)
    1072:	00 00                	add    %al,(%rax)
    1074:	00 00                	add    %al,(%rax)
    1076:	00 02                	add    %al,(%rdx)
    1078:	00 33                	add    %dh,(%rbx)
    107a:	9f                   	lahf   
    107b:	f2 09 00             	repnz or %eax,(%rax)
    107e:	00 00                	add    %al,(%rax)
    1080:	00 00                	add    %al,(%rax)
    1082:	00 fa                	add    %bh,%dl
    1084:	09 00                	or     %eax,(%rax)
    1086:	00 00                	add    %al,(%rax)
    1088:	00 00                	add    %al,(%rax)
    108a:	00 02                	add    %al,(%rdx)
    108c:	00 34 9f             	add    %dh,(%rdi,%rbx,4)
    108f:	fa                   	cli    
    1090:	09 00                	or     %eax,(%rax)
    1092:	00 00                	add    %al,(%rax)
    1094:	00 00                	add    %al,(%rax)
    1096:	00 99 0a 00 00 00    	add    %bl,0xa(%rcx)
    109c:	00 00                	add    %al,(%rax)
    109e:	00 02                	add    %al,(%rdx)
    10a0:	00 35 9f 00 00 00    	add    %dh,0x9f(%rip)        # 1145 <__do_global_dtors_aux+0x25>
	...
    10b2:	00 d6                	add    %dl,%dh
    10b4:	09 00                	or     %eax,(%rax)
    10b6:	00 00                	add    %al,(%rax)
    10b8:	00 00                	add    %al,(%rax)
    10ba:	00 98 0a 00 00 00    	add    %bl,0xa(%rax)
    10c0:	00 00                	add    %al,(%rax)
    10c2:	00 01                	add    %al,(%rcx)
    10c4:	00 56 00             	add    %dl,0x0(%rsi)
	...

Déassemblage de la section .debug_ranges :

0000000000000000 <.debug_ranges>:
   0:	30 00                	xor    %al,(%rax)
   2:	00 00                	add    %al,(%rax)
   4:	00 00                	add    %al,(%rax)
   6:	00 00                	add    %al,(%rax)
   8:	44 00 00             	add    %r8b,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 50 00             	add    %dl,0x0(%rax)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	d7                   	xlat   %ds:(%rbx)
	...
  2d:	00 00                	add    %al,(%rax)
  2f:	00 60 05             	add    %ah,0x5(%rax)
  32:	00 00                	add    %al,(%rax)
  34:	00 00                	add    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	8a 05 00 00 00 00    	mov    0x0(%rip),%al        # 3e <__abi_tag-0x286>
  3e:	00 00                	add    %al,(%rax)
  40:	e3 06                	jrcxz  48 <__abi_tag-0x27c>
  42:	00 00                	add    %al,(%rax)
  44:	00 00                	add    %al,(%rax)
  46:	00 00                	add    %al,(%rax)
  48:	ed                   	in     (%dx),%eax
  49:	06                   	(bad)  
	...
  5e:	00 00                	add    %al,(%rax)
  60:	c6 05 00 00 00 00 00 	movb   $0x0,0x0(%rip)        # 67 <__abi_tag-0x25d>
  67:	00 d1                	add    %dl,%cl
  69:	05 00 00 00 00       	add    $0x0,%eax
  6e:	00 00                	add    %al,(%rax)
  70:	ed                   	in     (%dx),%eax
  71:	05 00 00 00 00       	add    $0x0,%eax
  76:	00 00                	add    %al,(%rax)
  78:	e3 06                	jrcxz  80 <__abi_tag-0x244>
  7a:	00 00                	add    %al,(%rax)
  7c:	00 00                	add    %al,(%rax)
  7e:	00 00                	add    %al,(%rax)
  80:	ed                   	in     (%dx),%eax
  81:	06                   	(bad)  
  82:	00 00                	add    %al,(%rax)
  84:	00 00                	add    %al,(%rax)
  86:	00 00                	add    %al,(%rax)
  88:	fe 06                	incb   (%rsi)
  8a:	00 00                	add    %al,(%rax)
  8c:	00 00                	add    %al,(%rax)
  8e:	00 00                	add    %al,(%rax)
  90:	3a 08                	cmp    (%rax),%cl
  92:	00 00                	add    %al,(%rax)
  94:	00 00                	add    %al,(%rax)
  96:	00 00                	add    %al,(%rax)
  98:	4d 08 00             	rex.WRB or %r8b,(%r8)
	...
  af:	00 c6                	add    %al,%dh
  b1:	05 00 00 00 00       	add    $0x0,%eax
  b6:	00 00                	add    %al,(%rax)
  b8:	d1 05 00 00 00 00    	roll   0x0(%rip)        # be <__abi_tag-0x206>
  be:	00 00                	add    %al,(%rax)
  c0:	ed                   	in     (%dx),%eax
  c1:	05 00 00 00 00       	add    $0x0,%eax
  c6:	00 00                	add    %al,(%rax)
  c8:	e3 06                	jrcxz  d0 <__abi_tag-0x1f4>
  ca:	00 00                	add    %al,(%rax)
  cc:	00 00                	add    %al,(%rax)
  ce:	00 00                	add    %al,(%rax)
  d0:	ed                   	in     (%dx),%eax
  d1:	06                   	(bad)  
  d2:	00 00                	add    %al,(%rax)
  d4:	00 00                	add    %al,(%rax)
  d6:	00 00                	add    %al,(%rax)
  d8:	fe 06                	incb   (%rsi)
  da:	00 00                	add    %al,(%rax)
  dc:	00 00                	add    %al,(%rax)
  de:	00 00                	add    %al,(%rax)
  e0:	3a 08                	cmp    (%rax),%cl
  e2:	00 00                	add    %al,(%rax)
  e4:	00 00                	add    %al,(%rax)
  e6:	00 00                	add    %al,(%rax)
  e8:	4d 08 00             	rex.WRB or %r8b,(%r8)
	...
  ff:	00 dc                	add    %bl,%ah
 101:	05 00 00 00 00       	add    $0x0,%eax
 106:	00 00                	add    %al,(%rax)
 108:	ed                   	in     (%dx),%eax
 109:	05 00 00 00 00       	add    $0x0,%eax
 10e:	00 00                	add    %al,(%rax)
 110:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 111:	07                   	(bad)  
 112:	00 00                	add    %al,(%rax)
 114:	00 00                	add    %al,(%rax)
 116:	00 00                	add    %al,(%rax)
 118:	3a 08                	cmp    (%rax),%cl
	...
