
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
    1093:	4c 8d 05 26 0b 00 00 	lea    0xb26(%rip),%r8        # 1bc0 <__libc_csu_fini>
    109a:	48 8d 0d af 0a 00 00 	lea    0xaaf(%rip),%rcx        # 1b50 <__libc_csu_init>
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
    16e0:	41 57                	push   %r15
    16e2:	41 56                	push   %r14
    16e4:	53                   	push   %rbx
    16e5:	48 83 ec 40          	sub    $0x40,%rsp
    16e9:	83 ff 02             	cmp    $0x2,%edi
    16ec:	0f 85 49 04 00 00    	jne    1b3b <main+0x45b>
    16f2:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    16f6:	31 f6                	xor    %esi,%esi
    16f8:	ba 0a 00 00 00       	mov    $0xa,%edx
    16fd:	e8 4e f9 ff ff       	callq  1050 <strtoll@plt>
    1702:	49 89 c7             	mov    %rax,%r15
    1705:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    170c:	00 
    170d:	bf 40 00 00 00       	mov    $0x40,%edi
    1712:	48 89 de             	mov    %rbx,%rsi
    1715:	e8 56 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    171a:	49 89 c6             	mov    %rax,%r14
    171d:	bf 40 00 00 00       	mov    $0x40,%edi
    1722:	48 89 de             	mov    %rbx,%rsi
    1725:	e8 46 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    172a:	48 89 c3             	mov    %rax,%rbx
    172d:	4d 85 ff             	test   %r15,%r15
    1730:	74 0d                	je     173f <main+0x5f>
    1732:	49 83 ff 04          	cmp    $0x4,%r15
    1736:	73 1c                	jae    1754 <main+0x74>
    1738:	31 c0                	xor    %eax,%eax
    173a:	e9 17 01 00 00       	jmpq   1856 <main+0x176>
    173f:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1743:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1747:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    174b:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    174f:	e9 66 02 00 00       	jmpq   19ba <main+0x2da>
    1754:	4c 89 f8             	mov    %r15,%rax
    1757:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    175b:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    175f:	48 89 f2             	mov    %rsi,%rdx
    1762:	48 c1 ea 02          	shr    $0x2,%rdx
    1766:	48 83 c2 01          	add    $0x1,%rdx
    176a:	89 d1                	mov    %edx,%ecx
    176c:	83 e1 03             	and    $0x3,%ecx
    176f:	48 83 fe 0c          	cmp    $0xc,%rsi
    1773:	73 07                	jae    177c <main+0x9c>
    1775:	31 f6                	xor    %esi,%esi
    1777:	e9 94 00 00 00       	jmpq   1810 <main+0x130>
    177c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1780:	48 f7 da             	neg    %rdx
    1783:	31 f6                	xor    %esi,%esi
    1785:	66 0f 28 05 83 08 00 	movapd 0x883(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    178c:	00 
    178d:	66 0f 28 0d 8b 08 00 	movapd 0x88b(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1794:	00 
    1795:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    179c:	00 00 00 
    179f:	90                   	nop
    17a0:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    17a6:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
    17ad:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    17b2:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
    17b8:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    17bf:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
    17c6:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    17cc:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
    17d2:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    17d9:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
    17e0:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    17e6:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
    17ec:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    17f3:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
    17fa:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1800:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
    1806:	48 83 c6 10          	add    $0x10,%rsi
    180a:	48 83 c2 04          	add    $0x4,%rdx
    180e:	75 90                	jne    17a0 <main+0xc0>
    1810:	48 85 c9             	test   %rcx,%rcx
    1813:	74 3c                	je     1851 <main+0x171>
    1815:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    181c:	00 
    181d:	48 f7 d9             	neg    %rcx
    1820:	66 0f 28 05 e8 07 00 	movapd 0x7e8(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1827:	00 
    1828:	66 0f 28 0d f0 07 00 	movapd 0x7f0(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    182f:	00 
    1830:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    1837:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
    183d:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    1843:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
    1848:	48 83 c2 20          	add    $0x20,%rdx
    184c:	48 ff c1             	inc    %rcx
    184f:	75 df                	jne    1830 <main+0x150>
    1851:	49 39 c7             	cmp    %rax,%r15
    1854:	74 2b                	je     1881 <main+0x1a1>
    1856:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    185d:	99 b9 3f 
    1860:	48 ba 00 00 00 00 00 	movabs $0x3ff0000000000000,%rdx
    1867:	00 f0 3f 
    186a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1870:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
    1874:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
    1878:	48 83 c0 01          	add    $0x1,%rax
    187c:	49 39 c7             	cmp    %rax,%r15
    187f:	75 ef                	jne    1870 <main+0x190>
    1881:	49 8d 4f ff          	lea    -0x1(%r15),%rcx
    1885:	44 89 f8             	mov    %r15d,%eax
    1888:	83 e0 03             	and    $0x3,%eax
    188b:	48 83 f9 03          	cmp    $0x3,%rcx
    188f:	73 08                	jae    1899 <main+0x1b9>
    1891:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1895:	31 c9                	xor    %ecx,%ecx
    1897:	eb 62                	jmp    18fb <main+0x21b>
    1899:	4c 89 fa             	mov    %r15,%rdx
    189c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    18a0:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    18a4:	31 c9                	xor    %ecx,%ecx
    18a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    18ad:	00 00 00 
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
    19bd:	f2 0f 11 6c 24 18    	movsd  %xmm5,0x18(%rsp)
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
    1aa3:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
    1aa9:	4c 89 f7             	mov    %r14,%rdi
    1aac:	48 89 de             	mov    %rbx,%rsi
    1aaf:	4c 89 fa             	mov    %r15,%rdx
    1ab2:	e8 69 fa ff ff       	callq  1520 <dotprod_16x>
    1ab7:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1abd:	48 8d 3d 6c 05 00 00 	lea    0x56c(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    1ac4:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    1aca:	b0 01                	mov    $0x1,%al
    1acc:	e8 6f f5 ff ff       	callq  1040 <printf@plt>
    1ad1:	48 8d 3d 63 05 00 00 	lea    0x563(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1ad8:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1add:	b0 01                	mov    $0x1,%al
    1adf:	e8 5c f5 ff ff       	callq  1040 <printf@plt>
    1ae4:	48 8d 3d 5e 05 00 00 	lea    0x55e(%rip),%rdi        # 2049 <_IO_stdin_used+0x49>
    1aeb:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    1af0:	b0 01                	mov    $0x1,%al
    1af2:	e8 49 f5 ff ff       	callq  1040 <printf@plt>
    1af7:	48 8d 3d 59 05 00 00 	lea    0x559(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1afe:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    1b04:	b0 01                	mov    $0x1,%al
    1b06:	e8 35 f5 ff ff       	callq  1040 <printf@plt>
    1b0b:	48 8d 3d 53 05 00 00 	lea    0x553(%rip),%rdi        # 2065 <_IO_stdin_used+0x65>
    1b12:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1b18:	b0 01                	mov    $0x1,%al
    1b1a:	e8 21 f5 ff ff       	callq  1040 <printf@plt>
    1b1f:	4c 89 f7             	mov    %r14,%rdi
    1b22:	e8 09 f5 ff ff       	callq  1030 <free@plt>
    1b27:	48 89 df             	mov    %rbx,%rdi
    1b2a:	e8 01 f5 ff ff       	callq  1030 <free@plt>
    1b2f:	31 c0                	xor    %eax,%eax
    1b31:	48 83 c4 40          	add    $0x40,%rsp
    1b35:	5b                   	pop    %rbx
    1b36:	41 5e                	pop    %r14
    1b38:	41 5f                	pop    %r15
    1b3a:	c3                   	retq   
    1b3b:	bf 01 00 00 00       	mov    $0x1,%edi
    1b40:	e8 1b f5 ff ff       	callq  1060 <exit@plt>
    1b45:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1b4c:	00 00 00 
    1b4f:	90                   	nop

0000000000001b50 <__libc_csu_init>:
    1b50:	f3 0f 1e fa          	endbr64 
    1b54:	41 57                	push   %r15
    1b56:	4c 8d 3d 7b 22 00 00 	lea    0x227b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    1b5d:	41 56                	push   %r14
    1b5f:	49 89 d6             	mov    %rdx,%r14
    1b62:	41 55                	push   %r13
    1b64:	49 89 f5             	mov    %rsi,%r13
    1b67:	41 54                	push   %r12
    1b69:	41 89 fc             	mov    %edi,%r12d
    1b6c:	55                   	push   %rbp
    1b6d:	48 8d 2d 6c 22 00 00 	lea    0x226c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1b74:	53                   	push   %rbx
    1b75:	4c 29 fd             	sub    %r15,%rbp
    1b78:	48 83 ec 08          	sub    $0x8,%rsp
    1b7c:	e8 7f f4 ff ff       	callq  1000 <_init>
    1b81:	48 c1 fd 03          	sar    $0x3,%rbp
    1b85:	74 1f                	je     1ba6 <__libc_csu_init+0x56>
    1b87:	31 db                	xor    %ebx,%ebx
    1b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b90:	4c 89 f2             	mov    %r14,%rdx
    1b93:	4c 89 ee             	mov    %r13,%rsi
    1b96:	44 89 e7             	mov    %r12d,%edi
    1b99:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1b9d:	48 83 c3 01          	add    $0x1,%rbx
    1ba1:	48 39 dd             	cmp    %rbx,%rbp
    1ba4:	75 ea                	jne    1b90 <__libc_csu_init+0x40>
    1ba6:	48 83 c4 08          	add    $0x8,%rsp
    1baa:	5b                   	pop    %rbx
    1bab:	5d                   	pop    %rbp
    1bac:	41 5c                	pop    %r12
    1bae:	41 5d                	pop    %r13
    1bb0:	41 5e                	pop    %r14
    1bb2:	41 5f                	pop    %r15
    1bb4:	c3                   	retq   
    1bb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1bbc:	00 00 00 00 

0000000000001bc0 <__libc_csu_fini>:
    1bc0:	f3 0f 1e fa          	endbr64 
    1bc4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001bc8 <_fini>:
    1bc8:	f3 0f 1e fa          	endbr64 
    1bcc:	48 83 ec 08          	sub    $0x8,%rsp
    1bd0:	48 83 c4 08          	add    $0x8,%rsp
    1bd4:	c3                   	retq   

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
    2078:	60                   	(bad)  
    2079:	00 00                	add    %al,(%rax)
    207b:	00 0b                	add    %cl,(%rbx)
    207d:	00 00                	add    %al,(%rax)
    207f:	00 ac ef ff ff 94 00 	add    %ch,0x94ffff(%rdi,%rbp,8)
    2086:	00 00                	add    %al,(%rax)
    2088:	0c f0                	or     $0xf0,%al
    208a:	ff                   	(bad)  
    208b:	ff                   	(bad)  
    208c:	7c 00                	jl     208e <__GNU_EH_FRAME_HDR+0x1a>
    208e:	00 00                	add    %al,(%rax)
    2090:	0c f1                	or     $0xf1,%al
    2092:	ff                   	(bad)  
    2093:	ff                   	(bad)  
    2094:	bc 00 00 00 3c       	mov    $0x3c000000,%esp
    2099:	f1                   	icebp  
    209a:	ff                   	(bad)  
    209b:	ff                   	(bad)  
    209c:	d8 00                	fadds  (%rax)
    209e:	00 00                	add    %al,(%rax)
    20a0:	ec                   	in     (%dx),%al
    20a1:	f1                   	icebp  
    20a2:	ff                   	(bad)  
    20a3:	ff                   	(bad)  
    20a4:	ec                   	in     (%dx),%al
    20a5:	00 00                	add    %al,(%rax)
    20a7:	00 7c f2 ff          	add    %bh,-0x1(%rdx,%rsi,8)
    20ab:	ff 00                	incl   (%rax)
    20ad:	01 00                	add    %eax,(%rax)
    20af:	00 4c f3 ff          	add    %cl,-0x1(%rbx,%rsi,8)
    20b3:	ff 14 01             	callq  *(%rcx,%rax,1)
    20b6:	00 00                	add    %al,(%rax)
    20b8:	ac                   	lods   %ds:(%rsi),%al
    20b9:	f4                   	hlt    
    20ba:	ff                   	(bad)  
    20bb:	ff 28                	ljmp   *(%rax)
    20bd:	01 00                	add    %eax,(%rax)
    20bf:	00 6c f6 ff          	add    %ch,-0x1(%rsi,%rsi,8)
    20c3:	ff                   	(bad)  
    20c4:	3c 01                	cmp    $0x1,%al
    20c6:	00 00                	add    %al,(%rax)
    20c8:	dc fa                	fdivr  %st,%st(2)
    20ca:	ff                   	(bad)  
    20cb:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
    20cf:	00 4c fb ff          	add    %cl,-0x1(%rbx,%rdi,8)
    20d3:	ff                   	(bad)  
    20d4:	bc                   	.byte 0xbc
    20d5:	01 00                	add    %eax,(%rax)
	...

Déassemblage de la section .eh_frame :

00000000000020d8 <__FRAME_END__-0x16c>:
    20d8:	14 00                	adc    $0x0,%al
    20da:	00 00                	add    %al,(%rax)
    20dc:	00 00                	add    %al,(%rax)
    20de:	00 00                	add    %al,(%rax)
    20e0:	01 7a 52             	add    %edi,0x52(%rdx)
    20e3:	00 01                	add    %al,(%rcx)
    20e5:	78 10                	js     20f7 <__GNU_EH_FRAME_HDR+0x83>
    20e7:	01 1b                	add    %ebx,(%rbx)
    20e9:	0c 07                	or     $0x7,%al
    20eb:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    20f1:	00 00                	add    %al,(%rax)
    20f3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20f6:	00 00                	add    %al,(%rax)
    20f8:	88 ef                	mov    %ch,%bh
    20fa:	ff                   	(bad)  
    20fb:	ff 2f                	ljmp   *(%rdi)
    20fd:	00 00                	add    %al,(%rax)
    20ff:	00 00                	add    %al,(%rax)
    2101:	44 07                	rex.R (bad) 
    2103:	10 00                	adc    %al,(%rax)
    2105:	00 00                	add    %al,(%rax)
    2107:	00 24 00             	add    %ah,(%rax,%rax,1)
    210a:	00 00                	add    %al,(%rax)
    210c:	34 00                	xor    $0x0,%al
    210e:	00 00                	add    %al,(%rax)
    2110:	10 ef                	adc    %ch,%bh
    2112:	ff                   	(bad)  
    2113:	ff 60 00             	jmpq   *0x0(%rax)
    2116:	00 00                	add    %al,(%rax)
    2118:	00 0e                	add    %cl,(%rsi)
    211a:	10 46 0e             	adc    %al,0xe(%rsi)
    211d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2120:	0b 77 08             	or     0x8(%rdi),%esi
    2123:	80 00 3f             	addb   $0x3f,(%rax)
    2126:	1a 3b                	sbb    (%rbx),%bh
    2128:	2a 33                	sub    (%rbx),%dh
    212a:	24 22                	and    $0x22,%al
    212c:	00 00                	add    %al,(%rax)
    212e:	00 00                	add    %al,(%rax)
    2130:	18 00                	sbb    %al,(%rax)
    2132:	00 00                	add    %al,(%rax)
    2134:	5c                   	pop    %rsp
    2135:	00 00                	add    %al,(%rax)
    2137:	00 48 f0             	add    %cl,-0x10(%rax)
    213a:	ff                   	(bad)  
    213b:	ff 21                	jmpq   *(%rcx)
    213d:	00 00                	add    %al,(%rax)
    213f:	00 00                	add    %al,(%rax)
    2141:	41 0e                	rex.B (bad) 
    2143:	10 51 0e             	adc    %dl,0xe(%rcx)
    2146:	08 45 0e             	or     %al,0xe(%rbp)
    2149:	10 00                	adc    %al,(%rax)
    214b:	00 10                	add    %dl,(%rax)
    214d:	00 00                	add    %al,(%rax)
    214f:	00 78 00             	add    %bh,0x0(%rax)
    2152:	00 00                	add    %al,(%rax)
    2154:	5c                   	pop    %rsp
    2155:	f0 ff                	lock (bad) 
    2157:	ff a8 00 00 00 00    	ljmp   *0x0(%rax)
    215d:	00 00                	add    %al,(%rax)
    215f:	00 10                	add    %dl,(%rax)
    2161:	00 00                	add    %al,(%rax)
    2163:	00 8c 00 00 00 f8 f0 	add    %cl,-0xf080000(%rax,%rax,1)
    216a:	ff                   	(bad)  
    216b:	ff 88 00 00 00 00    	decl   0x0(%rax)
    2171:	00 00                	add    %al,(%rax)
    2173:	00 10                	add    %dl,(%rax)
    2175:	00 00                	add    %al,(%rax)
    2177:	00 a0 00 00 00 74    	add    %ah,0x74000000(%rax)
    217d:	f1                   	icebp  
    217e:	ff                   	(bad)  
    217f:	ff c5                	inc    %ebp
    2181:	00 00                	add    %al,(%rax)
    2183:	00 00                	add    %al,(%rax)
    2185:	00 00                	add    %al,(%rax)
    2187:	00 10                	add    %dl,(%rax)
    2189:	00 00                	add    %al,(%rax)
    218b:	00 b4 00 00 00 30 f2 	add    %dh,-0xdd00000(%rax,%rax,1)
    2192:	ff                   	(bad)  
    2193:	ff 55 01             	callq  *0x1(%rbp)
    2196:	00 00                	add    %al,(%rax)
    2198:	00 00                	add    %al,(%rax)
    219a:	00 00                	add    %al,(%rax)
    219c:	10 00                	adc    %al,(%rax)
    219e:	00 00                	add    %al,(%rax)
    21a0:	c8 00 00 00          	enterq $0x0,$0x0
    21a4:	7c f3                	jl     2199 <__GNU_EH_FRAME_HDR+0x125>
    21a6:	ff                   	(bad)  
    21a7:	ff b5 01 00 00 00    	pushq  0x1(%rbp)
    21ad:	00 00                	add    %al,(%rax)
    21af:	00 34 00             	add    %dh,(%rax,%rax,1)
    21b2:	00 00                	add    %al,(%rax)
    21b4:	dc 00                	faddl  (%rax)
    21b6:	00 00                	add    %al,(%rax)
    21b8:	28 f5                	sub    %dh,%ch
    21ba:	ff                   	(bad)  
    21bb:	ff 65 04             	jmpq   *0x4(%rbp)
    21be:	00 00                	add    %al,(%rax)
    21c0:	00 42 0e             	add    %al,0xe(%rdx)
    21c3:	10 42 0e             	adc    %al,0xe(%rdx)
    21c6:	18 41 0e             	sbb    %al,0xe(%rcx)
    21c9:	20 44 0e 60          	and    %al,0x60(%rsi,%rcx,1)
    21cd:	83 04 8e 03          	addl   $0x3,(%rsi,%rcx,4)
    21d1:	8f 02                	popq   (%rdx)
    21d3:	03 4c 04 0e          	add    0xe(%rsp,%rax,1),%ecx
    21d7:	20 41 0e             	and    %al,0xe(%rcx)
    21da:	18 42 0e             	sbb    %al,0xe(%rdx)
    21dd:	10 42 0e             	adc    %al,0xe(%rdx)
    21e0:	08 41 0e             	or     %al,0xe(%rcx)
    21e3:	60                   	(bad)  
    21e4:	00 00                	add    %al,(%rax)
    21e6:	00 00                	add    %al,(%rax)
    21e8:	44 00 00             	add    %r8b,(%rax)
    21eb:	00 14 01             	add    %dl,(%rcx,%rax,1)
    21ee:	00 00                	add    %al,(%rax)
    21f0:	60                   	(bad)  
    21f1:	f9                   	stc    
    21f2:	ff                   	(bad)  
    21f3:	ff 65 00             	jmpq   *0x0(%rbp)
    21f6:	00 00                	add    %al,(%rax)
    21f8:	00 46 0e             	add    %al,0xe(%rsi)
    21fb:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2201:	8e 03                	mov    (%rbx),%es
    2203:	45 0e                	rex.RB (bad) 
    2205:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    220b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86303055 <_end+0xffffffff862feffd>
    2211:	06                   	(bad)  
    2212:	48 0e                	rex.W (bad) 
    2214:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    221a:	6e                   	outsb  %ds:(%rsi),(%dx)
    221b:	0e                   	(bad)  
    221c:	38 41 0e             	cmp    %al,0xe(%rcx)
    221f:	30 41 0e             	xor    %al,0xe(%rcx)
    2222:	28 42 0e             	sub    %al,0xe(%rdx)
    2225:	20 42 0e             	and    %al,0xe(%rdx)
    2228:	18 42 0e             	sbb    %al,0xe(%rdx)
    222b:	10 42 0e             	adc    %al,0xe(%rdx)
    222e:	08 00                	or     %al,(%rax)
    2230:	10 00                	adc    %al,(%rax)
    2232:	00 00                	add    %al,(%rax)
    2234:	5c                   	pop    %rsp
    2235:	01 00                	add    %eax,(%rax)
    2237:	00 88 f9 ff ff 05    	add    %cl,0x5fffff9(%rax)
    223d:	00 00                	add    %al,(%rax)
    223f:	00 00                	add    %al,(%rax)
    2241:	00 00                	add    %al,(%rax)
	...

0000000000002244 <__FRAME_END__>:
    2244:	00 00                	add    %al,(%rax)
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
    3e0f:	00 c8                	add    %cl,%al
    3e11:	1b 00                	sbb    (%rax),%eax
    3e13:	00 00                	add    %al,(%rax)
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
   0:	b8 07 00 00 04       	mov    $0x4000007,%eax
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 08                	add    %cl,(%rax)
   b:	01 00                	add    %eax,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 0c 00             	add    %cl,(%rax,%rax,1)
  12:	15 00 00 00 00       	adc    $0x0,%eax
  17:	00 00                	add    %al,(%rax)
  19:	00 1f                	add    %bl,(%rdi)
  1b:	00 00                	add    %al,(%rax)
  1d:	00 80 11 00 00 00    	add    %al,0x11(%rax)
  23:	00 00                	add    %al,(%rax)
  25:	00 c5                	add    %al,%ch
  27:	09 00                	or     %eax,(%rax)
  29:	00 02                	add    %al,(%rdx)
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
 1d3:	a3 07 00 00 0c b8 00 	movabs %eax,0xb80c000007
 1da:	00 00 
 1dc:	01 60 0f             	add    %esp,0xf(%rax)
 1df:	03 00                	add    (%rax),%eax
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
 284:	7c af                	jl     235 <__abi_tag-0x8f>
 286:	07                   	(bad)  
 287:	00 00                	add    %al,(%rax)
 289:	0c b8                	or     $0xb8,%al
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
 4af:	65 04 00             	gs add $0x0,%al
 4b2:	00 01                	add    %al,(%rcx)
 4b4:	57                   	push   %rdi
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
 4e7:	a1 0f 03 00 00 0b f6 	movabs 0x8f60b0000030f,%eax
 4ee:	08 00 
 4f0:	00 75 00             	add    %dh,0x0(%rbp)
 4f3:	00 00                	add    %al,(%rax)
 4f5:	01 a4 6a 03 00 00 0b 	add    %esp,0xb000003(%rdx,%rbp,2)
 4fc:	9a                   	(bad)  
 4fd:	09 00                	or     %eax,(%rax)
 4ff:	00 7e 00             	add    %bh,0x0(%rsi)
 502:	00 00                	add    %al,(%rax)
 504:	01 a5 6a 03 00 00    	add    %esp,0x36a(%rbp)
 50a:	0b c8                	or     %eax,%ecx
 50c:	0b 00                	or     (%rax),%eax
 50e:	00 f9                	add    %bh,%cl
 510:	00 00                	add    %al,(%rax)
 512:	00 01                	add    %al,(%rcx)
 514:	ab                   	stos   %eax,%es:(%rdi)
 515:	6f                   	outsl  %ds:(%rsi),(%dx)
 516:	03 00                	add    (%rax),%eax
 518:	00 0b                	add    %cl,(%rbx)
 51a:	d1 0c 00             	rorl   (%rax,%rax,1)
 51d:	00 fd                	add    %bh,%ch
 51f:	00 00                	add    %al,(%rax)
 521:	00 01                	add    %al,(%rcx)
 523:	ac                   	lods   %ds:(%rsi),%al
 524:	6f                   	outsl  %ds:(%rsi),(%dx)
 525:	03 00                	add    (%rax),%eax
 527:	00 0b                	add    %cl,(%rbx)
 529:	c0 0e 00             	rorb   $0x0,(%rsi)
 52c:	00 04 01             	add    %al,(%rcx,%rax,1)
 52f:	00 00                	add    %al,(%rax)
 531:	01 ad 6f 03 00 00    	add    %ebp,0x36f(%rbp)
 537:	0b f7                	or     %edi,%esi
 539:	0e                   	(bad)  
 53a:	00 00                	add    %al,(%rax)
 53c:	0b 01                	or     (%rcx),%eax
 53e:	00 00                	add    %al,(%rax)
 540:	01 ae 6f 03 00 00    	add    %ebp,0x36f(%rsi)
 546:	0b 1b                	or     (%rbx),%ebx
 548:	0f 00 00             	sldt   (%rax)
 54b:	12 01                	adc    (%rcx),%al
 54d:	00 00                	add    %al,(%rax)
 54f:	01 af 6f 03 00 00    	add    %ebp,0x36f(%rdi)
 555:	18 ec                	sbb    %ch,%ah
 557:	02 00                	add    (%rax),%al
 559:	00 30                	add    %dh,(%rax)
 55b:	00 00                	add    %al,(%rax)
 55d:	00 01                	add    %al,(%rcx)
 55f:	a1 1a 03 67 08 00 00 	movabs 0x2f800000867031a,%eax
 566:	f8 02 
 568:	00 00                	add    %al,(%rax)
 56a:	03 9d 08 00 00 03    	add    0x3000008(%rbp),%ebx
 570:	03 00                	add    (%rax),%eax
 572:	00 00                	add    %al,(%rax)
 574:	18 2e                	sbb    %ch,(%rsi)
 576:	03 00                	add    (%rax),%eax
 578:	00 60 00             	add    %ah,0x0(%rax)
 57b:	00 00                	add    %al,(%rax)
 57d:	01 a8 03 03 bd 09    	add    %ebp,0x9bd0303(%rax)
 583:	00 00                	add    %al,(%rax)
 585:	36 03 00             	add    %ss:(%rax),%eax
 588:	00 03                	add    %al,(%rbx)
 58a:	64 09 00             	or     %eax,%fs:(%rax)
 58d:	00 41 03             	add    %al,0x3(%rcx)
 590:	00 00                	add    %al,(%rax)
 592:	03 f3                	add    %ebx,%esi
 594:	09 00                	or     %eax,(%rax)
 596:	00 4c 03 00          	add    %cl,0x0(%rbx,%rax,1)
 59a:	00 06                	add    %al,(%rsi)
 59c:	a0 00 00 00 05 19 09 	movabs 0x91905000000,%al
 5a3:	00 00 
 5a5:	58                   	pop    %rax
 5a6:	03 00                	add    (%rax),%eax
 5a8:	00 00                	add    %al,(%rax)
 5aa:	00 18                	add    %bl,(%rax)
 5ac:	76 03                	jbe    5b1 <__abi_tag+0x2ed>
 5ae:	00 00                	add    %al,(%rax)
 5b0:	e0 00                	loopne 5b2 <__abi_tag+0x2ee>
 5b2:	00 00                	add    %al,(%rax)
 5b4:	01 ac 13 03 eb 0b 00 	add    %ebp,0xbeb03(%rbx,%rdx,1)
 5bb:	00 82 03 00 00 03    	add    %al,0x3000003(%rdx)
 5c1:	0e                   	(bad)  
 5c2:	0c 00                	or     $0x0,%al
 5c4:	00 8d 03 00 00 03    	add    %cl,0x3000003(%rbp)
 5ca:	31 0c 00             	xor    %ecx,(%rax,%rax,1)
 5cd:	00 98 03 00 00 05    	add    %bl,0x5000003(%rax)
 5d3:	29 0a                	sub    %ecx,(%rdx)
 5d5:	00 00                	add    %al,(%rax)
 5d7:	a3 03 00 00 07 33 19 	movabs %eax,0x193307000003
 5de:	00 00 
 5e0:	00 00                	add    %al,(%rax)
 5e2:	00 00                	add    %al,(%rax)
 5e4:	31 00                	xor    %eax,(%rax)
 5e6:	00 00                	add    %al,(%rax)
 5e8:	05 54 0c 00 00       	add    $0xc54,%eax
 5ed:	af                   	scas   %es:(%rdi),%eax
 5ee:	03 00                	add    (%rax),%eax
 5f0:	00 00                	add    %al,(%rax)
 5f2:	07                   	(bad)  
 5f3:	6a 19                	pushq  $0x19
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 00                	add    %al,(%rax)
 5f9:	00 00                	add    %al,(%rax)
 5fb:	50                   	push   %rax
 5fc:	00 00                	add    %al,(%rax)
 5fe:	00 05 ae 0c 00 00    	add    %al,0xcae(%rip)        # 12b2 <dotprod_2x+0x52>
 604:	bc 03 00 00 07       	mov    $0x7000003,%esp
 609:	6a 19                	pushq  $0x19
 60b:	00 00                	add    %al,(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 00                	add    %al,(%rax)
 611:	32 00                	xor    (%rax),%al
 613:	00 00                	add    %al,(%rax)
 615:	05 77 0c 00 00       	add    $0xc77,%eax
 61a:	c8 03 00 00          	enterq $0x3,$0x0
 61e:	00 00                	add    %al,(%rax)
 620:	00 19                	add    %bl,(%rcx)
 622:	e9 03 00 00 81       	jmpq   ffffffff8100062a <_end+0xffffffff80ffc5d2>
 627:	18 00                	sbb    %al,(%rax)
 629:	00 00                	add    %al,(%rax)
 62b:	00 00                	add    %al,(%rax)
 62d:	00 a6 00 00 00 01    	add    %ah,0x1000000(%rsi)
 633:	ab                   	stos   %eax,%es:(%rdi)
 634:	10 05 46 0b 00 00    	adc    %al,0xb46(%rip)        # 1180 <parse_args>
 63a:	16                   	(bad)  
 63b:	04 00                	add    $0x0,%al
 63d:	00 07                	add    %al,(%rdi)
 63f:	81 18 00 00 00 00    	sbbl   $0x0,(%rax)
 645:	00 00                	add    %al,(%rax)
 647:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 648:	00 00                	add    %al,(%rax)
 64a:	00 05 cb 0a 00 00    	add    %al,0xacb(%rip)        # 111b <register_tm_clones+0x3b>
 650:	22 04 00             	and    (%rax,%rax,1),%al
 653:	00 00                	add    %al,(%rax)
 655:	00 19                	add    %bl,(%rcx)
 657:	2f                   	(bad)  
 658:	04 00                	add    $0x0,%al
 65a:	00 cd                	add    %cl,%ch
 65c:	19 00                	sbb    %eax,(%rax)
 65e:	00 00                	add    %al,(%rax)
 660:	00 00                	add    %al,(%rax)
 662:	00 c8                	add    %cl,%al
 664:	00 00                	add    %al,(%rax)
 666:	00 01                	add    %al,(%rcx)
 668:	ad                   	lods   %ds:(%rsi),%eax
 669:	13 03                	adc    (%rbx),%eax
 66b:	40 0e                	rex (bad) 
 66d:	00 00                	add    %al,(%rax)
 66f:	3b 04 00             	cmp    (%rax,%rax,1),%eax
 672:	00 03                	add    %al,(%rbx)
 674:	1d 0e 00 00 46       	sbb    $0x4600000e,%eax
 679:	04 00                	add    $0x0,%al
 67b:	00 03                	add    %al,(%rbx)
 67d:	fa                   	cli    
 67e:	0d 00 00 51 04       	or     $0x4510000,%eax
 683:	00 00                	add    %al,(%rax)
 685:	08 5c 04 00          	or     %bl,0x0(%rsp,%rax,1)
 689:	00 05 52 0d 00 00    	add    %al,0xd52(%rip)        # 13e1 <dotprod_8x+0x21>
 68f:	67 04 00             	addr32 add $0x0,%al
 692:	00 07                	add    %al,(%rdi)
 694:	cd 19                	int    $0x19
 696:	00 00                	add    %al,(%rax)
 698:	00 00                	add    %al,(%rax)
 69a:	00 00                	add    %al,(%rax)
 69c:	5e                   	pop    %rsi
 69d:	00 00                	add    %al,(%rax)
 69f:	00 05 1b 0d 00 00    	add    %al,0xd1b(%rip)        # 13c0 <dotprod_8x>
 6a5:	73 04                	jae    6ab <__abi_tag+0x3e7>
 6a7:	00 00                	add    %al,(%rax)
 6a9:	00 07                	add    %al,(%rdi)
 6ab:	39 1a                	cmp    %ebx,(%rdx)
 6ad:	00 00                	add    %al,(%rax)
 6af:	00 00                	add    %al,(%rax)
 6b1:	00 00                	add    %al,(%rax)
 6b3:	3e 00 00             	add    %al,%ds:(%rax)
 6b6:	00 05 63 0e 00 00    	add    %al,0xe63(%rip)        # 151f <dotprod_8x+0x15f>
 6bc:	80 04 00 00          	addb   $0x0,(%rax,%rax,1)
 6c0:	07                   	(bad)  
 6c1:	39 1a                	cmp    %ebx,(%rdx)
 6c3:	00 00                	add    %al,(%rax)
 6c5:	00 00                	add    %al,(%rax)
 6c7:	00 00                	add    %al,(%rax)
 6c9:	3e 00 00             	add    %al,%ds:(%rax)
 6cc:	00 05 88 0e 00 00    	add    %al,0xe88(%rip)        # 155a <dotprod_16x+0x3a>
 6d2:	8c 04 00             	mov    %es,(%rax,%rax,1)
 6d5:	00 00                	add    %al,(%rax)
 6d7:	00 00                	add    %al,(%rax)
 6d9:	1a 76 07             	sbb    0x7(%rsi),%dh
 6dc:	00 00                	add    %al,(%rax)
 6de:	1a 17                	sbb    (%rdi),%dl
 6e0:	00 00                	add    %al,(%rax)
 6e2:	00 00                	add    %al,(%rax)
 6e4:	00 00                	add    %al,(%rax)
 6e6:	1b 01                	sbb    (%rcx),%eax
 6e8:	54                   	push   %rsp
 6e9:	02 73 00             	add    0x0(%rbx),%dh
 6ec:	1b 01                	sbb    (%rcx),%eax
 6ee:	55                   	push   %rbp
 6ef:	02 10                	add    (%rax),%dl
 6f1:	40 00 1a             	add    %bl,(%rdx)
 6f4:	76 07                	jbe    6fd <__abi_tag+0x439>
 6f6:	00 00                	add    %al,(%rax)
 6f8:	2a 17                	sub    (%rdi),%dl
 6fa:	00 00                	add    %al,(%rax)
 6fc:	00 00                	add    %al,(%rax)
 6fe:	00 00                	add    %al,(%rax)
 700:	1b 01                	sbb    (%rcx),%eax
 702:	54                   	push   %rsp
 703:	02 73 00             	add    0x0(%rbx),%dh
 706:	1b 01                	sbb    (%rcx),%eax
 708:	55                   	push   %rbp
 709:	02 10                	add    (%rax),%dl
 70b:	40 00 1a             	add    %bl,(%rdx)
 70e:	88 01                	mov    %al,(%rcx)
 710:	00 00                	add    %al,(%rax)
 712:	a3 1a 00 00 00 00 00 	movabs %eax,0x1b0000000000001a
 719:	00 1b 
 71b:	01 51 02             	add    %edx,0x2(%rcx)
 71e:	7f 00                	jg     720 <__abi_tag+0x45c>
 720:	1b 01                	sbb    (%rcx),%eax
 722:	54                   	push   %rsp
 723:	02 73 00             	add    0x0(%rbx),%dh
 726:	1b 01                	sbb    (%rcx),%eax
 728:	55                   	push   %rbp
 729:	02 7e 00             	add    0x0(%rsi),%bh
 72c:	00 1a                	add    %bl,(%rdx)
 72e:	3a 02                	cmp    (%rdx),%al
 730:	00 00                	add    %al,(%rax)
 732:	b7 1a                	mov    $0x1a,%bh
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	00 00                	add    %al,(%rax)
 73a:	1b 01                	sbb    (%rcx),%eax
 73c:	51                   	push   %rcx
 73d:	02 7f 00             	add    0x0(%rdi),%bh
 740:	1b 01                	sbb    (%rcx),%eax
 742:	54                   	push   %rsp
 743:	02 73 00             	add    0x0(%rbx),%dh
 746:	1b 01                	sbb    (%rcx),%eax
 748:	55                   	push   %rbp
 749:	02 7e 00             	add    0x0(%rsi),%bh
 74c:	00 1a                	add    %bl,(%rdx)
 74e:	95                   	xchg   %eax,%ebp
 74f:	07                   	(bad)  
 750:	00 00                	add    %al,(%rax)
 752:	27                   	(bad)  
 753:	1b 00                	sbb    (%rax),%eax
 755:	00 00                	add    %al,(%rax)
 757:	00 00                	add    %al,(%rax)
 759:	00 1b                	add    %bl,(%rbx)
 75b:	01 55 02             	add    %edx,0x2(%rbp)
 75e:	7e 00                	jle    760 <__abi_tag+0x49c>
 760:	00 1a                	add    %bl,(%rdx)
 762:	95                   	xchg   %eax,%ebp
 763:	07                   	(bad)  
 764:	00 00                	add    %al,(%rax)
 766:	2f                   	(bad)  
 767:	1b 00                	sbb    (%rax),%eax
 769:	00 00                	add    %al,(%rax)
 76b:	00 00                	add    %al,(%rax)
 76d:	00 1b                	add    %bl,(%rbx)
 76f:	01 55 02             	add    %edx,0x2(%rbp)
 772:	73 00                	jae    774 <__abi_tag+0x4b0>
 774:	00 00                	add    %al,(%rax)
 776:	1c c1                	sbb    $0xc1,%al
 778:	00 00                	add    %al,(%rax)
 77a:	00 02                	add    %al,(%rdx)
 77c:	4a 02 8d 07 00 00 1d 	rex.WX add 0x1d000007(%rbp),%cl
 783:	8e 07                	mov    (%rdi),%es
 785:	00 00                	add    %al,(%rax)
 787:	1d 8e 07 00 00       	sbb    $0x78e,%eax
 78c:	00 1e                	add    %bl,(%rsi)
 78e:	0f 4f 00             	cmovg  (%rax),%eax
 791:	00 00                	add    %al,(%rax)
 793:	07                   	(bad)  
 794:	08 1f                	or     %bl,(%rdi)
 796:	cf                   	iret   
 797:	00 00                	add    %al,(%rax)
 799:	00 02                	add    %al,(%rdx)
 79b:	35 02 1d 8d 07       	xor    $0x78d1d02,%eax
 7a0:	00 00                	add    %al,(%rax)
 7a2:	00 14 6f             	add    %dl,(%rdi,%rbp,2)
 7a5:	03 00                	add    (%rax),%eax
 7a7:	00 15 e2 03 00 00    	add    %dl,0x3e2(%rip)        # b8f <__abi_tag+0x8cb>
 7ad:	08 00                	or     %al,(%rax)
 7af:	14 6f                	adc    $0x6f,%al
 7b1:	03 00                	add    (%rax),%eax
 7b3:	00 15 e2 03 00 00    	add    %dl,0x3e2(%rip)        # b9b <__abi_tag+0x8d7>
 7b9:	10 00                	adc    %al,(%rax)
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
 132:	89 82 01 01 31 13    	mov    %eax,0x13310101(%rdx)
 138:	11 01                	adc    %eax,(%rcx)
 13a:	00 00                	add    %al,(%rax)
 13c:	1b 8a 82 01 00 02    	sbb    0x2000182(%rdx),%ecx
 142:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 148:	1c 2e                	sbb    $0x2e,%al
 14a:	01 03                	add    %eax,(%rbx)
 14c:	0e                   	(bad)  
 14d:	3a 0b                	cmp    (%rbx),%cl
 14f:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491a7c <_end+0x1348da24>
 155:	3c 19                	cmp    $0x19,%al
 157:	3f                   	(bad)  
 158:	19 00                	sbb    %eax,(%rax)
 15a:	00 1d 05 00 49 13    	add    %bl,0x13490005(%rip)        # 13490165 <_end+0x1348c10d>
 160:	00 00                	add    %al,(%rax)
 162:	1e                   	(bad)  
 163:	0f 00 00             	sldt   (%rax)
 166:	00 1f                	add    %bl,(%rdi)
 168:	2e 01 03             	add    %eax,%cs:(%rbx)
 16b:	0e                   	(bad)  
 16c:	3a 0b                	cmp    (%rbx),%cl
 16e:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1a9b <_end+0x193bda43>
 174:	3f                   	(bad)  
 175:	19 00                	sbb    %eax,(%rax)
	...

Déassemblage de la section .debug_line :

0000000000000000 <.debug_line>:
   0:	59                   	pop    %rcx
   1:	05 00 00 04 00       	add    $0x40000,%eax
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
 388:	90                   	nop
 389:	05 07 06 3c 05       	add    $0x53c0607,%eax
 38e:	12 06                	adc    (%rsi),%al
 390:	69 05 0a 06 4a 05 23 	imul   $0x97030623,0x54a060a(%rip),%eax        # 54a09a4 <_end+0x549c94c>
 397:	06 03 97 
 39a:	01 e4                	add    %esp,%esp
 39c:	05 0f 06 82 06       	add    $0x682060f,%eax
 3a1:	f3 05 24 03 ee 7e    	repz add $0x7eee0324,%eax
 3a7:	f2 05 03 06 3c 03    	repnz add $0x33c0603,%eax
 3ad:	6d                   	insl   (%dx),%es:(%rdi)
 3ae:	82                   	(bad)  
 3af:	05 13 06 03 3f       	add    $0x3f030613,%eax
 3b4:	08 2e                	or     %ch,(%rsi)
 3b6:	06                   	(bad)  
 3b7:	03 41 4a             	add    0x4a(%rcx),%eax
 3ba:	05 03 06 03 13       	add    $0x13030603,%eax
 3bf:	58                   	pop    %rax
 3c0:	06                   	(bad)  
 3c1:	03 6d 08             	add    0x8(%rbp),%ebp
 3c4:	f2 03 13             	repnz add (%rbx),%edx
 3c7:	74 05                	je     3ce <__abi_tag+0x10a>
 3c9:	0c 06                	or     $0x6,%al
 3cb:	02 24 14             	add    (%rsp,%rdx,1),%ah
 3ce:	c9                   	leaveq 
 3cf:	ab                   	stos   %eax,%es:(%rdi)
 3d0:	d7                   	xlat   %ds:(%rbx)
 3d1:	b9 d7 b9 d7 05       	mov    $0x5d7b9d7,%ecx
 3d6:	2a b7 05 0c 02 2a    	sub    0x2a020c05(%rdi),%dh
 3dc:	14 c9                	adc    $0xc9,%al
 3de:	05 2a a9 05 03       	add    $0x305a92a,%eax
 3e3:	06                   	(bad)  
 3e4:	90                   	nop
 3e5:	03 6d 58             	add    0x58(%rbp),%ebp
 3e8:	05 0c 06 03 15       	add    $0x1503060c,%eax
 3ed:	08 90 4b 05 2a 47    	or     %dl,0x472a054b(%rax)
 3f3:	05 24 06 4a 05       	add    $0x54a0624,%eax
 3f8:	03 3c 06             	add    (%rsi,%rax,1),%edi
 3fb:	03 0c 2e             	add    (%rsi,%rbp,1),%ecx
 3fe:	06                   	(bad)  
 3ff:	03 61 f2             	add    -0xe(%rcx),%esp
 402:	03 1f                	add    (%rdi),%ebx
 404:	82                   	(bad)  
 405:	05 0a 06 08 67       	add    $0x6708060a,%eax
 40a:	05 0f 06 c8 05       	add    $0x5c8060f,%eax
 40f:	07                   	(bad)  
 410:	ac                   	lods   %ds:(%rsi),%al
 411:	05 0a 4a 05 0f       	add    $0xf054a0a,%eax
 416:	74 05                	je     41d <__abi_tag+0x159>
 418:	07                   	(bad)  
 419:	66 05 0a 4a          	add    $0x4a0a,%ax
 41d:	05 0f 74 05 07       	add    $0x705740f,%eax
 422:	66 05 29 06          	add    $0x629,%ax
 426:	81 05 03 06 4a 05 0a 	addl   $0x9108060a,0x54a0603(%rip)        # 54a0a33 <_end+0x549c9db>
 42d:	06 08 91 
 430:	05 0f 06 58 05       	add    $0x558060f,%eax
 435:	07                   	(bad)  
 436:	58                   	pop    %rax
 437:	05 03 06 49 05       	add    $0x5490603,%eax
 43c:	07                   	(bad)  
 43d:	03 0c 90             	add    (%rax,%rdx,4),%ecx
 440:	06                   	(bad)  
 441:	03 55 66             	add    0x66(%rbp),%edx
 444:	05 0c 06 03 3b       	add    $0x3b03060c,%eax
 449:	08 2e                	or     %ch,(%rsi)
 44b:	05 13 06 66 05       	add    $0x5660613,%eax
 450:	11 58 05             	adc    %ebx,0x5(%rax)
 453:	09 4a 05             	or     %ecx,0x5(%rdx)
 456:	2f                   	(bad)  
 457:	06                   	(bad)  
 458:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 45e:	07                   	(bad)  
 45f:	3c 05                	cmp    $0x5,%al
 461:	13 06                	adc    (%rsi),%eax
 463:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 464:	06                   	(bad)  
 465:	03 41 4a             	add    0x4a(%rcx),%eax
 468:	05 28 06 03 2f       	add    $0x2f030628,%eax
 46d:	2e 05 07 06 ac 03    	cs add $0x3ac0607,%eax
 473:	51                   	push   %rcx
 474:	2e 05 0c 06 03 31    	cs add $0x3103060c,%eax
 47a:	90                   	nop
 47b:	05 13 06 66 05       	add    $0x5660613,%eax
 480:	11 58 05             	adc    %ebx,0x5(%rax)
 483:	09 4a 05             	or     %ecx,0x5(%rdx)
 486:	31 06                	xor    %eax,(%rsi)
 488:	48 05 28 06 4a 05    	add    $0x54a0628,%rax
 48e:	07                   	(bad)  
 48f:	3c 05                	cmp    $0x5,%al
 491:	13 06                	adc    (%rsi),%eax
 493:	34 05                	xor    $0x5,%al
 495:	1c 06                	sbb    $0x6,%al
 497:	ba 05 23 74 05       	mov    $0x5742305,%edx
 49c:	1a 74 05 24          	sbb    0x24(%rbp,%rax,1),%dh
 4a0:	06                   	(bad)  
 4a1:	03 5e 4a             	add    0x4a(%rsi),%ebx
 4a4:	06                   	(bad)  
 4a5:	03 6d 3c             	add    0x3c(%rbp),%ebp
 4a8:	05 03 06 03 c9       	add    $0xc9030603,%eax
 4ad:	00 f2                	add    %dh,%dl
 4af:	06                   	(bad)  
 4b0:	03 b7 7f 66 05 14    	add    0x1405667f(%rdi),%esi
 4b6:	06                   	(bad)  
 4b7:	03 cb                	add    %ebx,%ecx
 4b9:	00 c8                	add    %cl,%al
 4bb:	05 18 67 05 14       	add    $0x14056718,%eax
 4c0:	73 05                	jae    4c7 <__abi_tag+0x203>
 4c2:	18 bb 05 14 65 05    	sbb    %bh,0x5651405(%rbx)
 4c8:	0c 06                	or     $0x6,%al
 4ca:	9e                   	sahf   
 4cb:	05 18 06 4b 05       	add    $0x54b0618,%eax
 4d0:	0c 06                	or     $0x6,%al
 4d2:	08 12                	or     %dl,(%rdx)
 4d4:	05 2b 06 47 05       	add    $0x547062b,%eax
 4d9:	24 06                	and    $0x6,%al
 4db:	4a 05 03 3c 05 07    	rex.WX add $0x7053c03,%rax
 4e1:	06                   	(bad)  
 4e2:	36 05 09 06 82 05    	ss add $0x5820609,%eax
 4e8:	07                   	(bad)  
 4e9:	4a 05 2e 06 32 05    	rex.WX add $0x532062e,%rax
 4ef:	07                   	(bad)  
 4f0:	06                   	(bad)  
 4f1:	4a 05 0c 06 2f 05    	rex.WX add $0x52f060c,%rax
 4f7:	11 06                	adc    %eax,(%rsi)
 4f9:	d6                   	(bad)  
 4fa:	05 09 74 05 11       	add    $0x11057409,%eax
 4ff:	4a 05 09 74 05 0c    	rex.WX add $0xc057409,%rax
 505:	4a 05 11 74 05 09    	rex.WX add $0x9057411,%rax
 50b:	74 03                	je     510 <__abi_tag+0x24c>
 50d:	aa                   	stos   %al,%es:(%rdi)
 50e:	7f 4a                	jg     55a <__abi_tag+0x296>
 510:	05 0a 06 03 c6       	add    $0xc603060a,%eax
 515:	00 66 05             	add    %ah,0x5(%rsi)
 518:	0f 03 13             	lsl    (%rbx),%edx
 51b:	4a 05 16 06 4a 05    	rex.WX add $0x54a0616,%rax
 521:	1d 4a 03 a7 7f       	sbb    $0x7fa7034a,%eax
 526:	82                   	(bad)  
 527:	05 13 06 03 ae       	add    $0xae030613,%eax
 52c:	01 66 06             	add    %esp,0x6(%rsi)
 52f:	03 d2                	add    %edx,%edx
 531:	7e d6                	jle    509 <__abi_tag+0x245>
 533:	05 14 06 03 af       	add    $0xaf030614,%eax
 538:	01 66 06             	add    %esp,0x6(%rsi)
 53b:	03 d1                	add    %ecx,%edx
 53d:	7e d6                	jle    515 <__abi_tag+0x251>
 53f:	05 03 06 03 b2       	add    $0xb2030603,%eax
 544:	01 66 08             	add    %esp,0x8(%rsi)
 547:	3d 08 2f 08 2f       	cmp    $0x2f082f08,%eax
 54c:	08 3d 08 3f 83 84    	or     %bh,-0x7b7cc0f8(%rip)        # ffffffff8483445a <_end+0xffffffff84830402>
 552:	05 05 03 cf 7e       	add    $0x7ecf0305,%eax
 557:	ba 02 0a 00 01       	mov    $0x1000a02,%edx
 55c:	01                   	.byte 0x1

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
 7ab:	76 05                	jbe    7b2 <__abi_tag+0x4ee>
 7ad:	00 00                	add    %al,(%rax)
 7af:	00 00                	add    %al,(%rax)
 7b1:	00 00                	add    %al,(%rax)
 7b3:	01 00                	add    %eax,(%rax)
 7b5:	55                   	push   %rbp
 7b6:	76 05                	jbe    7bd <__abi_tag+0x4f9>
 7b8:	00 00                	add    %al,(%rax)
 7ba:	00 00                	add    %al,(%rax)
 7bc:	00 00                	add    %al,(%rax)
 7be:	bb 09 00 00 00       	mov    $0x9,%ebx
 7c3:	00 00                	add    %al,(%rax)
 7c5:	00 04 00             	add    %al,(%rax,%rax,1)
 7c8:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
 7cc:	bb 09 00 00 00       	mov    $0x9,%ebx
 7d1:	00 00                	add    %al,(%rax)
 7d3:	00 c0                	add    %al,%al
 7d5:	09 00                	or     %eax,(%rax)
 7d7:	00 00                	add    %al,(%rax)
 7d9:	00 00                	add    %al,(%rax)
 7db:	00 01                	add    %al,(%rcx)
 7dd:	00 55 c0             	add    %dl,-0x40(%rbp)
 7e0:	09 00                	or     %eax,(%rax)
 7e2:	00 00                	add    %al,(%rax)
 7e4:	00 00                	add    %al,(%rax)
 7e6:	00 c5                	add    %al,%ch
 7e8:	09 00                	or     %eax,(%rax)
 7ea:	00 00                	add    %al,(%rax)
 7ec:	00 00                	add    %al,(%rax)
 7ee:	00 04 00             	add    %al,(%rax,%rax,1)
 7f1:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
 805:	60                   	(bad)  
 806:	05 00 00 00 00       	add    $0x0,%eax
 80b:	00 00                	add    %al,(%rax)
 80d:	78 05                	js     814 <__abi_tag+0x550>
 80f:	00 00                	add    %al,(%rax)
 811:	00 00                	add    %al,(%rax)
 813:	00 00                	add    %al,(%rax)
 815:	01 00                	add    %eax,(%rax)
 817:	54                   	push   %rsp
 818:	78 05                	js     81f <__abi_tag+0x55b>
 81a:	00 00                	add    %al,(%rax)
 81c:	00 00                	add    %al,(%rax)
 81e:	00 00                	add    %al,(%rax)
 820:	bb 09 00 00 00       	mov    $0x9,%ebx
 825:	00 00                	add    %al,(%rax)
 827:	00 04 00             	add    %al,(%rax,%rax,1)
 82a:	f3 01 54 9f bb       	repz add %edx,-0x45(%rdi,%rbx,4)
 82f:	09 00                	or     %eax,(%rax)
 831:	00 00                	add    %al,(%rax)
 833:	00 00                	add    %al,(%rax)
 835:	00 c5                	add    %al,%ch
 837:	09 00                	or     %eax,(%rax)
 839:	00 00                	add    %al,(%rax)
 83b:	00 00                	add    %al,(%rax)
 83d:	00 01                	add    %al,(%rcx)
 83f:	00 54 c5 09          	add    %dl,0x9(%rbp,%rax,8)
 843:	00 00                	add    %al,(%rax)
 845:	00 00                	add    %al,(%rax)
 847:	00 00                	add    %al,(%rax)
 849:	c5 09 00             	(bad)
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
 86f:	76 05                	jbe    876 <__abi_tag+0x5b2>
 871:	00 00                	add    %al,(%rax)
 873:	00 00                	add    %al,(%rax)
 875:	00 00                	add    %al,(%rax)
 877:	01 00                	add    %eax,(%rax)
 879:	55                   	push   %rbp
 87a:	bb 09 00 00 00       	mov    $0x9,%ebx
 87f:	00 00                	add    %al,(%rax)
 881:	00 c0                	add    %al,%al
 883:	09 00                	or     %eax,(%rax)
 885:	00 00                	add    %al,(%rax)
 887:	00 00                	add    %al,(%rax)
 889:	00 01                	add    %al,(%rcx)
 88b:	00 55 00             	add    %dl,0x0(%rbp)
	...
 89a:	00 00                	add    %al,(%rax)
 89c:	00 60 05             	add    %ah,0x5(%rax)
 89f:	00 00                	add    %al,(%rax)
 8a1:	00 00                	add    %al,(%rax)
 8a3:	00 00                	add    %al,(%rax)
 8a5:	78 05                	js     8ac <__abi_tag+0x5e8>
 8a7:	00 00                	add    %al,(%rax)
 8a9:	00 00                	add    %al,(%rax)
 8ab:	00 00                	add    %al,(%rax)
 8ad:	01 00                	add    %eax,(%rax)
 8af:	54                   	push   %rsp
 8b0:	bb 09 00 00 00       	mov    $0x9,%ebx
 8b5:	00 00                	add    %al,(%rax)
 8b7:	00 c5                	add    %al,%ch
 8b9:	09 00                	or     %eax,(%rax)
 8bb:	00 00                	add    %al,(%rax)
 8bd:	00 00                	add    %al,(%rax)
 8bf:	00 01                	add    %al,(%rcx)
 8c1:	00 54 00 00          	add    %dl,0x0(%rax,%rax,1)
	...
 8d1:	00 00                	add    %al,(%rax)
 8d3:	85 05 00 00 00 00    	test   %eax,0x0(%rip)        # 8d9 <__abi_tag+0x615>
 8d9:	00 00                	add    %al,(%rax)
 8db:	ba 09 00 00 00       	mov    $0x9,%edx
 8e0:	00 00                	add    %al,(%rax)
 8e2:	00 01                	add    %al,(%rcx)
 8e4:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 8f3:	00 00                	add    %al,(%rax)
 8f5:	00 9d 05 00 00 00    	add    %bl,0x5(%rbp)
 8fb:	00 00                	add    %al,(%rax)
 8fd:	00 b8 09 00 00 00    	add    %bh,0x9(%rax)
 903:	00 00                	add    %al,(%rax)
 905:	00 01                	add    %al,(%rcx)
 907:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 916:	00 00                	add    %al,(%rax)
 918:	00 ad 05 00 00 00    	add    %ch,0x5(%rbp)
 91e:	00 00                	add    %al,(%rax)
 920:	00 bf 05 00 00 00    	add    %bh,0x5(%rdi)
 926:	00 00                	add    %al,(%rax)
 928:	00 02                	add    %al,(%rdx)
 92a:	00 30                	add    %dh,(%rax)
 92c:	9f                   	lahf   
 92d:	d4                   	(bad)  
 92e:	05 00 00 00 00       	add    $0x0,%eax
 933:	00 00                	add    %al,(%rax)
 935:	ea                   	(bad)  
 936:	06                   	(bad)  
 937:	00 00                	add    %al,(%rax)
 939:	00 00                	add    %al,(%rax)
 93b:	00 00                	add    %al,(%rax)
 93d:	02 00                	add    (%rax),%al
 93f:	30 9f ea 06 00 00    	xor    %bl,0x6ea(%rdi)
 945:	00 00                	add    %al,(%rax)
 947:	00 00                	add    %al,(%rax)
 949:	01 07                	add    %eax,(%rdi)
 94b:	00 00                	add    %al,(%rax)
 94d:	00 00                	add    %al,(%rax)
 94f:	00 00                	add    %al,(%rax)
 951:	01 00                	add    %eax,(%rax)
 953:	50                   	push   %rax
	...
 964:	ad                   	lods   %ds:(%rsi),%eax
 965:	05 00 00 00 00       	add    $0x0,%eax
 96a:	00 00                	add    %al,(%rax)
 96c:	bf 05 00 00 00       	mov    $0x5,%edi
 971:	00 00                	add    %al,(%rax)
 973:	00 01                	add    %al,(%rcx)
 975:	00 53 d4             	add    %dl,-0x2c(%rbx)
 978:	05 00 00 00 00       	add    $0x0,%eax
 97d:	00 00                	add    %al,(%rax)
 97f:	01 07                	add    %eax,(%rdi)
 981:	00 00                	add    %al,(%rax)
 983:	00 00                	add    %al,(%rax)
 985:	00 00                	add    %al,(%rax)
 987:	01 00                	add    %eax,(%rax)
 989:	53                   	push   %rbx
	...
 99a:	ad                   	lods   %ds:(%rsi),%eax
 99b:	05 00 00 00 00       	add    $0x0,%eax
 9a0:	00 00                	add    %al,(%rax)
 9a2:	b6 09                	mov    $0x9,%dh
 9a4:	00 00                	add    %al,(%rax)
 9a6:	00 00                	add    %al,(%rax)
 9a8:	00 00                	add    %al,(%rax)
 9aa:	01 00                	add    %eax,(%rax)
 9ac:	53                   	push   %rbx
	...
 9bd:	ad                   	lods   %ds:(%rsi),%eax
 9be:	05 00 00 00 00       	add    $0x0,%eax
 9c3:	00 00                	add    %al,(%rax)
 9c5:	bf 05 00 00 00       	mov    $0x5,%edi
 9ca:	00 00                	add    %al,(%rax)
 9cc:	00 01                	add    %al,(%rcx)
 9ce:	00 5e d4             	add    %bl,-0x2c(%rsi)
 9d1:	05 00 00 00 00       	add    $0x0,%eax
 9d6:	00 00                	add    %al,(%rax)
 9d8:	01 07                	add    %eax,(%rdi)
 9da:	00 00                	add    %al,(%rax)
 9dc:	00 00                	add    %al,(%rax)
 9de:	00 00                	add    %al,(%rax)
 9e0:	01 00                	add    %eax,(%rax)
 9e2:	5e                   	pop    %rsi
	...
 9f3:	ad                   	lods   %ds:(%rsi),%eax
 9f4:	05 00 00 00 00       	add    $0x0,%eax
 9f9:	00 00                	add    %al,(%rax)
 9fb:	bf 05 00 00 00       	mov    $0x5,%edi
 a00:	00 00                	add    %al,(%rax)
 a02:	00 01                	add    %al,(%rcx)
 a04:	00 5f d4             	add    %bl,-0x2c(%rdi)
 a07:	05 00 00 00 00       	add    $0x0,%eax
 a0c:	00 00                	add    %al,(%rax)
 a0e:	01 07                	add    %eax,(%rdi)
 a10:	00 00                	add    %al,(%rax)
 a12:	00 00                	add    %al,(%rax)
 a14:	00 00                	add    %al,(%rax)
 a16:	01 00                	add    %eax,(%rax)
 a18:	5f                   	pop    %rdi
	...
 a29:	cb                   	lret   
 a2a:	05 00 00 00 00       	add    $0x0,%eax
 a2f:	00 00                	add    %al,(%rax)
 a31:	cf                   	iret   
 a32:	05 00 00 00 00       	add    $0x0,%eax
 a37:	00 00                	add    %al,(%rax)
 a39:	06                   	(bad)  
 a3a:	00 67 93             	add    %ah,-0x6d(%rdi)
 a3d:	08 61 93             	or     %ah,-0x6d(%rcx)
 a40:	08 cf                	or     %cl,%bh
 a42:	05 00 00 00 00       	add    $0x0,%eax
 a47:	00 00                	add    %al,(%rax)
 a49:	d4                   	(bad)  
 a4a:	05 00 00 00 00       	add    $0x0,%eax
 a4f:	00 00                	add    %al,(%rax)
 a51:	05 00 93 08 61       	add    $0x61089300,%eax
 a56:	93                   	xchg   %eax,%ebx
 a57:	08 a7 07 00 00 00    	or     %ah,0x7(%rdi)
 a5d:	00 00                	add    %al,(%rax)
 a5f:	00 b3 07 00 00 00    	add    %dh,0x7(%rbx)
 a65:	00 00                	add    %al,(%rax)
 a67:	00 08                	add    %cl,(%rax)
 a69:	00 30                	add    %dh,(%rax)
 a6b:	9f                   	lahf   
 a6c:	93                   	xchg   %eax,%ebx
 a6d:	08 30                	or     %dh,(%rax)
 a6f:	9f                   	lahf   
 a70:	93                   	xchg   %eax,%ebx
 a71:	08 e4                	or     %ah,%ah
 a73:	07                   	(bad)  
 a74:	00 00                	add    %al,(%rax)
 a76:	00 00                	add    %al,(%rax)
 a78:	00 00                	add    %al,(%rax)
 a7a:	e8 07 00 00 00       	callq  a86 <__abi_tag+0x7c2>
 a7f:	00 00                	add    %al,(%rax)
 a81:	00 06                	add    %al,(%rsi)
 a83:	00 67 93             	add    %ah,-0x6d(%rdi)
 a86:	08 61 93             	or     %ah,-0x6d(%rcx)
 a89:	08 e8                	or     %ch,%al
 a8b:	07                   	(bad)  
 a8c:	00 00                	add    %al,(%rax)
 a8e:	00 00                	add    %al,(%rax)
 a90:	00 00                	add    %al,(%rax)
 a92:	ea                   	(bad)  
 a93:	07                   	(bad)  
 a94:	00 00                	add    %al,(%rax)
 a96:	00 00                	add    %al,(%rax)
 a98:	00 00                	add    %al,(%rax)
 a9a:	05 00 93 08 61       	add    $0x61089300,%eax
 a9f:	93                   	xchg   %eax,%ebx
 aa0:	08 ea                	or     %ch,%dl
 aa2:	07                   	(bad)  
 aa3:	00 00                	add    %al,(%rax)
 aa5:	00 00                	add    %al,(%rax)
 aa7:	00 00                	add    %al,(%rax)
 aa9:	f9                   	stc    
 aaa:	07                   	(bad)  
 aab:	00 00                	add    %al,(%rax)
 aad:	00 00                	add    %al,(%rax)
 aaf:	00 00                	add    %al,(%rax)
 ab1:	08 00                	or     %al,(%rax)
 ab3:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
 ab9:	93                   	xchg   %eax,%ebx
 aba:	08 00                	or     %al,(%rax)
	...
 ac8:	00 00                	add    %al,(%rax)
 aca:	00 26                	add    %ah,(%rsi)
 acc:	07                   	(bad)  
 acd:	00 00                	add    %al,(%rax)
 acf:	00 00                	add    %al,(%rax)
 ad1:	00 00                	add    %al,(%rax)
 ad3:	36 07                	ss (bad) 
 ad5:	00 00                	add    %al,(%rax)
 ad7:	00 00                	add    %al,(%rax)
 ad9:	00 00                	add    %al,(%rax)
 adb:	01 00                	add    %eax,(%rax)
 add:	52                   	push   %rdx
 ade:	36 07                	ss (bad) 
 ae0:	00 00                	add    %al,(%rax)
 ae2:	00 00                	add    %al,(%rax)
 ae4:	00 00                	add    %al,(%rax)
 ae6:	5d                   	pop    %rbp
 ae7:	07                   	(bad)  
 ae8:	00 00                	add    %al,(%rax)
 aea:	00 00                	add    %al,(%rax)
 aec:	00 00                	add    %al,(%rax)
 aee:	05 00 72 00 31       	add    $0x31007200,%eax
 af3:	21 9f 5d 07 00 00    	and    %ebx,0x75d(%rdi)
 af9:	00 00                	add    %al,(%rax)
 afb:	00 00                	add    %al,(%rax)
 afd:	6e                   	outsb  %ds:(%rsi),(%dx)
 afe:	07                   	(bad)  
 aff:	00 00                	add    %al,(%rax)
 b01:	00 00                	add    %al,(%rax)
 b03:	00 00                	add    %al,(%rax)
 b05:	05 00 72 00 32       	add    $0x32007200,%eax
 b0a:	21 9f 6e 07 00 00    	and    %ebx,0x76e(%rdi)
 b10:	00 00                	add    %al,(%rax)
 b12:	00 00                	add    %al,(%rax)
 b14:	76 07                	jbe    b1d <__abi_tag+0x859>
 b16:	00 00                	add    %al,(%rax)
 b18:	00 00                	add    %al,(%rax)
 b1a:	00 00                	add    %al,(%rax)
 b1c:	05 00 72 00 33       	add    $0x33007200,%eax
 b21:	21 9f 76 07 00 00    	and    %ebx,0x776(%rdi)
 b27:	00 00                	add    %al,(%rax)
 b29:	00 00                	add    %al,(%rax)
 b2b:	7b 07                	jnp    b34 <__abi_tag+0x870>
 b2d:	00 00                	add    %al,(%rax)
 b2f:	00 00                	add    %al,(%rax)
 b31:	00 00                	add    %al,(%rax)
 b33:	01 00                	add    %eax,(%rax)
 b35:	52                   	push   %rdx
	...
 b46:	26 07                	es (bad) 
 b48:	00 00                	add    %al,(%rax)
 b4a:	00 00                	add    %al,(%rax)
 b4c:	00 00                	add    %al,(%rax)
 b4e:	4c 07                	rex.WR (bad) 
 b50:	00 00                	add    %al,(%rax)
 b52:	00 00                	add    %al,(%rax)
 b54:	00 00                	add    %al,(%rax)
 b56:	01 00                	add    %eax,(%rax)
 b58:	66 4c 07             	data16 rex.WR (bad) 
 b5b:	00 00                	add    %al,(%rax)
 b5d:	00 00                	add    %al,(%rax)
 b5f:	00 00                	add    %al,(%rax)
 b61:	5d                   	pop    %rbp
 b62:	07                   	(bad)  
 b63:	00 00                	add    %al,(%rax)
 b65:	00 00                	add    %al,(%rax)
 b67:	00 00                	add    %al,(%rax)
 b69:	01 00                	add    %eax,(%rax)
 b6b:	61                   	(bad)  
 b6c:	5d                   	pop    %rbp
 b6d:	07                   	(bad)  
 b6e:	00 00                	add    %al,(%rax)
 b70:	00 00                	add    %al,(%rax)
 b72:	00 00                	add    %al,(%rax)
 b74:	6e                   	outsb  %ds:(%rsi),(%dx)
 b75:	07                   	(bad)  
 b76:	00 00                	add    %al,(%rax)
 b78:	00 00                	add    %al,(%rax)
 b7a:	00 00                	add    %al,(%rax)
 b7c:	01 00                	add    %eax,(%rax)
 b7e:	62                   	(bad)  
 b7f:	6e                   	outsb  %ds:(%rsi),(%dx)
 b80:	07                   	(bad)  
 b81:	00 00                	add    %al,(%rax)
 b83:	00 00                	add    %al,(%rax)
 b85:	00 00                	add    %al,(%rax)
 b87:	72 07                	jb     b90 <__abi_tag+0x8cc>
 b89:	00 00                	add    %al,(%rax)
 b8b:	00 00                	add    %al,(%rax)
 b8d:	00 00                	add    %al,(%rax)
 b8f:	01 00                	add    %eax,(%rax)
 b91:	63 72 07             	movsxd 0x7(%rdx),%esi
 b94:	00 00                	add    %al,(%rax)
 b96:	00 00                	add    %al,(%rax)
 b98:	00 00                	add    %al,(%rax)
 b9a:	7b 07                	jnp    ba3 <__abi_tag+0x8df>
 b9c:	00 00                	add    %al,(%rax)
 b9e:	00 00                	add    %al,(%rax)
 ba0:	00 00                	add    %al,(%rax)
 ba2:	01 00                	add    %eax,(%rax)
 ba4:	66 8a 07             	data16 mov (%rdi),%al
 ba7:	00 00                	add    %al,(%rax)
 ba9:	00 00                	add    %al,(%rax)
 bab:	00 00                	add    %al,(%rax)
 bad:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 bae:	07                   	(bad)  
 baf:	00 00                	add    %al,(%rax)
 bb1:	00 00                	add    %al,(%rax)
 bb3:	00 00                	add    %al,(%rax)
 bb5:	01 00                	add    %eax,(%rax)
 bb7:	66 00 00             	data16 add %al,(%rax)
	...
 bc6:	00 00                	add    %al,(%rax)
 bc8:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 bc9:	07                   	(bad)  
 bca:	00 00                	add    %al,(%rax)
 bcc:	00 00                	add    %al,(%rax)
 bce:	00 00                	add    %al,(%rax)
 bd0:	3a 08                	cmp    (%rax),%cl
 bd2:	00 00                	add    %al,(%rax)
 bd4:	00 00                	add    %al,(%rax)
 bd6:	00 00                	add    %al,(%rax)
 bd8:	01 00                	add    %eax,(%rax)
 bda:	66 00 00             	data16 add %al,(%rax)
	...
 be9:	00 00                	add    %al,(%rax)
 beb:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 bec:	07                   	(bad)  
 bed:	00 00                	add    %al,(%rax)
 bef:	00 00                	add    %al,(%rax)
 bf1:	00 00                	add    %al,(%rax)
 bf3:	3a 08                	cmp    (%rax),%cl
 bf5:	00 00                	add    %al,(%rax)
 bf7:	00 00                	add    %al,(%rax)
 bf9:	00 00                	add    %al,(%rax)
 bfb:	01 00                	add    %eax,(%rax)
 bfd:	5e                   	pop    %rsi
	...
 c0e:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 c0f:	07                   	(bad)  
 c10:	00 00                	add    %al,(%rax)
 c12:	00 00                	add    %al,(%rax)
 c14:	00 00                	add    %al,(%rax)
 c16:	3a 08                	cmp    (%rax),%cl
 c18:	00 00                	add    %al,(%rax)
 c1a:	00 00                	add    %al,(%rax)
 c1c:	00 00                	add    %al,(%rax)
 c1e:	01 00                	add    %eax,(%rax)
 c20:	53                   	push   %rbx
	...
 c31:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 c32:	07                   	(bad)  
 c33:	00 00                	add    %al,(%rax)
 c35:	00 00                	add    %al,(%rax)
 c37:	00 00                	add    %al,(%rax)
 c39:	3a 08                	cmp    (%rax),%cl
 c3b:	00 00                	add    %al,(%rax)
 c3d:	00 00                	add    %al,(%rax)
 c3f:	00 00                	add    %al,(%rax)
 c41:	01 00                	add    %eax,(%rax)
 c43:	5f                   	pop    %rdi
	...
 c54:	b3 07                	mov    $0x7,%bl
 c56:	00 00                	add    %al,(%rax)
 c58:	00 00                	add    %al,(%rax)
 c5a:	00 00                	add    %al,(%rax)
 c5c:	ea                   	(bad)  
 c5d:	07                   	(bad)  
 c5e:	00 00                	add    %al,(%rax)
 c60:	00 00                	add    %al,(%rax)
 c62:	00 00                	add    %al,(%rax)
 c64:	01 00                	add    %eax,(%rax)
 c66:	50                   	push   %rax
	...
 c77:	ea                   	(bad)  
 c78:	07                   	(bad)  
 c79:	00 00                	add    %al,(%rax)
 c7b:	00 00                	add    %al,(%rax)
 c7d:	00 00                	add    %al,(%rax)
 c7f:	f9                   	stc    
 c80:	07                   	(bad)  
 c81:	00 00                	add    %al,(%rax)
 c83:	00 00                	add    %al,(%rax)
 c85:	00 00                	add    %al,(%rax)
 c87:	02 00                	add    (%rax),%al
 c89:	30 9f f9 07 00 00    	xor    %bl,0x7f9(%rdi)
 c8f:	00 00                	add    %al,(%rax)
 c91:	00 00                	add    %al,(%rax)
 c93:	1c 08                	sbb    $0x8,%al
 c95:	00 00                	add    %al,(%rax)
 c97:	00 00                	add    %al,(%rax)
 c99:	00 00                	add    %al,(%rax)
 c9b:	01 00                	add    %eax,(%rax)
 c9d:	52                   	push   %rdx
	...
 cae:	f5                   	cmc    
 caf:	07                   	(bad)  
 cb0:	00 00                	add    %al,(%rax)
 cb2:	00 00                	add    %al,(%rax)
 cb4:	00 00                	add    %al,(%rax)
 cb6:	3a 08                	cmp    (%rax),%cl
 cb8:	00 00                	add    %al,(%rax)
 cba:	00 00                	add    %al,(%rax)
 cbc:	00 00                	add    %al,(%rax)
 cbe:	01 00                	add    %eax,(%rax)
 cc0:	50                   	push   %rax
	...
 cd1:	3d 08 00 00 00       	cmp    $0x8,%eax
 cd6:	00 00                	add    %al,(%rax)
 cd8:	00 49 08             	add    %cl,0x8(%rcx)
 cdb:	00 00                	add    %al,(%rax)
 cdd:	00 00                	add    %al,(%rax)
 cdf:	00 00                	add    %al,(%rax)
 ce1:	01 00                	add    %eax,(%rax)
 ce3:	67 49 08 00          	rex.WB or %al,(%r8d)
 ce7:	00 00                	add    %al,(%rax)
 ce9:	00 00                	add    %al,(%rax)
 ceb:	00 5d 09             	add    %bl,0x9(%rbp)
 cee:	00 00                	add    %al,(%rax)
 cf0:	00 00                	add    %al,(%rax)
 cf2:	00 00                	add    %al,(%rax)
 cf4:	02 00                	add    (%rax),%al
 cf6:	77 30                	ja     d28 <__abi_tag+0xa64>
 cf8:	5d                   	pop    %rbp
 cf9:	09 00                	or     %eax,(%rax)
 cfb:	00 00                	add    %al,(%rax)
 cfd:	00 00                	add    %al,(%rax)
 cff:	00 64 09 00          	add    %ah,0x0(%rcx,%rcx,1)
 d03:	00 00                	add    %al,(%rax)
 d05:	00 00                	add    %al,(%rax)
 d07:	00 01                	add    %al,(%rcx)
 d09:	00 61 00             	add    %ah,0x0(%rcx)
	...
 d18:	00 00                	add    %al,(%rax)
 d1a:	00 49 08             	add    %cl,0x8(%rcx)
 d1d:	00 00                	add    %al,(%rax)
 d1f:	00 00                	add    %al,(%rax)
 d21:	00 00                	add    %al,(%rax)
 d23:	59                   	pop    %rcx
 d24:	08 00                	or     %al,(%rax)
 d26:	00 00                	add    %al,(%rax)
 d28:	00 00                	add    %al,(%rax)
 d2a:	00 02                	add    %al,(%rdx)
 d2c:	00 30                	add    %dh,(%rax)
 d2e:	9f                   	lahf   
 d2f:	59                   	pop    %rcx
 d30:	08 00                	or     %al,(%rax)
 d32:	00 00                	add    %al,(%rax)
 d34:	00 00                	add    %al,(%rax)
 d36:	00 ab 08 00 00 00    	add    %ch,0x8(%rbx)
 d3c:	00 00                	add    %al,(%rax)
 d3e:	00 01                	add    %al,(%rcx)
 d40:	00 50 00             	add    %dl,0x0(%rax)
	...
 d4f:	00 00                	add    %al,(%rax)
 d51:	00 49 08             	add    %cl,0x8(%rcx)
 d54:	00 00                	add    %al,(%rax)
 d56:	00 00                	add    %al,(%rax)
 d58:	00 00                	add    %al,(%rax)
 d5a:	59                   	pop    %rcx
 d5b:	08 00                	or     %al,(%rax)
 d5d:	00 00                	add    %al,(%rax)
 d5f:	00 00                	add    %al,(%rax)
 d61:	00 10                	add    %dl,(%rax)
 d63:	00 30                	add    %dh,(%rax)
 d65:	9f                   	lahf   
 d66:	93                   	xchg   %eax,%ebx
 d67:	08 30                	or     %dh,(%rax)
 d69:	9f                   	lahf   
 d6a:	93                   	xchg   %eax,%ebx
 d6b:	08 30                	or     %dh,(%rax)
 d6d:	9f                   	lahf   
 d6e:	93                   	xchg   %eax,%ebx
 d6f:	08 30                	or     %dh,(%rax)
 d71:	9f                   	lahf   
 d72:	93                   	xchg   %eax,%ebx
 d73:	08 d8                	or     %bl,%al
 d75:	08 00                	or     %al,(%rax)
 d77:	00 00                	add    %al,(%rax)
 d79:	00 00                	add    %al,(%rax)
 d7b:	00 e3                	add    %ah,%bl
 d7d:	08 00                	or     %al,(%rax)
 d7f:	00 00                	add    %al,(%rax)
 d81:	00 00                	add    %al,(%rax)
 d83:	00 03                	add    %al,(%rbx)
 d85:	00 63 93             	add    %ah,-0x6d(%rbx)
 d88:	08 e3                	or     %ah,%bl
 d8a:	08 00                	or     %al,(%rax)
 d8c:	00 00                	add    %al,(%rax)
 d8e:	00 00                	add    %al,(%rax)
 d90:	00 f5                	add    %dh,%ch
 d92:	08 00                	or     %al,(%rax)
 d94:	00 00                	add    %al,(%rax)
 d96:	00 00                	add    %al,(%rax)
 d98:	00 03                	add    %al,(%rbx)
 d9a:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
 d9e:	f5                   	cmc    
 d9f:	08 00                	or     %al,(%rax)
 da1:	00 00                	add    %al,(%rax)
 da3:	00 00                	add    %al,(%rax)
 da5:	00 f7                	add    %dh,%bh
 da7:	08 00                	or     %al,(%rax)
 da9:	00 00                	add    %al,(%rax)
 dab:	00 00                	add    %al,(%rax)
 dad:	00 03                	add    %al,(%rbx)
 daf:	00 61 93             	add    %ah,-0x6d(%rcx)
 db2:	08 f7                	or     %dh,%bh
 db4:	08 00                	or     %al,(%rax)
 db6:	00 00                	add    %al,(%rax)
 db8:	00 00                	add    %al,(%rax)
 dba:	00 ff                	add    %bh,%bh
 dbc:	08 00                	or     %al,(%rax)
 dbe:	00 00                	add    %al,(%rax)
 dc0:	00 00                	add    %al,(%rax)
 dc2:	00 10                	add    %dl,(%rax)
 dc4:	00 30                	add    %dh,(%rax)
 dc6:	9f                   	lahf   
 dc7:	93                   	xchg   %eax,%ebx
 dc8:	08 30                	or     %dh,(%rax)
 dca:	9f                   	lahf   
 dcb:	93                   	xchg   %eax,%ebx
 dcc:	08 30                	or     %dh,(%rax)
 dce:	9f                   	lahf   
 dcf:	93                   	xchg   %eax,%ebx
 dd0:	08 30                	or     %dh,(%rax)
 dd2:	9f                   	lahf   
 dd3:	93                   	xchg   %eax,%ebx
 dd4:	08 ff                	or     %bh,%bh
 dd6:	08 00                	or     %al,(%rax)
 dd8:	00 00                	add    %al,(%rax)
 dda:	00 00                	add    %al,(%rax)
 ddc:	00 03                	add    %al,(%rbx)
 dde:	09 00                	or     %eax,(%rax)
 de0:	00 00                	add    %al,(%rax)
 de2:	00 00                	add    %al,(%rax)
 de4:	00 03                	add    %al,(%rbx)
 de6:	00 61 93             	add    %ah,-0x6d(%rcx)
 de9:	08 00                	or     %al,(%rax)
	...
 df7:	00 00                	add    %al,(%rax)
 df9:	00 49 08             	add    %cl,0x8(%rcx)
 dfc:	00 00                	add    %al,(%rax)
 dfe:	00 00                	add    %al,(%rax)
 e00:	00 00                	add    %al,(%rax)
 e02:	ba 09 00 00 00       	mov    $0x9,%edx
 e07:	00 00                	add    %al,(%rax)
 e09:	00 01                	add    %al,(%rcx)
 e0b:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 e1a:	00 00                	add    %al,(%rax)
 e1c:	00 49 08             	add    %cl,0x8(%rcx)
 e1f:	00 00                	add    %al,(%rax)
 e21:	00 00                	add    %al,(%rax)
 e23:	00 00                	add    %al,(%rax)
 e25:	b6 09                	mov    $0x9,%dh
 e27:	00 00                	add    %al,(%rax)
 e29:	00 00                	add    %al,(%rax)
 e2b:	00 00                	add    %al,(%rax)
 e2d:	01 00                	add    %eax,(%rax)
 e2f:	53                   	push   %rbx
	...
 e40:	49 08 00             	rex.WB or %al,(%r8)
 e43:	00 00                	add    %al,(%rax)
 e45:	00 00                	add    %al,(%rax)
 e47:	00 b8 09 00 00 00    	add    %bh,0x9(%rax)
 e4d:	00 00                	add    %al,(%rax)
 e4f:	00 01                	add    %al,(%rcx)
 e51:	00 5e 00             	add    %bl,0x0(%rsi)
	...
 e60:	00 00                	add    %al,(%rax)
 e62:	00 b9 08 00 00 00    	add    %bh,0x8(%rcx)
 e68:	00 00                	add    %al,(%rax)
 e6a:	00 f7                	add    %dh,%bh
 e6c:	08 00                	or     %al,(%rax)
 e6e:	00 00                	add    %al,(%rax)
 e70:	00 00                	add    %al,(%rax)
 e72:	00 03                	add    %al,(%rbx)
 e74:	00 7f 7c             	add    %bh,0x7c(%rdi)
 e77:	9f                   	lahf   
	...
 e88:	b9 08 00 00 00       	mov    $0x8,%ecx
 e8d:	00 00                	add    %al,(%rax)
 e8f:	00 c6                	add    %al,%dh
 e91:	08 00                	or     %al,(%rax)
 e93:	00 00                	add    %al,(%rax)
 e95:	00 00                	add    %al,(%rax)
 e97:	00 03                	add    %al,(%rbx)
 e99:	00 7f 7d             	add    %bh,0x7d(%rdi)
 e9c:	9f                   	lahf   
 e9d:	f5                   	cmc    
 e9e:	08 00                	or     %al,(%rax)
 ea0:	00 00                	add    %al,(%rax)
 ea2:	00 00                	add    %al,(%rax)
 ea4:	00 f7                	add    %dh,%bh
 ea6:	08 00                	or     %al,(%rax)
 ea8:	00 00                	add    %al,(%rax)
 eaa:	00 00                	add    %al,(%rax)
 eac:	00 01                	add    %al,(%rcx)
 eae:	00 5f 00             	add    %bl,0x0(%rdi)
	...
 ebd:	00 00                	add    %al,(%rax)
 ebf:	00 0f                	add    %cl,(%rdi)
 ec1:	09 00                	or     %eax,(%rax)
 ec3:	00 00                	add    %al,(%rax)
 ec5:	00 00                	add    %al,(%rax)
 ec7:	00 15 09 00 00 00    	add    %dl,0x9(%rip)        # ed6 <__abi_tag+0xc12>
 ecd:	00 00                	add    %al,(%rax)
 ecf:	00 01                	add    %al,(%rcx)
 ed1:	00 68 15             	add    %ch,0x15(%rax)
 ed4:	09 00                	or     %eax,(%rax)
 ed6:	00 00                	add    %al,(%rax)
 ed8:	00 00                	add    %al,(%rax)
 eda:	00 bb 09 00 00 00    	add    %bh,0x9(%rbx)
 ee0:	00 00                	add    %al,(%rax)
 ee2:	00 02                	add    %al,(%rdx)
 ee4:	00 77 20             	add    %dh,0x20(%rdi)
	...
 ef7:	29 09                	sub    %ecx,(%rcx)
 ef9:	00 00                	add    %al,(%rax)
 efb:	00 00                	add    %al,(%rax)
 efd:	00 00                	add    %al,(%rax)
 eff:	bb 09 00 00 00       	mov    $0x9,%ebx
 f04:	00 00                	add    %al,(%rax)
 f06:	00 02                	add    %al,(%rdx)
 f08:	00 77 10             	add    %dh,0x10(%rdi)
	...
 f1b:	3d 09 00 00 00       	cmp    $0x9,%eax
 f20:	00 00                	add    %al,(%rax)
 f22:	00 bb 09 00 00 00    	add    %bh,0x9(%rbx)
 f28:	00 00                	add    %al,(%rax)
 f2a:	00 02                	add    %al,(%rdx)
 f2c:	00 77 08             	add    %dh,0x8(%rdi)
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
  38:	85 05 00 00 00 00    	test   %eax,0x0(%rip)        # 3e <__abi_tag-0x286>
  3e:	00 00                	add    %al,(%rax)
  40:	bb 09 00 00 00       	mov    $0x9,%ebx
  45:	00 00                	add    %al,(%rax)
  47:	00 c5                	add    %al,%ch
  49:	09 00                	or     %eax,(%rax)
	...
  5f:	00 ad 05 00 00 00    	add    %ch,0x5(%rbp)
  65:	00 00                	add    %al,(%rax)
  67:	00 b8 05 00 00 00    	add    %bh,0x5(%rax)
  6d:	00 00                	add    %al,(%rax)
  6f:	00 d4                	add    %dl,%ah
  71:	05 00 00 00 00       	add    $0x0,%eax
  76:	00 00                	add    %al,(%rax)
  78:	01 07                	add    %eax,(%rdi)
  7a:	00 00                	add    %al,(%rax)
  7c:	00 00                	add    %al,(%rax)
  7e:	00 00                	add    %al,(%rax)
  80:	3a 08                	cmp    (%rax),%cl
  82:	00 00                	add    %al,(%rax)
  84:	00 00                	add    %al,(%rax)
  86:	00 00                	add    %al,(%rax)
  88:	4d 08 00             	rex.WRB or %r8b,(%r8)
	...
  9f:	00 ad 05 00 00 00    	add    %ch,0x5(%rbp)
  a5:	00 00                	add    %al,(%rax)
  a7:	00 b8 05 00 00 00    	add    %bh,0x5(%rax)
  ad:	00 00                	add    %al,(%rax)
  af:	00 d4                	add    %dl,%ah
  b1:	05 00 00 00 00       	add    $0x0,%eax
  b6:	00 00                	add    %al,(%rax)
  b8:	01 07                	add    %eax,(%rdi)
  ba:	00 00                	add    %al,(%rax)
  bc:	00 00                	add    %al,(%rax)
  be:	00 00                	add    %al,(%rax)
  c0:	3a 08                	cmp    (%rax),%cl
  c2:	00 00                	add    %al,(%rax)
  c4:	00 00                	add    %al,(%rax)
  c6:	00 00                	add    %al,(%rax)
  c8:	4d 08 00             	rex.WRB or %r8b,(%r8)
	...
  df:	00 c3                	add    %al,%bl
  e1:	05 00 00 00 00       	add    $0x0,%eax
  e6:	00 00                	add    %al,(%rax)
  e8:	d4                   	(bad)  
  e9:	05 00 00 00 00       	add    $0x0,%eax
  ee:	00 00                	add    %al,(%rax)
  f0:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
  f1:	07                   	(bad)  
  f2:	00 00                	add    %al,(%rax)
  f4:	00 00                	add    %al,(%rax)
  f6:	00 00                	add    %al,(%rax)
  f8:	3a 08                	cmp    (%rax),%cl
	...
