
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
    1093:	4c 8d 05 b6 0e 00 00 	lea    0xeb6(%rip),%r8        # 1f50 <__libc_csu_fini>
    109a:	48 8d 0d 3f 0e 00 00 	lea    0xe3f(%rip),%rcx        # 1ee0 <__libc_csu_init>
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
    16ec:	0f 85 db 07 00 00    	jne    1ecd <main+0x7ed>
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
    1a8f:	66 0f 29 7c 24 10    	movapd %xmm7,0x10(%rsp)
    1a95:	4c 89 f7             	mov    %r14,%rdi
    1a98:	48 89 de             	mov    %rbx,%rsi
    1a9b:	4c 89 fa             	mov    %r15,%rdx
    1a9e:	e8 1d f9 ff ff       	callq  13c0 <dotprod_8x>
    1aa3:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    1aa8:	4c 89 f7             	mov    %r14,%rdi
    1aab:	48 89 de             	mov    %rbx,%rsi
    1aae:	4c 89 fa             	mov    %r15,%rdx
    1ab1:	e8 6a fa ff ff       	callq  1520 <dotprod_16x>
    1ab6:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
    1abc:	48 8d 3d 6d 05 00 00 	lea    0x56d(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    1ac3:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1ac9:	b0 01                	mov    $0x1,%al
    1acb:	e8 70 f5 ff ff       	callq  1040 <printf@plt>
    1ad0:	48 8d 3d 64 05 00 00 	lea    0x564(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1ad7:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1adc:	b0 01                	mov    $0x1,%al
    1ade:	e8 5d f5 ff ff       	callq  1040 <printf@plt>
    1ae3:	48 8d 3d 5f 05 00 00 	lea    0x55f(%rip),%rdi        # 2049 <_IO_stdin_used+0x49>
    1aea:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    1aef:	b0 01                	mov    $0x1,%al
    1af1:	e8 4a f5 ff ff       	callq  1040 <printf@plt>
    1af6:	48 8d 3d 5a 05 00 00 	lea    0x55a(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1afd:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    1b02:	b0 01                	mov    $0x1,%al
    1b04:	e8 37 f5 ff ff       	callq  1040 <printf@plt>
    1b09:	48 8d 3d 55 05 00 00 	lea    0x555(%rip),%rdi        # 2065 <_IO_stdin_used+0x65>
    1b10:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    1b16:	b0 01                	mov    $0x1,%al
    1b18:	e8 23 f5 ff ff       	callq  1040 <printf@plt>
    1b1d:	4c 89 f7             	mov    %r14,%rdi
    1b20:	e8 0b f5 ff ff       	callq  1030 <free@plt>
    1b25:	48 89 df             	mov    %rbx,%rdi
    1b28:	e8 03 f5 ff ff       	callq  1030 <free@plt>
    1b2d:	bf 40 00 00 00       	mov    $0x40,%edi
    1b32:	be 20 03 00 00       	mov    $0x320,%esi
    1b37:	e8 34 f5 ff ff       	callq  1070 <aligned_alloc@plt>
    1b3c:	49 89 c6             	mov    %rax,%r14
    1b3f:	bf 40 00 00 00       	mov    $0x40,%edi
    1b44:	be 20 03 00 00       	mov    $0x320,%esi
    1b49:	e8 22 f5 ff ff       	callq  1070 <aligned_alloc@plt>
    1b4e:	48 89 c3             	mov    %rax,%rbx
    1b51:	b8 08 00 00 00       	mov    $0x8,%eax
    1b56:	66 0f 28 05 b2 04 00 	movapd 0x4b2(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1b5d:	00 
    1b5e:	66 0f 28 0d ba 04 00 	movapd 0x4ba(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1b65:	00 
    1b66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1b6d:	00 00 00 
    1b70:	66 41 0f 29 44 c6 c0 	movapd %xmm0,-0x40(%r14,%rax,8)
    1b77:	66 0f 29 4c c3 c0    	movapd %xmm1,-0x40(%rbx,%rax,8)
    1b7d:	66 41 0f 29 44 c6 d0 	movapd %xmm0,-0x30(%r14,%rax,8)
    1b84:	66 0f 29 4c c3 d0    	movapd %xmm1,-0x30(%rbx,%rax,8)
    1b8a:	66 41 0f 29 44 c6 e0 	movapd %xmm0,-0x20(%r14,%rax,8)
    1b91:	66 0f 29 4c c3 e0    	movapd %xmm1,-0x20(%rbx,%rax,8)
    1b97:	66 41 0f 29 44 c6 f0 	movapd %xmm0,-0x10(%r14,%rax,8)
    1b9e:	66 0f 29 4c c3 f0    	movapd %xmm1,-0x10(%rbx,%rax,8)
    1ba4:	66 41 0f 29 04 c6    	movapd %xmm0,(%r14,%rax,8)
    1baa:	66 0f 29 0c c3       	movapd %xmm1,(%rbx,%rax,8)
    1baf:	48 83 c0 0a          	add    $0xa,%rax
    1bb3:	48 83 f8 6c          	cmp    $0x6c,%rax
    1bb7:	75 b7                	jne    1b70 <main+0x490>
    1bb9:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1bbd:	b8 04 00 00 00       	mov    $0x4,%eax
    1bc2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1bc9:	00 00 00 
    1bcc:	0f 1f 40 00          	nopl   0x0(%rax)
    1bd0:	f2 41 0f 10 44 c6 e0 	movsd  -0x20(%r14,%rax,8),%xmm0
    1bd7:	f2 41 0f 10 4c c6 e8 	movsd  -0x18(%r14,%rax,8),%xmm1
    1bde:	f2 0f 59 44 c3 e0    	mulsd  -0x20(%rbx,%rax,8),%xmm0
    1be4:	f2 0f 59 4c c3 e8    	mulsd  -0x18(%rbx,%rax,8),%xmm1
    1bea:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1bee:	f2 41 0f 10 54 c6 f0 	movsd  -0x10(%r14,%rax,8),%xmm2
    1bf5:	f2 0f 59 54 c3 f0    	mulsd  -0x10(%rbx,%rax,8),%xmm2
    1bfb:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1bff:	f2 41 0f 10 44 c6 f8 	movsd  -0x8(%r14,%rax,8),%xmm0
    1c06:	f2 0f 59 44 c3 f8    	mulsd  -0x8(%rbx,%rax,8),%xmm0
    1c0c:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1c10:	f2 41 0f 10 1c c6    	movsd  (%r14,%rax,8),%xmm3
    1c16:	f2 0f 59 1c c3       	mulsd  (%rbx,%rax,8),%xmm3
    1c1b:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1c1f:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
    1c23:	48 83 c0 05          	add    $0x5,%rax
    1c27:	48 83 f8 68          	cmp    $0x68,%rax
    1c2b:	75 a3                	jne    1bd0 <main+0x4f0>
    1c2d:	f2 0f 11 5c 24 08    	movsd  %xmm3,0x8(%rsp)
    1c33:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1c37:	48 c7 c0 f6 ff ff ff 	mov    $0xfffffffffffffff6,%rax
    1c3e:	66 90                	xchg   %ax,%ax
    1c40:	66 41 0f 28 4c c6 50 	movapd 0x50(%r14,%rax,8),%xmm1
    1c47:	66 41 0f 28 54 c6 60 	movapd 0x60(%r14,%rax,8),%xmm2
    1c4e:	66 41 0f 28 5c c6 70 	movapd 0x70(%r14,%rax,8),%xmm3
    1c55:	66 41 0f 28 a4 c6 80 	movapd 0x80(%r14,%rax,8),%xmm4
    1c5c:	00 00 00 
    1c5f:	66 0f 59 4c c3 50    	mulpd  0x50(%rbx,%rax,8),%xmm1
    1c65:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    1c69:	66 0f 59 54 c3 60    	mulpd  0x60(%rbx,%rax,8),%xmm2
    1c6f:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    1c73:	66 0f 59 5c c3 70    	mulpd  0x70(%rbx,%rax,8),%xmm3
    1c79:	66 0f 59 a4 c3 80 00 	mulpd  0x80(%rbx,%rax,8),%xmm4
    1c80:	00 00 
    1c82:	66 0f 58 da          	addpd  %xmm2,%xmm3
    1c86:	66 41 0f 28 84 c6 90 	movapd 0x90(%r14,%rax,8),%xmm0
    1c8d:	00 00 00 
    1c90:	66 0f 59 84 c3 90 00 	mulpd  0x90(%rbx,%rax,8),%xmm0
    1c97:	00 00 
    1c99:	66 0f 58 e3          	addpd  %xmm3,%xmm4
    1c9d:	66 0f 58 c4          	addpd  %xmm4,%xmm0
    1ca1:	48 83 c0 0a          	add    $0xa,%rax
    1ca5:	48 83 f8 5a          	cmp    $0x5a,%rax
    1ca9:	72 95                	jb     1c40 <main+0x560>
    1cab:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    1caf:	31 c0                	xor    %eax,%eax
    1cb1:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    1cb5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1cbc:	00 00 00 
    1cbf:	90                   	nop
    1cc0:	66 41 0f 28 0c c6    	movapd (%r14,%rax,8),%xmm1
    1cc6:	66 41 0f 28 5c c6 10 	movapd 0x10(%r14,%rax,8),%xmm3
    1ccd:	66 0f 59 0c c3       	mulpd  (%rbx,%rax,8),%xmm1
    1cd2:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1cd6:	66 0f 59 5c c3 10    	mulpd  0x10(%rbx,%rax,8),%xmm3
    1cdc:	66 0f 58 dc          	addpd  %xmm4,%xmm3
    1ce0:	48 83 f8 60          	cmp    $0x60,%rax
    1ce4:	73 30                	jae    1d16 <main+0x636>
    1ce6:	66 41 0f 28 54 c6 20 	movapd 0x20(%r14,%rax,8),%xmm2
    1ced:	66 41 0f 28 64 c6 30 	movapd 0x30(%r14,%rax,8),%xmm4
    1cf4:	66 0f 59 54 c3 20    	mulpd  0x20(%rbx,%rax,8),%xmm2
    1cfa:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1cfe:	66 0f 59 64 c3 30    	mulpd  0x30(%rbx,%rax,8),%xmm4
    1d04:	66 0f 58 dc          	addpd  %xmm4,%xmm3
    1d08:	48 83 c0 08          	add    $0x8,%rax
    1d0c:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1d10:	66 0f 28 e3          	movapd %xmm3,%xmm4
    1d14:	eb aa                	jmp    1cc0 <main+0x5e0>
    1d16:	f2 45 0f 10 96 08 03 	movsd  0x308(%r14),%xmm10
    1d1d:	00 00 
    1d1f:	f2 44 0f 10 8b 08 03 	movsd  0x308(%rbx),%xmm9
    1d26:	00 00 
    1d28:	66 45 0f 28 9e 10 03 	movapd 0x310(%r14),%xmm11
    1d2f:	00 00 
    1d31:	66 44 0f 28 83 10 03 	movapd 0x310(%rbx),%xmm8
    1d38:	00 00 
    1d3a:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    1d3e:	48 c7 c0 f8 ff ff ff 	mov    $0xfffffffffffffff8,%rax
    1d45:	66 45 0f 57 f6       	xorpd  %xmm14,%xmm14
    1d4a:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    1d4f:	66 45 0f 57 ed       	xorpd  %xmm13,%xmm13
    1d54:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1d5b:	00 00 00 
    1d5e:	66 90                	xchg   %ax,%ax
    1d60:	66 41 0f 28 7c c6 40 	movapd 0x40(%r14,%rax,8),%xmm7
    1d67:	66 41 0f 28 74 c6 50 	movapd 0x50(%r14,%rax,8),%xmm6
    1d6e:	66 41 0f 28 6c c6 60 	movapd 0x60(%r14,%rax,8),%xmm5
    1d75:	66 41 0f 28 54 c6 70 	movapd 0x70(%r14,%rax,8),%xmm2
    1d7c:	66 0f 59 7c c3 40    	mulpd  0x40(%rbx,%rax,8),%xmm7
    1d82:	66 0f 58 e7          	addpd  %xmm7,%xmm4
    1d86:	66 0f 59 74 c3 50    	mulpd  0x50(%rbx,%rax,8),%xmm6
    1d8c:	66 44 0f 58 ee       	addpd  %xmm6,%xmm13
    1d91:	66 0f 59 6c c3 60    	mulpd  0x60(%rbx,%rax,8),%xmm5
    1d97:	66 0f 59 54 c3 70    	mulpd  0x70(%rbx,%rax,8),%xmm2
    1d9d:	66 44 0f 58 e5       	addpd  %xmm5,%xmm12
    1da2:	66 44 0f 58 f2       	addpd  %xmm2,%xmm14
    1da7:	48 83 c0 08          	add    $0x8,%rax
    1dab:	48 83 f8 5c          	cmp    $0x5c,%rax
    1daf:	72 af                	jb     1d60 <main+0x680>
    1db1:	f2 45 0f 59 d1       	mulsd  %xmm9,%xmm10
    1db6:	f2 44 0f 58 d1       	addsd  %xmm1,%xmm10
    1dbb:	66 45 0f 59 d8       	mulpd  %xmm8,%xmm11
    1dc0:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    1dc5:	66 45 0f 15 db       	unpckhpd %xmm11,%xmm11
    1dca:	f2 45 0f 58 da       	addsd  %xmm10,%xmm11
    1dcf:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    1dd3:	f2 41 0f 58 cb       	addsd  %xmm11,%xmm1
    1dd8:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1ddc:	66 0f 15 db          	unpckhpd %xmm3,%xmm3
    1de0:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1de4:	66 0f 29 5c 24 10    	movapd %xmm3,0x10(%rsp)
    1dea:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1dee:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1df2:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1df6:	66 0f 29 4c 24 30    	movapd %xmm1,0x30(%rsp)
    1dfc:	66 0f 28 c4          	movapd %xmm4,%xmm0
    1e00:	66 0f 15 c4          	unpckhpd %xmm4,%xmm0
    1e04:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    1e08:	f2 41 0f 58 c5       	addsd  %xmm13,%xmm0
    1e0d:	66 45 0f 15 ed       	unpckhpd %xmm13,%xmm13
    1e12:	f2 44 0f 58 e8       	addsd  %xmm0,%xmm13
    1e17:	f2 45 0f 58 ec       	addsd  %xmm12,%xmm13
    1e1c:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    1e21:	f2 45 0f 58 e5       	addsd  %xmm13,%xmm12
    1e26:	f2 45 0f 58 e6       	addsd  %xmm14,%xmm12
    1e2b:	66 45 0f 15 f6       	unpckhpd %xmm14,%xmm14
    1e30:	f2 45 0f 58 f4       	addsd  %xmm12,%xmm14
    1e35:	66 44 0f 29 74 24 20 	movapd %xmm14,0x20(%rsp)
    1e3c:	ba 64 00 00 00       	mov    $0x64,%edx
    1e41:	4c 89 f7             	mov    %r14,%rdi
    1e44:	48 89 de             	mov    %rbx,%rsi
    1e47:	e8 d4 f6 ff ff       	callq  1520 <dotprod_16x>
    1e4c:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    1e51:	48 8d 3d d8 01 00 00 	lea    0x1d8(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    1e58:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1e5e:	b0 01                	mov    $0x1,%al
    1e60:	e8 db f1 ff ff       	callq  1040 <printf@plt>
    1e65:	48 8d 3d cf 01 00 00 	lea    0x1cf(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1e6c:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1e71:	b0 01                	mov    $0x1,%al
    1e73:	e8 c8 f1 ff ff       	callq  1040 <printf@plt>
    1e78:	48 8d 3d ca 01 00 00 	lea    0x1ca(%rip),%rdi        # 2049 <_IO_stdin_used+0x49>
    1e7f:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    1e84:	b0 01                	mov    $0x1,%al
    1e86:	e8 b5 f1 ff ff       	callq  1040 <printf@plt>
    1e8b:	48 8d 3d c5 01 00 00 	lea    0x1c5(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1e92:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    1e97:	b0 01                	mov    $0x1,%al
    1e99:	e8 a2 f1 ff ff       	callq  1040 <printf@plt>
    1e9e:	48 8d 3d c0 01 00 00 	lea    0x1c0(%rip),%rdi        # 2065 <_IO_stdin_used+0x65>
    1ea5:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    1eaa:	b0 01                	mov    $0x1,%al
    1eac:	e8 8f f1 ff ff       	callq  1040 <printf@plt>
    1eb1:	4c 89 f7             	mov    %r14,%rdi
    1eb4:	e8 77 f1 ff ff       	callq  1030 <free@plt>
    1eb9:	48 89 df             	mov    %rbx,%rdi
    1ebc:	e8 6f f1 ff ff       	callq  1030 <free@plt>
    1ec1:	31 c0                	xor    %eax,%eax
    1ec3:	48 83 c4 40          	add    $0x40,%rsp
    1ec7:	5b                   	pop    %rbx
    1ec8:	41 5e                	pop    %r14
    1eca:	41 5f                	pop    %r15
    1ecc:	c3                   	retq   
    1ecd:	bf 01 00 00 00       	mov    $0x1,%edi
    1ed2:	e8 89 f1 ff ff       	callq  1060 <exit@plt>
    1ed7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1ede:	00 00 

0000000000001ee0 <__libc_csu_init>:
    1ee0:	f3 0f 1e fa          	endbr64 
    1ee4:	41 57                	push   %r15
    1ee6:	4c 8d 3d eb 1e 00 00 	lea    0x1eeb(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    1eed:	41 56                	push   %r14
    1eef:	49 89 d6             	mov    %rdx,%r14
    1ef2:	41 55                	push   %r13
    1ef4:	49 89 f5             	mov    %rsi,%r13
    1ef7:	41 54                	push   %r12
    1ef9:	41 89 fc             	mov    %edi,%r12d
    1efc:	55                   	push   %rbp
    1efd:	48 8d 2d dc 1e 00 00 	lea    0x1edc(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1f04:	53                   	push   %rbx
    1f05:	4c 29 fd             	sub    %r15,%rbp
    1f08:	48 83 ec 08          	sub    $0x8,%rsp
    1f0c:	e8 ef f0 ff ff       	callq  1000 <_init>
    1f11:	48 c1 fd 03          	sar    $0x3,%rbp
    1f15:	74 1f                	je     1f36 <__libc_csu_init+0x56>
    1f17:	31 db                	xor    %ebx,%ebx
    1f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1f20:	4c 89 f2             	mov    %r14,%rdx
    1f23:	4c 89 ee             	mov    %r13,%rsi
    1f26:	44 89 e7             	mov    %r12d,%edi
    1f29:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1f2d:	48 83 c3 01          	add    $0x1,%rbx
    1f31:	48 39 dd             	cmp    %rbx,%rbp
    1f34:	75 ea                	jne    1f20 <__libc_csu_init+0x40>
    1f36:	48 83 c4 08          	add    $0x8,%rsp
    1f3a:	5b                   	pop    %rbx
    1f3b:	5d                   	pop    %rbp
    1f3c:	41 5c                	pop    %r12
    1f3e:	41 5d                	pop    %r13
    1f40:	41 5e                	pop    %r14
    1f42:	41 5f                	pop    %r15
    1f44:	c3                   	retq   
    1f45:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1f4c:	00 00 00 00 

0000000000001f50 <__libc_csu_fini>:
    1f50:	f3 0f 1e fa          	endbr64 
    1f54:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001f58 <_fini>:
    1f58:	f3 0f 1e fa          	endbr64 
    1f5c:	48 83 ec 08          	sub    $0x8,%rsp
    1f60:	48 83 c4 08          	add    $0x8,%rsp
    1f64:	c3                   	retq   

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
    20c8:	6c                   	insb   (%dx),%es:(%rdi)
    20c9:	fe                   	(bad)  
    20ca:	ff                   	(bad)  
    20cb:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
    20cf:	00 dc                	add    %bl,%ah
    20d1:	fe                   	(bad)  
    20d2:	ff                   	(bad)  
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
    21bb:	ff f7                	push   %rdi
    21bd:	07                   	(bad)  
    21be:	00 00                	add    %al,(%rax)
    21c0:	00 42 0e             	add    %al,0xe(%rdx)
    21c3:	10 42 0e             	adc    %al,0xe(%rdx)
    21c6:	18 41 0e             	sbb    %al,0xe(%rcx)
    21c9:	20 44 0e 60          	and    %al,0x60(%rsi,%rcx,1)
    21cd:	83 04 8e 03          	addl   $0x3,(%rsi,%rcx,4)
    21d1:	8f 02                	popq   (%rdx)
    21d3:	03 de                	add    %esi,%ebx
    21d5:	07                   	(bad)  
    21d6:	0e                   	(bad)  
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
    21f0:	f0 fc                	lock cld 
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
    2237:	00 18                	add    %bl,(%rax)
    2239:	fd                   	std    
    223a:	ff                   	(bad)  
    223b:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 2241 <__GNU_EH_FRAME_HDR+0x1cd>
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
    3e0f:	00 58 1f             	add    %bl,0x1f(%rax)
    3e12:	00 00                	add    %al,(%rax)
    3e14:	00 00                	add    %al,(%rax)
    3e16:	00 00                	add    %al,(%rax)
    3e18:	19 00                	sbb    %eax,(%rax)
    3e1a:	00 00                	add    %al,(%rax)
    3e1c:	00 00                	add    %al,(%rax)
    3e1e:	00 00                	add    %al,(%rax)
    3e20:	d8 3d 00 00 00 00    	fdivrs 0x0(%rip)        # 3e26 <_DYNAMIC+0x3e>
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
   0:	c2 09 00             	retq   $0x9
   3:	00 04 00             	add    %al,(%rax,%rax,1)
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
  25:	00 57 0d             	add    %dl,0xd(%rdi)
  28:	00 00                	add    %al,(%rax)
  2a:	02 80 11 00 00 00    	add    0x11(%rax),%al
  30:	00 00                	add    %al,(%rax)
  32:	00 21                	add    %ah,(%rcx)
  34:	00 00                	add    %al,(%rax)
  36:	00 01                	add    %al,(%rcx)
  38:	57                   	push   %rdi
  39:	b6 02                	mov    $0x2,%dh
  3b:	00 00                	add    %al,(%rax)
  3d:	03 00                	add    (%rax),%eax
  3f:	00 00                	add    %al,(%rax)
  41:	00 c2                	add    %al,%dl
  43:	02 00                	add    (%rax),%al
  45:	00 03                	add    %al,(%rbx)
  47:	62                   	(bad)  
  48:	00 00                	add    %al,(%rax)
  4a:	00 cd                	add    %cl,%ch
  4c:	02 00                	add    (%rax),%al
  4e:	00 00                	add    %al,(%rax)
  50:	02 b0 11 00 00 00    	add    0x11(%rax),%dh
  56:	00 00                	add    %al,(%rax)
  58:	00 a8 00 00 00 01    	add    %ch,0x1000000(%rax)
  5e:	57                   	push   %rdi
  5f:	b3 03                	mov    $0x3,%bl
  61:	00 00                	add    %al,(%rax)
  63:	04 01                	add    $0x1,%al
  65:	55                   	push   %rbp
  66:	bf 03 00 00 03       	mov    $0x3000003,%edi
  6b:	c4                   	(bad)  
  6c:	00 00                	add    %al,(%rax)
  6e:	00 ca                	add    %cl,%dl
  70:	03 00                	add    (%rax),%eax
  72:	00 03                	add    %al,(%rbx)
  74:	fd                   	std    
  75:	00 00                	add    %al,(%rax)
  77:	00 d5                	add    %dl,%ch
  79:	03 00                	add    (%rax),%eax
  7b:	00 05 36 01 00 00    	add    %al,0x136(%rip)        # 1b7 <__abi_tag-0x10d>
  81:	e0 03                	loopne 86 <__abi_tag-0x23e>
  83:	00 00                	add    %al,(%rax)
  85:	06                   	(bad)  
  86:	00 00                	add    %al,(%rax)
  88:	00 00                	add    %al,(%rax)
  8a:	05 f3 01 00 00       	add    $0x1f3,%eax
  8f:	ec                   	in     (%dx),%al
  90:	03 00                	add    (%rax),%eax
  92:	00 00                	add    %al,(%rax)
  94:	00 02                	add    %al,(%rdx)
  96:	60                   	(bad)  
  97:	12 00                	adc    (%rax),%al
  99:	00 00                	add    %al,(%rax)
  9b:	00 00                	add    %al,(%rax)
  9d:	00 88 00 00 00 01    	add    %cl,0x1000000(%rax)
  a3:	57                   	push   %rdi
  a4:	40 03 00             	rex add (%rax),%eax
  a7:	00 04 01             	add    %al,(%rcx,%rax,1)
  aa:	55                   	push   %rbp
  ab:	4c 03 00             	add    (%rax),%r8
  ae:	00 04 01             	add    %al,(%rcx,%rax,1)
  b1:	54                   	push   %rsp
  b2:	57                   	push   %rdi
  b3:	03 00                	add    (%rax),%eax
  b5:	00 04 01             	add    %al,(%rcx,%rax,1)
  b8:	51                   	push   %rcx
  b9:	62 03                	(bad)  
  bb:	00 00                	add    %al,(%rax)
  bd:	05 96 02 00 00       	add    $0x296,%eax
  c2:	6d                   	insl   (%dx),%es:(%rdi)
  c3:	03 00                	add    (%rax),%eax
  c5:	00 07                	add    %al,(%rdi)
  c7:	69 12 00 00 00 00    	imul   $0x0,(%rdx),%edx
  cd:	00 00                	add    %al,(%rax)
  cf:	22 00                	and    (%rax),%al
  d1:	00 00                	add    %al,(%rax)
  d3:	05 da 02 00 00       	add    $0x2da,%eax
  d8:	79 03                	jns    dd <__abi_tag-0x1e7>
  da:	00 00                	add    %al,(%rax)
  dc:	00 07                	add    %al,(%rdi)
  de:	98                   	cwtl   
  df:	12 00                	adc    (%rax),%al
  e1:	00 00                	add    %al,(%rax)
  e3:	00 00                	add    %al,(%rax)
  e5:	00 4b 00             	add    %cl,0x0(%rbx)
  e8:	00 00                	add    %al,(%rax)
  ea:	05 48 03 00 00       	add    $0x348,%eax
  ef:	86 03                	xchg   %al,(%rbx)
  f1:	00 00                	add    %al,(%rax)
  f3:	07                   	(bad)  
  f4:	98                   	cwtl   
  f5:	12 00                	adc    (%rax),%al
  f7:	00 00                	add    %al,(%rax)
  f9:	00 00                	add    %al,(%rax)
  fb:	00 33                	add    %dh,(%rbx)
  fd:	00 00                	add    %al,(%rax)
  ff:	00 05 11 03 00 00    	add    %al,0x311(%rip)        # 416 <__abi_tag+0x152>
 105:	92                   	xchg   %eax,%edx
 106:	03 00                	add    (%rax),%eax
 108:	00 00                	add    %al,(%rax)
 10a:	00 00                	add    %al,(%rax)
 10c:	02 f0                	add    %al,%dh
 10e:	12 00                	adc    (%rax),%al
 110:	00 00                	add    %al,(%rax)
 112:	00 00                	add    %al,(%rax)
 114:	00 c5                	add    %al,%ch
 116:	00 00                	add    %al,(%rax)
 118:	00 01                	add    %al,(%rcx)
 11a:	57                   	push   %rdi
 11b:	f9                   	stc    
 11c:	03 00                	add    (%rax),%eax
 11e:	00 04 01             	add    %al,(%rcx,%rax,1)
 121:	55                   	push   %rbp
 122:	05 04 00 00 04       	add    $0x4000004,%eax
 127:	01 54 10 04          	add    %edx,0x4(%rax,%rdx,1)
 12b:	00 00                	add    %al,(%rax)
 12d:	04 01                	add    $0x1,%al
 12f:	51                   	push   %rcx
 130:	1b 04 00             	sbb    (%rax,%rax,1),%eax
 133:	00 05 6b 03 00 00    	add    %al,0x36b(%rip)        # 4a4 <__abi_tag+0x1e0>
 139:	31 04 00             	xor    %eax,(%rax,%rax,1)
 13c:	00 08                	add    %cl,(%rax)
 13e:	26 04 00             	es add $0x0,%al
 141:	00 07                	add    %al,(%rdi)
 143:	f4                   	hlt    
 144:	12 00                	adc    (%rax),%al
 146:	00 00                	add    %al,(%rax)
 148:	00 00                	add    %al,(%rax)
 14a:	00 63 00             	add    %ah,0x0(%rbx)
 14d:	00 00                	add    %al,(%rax)
 14f:	05 13 04 00 00       	add    $0x413,%eax
 154:	3d 04 00 00 00       	cmp    $0x4,%eax
 159:	07                   	(bad)  
 15a:	64 13 00             	adc    %fs:(%rax),%eax
 15d:	00 00                	add    %al,(%rax)
 15f:	00 00                	add    %al,(%rax)
 161:	00 38                	add    %bh,(%rax)
 163:	00 00                	add    %al,(%rax)
 165:	00 05 4a 04 00 00    	add    %al,0x44a(%rip)        # 5b5 <__abi_tag+0x2f1>
 16b:	4a 04 00             	rex.WX add $0x0,%al
 16e:	00 07                	add    %al,(%rdi)
 170:	64 13 00             	adc    %fs:(%rax),%eax
 173:	00 00                	add    %al,(%rax)
 175:	00 00                	add    %al,(%rax)
 177:	00 38                	add    %bh,(%rax)
 179:	00 00                	add    %al,(%rax)
 17b:	00 05 6f 04 00 00    	add    %al,0x46f(%rip)        # 5f0 <__abi_tag+0x32c>
 181:	56                   	push   %rsi
 182:	04 00                	add    $0x0,%al
 184:	00 00                	add    %al,(%rax)
 186:	00 00                	add    %al,(%rax)
 188:	02 c0                	add    %al,%al
 18a:	13 00                	adc    (%rax),%eax
 18c:	00 00                	add    %al,(%rax)
 18e:	00 00                	add    %al,(%rax)
 190:	00 55 01             	add    %dl,0x1(%rbp)
 193:	00 00                	add    %al,(%rax)
 195:	01 57 70             	add    %edx,0x70(%rdi)
 198:	04 00                	add    $0x0,%al
 19a:	00 04 01             	add    %al,(%rcx,%rax,1)
 19d:	55                   	push   %rbp
 19e:	7c 04                	jl     1a4 <__abi_tag-0x120>
 1a0:	00 00                	add    %al,(%rax)
 1a2:	04 01                	add    $0x1,%al
 1a4:	54                   	push   %rsp
 1a5:	87 04 00             	xchg   %eax,(%rax,%rax,1)
 1a8:	00 04 01             	add    %al,(%rcx,%rax,1)
 1ab:	51                   	push   %rcx
 1ac:	92                   	xchg   %eax,%edx
 1ad:	04 00                	add    $0x0,%al
 1af:	00 05 94 04 00 00    	add    %al,0x494(%rip)        # 649 <__abi_tag+0x385>
 1b5:	9d                   	popfq  
 1b6:	04 00                	add    $0x0,%al
 1b8:	00 08                	add    %cl,(%rax)
 1ba:	a8 04                	test   $0x4,%al
 1bc:	00 00                	add    %al,(%rax)
 1be:	07                   	(bad)  
 1bf:	c4                   	(bad)  
 1c0:	13 00                	adc    (%rax),%eax
 1c2:	00 00                	add    %al,(%rax)
 1c4:	00 00                	add    %al,(%rax)
 1c6:	00 8b 00 00 00 05    	add    %cl,0x5000000(%rbx)
 1cc:	b0 05                	mov    $0x5,%al
 1ce:	00 00                	add    %al,(%rax)
 1d0:	b4 04                	mov    $0x4,%ah
 1d2:	00 00                	add    %al,(%rax)
 1d4:	00 07                	add    %al,(%rdi)
 1d6:	60                   	(bad)  
 1d7:	14 00                	adc    $0x0,%al
 1d9:	00 00                	add    %al,(%rax)
 1db:	00 00                	add    %al,(%rax)
 1dd:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 1e1:	00 05 e7 05 00 00    	add    %al,0x5e7(%rip)        # 7ce <__abi_tag+0x50a>
 1e7:	c1 04 00 00          	roll   $0x0,(%rax,%rax,1)
 1eb:	07                   	(bad)  
 1ec:	60                   	(bad)  
 1ed:	14 00                	adc    $0x0,%al
 1ef:	00 00                	add    %al,(%rax)
 1f1:	00 00                	add    %al,(%rax)
 1f3:	00 7c 00 00          	add    %bh,0x0(%rax,%rax,1)
 1f7:	00 05 0c 06 00 00    	add    %al,0x60c(%rip)        # 809 <__abi_tag+0x545>
 1fd:	cd 04                	int    $0x4
 1ff:	00 00                	add    %al,(%rax)
 201:	00 00                	add    %al,(%rax)
 203:	00 09                	add    %cl,(%rcx)
 205:	20 15 00 00 00 00    	and    %dl,0x0(%rip)        # 20b <__abi_tag-0xb9>
 20b:	00 00                	add    %al,(%rax)
 20d:	b5 01                	mov    $0x1,%ch
 20f:	00 00                	add    %al,(%rax)
 211:	01 57 e3             	add    %edx,-0x1d(%rdi)
 214:	00 00                	add    %al,(%rax)
 216:	00 01                	add    %al,(%rcx)
 218:	7a 39                	jp     253 <__abi_tag-0x71>
 21a:	03 00                	add    (%rax),%eax
 21c:	00 0a                	add    %cl,(%rdx)
 21e:	01 55 75             	add    %edx,0x75(%rbp)
 221:	00 00                	add    %al,(%rax)
 223:	00 01                	add    %al,(%rcx)
 225:	7a 2f                	jp     256 <__abi_tag-0x6e>
 227:	03 00                	add    (%rax),%eax
 229:	00 0a                	add    %cl,(%rdx)
 22b:	01 54 7e 00          	add    %edx,0x0(%rsi,%rdi,2)
 22f:	00 00                	add    %al,(%rax)
 231:	01 7a 2f             	add    %edi,0x2f(%rdx)
 234:	03 00                	add    (%rax),%eax
 236:	00 0a                	add    %cl,(%rdx)
 238:	01 51 f2             	add    %edx,-0xe(%rcx)
 23b:	00 00                	add    %al,(%rax)
 23d:	00 01                	add    %al,(%rcx)
 23f:	7a d9                	jp     21a <__abi_tag-0xaa>
 241:	02 00                	add    (%rax),%al
 243:	00 0b                	add    %cl,(%rbx)
 245:	31 06                	xor    %eax,(%rsi)
 247:	00 00                	add    %al,(%rax)
 249:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 24e:	7c b9                	jl     209 <__abi_tag-0xbb>
 250:	09 00                	or     %eax,(%rax)
 252:	00 0c b8             	add    %cl,(%rax,%rdi,4)
 255:	00 00                	add    %al,(%rax)
 257:	00 01                	add    %al,(%rcx)
 259:	7d d9                	jge    234 <__abi_tag-0x90>
 25b:	02 00                	add    (%rax),%al
 25d:	00 07                	add    %al,(%rdi)
 25f:	24 15                	and    $0x15,%al
 261:	00 00                	add    %al,(%rax)
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	f3 00 00             	repz add %al,(%rax)
 26a:	00 0b                	add    %cl,(%rbx)
 26c:	0f 07                	sysret 
 26e:	00 00                	add    %al,(%rax)
 270:	80 00 00             	addb   $0x0,(%rax)
 273:	00 01                	add    %al,(%rcx)
 275:	7f d9                	jg     250 <__abi_tag-0x74>
 277:	02 00                	add    (%rax),%al
 279:	00 00                	add    %al,(%rax)
 27b:	07                   	(bad)  
 27c:	2c 16                	sub    $0x16,%al
 27e:	00 00                	add    %al,(%rax)
 280:	00 00                	add    %al,(%rax)
 282:	00 00                	add    %al,(%rax)
 284:	1d 00 00 00 0b       	sbb    $0xb000000,%eax
 289:	7e 07                	jle    292 <__abi_tag-0x32>
 28b:	00 00                	add    %al,(%rax)
 28d:	f4                   	hlt    
 28e:	00 00                	add    %al,(%rax)
 290:	00 01                	add    %al,(%rcx)
 292:	95                   	xchg   %eax,%ebp
 293:	d9 02                	flds   (%rdx)
 295:	00 00                	add    %al,(%rax)
 297:	07                   	(bad)  
 298:	2c 16                	sub    $0x16,%al
 29a:	00 00                	add    %al,(%rax)
 29c:	00 00                	add    %al,(%rax)
 29e:	00 00                	add    %al,(%rax)
 2a0:	1d 00 00 00 0b       	sbb    $0xb000000,%eax
 2a5:	46 07                	rex.RX (bad) 
 2a7:	00 00                	add    %al,(%rax)
 2a9:	80 00 00             	addb   $0x0,(%rax)
 2ac:	00 01                	add    %al,(%rcx)
 2ae:	97                   	xchg   %eax,%edi
 2af:	d9 02                	flds   (%rdx)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 00                	add    %al,(%rax)
 2b5:	00 0d 3f 00 00 00    	add    %cl,0x3f(%rip)        # 2fa <__abi_tag+0x36>
 2bb:	01 08                	add    %ecx,(%rax)
 2bd:	d9 02                	flds   (%rdx)
 2bf:	00 00                	add    %al,(%rax)
 2c1:	01 0e                	add    %ecx,(%rsi)
 2c3:	61                   	(bad)  
 2c4:	00 00                	add    %al,(%rax)
 2c6:	00 01                	add    %al,(%rcx)
 2c8:	08 e0                	or     %ah,%al
 2ca:	02 00                	add    (%rax),%al
 2cc:	00 0e                	add    %cl,(%rsi)
 2ce:	66 00 00             	data16 add %al,(%rax)
 2d1:	00 01                	add    %al,(%rcx)
 2d3:	08 e7                	or     %ah,%bh
 2d5:	02 00                	add    (%rax),%al
 2d7:	00 00                	add    %al,(%rax)
 2d9:	0f 4a 00             	cmovp  (%rax),%eax
 2dc:	00 00                	add    %al,(%rax)
 2de:	07                   	(bad)  
 2df:	08 0f                	or     %cl,(%rdi)
 2e1:	5d                   	pop    %rbp
 2e2:	00 00                	add    %al,(%rax)
 2e4:	00 05 04 10 ec 02    	add    %al,0x2ec1004(%rip)        # 2ec12ee <_end+0x2ebd296>
 2ea:	00 00                	add    %al,(%rax)
 2ec:	10 f1                	adc    %dh,%cl
 2ee:	02 00                	add    (%rax),%al
 2f0:	00 0f                	add    %cl,(%rdi)
 2f2:	6b 00 00             	imul   $0x0,(%rax),%eax
 2f5:	00 06                	add    %al,(%rsi)
 2f7:	01 11                	add    %edx,(%rcx)
 2f9:	70 00                	jo     2fb <__abi_tag+0x37>
 2fb:	00 00                	add    %al,(%rax)
 2fd:	01 11                	add    %edx,(%rcx)
 2ff:	01 0e                	add    %ecx,(%rsi)
 301:	75 00                	jne    303 <__abi_tag+0x3f>
 303:	00 00                	add    %al,(%rax)
 305:	01 11                	add    %edx,(%rcx)
 307:	2f                   	(bad)  
 308:	03 00                	add    (%rax),%eax
 30a:	00 0e                	add    %cl,(%rsi)
 30c:	7e 00                	jle    30e <__abi_tag+0x4a>
 30e:	00 00                	add    %al,(%rax)
 310:	01 11                	add    %edx,(%rcx)
 312:	2f                   	(bad)  
 313:	03 00                	add    (%rax),%eax
 315:	00 0e                	add    %cl,(%rsi)
 317:	f2 00 00             	repnz add %al,(%rax)
 31a:	00 01                	add    %al,(%rcx)
 31c:	11 d9                	adc    %ebx,%ecx
 31e:	02 00                	add    (%rax),%al
 320:	00 12                	add    %dl,(%rdx)
 322:	0c 80                	or     $0x80,%al
 324:	00 00                	add    %al,(%rax)
 326:	00 01                	add    %al,(%rcx)
 328:	13 d9                	adc    %ecx,%ebx
 32a:	02 00                	add    (%rax),%al
 32c:	00 00                	add    %al,(%rax)
 32e:	00 13                	add    %dl,(%rbx)
 330:	34 03                	xor    $0x3,%al
 332:	00 00                	add    %al,(%rax)
 334:	10 39                	adc    %bh,(%rcx)
 336:	03 00                	add    (%rax),%eax
 338:	00 0f                	add    %cl,(%rdi)
 33a:	77 00                	ja     33c <__abi_tag+0x78>
 33c:	00 00                	add    %al,(%rax)
 33e:	04 08                	add    $0x8,%al
 340:	0d 82 00 00 00       	or     $0x82,%eax
 345:	01 26                	add    %esp,(%rsi)
 347:	39 03                	cmp    %eax,(%rbx)
 349:	00 00                	add    %al,(%rax)
 34b:	01 0e                	add    %ecx,(%rsi)
 34d:	75 00                	jne    34f <__abi_tag+0x8b>
 34f:	00 00                	add    %al,(%rax)
 351:	01 26                	add    %esp,(%rsi)
 353:	2f                   	(bad)  
 354:	03 00                	add    (%rax),%eax
 356:	00 0e                	add    %cl,(%rsi)
 358:	7e 00                	jle    35a <__abi_tag+0x96>
 35a:	00 00                	add    %al,(%rax)
 35c:	01 26                	add    %esp,(%rsi)
 35e:	2f                   	(bad)  
 35f:	03 00                	add    (%rax),%eax
 361:	00 0e                	add    %cl,(%rsi)
 363:	f2 00 00             	repnz add %al,(%rax)
 366:	00 01                	add    %al,(%rcx)
 368:	26 d9 02             	flds   %es:(%rdx)
 36b:	00 00                	add    %al,(%rax)
 36d:	0c 3d                	or     $0x3d,%al
 36f:	00 00                	add    %al,(%rax)
 371:	00 01                	add    %al,(%rcx)
 373:	28 a0 03 00 00 12    	sub    %ah,0x12000003(%rax)
 379:	0c 80                	or     $0x80,%al
 37b:	00 00                	add    %al,(%rax)
 37d:	00 01                	add    %al,(%rcx)
 37f:	39 d9                	cmp    %ebx,%ecx
 381:	02 00                	add    (%rax),%al
 383:	00 00                	add    %al,(%rax)
 385:	12 0c a1             	adc    (%rcx,%riz,4),%cl
 388:	00 00                	add    %al,(%rax)
 38a:	00 01                	add    %al,(%rcx)
 38c:	2d d9 02 00 00       	sub    $0x2d9,%eax
 391:	12 0c 80             	adc    (%rax,%rax,4),%cl
 394:	00 00                	add    %al,(%rax)
 396:	00 01                	add    %al,(%rcx)
 398:	2f                   	(bad)  
 399:	d9 02                	flds   (%rdx)
 39b:	00 00                	add    %al,(%rax)
 39d:	00 00                	add    %al,(%rax)
 39f:	00 14 39             	add    %dl,(%rcx,%rdi,1)
 3a2:	03 00                	add    (%rax),%eax
 3a4:	00 15 ac 03 00 00    	add    %dl,0x3ac(%rip)        # 756 <__abi_tag+0x492>
 3aa:	02 00                	add    (%rax),%al
 3ac:	16                   	(bad)  
 3ad:	8d 00                	lea    (%rax),%eax
 3af:	00 00                	add    %al,(%rax)
 3b1:	08 07                	or     %al,(%rdi)
 3b3:	0d a5 00 00 00       	or     $0xa5,%eax
 3b8:	01 1b                	add    %ebx,(%rbx)
 3ba:	39 03                	cmp    %eax,(%rbx)
 3bc:	00 00                	add    %al,(%rax)
 3be:	01 0e                	add    %ecx,(%rsi)
 3c0:	75 00                	jne    3c2 <__abi_tag+0xfe>
 3c2:	00 00                	add    %al,(%rax)
 3c4:	01 1b                	add    %ebx,(%rbx)
 3c6:	2f                   	(bad)  
 3c7:	03 00                	add    (%rax),%eax
 3c9:	00 0e                	add    %cl,(%rsi)
 3cb:	7e 00                	jle    3cd <__abi_tag+0x109>
 3cd:	00 00                	add    %al,(%rax)
 3cf:	01 1b                	add    %ebx,(%rbx)
 3d1:	2f                   	(bad)  
 3d2:	03 00                	add    (%rax),%eax
 3d4:	00 0e                	add    %cl,(%rsi)
 3d6:	f2 00 00             	repnz add %al,(%rax)
 3d9:	00 01                	add    %al,(%rcx)
 3db:	1b d9                	sbb    %ecx,%ebx
 3dd:	02 00                	add    (%rax),%al
 3df:	00 0c 3d 00 00 00 01 	add    %cl,0x1000000(,%rdi,1)
 3e6:	1d 39 03 00 00       	sbb    $0x339,%eax
 3eb:	12 0c 80             	adc    (%rax,%rax,4),%cl
 3ee:	00 00                	add    %al,(%rax)
 3f0:	00 01                	add    %al,(%rcx)
 3f2:	1f                   	(bad)  
 3f3:	d9 02                	flds   (%rdx)
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 00                	add    %al,(%rax)
 3f9:	0d ad 00 00 00       	or     $0xad,%eax
 3fe:	01 44 39 03          	add    %eax,0x3(%rcx,%rdi,1)
 402:	00 00                	add    %al,(%rax)
 404:	01 0e                	add    %ecx,(%rsi)
 406:	75 00                	jne    408 <__abi_tag+0x144>
 408:	00 00                	add    %al,(%rax)
 40a:	01 44 2f 03          	add    %eax,0x3(%rdi,%rbp,1)
 40e:	00 00                	add    %al,(%rax)
 410:	0e                   	(bad)  
 411:	7e 00                	jle    413 <__abi_tag+0x14f>
 413:	00 00                	add    %al,(%rax)
 415:	01 44 2f 03          	add    %eax,0x3(%rdi,%rbp,1)
 419:	00 00                	add    %al,(%rax)
 41b:	0e                   	(bad)  
 41c:	f2 00 00             	repnz add %al,(%rax)
 41f:	00 01                	add    %al,(%rcx)
 421:	44 d9 02             	rex.R flds (%rdx)
 424:	00 00                	add    %al,(%rax)
 426:	0c b8                	or     $0xb8,%al
 428:	00 00                	add    %al,(%rax)
 42a:	00 01                	add    %al,(%rcx)
 42c:	47 d9 02             	rex.RXB flds (%r10)
 42f:	00 00                	add    %al,(%rax)
 431:	0c 3d                	or     $0x3d,%al
 433:	00 00                	add    %al,(%rax)
 435:	00 01                	add    %al,(%rcx)
 437:	46                   	rex.RX
 438:	64 04 00             	fs add $0x0,%al
 43b:	00 12                	add    %dl,(%rdx)
 43d:	0c 80                	or     $0x80,%al
 43f:	00 00                	add    %al,(%rax)
 441:	00 01                	add    %al,(%rcx)
 443:	49 d9 02             	rex.WB flds (%r10)
 446:	00 00                	add    %al,(%rax)
 448:	00 12                	add    %dl,(%rdx)
 44a:	0c bd                	or     $0xbd,%al
 44c:	00 00                	add    %al,(%rax)
 44e:	00 01                	add    %al,(%rcx)
 450:	53                   	push   %rbx
 451:	d9 02                	flds   (%rdx)
 453:	00 00                	add    %al,(%rax)
 455:	12 0c 80             	adc    (%rax,%rax,4),%cl
 458:	00 00                	add    %al,(%rax)
 45a:	00 01                	add    %al,(%rcx)
 45c:	55                   	push   %rbp
 45d:	d9 02                	flds   (%rdx)
 45f:	00 00                	add    %al,(%rax)
 461:	00 00                	add    %al,(%rax)
 463:	00 14 39             	add    %dl,(%rcx,%rdi,1)
 466:	03 00                	add    (%rax),%eax
 468:	00 15 ac 03 00 00    	add    %dl,0x3ac(%rip)        # 81a <__abi_tag+0x556>
 46e:	04 00                	add    $0x0,%al
 470:	0d c1 00 00 00       	or     $0xc1,%eax
 475:	01 5d 39             	add    %ebx,0x39(%rbp)
 478:	03 00                	add    (%rax),%eax
 47a:	00 01                	add    %al,(%rcx)
 47c:	0e                   	(bad)  
 47d:	75 00                	jne    47f <__abi_tag+0x1bb>
 47f:	00 00                	add    %al,(%rax)
 481:	01 5d 2f             	add    %ebx,0x2f(%rbp)
 484:	03 00                	add    (%rax),%eax
 486:	00 0e                	add    %cl,(%rsi)
 488:	7e 00                	jle    48a <__abi_tag+0x1c6>
 48a:	00 00                	add    %al,(%rax)
 48c:	01 5d 2f             	add    %ebx,0x2f(%rbp)
 48f:	03 00                	add    (%rax),%eax
 491:	00 0e                	add    %cl,(%rsi)
 493:	f2 00 00             	repnz add %al,(%rax)
 496:	00 01                	add    %al,(%rcx)
 498:	5d                   	pop    %rbp
 499:	d9 02                	flds   (%rdx)
 49b:	00 00                	add    %al,(%rax)
 49d:	0c 3d                	or     $0x3d,%al
 49f:	00 00                	add    %al,(%rax)
 4a1:	00 01                	add    %al,(%rcx)
 4a3:	5f                   	pop    %rdi
 4a4:	db 04 00             	fildl  (%rax,%rax,1)
 4a7:	00 0c b8             	add    %cl,(%rax,%rdi,4)
 4aa:	00 00                	add    %al,(%rax)
 4ac:	00 01                	add    %al,(%rcx)
 4ae:	60                   	(bad)  
 4af:	d9 02                	flds   (%rdx)
 4b1:	00 00                	add    %al,(%rax)
 4b3:	12 0c 80             	adc    (%rax,%rax,4),%cl
 4b6:	00 00                	add    %al,(%rax)
 4b8:	00 01                	add    %al,(%rcx)
 4ba:	62                   	(bad)  
 4bb:	d9 02                	flds   (%rdx)
 4bd:	00 00                	add    %al,(%rax)
 4bf:	00 12                	add    %dl,(%rdx)
 4c1:	0c cc                	or     $0xcc,%al
 4c3:	00 00                	add    %al,(%rax)
 4c5:	00 01                	add    %al,(%rcx)
 4c7:	70 d9                	jo     4a2 <__abi_tag+0x1de>
 4c9:	02 00                	add    (%rax),%al
 4cb:	00 12                	add    %dl,(%rdx)
 4cd:	0c 80                	or     $0x80,%al
 4cf:	00 00                	add    %al,(%rax)
 4d1:	00 01                	add    %al,(%rcx)
 4d3:	72 d9                	jb     4ae <__abi_tag+0x1ea>
 4d5:	02 00                	add    (%rax),%al
 4d7:	00 00                	add    %al,(%rax)
 4d9:	00 00                	add    %al,(%rax)
 4db:	14 39                	adc    $0x39,%al
 4dd:	03 00                	add    (%rax),%eax
 4df:	00 15 ac 03 00 00    	add    %dl,0x3ac(%rip)        # 891 <__abi_tag+0x5cd>
 4e5:	08 00                	or     %al,(%rax)
 4e7:	09 e0                	or     %esp,%eax
 4e9:	16                   	(bad)  
 4ea:	00 00                	add    %al,(%rax)
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 00                	add    %al,(%rax)
 4f0:	f7 07 00 00 01 57    	testl  $0x57010000,(%rdi)
 4f6:	ef                   	out    %eax,(%dx)
 4f7:	00 00                	add    %al,(%rax)
 4f9:	00 01                	add    %al,(%rcx)
 4fb:	9e                   	sahf   
 4fc:	e0 02                	loopne 500 <__abi_tag+0x23c>
 4fe:	00 00                	add    %al,(%rax)
 500:	17                   	(bad)  
 501:	a3 07 00 00 61 00 00 	movabs %eax,0x100000061000007
 508:	00 01 
 50a:	9e                   	sahf   
 50b:	e0 02                	loopne 50f <__abi_tag+0x24b>
 50d:	00 00                	add    %al,(%rax)
 50f:	17                   	(bad)  
 510:	05 08 00 00 66       	add    $0x66000008,%eax
 515:	00 00                	add    %al,(%rax)
 517:	00 01                	add    %al,(%rcx)
 519:	9e                   	sahf   
 51a:	e7 02                	out    %eax,$0x2
 51c:	00 00                	add    %al,(%rax)
 51e:	0b d3                	or     %ebx,%edx
 520:	08 00                	or     %al,(%rax)
 522:	00 f2                	add    %dh,%dl
 524:	00 00                	add    %al,(%rax)
 526:	00 01                	add    %al,(%rcx)
 528:	a3 d9 02 00 00 0b 0b 	movabs %eax,0x90b0b000002d9
 52f:	09 00 
 531:	00 75 00             	add    %dh,0x0(%rbp)
 534:	00 00                	add    %al,(%rax)
 536:	01 a6 34 03 00 00    	add    %esp,0x334(%rsi)
 53c:	0b af 09 00 00 7e    	or     0x7e000009(%rdi),%ebp
 542:	00 00                	add    %al,(%rax)
 544:	00 01                	add    %al,(%rcx)
 546:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 547:	34 03                	xor    $0x3,%al
 549:	00 00                	add    %al,(%rax)
 54b:	0b dd                	or     %ebp,%ebx
 54d:	0b 00                	or     (%rax),%eax
 54f:	00 f9                	add    %bh,%cl
 551:	00 00                	add    %al,(%rax)
 553:	00 01                	add    %al,(%rcx)
 555:	ad                   	lods   %ds:(%rsi),%eax
 556:	39 03                	cmp    %eax,(%rbx)
 558:	00 00                	add    %al,(%rax)
 55a:	0b e6                	or     %esi,%esp
 55c:	0c 00                	or     $0x0,%al
 55e:	00 fd                	add    %bh,%ch
 560:	00 00                	add    %al,(%rax)
 562:	00 01                	add    %al,(%rcx)
 564:	ae                   	scas   %es:(%rdi),%al
 565:	39 03                	cmp    %eax,(%rbx)
 567:	00 00                	add    %al,(%rax)
 569:	0b fc                	or     %esp,%edi
 56b:	0e                   	(bad)  
 56c:	00 00                	add    %al,(%rax)
 56e:	04 01                	add    $0x1,%al
 570:	00 00                	add    %al,(%rax)
 572:	01 af 39 03 00 00    	add    %ebp,0x339(%rdi)
 578:	0b 5a 0f             	or     0xf(%rdx),%ebx
 57b:	00 00                	add    %al,(%rax)
 57d:	0b 01                	or     (%rcx),%eax
 57f:	00 00                	add    %al,(%rax)
 581:	01 b0 39 03 00 00    	add    %esi,0x339(%rax)
 587:	0b a5 0f 00 00 12    	or     0x1200000f(%rbp),%esp
 58d:	01 00                	add    %eax,(%rax)
 58f:	00 01                	add    %al,(%rcx)
 591:	b1 39                	mov    $0x39,%cl
 593:	03 00                	add    (%rax),%eax
 595:	00 0b                	add    %cl,(%rbx)
 597:	00 10                	add    %dl,(%rax)
 599:	00 00                	add    %al,(%rax)
 59b:	1d 00 00 00 01       	sbb    $0x1000000,%eax
 5a0:	c2 34 03             	retq   $0x334
 5a3:	00 00                	add    %al,(%rax)
 5a5:	0b 46 10             	or     0x10(%rsi),%eax
 5a8:	00 00                	add    %al,(%rax)
 5aa:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 5af:	c3                   	retq   
 5b0:	34 03                	xor    $0x3,%al
 5b2:	00 00                	add    %al,(%rax)
 5b4:	18 b6 02 00 00 30    	sbb    %dh,0x30000002(%rsi)
 5ba:	00 00                	add    %al,(%rax)
 5bc:	00 01                	add    %al,(%rcx)
 5be:	a3 1a 03 67 08 00 00 	movabs %eax,0x2c200000867031a
 5c5:	c2 02 
 5c7:	00 00                	add    %al,(%rax)
 5c9:	03 9d 08 00 00 cd    	add    -0x32fffff8(%rbp),%ebx
 5cf:	02 00                	add    (%rax),%al
 5d1:	00 00                	add    %al,(%rax)
 5d3:	18 f8                	sbb    %bh,%al
 5d5:	02 00                	add    (%rax),%al
 5d7:	00 60 00             	add    %ah,0x0(%rax)
 5da:	00 00                	add    %al,(%rax)
 5dc:	01 aa 03 03 d2 09    	add    %ebp,0x9d20303(%rdx)
 5e2:	00 00                	add    %al,(%rax)
 5e4:	00 03                	add    %al,(%rbx)
 5e6:	00 00                	add    %al,(%rax)
 5e8:	03 79 09             	add    0x9(%rcx),%edi
 5eb:	00 00                	add    %al,(%rax)
 5ed:	0b 03                	or     (%rbx),%eax
 5ef:	00 00                	add    %al,(%rax)
 5f1:	03 08                	add    (%rax),%ecx
 5f3:	0a 00                	or     (%rax),%al
 5f5:	00 16                	add    %dl,(%rsi)
 5f7:	03 00                	add    (%rax),%eax
 5f9:	00 06                	add    %al,(%rsi)
 5fb:	a0 00 00 00 05 2e 09 	movabs 0x92e05000000,%al
 602:	00 00 
 604:	22 03                	and    (%rbx),%al
 606:	00 00                	add    %al,(%rax)
 608:	00 00                	add    %al,(%rax)
 60a:	18 40 03             	sbb    %al,0x3(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	e0 00                	loopne 611 <__abi_tag+0x34d>
 611:	00 00                	add    %al,(%rax)
 613:	01 ae 13 03 00 0c    	add    %ebp,0xc000313(%rsi)
 619:	00 00                	add    %al,(%rax)
 61b:	4c 03 00             	add    (%rax),%r8
 61e:	00 03                	add    %al,(%rbx)
 620:	23 0c 00             	and    (%rax,%rax,1),%ecx
 623:	00 57 03             	add    %dl,0x3(%rdi)
 626:	00 00                	add    %al,(%rax)
 628:	03 46 0c             	add    0xc(%rsi),%eax
 62b:	00 00                	add    %al,(%rax)
 62d:	62 03                	(bad)  
 62f:	00 00                	add    %al,(%rax)
 631:	05 3e 0a 00 00       	add    $0xa3e,%eax
 636:	6d                   	insl   (%dx),%es:(%rdi)
 637:	03 00                	add    (%rax),%eax
 639:	00 07                	add    %al,(%rdi)
 63b:	33 19                	xor    (%rcx),%ebx
 63d:	00 00                	add    %al,(%rax)
 63f:	00 00                	add    %al,(%rax)
 641:	00 00                	add    %al,(%rax)
 643:	31 00                	xor    %eax,(%rax)
 645:	00 00                	add    %al,(%rax)
 647:	05 69 0c 00 00       	add    $0xc69,%eax
 64c:	79 03                	jns    651 <__abi_tag+0x38d>
 64e:	00 00                	add    %al,(%rax)
 650:	00 07                	add    %al,(%rdi)
 652:	6a 19                	pushq  $0x19
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	00 00                	add    %al,(%rax)
 65a:	50                   	push   %rax
 65b:	00 00                	add    %al,(%rax)
 65d:	00 05 c3 0c 00 00    	add    %al,0xcc3(%rip)        # 1326 <dotprod_4x+0x36>
 663:	86 03                	xchg   %al,(%rbx)
 665:	00 00                	add    %al,(%rax)
 667:	07                   	(bad)  
 668:	6a 19                	pushq  $0x19
 66a:	00 00                	add    %al,(%rax)
 66c:	00 00                	add    %al,(%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	32 00                	xor    (%rax),%al
 672:	00 00                	add    %al,(%rax)
 674:	05 8c 0c 00 00       	add    $0xc8c,%eax
 679:	92                   	xchg   %eax,%edx
 67a:	03 00                	add    (%rax),%eax
 67c:	00 00                	add    %al,(%rax)
 67e:	00 00                	add    %al,(%rax)
 680:	19 b3 03 00 00 81    	sbb    %esi,-0x7efffffd(%rbx)
 686:	18 00                	sbb    %al,(%rax)
 688:	00 00                	add    %al,(%rax)
 68a:	00 00                	add    %al,(%rax)
 68c:	00 a6 00 00 00 01    	add    %ah,0x1000000(%rsi)
 692:	ad                   	lods   %ds:(%rsi),%eax
 693:	10 05 5b 0b 00 00    	adc    %al,0xb5b(%rip)        # 11f4 <dotprod+0x44>
 699:	e0 03                	loopne 69e <__abi_tag+0x3da>
 69b:	00 00                	add    %al,(%rax)
 69d:	07                   	(bad)  
 69e:	81 18 00 00 00 00    	sbbl   $0x0,(%rax)
 6a4:	00 00                	add    %al,(%rax)
 6a6:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 6a7:	00 00                	add    %al,(%rax)
 6a9:	00 05 e0 0a 00 00    	add    %al,0xae0(%rip)        # 118f <parse_args+0xf>
 6af:	ec                   	in     (%dx),%al
 6b0:	03 00                	add    (%rax),%eax
 6b2:	00 00                	add    %al,(%rax)
 6b4:	00 19                	add    %bl,(%rcx)
 6b6:	f9                   	stc    
 6b7:	03 00                	add    (%rax),%eax
 6b9:	00 cd                	add    %cl,%ch
 6bb:	19 00                	sbb    %eax,(%rax)
 6bd:	00 00                	add    %al,(%rax)
 6bf:	00 00                	add    %al,(%rax)
 6c1:	00 c8                	add    %cl,%al
 6c3:	00 00                	add    %al,(%rax)
 6c5:	00 01                	add    %al,(%rcx)
 6c7:	af                   	scas   %es:(%rdi),%eax
 6c8:	13 03                	adc    (%rbx),%eax
 6ca:	7c 0e                	jl     6da <__abi_tag+0x416>
 6cc:	00 00                	add    %al,(%rax)
 6ce:	05 04 00 00 03       	add    $0x3000004,%eax
 6d3:	59                   	pop    %rcx
 6d4:	0e                   	(bad)  
 6d5:	00 00                	add    %al,(%rax)
 6d7:	10 04 00             	adc    %al,(%rax,%rax,1)
 6da:	00 03                	add    %al,(%rbx)
 6dc:	36 0e                	ss (bad) 
 6de:	00 00                	add    %al,(%rax)
 6e0:	1b 04 00             	sbb    (%rax,%rax,1),%eax
 6e3:	00 08                	add    %cl,(%rax)
 6e5:	26 04 00             	es add $0x0,%al
 6e8:	00 05 8e 0d 00 00    	add    %al,0xd8e(%rip)        # 147c <dotprod_8x+0xbc>
 6ee:	31 04 00             	xor    %eax,(%rax,%rax,1)
 6f1:	00 07                	add    %al,(%rdi)
 6f3:	cd 19                	int    $0x19
 6f5:	00 00                	add    %al,(%rax)
 6f7:	00 00                	add    %al,(%rax)
 6f9:	00 00                	add    %al,(%rax)
 6fb:	5e                   	pop    %rsi
 6fc:	00 00                	add    %al,(%rax)
 6fe:	00 05 57 0d 00 00    	add    %al,0xd57(%rip)        # 145b <dotprod_8x+0x9b>
 704:	3d 04 00 00 00       	cmp    $0x4,%eax
 709:	07                   	(bad)  
 70a:	39 1a                	cmp    %ebx,(%rdx)
 70c:	00 00                	add    %al,(%rax)
 70e:	00 00                	add    %al,(%rax)
 710:	00 00                	add    %al,(%rax)
 712:	3e 00 00             	add    %al,%ds:(%rax)
 715:	00 05 9f 0e 00 00    	add    %al,0xe9f(%rip)        # 15ba <dotprod_16x+0x9a>
 71b:	4a 04 00             	rex.WX add $0x0,%al
 71e:	00 07                	add    %al,(%rdi)
 720:	39 1a                	cmp    %ebx,(%rdx)
 722:	00 00                	add    %al,(%rax)
 724:	00 00                	add    %al,(%rax)
 726:	00 00                	add    %al,(%rax)
 728:	3e 00 00             	add    %al,%ds:(%rax)
 72b:	00 05 c4 0e 00 00    	add    %al,0xec4(%rip)        # 15f5 <dotprod_16x+0xd5>
 731:	56                   	push   %rsi
 732:	04 00                	add    $0x0,%al
 734:	00 00                	add    %al,(%rax)
 736:	00 00                	add    %al,(%rax)
 738:	19 f8                	sbb    %edi,%eax
 73a:	02 00                	add    (%rax),%al
 73c:	00 66 1b             	add    %ah,0x1b(%rsi)
 73f:	00 00                	add    %al,(%rax)
 741:	00 00                	add    %al,(%rax)
 743:	00 00                	add    %al,(%rax)
 745:	53                   	push   %rbx
 746:	00 00                	add    %al,(%rax)
 748:	00 01                	add    %al,(%rcx)
 74a:	c6 03 03             	movb   $0x3,(%rbx)
 74d:	dd 0f                	fisttpll (%rdi)
 74f:	00 00                	add    %al,(%rax)
 751:	00 03                	add    %al,(%rbx)
 753:	00 00                	add    %al,(%rax)
 755:	03 23                	add    (%rbx),%esp
 757:	10 00                	adc    %al,(%rax)
 759:	00 0b                	add    %cl,(%rbx)
 75b:	03 00                	add    (%rax),%eax
 75d:	00 03                	add    %al,(%rbx)
 75f:	8d 10                	lea    (%rax),%edx
 761:	00 00                	add    %al,(%rax)
 763:	16                   	(bad)  
 764:	03 00                	add    (%rax),%eax
 766:	00 07                	add    %al,(%rdi)
 768:	66 1b 00             	sbb    (%rax),%ax
 76b:	00 00                	add    %al,(%rax)
 76d:	00 00                	add    %al,(%rax)
 76f:	00 53 00             	add    %dl,0x0(%rbx)
 772:	00 00                	add    %al,(%rax)
 774:	05 69 10 00 00       	add    $0x1069,%eax
 779:	22 03                	and    (%rbx),%al
 77b:	00 00                	add    %al,(%rax)
 77d:	00 00                	add    %al,(%rax)
 77f:	19 b3 03 00 00 c2    	sbb    %esi,-0x3dfffffd(%rbx)
 785:	1b 00                	sbb    (%rax),%eax
 787:	00 00                	add    %al,(%rax)
 789:	00 00                	add    %al,(%rax)
 78b:	00 6b 00             	add    %ch,0x0(%rbx)
 78e:	00 00                	add    %al,(%rax)
 790:	01 c9                	add    %ecx,%ecx
 792:	09 05 b2 10 00 00    	or     %eax,0x10b2(%rip)        # 184a <main+0x16a>
 798:	e0 03                	loopne 79d <__abi_tag+0x4d9>
 79a:	00 00                	add    %al,(%rax)
 79c:	07                   	(bad)  
 79d:	c2 1b 00             	retq   $0x1b
 7a0:	00 00                	add    %al,(%rax)
 7a2:	00 00                	add    %al,(%rax)
 7a4:	00 6b 00             	add    %ch,0x0(%rbx)
 7a7:	00 00                	add    %al,(%rax)
 7a9:	08 ec                	or     %ch,%ah
 7ab:	03 00                	add    (%rax),%eax
 7ad:	00 00                	add    %al,(%rax)
 7af:	00 18                	add    %bl,(%rax)
 7b1:	40 03 00             	rex add (%rax),%eax
 7b4:	00 10                	add    %dl,(%rax)
 7b6:	01 00                	add    %eax,(%rax)
 7b8:	00 01                	add    %al,(%rcx)
 7ba:	ca 0c 08             	lret   $0x80c
 7bd:	6d                   	insl   (%dx),%es:(%rdi)
 7be:	03 00                	add    (%rax),%eax
 7c0:	00 07                	add    %al,(%rdi)
 7c2:	3e 1c 00             	ds sbb $0x0,%al
 7c5:	00 00                	add    %al,(%rax)
 7c7:	00 00                	add    %al,(%rax)
 7c9:	00 6d 00             	add    %ch,0x0(%rbp)
 7cc:	00 00                	add    %al,(%rax)
 7ce:	08 79 03             	or     %bh,0x3(%rcx)
 7d1:	00 00                	add    %al,(%rax)
 7d3:	00 00                	add    %al,(%rax)
 7d5:	18 f9                	sbb    %bh,%cl
 7d7:	03 00                	add    (%rax),%eax
 7d9:	00 40 01             	add    %al,0x1(%rax)
 7dc:	00 00                	add    %al,(%rax)
 7de:	01 cb                	add    %ecx,%ebx
 7e0:	0c 05                	or     $0x5,%al
 7e2:	48 11 00             	adc    %rax,(%rax)
 7e5:	00 31                	add    %dh,(%rcx)
 7e7:	04 00                	add    $0x0,%al
 7e9:	00 07                	add    %al,(%rdi)
 7eb:	b5 1c                	mov    $0x1c,%ch
 7ed:	00 00                	add    %al,(%rax)
 7ef:	00 00                	add    %al,(%rax)
 7f1:	00 00                	add    %al,(%rax)
 7f3:	61                   	(bad)  
 7f4:	00 00                	add    %al,(%rax)
 7f6:	00 05 82 11 00 00    	add    %al,0x1182(%rip)        # 197e <main+0x29e>
 7fc:	3d 04 00 00 00       	cmp    $0x4,%eax
 801:	06                   	(bad)  
 802:	a0 01 00 00 05 cf 11 	movabs 0x11cf05000001,%al
 809:	00 00 
 80b:	4a 04 00             	rex.WX add $0x0,%al
 80e:	00 06                	add    %al,(%rsi)
 810:	70 01                	jo     813 <__abi_tag+0x54f>
 812:	00 00                	add    %al,(%rax)
 814:	05 f6 11 00 00       	add    $0x11f6,%eax
 819:	56                   	push   %rsi
 81a:	04 00                	add    $0x0,%al
 81c:	00 00                	add    %al,(%rax)
 81e:	00 00                	add    %al,(%rax)
 820:	18 70 04             	sbb    %dh,0x4(%rax)
 823:	00 00                	add    %al,(%rax)
 825:	d0 01                	rolb   (%rcx)
 827:	00 00                	add    %al,(%rax)
 829:	01 cc                	add    %ecx,%esp
 82b:	0c 03                	or     $0x3,%al
 82d:	17                   	(bad)  
 82e:	13 00                	adc    (%rax),%eax
 830:	00 7c 04 00          	add    %bh,0x0(%rsp,%rax,1)
 834:	00 03                	add    %al,(%rbx)
 836:	f4                   	hlt    
 837:	12 00                	adc    (%rax),%al
 839:	00 87 04 00 00 03    	add    %al,0x3000004(%rdi)
 83f:	cf                   	iret   
 840:	12 00                	adc    (%rax),%al
 842:	00 92 04 00 00 05    	add    %dl,0x5000004(%rdx)
 848:	45 12 00             	adc    (%r8),%r8b
 84b:	00 9d 04 00 00 05    	add    %bl,0x5000004(%rbp)
 851:	ab                   	stos   %eax,%es:(%rdi)
 852:	12 00                	adc    (%rax),%al
 854:	00 a8 04 00 00 07    	add    %ch,0x7000004(%rax)
 85a:	54                   	push   %rsp
 85b:	1d 00 00 00 00       	sbb    $0x0,%eax
 860:	00 00                	add    %al,(%rax)
 862:	5d                   	pop    %rbp
 863:	00 00                	add    %al,(%rax)
 865:	00 05 87 12 00 00    	add    %al,0x1287(%rip)        # 1af2 <main+0x412>
 86b:	b4 04                	mov    $0x4,%ah
 86d:	00 00                	add    %al,(%rax)
 86f:	00 00                	add    %al,(%rax)
 871:	1a 8c 09 00 00 1a 17 	sbb    0x171a0000(%rcx,%rcx,1),%cl
 878:	00 00                	add    %al,(%rax)
 87a:	00 00                	add    %al,(%rax)
 87c:	00 00                	add    %al,(%rax)
 87e:	1b 01                	sbb    (%rcx),%eax
 880:	54                   	push   %rsp
 881:	02 73 00             	add    0x0(%rbx),%dh
 884:	1b 01                	sbb    (%rcx),%eax
 886:	55                   	push   %rbp
 887:	02 10                	add    (%rax),%dl
 889:	40 00 1a             	add    %bl,(%rdx)
 88c:	8c 09                	mov    %cs,(%rcx)
 88e:	00 00                	add    %al,(%rax)
 890:	2a 17                	sub    (%rdi),%dl
 892:	00 00                	add    %al,(%rax)
 894:	00 00                	add    %al,(%rax)
 896:	00 00                	add    %al,(%rax)
 898:	1b 01                	sbb    (%rcx),%eax
 89a:	54                   	push   %rsp
 89b:	02 73 00             	add    0x0(%rbx),%dh
 89e:	1b 01                	sbb    (%rcx),%eax
 8a0:	55                   	push   %rbp
 8a1:	02 10                	add    (%rax),%dl
 8a3:	40 00 1a             	add    %bl,(%rdx)
 8a6:	88 01                	mov    %al,(%rcx)
 8a8:	00 00                	add    %al,(%rax)
 8aa:	a3 1a 00 00 00 00 00 	movabs %eax,0x1b0000000000001a
 8b1:	00 1b 
 8b3:	01 51 02             	add    %edx,0x2(%rcx)
 8b6:	7f 00                	jg     8b8 <__abi_tag+0x5f4>
 8b8:	1b 01                	sbb    (%rcx),%eax
 8ba:	54                   	push   %rsp
 8bb:	02 73 00             	add    0x0(%rbx),%dh
 8be:	1b 01                	sbb    (%rcx),%eax
 8c0:	55                   	push   %rbp
 8c1:	02 7e 00             	add    0x0(%rsi),%bh
 8c4:	00 1a                	add    %bl,(%rdx)
 8c6:	04 02                	add    $0x2,%al
 8c8:	00 00                	add    %al,(%rax)
 8ca:	b6 1a                	mov    $0x1a,%dh
 8cc:	00 00                	add    %al,(%rax)
 8ce:	00 00                	add    %al,(%rax)
 8d0:	00 00                	add    %al,(%rax)
 8d2:	1b 01                	sbb    (%rcx),%eax
 8d4:	51                   	push   %rcx
 8d5:	02 7f 00             	add    0x0(%rdi),%bh
 8d8:	1b 01                	sbb    (%rcx),%eax
 8da:	54                   	push   %rsp
 8db:	02 73 00             	add    0x0(%rbx),%dh
 8de:	1b 01                	sbb    (%rcx),%eax
 8e0:	55                   	push   %rbp
 8e1:	02 7e 00             	add    0x0(%rsi),%bh
 8e4:	00 1a                	add    %bl,(%rdx)
 8e6:	ab                   	stos   %eax,%es:(%rdi)
 8e7:	09 00                	or     %eax,(%rax)
 8e9:	00 25 1b 00 00 00    	add    %ah,0x1b(%rip)        # 90a <__abi_tag+0x646>
 8ef:	00 00                	add    %al,(%rax)
 8f1:	00 1b                	add    %bl,(%rbx)
 8f3:	01 55 02             	add    %edx,0x2(%rbp)
 8f6:	7e 00                	jle    8f8 <__abi_tag+0x634>
 8f8:	00 1a                	add    %bl,(%rdx)
 8fa:	ab                   	stos   %eax,%es:(%rdi)
 8fb:	09 00                	or     %eax,(%rax)
 8fd:	00 2d 1b 00 00 00    	add    %ch,0x1b(%rip)        # 91e <__abi_tag+0x65a>
 903:	00 00                	add    %al,(%rax)
 905:	00 1b                	add    %bl,(%rbx)
 907:	01 55 02             	add    %edx,0x2(%rbp)
 90a:	73 00                	jae    90c <__abi_tag+0x648>
 90c:	00 1a                	add    %bl,(%rdx)
 90e:	8c 09                	mov    %cs,(%rcx)
 910:	00 00                	add    %al,(%rax)
 912:	3c 1b                	cmp    $0x1b,%al
 914:	00 00                	add    %al,(%rax)
 916:	00 00                	add    %al,(%rax)
 918:	00 00                	add    %al,(%rax)
 91a:	1b 01                	sbb    (%rcx),%eax
 91c:	54                   	push   %rsp
 91d:	03 10                	add    (%rax),%edx
 91f:	a0 06 1b 01 55 02 10 	movabs 0x40100255011b06,%al
 926:	40 00 
 928:	1a 8c 09 00 00 4e 1b 	sbb    0x1b4e0000(%rcx,%rcx,1),%cl
 92f:	00 00                	add    %al,(%rax)
 931:	00 00                	add    %al,(%rax)
 933:	00 00                	add    %al,(%rax)
 935:	1b 01                	sbb    (%rcx),%eax
 937:	54                   	push   %rsp
 938:	03 10                	add    (%rax),%edx
 93a:	a0 06 1b 01 55 02 10 	movabs 0x40100255011b06,%al
 941:	40 00 
 943:	1a 04 02             	sbb    (%rdx,%rax,1),%al
 946:	00 00                	add    %al,(%rax)
 948:	4c 1e                	rex.WR (bad) 
 94a:	00 00                	add    %al,(%rax)
 94c:	00 00                	add    %al,(%rax)
 94e:	00 00                	add    %al,(%rax)
 950:	1b 01                	sbb    (%rcx),%eax
 952:	54                   	push   %rsp
 953:	02 73 00             	add    0x0(%rbx),%dh
 956:	1b 01                	sbb    (%rcx),%eax
 958:	55                   	push   %rbp
 959:	02 7e 00             	add    0x0(%rsi),%bh
 95c:	1b 01                	sbb    (%rcx),%eax
 95e:	51                   	push   %rcx
 95f:	02 10                	add    (%rax),%dl
 961:	64 00 1a             	add    %bl,%fs:(%rdx)
 964:	ab                   	stos   %eax,%es:(%rdi)
 965:	09 00                	or     %eax,(%rax)
 967:	00 b9 1e 00 00 00    	add    %bh,0x1e(%rcx)
 96d:	00 00                	add    %al,(%rax)
 96f:	00 1b                	add    %bl,(%rbx)
 971:	01 55 02             	add    %edx,0x2(%rbp)
 974:	7e 00                	jle    976 <__abi_tag+0x6b2>
 976:	00 1a                	add    %bl,(%rdx)
 978:	ab                   	stos   %eax,%es:(%rdi)
 979:	09 00                	or     %eax,(%rax)
 97b:	00 c1                	add    %al,%cl
 97d:	1e                   	(bad)  
 97e:	00 00                	add    %al,(%rax)
 980:	00 00                	add    %al,(%rax)
 982:	00 00                	add    %al,(%rax)
 984:	1b 01                	sbb    (%rcx),%eax
 986:	55                   	push   %rbp
 987:	02 73 00             	add    0x0(%rbx),%dh
 98a:	00 00                	add    %al,(%rax)
 98c:	1c d0                	sbb    $0xd0,%al
 98e:	00 00                	add    %al,(%rax)
 990:	00 02                	add    %al,(%rdx)
 992:	4a 02 a3 09 00 00 1d 	rex.WX add 0x1d000009(%rbx),%spl
 999:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 99a:	09 00                	or     %eax,(%rax)
 99c:	00 1d a4 09 00 00    	add    %bl,0x9a4(%rip)        # 1346 <dotprod_4x+0x56>
 9a2:	00 1e                	add    %bl,(%rsi)
 9a4:	0f 4f 00             	cmovg  (%rax),%eax
 9a7:	00 00                	add    %al,(%rax)
 9a9:	07                   	(bad)  
 9aa:	08 1f                	or     %bl,(%rdi)
 9ac:	de 00                	fiadds (%rax)
 9ae:	00 00                	add    %al,(%rax)
 9b0:	02 35 02 1d a3 09    	add    0x9a31d02(%rip),%dh        # 9a326b8 <_end+0x9a2e660>
 9b6:	00 00                	add    %al,(%rax)
 9b8:	00 14 39             	add    %dl,(%rcx,%rdi,1)
 9bb:	03 00                	add    (%rax),%eax
 9bd:	00 15 ac 03 00 00    	add    %dl,0x3ac(%rip)        # d6f <__abi_tag+0xaab>
 9c3:	10 00                	adc    %al,(%rax)
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
   0:	b4 06                	mov    $0x6,%ah
   2:	00 00                	add    %al,(%rax)
   4:	04 00                	add    $0x0,%al
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
 390:	69 05 0a 06 4a 05 23 	imul   $0x99030623,0x54a060a(%rip),%eax        # 54a09a4 <_end+0x549c94c>
 397:	06 03 99 
 39a:	01 e4                	add    %esp,%esp
 39c:	05 0f 06 82 06       	add    $0x682060f,%eax
 3a1:	f3 05 24 03 ec 7e    	repz add $0x7eec0324,%eax
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
 527:	05 13 06 03 b0       	add    $0xb0030613,%eax
 52c:	01 66 06             	add    %esp,0x6(%rsi)
 52f:	03 d0                	add    %eax,%edx
 531:	7e d6                	jle    509 <__abi_tag+0x245>
 533:	05 14 06 03 b1       	add    $0xb1030614,%eax
 538:	01 58 06             	add    %ebx,0x6(%rax)
 53b:	03 cf                	add    %edi,%ecx
 53d:	7e d6                	jle    515 <__abi_tag+0x251>
 53f:	05 03 06 03 b4       	add    $0xb4030603,%eax
 544:	01 66 08             	add    %esp,0x8(%rsi)
 547:	3d 08 2f 08 2f       	cmp    $0x2f082f08,%eax
 54c:	08 2f                	or     %ch,(%rdi)
 54e:	08 3f                	or     %bh,(%rdi)
 550:	83 05 0f 88 08 21 06 	addl   $0x6,0x2108880f(%rip)        # 21088d66 <_end+0x21084d0e>
 557:	03 bd 7e 08 20 05    	add    0x520087e(%rbp),%edi
 55d:	0c 06                	or     $0x6,%al
 55f:	03 15 08 d6 75 65    	add    0x6575d608(%rip),%edx        # 6575db6d <_end+0x65759b15>
 565:	75 65                	jne    5cc <__abi_tag+0x308>
 567:	75 65                	jne    5ce <__abi_tag+0x30a>
 569:	75 65                	jne    5d0 <__abi_tag+0x30c>
 56b:	67 05 2a 55 06 03    	addr32 add $0x306552a,%eax
 571:	6d                   	insl   (%dx),%es:(%rdi)
 572:	9e                   	sahf   
 573:	05 0a 06 03 20       	add    $0x2003060a,%eax
 578:	08 66 05             	or     %ah,0x5(%rsi)
 57b:	0f 06                	clts   
 57d:	d6                   	(bad)  
 57e:	05 07 ba 05 0a       	add    $0xa05ba07,%eax
 583:	4a 05 0f 74 05 07    	rex.WX add $0x705740f,%rax
 589:	66 05 0a 4a          	add    $0x4a0a,%ax
 58d:	05 0f 74 05 07       	add    $0x705740f,%eax
 592:	66 05 0a 4a          	add    $0x4a0a,%ax
 596:	05 0f 66 05 07       	add    $0x705660f,%eax
 59b:	58                   	pop    %rax
 59c:	05 24 06 81 05       	add    $0x5810624,%eax
 5a1:	03 06                	add    (%rsi),%eax
 5a3:	82                   	(bad)  
 5a4:	03 61 2e             	add    0x2e(%rcx),%esp
 5a7:	05 0c 06 03 3b       	add    $0x3b03060c,%eax
 5ac:	08 2e                	or     %ch,(%rsi)
 5ae:	05 11 06 08 d6       	add    $0xd6080611,%eax
 5b3:	05 09 66 05 11       	add    $0x11056609,%eax
 5b8:	4a 05 09 66 05 11    	rex.WX add $0x11056609,%rax
 5be:	4a 05 09 e4 05 0c    	rex.WX add $0xc05e409,%rax
 5c4:	4a 05 11 9e 05 09    	rex.WX add $0x9059e11,%rax
 5ca:	90                   	nop
 5cb:	05 28 06 80 05       	add    $0x5800628,%eax
 5d0:	07                   	(bad)  
 5d1:	06                   	(bad)  
 5d2:	82                   	(bad)  
 5d3:	03 47 2e             	add    0x2e(%rdi),%eax
 5d6:	05 0f 06 03 cb       	add    $0xcb03060f,%eax
 5db:	00 08                	add    %cl,(%rax)
 5dd:	4a 68 05 14 72 05    	rex.WX pushq $0x5721405
 5e3:	0c 06                	or     $0x6,%al
 5e5:	58                   	pop    %rax
 5e6:	05 18 06 4c 05       	add    $0x54c0618,%eax
 5eb:	0c 06                	or     $0x6,%al
 5ed:	66 05 24 06          	add    $0x624,%ax
 5f1:	46 05 03 06 4a 05    	rex.RX add $0x54a0603,%eax
 5f7:	0f 06                	clts   
 5f9:	30 76 05             	xor    %dh,0x5(%rsi)
 5fc:	14 72                	adc    $0x72,%al
 5fe:	05 0c 06 66 05       	add    $0x566060c,%eax
 603:	18 06                	sbb    %al,(%rsi)
 605:	4c 05 0c 06 66 05    	rex.WR add $0x566060c,%rax
 60b:	2b 06                	sub    (%rsi),%eax
 60d:	46 06                	rex.RX (bad) 
 60f:	03 b7 7f 4a 05 0c    	add    0xc054a7f(%rdi),%esi
 615:	06                   	(bad)  
 616:	03 d6                	add    %esi,%edx
 618:	00 9e 05 13 06 90    	add    %bl,-0x6ff9ecfb(%rsi)
 61e:	05 0c 90 05 13       	add    $0x1305900c,%eax
 623:	90                   	nop
 624:	03 aa 7f 08 3c 05    	add    0x53c087f(%rdx),%ebp
 62a:	0f 06                	clts   
 62c:	03 e4                	add    %esp,%esp
 62e:	00 08                	add    %cl,(%rax)
 630:	9e                   	sahf   
 631:	76 76                	jbe    6a9 <__abi_tag+0x3e5>
 633:	76 05                	jbe    63a <__abi_tag+0x376>
 635:	14 03                	adc    $0x3,%al
 637:	7a 74                	jp     6ad <__abi_tag+0x3e9>
 639:	05 0c 06 66 05       	add    $0x566060c,%eax
 63e:	18 06                	sbb    %al,(%rsi)
 640:	4c 05 0c 06 66 05    	rex.WR add $0x566060c,%rax
 646:	18 06                	sbb    %al,(%rsi)
 648:	5a                   	pop    %rdx
 649:	68 05 0c 64 5a       	pushq  $0x5a640c05
 64e:	05 24 03 78 58       	add    $0x58780324,%eax
 653:	05 03 06 82 05       	add    $0x5820603,%eax
 658:	11 06                	adc    %eax,(%rsi)
 65a:	03 74 2e 05          	add    0x5(%rsi,%rbp,1),%esi
 65e:	09 06                	or     %eax,(%rsi)
 660:	58                   	pop    %rax
 661:	05 11 58 05 09       	add    $0x9055811,%eax
 666:	58                   	pop    %rax
 667:	05 0f 06 e7 05       	add    $0x5e7060f,%eax
 66c:	16                   	(bad)  
 66d:	06                   	(bad)  
 66e:	90                   	nop
 66f:	05 1d 4a 03 a7       	add    $0xa7034a1d,%eax
 674:	7f 82                	jg     5f8 <__abi_tag+0x334>
 676:	05 13 06 03 3f       	add    $0x3f030613,%eax
 67b:	66 06                	data16 (bad) 
 67d:	03 41 ba             	add    -0x46(%rcx),%eax
 680:	05 39 06 03 f6       	add    $0xf6030639,%eax
 685:	00 66 06             	add    %ah,0x6(%rsi)
 688:	03 8a 7f 02 39 01    	add    0x139027f(%rdx),%ecx
 68e:	05 0d 06 03 cd       	add    $0xcd03060d,%eax
 693:	01 74 06 03          	add    %esi,0x3(%rsi,%rax,1)
 697:	b3 7e                	mov    $0x7e,%bl
 699:	f2 05 03 06 03 d0    	repnz add $0xd0030603,%eax
 69f:	01 58 08             	add    %ebx,0x8(%rax)
 6a2:	3d 08 2f 08 2f       	cmp    $0x2f082f08,%eax
 6a7:	08 2f                	or     %ch,(%rdi)
 6a9:	08 31                	or     %dh,(%rcx)
 6ab:	83 84 05 05 03 b1 7e 	addl   $0xffffffba,0x7eb10305(%rbp,%rax,1)
 6b2:	ba 
 6b3:	02 0a                	add    (%rdx),%cl
 6b5:	00 01                	add    %al,(%rcx)
 6b7:	01                   	.byte 0x1

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
  c1:	64 6f                	outsl  %fs:(%rsi),(%dx)
  c3:	74 70                	je     135 <__abi_tag-0x18f>
  c5:	72 6f                	jb     136 <__abi_tag-0x18e>
  c7:	64 5f                	fs pop %rdi
  c9:	38 78 00             	cmp    %bh,0x0(%rax)
  cc:	6e                   	outsb  %ds:(%rsi),(%dx)
  cd:	5f                   	pop    %rdi
  ce:	38 00                	cmp    %al,(%rax)
  d0:	61                   	(bad)  
  d1:	6c                   	insb   (%dx),%es:(%rdi)
  d2:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
  d9:	6c                   	insb   (%dx),%es:(%rdi)
  da:	6c                   	insb   (%dx),%es:(%rdi)
  db:	6f                   	outsl  %ds:(%rsi),(%dx)
  dc:	63 00                	movsxd (%rax),%eax
  de:	66 72 65             	data16 jb 146 <__abi_tag-0x17e>
  e1:	65 00 64 6f 74       	add    %ah,%gs:0x74(%rdi,%rbp,2)
  e6:	70 72                	jo     15a <__abi_tag-0x16a>
  e8:	6f                   	outsl  %ds:(%rsi),(%dx)
  e9:	64 5f                	fs pop %rdi
  eb:	31 36                	xor    %esi,(%rsi)
  ed:	78 00                	js     ef <__abi_tag-0x1d5>
  ef:	6d                   	insl   (%dx),%es:(%rdi)
  f0:	61                   	(bad)  
  f1:	69 6e 00 6e 5f 31 36 	imul   $0x36315f6e,0x0(%rsi),%ebp
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
     7be:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     7c4:	00 00                	add    %al,(%rax)
     7c6:	04 00                	add    $0x0,%al
     7c8:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     7cc:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     7d2:	00 00                	add    %al,(%rax)
     7d4:	52                   	push   %rdx
     7d5:	0d 00 00 00 00       	or     $0x0,%eax
     7da:	00 00                	add    %al,(%rax)
     7dc:	01 00                	add    %eax,(%rax)
     7de:	55                   	push   %rbp
     7df:	52                   	push   %rdx
     7e0:	0d 00 00 00 00       	or     $0x0,%eax
     7e5:	00 00                	add    %al,(%rax)
     7e7:	57                   	push   %rdi
     7e8:	0d 00 00 00 00       	or     $0x0,%eax
     7ed:	00 00                	add    %al,(%rax)
     7ef:	04 00                	add    $0x0,%al
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
     820:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     826:	00 00                	add    %al,(%rax)
     828:	04 00                	add    $0x0,%al
     82a:	f3 01 54 9f 4d       	repz add %edx,0x4d(%rdi,%rbx,4)
     82f:	0d 00 00 00 00       	or     $0x0,%eax
     834:	00 00                	add    %al,(%rax)
     836:	57                   	push   %rdi
     837:	0d 00 00 00 00       	or     $0x0,%eax
     83c:	00 00                	add    %al,(%rax)
     83e:	01 00                	add    %eax,(%rax)
     840:	54                   	push   %rsp
     841:	57                   	push   %rdi
     842:	0d 00 00 00 00       	or     $0x0,%eax
     847:	00 00                	add    %al,(%rax)
     849:	57                   	push   %rdi
     84a:	0d 00 00 00 00       	or     $0x0,%eax
     84f:	00 00                	add    %al,(%rax)
     851:	04 00                	add    $0x0,%al
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
     87a:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     880:	00 00                	add    %al,(%rax)
     882:	52                   	push   %rdx
     883:	0d 00 00 00 00       	or     $0x0,%eax
     888:	00 00                	add    %al,(%rax)
     88a:	01 00                	add    %eax,(%rax)
     88c:	55                   	push   %rbp
	...
     89d:	60                   	(bad)  
     89e:	05 00 00 00 00       	add    $0x0,%eax
     8a3:	00 00                	add    %al,(%rax)
     8a5:	78 05                	js     8ac <__abi_tag+0x5e8>
     8a7:	00 00                	add    %al,(%rax)
     8a9:	00 00                	add    %al,(%rax)
     8ab:	00 00                	add    %al,(%rax)
     8ad:	01 00                	add    %eax,(%rax)
     8af:	54                   	push   %rsp
     8b0:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     8b6:	00 00                	add    %al,(%rax)
     8b8:	57                   	push   %rdi
     8b9:	0d 00 00 00 00       	or     $0x0,%eax
     8be:	00 00                	add    %al,(%rax)
     8c0:	01 00                	add    %eax,(%rax)
     8c2:	54                   	push   %rsp
	...
     8d3:	85 05 00 00 00 00    	test   %eax,0x0(%rip)        # 8d9 <__abi_tag+0x615>
     8d9:	00 00                	add    %al,(%rax)
     8db:	ad                   	lods   %ds:(%rsi),%eax
     8dc:	09 00                	or     %eax,(%rax)
     8de:	00 00                	add    %al,(%rax)
     8e0:	00 00                	add    %al,(%rax)
     8e2:	00 01                	add    %al,(%rcx)
     8e4:	00 5f ad             	add    %bl,-0x53(%rdi)
     8e7:	09 00                	or     %eax,(%rax)
     8e9:	00 00                	add    %al,(%rax)
     8eb:	00 00                	add    %al,(%rax)
     8ed:	00 4d 0d             	add    %cl,0xd(%rbp)
     8f0:	00 00                	add    %al,(%rax)
     8f2:	00 00                	add    %al,(%rax)
     8f4:	00 00                	add    %al,(%rax)
     8f6:	03 00                	add    (%rax),%eax
     8f8:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
     908:	00 00                	add    %al,(%rax)
     90a:	00 9d 05 00 00 00    	add    %bl,0x5(%rbp)
     910:	00 00                	add    %al,(%rax)
     912:	00 bf 09 00 00 00    	add    %bh,0x9(%rdi)
     918:	00 00                	add    %al,(%rax)
     91a:	00 01                	add    %al,(%rcx)
     91c:	00 5e 00             	add    %bl,0x0(%rsi)
	...
     92b:	00 00                	add    %al,(%rax)
     92d:	00 ad 05 00 00 00    	add    %ch,0x5(%rbp)
     933:	00 00                	add    %al,(%rax)
     935:	00 bf 05 00 00 00    	add    %bh,0x5(%rdi)
     93b:	00 00                	add    %al,(%rax)
     93d:	00 02                	add    %al,(%rdx)
     93f:	00 30                	add    %dh,(%rax)
     941:	9f                   	lahf   
     942:	d4                   	(bad)  
     943:	05 00 00 00 00       	add    $0x0,%eax
     948:	00 00                	add    %al,(%rax)
     94a:	ea                   	(bad)  
     94b:	06                   	(bad)  
     94c:	00 00                	add    %al,(%rax)
     94e:	00 00                	add    %al,(%rax)
     950:	00 00                	add    %al,(%rax)
     952:	02 00                	add    (%rax),%al
     954:	30 9f ea 06 00 00    	xor    %bl,0x6ea(%rdi)
     95a:	00 00                	add    %al,(%rax)
     95c:	00 00                	add    %al,(%rax)
     95e:	01 07                	add    %eax,(%rdi)
     960:	00 00                	add    %al,(%rax)
     962:	00 00                	add    %al,(%rax)
     964:	00 00                	add    %al,(%rax)
     966:	01 00                	add    %eax,(%rax)
     968:	50                   	push   %rax
	...
     979:	ad                   	lods   %ds:(%rsi),%eax
     97a:	05 00 00 00 00       	add    $0x0,%eax
     97f:	00 00                	add    %al,(%rax)
     981:	bf 05 00 00 00       	mov    $0x5,%edi
     986:	00 00                	add    %al,(%rax)
     988:	00 01                	add    %al,(%rcx)
     98a:	00 53 d4             	add    %dl,-0x2c(%rbx)
     98d:	05 00 00 00 00       	add    $0x0,%eax
     992:	00 00                	add    %al,(%rax)
     994:	01 07                	add    %eax,(%rdi)
     996:	00 00                	add    %al,(%rax)
     998:	00 00                	add    %al,(%rax)
     99a:	00 00                	add    %al,(%rax)
     99c:	01 00                	add    %eax,(%rax)
     99e:	53                   	push   %rbx
	...
     9af:	ad                   	lods   %ds:(%rsi),%eax
     9b0:	05 00 00 00 00       	add    $0x0,%eax
     9b5:	00 00                	add    %al,(%rax)
     9b7:	d1 09                	rorl   (%rcx)
     9b9:	00 00                	add    %al,(%rax)
     9bb:	00 00                	add    %al,(%rax)
     9bd:	00 00                	add    %al,(%rax)
     9bf:	01 00                	add    %eax,(%rax)
     9c1:	53                   	push   %rbx
	...
     9d2:	ad                   	lods   %ds:(%rsi),%eax
     9d3:	05 00 00 00 00       	add    $0x0,%eax
     9d8:	00 00                	add    %al,(%rax)
     9da:	bf 05 00 00 00       	mov    $0x5,%edi
     9df:	00 00                	add    %al,(%rax)
     9e1:	00 01                	add    %al,(%rcx)
     9e3:	00 5e d4             	add    %bl,-0x2c(%rsi)
     9e6:	05 00 00 00 00       	add    $0x0,%eax
     9eb:	00 00                	add    %al,(%rax)
     9ed:	01 07                	add    %eax,(%rdi)
     9ef:	00 00                	add    %al,(%rax)
     9f1:	00 00                	add    %al,(%rax)
     9f3:	00 00                	add    %al,(%rax)
     9f5:	01 00                	add    %eax,(%rax)
     9f7:	5e                   	pop    %rsi
	...
     a08:	ad                   	lods   %ds:(%rsi),%eax
     a09:	05 00 00 00 00       	add    $0x0,%eax
     a0e:	00 00                	add    %al,(%rax)
     a10:	bf 05 00 00 00       	mov    $0x5,%edi
     a15:	00 00                	add    %al,(%rax)
     a17:	00 01                	add    %al,(%rcx)
     a19:	00 5f d4             	add    %bl,-0x2c(%rdi)
     a1c:	05 00 00 00 00       	add    $0x0,%eax
     a21:	00 00                	add    %al,(%rax)
     a23:	01 07                	add    %eax,(%rdi)
     a25:	00 00                	add    %al,(%rax)
     a27:	00 00                	add    %al,(%rax)
     a29:	00 00                	add    %al,(%rax)
     a2b:	01 00                	add    %eax,(%rax)
     a2d:	5f                   	pop    %rdi
	...
     a3e:	cb                   	lret   
     a3f:	05 00 00 00 00       	add    $0x0,%eax
     a44:	00 00                	add    %al,(%rax)
     a46:	cf                   	iret   
     a47:	05 00 00 00 00       	add    $0x0,%eax
     a4c:	00 00                	add    %al,(%rax)
     a4e:	06                   	(bad)  
     a4f:	00 67 93             	add    %ah,-0x6d(%rdi)
     a52:	08 61 93             	or     %ah,-0x6d(%rcx)
     a55:	08 cf                	or     %cl,%bh
     a57:	05 00 00 00 00       	add    $0x0,%eax
     a5c:	00 00                	add    %al,(%rax)
     a5e:	d4                   	(bad)  
     a5f:	05 00 00 00 00       	add    $0x0,%eax
     a64:	00 00                	add    %al,(%rax)
     a66:	05 00 93 08 61       	add    $0x61089300,%eax
     a6b:	93                   	xchg   %eax,%ebx
     a6c:	08 a7 07 00 00 00    	or     %ah,0x7(%rdi)
     a72:	00 00                	add    %al,(%rax)
     a74:	00 b3 07 00 00 00    	add    %dh,0x7(%rbx)
     a7a:	00 00                	add    %al,(%rax)
     a7c:	00 08                	add    %cl,(%rax)
     a7e:	00 30                	add    %dh,(%rax)
     a80:	9f                   	lahf   
     a81:	93                   	xchg   %eax,%ebx
     a82:	08 30                	or     %dh,(%rax)
     a84:	9f                   	lahf   
     a85:	93                   	xchg   %eax,%ebx
     a86:	08 e4                	or     %ah,%ah
     a88:	07                   	(bad)  
     a89:	00 00                	add    %al,(%rax)
     a8b:	00 00                	add    %al,(%rax)
     a8d:	00 00                	add    %al,(%rax)
     a8f:	e8 07 00 00 00       	callq  a9b <__abi_tag+0x7d7>
     a94:	00 00                	add    %al,(%rax)
     a96:	00 06                	add    %al,(%rsi)
     a98:	00 67 93             	add    %ah,-0x6d(%rdi)
     a9b:	08 61 93             	or     %ah,-0x6d(%rcx)
     a9e:	08 e8                	or     %ch,%al
     aa0:	07                   	(bad)  
     aa1:	00 00                	add    %al,(%rax)
     aa3:	00 00                	add    %al,(%rax)
     aa5:	00 00                	add    %al,(%rax)
     aa7:	ea                   	(bad)  
     aa8:	07                   	(bad)  
     aa9:	00 00                	add    %al,(%rax)
     aab:	00 00                	add    %al,(%rax)
     aad:	00 00                	add    %al,(%rax)
     aaf:	05 00 93 08 61       	add    $0x61089300,%eax
     ab4:	93                   	xchg   %eax,%ebx
     ab5:	08 ea                	or     %ch,%dl
     ab7:	07                   	(bad)  
     ab8:	00 00                	add    %al,(%rax)
     aba:	00 00                	add    %al,(%rax)
     abc:	00 00                	add    %al,(%rax)
     abe:	f9                   	stc    
     abf:	07                   	(bad)  
     ac0:	00 00                	add    %al,(%rax)
     ac2:	00 00                	add    %al,(%rax)
     ac4:	00 00                	add    %al,(%rax)
     ac6:	08 00                	or     %al,(%rax)
     ac8:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     ace:	93                   	xchg   %eax,%ebx
     acf:	08 00                	or     %al,(%rax)
	...
     add:	00 00                	add    %al,(%rax)
     adf:	00 26                	add    %ah,(%rsi)
     ae1:	07                   	(bad)  
     ae2:	00 00                	add    %al,(%rax)
     ae4:	00 00                	add    %al,(%rax)
     ae6:	00 00                	add    %al,(%rax)
     ae8:	36 07                	ss (bad) 
     aea:	00 00                	add    %al,(%rax)
     aec:	00 00                	add    %al,(%rax)
     aee:	00 00                	add    %al,(%rax)
     af0:	01 00                	add    %eax,(%rax)
     af2:	52                   	push   %rdx
     af3:	36 07                	ss (bad) 
     af5:	00 00                	add    %al,(%rax)
     af7:	00 00                	add    %al,(%rax)
     af9:	00 00                	add    %al,(%rax)
     afb:	5d                   	pop    %rbp
     afc:	07                   	(bad)  
     afd:	00 00                	add    %al,(%rax)
     aff:	00 00                	add    %al,(%rax)
     b01:	00 00                	add    %al,(%rax)
     b03:	05 00 72 00 31       	add    $0x31007200,%eax
     b08:	21 9f 5d 07 00 00    	and    %ebx,0x75d(%rdi)
     b0e:	00 00                	add    %al,(%rax)
     b10:	00 00                	add    %al,(%rax)
     b12:	6e                   	outsb  %ds:(%rsi),(%dx)
     b13:	07                   	(bad)  
     b14:	00 00                	add    %al,(%rax)
     b16:	00 00                	add    %al,(%rax)
     b18:	00 00                	add    %al,(%rax)
     b1a:	05 00 72 00 32       	add    $0x32007200,%eax
     b1f:	21 9f 6e 07 00 00    	and    %ebx,0x76e(%rdi)
     b25:	00 00                	add    %al,(%rax)
     b27:	00 00                	add    %al,(%rax)
     b29:	76 07                	jbe    b32 <__abi_tag+0x86e>
     b2b:	00 00                	add    %al,(%rax)
     b2d:	00 00                	add    %al,(%rax)
     b2f:	00 00                	add    %al,(%rax)
     b31:	05 00 72 00 33       	add    $0x33007200,%eax
     b36:	21 9f 76 07 00 00    	and    %ebx,0x776(%rdi)
     b3c:	00 00                	add    %al,(%rax)
     b3e:	00 00                	add    %al,(%rax)
     b40:	7b 07                	jnp    b49 <__abi_tag+0x885>
     b42:	00 00                	add    %al,(%rax)
     b44:	00 00                	add    %al,(%rax)
     b46:	00 00                	add    %al,(%rax)
     b48:	01 00                	add    %eax,(%rax)
     b4a:	52                   	push   %rdx
	...
     b5b:	26 07                	es (bad) 
     b5d:	00 00                	add    %al,(%rax)
     b5f:	00 00                	add    %al,(%rax)
     b61:	00 00                	add    %al,(%rax)
     b63:	4c 07                	rex.WR (bad) 
     b65:	00 00                	add    %al,(%rax)
     b67:	00 00                	add    %al,(%rax)
     b69:	00 00                	add    %al,(%rax)
     b6b:	01 00                	add    %eax,(%rax)
     b6d:	66 4c 07             	data16 rex.WR (bad) 
     b70:	00 00                	add    %al,(%rax)
     b72:	00 00                	add    %al,(%rax)
     b74:	00 00                	add    %al,(%rax)
     b76:	5d                   	pop    %rbp
     b77:	07                   	(bad)  
     b78:	00 00                	add    %al,(%rax)
     b7a:	00 00                	add    %al,(%rax)
     b7c:	00 00                	add    %al,(%rax)
     b7e:	01 00                	add    %eax,(%rax)
     b80:	61                   	(bad)  
     b81:	5d                   	pop    %rbp
     b82:	07                   	(bad)  
     b83:	00 00                	add    %al,(%rax)
     b85:	00 00                	add    %al,(%rax)
     b87:	00 00                	add    %al,(%rax)
     b89:	6e                   	outsb  %ds:(%rsi),(%dx)
     b8a:	07                   	(bad)  
     b8b:	00 00                	add    %al,(%rax)
     b8d:	00 00                	add    %al,(%rax)
     b8f:	00 00                	add    %al,(%rax)
     b91:	01 00                	add    %eax,(%rax)
     b93:	62                   	(bad)  
     b94:	6e                   	outsb  %ds:(%rsi),(%dx)
     b95:	07                   	(bad)  
     b96:	00 00                	add    %al,(%rax)
     b98:	00 00                	add    %al,(%rax)
     b9a:	00 00                	add    %al,(%rax)
     b9c:	72 07                	jb     ba5 <__abi_tag+0x8e1>
     b9e:	00 00                	add    %al,(%rax)
     ba0:	00 00                	add    %al,(%rax)
     ba2:	00 00                	add    %al,(%rax)
     ba4:	01 00                	add    %eax,(%rax)
     ba6:	63 72 07             	movsxd 0x7(%rdx),%esi
     ba9:	00 00                	add    %al,(%rax)
     bab:	00 00                	add    %al,(%rax)
     bad:	00 00                	add    %al,(%rax)
     baf:	7b 07                	jnp    bb8 <__abi_tag+0x8f4>
     bb1:	00 00                	add    %al,(%rax)
     bb3:	00 00                	add    %al,(%rax)
     bb5:	00 00                	add    %al,(%rax)
     bb7:	01 00                	add    %eax,(%rax)
     bb9:	66 8a 07             	data16 mov (%rdi),%al
     bbc:	00 00                	add    %al,(%rax)
     bbe:	00 00                	add    %al,(%rax)
     bc0:	00 00                	add    %al,(%rax)
     bc2:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     bc3:	07                   	(bad)  
     bc4:	00 00                	add    %al,(%rax)
     bc6:	00 00                	add    %al,(%rax)
     bc8:	00 00                	add    %al,(%rax)
     bca:	01 00                	add    %eax,(%rax)
     bcc:	66 00 00             	data16 add %al,(%rax)
	...
     bdb:	00 00                	add    %al,(%rax)
     bdd:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     bde:	07                   	(bad)  
     bdf:	00 00                	add    %al,(%rax)
     be1:	00 00                	add    %al,(%rax)
     be3:	00 00                	add    %al,(%rax)
     be5:	3a 08                	cmp    (%rax),%cl
     be7:	00 00                	add    %al,(%rax)
     be9:	00 00                	add    %al,(%rax)
     beb:	00 00                	add    %al,(%rax)
     bed:	01 00                	add    %eax,(%rax)
     bef:	66 00 00             	data16 add %al,(%rax)
	...
     bfe:	00 00                	add    %al,(%rax)
     c00:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c01:	07                   	(bad)  
     c02:	00 00                	add    %al,(%rax)
     c04:	00 00                	add    %al,(%rax)
     c06:	00 00                	add    %al,(%rax)
     c08:	3a 08                	cmp    (%rax),%cl
     c0a:	00 00                	add    %al,(%rax)
     c0c:	00 00                	add    %al,(%rax)
     c0e:	00 00                	add    %al,(%rax)
     c10:	01 00                	add    %eax,(%rax)
     c12:	5e                   	pop    %rsi
	...
     c23:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c24:	07                   	(bad)  
     c25:	00 00                	add    %al,(%rax)
     c27:	00 00                	add    %al,(%rax)
     c29:	00 00                	add    %al,(%rax)
     c2b:	3a 08                	cmp    (%rax),%cl
     c2d:	00 00                	add    %al,(%rax)
     c2f:	00 00                	add    %al,(%rax)
     c31:	00 00                	add    %al,(%rax)
     c33:	01 00                	add    %eax,(%rax)
     c35:	53                   	push   %rbx
	...
     c46:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     c47:	07                   	(bad)  
     c48:	00 00                	add    %al,(%rax)
     c4a:	00 00                	add    %al,(%rax)
     c4c:	00 00                	add    %al,(%rax)
     c4e:	3a 08                	cmp    (%rax),%cl
     c50:	00 00                	add    %al,(%rax)
     c52:	00 00                	add    %al,(%rax)
     c54:	00 00                	add    %al,(%rax)
     c56:	01 00                	add    %eax,(%rax)
     c58:	5f                   	pop    %rdi
	...
     c69:	b3 07                	mov    $0x7,%bl
     c6b:	00 00                	add    %al,(%rax)
     c6d:	00 00                	add    %al,(%rax)
     c6f:	00 00                	add    %al,(%rax)
     c71:	ea                   	(bad)  
     c72:	07                   	(bad)  
     c73:	00 00                	add    %al,(%rax)
     c75:	00 00                	add    %al,(%rax)
     c77:	00 00                	add    %al,(%rax)
     c79:	01 00                	add    %eax,(%rax)
     c7b:	50                   	push   %rax
	...
     c8c:	ea                   	(bad)  
     c8d:	07                   	(bad)  
     c8e:	00 00                	add    %al,(%rax)
     c90:	00 00                	add    %al,(%rax)
     c92:	00 00                	add    %al,(%rax)
     c94:	f9                   	stc    
     c95:	07                   	(bad)  
     c96:	00 00                	add    %al,(%rax)
     c98:	00 00                	add    %al,(%rax)
     c9a:	00 00                	add    %al,(%rax)
     c9c:	02 00                	add    (%rax),%al
     c9e:	30 9f f9 07 00 00    	xor    %bl,0x7f9(%rdi)
     ca4:	00 00                	add    %al,(%rax)
     ca6:	00 00                	add    %al,(%rax)
     ca8:	1c 08                	sbb    $0x8,%al
     caa:	00 00                	add    %al,(%rax)
     cac:	00 00                	add    %al,(%rax)
     cae:	00 00                	add    %al,(%rax)
     cb0:	01 00                	add    %eax,(%rax)
     cb2:	52                   	push   %rdx
	...
     cc3:	f5                   	cmc    
     cc4:	07                   	(bad)  
     cc5:	00 00                	add    %al,(%rax)
     cc7:	00 00                	add    %al,(%rax)
     cc9:	00 00                	add    %al,(%rax)
     ccb:	3a 08                	cmp    (%rax),%cl
     ccd:	00 00                	add    %al,(%rax)
     ccf:	00 00                	add    %al,(%rax)
     cd1:	00 00                	add    %al,(%rax)
     cd3:	01 00                	add    %eax,(%rax)
     cd5:	50                   	push   %rax
	...
     ce6:	3d 08 00 00 00       	cmp    $0x8,%eax
     ceb:	00 00                	add    %al,(%rax)
     ced:	00 49 08             	add    %cl,0x8(%rcx)
     cf0:	00 00                	add    %al,(%rax)
     cf2:	00 00                	add    %al,(%rax)
     cf4:	00 00                	add    %al,(%rax)
     cf6:	01 00                	add    %eax,(%rax)
     cf8:	67 49 08 00          	rex.WB or %al,(%r8d)
     cfc:	00 00                	add    %al,(%rax)
     cfe:	00 00                	add    %al,(%rax)
     d00:	00 5c 09 00          	add    %bl,0x0(%rcx,%rcx,1)
     d04:	00 00                	add    %al,(%rax)
     d06:	00 00                	add    %al,(%rax)
     d08:	00 02                	add    %al,(%rdx)
     d0a:	00 77 30             	add    %dh,0x30(%rdi)
     d0d:	5c                   	pop    %rsp
     d0e:	09 00                	or     %eax,(%rax)
     d10:	00 00                	add    %al,(%rax)
     d12:	00 00                	add    %al,(%rax)
     d14:	00 63 09             	add    %ah,0x9(%rbx)
     d17:	00 00                	add    %al,(%rax)
     d19:	00 00                	add    %al,(%rax)
     d1b:	00 00                	add    %al,(%rax)
     d1d:	01 00                	add    %eax,(%rax)
     d1f:	61                   	(bad)  
     d20:	76 0c                	jbe    d2e <__abi_tag+0xa6a>
     d22:	00 00                	add    %al,(%rax)
     d24:	00 00                	add    %al,(%rax)
     d26:	00 00                	add    %al,(%rax)
     d28:	7c 0c                	jl     d36 <__abi_tag+0xa72>
     d2a:	00 00                	add    %al,(%rax)
     d2c:	00 00                	add    %al,(%rax)
     d2e:	00 00                	add    %al,(%rax)
     d30:	01 00                	add    %eax,(%rax)
     d32:	62                   	(bad)  
     d33:	7c 0c                	jl     d41 <__abi_tag+0xa7d>
     d35:	00 00                	add    %al,(%rax)
     d37:	00 00                	add    %al,(%rax)
     d39:	00 00                	add    %al,(%rax)
     d3b:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     d41:	00 00                	add    %al,(%rax)
     d43:	02 00                	add    (%rax),%al
     d45:	77 30                	ja     d77 <__abi_tag+0xab3>
	...
     d57:	49 08 00             	rex.WB or %al,(%r8)
     d5a:	00 00                	add    %al,(%rax)
     d5c:	00 00                	add    %al,(%rax)
     d5e:	00 59 08             	add    %bl,0x8(%rcx)
     d61:	00 00                	add    %al,(%rax)
     d63:	00 00                	add    %al,(%rax)
     d65:	00 00                	add    %al,(%rax)
     d67:	02 00                	add    (%rax),%al
     d69:	30 9f 59 08 00 00    	xor    %bl,0x859(%rdi)
     d6f:	00 00                	add    %al,(%rax)
     d71:	00 00                	add    %al,(%rax)
     d73:	ab                   	stos   %eax,%es:(%rdi)
     d74:	08 00                	or     %al,(%rax)
     d76:	00 00                	add    %al,(%rax)
     d78:	00 00                	add    %al,(%rax)
     d7a:	00 01                	add    %al,(%rcx)
     d7c:	00 50 00             	add    %dl,0x0(%rax)
	...
     d8b:	00 00                	add    %al,(%rax)
     d8d:	00 49 08             	add    %cl,0x8(%rcx)
     d90:	00 00                	add    %al,(%rax)
     d92:	00 00                	add    %al,(%rax)
     d94:	00 00                	add    %al,(%rax)
     d96:	59                   	pop    %rcx
     d97:	08 00                	or     %al,(%rax)
     d99:	00 00                	add    %al,(%rax)
     d9b:	00 00                	add    %al,(%rax)
     d9d:	00 10                	add    %dl,(%rax)
     d9f:	00 30                	add    %dh,(%rax)
     da1:	9f                   	lahf   
     da2:	93                   	xchg   %eax,%ebx
     da3:	08 30                	or     %dh,(%rax)
     da5:	9f                   	lahf   
     da6:	93                   	xchg   %eax,%ebx
     da7:	08 30                	or     %dh,(%rax)
     da9:	9f                   	lahf   
     daa:	93                   	xchg   %eax,%ebx
     dab:	08 30                	or     %dh,(%rax)
     dad:	9f                   	lahf   
     dae:	93                   	xchg   %eax,%ebx
     daf:	08 d8                	or     %bl,%al
     db1:	08 00                	or     %al,(%rax)
     db3:	00 00                	add    %al,(%rax)
     db5:	00 00                	add    %al,(%rax)
     db7:	00 e3                	add    %ah,%bl
     db9:	08 00                	or     %al,(%rax)
     dbb:	00 00                	add    %al,(%rax)
     dbd:	00 00                	add    %al,(%rax)
     dbf:	00 03                	add    %al,(%rbx)
     dc1:	00 63 93             	add    %ah,-0x6d(%rbx)
     dc4:	08 e3                	or     %ah,%bl
     dc6:	08 00                	or     %al,(%rax)
     dc8:	00 00                	add    %al,(%rax)
     dca:	00 00                	add    %al,(%rax)
     dcc:	00 f5                	add    %dh,%ch
     dce:	08 00                	or     %al,(%rax)
     dd0:	00 00                	add    %al,(%rax)
     dd2:	00 00                	add    %al,(%rax)
     dd4:	00 03                	add    %al,(%rbx)
     dd6:	00 64 93 08          	add    %ah,0x8(%rbx,%rdx,4)
     dda:	f5                   	cmc    
     ddb:	08 00                	or     %al,(%rax)
     ddd:	00 00                	add    %al,(%rax)
     ddf:	00 00                	add    %al,(%rax)
     de1:	00 f7                	add    %dh,%bh
     de3:	08 00                	or     %al,(%rax)
     de5:	00 00                	add    %al,(%rax)
     de7:	00 00                	add    %al,(%rax)
     de9:	00 03                	add    %al,(%rbx)
     deb:	00 61 93             	add    %ah,-0x6d(%rcx)
     dee:	08 f7                	or     %dh,%bh
     df0:	08 00                	or     %al,(%rax)
     df2:	00 00                	add    %al,(%rax)
     df4:	00 00                	add    %al,(%rax)
     df6:	00 ff                	add    %bh,%bh
     df8:	08 00                	or     %al,(%rax)
     dfa:	00 00                	add    %al,(%rax)
     dfc:	00 00                	add    %al,(%rax)
     dfe:	00 10                	add    %dl,(%rax)
     e00:	00 30                	add    %dh,(%rax)
     e02:	9f                   	lahf   
     e03:	93                   	xchg   %eax,%ebx
     e04:	08 30                	or     %dh,(%rax)
     e06:	9f                   	lahf   
     e07:	93                   	xchg   %eax,%ebx
     e08:	08 30                	or     %dh,(%rax)
     e0a:	9f                   	lahf   
     e0b:	93                   	xchg   %eax,%ebx
     e0c:	08 30                	or     %dh,(%rax)
     e0e:	9f                   	lahf   
     e0f:	93                   	xchg   %eax,%ebx
     e10:	08 ff                	or     %bh,%bh
     e12:	08 00                	or     %al,(%rax)
     e14:	00 00                	add    %al,(%rax)
     e16:	00 00                	add    %al,(%rax)
     e18:	00 03                	add    %al,(%rbx)
     e1a:	09 00                	or     %eax,(%rax)
     e1c:	00 00                	add    %al,(%rax)
     e1e:	00 00                	add    %al,(%rax)
     e20:	00 03                	add    %al,(%rbx)
     e22:	00 61 93             	add    %ah,-0x6d(%rcx)
     e25:	08 00                	or     %al,(%rax)
	...
     e33:	00 00                	add    %al,(%rax)
     e35:	00 49 08             	add    %cl,0x8(%rcx)
     e38:	00 00                	add    %al,(%rax)
     e3a:	00 00                	add    %al,(%rax)
     e3c:	00 00                	add    %al,(%rax)
     e3e:	e6 09                	out    %al,$0x9
     e40:	00 00                	add    %al,(%rax)
     e42:	00 00                	add    %al,(%rax)
     e44:	00 00                	add    %al,(%rax)
     e46:	01 00                	add    %eax,(%rax)
     e48:	5f                   	pop    %rdi
	...
     e59:	49 08 00             	rex.WB or %al,(%r8)
     e5c:	00 00                	add    %al,(%rax)
     e5e:	00 00                	add    %al,(%rax)
     e60:	00 d1                	add    %dl,%cl
     e62:	09 00                	or     %eax,(%rax)
     e64:	00 00                	add    %al,(%rax)
     e66:	00 00                	add    %al,(%rax)
     e68:	00 01                	add    %al,(%rcx)
     e6a:	00 53 00             	add    %dl,0x0(%rbx)
	...
     e79:	00 00                	add    %al,(%rax)
     e7b:	00 49 08             	add    %cl,0x8(%rcx)
     e7e:	00 00                	add    %al,(%rax)
     e80:	00 00                	add    %al,(%rax)
     e82:	00 00                	add    %al,(%rax)
     e84:	bf 09 00 00 00       	mov    $0x9,%edi
     e89:	00 00                	add    %al,(%rax)
     e8b:	00 01                	add    %al,(%rcx)
     e8d:	00 5e 00             	add    %bl,0x0(%rsi)
	...
     e9c:	00 00                	add    %al,(%rax)
     e9e:	00 b9 08 00 00 00    	add    %bh,0x8(%rcx)
     ea4:	00 00                	add    %al,(%rax)
     ea6:	00 f7                	add    %dh,%bh
     ea8:	08 00                	or     %al,(%rax)
     eaa:	00 00                	add    %al,(%rax)
     eac:	00 00                	add    %al,(%rax)
     eae:	00 03                	add    %al,(%rbx)
     eb0:	00 7f 7c             	add    %bh,0x7c(%rdi)
     eb3:	9f                   	lahf   
	...
     ec4:	b9 08 00 00 00       	mov    $0x8,%ecx
     ec9:	00 00                	add    %al,(%rax)
     ecb:	00 c6                	add    %al,%dh
     ecd:	08 00                	or     %al,(%rax)
     ecf:	00 00                	add    %al,(%rax)
     ed1:	00 00                	add    %al,(%rax)
     ed3:	00 03                	add    %al,(%rbx)
     ed5:	00 7f 7d             	add    %bh,0x7d(%rdi)
     ed8:	9f                   	lahf   
     ed9:	f5                   	cmc    
     eda:	08 00                	or     %al,(%rax)
     edc:	00 00                	add    %al,(%rax)
     ede:	00 00                	add    %al,(%rax)
     ee0:	00 f7                	add    %dh,%bh
     ee2:	08 00                	or     %al,(%rax)
     ee4:	00 00                	add    %al,(%rax)
     ee6:	00 00                	add    %al,(%rax)
     ee8:	00 01                	add    %al,(%rcx)
     eea:	00 5f 00             	add    %bl,0x0(%rdi)
	...
     ef9:	00 00                	add    %al,(%rax)
     efb:	00 0f                	add    %cl,(%rdi)
     efd:	09 00                	or     %eax,(%rax)
     eff:	00 00                	add    %al,(%rax)
     f01:	00 00                	add    %al,(%rax)
     f03:	00 15 09 00 00 00    	add    %dl,0x9(%rip)        # f12 <__abi_tag+0xc4e>
     f09:	00 00                	add    %al,(%rax)
     f0b:	00 01                	add    %al,(%rcx)
     f0d:	00 68 15             	add    %ch,0x15(%rax)
     f10:	09 00                	or     %eax,(%rax)
     f12:	00 00                	add    %al,(%rax)
     f14:	00 00                	add    %al,(%rax)
     f16:	00 c5                	add    %al,%ch
     f18:	0b 00                	or     (%rax),%eax
     f1a:	00 00                	add    %al,(%rax)
     f1c:	00 00                	add    %al,(%rax)
     f1e:	00 02                	add    %al,(%rdx)
     f20:	00 77 10             	add    %dh,0x10(%rdi)
     f23:	64 0c 00             	fs or  $0x0,%al
     f26:	00 00                	add    %al,(%rax)
     f28:	00 00                	add    %al,(%rax)
     f2a:	00 6a 0c             	add    %ch,0xc(%rdx)
     f2d:	00 00                	add    %al,(%rax)
     f2f:	00 00                	add    %al,(%rax)
     f31:	00 00                	add    %al,(%rax)
     f33:	01 00                	add    %eax,(%rax)
     f35:	64 6a 0c             	fs pushq $0xc
     f38:	00 00                	add    %al,(%rax)
     f3a:	00 00                	add    %al,(%rax)
     f3c:	00 00                	add    %al,(%rax)
     f3e:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
     f44:	00 00                	add    %al,(%rax)
     f46:	02 00                	add    (%rax),%al
     f48:	77 10                	ja     f5a <__abi_tag+0xc96>
	...
     f5a:	28 09                	sub    %cl,(%rcx)
     f5c:	00 00                	add    %al,(%rax)
     f5e:	00 00                	add    %al,(%rax)
     f60:	00 00                	add    %al,(%rax)
     f62:	b5 0c                	mov    $0xc,%ch
     f64:	00 00                	add    %al,(%rax)
     f66:	00 00                	add    %al,(%rax)
     f68:	00 00                	add    %al,(%rax)
     f6a:	02 00                	add    (%rax),%al
     f6c:	77 00                	ja     f6e <__abi_tag+0xcaa>
     f6e:	b5 0c                	mov    $0xc,%ch
     f70:	00 00                	add    %al,(%rax)
     f72:	00 00                	add    %al,(%rax)
     f74:	00 00                	add    %al,(%rax)
     f76:	bc 0c 00 00 00       	mov    $0xc,%esp
     f7b:	00 00                	add    %al,(%rax)
     f7d:	00 01                	add    %al,(%rcx)
     f7f:	00 6f bc             	add    %ch,-0x44(%rdi)
     f82:	0c 00                	or     $0x0,%al
     f84:	00 00                	add    %al,(%rax)
     f86:	00 00                	add    %al,(%rax)
     f88:	00 4d 0d             	add    %cl,0xd(%rbp)
     f8b:	00 00                	add    %al,(%rax)
     f8d:	00 00                	add    %al,(%rax)
     f8f:	00 00                	add    %al,(%rax)
     f91:	02 00                	add    (%rax),%al
     f93:	77 20                	ja     fb5 <__abi_tag+0xcf1>
	...
     fa5:	3c 09                	cmp    $0x9,%al
     fa7:	00 00                	add    %al,(%rax)
     fa9:	00 00                	add    %al,(%rax)
     fab:	00 00                	add    %al,(%rax)
     fad:	d1 0c 00             	rorl   (%rax,%rax,1)
     fb0:	00 00                	add    %al,(%rax)
     fb2:	00 00                	add    %al,(%rax)
     fb4:	00 02                	add    %al,(%rdx)
     fb6:	00 77 20             	add    %dh,0x20(%rdi)
     fb9:	d1 0c 00             	rorl   (%rax,%rax,1)
     fbc:	00 00                	add    %al,(%rax)
     fbe:	00 00                	add    %al,(%rax)
     fc0:	00 4d 0d             	add    %cl,0xd(%rbp)
     fc3:	00 00                	add    %al,(%rax)
     fc5:	00 00                	add    %al,(%rax)
     fc7:	00 00                	add    %al,(%rax)
     fc9:	02 00                	add    (%rax),%al
     fcb:	77 00                	ja     fcd <__abi_tag+0xd09>
	...
     fdd:	bf 09 00 00 00       	mov    $0x9,%edi
     fe2:	00 00                	add    %al,(%rax)
     fe4:	00 42 0a             	add    %al,0xa(%rdx)
     fe7:	00 00                	add    %al,(%rax)
     fe9:	00 00                	add    %al,(%rax)
     feb:	00 00                	add    %al,(%rax)
     fed:	01 00                	add    %eax,(%rax)
     fef:	5e                   	pop    %rsi
	...
    1000:	bf 09 00 00 00       	mov    $0x9,%edi
    1005:	00 00                	add    %al,(%rax)
    1007:	00 4a 0d             	add    %cl,0xd(%rdx)
    100a:	00 00                	add    %al,(%rax)
    100c:	00 00                	add    %al,(%rax)
    100e:	00 00                	add    %al,(%rax)
    1010:	01 00                	add    %eax,(%rax)
    1012:	5e                   	pop    %rsi
	...
    1023:	d1 09                	rorl   (%rcx)
    1025:	00 00                	add    %al,(%rax)
    1027:	00 00                	add    %al,(%rax)
    1029:	00 00                	add    %al,(%rax)
    102b:	42 0a 00             	rex.X or (%rax),%al
    102e:	00 00                	add    %al,(%rax)
    1030:	00 00                	add    %al,(%rax)
    1032:	00 01                	add    %al,(%rcx)
    1034:	00 53 00             	add    %dl,0x0(%rbx)
	...
    1043:	00 00                	add    %al,(%rax)
    1045:	00 d1                	add    %dl,%cl
    1047:	09 00                	or     %eax,(%rax)
    1049:	00 00                	add    %al,(%rax)
    104b:	00 00                	add    %al,(%rax)
    104d:	00 48 0d             	add    %cl,0xd(%rax)
    1050:	00 00                	add    %al,(%rax)
    1052:	00 00                	add    %al,(%rax)
    1054:	00 00                	add    %al,(%rax)
    1056:	01 00                	add    %eax,(%rax)
    1058:	53                   	push   %rbx
	...
    1069:	d6                   	(bad)  
    106a:	09 00                	or     %eax,(%rax)
    106c:	00 00                	add    %al,(%rax)
    106e:	00 00                	add    %al,(%rax)
    1070:	00 42 0a             	add    %al,0xa(%rdx)
    1073:	00 00                	add    %al,(%rax)
    1075:	00 00                	add    %al,(%rax)
    1077:	00 00                	add    %al,(%rax)
    1079:	02 00                	add    (%rax),%al
    107b:	30 9f 00 00 00 00    	xor    %bl,0x0(%rdi)
	...
    108d:	d6                   	(bad)  
    108e:	09 00                	or     %eax,(%rax)
    1090:	00 00                	add    %al,(%rax)
    1092:	00 00                	add    %al,(%rax)
    1094:	00 42 0a             	add    %al,0xa(%rdx)
    1097:	00 00                	add    %al,(%rax)
    1099:	00 00                	add    %al,(%rax)
    109b:	00 00                	add    %al,(%rax)
    109d:	03 00                	add    (%rax),%eax
    109f:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
    10af:	00 00                	add    %al,(%rax)
    10b1:	00 42 0a             	add    %al,0xa(%rdx)
    10b4:	00 00                	add    %al,(%rax)
    10b6:	00 00                	add    %al,(%rax)
    10b8:	00 00                	add    %al,(%rax)
    10ba:	6e                   	outsb  %ds:(%rsi),(%dx)
    10bb:	0a 00                	or     (%rax),%al
    10bd:	00 00                	add    %al,(%rax)
    10bf:	00 00                	add    %al,(%rax)
    10c1:	00 01                	add    %al,(%rcx)
    10c3:	00 64 6e 0a          	add    %ah,0xa(%rsi,%rbp,2)
    10c7:	00 00                	add    %al,(%rax)
    10c9:	00 00                	add    %al,(%rax)
    10cb:	00 00                	add    %al,(%rax)
    10cd:	7f 0a                	jg     10d9 <deregister_tm_clones+0x29>
    10cf:	00 00                	add    %al,(%rax)
    10d1:	00 00                	add    %al,(%rax)
    10d3:	00 00                	add    %al,(%rax)
    10d5:	01 00                	add    %eax,(%rax)
    10d7:	61                   	(bad)  
    10d8:	7f 0a                	jg     10e4 <register_tm_clones+0x4>
    10da:	00 00                	add    %al,(%rax)
    10dc:	00 00                	add    %al,(%rax)
    10de:	00 00                	add    %al,(%rax)
    10e0:	90                   	nop
    10e1:	0a 00                	or     (%rax),%al
    10e3:	00 00                	add    %al,(%rax)
    10e5:	00 00                	add    %al,(%rax)
    10e7:	00 01                	add    %al,(%rcx)
    10e9:	00 62 90             	add    %ah,-0x70(%rdx)
    10ec:	0a 00                	or     (%rax),%al
    10ee:	00 00                	add    %al,(%rax)
    10f0:	00 00                	add    %al,(%rax)
    10f2:	00 9f 0a 00 00 00    	add    %bl,0xa(%rdi)
    10f8:	00 00                	add    %al,(%rax)
    10fa:	00 01                	add    %al,(%rcx)
    10fc:	00 63 9f             	add    %ah,-0x61(%rbx)
    10ff:	0a 00                	or     (%rax),%al
    1101:	00 00                	add    %al,(%rax)
    1103:	00 00                	add    %al,(%rax)
    1105:	00 a3 0a 00 00 00    	add    %ah,0xa(%rbx)
    110b:	00 00                	add    %al,(%rax)
    110d:	00 01                	add    %al,(%rcx)
    110f:	00 61 a3             	add    %ah,-0x5d(%rcx)
    1112:	0a 00                	or     (%rax),%al
    1114:	00 00                	add    %al,(%rax)
    1116:	00 00                	add    %al,(%rax)
    1118:	00 b3 0a 00 00 00    	add    %dh,0xa(%rbx)
    111e:	00 00                	add    %al,(%rax)
    1120:	00 01                	add    %al,(%rcx)
    1122:	00 64 b3 0a          	add    %ah,0xa(%rbx,%rsi,4)
    1126:	00 00                	add    %al,(%rax)
    1128:	00 00                	add    %al,(%rax)
    112a:	00 00                	add    %al,(%rax)
    112c:	be 0a 00 00 00       	mov    $0xa,%esi
    1131:	00 00                	add    %al,(%rax)
    1133:	00 02                	add    %al,(%rdx)
    1135:	00 77 08             	add    %dh,0x8(%rdi)
	...
    1148:	3b 0c 00             	cmp    (%rax,%rax,1),%ecx
    114b:	00 00                	add    %al,(%rax)
    114d:	00 00                	add    %al,(%rax)
    114f:	00 4f 0c             	add    %cl,0xc(%rdi)
    1152:	00 00                	add    %al,(%rax)
    1154:	00 00                	add    %al,(%rax)
    1156:	00 00                	add    %al,(%rax)
    1158:	03 00                	add    (%rax),%eax
    115a:	6b 93 08 4f 0c 00 00 	imul   $0x0,0xc4f08(%rbx),%edx
    1161:	00 00                	add    %al,(%rax)
    1163:	00 00                	add    %al,(%rax)
    1165:	cc                   	int3   
    1166:	0c 00                	or     $0x0,%al
    1168:	00 00                	add    %al,(%rax)
    116a:	00 00                	add    %al,(%rax)
    116c:	00 03                	add    %al,(%rbx)
    116e:	00 6c 93 08          	add    %ch,0x8(%rbx,%rdx,4)
	...
    1182:	35 0b 00 00 00       	xor    $0xb,%eax
    1187:	00 00                	add    %al,(%rax)
    1189:	00 60 0b             	add    %ah,0xb(%rax)
    118c:	00 00                	add    %al,(%rax)
    118e:	00 00                	add    %al,(%rax)
    1190:	00 00                	add    %al,(%rax)
    1192:	01 00                	add    %eax,(%rax)
    1194:	50                   	push   %rax
    1195:	60                   	(bad)  
    1196:	0b 00                	or     (%rax),%eax
    1198:	00 00                	add    %al,(%rax)
    119a:	00 00                	add    %al,(%rax)
    119c:	00 8c 0b 00 00 00 00 	add    %cl,0x0(%rbx,%rcx,1)
    11a3:	00 00                	add    %al,(%rax)
    11a5:	05 00 70 00 34       	add    $0x34007000,%eax
    11aa:	21 9f 8c 0b 00 00    	and    %ebx,0xb8c(%rdi)
    11b0:	00 00                	add    %al,(%rax)
    11b2:	00 00                	add    %al,(%rax)
    11b4:	96                   	xchg   %eax,%esi
    11b5:	0b 00                	or     (%rax),%eax
    11b7:	00 00                	add    %al,(%rax)
    11b9:	00 00                	add    %al,(%rax)
    11bb:	00 01                	add    %al,(%rcx)
    11bd:	00 50 00             	add    %dl,0x0(%rax)
	...
    11cc:	00 00                	add    %al,(%rax)
    11ce:	00 96 0b 00 00 00    	add    %dl,0xb(%rsi)
    11d4:	00 00                	add    %al,(%rax)
    11d6:	00 d4                	add    %dl,%ah
    11d8:	0b 00                	or     (%rax),%eax
    11da:	00 00                	add    %al,(%rax)
    11dc:	00 00                	add    %al,(%rax)
    11de:	00 05 00 10 64 34    	add    %al,0x34641000(%rip)        # 346421e4 <_end+0x3463e18c>
    11e4:	1c 9f                	sbb    $0x9f,%al
	...
    11f6:	96                   	xchg   %eax,%esi
    11f7:	0b 00                	or     (%rax),%eax
    11f9:	00 00                	add    %al,(%rax)
    11fb:	00 00                	add    %al,(%rax)
    11fd:	00 a8 0b 00 00 00    	add    %ch,0xb(%rax)
    1203:	00 00                	add    %al,(%rax)
    1205:	00 03                	add    %al,(%rbx)
    1207:	00 10                	add    %dl,(%rax)
    1209:	61                   	(bad)  
    120a:	9f                   	lahf   
    120b:	a8 0b                	test   $0xb,%al
    120d:	00 00                	add    %al,(%rax)
    120f:	00 00                	add    %al,(%rax)
    1211:	00 00                	add    %al,(%rax)
    1213:	c5 0b 00             	(bad)
    1216:	00 00                	add    %al,(%rax)
    1218:	00 00                	add    %al,(%rax)
    121a:	00 03                	add    %al,(%rbx)
    121c:	00 10                	add    %dl,(%rax)
    121e:	63 9f c5 0b 00 00    	movsxd 0xbc5(%rdi),%ebx
    1224:	00 00                	add    %al,(%rax)
    1226:	00 00                	add    %al,(%rax)
    1228:	d4                   	(bad)  
    1229:	0b 00                	or     (%rax),%eax
    122b:	00 00                	add    %al,(%rax)
    122d:	00 00                	add    %al,(%rax)
    122f:	00 03                	add    %al,(%rbx)
    1231:	00 10                	add    %dl,(%rax)
    1233:	64 9f                	fs lahf 
	...
    1245:	c5 0b 00             	(bad)
    1248:	00 00                	add    %al,(%rax)
    124a:	00 00                	add    %al,(%rax)
    124c:	00 d4                	add    %dl,%ah
    124e:	0b 00                	or     (%rax),%eax
    1250:	00 00                	add    %al,(%rax)
    1252:	00 00                	add    %al,(%rax)
    1254:	00 20                	add    %ah,(%rax)
    1256:	00 30                	add    %dh,(%rax)
    1258:	9f                   	lahf   
    1259:	93                   	xchg   %eax,%ebx
    125a:	08 30                	or     %dh,(%rax)
    125c:	9f                   	lahf   
    125d:	93                   	xchg   %eax,%ebx
    125e:	08 30                	or     %dh,(%rax)
    1260:	9f                   	lahf   
    1261:	93                   	xchg   %eax,%ebx
    1262:	08 30                	or     %dh,(%rax)
    1264:	9f                   	lahf   
    1265:	93                   	xchg   %eax,%ebx
    1266:	08 30                	or     %dh,(%rax)
    1268:	9f                   	lahf   
    1269:	93                   	xchg   %eax,%ebx
    126a:	08 30                	or     %dh,(%rax)
    126c:	9f                   	lahf   
    126d:	93                   	xchg   %eax,%ebx
    126e:	08 30                	or     %dh,(%rax)
    1270:	9f                   	lahf   
    1271:	93                   	xchg   %eax,%ebx
    1272:	08 30                	or     %dh,(%rax)
    1274:	9f                   	lahf   
    1275:	93                   	xchg   %eax,%ebx
    1276:	08 00                	or     %al,(%rax)
	...
    1284:	00 00                	add    %al,(%rax)
    1286:	00 c5                	add    %al,%ch
    1288:	0b 00                	or     (%rax),%eax
    128a:	00 00                	add    %al,(%rax)
    128c:	00 00                	add    %al,(%rax)
    128e:	00 d4                	add    %dl,%ah
    1290:	0b 00                	or     (%rax),%eax
    1292:	00 00                	add    %al,(%rax)
    1294:	00 00                	add    %al,(%rax)
    1296:	00 02                	add    %al,(%rdx)
    1298:	00 30                	add    %dh,(%rax)
    129a:	9f                   	lahf   
	...
    12ab:	c5 0b 00             	(bad)
    12ae:	00 00                	add    %al,(%rax)
    12b0:	00 00                	add    %al,(%rax)
    12b2:	00 4d 0d             	add    %cl,0xd(%rbp)
    12b5:	00 00                	add    %al,(%rax)
    12b7:	00 00                	add    %al,(%rax)
    12b9:	00 00                	add    %al,(%rax)
    12bb:	02 00                	add    (%rax),%al
    12bd:	34 9f                	xor    $0x9f,%al
	...
    12cf:	c5 0b 00             	(bad)
    12d2:	00 00                	add    %al,(%rax)
    12d4:	00 00                	add    %al,(%rax)
    12d6:	00 4d 0d             	add    %cl,0xd(%rbp)
    12d9:	00 00                	add    %al,(%rax)
    12db:	00 00                	add    %al,(%rax)
    12dd:	00 00                	add    %al,(%rax)
    12df:	03 00                	add    (%rax),%eax
    12e1:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
    12f1:	00 00                	add    %al,(%rax)
    12f3:	00 c5                	add    %al,%ch
    12f5:	0b 00                	or     (%rax),%eax
    12f7:	00 00                	add    %al,(%rax)
    12f9:	00 00                	add    %al,(%rax)
    12fb:	00 48 0d             	add    %cl,0xd(%rax)
    12fe:	00 00                	add    %al,(%rax)
    1300:	00 00                	add    %al,(%rax)
    1302:	00 00                	add    %al,(%rax)
    1304:	01 00                	add    %eax,(%rax)
    1306:	53                   	push   %rbx
	...
    1317:	c5 0b 00             	(bad)
    131a:	00 00                	add    %al,(%rax)
    131c:	00 00                	add    %al,(%rax)
    131e:	00 4a 0d             	add    %cl,0xd(%rdx)
    1321:	00 00                	add    %al,(%rax)
    1323:	00 00                	add    %al,(%rax)
    1325:	00 00                	add    %al,(%rax)
    1327:	01 00                	add    %eax,(%rax)
    1329:	5e                   	pop    %rsi
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
  40:	4d 0d 00 00 00 00    	rex.WRB or $0x0,%rax
  46:	00 00                	add    %al,(%rax)
  48:	57                   	push   %rdi
  49:	0d 00 00 00 00       	or     $0x0,%eax
	...
  5e:	00 00                	add    %al,(%rax)
  60:	ad                   	lods   %ds:(%rsi),%eax
  61:	05 00 00 00 00       	add    $0x0,%eax
  66:	00 00                	add    %al,(%rax)
  68:	b8 05 00 00 00       	mov    $0x5,%eax
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
 10e:	00 00                	add    %al,(%rax)
 110:	be 0a 00 00 00       	mov    $0xa,%esi
 115:	00 00                	add    %al,(%rax)
 117:	00 2b                	add    %ch,(%rbx)
 119:	0b 00                	or     (%rax),%eax
 11b:	00 00                	add    %al,(%rax)
 11d:	00 00                	add    %al,(%rax)
 11f:	00 6a 0c             	add    %ch,0xc(%rdx)
 122:	00 00                	add    %al,(%rax)
 124:	00 00                	add    %al,(%rax)
 126:	00 00                	add    %al,(%rax)
 128:	7c 0c                	jl     136 <__abi_tag-0x18e>
	...
 13e:	00 00                	add    %al,(%rax)
 140:	35 0b 00 00 00       	xor    $0xb,%eax
 145:	00 00                	add    %al,(%rax)
 147:	00 d4                	add    %dl,%ah
 149:	0b 00                	or     (%rax),%eax
 14b:	00 00                	add    %al,(%rax)
 14d:	00 00                	add    %al,(%rax)
 14f:	00 31                	add    %dh,(%rcx)
 151:	0c 00                	or     $0x0,%al
 153:	00 00                	add    %al,(%rax)
 155:	00 00                	add    %al,(%rax)
 157:	00 6a 0c             	add    %ch,0xc(%rdx)
	...
 16e:	00 00                	add    %al,(%rax)
 170:	96                   	xchg   %eax,%esi
 171:	0b 00                	or     (%rax),%eax
 173:	00 00                	add    %al,(%rax)
 175:	00 00                	add    %al,(%rax)
 177:	00 d4                	add    %dl,%ah
 179:	0b 00                	or     (%rax),%eax
 17b:	00 00                	add    %al,(%rax)
 17d:	00 00                	add    %al,(%rax)
 17f:	00 31                	add    %dh,(%rcx)
 181:	0c 00                	or     $0x0,%al
 183:	00 00                	add    %al,(%rax)
 185:	00 00                	add    %al,(%rax)
 187:	00 4f 0c             	add    %cl,0xc(%rdi)
	...
 19e:	00 00                	add    %al,(%rax)
 1a0:	96                   	xchg   %eax,%esi
 1a1:	0b 00                	or     (%rax),%eax
 1a3:	00 00                	add    %al,(%rax)
 1a5:	00 00                	add    %al,(%rax)
 1a7:	00 d4                	add    %dl,%ah
 1a9:	0b 00                	or     (%rax),%eax
 1ab:	00 00                	add    %al,(%rax)
 1ad:	00 00                	add    %al,(%rax)
 1af:	00 31                	add    %dh,(%rcx)
 1b1:	0c 00                	or     $0x0,%al
 1b3:	00 00                	add    %al,(%rax)
 1b5:	00 00                	add    %al,(%rax)
 1b7:	00 4f 0c             	add    %cl,0xc(%rdi)
	...
 1ce:	00 00                	add    %al,(%rax)
 1d0:	d4                   	(bad)  
 1d1:	0b 00                	or     (%rax),%eax
 1d3:	00 00                	add    %al,(%rax)
 1d5:	00 00                	add    %al,(%rax)
 1d7:	00 31                	add    %dh,(%rcx)
 1d9:	0c 00                	or     $0x0,%al
 1db:	00 00                	add    %al,(%rax)
 1dd:	00 00                	add    %al,(%rax)
 1df:	00 7c 0c 00          	add    %bh,0x0(%rsp,%rcx,1)
 1e3:	00 00                	add    %al,(%rax)
 1e5:	00 00                	add    %al,(%rax)
 1e7:	00 bc 0c 00 00 00 00 	add    %bh,0x0(%rsp,%rcx,1)
	...
