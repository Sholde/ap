
base_clang:     format de fichier elf64-x86-64


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
    1093:	4c 8d 05 16 0a 00 00 	lea    0xa16(%rip),%r8        # 1ab0 <__libc_csu_fini>
    109a:	48 8d 0d 9f 09 00 00 	lea    0x99f(%rip),%rcx        # 1a40 <__libc_csu_init>
    10a1:	48 8d 3d 08 07 00 00 	lea    0x708(%rip),%rdi        # 17b0 <main>
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
    1184:	75 12                	jne    1198 <parse_args+0x18>
    1186:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    118a:	31 f6                	xor    %esi,%esi
    118c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1191:	e8 ba fe ff ff       	callq  1050 <strtoll@plt>
    1196:	59                   	pop    %rcx
    1197:	c3                   	retq   
    1198:	bf 01 00 00 00       	mov    $0x1,%edi
    119d:	e8 be fe ff ff       	callq  1060 <exit@plt>
    11a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11a9:	00 00 00 
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011b0 <dotprod>:
    11b0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11b4:	48 85 d2             	test   %rdx,%rdx
    11b7:	74 1e                	je     11d7 <dotprod+0x27>
    11b9:	31 c0                	xor    %eax,%eax
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    11c0:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    11c5:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    11ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    11ce:	48 83 c0 01          	add    $0x1,%rax
    11d2:	48 39 c2             	cmp    %rax,%rdx
    11d5:	75 e9                	jne    11c0 <dotprod+0x10>
    11d7:	c3                   	retq   
    11d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11df:	00 

00000000000011e0 <dotprod_2x>:
    11e0:	f6 c2 01             	test   $0x1,%dl
    11e3:	75 47                	jne    122c <dotprod_2x+0x4c>
    11e5:	48 85 d2             	test   %rdx,%rdx
    11e8:	74 7f                	je     1269 <dotprod_2x+0x89>
    11ea:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    11ee:	31 c0                	xor    %eax,%eax
    11f0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11f4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11fb:	00 00 00 
    11fe:	66 90                	xchg   %ax,%ax
    1200:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
    1205:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
    120b:	f2 0f 59 14 c6       	mulsd  (%rsi,%rax,8),%xmm2
    1210:	f2 0f 59 5c c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm3
    1216:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    121a:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    121e:	48 83 c0 02          	add    $0x2,%rax
    1222:	48 39 d0             	cmp    %rdx,%rax
    1225:	72 d9                	jb     1200 <dotprod_2x+0x20>
    1227:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    122b:	c3                   	retq   
    122c:	48 89 d0             	mov    %rdx,%rax
    122f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1233:	74 41                	je     1276 <dotprod_2x+0x96>
    1235:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1239:	31 c9                	xor    %ecx,%ecx
    123b:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    123f:	90                   	nop
    1240:	f2 0f 10 14 cf       	movsd  (%rdi,%rcx,8),%xmm2
    1245:	f2 0f 10 5c cf 08    	movsd  0x8(%rdi,%rcx,8),%xmm3
    124b:	f2 0f 59 14 ce       	mulsd  (%rsi,%rcx,8),%xmm2
    1250:	f2 0f 59 5c ce 08    	mulsd  0x8(%rsi,%rcx,8),%xmm3
    1256:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    125a:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    125e:	48 83 c1 02          	add    $0x2,%rcx
    1262:	48 39 c1             	cmp    %rax,%rcx
    1265:	72 d9                	jb     1240 <dotprod_2x+0x60>
    1267:	eb 15                	jmp    127e <dotprod_2x+0x9e>
    1269:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    126d:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1271:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1275:	c3                   	retq   
    1276:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    127a:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    127e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1282:	f2 0f 10 44 d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm0
    1288:	f2 0f 59 44 d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm0
    128e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1292:	c3                   	retq   
    1293:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    129a:	00 00 00 
    129d:	0f 1f 00             	nopl   (%rax)

00000000000012a0 <dotprod_4x>:
    12a0:	48 85 d2             	test   %rdx,%rdx
    12a3:	74 69                	je     130e <dotprod_4x+0x6e>
    12a5:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    12a9:	31 c0                	xor    %eax,%eax
    12ab:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    12af:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12b3:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12be:	00 00 
    12c0:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
    12c5:	f2 0f 10 6c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm5
    12cb:	f2 0f 59 24 c6       	mulsd  (%rsi,%rax,8),%xmm4
    12d0:	f2 0f 59 6c c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm5
    12d6:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
    12da:	f2 0f 10 64 c7 10    	movsd  0x10(%rdi,%rax,8),%xmm4
    12e0:	f2 0f 59 64 c6 10    	mulsd  0x10(%rsi,%rax,8),%xmm4
    12e6:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    12ea:	f2 0f 10 6c c7 18    	movsd  0x18(%rdi,%rax,8),%xmm5
    12f0:	f2 0f 59 6c c6 18    	mulsd  0x18(%rsi,%rax,8),%xmm5
    12f6:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    12fa:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    12fe:	48 83 c0 04          	add    $0x4,%rax
    1302:	48 39 d0             	cmp    %rdx,%rax
    1305:	72 b9                	jb     12c0 <dotprod_4x+0x20>
    1307:	f6 c2 03             	test   $0x3,%dl
    130a:	74 17                	je     1323 <dotprod_4x+0x83>
    130c:	eb 39                	jmp    1347 <dotprod_4x+0xa7>
    130e:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1312:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1316:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    131a:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    131e:	f6 c2 03             	test   $0x3,%dl
    1321:	75 24                	jne    1347 <dotprod_4x+0xa7>
    1323:	48 83 fa 02          	cmp    $0x2,%rdx
    1327:	76 1e                	jbe    1347 <dotprod_4x+0xa7>
    1329:	48 8d 42 fd          	lea    -0x3(%rdx),%rax
    132d:	0f 1f 00             	nopl   (%rax)
    1330:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
    1335:	f2 0f 59 24 c6       	mulsd  (%rsi,%rax,8),%xmm4
    133a:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
    133e:	48 83 c0 01          	add    $0x1,%rax
    1342:	48 39 d0             	cmp    %rdx,%rax
    1345:	72 e9                	jb     1330 <dotprod_4x+0x90>
    1347:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    134b:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    134f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1353:	c3                   	retq   
    1354:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    135b:	00 00 00 
    135e:	66 90                	xchg   %ax,%ax

0000000000001360 <dotprod_8x>:
    1360:	48 85 d2             	test   %rdx,%rdx
    1363:	0f 84 bb 00 00 00    	je     1424 <dotprod_8x+0xc4>
    1369:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    136d:	31 c0                	xor    %eax,%eax
    136f:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1373:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1377:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    137c:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1381:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1385:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    1389:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    138d:	0f 1f 00             	nopl   (%rax)
    1390:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1395:	f2 0f 10 54 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm2
    139b:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    13a0:	f2 0f 59 54 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm2
    13a6:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
    13aa:	f2 0f 10 4c c7 10    	movsd  0x10(%rdi,%rax,8),%xmm1
    13b0:	f2 0f 59 4c c6 10    	mulsd  0x10(%rsi,%rax,8),%xmm1
    13b6:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
    13ba:	f2 0f 10 54 c7 18    	movsd  0x18(%rdi,%rax,8),%xmm2
    13c0:	f2 0f 59 54 c6 18    	mulsd  0x18(%rsi,%rax,8),%xmm2
    13c6:	f2 0f 58 e9          	addsd  %xmm1,%xmm5
    13ca:	f2 0f 10 4c c7 20    	movsd  0x20(%rdi,%rax,8),%xmm1
    13d0:	f2 0f 59 4c c6 20    	mulsd  0x20(%rsi,%rax,8),%xmm1
    13d6:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
    13da:	f2 0f 10 54 c7 28    	movsd  0x28(%rdi,%rax,8),%xmm2
    13e0:	f2 0f 59 54 c6 28    	mulsd  0x28(%rsi,%rax,8),%xmm2
    13e6:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    13ea:	f2 0f 10 4c c7 30    	movsd  0x30(%rdi,%rax,8),%xmm1
    13f0:	f2 0f 59 4c c6 30    	mulsd  0x30(%rsi,%rax,8),%xmm1
    13f6:	f2 44 0f 58 ca       	addsd  %xmm2,%xmm9
    13fb:	f2 0f 10 54 c7 38    	movsd  0x38(%rdi,%rax,8),%xmm2
    1401:	f2 0f 59 54 c6 38    	mulsd  0x38(%rsi,%rax,8),%xmm2
    1407:	f2 44 0f 58 c1       	addsd  %xmm1,%xmm8
    140c:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1410:	48 83 c0 08          	add    $0x8,%rax
    1414:	48 39 d0             	cmp    %rdx,%rax
    1417:	0f 82 73 ff ff ff    	jb     1390 <dotprod_8x+0x30>
    141d:	f6 c2 07             	test   $0x7,%dl
    1420:	74 29                	je     144b <dotprod_8x+0xeb>
    1422:	eb 53                	jmp    1477 <dotprod_8x+0x117>
    1424:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1428:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    142c:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1430:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1435:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    143a:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    143e:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1442:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1446:	f6 c2 07             	test   $0x7,%dl
    1449:	75 2c                	jne    1477 <dotprod_8x+0x117>
    144b:	48 83 fa 06          	cmp    $0x6,%rdx
    144f:	76 26                	jbe    1477 <dotprod_8x+0x117>
    1451:	48 8d 42 f9          	lea    -0x7(%rdx),%rax
    1455:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    145c:	00 00 00 
    145f:	90                   	nop
    1460:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1465:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    146a:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
    146e:	48 83 c0 01          	add    $0x1,%rax
    1472:	48 39 d0             	cmp    %rdx,%rax
    1475:	72 e9                	jb     1460 <dotprod_8x+0x100>
    1477:	f2 0f 58 fe          	addsd  %xmm6,%xmm7
    147b:	f2 0f 58 ef          	addsd  %xmm7,%xmm5
    147f:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    1483:	f2 0f 58 dc          	addsd  %xmm4,%xmm3
    1487:	f2 44 0f 58 cb       	addsd  %xmm3,%xmm9
    148c:	f2 45 0f 58 c1       	addsd  %xmm9,%xmm8
    1491:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    1496:	c3                   	retq   
    1497:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    149e:	00 00 

00000000000014a0 <dotprod_16x>:
    14a0:	48 85 d2             	test   %rdx,%rdx
    14a3:	0f 84 d9 01 00 00    	je     1682 <dotprod_16x+0x1e2>
    14a9:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    14ad:	31 c0                	xor    %eax,%eax
    14af:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    14b4:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    14b8:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    14bc:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    14c0:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    14c4:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    14c8:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    14cd:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14d1:	f2 0f 11 54 24 e8    	movsd  %xmm2,-0x18(%rsp)
    14d7:	66 45 0f 57 f6       	xorpd  %xmm14,%xmm14
    14dc:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14e0:	f2 0f 11 54 24 e0    	movsd  %xmm2,-0x20(%rsp)
    14e6:	66 45 0f 57 ed       	xorpd  %xmm13,%xmm13
    14eb:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14ef:	f2 0f 11 54 24 d8    	movsd  %xmm2,-0x28(%rsp)
    14f5:	66 45 0f 57 ff       	xorpd  %xmm15,%xmm15
    14fa:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    14ff:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    1504:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    150b:	00 00 00 
    150e:	66 90                	xchg   %ax,%ax
    1510:	f2 44 0f 10 04 c7    	movsd  (%rdi,%rax,8),%xmm8
    1516:	66 41 0f 28 d1       	movapd %xmm9,%xmm2
    151b:	f2 44 0f 10 4c c7 08 	movsd  0x8(%rdi,%rax,8),%xmm9
    1522:	f2 44 0f 59 04 c6    	mulsd  (%rsi,%rax,8),%xmm8
    1528:	f2 44 0f 59 4c c6 08 	mulsd  0x8(%rsi,%rax,8),%xmm9
    152f:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1534:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1538:	66 0f 28 ce          	movapd %xmm6,%xmm1
    153c:	66 0f 28 f5          	movapd %xmm5,%xmm6
    1540:	66 0f 28 ec          	movapd %xmm4,%xmm5
    1544:	f2 0f 10 64 c7 10    	movsd  0x10(%rdi,%rax,8),%xmm4
    154a:	f2 0f 59 64 c6 10    	mulsd  0x10(%rsi,%rax,8),%xmm4
    1550:	f2 45 0f 58 e1       	addsd  %xmm9,%xmm12
    1555:	66 44 0f 28 ca       	movapd %xmm2,%xmm9
    155a:	66 44 0f 28 c0       	movapd %xmm0,%xmm8
    155f:	f2 0f 10 54 c7 18    	movsd  0x18(%rdi,%rax,8),%xmm2
    1565:	f2 0f 59 54 c6 18    	mulsd  0x18(%rsi,%rax,8),%xmm2
    156b:	f2 44 0f 58 dc       	addsd  %xmm4,%xmm11
    1570:	66 0f 28 e5          	movapd %xmm5,%xmm4
    1574:	66 0f 28 ee          	movapd %xmm6,%xmm5
    1578:	66 0f 28 f1          	movapd %xmm1,%xmm6
    157c:	66 0f 28 cb          	movapd %xmm3,%xmm1
    1580:	f2 0f 10 44 c7 20    	movsd  0x20(%rdi,%rax,8),%xmm0
    1586:	f2 0f 59 44 c6 20    	mulsd  0x20(%rsi,%rax,8),%xmm0
    158c:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
    1591:	f2 0f 10 54 c7 28    	movsd  0x28(%rdi,%rax,8),%xmm2
    1597:	f2 0f 59 54 c6 28    	mulsd  0x28(%rsi,%rax,8),%xmm2
    159d:	f2 44 0f 58 f8       	addsd  %xmm0,%xmm15
    15a2:	f2 0f 10 44 c7 30    	movsd  0x30(%rdi,%rax,8),%xmm0
    15a8:	f2 0f 59 44 c6 30    	mulsd  0x30(%rsi,%rax,8),%xmm0
    15ae:	f2 0f 10 5c 24 d8    	movsd  -0x28(%rsp),%xmm3
    15b4:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    15b8:	f2 0f 11 5c 24 d8    	movsd  %xmm3,-0x28(%rsp)
    15be:	f2 0f 10 54 c7 38    	movsd  0x38(%rdi,%rax,8),%xmm2
    15c4:	f2 0f 59 54 c6 38    	mulsd  0x38(%rsi,%rax,8),%xmm2
    15ca:	f2 44 0f 58 e8       	addsd  %xmm0,%xmm13
    15cf:	f2 0f 10 44 c7 40    	movsd  0x40(%rdi,%rax,8),%xmm0
    15d5:	f2 0f 59 44 c6 40    	mulsd  0x40(%rsi,%rax,8),%xmm0
    15db:	f2 0f 10 5c 24 e0    	movsd  -0x20(%rsp),%xmm3
    15e1:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    15e5:	f2 0f 11 5c 24 e0    	movsd  %xmm3,-0x20(%rsp)
    15eb:	f2 0f 10 54 c7 48    	movsd  0x48(%rdi,%rax,8),%xmm2
    15f1:	f2 0f 59 54 c6 48    	mulsd  0x48(%rsi,%rax,8),%xmm2
    15f7:	f2 44 0f 58 f0       	addsd  %xmm0,%xmm14
    15fc:	f2 0f 10 44 c7 50    	movsd  0x50(%rdi,%rax,8),%xmm0
    1602:	f2 0f 59 44 c6 50    	mulsd  0x50(%rsi,%rax,8),%xmm0
    1608:	f2 0f 10 5c 24 e8    	movsd  -0x18(%rsp),%xmm3
    160e:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    1612:	f2 0f 11 5c 24 e8    	movsd  %xmm3,-0x18(%rsp)
    1618:	f2 0f 10 54 c7 58    	movsd  0x58(%rdi,%rax,8),%xmm2
    161e:	f2 0f 59 54 c6 58    	mulsd  0x58(%rsi,%rax,8),%xmm2
    1624:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
    1629:	f2 0f 10 44 c7 60    	movsd  0x60(%rdi,%rax,8),%xmm0
    162f:	f2 0f 59 44 c6 60    	mulsd  0x60(%rsi,%rax,8),%xmm0
    1635:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1639:	f2 0f 10 54 c7 68    	movsd  0x68(%rdi,%rax,8),%xmm2
    163f:	f2 0f 59 54 c6 68    	mulsd  0x68(%rsi,%rax,8),%xmm2
    1645:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1649:	f2 0f 10 44 c7 70    	movsd  0x70(%rdi,%rax,8),%xmm0
    164f:	f2 0f 59 44 c6 70    	mulsd  0x70(%rsi,%rax,8),%xmm0
    1655:	f2 0f 58 ea          	addsd  %xmm2,%xmm5
    1659:	f2 0f 10 54 c7 78    	movsd  0x78(%rdi,%rax,8),%xmm2
    165f:	f2 0f 59 54 c6 78    	mulsd  0x78(%rsi,%rax,8),%xmm2
    1665:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
    1669:	f2 44 0f 58 c2       	addsd  %xmm2,%xmm8
    166e:	66 41 0f 28 c0       	movapd %xmm8,%xmm0
    1673:	48 83 c0 10          	add    $0x10,%rax
    1677:	48 39 d0             	cmp    %rdx,%rax
    167a:	0f 82 90 fe ff ff    	jb     1510 <dotprod_16x+0x70>
    1680:	eb 59                	jmp    16db <dotprod_16x+0x23b>
    1682:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    1687:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    168c:	66 45 0f 57 ff       	xorpd  %xmm15,%xmm15
    1691:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1695:	f2 0f 11 44 24 d8    	movsd  %xmm0,-0x28(%rsp)
    169b:	66 45 0f 57 ed       	xorpd  %xmm13,%xmm13
    16a0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16a4:	f2 0f 11 44 24 e0    	movsd  %xmm0,-0x20(%rsp)
    16aa:	66 45 0f 57 f6       	xorpd  %xmm14,%xmm14
    16af:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16b3:	f2 0f 11 44 24 e8    	movsd  %xmm0,-0x18(%rsp)
    16b9:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    16be:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    16c2:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    16c6:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    16ca:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    16ce:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16d2:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    16d7:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    16db:	f2 44 0f 11 64 24 f8 	movsd  %xmm12,-0x8(%rsp)
    16e2:	f2 44 0f 11 5c 24 f0 	movsd  %xmm11,-0x10(%rsp)
    16e9:	66 45 0f 28 e2       	movapd %xmm10,%xmm12
    16ee:	f2 0f 10 54 24 d8    	movsd  -0x28(%rsp),%xmm2
    16f4:	f2 44 0f 10 54 24 e0 	movsd  -0x20(%rsp),%xmm10
    16fb:	f2 0f 10 5c 24 e8    	movsd  -0x18(%rsp),%xmm3
    1701:	f6 c2 0f             	test   $0xf,%dl
    1704:	75 43                	jne    1749 <dotprod_16x+0x2a9>
    1706:	48 83 fa 0e          	cmp    $0xe,%rdx
    170a:	66 45 0f 28 c6       	movapd %xmm14,%xmm8
    170f:	76 3d                	jbe    174e <dotprod_16x+0x2ae>
    1711:	48 8d 42 f1          	lea    -0xf(%rdx),%rax
    1715:	66 45 0f 28 dd       	movapd %xmm13,%xmm11
    171a:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    171f:	f2 44 0f 10 6c 24 f0 	movsd  -0x10(%rsp),%xmm13
    1726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    172d:	00 00 00 
    1730:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
    1735:	f2 0f 59 14 c6       	mulsd  (%rsi,%rax,8),%xmm2
    173a:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
    173e:	48 83 c0 01          	add    $0x1,%rax
    1742:	48 39 d0             	cmp    %rdx,%rax
    1745:	72 e9                	jb     1730 <dotprod_16x+0x290>
    1747:	eb 16                	jmp    175f <dotprod_16x+0x2bf>
    1749:	66 45 0f 28 c6       	movapd %xmm14,%xmm8
    174e:	66 45 0f 28 dd       	movapd %xmm13,%xmm11
    1753:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    1758:	f2 44 0f 10 6c 24 f0 	movsd  -0x10(%rsp),%xmm13
    175f:	f2 0f 10 54 24 f8    	movsd  -0x8(%rsp),%xmm2
    1765:	f2 0f 58 d7          	addsd  %xmm7,%xmm2
    1769:	f2 44 0f 58 ea       	addsd  %xmm2,%xmm13
    176e:	f2 45 0f 58 e5       	addsd  %xmm13,%xmm12
    1773:	f2 45 0f 58 fc       	addsd  %xmm12,%xmm15
    1778:	f2 45 0f 58 f7       	addsd  %xmm15,%xmm14
    177d:	f2 45 0f 58 de       	addsd  %xmm14,%xmm11
    1782:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    1787:	f2 45 0f 58 c2       	addsd  %xmm10,%xmm8
    178c:	f2 41 0f 58 d8       	addsd  %xmm8,%xmm3
    1791:	f2 44 0f 58 cb       	addsd  %xmm3,%xmm9
    1796:	f2 41 0f 58 c9       	addsd  %xmm9,%xmm1
    179b:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
    179f:	f2 0f 58 ee          	addsd  %xmm6,%xmm5
    17a3:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    17a7:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    17ab:	c3                   	retq   
    17ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017b0 <main>:
    17b0:	55                   	push   %rbp
    17b1:	41 57                	push   %r15
    17b3:	41 56                	push   %r14
    17b5:	41 55                	push   %r13
    17b7:	41 54                	push   %r12
    17b9:	53                   	push   %rbx
    17ba:	48 83 ec 28          	sub    $0x28,%rsp
    17be:	e8 bd f9 ff ff       	callq  1180 <parse_args>
    17c3:	48 89 c3             	mov    %rax,%rbx
    17c6:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    17cd:	00 
    17ce:	bf 40 00 00 00       	mov    $0x40,%edi
    17d3:	48 89 ee             	mov    %rbp,%rsi
    17d6:	e8 95 f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17db:	49 89 c4             	mov    %rax,%r12
    17de:	bf 40 00 00 00       	mov    $0x40,%edi
    17e3:	48 89 ee             	mov    %rbp,%rsi
    17e6:	e8 85 f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17eb:	49 89 c6             	mov    %rax,%r14
    17ee:	4c 89 e7             	mov    %r12,%rdi
    17f1:	48 89 c6             	mov    %rax,%rsi
    17f4:	48 89 da             	mov    %rbx,%rdx
    17f7:	e8 04 02 00 00       	callq  1a00 <init>
    17fc:	4c 89 e7             	mov    %r12,%rdi
    17ff:	4c 89 f6             	mov    %r14,%rsi
    1802:	48 89 da             	mov    %rbx,%rdx
    1805:	e8 a6 f9 ff ff       	callq  11b0 <dotprod>
    180a:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
    1810:	4c 89 e7             	mov    %r12,%rdi
    1813:	4c 89 f6             	mov    %r14,%rsi
    1816:	48 89 da             	mov    %rbx,%rdx
    1819:	e8 c2 f9 ff ff       	callq  11e0 <dotprod_2x>
    181e:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
    1824:	4c 89 e7             	mov    %r12,%rdi
    1827:	4c 89 f6             	mov    %r14,%rsi
    182a:	48 89 da             	mov    %rbx,%rdx
    182d:	e8 6e fa ff ff       	callq  12a0 <dotprod_4x>
    1832:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
    1838:	4c 89 e7             	mov    %r12,%rdi
    183b:	4c 89 f6             	mov    %r14,%rsi
    183e:	48 89 da             	mov    %rbx,%rdx
    1841:	e8 1a fb ff ff       	callq  1360 <dotprod_8x>
    1846:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    184c:	4c 89 e7             	mov    %r12,%rdi
    184f:	4c 89 f6             	mov    %r14,%rsi
    1852:	48 89 da             	mov    %rbx,%rdx
    1855:	e8 46 fc ff ff       	callq  14a0 <dotprod_16x>
    185a:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    185f:	48 8d 3d 9e 07 00 00 	lea    0x79e(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1866:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    186c:	b0 01                	mov    $0x1,%al
    186e:	e8 cd f7 ff ff       	callq  1040 <printf@plt>
    1873:	48 8d 3d 95 07 00 00 	lea    0x795(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    187a:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    1880:	b0 01                	mov    $0x1,%al
    1882:	e8 b9 f7 ff ff       	callq  1040 <printf@plt>
    1887:	48 8d 3d 8f 07 00 00 	lea    0x78f(%rip),%rdi        # 201d <_IO_stdin_used+0x1d>
    188e:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    1894:	b0 01                	mov    $0x1,%al
    1896:	e8 a5 f7 ff ff       	callq  1040 <printf@plt>
    189b:	4c 8d 2d 89 07 00 00 	lea    0x789(%rip),%r13        # 202b <_IO_stdin_used+0x2b>
    18a2:	4c 89 ef             	mov    %r13,%rdi
    18a5:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    18ab:	b0 01                	mov    $0x1,%al
    18ad:	e8 8e f7 ff ff       	callq  1040 <printf@plt>
    18b2:	4c 8d 3d 80 07 00 00 	lea    0x780(%rip),%r15        # 2039 <_IO_stdin_used+0x39>
    18b9:	4c 89 ff             	mov    %r15,%rdi
    18bc:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    18c1:	b0 01                	mov    $0x1,%al
    18c3:	e8 78 f7 ff ff       	callq  1040 <printf@plt>
    18c8:	4c 89 e7             	mov    %r12,%rdi
    18cb:	e8 60 f7 ff ff       	callq  1030 <free@plt>
    18d0:	4c 89 f7             	mov    %r14,%rdi
    18d3:	e8 58 f7 ff ff       	callq  1030 <free@plt>
    18d8:	bf 40 00 00 00       	mov    $0x40,%edi
    18dd:	be 28 00 00 00       	mov    $0x28,%esi
    18e2:	e8 89 f7 ff ff       	callq  1070 <aligned_alloc@plt>
    18e7:	48 89 c5             	mov    %rax,%rbp
    18ea:	bf 40 00 00 00       	mov    $0x40,%edi
    18ef:	be 28 00 00 00       	mov    $0x28,%esi
    18f4:	e8 77 f7 ff ff       	callq  1070 <aligned_alloc@plt>
    18f9:	48 89 c3             	mov    %rax,%rbx
    18fc:	ba 05 00 00 00       	mov    $0x5,%edx
    1901:	48 89 ef             	mov    %rbp,%rdi
    1904:	48 89 c6             	mov    %rax,%rsi
    1907:	e8 f4 00 00 00       	callq  1a00 <init>
    190c:	ba 05 00 00 00       	mov    $0x5,%edx
    1911:	48 89 ef             	mov    %rbp,%rdi
    1914:	48 89 de             	mov    %rbx,%rsi
    1917:	e8 94 f8 ff ff       	callq  11b0 <dotprod>
    191c:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
    1922:	ba 05 00 00 00       	mov    $0x5,%edx
    1927:	48 89 ef             	mov    %rbp,%rdi
    192a:	48 89 de             	mov    %rbx,%rsi
    192d:	e8 ae f8 ff ff       	callq  11e0 <dotprod_2x>
    1932:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
    1938:	ba 05 00 00 00       	mov    $0x5,%edx
    193d:	48 89 ef             	mov    %rbp,%rdi
    1940:	48 89 de             	mov    %rbx,%rsi
    1943:	e8 58 f9 ff ff       	callq  12a0 <dotprod_4x>
    1948:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
    194e:	ba 05 00 00 00       	mov    $0x5,%edx
    1953:	48 89 ef             	mov    %rbp,%rdi
    1956:	48 89 de             	mov    %rbx,%rsi
    1959:	e8 02 fa ff ff       	callq  1360 <dotprod_8x>
    195e:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
    1964:	ba 05 00 00 00       	mov    $0x5,%edx
    1969:	48 89 ef             	mov    %rbp,%rdi
    196c:	48 89 de             	mov    %rbx,%rsi
    196f:	e8 2c fb ff ff       	callq  14a0 <dotprod_16x>
    1974:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    1979:	48 8d 3d 84 06 00 00 	lea    0x684(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1980:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    1986:	b0 01                	mov    $0x1,%al
    1988:	e8 b3 f6 ff ff       	callq  1040 <printf@plt>
    198d:	48 8d 3d 7b 06 00 00 	lea    0x67b(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    1994:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    199a:	b0 01                	mov    $0x1,%al
    199c:	e8 9f f6 ff ff       	callq  1040 <printf@plt>
    19a1:	48 8d 3d 75 06 00 00 	lea    0x675(%rip),%rdi        # 201d <_IO_stdin_used+0x1d>
    19a8:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    19ae:	b0 01                	mov    $0x1,%al
    19b0:	e8 8b f6 ff ff       	callq  1040 <printf@plt>
    19b5:	4c 89 ef             	mov    %r13,%rdi
    19b8:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    19be:	b0 01                	mov    $0x1,%al
    19c0:	e8 7b f6 ff ff       	callq  1040 <printf@plt>
    19c5:	4c 89 ff             	mov    %r15,%rdi
    19c8:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    19cd:	b0 01                	mov    $0x1,%al
    19cf:	e8 6c f6 ff ff       	callq  1040 <printf@plt>
    19d4:	48 89 ef             	mov    %rbp,%rdi
    19d7:	e8 54 f6 ff ff       	callq  1030 <free@plt>
    19dc:	48 89 df             	mov    %rbx,%rdi
    19df:	e8 4c f6 ff ff       	callq  1030 <free@plt>
    19e4:	31 c0                	xor    %eax,%eax
    19e6:	48 83 c4 28          	add    $0x28,%rsp
    19ea:	5b                   	pop    %rbx
    19eb:	41 5c                	pop    %r12
    19ed:	41 5d                	pop    %r13
    19ef:	41 5e                	pop    %r14
    19f1:	41 5f                	pop    %r15
    19f3:	5d                   	pop    %rbp
    19f4:	c3                   	retq   
    19f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    19fc:	00 00 00 
    19ff:	90                   	nop

0000000000001a00 <init>:
    1a00:	48 85 d2             	test   %rdx,%rdx
    1a03:	74 2c                	je     1a31 <init+0x31>
    1a05:	31 c0                	xor    %eax,%eax
    1a07:	49 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%r8
    1a0e:	99 b9 3f 
    1a11:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
    1a18:	00 f0 3f 
    1a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1a20:	4c 89 04 c7          	mov    %r8,(%rdi,%rax,8)
    1a24:	48 89 0c c6          	mov    %rcx,(%rsi,%rax,8)
    1a28:	48 83 c0 01          	add    $0x1,%rax
    1a2c:	48 39 c2             	cmp    %rax,%rdx
    1a2f:	75 ef                	jne    1a20 <init+0x20>
    1a31:	c3                   	retq   
    1a32:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1a39:	00 00 00 
    1a3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001a40 <__libc_csu_init>:
    1a40:	f3 0f 1e fa          	endbr64 
    1a44:	41 57                	push   %r15
    1a46:	4c 8d 3d 8b 23 00 00 	lea    0x238b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    1a4d:	41 56                	push   %r14
    1a4f:	49 89 d6             	mov    %rdx,%r14
    1a52:	41 55                	push   %r13
    1a54:	49 89 f5             	mov    %rsi,%r13
    1a57:	41 54                	push   %r12
    1a59:	41 89 fc             	mov    %edi,%r12d
    1a5c:	55                   	push   %rbp
    1a5d:	48 8d 2d 7c 23 00 00 	lea    0x237c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1a64:	53                   	push   %rbx
    1a65:	4c 29 fd             	sub    %r15,%rbp
    1a68:	48 83 ec 08          	sub    $0x8,%rsp
    1a6c:	e8 8f f5 ff ff       	callq  1000 <_init>
    1a71:	48 c1 fd 03          	sar    $0x3,%rbp
    1a75:	74 1f                	je     1a96 <__libc_csu_init+0x56>
    1a77:	31 db                	xor    %ebx,%ebx
    1a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1a80:	4c 89 f2             	mov    %r14,%rdx
    1a83:	4c 89 ee             	mov    %r13,%rsi
    1a86:	44 89 e7             	mov    %r12d,%edi
    1a89:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1a8d:	48 83 c3 01          	add    $0x1,%rbx
    1a91:	48 39 dd             	cmp    %rbx,%rbp
    1a94:	75 ea                	jne    1a80 <__libc_csu_init+0x40>
    1a96:	48 83 c4 08          	add    $0x8,%rsp
    1a9a:	5b                   	pop    %rbx
    1a9b:	5d                   	pop    %rbp
    1a9c:	41 5c                	pop    %r12
    1a9e:	41 5d                	pop    %r13
    1aa0:	41 5e                	pop    %r14
    1aa2:	41 5f                	pop    %r15
    1aa4:	c3                   	retq   
    1aa5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1aac:	00 00 00 00 

0000000000001ab0 <__libc_csu_fini>:
    1ab0:	f3 0f 1e fa          	endbr64 
    1ab4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001ab8 <_fini>:
    1ab8:	f3 0f 1e fa          	endbr64 
    1abc:	48 83 ec 08          	sub    $0x8,%rsp
    1ac0:	48 83 c4 08          	add    $0x8,%rsp
    1ac4:	c3                   	retq   

Déassemblage de la section .rodata :

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al
    2004:	72 65                	jb     206b <__GNU_EH_FRAME_HDR+0x23>
    2006:	73 20                	jae    2028 <_IO_stdin_used+0x28>
    2008:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    200d:	0a 00                	or     (%rax),%al
    200f:	72 65                	jb     2076 <__GNU_EH_FRAME_HDR+0x2e>
    2011:	73 5f                	jae    2072 <__GNU_EH_FRAME_HDR+0x2a>
    2013:	32 78 20             	xor    0x20(%rax),%bh
    2016:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    201b:	0a 00                	or     (%rax),%al
    201d:	72 65                	jb     2084 <__GNU_EH_FRAME_HDR+0x3c>
    201f:	73 5f                	jae    2080 <__GNU_EH_FRAME_HDR+0x38>
    2021:	34 78                	xor    $0x78,%al
    2023:	20 3d 20 25 6c 66    	and    %bh,0x666c2520(%rip)        # 666c4549 <_end+0x666c04f1>
    2029:	0a 00                	or     (%rax),%al
    202b:	72 65                	jb     2092 <__GNU_EH_FRAME_HDR+0x4a>
    202d:	73 5f                	jae    208e <__GNU_EH_FRAME_HDR+0x46>
    202f:	38 78 20             	cmp    %bh,0x20(%rax)
    2032:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2037:	0a 00                	or     (%rax),%al
    2039:	72 65                	jb     20a0 <__GNU_EH_FRAME_HDR+0x58>
    203b:	73 5f                	jae    209c <__GNU_EH_FRAME_HDR+0x54>
    203d:	31 36                	xor    %esi,(%rsi)
    203f:	78 20                	js     2061 <__GNU_EH_FRAME_HDR+0x19>
    2041:	3d 20 25 6c 66       	cmp    $0x666c2520,%eax
    2046:	0a 00                	or     (%rax),%al

Déassemblage de la section .eh_frame_hdr :

0000000000002048 <__GNU_EH_FRAME_HDR>:
    2048:	01 1b                	add    %ebx,(%rbx)
    204a:	03 3b                	add    (%rbx),%edi
    204c:	6c                   	insb   (%dx),%es:(%rdi)
    204d:	00 00                	add    %al,(%rax)
    204f:	00 0c 00             	add    %cl,(%rax,%rax,1)
    2052:	00 00                	add    %al,(%rax)
    2054:	d8 ef                	fsubr  %st(7),%st
    2056:	ff                   	(bad)  
    2057:	ff a0 00 00 00 38    	jmpq   *0x38000000(%rax)
    205d:	f0 ff                	lock (bad) 
    205f:	ff 88 00 00 00 38    	decl   0x38000000(%rax)
    2065:	f1                   	icebp  
    2066:	ff                   	(bad)  
    2067:	ff c8                	dec    %eax
    2069:	00 00                	add    %al,(%rax)
    206b:	00 68 f1             	add    %ch,-0xf(%rax)
    206e:	ff                   	(bad)  
    206f:	ff e4                	jmpq   *%rsp
    2071:	00 00                	add    %al,(%rax)
    2073:	00 98 f1 ff ff f8    	add    %bl,-0x700000f(%rax)
    2079:	00 00                	add    %al,(%rax)
    207b:	00 58 f2             	add    %bl,-0xe(%rax)
    207e:	ff                   	(bad)  
    207f:	ff 0c 01             	decl   (%rcx,%rax,1)
    2082:	00 00                	add    %al,(%rax)
    2084:	18 f3                	sbb    %dh,%bl
    2086:	ff                   	(bad)  
    2087:	ff 20                	jmpq   *(%rax)
    2089:	01 00                	add    %eax,(%rax)
    208b:	00 58 f4             	add    %bl,-0xc(%rax)
    208e:	ff                   	(bad)  
    208f:	ff 34 01             	pushq  (%rcx,%rax,1)
    2092:	00 00                	add    %al,(%rax)
    2094:	68 f7 ff ff 48       	pushq  $0x48fffff7
    2099:	01 00                	add    %eax,(%rax)
    209b:	00 b8 f9 ff ff 94    	add    %bh,-0x6b000007(%rax)
    20a1:	01 00                	add    %eax,(%rax)
    20a3:	00 f8                	add    %bh,%al
    20a5:	f9                   	stc    
    20a6:	ff                   	(bad)  
    20a7:	ff a8 01 00 00 68    	ljmp   *0x68000001(%rax)
    20ad:	fa                   	cli    
    20ae:	ff                   	(bad)  
    20af:	ff f0                	push   %rax
    20b1:	01 00                	add    %eax,(%rax)
	...

Déassemblage de la section .eh_frame :

00000000000020b8 <__FRAME_END__-0x194>:
    20b8:	14 00                	adc    $0x0,%al
    20ba:	00 00                	add    %al,(%rax)
    20bc:	00 00                	add    %al,(%rax)
    20be:	00 00                	add    %al,(%rax)
    20c0:	01 7a 52             	add    %edi,0x52(%rdx)
    20c3:	00 01                	add    %al,(%rcx)
    20c5:	78 10                	js     20d7 <__GNU_EH_FRAME_HDR+0x8f>
    20c7:	01 1b                	add    %ebx,(%rbx)
    20c9:	0c 07                	or     $0x7,%al
    20cb:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    20d1:	00 00                	add    %al,(%rax)
    20d3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20d6:	00 00                	add    %al,(%rax)
    20d8:	a8 ef                	test   $0xef,%al
    20da:	ff                   	(bad)  
    20db:	ff 2f                	ljmp   *(%rdi)
    20dd:	00 00                	add    %al,(%rax)
    20df:	00 00                	add    %al,(%rax)
    20e1:	44 07                	rex.R (bad) 
    20e3:	10 00                	adc    %al,(%rax)
    20e5:	00 00                	add    %al,(%rax)
    20e7:	00 24 00             	add    %ah,(%rax,%rax,1)
    20ea:	00 00                	add    %al,(%rax)
    20ec:	34 00                	xor    $0x0,%al
    20ee:	00 00                	add    %al,(%rax)
    20f0:	30 ef                	xor    %ch,%bh
    20f2:	ff                   	(bad)  
    20f3:	ff 60 00             	jmpq   *0x0(%rax)
    20f6:	00 00                	add    %al,(%rax)
    20f8:	00 0e                	add    %cl,(%rsi)
    20fa:	10 46 0e             	adc    %al,0xe(%rsi)
    20fd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2100:	0b 77 08             	or     0x8(%rdi),%esi
    2103:	80 00 3f             	addb   $0x3f,(%rax)
    2106:	1a 3b                	sbb    (%rbx),%bh
    2108:	2a 33                	sub    (%rbx),%dh
    210a:	24 22                	and    $0x22,%al
    210c:	00 00                	add    %al,(%rax)
    210e:	00 00                	add    %al,(%rax)
    2110:	18 00                	sbb    %al,(%rax)
    2112:	00 00                	add    %al,(%rax)
    2114:	5c                   	pop    %rsp
    2115:	00 00                	add    %al,(%rax)
    2117:	00 68 f0             	add    %ch,-0x10(%rax)
    211a:	ff                   	(bad)  
    211b:	ff 22                	jmpq   *(%rdx)
    211d:	00 00                	add    %al,(%rax)
    211f:	00 00                	add    %al,(%rax)
    2121:	41 0e                	rex.B (bad) 
    2123:	10 56 0e             	adc    %dl,0xe(%rsi)
    2126:	08 41 0e             	or     %al,0xe(%rcx)
    2129:	10 00                	adc    %al,(%rax)
    212b:	00 10                	add    %dl,(%rax)
    212d:	00 00                	add    %al,(%rax)
    212f:	00 78 00             	add    %bh,0x0(%rax)
    2132:	00 00                	add    %al,(%rax)
    2134:	7c f0                	jl     2126 <__GNU_EH_FRAME_HDR+0xde>
    2136:	ff                   	(bad)  
    2137:	ff 28                	ljmp   *(%rax)
    2139:	00 00                	add    %al,(%rax)
    213b:	00 00                	add    %al,(%rax)
    213d:	00 00                	add    %al,(%rax)
    213f:	00 10                	add    %dl,(%rax)
    2141:	00 00                	add    %al,(%rax)
    2143:	00 8c 00 00 00 98 f0 	add    %cl,-0xf680000(%rax,%rax,1)
    214a:	ff                   	(bad)  
    214b:	ff b3 00 00 00 00    	pushq  0x0(%rbx)
    2151:	00 00                	add    %al,(%rax)
    2153:	00 10                	add    %dl,(%rax)
    2155:	00 00                	add    %al,(%rax)
    2157:	00 a0 00 00 00 44    	add    %ah,0x44000000(%rax)
    215d:	f1                   	icebp  
    215e:	ff                   	(bad)  
    215f:	ff b4 00 00 00 00 00 	pushq  0x0(%rax,%rax,1)
    2166:	00 00                	add    %al,(%rax)
    2168:	10 00                	adc    %al,(%rax)
    216a:	00 00                	add    %al,(%rax)
    216c:	b4 00                	mov    $0x0,%ah
    216e:	00 00                	add    %al,(%rax)
    2170:	f0 f1                	lock icebp 
    2172:	ff                   	(bad)  
    2173:	ff 37                	pushq  (%rdi)
    2175:	01 00                	add    %eax,(%rax)
    2177:	00 00                	add    %al,(%rax)
    2179:	00 00                	add    %al,(%rax)
    217b:	00 10                	add    %dl,(%rax)
    217d:	00 00                	add    %al,(%rax)
    217f:	00 c8                	add    %cl,%al
    2181:	00 00                	add    %al,(%rax)
    2183:	00 1c f3             	add    %bl,(%rbx,%rsi,8)
    2186:	ff                   	(bad)  
    2187:	ff 0c 03             	decl   (%rbx,%rax,1)
    218a:	00 00                	add    %al,(%rax)
    218c:	00 00                	add    %al,(%rax)
    218e:	00 00                	add    %al,(%rax)
    2190:	48 00 00             	rex.W add %al,(%rax)
    2193:	00 dc                	add    %bl,%ah
    2195:	00 00                	add    %al,(%rax)
    2197:	00 18                	add    %bl,(%rax)
    2199:	f6 ff                	idiv   %bh
    219b:	ff 45 02             	incl   0x2(%rbp)
    219e:	00 00                	add    %al,(%rax)
    21a0:	00 41 0e             	add    %al,0xe(%rcx)
    21a3:	10 42 0e             	adc    %al,0xe(%rdx)
    21a6:	18 42 0e             	sbb    %al,0xe(%rdx)
    21a9:	20 42 0e             	and    %al,0xe(%rdx)
    21ac:	28 42 0e             	sub    %al,0xe(%rdx)
    21af:	30 41 0e             	xor    %al,0xe(%rcx)
    21b2:	38 44 0e 60          	cmp    %al,0x60(%rsi,%rcx,1)
    21b6:	83 07 8c             	addl   $0xffffff8c,(%rdi)
    21b9:	06                   	(bad)  
    21ba:	8d 05 8e 04 8f 03    	lea    0x38f048e(%rip),%eax        # 38f264e <_end+0x38ee5f6>
    21c0:	86 02                	xchg   %al,(%rdx)
    21c2:	03 2c 02             	add    (%rdx,%rax,1),%ebp
    21c5:	0e                   	(bad)  
    21c6:	38 41 0e             	cmp    %al,0xe(%rcx)
    21c9:	30 42 0e             	xor    %al,0xe(%rdx)
    21cc:	28 42 0e             	sub    %al,0xe(%rdx)
    21cf:	20 42 0e             	and    %al,0xe(%rdx)
    21d2:	18 42 0e             	sbb    %al,0xe(%rdx)
    21d5:	10 41 0e             	adc    %al,0xe(%rcx)
    21d8:	08 00                	or     %al,(%rax)
    21da:	00 00                	add    %al,(%rax)
    21dc:	10 00                	adc    %al,(%rax)
    21de:	00 00                	add    %al,(%rax)
    21e0:	28 01                	sub    %al,(%rcx)
    21e2:	00 00                	add    %al,(%rax)
    21e4:	1c f8                	sbb    $0xf8,%al
    21e6:	ff                   	(bad)  
    21e7:	ff 32                	pushq  (%rdx)
    21e9:	00 00                	add    %al,(%rax)
    21eb:	00 00                	add    %al,(%rax)
    21ed:	00 00                	add    %al,(%rax)
    21ef:	00 44 00 00          	add    %al,0x0(%rax,%rax,1)
    21f3:	00 3c 01             	add    %bh,(%rcx,%rax,1)
    21f6:	00 00                	add    %al,(%rax)
    21f8:	48 f8                	rex.W clc 
    21fa:	ff                   	(bad)  
    21fb:	ff 65 00             	jmpq   *0x0(%rbp)
    21fe:	00 00                	add    %al,(%rax)
    2200:	00 46 0e             	add    %al,0xe(%rsi)
    2203:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    2209:	8e 03                	mov    (%rbx),%es
    220b:	45 0e                	rex.RB (bad) 
    220d:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    2213:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff8630305d <_end+0xffffffff862ff005>
    2219:	06                   	(bad)  
    221a:	48 0e                	rex.W (bad) 
    221c:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    2222:	6e                   	outsb  %ds:(%rsi),(%dx)
    2223:	0e                   	(bad)  
    2224:	38 41 0e             	cmp    %al,0xe(%rcx)
    2227:	30 41 0e             	xor    %al,0xe(%rcx)
    222a:	28 42 0e             	sub    %al,0xe(%rdx)
    222d:	20 42 0e             	and    %al,0xe(%rdx)
    2230:	18 42 0e             	sbb    %al,0xe(%rdx)
    2233:	10 42 0e             	adc    %al,0xe(%rdx)
    2236:	08 00                	or     %al,(%rax)
    2238:	10 00                	adc    %al,(%rax)
    223a:	00 00                	add    %al,(%rax)
    223c:	84 01                	test   %al,(%rcx)
    223e:	00 00                	add    %al,(%rax)
    2240:	70 f8                	jo     223a <__GNU_EH_FRAME_HDR+0x1f2>
    2242:	ff                   	(bad)  
    2243:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 2249 <__GNU_EH_FRAME_HDR+0x201>
    2249:	00 00                	add    %al,(%rax)
	...

000000000000224c <__FRAME_END__>:
    224c:	00 00                	add    %al,(%rax)
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
    3e0f:	00 b8 1a 00 00 00    	add    %bh,0x1a(%rax)
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
   0:	7f 07                	jg     9 <__abi_tag-0x2bb>
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
  25:	00 b2 08 00 00 02    	add    %dh,0x2000008(%rdx)
  2b:	80 11 00             	adcb   $0x0,(%rcx)
  2e:	00 00                	add    %al,(%rax)
  30:	00 00                	add    %al,(%rax)
  32:	00 22                	add    %ah,(%rdx)
  34:	00 00                	add    %al,(%rax)
  36:	00 01                	add    %al,(%rcx)
  38:	57                   	push   %rdi
  39:	52                   	push   %rdx
  3a:	00 00                	add    %al,(%rax)
  3c:	00 01                	add    %al,(%rcx)
  3e:	08 1b                	or     %bl,(%rbx)
  40:	07                   	(bad)  
  41:	00 00                	add    %al,(%rax)
  43:	03 00                	add    (%rax),%eax
  45:	00 00                	add    %al,(%rax)
  47:	00 ba 00 00 00 01    	add    %bh,0x1000000(%rdx)
  4d:	08 29                	or     %ch,(%rcx)
  4f:	07                   	(bad)  
  50:	00 00                	add    %al,(%rax)
  52:	03 62 00             	add    0x0(%rdx),%esp
  55:	00 00                	add    %al,(%rax)
  57:	bf 00 00 00 01       	mov    $0x1000000,%edi
  5c:	08 30                	or     %dh,(%rax)
  5e:	07                   	(bad)  
  5f:	00 00                	add    %al,(%rax)
  61:	00 02                	add    %al,(%rdx)
  63:	b0 11                	mov    $0x11,%al
  65:	00 00                	add    %al,(%rax)
  67:	00 00                	add    %al,(%rax)
  69:	00 00                	add    %al,(%rax)
  6b:	28 00                	sub    %al,(%rax)
  6d:	00 00                	add    %al,(%rax)
  6f:	01 57 74             	add    %edx,0x74(%rdi)
  72:	00 00                	add    %al,(%rax)
  74:	00 01                	add    %al,(%rcx)
  76:	1b 22                	sbb    (%rdx),%esp
  78:	07                   	(bad)  
  79:	00 00                	add    %al,(%rax)
  7b:	04 01                	add    $0x1,%al
  7d:	55                   	push   %rbp
  7e:	c9                   	leaveq 
  7f:	00 00                	add    %al,(%rax)
  81:	00 01                	add    %al,(%rcx)
  83:	1b 41 07             	sbb    0x7(%rcx),%eax
  86:	00 00                	add    %al,(%rax)
  88:	04 01                	add    $0x1,%al
  8a:	54                   	push   %rsp
  8b:	cb                   	lret   
  8c:	00 00                	add    %al,(%rax)
  8e:	00 01                	add    %al,(%rcx)
  90:	1b 41 07             	sbb    0x7(%rcx),%eax
  93:	00 00                	add    %al,(%rax)
  95:	04 01                	add    $0x1,%al
  97:	51                   	push   %rcx
  98:	b3 00                	mov    $0x0,%bl
  9a:	00 00                	add    %al,(%rax)
  9c:	01 1b                	add    %ebx,(%rbx)
  9e:	1b 07                	sbb    (%rdi),%eax
  a0:	00 00                	add    %al,(%rax)
  a2:	05 c4 00 00 00       	add    $0xc4,%eax
  a7:	3d 00 00 00 01       	cmp    $0x1000000,%eax
  ac:	1d 22 07 00 00       	sbb    $0x722,%eax
  b1:	06                   	(bad)  
  b2:	b4 11                	mov    $0x11,%ah
  b4:	00 00                	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	00 00                	add    %al,(%rax)
  ba:	23 00                	and    (%rax),%eax
  bc:	00 00                	add    %al,(%rax)
  be:	05 fb 00 00 00       	add    $0xfb,%eax
  c3:	cd 00                	int    $0x0
  c5:	00 00                	add    %al,(%rax)
  c7:	01 1f                	add    %ebx,(%rdi)
  c9:	1b 07                	sbb    (%rdi),%eax
  cb:	00 00                	add    %al,(%rax)
  cd:	00 00                	add    %al,(%rax)
  cf:	02 e0                	add    %al,%ah
  d1:	11 00                	adc    %eax,(%rax)
  d3:	00 00                	add    %al,(%rax)
  d5:	00 00                	add    %al,(%rax)
  d7:	00 b3 00 00 00 01    	add    %dh,0x1000000(%rbx)
  dd:	57                   	push   %rdi
  de:	83 00 00             	addl   $0x0,(%rax)
  e1:	00 01                	add    %al,(%rcx)
  e3:	26 22 07             	and    %es:(%rdi),%al
  e6:	00 00                	add    %al,(%rax)
  e8:	04 01                	add    $0x1,%al
  ea:	55                   	push   %rbp
  eb:	c9                   	leaveq 
  ec:	00 00                	add    %al,(%rax)
  ee:	00 01                	add    %al,(%rcx)
  f0:	26 41 07             	es rex.B (bad) 
  f3:	00 00                	add    %al,(%rax)
  f5:	04 01                	add    $0x1,%al
  f7:	54                   	push   %rsp
  f8:	cb                   	lret   
  f9:	00 00                	add    %al,(%rax)
  fb:	00 01                	add    %al,(%rcx)
  fd:	26 41 07             	es rex.B (bad) 
 100:	00 00                	add    %al,(%rax)
 102:	04 01                	add    $0x1,%al
 104:	51                   	push   %rcx
 105:	b3 00                	mov    $0x0,%bl
 107:	00 00                	add    %al,(%rax)
 109:	01 26                	add    %esp,(%rsi)
 10b:	1b 07                	sbb    (%rdi),%eax
 10d:	00 00                	add    %al,(%rax)
 10f:	05 32 01 00 00       	add    $0x132,%eax
 114:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 119:	28 4b 07             	sub    %cl,0x7(%rbx)
 11c:	00 00                	add    %al,(%rax)
 11e:	06                   	(bad)  
 11f:	e5 11                	in     $0x11,%eax
 121:	00 00                	add    %al,(%rax)
 123:	00 00                	add    %al,(%rax)
 125:	00 00                	add    %al,(%rax)
 127:	42 00 00             	rex.X add %al,(%rax)
 12a:	00 05 7e 02 00 00    	add    %al,0x27e(%rip)        # 3ae <__abi_tag+0xea>
 130:	cd 00                	int    $0x0
 132:	00 00                	add    %al,(%rax)
 134:	01 39                	add    %edi,(%rcx)
 136:	1b 07                	sbb    (%rdi),%eax
 138:	00 00                	add    %al,(%rax)
 13a:	00 07                	add    %al,(%rdi)
 13c:	00 00                	add    %al,(%rax)
 13e:	00 00                	add    %al,(%rax)
 140:	05 00 03 00 00       	add    $0x300,%eax
 145:	e3 00                	jrcxz  147 <__abi_tag-0x17d>
 147:	00 00                	add    %al,(%rax)
 149:	01 2d 1b 07 00 00    	add    %ebp,0x71b(%rip)        # 86a <__abi_tag+0x5a6>
 14f:	06                   	(bad)  
 150:	2c 12                	sub    $0x12,%al
 152:	00 00                	add    %al,(%rax)
 154:	00 00                	add    %al,(%rax)
 156:	00 00                	add    %al,(%rax)
 158:	3d 00 00 00 05       	cmp    $0x5000000,%eax
 15d:	b5 02                	mov    $0x2,%ch
 15f:	00 00                	add    %al,(%rax)
 161:	cd 00                	int    $0x0
 163:	00 00                	add    %al,(%rax)
 165:	01 2f                	add    %ebp,(%rdi)
 167:	1b 07                	sbb    (%rdi),%eax
 169:	00 00                	add    %al,(%rax)
 16b:	00 00                	add    %al,(%rax)
 16d:	00 02                	add    %al,(%rdx)
 16f:	a0 12 00 00 00 00 00 	movabs 0xb400000000000012,%al
 176:	00 b4 
 178:	00 00                	add    %al,(%rax)
 17a:	00 01                	add    %al,(%rcx)
 17c:	57                   	push   %rdi
 17d:	8e 00                	mov    (%rax),%es
 17f:	00 00                	add    %al,(%rax)
 181:	01 44 22 07          	add    %eax,0x7(%rdx,%riz,1)
 185:	00 00                	add    %al,(%rax)
 187:	04 01                	add    $0x1,%al
 189:	55                   	push   %rbp
 18a:	c9                   	leaveq 
 18b:	00 00                	add    %al,(%rax)
 18d:	00 01                	add    %al,(%rcx)
 18f:	44                   	rex.R
 190:	41 07                	rex.B (bad) 
 192:	00 00                	add    %al,(%rax)
 194:	04 01                	add    $0x1,%al
 196:	54                   	push   %rsp
 197:	cb                   	lret   
 198:	00 00                	add    %al,(%rax)
 19a:	00 01                	add    %al,(%rcx)
 19c:	44                   	rex.R
 19d:	41 07                	rex.B (bad) 
 19f:	00 00                	add    %al,(%rax)
 1a1:	04 01                	add    $0x1,%al
 1a3:	51                   	push   %rcx
 1a4:	b3 00                	mov    $0x0,%bl
 1a6:	00 00                	add    %al,(%rax)
 1a8:	01 44 1b 07          	add    %eax,0x7(%rbx,%rbx,1)
 1ac:	00 00                	add    %al,(%rax)
 1ae:	05 36 03 00 00       	add    $0x336,%eax
 1b3:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 1b8:	46 5e                	rex.RX pop %rsi
 1ba:	07                   	(bad)  
 1bb:	00 00                	add    %al,(%rax)
 1bd:	08 e7                	or     %ah,%bh
 1bf:	00 00                	add    %al,(%rax)
 1c1:	00 01                	add    %al,(%rcx)
 1c3:	47 1b 07             	rex.RXB sbb (%r15),%r8d
 1c6:	00 00                	add    %al,(%rax)
 1c8:	06                   	(bad)  
 1c9:	a0 12 00 00 00 00 00 	movabs 0x6700000000000012,%al
 1d0:	00 67 
 1d2:	00 00                	add    %al,(%rax)
 1d4:	00 05 12 04 00 00    	add    %al,0x412(%rip)        # 5ec <__abi_tag+0x328>
 1da:	cd 00                	int    $0x0
 1dc:	00 00                	add    %al,(%rax)
 1de:	01 49 1b             	add    %ecx,0x1b(%rcx)
 1e1:	07                   	(bad)  
 1e2:	00 00                	add    %al,(%rax)
 1e4:	00 06                	add    %al,(%rsi)
 1e6:	29 13                	sub    %edx,(%rbx)
 1e8:	00 00                	add    %al,(%rax)
 1ea:	00 00                	add    %al,(%rax)
 1ec:	00 00                	add    %al,(%rax)
 1ee:	1e                   	(bad)  
 1ef:	00 00                	add    %al,(%rax)
 1f1:	00 05 96 04 00 00    	add    %al,0x496(%rip)        # 68d <__abi_tag+0x3c9>
 1f7:	ec                   	in     (%dx),%al
 1f8:	00 00                	add    %al,(%rax)
 1fa:	00 01                	add    %al,(%rcx)
 1fc:	53                   	push   %rbx
 1fd:	1b 07                	sbb    (%rdi),%eax
 1ff:	00 00                	add    %al,(%rax)
 201:	06                   	(bad)  
 202:	29 13                	sub    %edx,(%rbx)
 204:	00 00                	add    %al,(%rax)
 206:	00 00                	add    %al,(%rax)
 208:	00 00                	add    %al,(%rax)
 20a:	1e                   	(bad)  
 20b:	00 00                	add    %al,(%rax)
 20d:	00 05 49 04 00 00    	add    %al,0x449(%rip)        # 65c <__abi_tag+0x398>
 213:	cd 00                	int    $0x0
 215:	00 00                	add    %al,(%rax)
 217:	01 55 1b             	add    %edx,0x1b(%rbp)
 21a:	07                   	(bad)  
 21b:	00 00                	add    %al,(%rax)
 21d:	00 00                	add    %al,(%rax)
 21f:	00 02                	add    %al,(%rdx)
 221:	60                   	(bad)  
 222:	13 00                	adc    (%rax),%eax
 224:	00 00                	add    %al,(%rax)
 226:	00 00                	add    %al,(%rax)
 228:	00 37                	add    %dh,(%rdi)
 22a:	01 00                	add    %eax,(%rax)
 22c:	00 01                	add    %al,(%rcx)
 22e:	57                   	push   %rdi
 22f:	99                   	cltd   
 230:	00 00                	add    %al,(%rax)
 232:	00 01                	add    %al,(%rcx)
 234:	5d                   	pop    %rbp
 235:	22 07                	and    (%rdi),%al
 237:	00 00                	add    %al,(%rax)
 239:	04 01                	add    $0x1,%al
 23b:	55                   	push   %rbp
 23c:	c9                   	leaveq 
 23d:	00 00                	add    %al,(%rax)
 23f:	00 01                	add    %al,(%rcx)
 241:	5d                   	pop    %rbp
 242:	41 07                	rex.B (bad) 
 244:	00 00                	add    %al,(%rax)
 246:	04 01                	add    $0x1,%al
 248:	54                   	push   %rsp
 249:	cb                   	lret   
 24a:	00 00                	add    %al,(%rax)
 24c:	00 01                	add    %al,(%rcx)
 24e:	5d                   	pop    %rbp
 24f:	41 07                	rex.B (bad) 
 251:	00 00                	add    %al,(%rax)
 253:	04 01                	add    $0x1,%al
 255:	51                   	push   %rcx
 256:	b3 00                	mov    $0x0,%bl
 258:	00 00                	add    %al,(%rax)
 25a:	01 5d 1b             	add    %ebx,0x1b(%rbp)
 25d:	07                   	(bad)  
 25e:	00 00                	add    %al,(%rax)
 260:	05 d0 04 00 00       	add    $0x4d0,%eax
 265:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 26a:	5f                   	pop    %rdi
 26b:	6a 07                	pushq  $0x7
 26d:	00 00                	add    %al,(%rax)
 26f:	08 e7                	or     %ah,%bh
 271:	00 00                	add    %al,(%rax)
 273:	00 01                	add    %al,(%rcx)
 275:	60                   	(bad)  
 276:	1b 07                	sbb    (%rdi),%eax
 278:	00 00                	add    %al,(%rax)
 27a:	06                   	(bad)  
 27b:	60                   	(bad)  
 27c:	13 00                	adc    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	00 00                	add    %al,(%rax)
 282:	00 bd 00 00 00 05    	add    %bh,0x5000000(%rbp)
 288:	76 06                	jbe    290 <__abi_tag-0x34>
 28a:	00 00                	add    %al,(%rax)
 28c:	cd 00                	int    $0x0
 28e:	00 00                	add    %al,(%rax)
 290:	01 62 1b             	add    %esp,0x1b(%rdx)
 293:	07                   	(bad)  
 294:	00 00                	add    %al,(%rax)
 296:	00 06                	add    %al,(%rsi)
 298:	51                   	push   %rcx
 299:	14 00                	adc    $0x0,%al
 29b:	00 00                	add    %al,(%rax)
 29d:	00 00                	add    %al,(%rax)
 29f:	00 26                	add    %ah,(%rsi)
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 05 fa 06 00 00    	add    %al,0x6fa(%rip)        # 9a3 <__abi_tag+0x6df>
 2a9:	f0 00 00             	lock add %al,(%rax)
 2ac:	00 01                	add    %al,(%rcx)
 2ae:	70 1b                	jo     2cb <__abi_tag+0x7>
 2b0:	07                   	(bad)  
 2b1:	00 00                	add    %al,(%rax)
 2b3:	06                   	(bad)  
 2b4:	51                   	push   %rcx
 2b5:	14 00                	adc    $0x0,%al
 2b7:	00 00                	add    %al,(%rax)
 2b9:	00 00                	add    %al,(%rax)
 2bb:	00 26                	add    %ah,(%rsi)
 2bd:	00 00                	add    %al,(%rax)
 2bf:	00 05 ad 06 00 00    	add    %al,0x6ad(%rip)        # 972 <__abi_tag+0x6ae>
 2c5:	cd 00                	int    $0x0
 2c7:	00 00                	add    %al,(%rax)
 2c9:	01 72 1b             	add    %esi,0x1b(%rdx)
 2cc:	07                   	(bad)  
 2cd:	00 00                	add    %al,(%rax)
 2cf:	00 00                	add    %al,(%rax)
 2d1:	00 02                	add    %al,(%rdx)
 2d3:	a0 14 00 00 00 00 00 	movabs 0xc00000000000014,%al
 2da:	00 0c 
 2dc:	03 00                	add    (%rax),%eax
 2de:	00 01                	add    %al,(%rcx)
 2e0:	57                   	push   %rdi
 2e1:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 2e2:	00 00                	add    %al,(%rax)
 2e4:	00 01                	add    %al,(%rcx)
 2e6:	7a 22                	jp     30a <__abi_tag+0x46>
 2e8:	07                   	(bad)  
 2e9:	00 00                	add    %al,(%rax)
 2eb:	04 01                	add    $0x1,%al
 2ed:	55                   	push   %rbp
 2ee:	c9                   	leaveq 
 2ef:	00 00                	add    %al,(%rax)
 2f1:	00 01                	add    %al,(%rcx)
 2f3:	7a 41                	jp     336 <__abi_tag+0x72>
 2f5:	07                   	(bad)  
 2f6:	00 00                	add    %al,(%rax)
 2f8:	04 01                	add    $0x1,%al
 2fa:	54                   	push   %rsp
 2fb:	cb                   	lret   
 2fc:	00 00                	add    %al,(%rax)
 2fe:	00 01                	add    %al,(%rcx)
 300:	7a 41                	jp     343 <__abi_tag+0x7f>
 302:	07                   	(bad)  
 303:	00 00                	add    %al,(%rax)
 305:	04 01                	add    $0x1,%al
 307:	51                   	push   %rcx
 308:	b3 00                	mov    $0x0,%bl
 30a:	00 00                	add    %al,(%rax)
 30c:	01 7a 1b             	add    %edi,0x1b(%rdx)
 30f:	07                   	(bad)  
 310:	00 00                	add    %al,(%rax)
 312:	05 34 07 00 00       	add    $0x734,%eax
 317:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 31c:	7c 76                	jl     394 <__abi_tag+0xd0>
 31e:	07                   	(bad)  
 31f:	00 00                	add    %al,(%rax)
 321:	08 e7                	or     %ah,%bh
 323:	00 00                	add    %al,(%rax)
 325:	00 01                	add    %al,(%rcx)
 327:	7d 1b                	jge    344 <__abi_tag+0x80>
 329:	07                   	(bad)  
 32a:	00 00                	add    %al,(%rax)
 32c:	06                   	(bad)  
 32d:	a0 14 00 00 00 00 00 	movabs 0xe200000000000014,%al
 334:	00 e2 
 336:	01 00                	add    %eax,(%rax)
 338:	00 05 15 12 00 00    	add    %al,0x1215(%rip)        # 1553 <dotprod_16x+0xb3>
 33e:	cd 00                	int    $0x0
 340:	00 00                	add    %al,(%rax)
 342:	01 7f 1b             	add    %edi,0x1b(%rdi)
 345:	07                   	(bad)  
 346:	00 00                	add    %al,(%rax)
 348:	00 06                	add    %al,(%rsi)
 34a:	11 17                	adc    %edx,(%rdi)
 34c:	00 00                	add    %al,(%rax)
 34e:	00 00                	add    %al,(%rax)
 350:	00 00                	add    %al,(%rax)
 352:	38 00                	cmp    %al,(%rax)
 354:	00 00                	add    %al,(%rax)
 356:	05 ad 12 00 00       	add    $0x12ad,%eax
 35b:	f4                   	hlt    
 35c:	00 00                	add    %al,(%rax)
 35e:	00 01                	add    %al,(%rcx)
 360:	95                   	xchg   %eax,%ebp
 361:	1b 07                	sbb    (%rdi),%eax
 363:	00 00                	add    %al,(%rax)
 365:	06                   	(bad)  
 366:	11 17                	adc    %edx,(%rdi)
 368:	00 00                	add    %al,(%rax)
 36a:	00 00                	add    %al,(%rax)
 36c:	00 00                	add    %al,(%rax)
 36e:	38 00                	cmp    %al,(%rax)
 370:	00 00                	add    %al,(%rax)
 372:	05 60 12 00 00       	add    $0x1260,%eax
 377:	cd 00                	int    $0x0
 379:	00 00                	add    %al,(%rax)
 37b:	01 97 1b 07 00 00    	add    %edx,0x71b(%rdi)
 381:	00 00                	add    %al,(%rax)
 383:	00 02                	add    %al,(%rdx)
 385:	b0 17                	mov    $0x17,%al
 387:	00 00                	add    %al,(%rax)
 389:	00 00                	add    %al,(%rax)
 38b:	00 00                	add    %al,(%rax)
 38d:	45 02 00             	add    (%r8),%r8b
 390:	00 01                	add    %al,(%rcx)
 392:	57                   	push   %rdi
 393:	b0 00                	mov    $0x0,%al
 395:	00 00                	add    %al,(%rax)
 397:	01 9e 29 07 00 00    	add    %ebx,0x729(%rsi)
 39d:	03 e7                	add    %edi,%esp
 39f:	12 00                	adc    (%rax),%al
 3a1:	00 ba 00 00 00 01    	add    %bh,0x1000000(%rdx)
 3a7:	9e                   	sahf   
 3a8:	29 07                	sub    %eax,(%rdi)
 3aa:	00 00                	add    %al,(%rax)
 3ac:	03 20                	add    (%rax),%esp
 3ae:	13 00                	adc    (%rax),%eax
 3b0:	00 bf 00 00 00 01    	add    %bh,0x1000000(%rdi)
 3b6:	9e                   	sahf   
 3b7:	30 07                	xor    %al,(%rdi)
 3b9:	00 00                	add    %al,(%rax)
 3bb:	05 59 13 00 00       	add    $0x1359,%eax
 3c0:	b3 00                	mov    $0x0,%bl
 3c2:	00 00                	add    %al,(%rax)
 3c4:	01 a3 1b 07 00 00    	add    %esp,0x71b(%rbx)
 3ca:	05 90 13 00 00       	add    $0x1390,%eax
 3cf:	c9                   	leaveq 
 3d0:	00 00                	add    %al,(%rax)
 3d2:	00 01                	add    %al,(%rcx)
 3d4:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
 3d5:	46 07                	rex.RX (bad) 
 3d7:	00 00                	add    %al,(%rax)
 3d9:	05 b3 13 00 00       	add    $0x13b3,%eax
 3de:	cb                   	lret   
 3df:	00 00                	add    %al,(%rax)
 3e1:	00 01                	add    %al,(%rcx)
 3e3:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
 3e4:	46 07                	rex.RX (bad) 
 3e6:	00 00                	add    %al,(%rax)
 3e8:	05 d6 13 00 00       	add    $0x13d6,%eax
 3ed:	f9                   	stc    
 3ee:	00 00                	add    %al,(%rax)
 3f0:	00 01                	add    %al,(%rcx)
 3f2:	ad                   	lods   %ds:(%rsi),%eax
 3f3:	22 07                	and    (%rdi),%al
 3f5:	00 00                	add    %al,(%rax)
 3f7:	05 fa 13 00 00       	add    $0x13fa,%eax
 3fc:	fd                   	std    
 3fd:	00 00                	add    %al,(%rax)
 3ff:	00 01                	add    %al,(%rcx)
 401:	ae                   	scas   %es:(%rdi),%al
 402:	22 07                	and    (%rdi),%al
 404:	00 00                	add    %al,(%rax)
 406:	05 1e 14 00 00       	add    $0x141e,%eax
 40b:	04 01                	add    $0x1,%al
 40d:	00 00                	add    %al,(%rax)
 40f:	01 af 22 07 00 00    	add    %ebp,0x722(%rdi)
 415:	05 42 14 00 00       	add    $0x1442,%eax
 41a:	0b 01                	or     (%rcx),%eax
 41c:	00 00                	add    %al,(%rax)
 41e:	01 b0 22 07 00 00    	add    %esi,0x722(%rax)
 424:	05 66 14 00 00       	add    $0x1466,%eax
 429:	12 01                	adc    (%rcx),%al
 42b:	00 00                	add    %al,(%rax)
 42d:	01 b1 22 07 00 00    	add    %esi,0x722(%rcx)
 433:	05 8a 14 00 00       	add    $0x148a,%eax
 438:	1d 00 00 00 01       	sbb    $0x1000000,%eax
 43d:	c2 46 07             	retq   $0x746
 440:	00 00                	add    %al,(%rax)
 442:	05 ad 14 00 00       	add    $0x14ad,%eax
 447:	3d 00 00 00 01       	cmp    $0x1000000,%eax
 44c:	c3                   	retq   
 44d:	46 07                	rex.RX (bad) 
 44f:	00 00                	add    %al,(%rax)
 451:	09 2a                	or     %ebp,(%rdx)
 453:	00 00                	add    %al,(%rax)
 455:	00 c3                	add    %al,%bl
 457:	17                   	(bad)  
 458:	00 00                	add    %al,(%rax)
 45a:	00 00                	add    %al,(%rax)
 45c:	00 00                	add    %al,(%rax)
 45e:	0a 01                	or     (%rcx),%al
 460:	55                   	push   %rbp
 461:	03 f3                	add    %ebx,%esi
 463:	01 55 0a             	add    %edx,0xa(%rbp)
 466:	01 54 03 f3          	add    %edx,-0xd(%rbx,%rax,1)
 46a:	01 54 00 09          	add    %edx,0x9(%rax,%rax,1)
 46e:	94                   	xchg   %eax,%esp
 46f:	06                   	(bad)  
 470:	00 00                	add    %al,(%rax)
 472:	db 17                	fistl  (%rdi)
 474:	00 00                	add    %al,(%rax)
 476:	00 00                	add    %al,(%rax)
 478:	00 00                	add    %al,(%rax)
 47a:	0a 01                	or     (%rcx),%al
 47c:	54                   	push   %rsp
 47d:	02 76 00             	add    0x0(%rsi),%dh
 480:	0a 01                	or     (%rcx),%al
 482:	55                   	push   %rbp
 483:	02 10                	add    (%rax),%dl
 485:	40 00 09             	add    %cl,(%rcx)
 488:	94                   	xchg   %eax,%esp
 489:	06                   	(bad)  
 48a:	00 00                	add    %al,(%rax)
 48c:	eb 17                	jmp    4a5 <__abi_tag+0x1e1>
 48e:	00 00                	add    %al,(%rax)
 490:	00 00                	add    %al,(%rax)
 492:	00 00                	add    %al,(%rax)
 494:	0a 01                	or     (%rcx),%al
 496:	54                   	push   %rsp
 497:	02 76 00             	add    0x0(%rsi),%dh
 49a:	0a 01                	or     (%rcx),%al
 49c:	55                   	push   %rbp
 49d:	02 10                	add    (%rax),%dl
 49f:	40 00 09             	add    %cl,(%rcx)
 4a2:	b3 06                	mov    $0x6,%bl
 4a4:	00 00                	add    %al,(%rax)
 4a6:	fc                   	cld    
 4a7:	17                   	(bad)  
 4a8:	00 00                	add    %al,(%rax)
 4aa:	00 00                	add    %al,(%rax)
 4ac:	00 00                	add    %al,(%rax)
 4ae:	0a 01                	or     (%rcx),%al
 4b0:	51                   	push   %rcx
 4b1:	02 73 00             	add    0x0(%rbx),%dh
 4b4:	0a 01                	or     (%rcx),%al
 4b6:	55                   	push   %rbp
 4b7:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
 4bb:	09 62 00             	or     %esp,0x0(%rdx)
 4be:	00 00                	add    %al,(%rax)
 4c0:	0a 18                	or     (%rax),%bl
 4c2:	00 00                	add    %al,(%rax)
 4c4:	00 00                	add    %al,(%rax)
 4c6:	00 00                	add    %al,(%rax)
 4c8:	0a 01                	or     (%rcx),%al
 4ca:	51                   	push   %rcx
 4cb:	02 73 00             	add    0x0(%rbx),%dh
 4ce:	0a 01                	or     (%rcx),%al
 4d0:	54                   	push   %rsp
 4d1:	02 7e 00             	add    0x0(%rsi),%bh
 4d4:	0a 01                	or     (%rcx),%al
 4d6:	55                   	push   %rbp
 4d7:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
 4db:	09 cf                	or     %ecx,%edi
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 1e                	add    %bl,(%rsi)
 4e1:	18 00                	sbb    %al,(%rax)
 4e3:	00 00                	add    %al,(%rax)
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 0a                	add    %cl,(%rdx)
 4e9:	01 51 02             	add    %edx,0x2(%rcx)
 4ec:	73 00                	jae    4ee <__abi_tag+0x22a>
 4ee:	0a 01                	or     (%rcx),%al
 4f0:	54                   	push   %rsp
 4f1:	02 7e 00             	add    0x0(%rsi),%bh
 4f4:	0a 01                	or     (%rcx),%al
 4f6:	55                   	push   %rbp
 4f7:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
 4fb:	09 6e 01             	or     %ebp,0x1(%rsi)
 4fe:	00 00                	add    %al,(%rax)
 500:	32 18                	xor    (%rax),%bl
 502:	00 00                	add    %al,(%rax)
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	0a 01                	or     (%rcx),%al
 50a:	51                   	push   %rcx
 50b:	02 73 00             	add    0x0(%rbx),%dh
 50e:	0a 01                	or     (%rcx),%al
 510:	54                   	push   %rsp
 511:	02 7e 00             	add    0x0(%rsi),%bh
 514:	0a 01                	or     (%rcx),%al
 516:	55                   	push   %rbp
 517:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
 51b:	09 20                	or     %esp,(%rax)
 51d:	02 00                	add    (%rax),%al
 51f:	00 46 18             	add    %al,0x18(%rsi)
 522:	00 00                	add    %al,(%rax)
 524:	00 00                	add    %al,(%rax)
 526:	00 00                	add    %al,(%rax)
 528:	0a 01                	or     (%rcx),%al
 52a:	51                   	push   %rcx
 52b:	02 73 00             	add    0x0(%rbx),%dh
 52e:	0a 01                	or     (%rcx),%al
 530:	54                   	push   %rsp
 531:	02 7e 00             	add    0x0(%rsi),%bh
 534:	0a 01                	or     (%rcx),%al
 536:	55                   	push   %rbp
 537:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
 53b:	09 d2                	or     %edx,%edx
 53d:	02 00                	add    (%rax),%al
 53f:	00 5a 18             	add    %bl,0x18(%rdx)
 542:	00 00                	add    %al,(%rax)
 544:	00 00                	add    %al,(%rax)
 546:	00 00                	add    %al,(%rax)
 548:	0a 01                	or     (%rcx),%al
 54a:	51                   	push   %rcx
 54b:	02 73 00             	add    0x0(%rbx),%dh
 54e:	0a 01                	or     (%rcx),%al
 550:	54                   	push   %rsp
 551:	02 7e 00             	add    0x0(%rsi),%bh
 554:	0a 01                	or     (%rcx),%al
 556:	55                   	push   %rbp
 557:	02 7c 00 00          	add    0x0(%rax,%rax,1),%bh
 55b:	09 0d 07 00 00 d0    	or     %ecx,-0x2ffffff9(%rip)        # ffffffffd0000568 <_end+0xffffffffcfffc510>
 561:	18 00                	sbb    %al,(%rax)
 563:	00 00                	add    %al,(%rax)
 565:	00 00                	add    %al,(%rax)
 567:	00 0a                	add    %cl,(%rdx)
 569:	01 55 02             	add    %edx,0x2(%rbp)
 56c:	7c 00                	jl     56e <__abi_tag+0x2aa>
 56e:	00 09                	add    %cl,(%rcx)
 570:	0d 07 00 00 d8       	or     $0xd8000007,%eax
 575:	18 00                	sbb    %al,(%rax)
 577:	00 00                	add    %al,(%rax)
 579:	00 00                	add    %al,(%rax)
 57b:	00 0a                	add    %cl,(%rdx)
 57d:	01 55 02             	add    %edx,0x2(%rbp)
 580:	7e 00                	jle    582 <__abi_tag+0x2be>
 582:	00 09                	add    %cl,(%rcx)
 584:	94                   	xchg   %eax,%esp
 585:	06                   	(bad)  
 586:	00 00                	add    %al,(%rax)
 588:	e7 18                	out    %eax,$0x18
 58a:	00 00                	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	0a 01                	or     (%rcx),%al
 592:	54                   	push   %rsp
 593:	02 10                	add    (%rax),%dl
 595:	28 0a                	sub    %cl,(%rdx)
 597:	01 55 02             	add    %edx,0x2(%rbp)
 59a:	10 40 00             	adc    %al,0x0(%rax)
 59d:	09 94 06 00 00 f9 18 	or     %edx,0x18f90000(%rsi,%rax,1)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	00 00                	add    %al,(%rax)
 5aa:	0a 01                	or     (%rcx),%al
 5ac:	54                   	push   %rsp
 5ad:	02 10                	add    (%rax),%dl
 5af:	28 0a                	sub    %cl,(%rdx)
 5b1:	01 55 02             	add    %edx,0x2(%rbp)
 5b4:	10 40 00             	adc    %al,0x0(%rax)
 5b7:	09 b3 06 00 00 0c    	or     %esi,0xc000006(%rbx)
 5bd:	19 00                	sbb    %eax,(%rax)
 5bf:	00 00                	add    %al,(%rax)
 5c1:	00 00                	add    %al,(%rax)
 5c3:	00 0a                	add    %cl,(%rdx)
 5c5:	01 55 02             	add    %edx,0x2(%rbp)
 5c8:	76 00                	jbe    5ca <__abi_tag+0x306>
 5ca:	0a 01                	or     (%rcx),%al
 5cc:	51                   	push   %rcx
 5cd:	01 35 00 09 62 00    	add    %esi,0x620900(%rip)        # 620ed3 <_end+0x61ce7b>
 5d3:	00 00                	add    %al,(%rax)
 5d5:	1c 19                	sbb    $0x19,%al
 5d7:	00 00                	add    %al,(%rax)
 5d9:	00 00                	add    %al,(%rax)
 5db:	00 00                	add    %al,(%rax)
 5dd:	0a 01                	or     (%rcx),%al
 5df:	54                   	push   %rsp
 5e0:	02 73 00             	add    0x0(%rbx),%dh
 5e3:	0a 01                	or     (%rcx),%al
 5e5:	55                   	push   %rbp
 5e6:	02 76 00             	add    0x0(%rsi),%dh
 5e9:	0a 01                	or     (%rcx),%al
 5eb:	51                   	push   %rcx
 5ec:	01 35 00 09 cf 00    	add    %esi,0xcf0900(%rip)        # cf0ef2 <_end+0xcece9a>
 5f2:	00 00                	add    %al,(%rax)
 5f4:	32 19                	xor    (%rcx),%bl
 5f6:	00 00                	add    %al,(%rax)
 5f8:	00 00                	add    %al,(%rax)
 5fa:	00 00                	add    %al,(%rax)
 5fc:	0a 01                	or     (%rcx),%al
 5fe:	54                   	push   %rsp
 5ff:	02 73 00             	add    0x0(%rbx),%dh
 602:	0a 01                	or     (%rcx),%al
 604:	55                   	push   %rbp
 605:	02 76 00             	add    0x0(%rsi),%dh
 608:	0a 01                	or     (%rcx),%al
 60a:	51                   	push   %rcx
 60b:	01 35 00 09 6e 01    	add    %esi,0x16e0900(%rip)        # 16e0f11 <_end+0x16dceb9>
 611:	00 00                	add    %al,(%rax)
 613:	48 19 00             	sbb    %rax,(%rax)
 616:	00 00                	add    %al,(%rax)
 618:	00 00                	add    %al,(%rax)
 61a:	00 0a                	add    %cl,(%rdx)
 61c:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 620:	00 0a                	add    %cl,(%rdx)
 622:	01 55 02             	add    %edx,0x2(%rbp)
 625:	76 00                	jbe    627 <__abi_tag+0x363>
 627:	0a 01                	or     (%rcx),%al
 629:	51                   	push   %rcx
 62a:	01 35 00 09 20 02    	add    %esi,0x2200900(%rip)        # 2200f30 <_end+0x21fced8>
 630:	00 00                	add    %al,(%rax)
 632:	5e                   	pop    %rsi
 633:	19 00                	sbb    %eax,(%rax)
 635:	00 00                	add    %al,(%rax)
 637:	00 00                	add    %al,(%rax)
 639:	00 0a                	add    %cl,(%rdx)
 63b:	01 54 02 73          	add    %edx,0x73(%rdx,%rax,1)
 63f:	00 0a                	add    %cl,(%rdx)
 641:	01 55 02             	add    %edx,0x2(%rbp)
 644:	76 00                	jbe    646 <__abi_tag+0x382>
 646:	0a 01                	or     (%rcx),%al
 648:	51                   	push   %rcx
 649:	01 35 00 09 d2 02    	add    %esi,0x2d20900(%rip)        # 2d20f4f <_end+0x2d1cef7>
 64f:	00 00                	add    %al,(%rax)
 651:	74 19                	je     66c <__abi_tag+0x3a8>
 653:	00 00                	add    %al,(%rax)
 655:	00 00                	add    %al,(%rax)
 657:	00 00                	add    %al,(%rax)
 659:	0a 01                	or     (%rcx),%al
 65b:	54                   	push   %rsp
 65c:	02 73 00             	add    0x0(%rbx),%dh
 65f:	0a 01                	or     (%rcx),%al
 661:	55                   	push   %rbp
 662:	02 76 00             	add    0x0(%rsi),%dh
 665:	0a 01                	or     (%rcx),%al
 667:	51                   	push   %rcx
 668:	01 35 00 09 0d 07    	add    %esi,0x70d0900(%rip)        # 70d0f6e <_end+0x70ccf16>
 66e:	00 00                	add    %al,(%rax)
 670:	dc 19                	fcompl (%rcx)
 672:	00 00                	add    %al,(%rax)
 674:	00 00                	add    %al,(%rax)
 676:	00 00                	add    %al,(%rax)
 678:	0a 01                	or     (%rcx),%al
 67a:	55                   	push   %rbp
 67b:	02 76 00             	add    0x0(%rsi),%dh
 67e:	00 09                	add    %cl,(%rcx)
 680:	0d 07 00 00 e4       	or     $0xe4000007,%eax
 685:	19 00                	sbb    %eax,(%rax)
 687:	00 00                	add    %al,(%rax)
 689:	00 00                	add    %al,(%rax)
 68b:	00 0a                	add    %cl,(%rdx)
 68d:	01 55 02             	add    %edx,0x2(%rbp)
 690:	73 00                	jae    692 <__abi_tag+0x3ce>
 692:	00 00                	add    %al,(%rax)
 694:	0b 3f                	or     (%rdi),%edi
 696:	00 00                	add    %al,(%rax)
 698:	00 02                	add    %al,(%rdx)
 69a:	4a 02 ab 06 00 00 0c 	rex.WX add 0xc000006(%rbx),%bpl
 6a1:	ac                   	lods   %ds:(%rsi),%al
 6a2:	06                   	(bad)  
 6a3:	00 00                	add    %al,(%rax)
 6a5:	0c ac                	or     $0xac,%al
 6a7:	06                   	(bad)  
 6a8:	00 00                	add    %al,(%rax)
 6aa:	00 0d 0e 62 00 00    	add    %cl,0x620e(%rip)        # 68be <_end+0x2866>
 6b0:	00 07                	add    %al,(%rdi)
 6b2:	08 0f                	or     %cl,(%rdi)
 6b4:	00 1a                	add    %bl,(%rdx)
 6b6:	00 00                	add    %al,(%rax)
 6b8:	00 00                	add    %al,(%rax)
 6ba:	00 00                	add    %al,(%rax)
 6bc:	32 00                	xor    (%rax),%al
 6be:	00 00                	add    %al,(%rax)
 6c0:	01 57 b5             	add    %edx,-0x4b(%rdi)
 6c3:	00 00                	add    %al,(%rax)
 6c5:	00 01                	add    %al,(%rcx)
 6c7:	11 04 01             	adc    %eax,(%rcx,%rax,1)
 6ca:	55                   	push   %rbp
 6cb:	c9                   	leaveq 
 6cc:	00 00                	add    %al,(%rax)
 6ce:	00 01                	add    %al,(%rcx)
 6d0:	11 41 07             	adc    %eax,0x7(%rcx)
 6d3:	00 00                	add    %al,(%rax)
 6d5:	04 01                	add    $0x1,%al
 6d7:	54                   	push   %rsp
 6d8:	cb                   	lret   
 6d9:	00 00                	add    %al,(%rax)
 6db:	00 01                	add    %al,(%rcx)
 6dd:	11 41 07             	adc    %eax,0x7(%rcx)
 6e0:	00 00                	add    %al,(%rax)
 6e2:	04 01                	add    $0x1,%al
 6e4:	51                   	push   %rcx
 6e5:	b3 00                	mov    $0x0,%bl
 6e7:	00 00                	add    %al,(%rax)
 6e9:	01 11                	add    %edx,(%rcx)
 6eb:	1b 07                	sbb    (%rdi),%eax
 6ed:	00 00                	add    %al,(%rax)
 6ef:	06                   	(bad)  
 6f0:	00 1a                	add    %bl,(%rdx)
 6f2:	00 00                	add    %al,(%rax)
 6f4:	00 00                	add    %al,(%rax)
 6f6:	00 00                	add    %al,(%rax)
 6f8:	31 00                	xor    %eax,(%rax)
 6fa:	00 00                	add    %al,(%rax)
 6fc:	05 d0 14 00 00       	add    $0x14d0,%eax
 701:	cd 00                	int    $0x0
 703:	00 00                	add    %al,(%rax)
 705:	01 13                	add    %edx,(%rbx)
 707:	1b 07                	sbb    (%rdi),%eax
 709:	00 00                	add    %al,(%rax)
 70b:	00 00                	add    %al,(%rax)
 70d:	10 4d 00             	adc    %cl,0x0(%rbp)
 710:	00 00                	add    %al,(%rax)
 712:	02 35 02 0c ab 06    	add    0x6ab0c02(%rip),%dh        # 6ab131a <_end+0x6aad2c2>
 718:	00 00                	add    %al,(%rax)
 71a:	00 0e                	add    %cl,(%rsi)
 71c:	5d                   	pop    %rbp
 71d:	00 00                	add    %al,(%rax)
 71f:	00 07                	add    %al,(%rdi)
 721:	08 0e                	or     %cl,(%rsi)
 723:	7c 00                	jl     725 <__abi_tag+0x461>
 725:	00 00                	add    %al,(%rax)
 727:	04 08                	add    $0x8,%al
 729:	0e                   	(bad)  
 72a:	70 00                	jo     72c <__abi_tag+0x468>
 72c:	00 00                	add    %al,(%rax)
 72e:	05 04 11 35 07       	add    $0x7351104,%eax
 733:	00 00                	add    %al,(%rax)
 735:	11 3a                	adc    %edi,(%rdx)
 737:	07                   	(bad)  
 738:	00 00                	add    %al,(%rax)
 73a:	0e                   	(bad)  
 73b:	c4                   	(bad)  
 73c:	00 00                	add    %al,(%rax)
 73e:	00 06                	add    %al,(%rsi)
 740:	01 12                	add    %edx,(%rdx)
 742:	46 07                	rex.RX (bad) 
 744:	00 00                	add    %al,(%rax)
 746:	11 22                	adc    %esp,(%rdx)
 748:	07                   	(bad)  
 749:	00 00                	add    %al,(%rax)
 74b:	13 22                	adc    (%rdx),%esp
 74d:	07                   	(bad)  
 74e:	00 00                	add    %al,(%rax)
 750:	14 57                	adc    $0x57,%al
 752:	07                   	(bad)  
 753:	00 00                	add    %al,(%rax)
 755:	02 00                	add    (%rax),%al
 757:	15 cf 00 00 00       	adc    $0xcf,%eax
 75c:	08 07                	or     %al,(%rdi)
 75e:	13 22                	adc    (%rdx),%esp
 760:	07                   	(bad)  
 761:	00 00                	add    %al,(%rax)
 763:	14 57                	adc    $0x57,%al
 765:	07                   	(bad)  
 766:	00 00                	add    %al,(%rax)
 768:	04 00                	add    $0x0,%al
 76a:	13 22                	adc    (%rdx),%esp
 76c:	07                   	(bad)  
 76d:	00 00                	add    %al,(%rax)
 76f:	14 57                	adc    $0x57,%al
 771:	07                   	(bad)  
 772:	00 00                	add    %al,(%rax)
 774:	08 00                	or     %al,(%rax)
 776:	13 22                	adc    (%rdx),%esp
 778:	07                   	(bad)  
 779:	00 00                	add    %al,(%rax)
 77b:	14 57                	adc    $0x57,%al
 77d:	07                   	(bad)  
 77e:	00 00                	add    %al,(%rax)
 780:	10 00                	adc    %al,(%rax)
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
  1a:	40 18 97 42 19 03 0e 	sbb    %dl,0xe031942(%rdi)
  21:	3a 0b                	cmp    (%rbx),%cl
  23:	3b 0b                	cmp    (%rbx),%ecx
  25:	27                   	(bad)  
  26:	19 49 13             	sbb    %ecx,0x13(%rcx)
  29:	3f                   	(bad)  
  2a:	19 00                	sbb    %eax,(%rax)
  2c:	00 03                	add    %al,(%rbx)
  2e:	05 00 02 17 03       	add    $0x3170200,%eax
  33:	0e                   	(bad)  
  34:	3a 0b                	cmp    (%rbx),%cl
  36:	3b 0b                	cmp    (%rbx),%ecx
  38:	49 13 00             	adc    (%r8),%rax
  3b:	00 04 05 00 02 18 03 	add    %al,0x3180200(,%rax,1)
  42:	0e                   	(bad)  
  43:	3a 0b                	cmp    (%rbx),%cl
  45:	3b 0b                	cmp    (%rbx),%ecx
  47:	49 13 00             	adc    (%r8),%rax
  4a:	00 05 34 00 02 17    	add    %al,0x17020034(%rip)        # 17020084 <_end+0x1701c02c>
  50:	03 0e                	add    (%rsi),%ecx
  52:	3a 0b                	cmp    (%rbx),%cl
  54:	3b 0b                	cmp    (%rbx),%ecx
  56:	49 13 00             	adc    (%r8),%rax
  59:	00 06                	add    %al,(%rsi)
  5b:	0b 01                	or     (%rcx),%eax
  5d:	11 01                	adc    %eax,(%rcx)
  5f:	12 06                	adc    (%rsi),%al
  61:	00 00                	add    %al,(%rax)
  63:	07                   	(bad)  
  64:	0b 01                	or     (%rcx),%eax
  66:	55                   	push   %rbp
  67:	17                   	(bad)  
  68:	00 00                	add    %al,(%rax)
  6a:	08 34 00             	or     %dh,(%rax,%rax,1)
  6d:	03 0e                	add    (%rsi),%ecx
  6f:	3a 0b                	cmp    (%rbx),%cl
  71:	3b 0b                	cmp    (%rbx),%ecx
  73:	49 13 00             	adc    (%r8),%rax
  76:	00 09                	add    %cl,(%rcx)
  78:	89 82 01 01 31 13    	mov    %eax,0x13310101(%rdx)
  7e:	11 01                	adc    %eax,(%rcx)
  80:	00 00                	add    %al,(%rax)
  82:	0a 8a 82 01 00 02    	or     0x2000182(%rdx),%cl
  88:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
  8e:	0b 2e                	or     (%rsi),%ebp
  90:	01 03                	add    %eax,(%rbx)
  92:	0e                   	(bad)  
  93:	3a 0b                	cmp    (%rbx),%cl
  95:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 134919c2 <_end+0x1348d96a>
  9b:	3c 19                	cmp    $0x19,%al
  9d:	3f                   	(bad)  
  9e:	19 00                	sbb    %eax,(%rax)
  a0:	00 0c 05 00 49 13 00 	add    %cl,0x134900(,%rax,1)
  a7:	00 0d 0f 00 00 00    	add    %cl,0xf(%rip)        # bc <__abi_tag-0x208>
  ad:	0e                   	(bad)  
  ae:	24 00                	and    $0x0,%al
  b0:	03 0e                	add    (%rsi),%ecx
  b2:	3e 0b 0b             	or     %ds:(%rbx),%ecx
  b5:	0b 00                	or     (%rax),%eax
  b7:	00 0f                	add    %cl,(%rdi)
  b9:	2e 01 11             	add    %edx,%cs:(%rcx)
  bc:	01 12                	add    %edx,(%rdx)
  be:	06                   	(bad)  
  bf:	40 18 97 42 19 03 0e 	sbb    %dl,0xe031942(%rdi)
  c6:	3a 0b                	cmp    (%rbx),%cl
  c8:	3b 0b                	cmp    (%rbx),%ecx
  ca:	27                   	(bad)  
  cb:	19 00                	sbb    %eax,(%rax)
  cd:	00 10                	add    %dl,(%rax)
  cf:	2e 01 03             	add    %eax,%cs:(%rbx)
  d2:	0e                   	(bad)  
  d3:	3a 0b                	cmp    (%rbx),%cl
  d5:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1a02 <_end+0x193bd9aa>
  db:	3f                   	(bad)  
  dc:	19 00                	sbb    %eax,(%rax)
  de:	00 11                	add    %dl,(%rcx)
  e0:	0f 00 49 13          	str    0x13(%rcx)
  e4:	00 00                	add    %al,(%rax)
  e6:	12 37                	adc    (%rdi),%dh
  e8:	00 49 13             	add    %cl,0x13(%rcx)
  eb:	00 00                	add    %al,(%rax)
  ed:	13 01                	adc    (%rcx),%eax
  ef:	01 49 13             	add    %ecx,0x13(%rcx)
  f2:	00 00                	add    %al,(%rax)
  f4:	14 21                	adc    $0x21,%al
  f6:	00 49 13             	add    %cl,0x13(%rcx)
  f9:	37                   	(bad)  
  fa:	0b 00                	or     (%rax),%eax
  fc:	00 15 24 00 03 0e    	add    %dl,0xe030024(%rip)        # e030126 <_end+0xe02c0ce>
 102:	0b 0b                	or     (%rbx),%ecx
 104:	3e 0b 00             	or     %ds:(%rax),%eax
	...

Déassemblage de la section .debug_line :

0000000000000000 <.debug_line>:
   0:	9e                   	sahf   
   1:	04 00                	add    $0x0,%al
   3:	00 04 00             	add    %al,(%rax,%rax,1)
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
  61:	03 ba 05 05 06 2c    	add    0x2c060505(%rdx),%edi
  67:	05 00 03 11 08       	add    $0x8110300,%eax
  6c:	74 05                	je     73 <__abi_tag-0x251>
  6e:	24 0a                	and    $0xa,%al
  70:	4d 05 03 06 3c 03    	rex.WRB add $0x33c0603,%rax
  76:	61                   	(bad)  
  77:	2e 05 0a 06 03 20    	cs add $0x2003060a,%eax
  7d:	74 05                	je     84 <__abi_tag-0x240>
  7f:	0f 06                	clts   
  81:	58                   	pop    %rax
  82:	05 07 58 05 29       	add    $0x29055807,%eax
  87:	06                   	(bad)  
  88:	49 05 24 06 4a 05    	rex.WB add $0x54a0624,%rax
  8e:	03 3c 06             	add    (%rsi,%rax,1),%edi
  91:	31 05 00 95 05 07    	xor    %eax,0x7059500(%rip)        # 7059597 <_end+0x705553f>
  97:	0a 16                	or     (%rsi),%dl
  99:	05 28 03 0e 58       	add    $0x580e0328,%eax
  9e:	05 07 06 3c 03       	add    $0x33c0607,%eax
  a3:	47                   	rex.RXB
  a4:	2e 05 0c 06 03 3b    	cs add $0x3b03060c,%eax
  aa:	08 58 59             	or     %bl,0x59(%rax)
  ad:	05 11 65 05 15       	add    $0x15056511,%eax
  b2:	59                   	pop    %rcx
  b3:	05 09 65 4b 05       	add    $0x54b6509,%eax
  b8:	2f                   	(bad)  
  b9:	47 05 28 06 4a 05    	rex.RXB add $0x54a0628,%eax
  bf:	07                   	(bad)  
  c0:	3c 05                	cmp    $0x5,%al
  c2:	00 03                	add    %al,(%rbx)
  c4:	47                   	rex.RXB
  c5:	2e 05 01 06 03 c1    	cs add $0xc1030601,%eax
  cb:	00 4a 05             	add    %cl,0x5(%rdx)
  ce:	28 03                	sub    %al,(%rbx)
  d0:	6e                   	outsb  %ds:(%rsi),(%dx)
  d1:	20 05 07 06 74 03    	and    %al,0x3740607(%rip)        # 37406de <_end+0x373c686>
  d7:	51                   	push   %rcx
  d8:	2e 05 0c 06 03 31    	cs add $0x3103060c,%eax
  de:	ac                   	lods   %ds:(%rsi),%al
  df:	59                   	pop    %rcx
  e0:	05 11 65 05 15       	add    $0x15056511,%eax
  e5:	59                   	pop    %rcx
  e6:	05 09 65 4b 05       	add    $0x54b6509,%eax
  eb:	31 47 05             	xor    %eax,0x5(%rdi)
  ee:	28 06                	sub    %al,(%rsi)
  f0:	4a 05 07 3c 03 51    	rex.WX add $0x51033c07,%rax
  f6:	4a 05 01 06 03 c1    	rex.WX add $0xffffffffc1030601,%rax
  fc:	00 ba 06 03 bf 7f    	add    %bh,0x7fbf0306(%rdx)
 102:	20 05 13 06 03 35    	and    %al,0x35030613(%rip)        # 3503071b <_end+0x3502c6c3>
 108:	82                   	(bad)  
 109:	05 1c 06 4a 05       	add    $0x54a061c,%eax
 10e:	23 66 05             	and    0x5(%rsi),%esp
 111:	00 03                	add    %al,(%rbx)
 113:	4b                   	rex.WXB
 114:	66 05 01 06          	add    $0x601,%ax
 118:	03 c1                	add    %ecx,%eax
 11a:	00 4a 05             	add    %cl,0x5(%rdx)
 11d:	00 da                	add    %bl,%dl
 11f:	05 24 0a 16 05       	add    $0x5160a24,%eax
 124:	03 06                	add    (%rsi),%eax
 126:	3c 03                	cmp    $0x3,%al
 128:	b7 7f                	mov    $0x7f,%bh
 12a:	2e 05 0f 06 03 cb    	cs add $0xcb03060f,%eax
 130:	00 08                	add    %cl,(%rax)
 132:	9e                   	sahf   
 133:	59                   	pop    %rcx
 134:	05 14 65 05 18       	add    $0x18056514,%eax
 139:	59                   	pop    %rcx
 13a:	05 0c 65 05 0f       	add    $0xf05650c,%eax
 13f:	4c 05 18 06 66 05    	rex.WR add $0x5660618,%rax
 145:	0c 06                	or     $0x6,%al
 147:	65 05 0f 4c 05 18    	gs add $0x18054c0f,%eax
 14d:	06                   	(bad)  
 14e:	66 05 0c 06          	add    $0x60c,%ax
 152:	65 4b 05 2b 45 05 24 	gs rex.WXB add $0x2405452b,%rax
 159:	06                   	(bad)  
 15a:	4a 05 03 3c 05 09    	rex.WX add $0x9053c03,%rax
 160:	06                   	(bad)  
 161:	36 05 07 06 3c 03    	ss add $0x33c0607,%eax
 167:	af                   	scas   %es:(%rdi),%eax
 168:	7f 4a                	jg     1b4 <__abi_tag-0x110>
 16a:	05 09 03 d1 00       	add    $0xd10309,%eax
 16f:	f2 05 07 3c 05 27    	repnz add $0x27053c07,%eax
 175:	06                   	(bad)  
 176:	86 05 0c 75 05 11    	xchg   %al,0x1105750c(%rip)        # 11057688 <_end+0x11053630>
 17c:	06                   	(bad)  
 17d:	58                   	pop    %rax
 17e:	05 09 58 05 33       	add    $0x33055809,%eax
 183:	06                   	(bad)  
 184:	49 05 2e 06 4a 05    	rex.WB add $0x54a062e,%rax
 18a:	07                   	(bad)  
 18b:	3c 05                	cmp    $0x5,%al
 18d:	0f 06                	clts   
 18f:	32 05 16 06 4a 05    	xor    0x54a0616(%rip),%al        # 54a07ab <_end+0x549c753>
 195:	1d 4a 05 03 4a       	sbb    $0x4a03054a,%eax
 19a:	05 00 06 cd 05       	add    $0x5cd0600,%eax
 19f:	24 0a                	and    $0xa,%al
 1a1:	16                   	(bad)  
 1a2:	05 03 06 3c 03       	add    $0x33c0603,%eax
 1a7:	9e                   	sahf   
 1a8:	7f 66                	jg     210 <__abi_tag-0xb4>
 1aa:	05 0f 06 03 e4       	add    $0xe403060f,%eax
 1af:	00 02                	add    %al,(%rdx)
 1b1:	27                   	(bad)  
 1b2:	01 59 05             	add    %ebx,0x5(%rcx)
 1b5:	14 65                	adc    $0x65,%al
 1b7:	05 18 59 05 0c       	add    $0xc055918,%eax
 1bc:	65 05 0f 4c 05 18    	gs add $0x18054c0f,%eax
 1c2:	06                   	(bad)  
 1c3:	66 05 0c 06          	add    $0x60c,%ax
 1c7:	65 05 0f 4c 05 18    	gs add $0x18054c0f,%eax
 1cd:	06                   	(bad)  
 1ce:	66 05 0c 06          	add    $0x60c,%ax
 1d2:	65 05 0f 4c 05 18    	gs add $0x18054c0f,%eax
 1d8:	06                   	(bad)  
 1d9:	66 05 0c 06          	add    $0x60c,%ax
 1dd:	65 05 0f 4c 05 18    	gs add $0x18054c0f,%eax
 1e3:	06                   	(bad)  
 1e4:	66 05 0c 06          	add    $0x60c,%ax
 1e8:	65 05 0f 4c 05 18    	gs add $0x18054c0f,%eax
 1ee:	06                   	(bad)  
 1ef:	66 05 0c 06          	add    $0x60c,%ax
 1f3:	65 05 0f 5a 05 18    	gs add $0x18055a0f,%eax
 1f9:	06                   	(bad)  
 1fa:	66 05 0c 06          	add    $0x60c,%ax
 1fe:	65 59                	gs pop %rcx
 200:	05 2b 03 77 4a       	add    $0x4a77032b,%eax
 205:	05 24 06 4a 05       	add    $0x54a0624,%eax
 20a:	03 3c 05 09 06 03 0c 	add    0xc030609(,%rax,1),%edi
 211:	66 05 07 06          	add    $0x607,%ax
 215:	3c 03                	cmp    $0x3,%al
 217:	92                   	xchg   %eax,%edx
 218:	7f 4a                	jg     264 <__abi_tag-0x60>
 21a:	05 09 03 ee 00       	add    $0xee0309,%eax
 21f:	02 22                	add    (%rdx),%ah
 221:	01 05 07 3c 05 27    	add    %eax,0x27053c07(%rip)        # 27053e2e <_end+0x2704fdd6>
 227:	06                   	(bad)  
 228:	86 05 0c e5 05 11    	xchg   %al,0x1105e50c(%rip)        # 1105e73a <_end+0x1105a6e2>
 22e:	06                   	(bad)  
 22f:	58                   	pop    %rax
 230:	05 09 58 05 33       	add    $0x33055809,%eax
 235:	06                   	(bad)  
 236:	49 05 2e 06 4a 05    	rex.WB add $0x54a062e,%rax
 23c:	07                   	(bad)  
 23d:	3c 05                	cmp    $0x5,%al
 23f:	0f 06                	clts   
 241:	32 05 16 06 4a 05    	xor    0x54a0616(%rip),%al        # 54a085d <_end+0x549c805>
 247:	1d 4a 05 24 4a       	sbb    $0x4a24054a,%eax
 24c:	05 2b 4a 05 32       	add    $0x32054a2b,%eax
 251:	58                   	pop    %rax
 252:	05 39 58 05 03       	add    $0x3055839,%eax
 257:	58                   	pop    %rax
 258:	05 00 06 a3 05       	add    $0x5a30600,%eax
 25d:	24 0a                	and    $0xa,%al
 25f:	16                   	(bad)  
 260:	05 03 06 3c 03       	add    $0x33c0603,%eax
 265:	81 7f 66 05 0f 06 03 	cmpl   $0x3060f05,0x66(%rdi)
 26c:	81 01 02 67 01 ad    	addl   $0xad016702,(%rcx)
 272:	05 14 73 05 18       	add    $0x18057314,%eax
 277:	67 05 0c 73 06 03    	addr32 add $0x306730c,%eax
 27d:	ff                   	(bad)  
 27e:	7e 58                	jle    2d8 <__abi_tag+0x14>
 280:	05 0f 06 03 83       	add    $0x8303060f,%eax
 285:	01 f2                	add    %esi,%edx
 287:	05 18 06 66 05       	add    $0x5660618,%eax
 28c:	0c 06                	or     $0x6,%al
 28e:	65 06                	gs (bad) 
 290:	03 fe                	add    %esi,%edi
 292:	7e 58                	jle    2ec <__abi_tag+0x28>
 294:	05 0f 06 03 84       	add    $0x8403060f,%eax
 299:	01 9e 05 18 06 66    	add    %ebx,0x66061805(%rsi)
 29f:	05 0c 06 65 06       	add    $0x665060c,%eax
 2a4:	03 fd                	add    %ebp,%edi
 2a6:	7e 58                	jle    300 <__abi_tag+0x3c>
 2a8:	05 0f 06 03 85       	add    $0x8503060f,%eax
 2ad:	01 f2                	add    %esi,%edx
 2af:	05 18 06 66 05       	add    $0x5660618,%eax
 2b4:	0c 06                	or     $0x6,%al
 2b6:	65 05 0f 5a 05 18    	gs add $0x18055a0f,%eax
 2bc:	06                   	(bad)  
 2bd:	66 05 0c 06          	add    $0x60c,%ax
 2c1:	65 05 0f 5a 05 18    	gs add $0x18055a0f,%eax
 2c7:	06                   	(bad)  
 2c8:	66 05 0c 06          	add    $0x60c,%ax
 2cc:	b9 06 03 fa 7e       	mov    $0x7efa0306,%ecx
 2d1:	4a 05 0f 06 03 88    	rex.WX add $0xffffffff8803060f,%rax
 2d7:	01 66 05             	add    %esp,0x5(%rsi)
 2da:	18 06                	sbb    %al,(%rsi)
 2dc:	66 05 0c 06          	add    $0x60c,%ax
 2e0:	65 05 0f 5a 05 18    	gs add $0x18055a0f,%eax
 2e6:	06                   	(bad)  
 2e7:	66 05 0c 06          	add    $0x60c,%ax
 2eb:	b9 06 03 f8 7e       	mov    $0x7ef80306,%ecx
 2f0:	4a 05 0f 06 03 8a    	rex.WX add $0xffffffff8a03060f,%rax
 2f6:	01 66 05             	add    %esp,0x5(%rsi)
 2f9:	18 06                	sbb    %al,(%rsi)
 2fb:	66 05 0c 06          	add    $0x60c,%ax
 2ff:	65 05 10 5a 05 1a    	gs add $0x1a055a10,%eax
 305:	06                   	(bad)  
 306:	66 05 0c 06          	add    $0x60c,%ax
 30a:	b9 06 03 f6 7e       	mov    $0x7ef60306,%ecx
 30f:	4a 05 10 06 03 8c    	rex.WX add $0xffffffff8c030610,%rax
 315:	01 66 05             	add    %esp,0x5(%rsi)
 318:	1a 06                	sbb    (%rsi),%al
 31a:	66 05 0d 06          	add    $0x60d,%ax
 31e:	65 05 10 5a 05 1a    	gs add $0x1a055a10,%eax
 324:	06                   	(bad)  
 325:	66 05 0d 06          	add    $0x60d,%ax
 329:	65 05 10 4c 05 1a    	gs add $0x1a054c10,%eax
 32f:	06                   	(bad)  
 330:	66 05 0d 06          	add    $0x60d,%ax
 334:	65 05 10 4c 05 1a    	gs add $0x1a054c10,%eax
 33a:	06                   	(bad)  
 33b:	66 05 0d 06          	add    $0x60d,%ax
 33f:	65 05 10 4c 05 1a    	gs add $0x1a054c10,%eax
 345:	06                   	(bad)  
 346:	66 05 0d 06          	add    $0x60d,%ax
 34a:	65 4b 06             	gs rex.WXB (bad) 
 34d:	03 f0                	add    %eax,%esi
 34f:	7e 58                	jle    3a9 <__abi_tag+0xe5>
 351:	05 2b 06 03 ff       	add    $0xff03062b,%eax
 356:	00 58 05             	add    %bl,0x5(%rax)
 359:	24 06                	and    $0x6,%al
 35b:	4a 05 03 3c 03 81    	rex.WX add $0xffffffff81033c03,%rax
 361:	7f 82                	jg     2e5 <__abi_tag+0x21>
 363:	05 09 06 03 93       	add    $0x93030609,%eax
 368:	01 02                	add    %eax,(%rdx)
 36a:	7f 01                	jg     36d <__abi_tag+0xa9>
 36c:	05 07 06 3c 05       	add    $0x53c0607,%eax
 371:	28 06                	sub    %al,(%rsi)
 373:	cc                   	int3   
 374:	06                   	(bad)  
 375:	03 e9                	add    %ecx,%ebp
 377:	7e 4a                	jle    3c3 <__abi_tag+0xff>
 379:	05 0c 06 03 98       	add    $0x9803060c,%eax
 37e:	01 08                	add    %ecx,(%rax)
 380:	9e                   	sahf   
 381:	05 11 06 58 05       	add    $0x5580611,%eax
 386:	09 58 05             	or     %ebx,0x5(%rax)
 389:	34 06                	xor    $0x6,%al
 38b:	49 05 2f 06 4a 05    	rex.WB add $0x54a062f,%rax
 391:	07                   	(bad)  
 392:	3c 03                	cmp    $0x3,%al
 394:	e9 7e 4a 05 11       	jmpq   11054e17 <_end+0x11050dbf>
 399:	06                   	(bad)  
 39a:	03 9b 01 08 ac 05    	add    0x5ac0801(%rbx),%ebx
 3a0:	18 06                	sbb    %al,(%rsi)
 3a2:	4a 05 1f 58 05 26    	rex.WX add $0x2605581f,%rax
 3a8:	58                   	pop    %rax
 3a9:	05 2d 58 05 34       	add    $0x3405582d,%eax
 3ae:	58                   	pop    %rax
 3af:	05 3b 58 05 42       	add    $0x4205583b,%eax
 3b4:	58                   	pop    %rax
 3b5:	05 49 58 05 50       	add    $0x50055849,%eax
 3ba:	58                   	pop    %rax
 3bb:	05 58 58 05 60       	add    $0x60055858,%eax
 3c0:	58                   	pop    %rax
 3c1:	05 68 4a 05 70       	add    $0x70054a68,%eax
 3c6:	4a 05 78 4a 05 05    	rex.WX add $0x5054a78,%rax
 3cc:	4a 05 00 06 5c 05    	rex.WX add $0x55c0600,%rax
 3d2:	1a 0a                	sbb    (%rdx),%cl
 3d4:	da 05 23 85 05 0f    	fiaddl 0xf058523(%rip)        # f0588fd <_end+0xf0548a5>
 3da:	06                   	(bad)  
 3db:	82                   	(bad)  
 3dc:	06                   	(bad)  
 3dd:	f3 05 03 f5 05 10    	repz add $0x1005f503,%eax
 3e3:	d9 06                	flds   (%rsi)
 3e5:	03 d3                	add    %ebx,%edx
 3e7:	7e d6                	jle    3bf <__abi_tag+0xfb>
 3e9:	05 13 06 03 ae       	add    $0xae030613,%eax
 3ee:	01 66 06             	add    %esp,0x6(%rsi)
 3f1:	03 d2                	add    %edx,%edx
 3f3:	7e d6                	jle    3cb <__abi_tag+0x107>
 3f5:	06                   	(bad)  
 3f6:	03 af 01 66 06 03    	add    0x3066601(%rdi),%ebp
 3fc:	d1 7e d6             	sarl   -0x2a(%rsi)
 3ff:	06                   	(bad)  
 400:	03 b0 01 66 06 03    	add    0x3066601(%rax),%esi
 406:	d0 7e d6             	sarb   -0x2a(%rsi)
 409:	05 14 06 03 b1       	add    $0xb1030614,%eax
 40e:	01 66 06             	add    %esp,0x6(%rsi)
 411:	03 cf                	add    %edi,%ecx
 413:	7e d6                	jle    3eb <__abi_tag+0x127>
 415:	05 03 06 03 b4       	add    $0xb4030603,%eax
 41a:	01 58 08             	add    %ebx,0x8(%rax)
 41d:	3d 08 3d 08 3d       	cmp    $0x3d083d08,%eax
 422:	08 67 08             	or     %ah,0x8(%rdi)
 425:	5b                   	pop    %rbx
 426:	83 05 0f 88 08 21 05 	addl   $0x5,0x2108880f(%rip)        # 21088c3c <_end+0x21084be4>
 42d:	03 08                	add    (%rax),%ecx
 42f:	23 05 09 f5 06 03    	and    0x306f509(%rip),%eax        # 306f93e <_end+0x306b8e6>
 435:	b7 7e                	mov    $0x7e,%bh
 437:	f2 05 0c 06 03 ca    	repnz add $0xca03060c,%eax
 43d:	01 66 06             	add    %esp,0x6(%rsi)
 440:	03 b6 7e f2 06 03    	add    0x306f27e(%rsi),%esi
 446:	cb                   	lret   
 447:	01 66 06             	add    %esp,0x6(%rsi)
 44a:	03 b5 7e f2 06 03    	add    0x306f27e(%rbp),%esi
 450:	cc                   	int3   
 451:	01 66 06             	add    %esp,0x6(%rsi)
 454:	03 b4 7e f2 05 0d 06 	add    0x60d05f2(%rsi,%rdi,2),%esi
 45b:	03 cd                	add    %ebp,%ecx
 45d:	01 66 06             	add    %esp,0x6(%rsi)
 460:	03 b3 7e f2 05 03    	add    0x305f27e(%rbx),%esi
 466:	06                   	(bad)  
 467:	03 d0                	add    %eax,%edx
 469:	01 58 08             	add    %ebx,0x8(%rax)
 46c:	3d 08 3d 08 3d       	cmp    $0x3d083d08,%eax
 471:	f3 e7 83             	repz out %eax,$0x83
 474:	84 05 00 03 b8 7e    	test   %al,0x7eb80300(%rip)        # 7eb8077a <_end+0x7eb7c722>
 47a:	08 ac 05 24 0a 13 05 	or     %ch,0x5130a24(%rbp,%rax,1)
 481:	03 06                	add    (%rsi),%eax
 483:	3c 03                	cmp    $0x3,%al
 485:	6d                   	insl   (%dx),%es:(%rdi)
 486:	2e 05 0c 06 03 15    	cs add $0x1503060c,%eax
 48c:	08 9e 4b 05 2a 47    	or     %bl,0x472a054b(%rsi)
 492:	05 24 06 4a 05       	add    $0x54a0624,%eax
 497:	03 3c 05 01 06 33 02 	add    0x2330601(,%rax,1),%edi
 49e:	01 00                	add    %eax,(%rax)
 4a0:	01 01                	add    %eax,(%rcx)

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
  3d:	64 00 61 6c          	add    %ah,%fs:0x6c(%rcx)
  41:	69 67 6e 65 64 5f 61 	imul   $0x615f6465,0x6e(%rdi),%esp
  48:	6c                   	insb   (%dx),%es:(%rdi)
  49:	6c                   	insb   (%dx),%es:(%rdi)
  4a:	6f                   	outsl  %ds:(%rsi),(%dx)
  4b:	63 00                	movsxd (%rax),%eax
  4d:	66 72 65             	data16 jb b5 <__abi_tag-0x20f>
  50:	65 00 70 61          	add    %dh,%gs:0x61(%rax)
  54:	72 73                	jb     c9 <__abi_tag-0x1fb>
  56:	65 5f                	gs pop %rdi
  58:	61                   	(bad)  
  59:	72 67                	jb     c2 <__abi_tag-0x202>
  5b:	73 00                	jae    5d <__abi_tag-0x267>
  5d:	6c                   	insb   (%dx),%es:(%rdi)
  5e:	6f                   	outsl  %ds:(%rsi),(%dx)
  5f:	6e                   	outsb  %ds:(%rsi),(%dx)
  60:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
  65:	67 20 75 6e          	and    %dh,0x6e(%ebp)
  69:	73 69                	jae    d4 <__abi_tag-0x1f0>
  6b:	67 6e                	outsb  %ds:(%esi),(%dx)
  6d:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  72:	74 00                	je     74 <__abi_tag-0x250>
  74:	64 6f                	outsl  %fs:(%rsi),(%dx)
  76:	74 70                	je     e8 <__abi_tag-0x1dc>
  78:	72 6f                	jb     e9 <__abi_tag-0x1db>
  7a:	64 00 64 6f 75       	add    %ah,%fs:0x75(%rdi,%rbp,2)
  7f:	62                   	(bad)  
  80:	6c                   	insb   (%dx),%es:(%rdi)
  81:	65 00 64 6f 74       	add    %ah,%gs:0x74(%rdi,%rbp,2)
  86:	70 72                	jo     fa <__abi_tag-0x1ca>
  88:	6f                   	outsl  %ds:(%rsi),(%dx)
  89:	64 5f                	fs pop %rdi
  8b:	32 78 00             	xor    0x0(%rax),%bh
  8e:	64 6f                	outsl  %fs:(%rsi),(%dx)
  90:	74 70                	je     102 <__abi_tag-0x1c2>
  92:	72 6f                	jb     103 <__abi_tag-0x1c1>
  94:	64 5f                	fs pop %rdi
  96:	34 78                	xor    $0x78,%al
  98:	00 64 6f 74          	add    %ah,0x74(%rdi,%rbp,2)
  9c:	70 72                	jo     110 <__abi_tag-0x1b4>
  9e:	6f                   	outsl  %ds:(%rsi),(%dx)
  9f:	64 5f                	fs pop %rdi
  a1:	38 78 00             	cmp    %bh,0x0(%rax)
  a4:	64 6f                	outsl  %fs:(%rsi),(%dx)
  a6:	74 70                	je     118 <__abi_tag-0x1ac>
  a8:	72 6f                	jb     119 <__abi_tag-0x1ab>
  aa:	64 5f                	fs pop %rdi
  ac:	31 36                	xor    %esi,(%rsi)
  ae:	78 00                	js     b0 <__abi_tag-0x214>
  b0:	6d                   	insl   (%dx),%es:(%rdi)
  b1:	61                   	(bad)  
  b2:	69 6e 00 69 6e 69 74 	imul   $0x74696e69,0x0(%rsi),%ebp
  b9:	00 61 72             	add    %ah,0x72(%rcx)
  bc:	67 63 00             	movsxd (%eax),%eax
  bf:	61                   	(bad)  
  c0:	72 67                	jb     129 <__abi_tag-0x19b>
  c2:	76 00                	jbe    c4 <__abi_tag-0x200>
  c4:	63 68 61             	movsxd 0x61(%rax),%ebp
  c7:	72 00                	jb     c9 <__abi_tag-0x1fb>
  c9:	61                   	(bad)  
  ca:	00 62 00             	add    %ah,0x0(%rdx)
  cd:	69 00 5f 5f 41 52    	imul   $0x52415f5f,(%rax),%eax
  d3:	52                   	push   %rdx
  d4:	41 59                	pop    %r9
  d6:	5f                   	pop    %rdi
  d7:	53                   	push   %rbx
  d8:	49 5a                	rex.WB pop %r10
  da:	45 5f                	rex.RB pop %r15
  dc:	54                   	push   %rsp
  dd:	59                   	pop    %rcx
  de:	50                   	push   %rax
  df:	45 5f                	rex.RB pop %r15
  e1:	5f                   	pop    %rdi
  e2:	00 6e 5f             	add    %ch,0x5f(%rsi)
  e5:	31 00                	xor    %eax,(%rax)
  e7:	74 65                	je     14e <__abi_tag-0x176>
  e9:	73 74                	jae    15f <__abi_tag-0x165>
  eb:	00 6e 5f             	add    %ch,0x5f(%rsi)
  ee:	34 00                	xor    $0x0,%al
  f0:	6e                   	outsb  %ds:(%rsi),(%dx)
  f1:	5f                   	pop    %rdi
  f2:	38 00                	cmp    %al,(%rax)
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
      1b:	18 00                	sbb    %al,(%rax)
      1d:	00 00                	add    %al,(%rax)
      1f:	00 00                	add    %al,(%rax)
      21:	00 00                	add    %al,(%rax)
      23:	04 00                	add    $0x0,%al
      25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
      29:	18 00                	sbb    %al,(%rax)
      2b:	00 00                	add    %al,(%rax)
      2d:	00 00                	add    %al,(%rax)
      2f:	00 00                	add    %al,(%rax)
      31:	1d 00 00 00 00       	sbb    $0x0,%eax
      36:	00 00                	add    %al,(%rax)
      38:	00 01                	add    %al,(%rcx)
      3a:	00 55 1d             	add    %dl,0x1d(%rbp)
      3d:	00 00                	add    %al,(%rax)
      3f:	00 00                	add    %al,(%rax)
      41:	00 00                	add    %al,(%rax)
      43:	00 22                	add    %ah,(%rdx)
      45:	00 00                	add    %al,(%rax)
      47:	00 00                	add    %al,(%rax)
      49:	00 00                	add    %al,(%rax)
      4b:	00 04 00             	add    %al,(%rax,%rax,1)
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
      7d:	18 00                	sbb    %al,(%rax)
      7f:	00 00                	add    %al,(%rax)
      81:	00 00                	add    %al,(%rax)
      83:	00 00                	add    %al,(%rax)
      85:	04 00                	add    $0x0,%al
      87:	f3 01 54 9f 18       	repz add %edx,0x18(%rdi,%rbx,4)
      8c:	00 00                	add    %al,(%rax)
      8e:	00 00                	add    %al,(%rax)
      90:	00 00                	add    %al,(%rax)
      92:	00 22                	add    %ah,(%rdx)
      94:	00 00                	add    %al,(%rax)
      96:	00 00                	add    %al,(%rax)
      98:	00 00                	add    %al,(%rax)
      9a:	00 01                	add    %al,(%rcx)
      9c:	00 54 22 00          	add    %dl,0x0(%rdx,%riz,1)
      a0:	00 00                	add    %al,(%rax)
      a2:	00 00                	add    %al,(%rax)
      a4:	00 00                	add    %al,(%rax)
      a6:	22 00                	and    (%rax),%al
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
      cb:	00 3b                	add    %bh,(%rbx)
      cd:	00 00                	add    %al,(%rax)
      cf:	00 00                	add    %al,(%rax)
      d1:	00 00                	add    %al,(%rax)
      d3:	00 02                	add    %al,(%rdx)
      d5:	00 30                	add    %dh,(%rax)
      d7:	9f                   	lahf   
      d8:	3b 00                	cmp    (%rax),%eax
      da:	00 00                	add    %al,(%rax)
      dc:	00 00                	add    %al,(%rax)
      de:	00 00                	add    %al,(%rax)
      e0:	58                   	pop    %rax
      e1:	00 00                	add    %al,(%rax)
      e3:	00 00                	add    %al,(%rax)
      e5:	00 00                	add    %al,(%rax)
      e7:	00 01                	add    %al,(%rcx)
      e9:	00 61 00             	add    %ah,0x0(%rcx)
	...
      f8:	00 00                	add    %al,(%rax)
      fa:	00 30                	add    %dh,(%rax)
      fc:	00 00                	add    %al,(%rax)
      fe:	00 00                	add    %al,(%rax)
     100:	00 00                	add    %al,(%rax)
     102:	00 3b                	add    %bh,(%rbx)
     104:	00 00                	add    %al,(%rax)
     106:	00 00                	add    %al,(%rax)
     108:	00 00                	add    %al,(%rax)
     10a:	00 02                	add    %al,(%rdx)
     10c:	00 30                	add    %dh,(%rax)
     10e:	9f                   	lahf   
     10f:	3b 00                	cmp    (%rax),%eax
     111:	00 00                	add    %al,(%rax)
     113:	00 00                	add    %al,(%rax)
     115:	00 00                	add    %al,(%rax)
     117:	57                   	push   %rdi
     118:	00 00                	add    %al,(%rax)
     11a:	00 00                	add    %al,(%rax)
     11c:	00 00                	add    %al,(%rax)
     11e:	00 01                	add    %al,(%rcx)
     120:	00 50 00             	add    %dl,0x0(%rax)
	...
     12f:	00 00                	add    %al,(%rax)
     131:	00 60 00             	add    %ah,0x0(%rax)
     134:	00 00                	add    %al,(%rax)
     136:	00 00                	add    %al,(%rax)
     138:	00 00                	add    %al,(%rax)
     13a:	74 00                	je     13c <__abi_tag-0x188>
     13c:	00 00                	add    %al,(%rax)
     13e:	00 00                	add    %al,(%rax)
     140:	00 00                	add    %al,(%rax)
     142:	08 00                	or     %al,(%rax)
     144:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
     14a:	93                   	xchg   %eax,%ebx
     14b:	08 74 00 00          	or     %dh,0x0(%rax,%rax,1)
     14f:	00 00                	add    %al,(%rax)
     151:	00 00                	add    %al,(%rax)
     153:	00 ab 00 00 00 00    	add    %ch,0x0(%rbx)
     159:	00 00                	add    %al,(%rax)
     15b:	00 06                	add    %al,(%rsi)
     15d:	00 61 93             	add    %ah,-0x6d(%rcx)
     160:	08 62 93             	or     %ah,-0x6d(%rdx)
     163:	08 ab 00 00 00 00    	or     %ch,0x0(%rbx)
     169:	00 00                	add    %al,(%rax)
     16b:	00 ac 00 00 00 00 00 	add    %ch,0x0(%rax,%rax,1)
     172:	00 00                	add    %al,(%rax)
     174:	05 00 93 08 62       	add    $0x62089300,%eax
     179:	93                   	xchg   %eax,%ebx
     17a:	08 ac 00 00 00 00 00 	or     %ch,0x0(%rax,%rax,1)
     181:	00 00                	add    %al,(%rax)
     183:	bf 00 00 00 00       	mov    $0x0,%edi
     188:	00 00                	add    %al,(%rax)
     18a:	00 08                	add    %cl,(%rax)
     18c:	00 30                	add    %dh,(%rax)
     18e:	9f                   	lahf   
     18f:	93                   	xchg   %eax,%ebx
     190:	08 30                	or     %dh,(%rax)
     192:	9f                   	lahf   
     193:	93                   	xchg   %eax,%ebx
     194:	08 bf 00 00 00 00    	or     %bh,0x0(%rdi)
     19a:	00 00                	add    %al,(%rax)
     19c:	00 e9                	add    %ch,%cl
     19e:	00 00                	add    %al,(%rax)
     1a0:	00 00                	add    %al,(%rax)
     1a2:	00 00                	add    %al,(%rax)
     1a4:	00 06                	add    %al,(%rsi)
     1a6:	00 62 93             	add    %ah,-0x6d(%rdx)
     1a9:	08 61 93             	or     %ah,-0x6d(%rcx)
     1ac:	08 e9                	or     %ch,%cl
     1ae:	00 00                	add    %al,(%rax)
     1b0:	00 00                	add    %al,(%rax)
     1b2:	00 00                	add    %al,(%rax)
     1b4:	00 f1                	add    %dh,%cl
     1b6:	00 00                	add    %al,(%rax)
     1b8:	00 00                	add    %al,(%rax)
     1ba:	00 00                	add    %al,(%rax)
     1bc:	00 08                	add    %cl,(%rax)
     1be:	00 30                	add    %dh,(%rax)
     1c0:	9f                   	lahf   
     1c1:	93                   	xchg   %eax,%ebx
     1c2:	08 30                	or     %dh,(%rax)
     1c4:	9f                   	lahf   
     1c5:	93                   	xchg   %eax,%ebx
     1c6:	08 f1                	or     %dh,%cl
     1c8:	00 00                	add    %al,(%rax)
     1ca:	00 00                	add    %al,(%rax)
     1cc:	00 00                	add    %al,(%rax)
     1ce:	00 f5                	add    %dh,%ch
     1d0:	00 00                	add    %al,(%rax)
     1d2:	00 00                	add    %al,(%rax)
     1d4:	00 00                	add    %al,(%rax)
     1d6:	00 06                	add    %al,(%rsi)
     1d8:	00 61 93             	add    %ah,-0x6d(%rcx)
     1db:	08 62 93             	or     %ah,-0x6d(%rdx)
     1de:	08 f5                	or     %dh,%ch
     1e0:	00 00                	add    %al,(%rax)
     1e2:	00 00                	add    %al,(%rax)
     1e4:	00 00                	add    %al,(%rax)
     1e6:	00 f6                	add    %dh,%dh
     1e8:	00 00                	add    %al,(%rax)
     1ea:	00 00                	add    %al,(%rax)
     1ec:	00 00                	add    %al,(%rax)
     1ee:	00 05 00 93 08 62    	add    %al,0x62089300(%rip)        # 620894f4 <_end+0x6208549c>
     1f4:	93                   	xchg   %eax,%ebx
     1f5:	08 f6                	or     %dh,%dh
     1f7:	00 00                	add    %al,(%rax)
     1f9:	00 00                	add    %al,(%rax)
     1fb:	00 00                	add    %al,(%rax)
     1fd:	00 fe                	add    %bh,%dh
     1ff:	00 00                	add    %al,(%rax)
     201:	00 00                	add    %al,(%rax)
     203:	00 00                	add    %al,(%rax)
     205:	00 08                	add    %cl,(%rax)
     207:	00 30                	add    %dh,(%rax)
     209:	9f                   	lahf   
     20a:	93                   	xchg   %eax,%ebx
     20b:	08 30                	or     %dh,(%rax)
     20d:	9f                   	lahf   
     20e:	93                   	xchg   %eax,%ebx
     20f:	08 fe                	or     %bh,%dh
     211:	00 00                	add    %al,(%rax)
     213:	00 00                	add    %al,(%rax)
     215:	00 00                	add    %al,(%rax)
     217:	00 02                	add    %al,(%rdx)
     219:	01 00                	add    %eax,(%rax)
     21b:	00 00                	add    %al,(%rax)
     21d:	00 00                	add    %al,(%rax)
     21f:	00 06                	add    %al,(%rsi)
     221:	00 62 93             	add    %ah,-0x6d(%rdx)
     224:	08 61 93             	or     %ah,-0x6d(%rcx)
     227:	08 02                	or     %al,(%rdx)
     229:	01 00                	add    %eax,(%rax)
     22b:	00 00                	add    %al,(%rax)
     22d:	00 00                	add    %al,(%rax)
     22f:	00 08                	add    %cl,(%rax)
     231:	01 00                	add    %eax,(%rax)
     233:	00 00                	add    %al,(%rax)
     235:	00 00                	add    %al,(%rax)
     237:	00 05 00 93 08 61    	add    %al,0x61089300(%rip)        # 6108953d <_end+0x610854e5>
     23d:	93                   	xchg   %eax,%ebx
     23e:	08 0e                	or     %cl,(%rsi)
     240:	01 00                	add    %eax,(%rax)
     242:	00 00                	add    %al,(%rax)
     244:	00 00                	add    %al,(%rax)
     246:	00 12                	add    %dl,(%rdx)
     248:	01 00                	add    %eax,(%rax)
     24a:	00 00                	add    %al,(%rax)
     24c:	00 00                	add    %al,(%rax)
     24e:	00 06                	add    %al,(%rsi)
     250:	00 61 93             	add    %ah,-0x6d(%rcx)
     253:	08 62 93             	or     %ah,-0x6d(%rdx)
     256:	08 12                	or     %dl,(%rdx)
     258:	01 00                	add    %eax,(%rax)
     25a:	00 00                	add    %al,(%rax)
     25c:	00 00                	add    %al,(%rax)
     25e:	00 13                	add    %dl,(%rbx)
     260:	01 00                	add    %eax,(%rax)
     262:	00 00                	add    %al,(%rax)
     264:	00 00                	add    %al,(%rax)
     266:	00 05 00 93 08 62    	add    %al,0x62089300(%rip)        # 6208956c <_end+0x62085514>
     26c:	93                   	xchg   %eax,%ebx
     26d:	08 00                	or     %al,(%rax)
	...
     27b:	00 00                	add    %al,(%rax)
     27d:	00 65 00             	add    %ah,0x0(%rbp)
     280:	00 00                	add    %al,(%rax)
     282:	00 00                	add    %al,(%rax)
     284:	00 00                	add    %al,(%rax)
     286:	74 00                	je     288 <__abi_tag-0x3c>
     288:	00 00                	add    %al,(%rax)
     28a:	00 00                	add    %al,(%rax)
     28c:	00 00                	add    %al,(%rax)
     28e:	02 00                	add    (%rax),%al
     290:	30 9f 74 00 00 00    	xor    %bl,0x74(%rdi)
     296:	00 00                	add    %al,(%rax)
     298:	00 00                	add    %al,(%rax)
     29a:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     29b:	00 00                	add    %al,(%rax)
     29d:	00 00                	add    %al,(%rax)
     29f:	00 00                	add    %al,(%rax)
     2a1:	00 01                	add    %al,(%rcx)
     2a3:	00 50 00             	add    %dl,0x0(%rax)
	...
     2b2:	00 00                	add    %al,(%rax)
     2b4:	00 ac 00 00 00 00 00 	add    %ch,0x0(%rax,%rax,1)
     2bb:	00 00                	add    %al,(%rax)
     2bd:	bf 00 00 00 00       	mov    $0x0,%edi
     2c2:	00 00                	add    %al,(%rax)
     2c4:	00 02                	add    %al,(%rdx)
     2c6:	00 30                	add    %dh,(%rax)
     2c8:	9f                   	lahf   
     2c9:	bf 00 00 00 00       	mov    $0x0,%edi
     2ce:	00 00                	add    %al,(%rax)
     2d0:	00 e9                	add    %ch,%cl
     2d2:	00 00                	add    %al,(%rax)
     2d4:	00 00                	add    %al,(%rax)
     2d6:	00 00                	add    %al,(%rax)
     2d8:	00 01                	add    %al,(%rcx)
     2da:	00 52 f6             	add    %dl,-0xa(%rdx)
     2dd:	00 00                	add    %al,(%rax)
     2df:	00 00                	add    %al,(%rax)
     2e1:	00 00                	add    %al,(%rax)
     2e3:	00 fe                	add    %bh,%dh
     2e5:	00 00                	add    %al,(%rax)
     2e7:	00 00                	add    %al,(%rax)
     2e9:	00 00                	add    %al,(%rax)
     2eb:	00 02                	add    %al,(%rdx)
     2ed:	00 30                	add    %dh,(%rax)
     2ef:	9f                   	lahf   
	...
     300:	b3 00                	mov    $0x0,%bl
     302:	00 00                	add    %al,(%rax)
     304:	00 00                	add    %al,(%rax)
     306:	00 00                	add    %al,(%rax)
     308:	e9 00 00 00 00       	jmpq   30d <__abi_tag+0x49>
     30d:	00 00                	add    %al,(%rax)
     30f:	00 01                	add    %al,(%rcx)
     311:	00 50 f6             	add    %dl,-0xa(%rax)
     314:	00 00                	add    %al,(%rax)
     316:	00 00                	add    %al,(%rax)
     318:	00 00                	add    %al,(%rax)
     31a:	00 13                	add    %dl,(%rbx)
     31c:	01 00                	add    %eax,(%rax)
     31e:	00 00                	add    %al,(%rax)
     320:	00 00                	add    %al,(%rax)
     322:	00 01                	add    %al,(%rcx)
     324:	00 50 00             	add    %dl,0x0(%rax)
	...
     333:	00 00                	add    %al,(%rax)
     335:	00 20                	add    %ah,(%rax)
     337:	01 00                	add    %eax,(%rax)
     339:	00 00                	add    %al,(%rax)
     33b:	00 00                	add    %al,(%rax)
     33d:	00 37                	add    %dh,(%rdi)
     33f:	01 00                	add    %eax,(%rax)
     341:	00 00                	add    %al,(%rax)
     343:	00 00                	add    %al,(%rax)
     345:	00 10                	add    %dl,(%rax)
     347:	00 30                	add    %dh,(%rax)
     349:	9f                   	lahf   
     34a:	93                   	xchg   %eax,%ebx
     34b:	08 30                	or     %dh,(%rax)
     34d:	9f                   	lahf   
     34e:	93                   	xchg   %eax,%ebx
     34f:	08 30                	or     %dh,(%rax)
     351:	9f                   	lahf   
     352:	93                   	xchg   %eax,%ebx
     353:	08 30                	or     %dh,(%rax)
     355:	9f                   	lahf   
     356:	93                   	xchg   %eax,%ebx
     357:	08 37                	or     %dh,(%rdi)
     359:	01 00                	add    %eax,(%rax)
     35b:	00 00                	add    %al,(%rax)
     35d:	00 00                	add    %al,(%rax)
     35f:	00 8e 01 00 00 00    	add    %cl,0x1(%rsi)
     365:	00 00                	add    %al,(%rax)
     367:	00 0c 00             	add    %cl,(%rax,%rax,1)
     36a:	63 93 08 64 93 08    	movsxd 0x8936408(%rbx),%edx
     370:	62 93                	(bad)  
     372:	08 61 93             	or     %ah,-0x6d(%rcx)
     375:	08 8e 01 00 00 00    	or     %cl,0x1(%rsi)
     37b:	00 00                	add    %al,(%rax)
     37d:	00 9e 01 00 00 00    	add    %bl,0x1(%rsi)
     383:	00 00                	add    %al,(%rax)
     385:	00 10                	add    %dl,(%rax)
     387:	00 30                	add    %dh,(%rax)
     389:	9f                   	lahf   
     38a:	93                   	xchg   %eax,%ebx
     38b:	08 30                	or     %dh,(%rax)
     38d:	9f                   	lahf   
     38e:	93                   	xchg   %eax,%ebx
     38f:	08 30                	or     %dh,(%rax)
     391:	9f                   	lahf   
     392:	93                   	xchg   %eax,%ebx
     393:	08 30                	or     %dh,(%rax)
     395:	9f                   	lahf   
     396:	93                   	xchg   %eax,%ebx
     397:	08 9e 01 00 00 00    	or     %bl,0x1(%rsi)
     39d:	00 00                	add    %al,(%rax)
     39f:	00 cb                	add    %cl,%bl
     3a1:	01 00                	add    %eax,(%rax)
     3a3:	00 00                	add    %al,(%rax)
     3a5:	00 00                	add    %al,(%rax)
     3a7:	00 0c 00             	add    %cl,(%rax,%rax,1)
     3aa:	63 93 08 64 93 08    	movsxd 0x8936408(%rbx),%edx
     3b0:	62 93                	(bad)  
     3b2:	08 61 93             	or     %ah,-0x6d(%rcx)
     3b5:	08 cb                	or     %cl,%bl
     3b7:	01 00                	add    %eax,(%rax)
     3b9:	00 00                	add    %al,(%rax)
     3bb:	00 00                	add    %al,(%rax)
     3bd:	00 cf                	add    %cl,%bh
     3bf:	01 00                	add    %eax,(%rax)
     3c1:	00 00                	add    %al,(%rax)
     3c3:	00 00                	add    %al,(%rax)
     3c5:	00 0b                	add    %cl,(%rbx)
     3c7:	00 63 93             	add    %ah,-0x6d(%rbx)
     3ca:	08 93 08 62 93 08    	or     %dl,0x8936208(%rbx)
     3d0:	61                   	(bad)  
     3d1:	93                   	xchg   %eax,%ebx
     3d2:	08 cf                	or     %cl,%bh
     3d4:	01 00                	add    %eax,(%rax)
     3d6:	00 00                	add    %al,(%rax)
     3d8:	00 00                	add    %al,(%rax)
     3da:	00 d3                	add    %dl,%bl
     3dc:	01 00                	add    %eax,(%rax)
     3de:	00 00                	add    %al,(%rax)
     3e0:	00 00                	add    %al,(%rax)
     3e2:	00 08                	add    %cl,(%rax)
     3e4:	00 63 93             	add    %ah,-0x6d(%rbx)
     3e7:	08 93 10 61 93 08    	or     %dl,0x8936110(%rbx)
     3ed:	d3 01                	roll   %cl,(%rcx)
     3ef:	00 00                	add    %al,(%rax)
     3f1:	00 00                	add    %al,(%rax)
     3f3:	00 00                	add    %al,(%rax)
     3f5:	d4                   	(bad)  
     3f6:	01 00                	add    %eax,(%rax)
     3f8:	00 00                	add    %al,(%rax)
     3fa:	00 00                	add    %al,(%rax)
     3fc:	00 03                	add    %al,(%rbx)
     3fe:	00 63 93             	add    %ah,-0x6d(%rbx)
     401:	08 00                	or     %al,(%rax)
	...
     40f:	00 00                	add    %al,(%rax)
     411:	00 20                	add    %ah,(%rax)
     413:	01 00                	add    %eax,(%rax)
     415:	00 00                	add    %al,(%rax)
     417:	00 00                	add    %al,(%rax)
     419:	00 37                	add    %dh,(%rdi)
     41b:	01 00                	add    %eax,(%rax)
     41d:	00 00                	add    %al,(%rax)
     41f:	00 00                	add    %al,(%rax)
     421:	00 02                	add    %al,(%rdx)
     423:	00 30                	add    %dh,(%rax)
     425:	9f                   	lahf   
     426:	37                   	(bad)  
     427:	01 00                	add    %eax,(%rax)
     429:	00 00                	add    %al,(%rax)
     42b:	00 00                	add    %al,(%rax)
     42d:	00 87 01 00 00 00    	add    %al,0x1(%rdi)
     433:	00 00                	add    %al,(%rax)
     435:	00 01                	add    %al,(%rcx)
     437:	00 50 00             	add    %dl,0x0(%rax)
	...
     446:	00 00                	add    %al,(%rax)
     448:	00 8a 01 00 00 00    	add    %cl,0x1(%rdx)
     44e:	00 00                	add    %al,(%rax)
     450:	00 8e 01 00 00 00    	add    %cl,0x1(%rsi)
     456:	00 00                	add    %al,(%rax)
     458:	00 03                	add    %al,(%rbx)
     45a:	00 71 7d             	add    %dh,0x7d(%rcx)
     45d:	9f                   	lahf   
     45e:	a1 01 00 00 00 00 00 	movabs 0xa300000000000001,%eax
     465:	00 a3 
     467:	01 00                	add    %eax,(%rax)
     469:	00 00                	add    %al,(%rax)
     46b:	00 00                	add    %al,(%rax)
     46d:	00 03                	add    %al,(%rbx)
     46f:	00 71 7d             	add    %dh,0x7d(%rcx)
     472:	9f                   	lahf   
     473:	ad                   	lods   %ds:(%rsi),%eax
     474:	01 00                	add    %eax,(%rax)
     476:	00 00                	add    %al,(%rax)
     478:	00 00                	add    %al,(%rax)
     47a:	00 c7                	add    %al,%bh
     47c:	01 00                	add    %eax,(%rax)
     47e:	00 00                	add    %al,(%rax)
     480:	00 00                	add    %al,(%rax)
     482:	00 01                	add    %al,(%rcx)
     484:	00 50 00             	add    %dl,0x0(%rax)
	...
     493:	00 00                	add    %al,(%rax)
     495:	00 8a 01 00 00 00    	add    %cl,0x1(%rdx)
     49b:	00 00                	add    %al,(%rax)
     49d:	00 8e 01 00 00 00    	add    %cl,0x1(%rsi)
     4a3:	00 00                	add    %al,(%rax)
     4a5:	00 03                	add    %al,(%rbx)
     4a7:	00 71 7c             	add    %dh,0x7c(%rcx)
     4aa:	9f                   	lahf   
     4ab:	a1 01 00 00 00 00 00 	movabs 0xa300000000000001,%eax
     4b2:	00 a3 
     4b4:	01 00                	add    %eax,(%rax)
     4b6:	00 00                	add    %al,(%rax)
     4b8:	00 00                	add    %al,(%rax)
     4ba:	00 03                	add    %al,(%rbx)
     4bc:	00 71 7c             	add    %dh,0x7c(%rcx)
     4bf:	9f                   	lahf   
	...
     4d0:	e0 01                	loopne 4d3 <__abi_tag+0x20f>
     4d2:	00 00                	add    %al,(%rax)
     4d4:	00 00                	add    %al,(%rax)
     4d6:	00 00                	add    %al,(%rax)
     4d8:	0d 02 00 00 00       	or     $0x2,%eax
     4dd:	00 00                	add    %al,(%rax)
     4df:	00 20                	add    %ah,(%rax)
     4e1:	00 30                	add    %dh,(%rax)
     4e3:	9f                   	lahf   
     4e4:	93                   	xchg   %eax,%ebx
     4e5:	08 30                	or     %dh,(%rax)
     4e7:	9f                   	lahf   
     4e8:	93                   	xchg   %eax,%ebx
     4e9:	08 30                	or     %dh,(%rax)
     4eb:	9f                   	lahf   
     4ec:	93                   	xchg   %eax,%ebx
     4ed:	08 30                	or     %dh,(%rax)
     4ef:	9f                   	lahf   
     4f0:	93                   	xchg   %eax,%ebx
     4f1:	08 30                	or     %dh,(%rax)
     4f3:	9f                   	lahf   
     4f4:	93                   	xchg   %eax,%ebx
     4f5:	08 30                	or     %dh,(%rax)
     4f7:	9f                   	lahf   
     4f8:	93                   	xchg   %eax,%ebx
     4f9:	08 30                	or     %dh,(%rax)
     4fb:	9f                   	lahf   
     4fc:	93                   	xchg   %eax,%ebx
     4fd:	08 30                	or     %dh,(%rax)
     4ff:	9f                   	lahf   
     500:	93                   	xchg   %eax,%ebx
     501:	08 0d 02 00 00 00    	or     %cl,0x2(%rip)        # 509 <__abi_tag+0x245>
     507:	00 00                	add    %al,(%rax)
     509:	00 a4 02 00 00 00 00 	add    %ah,0x0(%rdx,%rax,1)
     510:	00 00                	add    %al,(%rax)
     512:	18 00                	sbb    %al,(%rax)
     514:	67 93                	addr32 xchg %eax,%ebx
     516:	08 68 93             	or     %ch,-0x6d(%rax)
     519:	08 66 93             	or     %ah,-0x6d(%rsi)
     51c:	08 65 93             	or     %ah,-0x6d(%rbp)
     51f:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     523:	6a 93                	pushq  $0xffffffffffffff93
     525:	08 69 93             	or     %ch,-0x6d(%rcx)
     528:	08 61 93             	or     %ah,-0x6d(%rcx)
     52b:	08 a4 02 00 00 00 00 	or     %ah,0x0(%rdx,%rax,1)
     532:	00 00                	add    %al,(%rax)
     534:	c6 02 00             	movb   $0x0,(%rdx)
     537:	00 00                	add    %al,(%rax)
     539:	00 00                	add    %al,(%rax)
     53b:	00 20                	add    %ah,(%rax)
     53d:	00 30                	add    %dh,(%rax)
     53f:	9f                   	lahf   
     540:	93                   	xchg   %eax,%ebx
     541:	08 30                	or     %dh,(%rax)
     543:	9f                   	lahf   
     544:	93                   	xchg   %eax,%ebx
     545:	08 30                	or     %dh,(%rax)
     547:	9f                   	lahf   
     548:	93                   	xchg   %eax,%ebx
     549:	08 30                	or     %dh,(%rax)
     54b:	9f                   	lahf   
     54c:	93                   	xchg   %eax,%ebx
     54d:	08 30                	or     %dh,(%rax)
     54f:	9f                   	lahf   
     550:	93                   	xchg   %eax,%ebx
     551:	08 30                	or     %dh,(%rax)
     553:	9f                   	lahf   
     554:	93                   	xchg   %eax,%ebx
     555:	08 30                	or     %dh,(%rax)
     557:	9f                   	lahf   
     558:	93                   	xchg   %eax,%ebx
     559:	08 30                	or     %dh,(%rax)
     55b:	9f                   	lahf   
     55c:	93                   	xchg   %eax,%ebx
     55d:	08 c6                	or     %al,%dh
     55f:	02 00                	add    (%rax),%al
     561:	00 00                	add    %al,(%rax)
     563:	00 00                	add    %al,(%rax)
     565:	00 fb                	add    %bh,%bl
     567:	02 00                	add    (%rax),%al
     569:	00 00                	add    %al,(%rax)
     56b:	00 00                	add    %al,(%rax)
     56d:	00 18                	add    %bl,(%rax)
     56f:	00 67 93             	add    %ah,-0x6d(%rdi)
     572:	08 68 93             	or     %ch,-0x6d(%rax)
     575:	08 66 93             	or     %ah,-0x6d(%rsi)
     578:	08 65 93             	or     %ah,-0x6d(%rbp)
     57b:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     57f:	6a 93                	pushq  $0xffffffffffffff93
     581:	08 69 93             	or     %ch,-0x6d(%rcx)
     584:	08 61 93             	or     %ah,-0x6d(%rcx)
     587:	08 fb                	or     %bh,%bl
     589:	02 00                	add    (%rax),%al
     58b:	00 00                	add    %al,(%rax)
     58d:	00 00                	add    %al,(%rax)
     58f:	00 ff                	add    %bh,%bh
     591:	02 00                	add    (%rax),%al
     593:	00 00                	add    %al,(%rax)
     595:	00 00                	add    %al,(%rax)
     597:	00 17                	add    %dl,(%rdi)
     599:	00 67 93             	add    %ah,-0x6d(%rdi)
     59c:	08 93 08 66 93 08    	or     %dl,0x8936608(%rbx)
     5a2:	65 93                	gs xchg %eax,%ebx
     5a4:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     5a8:	6a 93                	pushq  $0xffffffffffffff93
     5aa:	08 69 93             	or     %ch,-0x6d(%rcx)
     5ad:	08 61 93             	or     %ah,-0x6d(%rcx)
     5b0:	08 ff                	or     %bh,%bh
     5b2:	02 00                	add    (%rax),%al
     5b4:	00 00                	add    %al,(%rax)
     5b6:	00 00                	add    %al,(%rax)
     5b8:	00 03                	add    %al,(%rbx)
     5ba:	03 00                	add    (%rax),%eax
     5bc:	00 00                	add    %al,(%rax)
     5be:	00 00                	add    %al,(%rax)
     5c0:	00 14 00             	add    %dl,(%rax,%rax,1)
     5c3:	67 93                	addr32 xchg %eax,%ebx
     5c5:	08 93 10 65 93 08    	or     %dl,0x8936510(%rbx)
     5cb:	64 93                	fs xchg %eax,%ebx
     5cd:	08 6a 93             	or     %ch,-0x6d(%rdx)
     5d0:	08 69 93             	or     %ch,-0x6d(%rcx)
     5d3:	08 61 93             	or     %ah,-0x6d(%rcx)
     5d6:	08 03                	or     %al,(%rbx)
     5d8:	03 00                	add    (%rax),%eax
     5da:	00 00                	add    %al,(%rax)
     5dc:	00 00                	add    %al,(%rax)
     5de:	00 07                	add    %al,(%rdi)
     5e0:	03 00                	add    (%rax),%eax
     5e2:	00 00                	add    %al,(%rax)
     5e4:	00 00                	add    %al,(%rax)
     5e6:	00 11                	add    %dl,(%rcx)
     5e8:	00 67 93             	add    %ah,-0x6d(%rdi)
     5eb:	08 93 18 64 93 08    	or     %dl,0x8936418(%rbx)
     5f1:	6a 93                	pushq  $0xffffffffffffff93
     5f3:	08 69 93             	or     %ch,-0x6d(%rcx)
     5f6:	08 61 93             	or     %ah,-0x6d(%rcx)
     5f9:	08 07                	or     %al,(%rdi)
     5fb:	03 00                	add    (%rax),%eax
     5fd:	00 00                	add    %al,(%rax)
     5ff:	00 00                	add    %al,(%rax)
     601:	00 0c 03             	add    %cl,(%rbx,%rax,1)
     604:	00 00                	add    %al,(%rax)
     606:	00 00                	add    %al,(%rax)
     608:	00 00                	add    %al,(%rax)
     60a:	0e                   	(bad)  
     60b:	00 67 93             	add    %ah,-0x6d(%rdi)
     60e:	08 93 20 6a 93 08    	or     %dl,0x8936a20(%rbx)
     614:	69 93 08 61 93 08 0c 	imul   $0x30c,0x8936108(%rbx),%edx
     61b:	03 00 00 
     61e:	00 00                	add    %al,(%rax)
     620:	00 00                	add    %al,(%rax)
     622:	11 03                	adc    %eax,(%rbx)
     624:	00 00                	add    %al,(%rax)
     626:	00 00                	add    %al,(%rax)
     628:	00 00                	add    %al,(%rax)
     62a:	0b 00                	or     (%rax),%eax
     62c:	67 93                	addr32 xchg %eax,%ebx
     62e:	08 93 28 69 93 08    	or     %dl,0x8936928(%rbx)
     634:	61                   	(bad)  
     635:	93                   	xchg   %eax,%ebx
     636:	08 11                	or     %dl,(%rcx)
     638:	03 00                	add    (%rax),%eax
     63a:	00 00                	add    %al,(%rax)
     63c:	00 00                	add    %al,(%rax)
     63e:	00 16                	add    %dl,(%rsi)
     640:	03 00                	add    (%rax),%eax
     642:	00 00                	add    %al,(%rax)
     644:	00 00                	add    %al,(%rax)
     646:	00 08                	add    %cl,(%rax)
     648:	00 67 93             	add    %ah,-0x6d(%rdi)
     64b:	08 93 30 61 93 08    	or     %dl,0x8936130(%rbx)
     651:	16                   	(bad)  
     652:	03 00                	add    (%rax),%eax
     654:	00 00                	add    %al,(%rax)
     656:	00 00                	add    %al,(%rax)
     658:	00 17                	add    %dl,(%rdi)
     65a:	03 00                	add    (%rax),%eax
     65c:	00 00                	add    %al,(%rax)
     65e:	00 00                	add    %al,(%rax)
     660:	00 03                	add    %al,(%rbx)
     662:	00 67 93             	add    %ah,-0x6d(%rdi)
     665:	08 00                	or     %al,(%rax)
	...
     673:	00 00                	add    %al,(%rax)
     675:	00 e0                	add    %ah,%al
     677:	01 00                	add    %eax,(%rax)
     679:	00 00                	add    %al,(%rax)
     67b:	00 00                	add    %al,(%rax)
     67d:	00 0d 02 00 00 00    	add    %cl,0x2(%rip)        # 685 <__abi_tag+0x3c1>
     683:	00 00                	add    %al,(%rax)
     685:	00 02                	add    %al,(%rdx)
     687:	00 30                	add    %dh,(%rax)
     689:	9f                   	lahf   
     68a:	0d 02 00 00 00       	or     $0x2,%eax
     68f:	00 00                	add    %al,(%rax)
     691:	00 9d 02 00 00 00    	add    %bl,0x2(%rbp)
     697:	00 00                	add    %al,(%rax)
     699:	00 01                	add    %al,(%rcx)
     69b:	00 50 00             	add    %dl,0x0(%rax)
	...
     6aa:	00 00                	add    %al,(%rax)
     6ac:	00 a0 02 00 00 00    	add    %ah,0x2(%rax)
     6b2:	00 00                	add    %al,(%rax)
     6b4:	00 a4 02 00 00 00 00 	add    %ah,0x0(%rdx,%rax,1)
     6bb:	00 00                	add    %al,(%rax)
     6bd:	03 00                	add    (%rax),%eax
     6bf:	71 79                	jno    73a <__abi_tag+0x476>
     6c1:	9f                   	lahf   
     6c2:	c9                   	leaveq 
     6c3:	02 00                	add    (%rax),%al
     6c5:	00 00                	add    %al,(%rax)
     6c7:	00 00                	add    %al,(%rax)
     6c9:	00 cb                	add    %cl,%bl
     6cb:	02 00                	add    (%rax),%al
     6cd:	00 00                	add    %al,(%rax)
     6cf:	00 00                	add    %al,(%rax)
     6d1:	00 03                	add    %al,(%rbx)
     6d3:	00 71 79             	add    %dh,0x79(%rcx)
     6d6:	9f                   	lahf   
     6d7:	d5                   	(bad)  
     6d8:	02 00                	add    (%rax),%al
     6da:	00 00                	add    %al,(%rax)
     6dc:	00 00                	add    %al,(%rax)
     6de:	00 f7                	add    %dh,%bh
     6e0:	02 00                	add    (%rax),%al
     6e2:	00 00                	add    %al,(%rax)
     6e4:	00 00                	add    %al,(%rax)
     6e6:	00 01                	add    %al,(%rcx)
     6e8:	00 50 00             	add    %dl,0x0(%rax)
	...
     6f7:	00 00                	add    %al,(%rax)
     6f9:	00 a0 02 00 00 00    	add    %ah,0x2(%rax)
     6ff:	00 00                	add    %al,(%rax)
     701:	00 a4 02 00 00 00 00 	add    %ah,0x0(%rdx,%rax,1)
     708:	00 00                	add    %al,(%rax)
     70a:	03 00                	add    (%rax),%eax
     70c:	71 78                	jno    786 <__abi_tag+0x4c2>
     70e:	9f                   	lahf   
     70f:	c9                   	leaveq 
     710:	02 00                	add    (%rax),%al
     712:	00 00                	add    %al,(%rax)
     714:	00 00                	add    %al,(%rax)
     716:	00 cb                	add    %cl,%bl
     718:	02 00                	add    (%rax),%al
     71a:	00 00                	add    %al,(%rax)
     71c:	00 00                	add    %al,(%rax)
     71e:	00 03                	add    %al,(%rbx)
     720:	00 71 78             	add    %dh,0x78(%rcx)
     723:	9f                   	lahf   
	...
     734:	20 03                	and    %al,(%rbx)
     736:	00 00                	add    %al,(%rax)
     738:	00 00                	add    %al,(%rax)
     73a:	00 00                	add    %al,(%rax)
     73c:	84 03                	test   %al,(%rbx)
     73e:	00 00                	add    %al,(%rax)
     740:	00 00                	add    %al,(%rax)
     742:	00 00                	add    %al,(%rax)
     744:	40 00 30             	add    %sil,(%rax)
     747:	9f                   	lahf   
     748:	93                   	xchg   %eax,%ebx
     749:	08 30                	or     %dh,(%rax)
     74b:	9f                   	lahf   
     74c:	93                   	xchg   %eax,%ebx
     74d:	08 30                	or     %dh,(%rax)
     74f:	9f                   	lahf   
     750:	93                   	xchg   %eax,%ebx
     751:	08 30                	or     %dh,(%rax)
     753:	9f                   	lahf   
     754:	93                   	xchg   %eax,%ebx
     755:	08 30                	or     %dh,(%rax)
     757:	9f                   	lahf   
     758:	93                   	xchg   %eax,%ebx
     759:	08 30                	or     %dh,(%rax)
     75b:	9f                   	lahf   
     75c:	93                   	xchg   %eax,%ebx
     75d:	08 30                	or     %dh,(%rax)
     75f:	9f                   	lahf   
     760:	93                   	xchg   %eax,%ebx
     761:	08 30                	or     %dh,(%rax)
     763:	9f                   	lahf   
     764:	93                   	xchg   %eax,%ebx
     765:	08 30                	or     %dh,(%rax)
     767:	9f                   	lahf   
     768:	93                   	xchg   %eax,%ebx
     769:	08 30                	or     %dh,(%rax)
     76b:	9f                   	lahf   
     76c:	93                   	xchg   %eax,%ebx
     76d:	08 30                	or     %dh,(%rax)
     76f:	9f                   	lahf   
     770:	93                   	xchg   %eax,%ebx
     771:	08 30                	or     %dh,(%rax)
     773:	9f                   	lahf   
     774:	93                   	xchg   %eax,%ebx
     775:	08 30                	or     %dh,(%rax)
     777:	9f                   	lahf   
     778:	93                   	xchg   %eax,%ebx
     779:	08 30                	or     %dh,(%rax)
     77b:	9f                   	lahf   
     77c:	93                   	xchg   %eax,%ebx
     77d:	08 30                	or     %dh,(%rax)
     77f:	9f                   	lahf   
     780:	93                   	xchg   %eax,%ebx
     781:	08 30                	or     %dh,(%rax)
     783:	9f                   	lahf   
     784:	93                   	xchg   %eax,%ebx
     785:	08 84 03 00 00 00 00 	or     %al,0x0(%rbx,%rax,1)
     78c:	00 00                	add    %al,(%rax)
     78e:	9b                   	fwait
     78f:	03 00                	add    (%rax),%eax
     791:	00 00                	add    %al,(%rax)
     793:	00 00                	add    %al,(%rax)
     795:	00 34 00             	add    %dh,(%rax,%rax,1)
     798:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     79d:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     7a1:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     7a8:	77 58                	ja     802 <__abi_tag+0x53e>
     7aa:	93                   	xchg   %eax,%ebx
     7ab:	08 6e 93             	or     %ch,-0x6d(%rsi)
     7ae:	08 77 60             	or     %dh,0x60(%rdi)
     7b1:	93                   	xchg   %eax,%ebx
     7b2:	08 6f 93             	or     %ch,-0x6d(%rdi)
     7b5:	08 77 68             	or     %dh,0x68(%rdi)
     7b8:	93                   	xchg   %eax,%ebx
     7b9:	08 6a 93             	or     %ch,-0x6d(%rdx)
     7bc:	08 62 93             	or     %ah,-0x6d(%rdx)
     7bf:	08 67 93             	or     %ah,-0x6d(%rdi)
     7c2:	08 66 93             	or     %ah,-0x6d(%rsi)
     7c5:	08 65 93             	or     %ah,-0x6d(%rbp)
     7c8:	08 61 93             	or     %ah,-0x6d(%rcx)
     7cb:	08 9b 03 00 00 00    	or     %bl,0x3(%rbx)
     7d1:	00 00                	add    %al,(%rax)
     7d3:	00 b8 03 00 00 00    	add    %bh,0x3(%rax)
     7d9:	00 00                	add    %al,(%rax)
     7db:	00 34 00             	add    %dh,(%rax,%rax,1)
     7de:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     7e3:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     7e7:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     7ee:	77 58                	ja     848 <__abi_tag+0x584>
     7f0:	93                   	xchg   %eax,%ebx
     7f1:	08 6e 93             	or     %ch,-0x6d(%rsi)
     7f4:	08 77 60             	or     %dh,0x60(%rdi)
     7f7:	93                   	xchg   %eax,%ebx
     7f8:	08 6f 93             	or     %ch,-0x6d(%rdi)
     7fb:	08 77 68             	or     %dh,0x68(%rdi)
     7fe:	93                   	xchg   %eax,%ebx
     7ff:	08 63 93             	or     %ah,-0x6d(%rbx)
     802:	08 62 93             	or     %ah,-0x6d(%rdx)
     805:	08 67 93             	or     %ah,-0x6d(%rdi)
     808:	08 66 93             	or     %ah,-0x6d(%rsi)
     80b:	08 65 93             	or     %ah,-0x6d(%rbp)
     80e:	08 61 93             	or     %ah,-0x6d(%rcx)
     811:	08 b8 03 00 00 00    	or     %bh,0x3(%rax)
     817:	00 00                	add    %al,(%rax)
     819:	00 bc 03 00 00 00 00 	add    %bh,0x0(%rbx,%rax,1)
     820:	00 00                	add    %al,(%rax)
     822:	34 00                	xor    $0x0,%al
     824:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     829:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     82d:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     834:	77 58                	ja     88e <__abi_tag+0x5ca>
     836:	93                   	xchg   %eax,%ebx
     837:	08 6e 93             	or     %ch,-0x6d(%rsi)
     83a:	08 77 60             	or     %dh,0x60(%rdi)
     83d:	93                   	xchg   %eax,%ebx
     83e:	08 6f 93             	or     %ch,-0x6d(%rdi)
     841:	08 77 68             	or     %dh,0x68(%rdi)
     844:	93                   	xchg   %eax,%ebx
     845:	08 63 93             	or     %ah,-0x6d(%rbx)
     848:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     84c:	67 93                	addr32 xchg %eax,%ebx
     84e:	08 66 93             	or     %ah,-0x6d(%rsi)
     851:	08 65 93             	or     %ah,-0x6d(%rbp)
     854:	08 61 93             	or     %ah,-0x6d(%rcx)
     857:	08 bc 03 00 00 00 00 	or     %bh,0x0(%rbx,%rax,1)
     85e:	00 00                	add    %al,(%rax)
     860:	c0 03 00             	rolb   $0x0,(%rbx)
     863:	00 00                	add    %al,(%rax)
     865:	00 00                	add    %al,(%rax)
     867:	00 34 00             	add    %dh,(%rax,%rax,1)
     86a:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     86f:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     873:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     87a:	77 58                	ja     8d4 <__abi_tag+0x610>
     87c:	93                   	xchg   %eax,%ebx
     87d:	08 6e 93             	or     %ch,-0x6d(%rsi)
     880:	08 77 60             	or     %dh,0x60(%rdi)
     883:	93                   	xchg   %eax,%ebx
     884:	08 6f 93             	or     %ch,-0x6d(%rdi)
     887:	08 77 68             	or     %dh,0x68(%rdi)
     88a:	93                   	xchg   %eax,%ebx
     88b:	08 63 93             	or     %ah,-0x6d(%rbx)
     88e:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     892:	62 93                	(bad)  
     894:	08 66 93             	or     %ah,-0x6d(%rsi)
     897:	08 65 93             	or     %ah,-0x6d(%rbp)
     89a:	08 61 93             	or     %ah,-0x6d(%rcx)
     89d:	08 c0                	or     %al,%al
     89f:	03 00                	add    (%rax),%eax
     8a1:	00 00                	add    %al,(%rax)
     8a3:	00 00                	add    %al,(%rax)
     8a5:	00 c4                	add    %al,%ah
     8a7:	03 00                	add    (%rax),%eax
     8a9:	00 00                	add    %al,(%rax)
     8ab:	00 00                	add    %al,(%rax)
     8ad:	00 34 00             	add    %dh,(%rax,%rax,1)
     8b0:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     8b5:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     8b9:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     8c0:	77 58                	ja     91a <__abi_tag+0x656>
     8c2:	93                   	xchg   %eax,%ebx
     8c3:	08 6e 93             	or     %ch,-0x6d(%rsi)
     8c6:	08 77 60             	or     %dh,0x60(%rdi)
     8c9:	93                   	xchg   %eax,%ebx
     8ca:	08 6f 93             	or     %ch,-0x6d(%rdi)
     8cd:	08 77 68             	or     %dh,0x68(%rdi)
     8d0:	93                   	xchg   %eax,%ebx
     8d1:	08 63 93             	or     %ah,-0x6d(%rbx)
     8d4:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     8d8:	62 93                	(bad)  
     8da:	08 67 93             	or     %ah,-0x6d(%rdi)
     8dd:	08 65 93             	or     %ah,-0x6d(%rbp)
     8e0:	08 61 93             	or     %ah,-0x6d(%rcx)
     8e3:	08 c4                	or     %al,%ah
     8e5:	03 00                	add    (%rax),%eax
     8e7:	00 00                	add    %al,(%rax)
     8e9:	00 00                	add    %al,(%rax)
     8eb:	00 da                	add    %bl,%dl
     8ed:	03 00                	add    (%rax),%eax
     8ef:	00 00                	add    %al,(%rax)
     8f1:	00 00                	add    %al,(%rax)
     8f3:	00 34 00             	add    %dh,(%rax,%rax,1)
     8f6:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     8fb:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     8ff:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     906:	77 58                	ja     960 <__abi_tag+0x69c>
     908:	93                   	xchg   %eax,%ebx
     909:	08 6e 93             	or     %ch,-0x6d(%rsi)
     90c:	08 77 60             	or     %dh,0x60(%rdi)
     90f:	93                   	xchg   %eax,%ebx
     910:	08 6f 93             	or     %ch,-0x6d(%rdi)
     913:	08 77 68             	or     %dh,0x68(%rdi)
     916:	93                   	xchg   %eax,%ebx
     917:	08 63 93             	or     %ah,-0x6d(%rbx)
     91a:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     91e:	62 93                	(bad)  
     920:	08 67 93             	or     %ah,-0x6d(%rdi)
     923:	08 66 93             	or     %ah,-0x6d(%rsi)
     926:	08 61 93             	or     %ah,-0x6d(%rcx)
     929:	08 da                	or     %bl,%dl
     92b:	03 00                	add    (%rax),%eax
     92d:	00 00                	add    %al,(%rax)
     92f:	00 00                	add    %al,(%rax)
     931:	00 df                	add    %bl,%bh
     933:	03 00                	add    (%rax),%eax
     935:	00 00                	add    %al,(%rax)
     937:	00 00                	add    %al,(%rax)
     939:	00 34 00             	add    %dh,(%rax,%rax,1)
     93c:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     941:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     945:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     94c:	77 58                	ja     9a6 <__abi_tag+0x6e2>
     94e:	93                   	xchg   %eax,%ebx
     94f:	08 6e 93             	or     %ch,-0x6d(%rsi)
     952:	08 77 60             	or     %dh,0x60(%rdi)
     955:	93                   	xchg   %eax,%ebx
     956:	08 6f 93             	or     %ch,-0x6d(%rdi)
     959:	08 77 68             	or     %dh,0x68(%rdi)
     95c:	93                   	xchg   %eax,%ebx
     95d:	08 6a 93             	or     %ch,-0x6d(%rdx)
     960:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     964:	62 93                	(bad)  
     966:	08 67 93             	or     %ah,-0x6d(%rdi)
     969:	08 66 93             	or     %ah,-0x6d(%rsi)
     96c:	08 61 93             	or     %ah,-0x6d(%rcx)
     96f:	08 df                	or     %bl,%bh
     971:	03 00                	add    (%rax),%eax
     973:	00 00                	add    %al,(%rax)
     975:	00 00                	add    %al,(%rax)
     977:	00 f4                	add    %dh,%ah
     979:	03 00                	add    (%rax),%eax
     97b:	00 00                	add    %al,(%rax)
     97d:	00 00                	add    %al,(%rax)
     97f:	00 34 00             	add    %dh,(%rax,%rax,1)
     982:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     987:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     98b:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     992:	77 58                	ja     9ec <__abi_tag+0x728>
     994:	93                   	xchg   %eax,%ebx
     995:	08 6e 93             	or     %ch,-0x6d(%rsi)
     998:	08 77 60             	or     %dh,0x60(%rdi)
     99b:	93                   	xchg   %eax,%ebx
     99c:	08 6f 93             	or     %ch,-0x6d(%rdi)
     99f:	08 77 68             	or     %dh,0x68(%rdi)
     9a2:	93                   	xchg   %eax,%ebx
     9a3:	08 6a 93             	or     %ch,-0x6d(%rdx)
     9a6:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     9aa:	62 93                	(bad)  
     9ac:	08 67 93             	or     %ah,-0x6d(%rdi)
     9af:	08 66 93             	or     %ah,-0x6d(%rsi)
     9b2:	08 69 93             	or     %ch,-0x6d(%rcx)
     9b5:	08 f4                	or     %dh,%ah
     9b7:	03 00                	add    (%rax),%eax
     9b9:	00 00                	add    %al,(%rax)
     9bb:	00 00                	add    %al,(%rax)
     9bd:	00 f8                	add    %bh,%al
     9bf:	03 00                	add    (%rax),%eax
     9c1:	00 00                	add    %al,(%rax)
     9c3:	00 00                	add    %al,(%rax)
     9c5:	00 34 00             	add    %dh,(%rax,%rax,1)
     9c8:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     9cd:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     9d1:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     9d8:	77 58                	ja     a32 <__abi_tag+0x76e>
     9da:	93                   	xchg   %eax,%ebx
     9db:	08 6e 93             	or     %ch,-0x6d(%rsi)
     9de:	08 77 60             	or     %dh,0x60(%rdi)
     9e1:	93                   	xchg   %eax,%ebx
     9e2:	08 6f 93             	or     %ch,-0x6d(%rdi)
     9e5:	08 77 68             	or     %dh,0x68(%rdi)
     9e8:	93                   	xchg   %eax,%ebx
     9e9:	08 6a 93             	or     %ch,-0x6d(%rdx)
     9ec:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     9f0:	62 93                	(bad)  
     9f2:	08 67 93             	or     %ah,-0x6d(%rdi)
     9f5:	08 65 93             	or     %ah,-0x6d(%rbp)
     9f8:	08 69 93             	or     %ch,-0x6d(%rcx)
     9fb:	08 f8                	or     %bh,%al
     9fd:	03 00                	add    (%rax),%eax
     9ff:	00 00                	add    %al,(%rax)
     a01:	00 00                	add    %al,(%rax)
     a03:	00 fc                	add    %bh,%ah
     a05:	03 00                	add    (%rax),%eax
     a07:	00 00                	add    %al,(%rax)
     a09:	00 00                	add    %al,(%rax)
     a0b:	00 34 00             	add    %dh,(%rax,%rax,1)
     a0e:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     a13:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     a17:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     a1e:	77 58                	ja     a78 <__abi_tag+0x7b4>
     a20:	93                   	xchg   %eax,%ebx
     a21:	08 6e 93             	or     %ch,-0x6d(%rsi)
     a24:	08 77 60             	or     %dh,0x60(%rdi)
     a27:	93                   	xchg   %eax,%ebx
     a28:	08 6f 93             	or     %ch,-0x6d(%rdi)
     a2b:	08 77 68             	or     %dh,0x68(%rdi)
     a2e:	93                   	xchg   %eax,%ebx
     a2f:	08 6a 93             	or     %ch,-0x6d(%rdx)
     a32:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     a36:	62 93                	(bad)  
     a38:	08 66 93             	or     %ah,-0x6d(%rsi)
     a3b:	08 65 93             	or     %ah,-0x6d(%rbp)
     a3e:	08 69 93             	or     %ch,-0x6d(%rcx)
     a41:	08 fc                	or     %bh,%ah
     a43:	03 00                	add    (%rax),%eax
     a45:	00 00                	add    %al,(%rax)
     a47:	00 00                	add    %al,(%rax)
     a49:	00 00                	add    %al,(%rax)
     a4b:	04 00                	add    $0x0,%al
     a4d:	00 00                	add    %al,(%rax)
     a4f:	00 00                	add    %al,(%rax)
     a51:	00 34 00             	add    %dh,(%rax,%rax,1)
     a54:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     a59:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     a5d:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     a64:	77 58                	ja     abe <__abi_tag+0x7fa>
     a66:	93                   	xchg   %eax,%ebx
     a67:	08 6e 93             	or     %ch,-0x6d(%rsi)
     a6a:	08 77 60             	or     %dh,0x60(%rdi)
     a6d:	93                   	xchg   %eax,%ebx
     a6e:	08 6f 93             	or     %ch,-0x6d(%rdi)
     a71:	08 77 68             	or     %dh,0x68(%rdi)
     a74:	93                   	xchg   %eax,%ebx
     a75:	08 6a 93             	or     %ch,-0x6d(%rdx)
     a78:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     a7c:	67 93                	addr32 xchg %eax,%ebx
     a7e:	08 66 93             	or     %ah,-0x6d(%rsi)
     a81:	08 65 93             	or     %ah,-0x6d(%rbp)
     a84:	08 69 93             	or     %ch,-0x6d(%rcx)
     a87:	08 00                	or     %al,(%rax)
     a89:	04 00                	add    $0x0,%al
     a8b:	00 00                	add    %al,(%rax)
     a8d:	00 00                	add    %al,(%rax)
     a8f:	00 34 04             	add    %dh,(%rsp,%rax,1)
     a92:	00 00                	add    %al,(%rax)
     a94:	00 00                	add    %al,(%rax)
     a96:	00 00                	add    %al,(%rax)
     a98:	34 00                	xor    $0x0,%al
     a9a:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     a9f:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     aa3:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     aaa:	77 58                	ja     b04 <__abi_tag+0x840>
     aac:	93                   	xchg   %eax,%ebx
     aad:	08 6e 93             	or     %ch,-0x6d(%rsi)
     ab0:	08 77 60             	or     %dh,0x60(%rdi)
     ab3:	93                   	xchg   %eax,%ebx
     ab4:	08 6f 93             	or     %ch,-0x6d(%rdi)
     ab7:	08 77 68             	or     %dh,0x68(%rdi)
     aba:	93                   	xchg   %eax,%ebx
     abb:	08 6a 93             	or     %ch,-0x6d(%rdx)
     abe:	08 62 93             	or     %ah,-0x6d(%rdx)
     ac1:	08 67 93             	or     %ah,-0x6d(%rdi)
     ac4:	08 66 93             	or     %ah,-0x6d(%rsi)
     ac7:	08 65 93             	or     %ah,-0x6d(%rbp)
     aca:	08 69 93             	or     %ch,-0x6d(%rcx)
     acd:	08 34 04             	or     %dh,(%rsp,%rax,1)
     ad0:	00 00                	add    %al,(%rax)
     ad2:	00 00                	add    %al,(%rax)
     ad4:	00 00                	add    %al,(%rax)
     ad6:	3e 04 00             	ds add $0x0,%al
     ad9:	00 00                	add    %al,(%rax)
     adb:	00 00                	add    %al,(%rax)
     add:	00 33                	add    %dh,(%rbx)
     adf:	00 68 93             	add    %ch,-0x6d(%rax)
     ae2:	08 6d 93             	or     %ch,-0x6d(%rbp)
     ae5:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     ae9:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     af0:	64 93                	fs xchg %eax,%ebx
     af2:	08 6e 93             	or     %ch,-0x6d(%rsi)
     af5:	08 77 60             	or     %dh,0x60(%rdi)
     af8:	93                   	xchg   %eax,%ebx
     af9:	08 6f 93             	or     %ch,-0x6d(%rdi)
     afc:	08 77 68             	or     %dh,0x68(%rdi)
     aff:	93                   	xchg   %eax,%ebx
     b00:	08 6a 93             	or     %ch,-0x6d(%rdx)
     b03:	08 62 93             	or     %ah,-0x6d(%rdx)
     b06:	08 67 93             	or     %ah,-0x6d(%rdi)
     b09:	08 66 93             	or     %ah,-0x6d(%rsi)
     b0c:	08 65 93             	or     %ah,-0x6d(%rbp)
     b0f:	08 69 93             	or     %ch,-0x6d(%rcx)
     b12:	08 3e                	or     %bh,(%rsi)
     b14:	04 00                	add    $0x0,%al
     b16:	00 00                	add    %al,(%rax)
     b18:	00 00                	add    %al,(%rax)
     b1a:	00 61 04             	add    %ah,0x4(%rcx)
     b1d:	00 00                	add    %al,(%rax)
     b1f:	00 00                	add    %al,(%rax)
     b21:	00 00                	add    %al,(%rax)
     b23:	34 00                	xor    $0x0,%al
     b25:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     b2a:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     b2e:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     b35:	77 58                	ja     b8f <__abi_tag+0x8cb>
     b37:	93                   	xchg   %eax,%ebx
     b38:	08 6e 93             	or     %ch,-0x6d(%rsi)
     b3b:	08 77 60             	or     %dh,0x60(%rdi)
     b3e:	93                   	xchg   %eax,%ebx
     b3f:	08 6f 93             	or     %ch,-0x6d(%rdi)
     b42:	08 77 68             	or     %dh,0x68(%rdi)
     b45:	93                   	xchg   %eax,%ebx
     b46:	08 6a 93             	or     %ch,-0x6d(%rdx)
     b49:	08 62 93             	or     %ah,-0x6d(%rdx)
     b4c:	08 67 93             	or     %ah,-0x6d(%rdi)
     b4f:	08 66 93             	or     %ah,-0x6d(%rsi)
     b52:	08 65 93             	or     %ah,-0x6d(%rbp)
     b55:	08 69 93             	or     %ch,-0x6d(%rcx)
     b58:	08 61 04             	or     %ah,0x4(%rcx)
     b5b:	00 00                	add    %al,(%rax)
     b5d:	00 00                	add    %al,(%rax)
     b5f:	00 00                	add    %al,(%rax)
     b61:	6b 04 00 00          	imul   $0x0,(%rax,%rax,1),%eax
     b65:	00 00                	add    %al,(%rax)
     b67:	00 00                	add    %al,(%rax)
     b69:	33 00                	xor    (%rax),%eax
     b6b:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     b70:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     b74:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     b7b:	77 58                	ja     bd5 <__abi_tag+0x911>
     b7d:	93                   	xchg   %eax,%ebx
     b7e:	08 6e 93             	or     %ch,-0x6d(%rsi)
     b81:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     b85:	6f                   	outsl  %ds:(%rsi),(%dx)
     b86:	93                   	xchg   %eax,%ebx
     b87:	08 77 68             	or     %dh,0x68(%rdi)
     b8a:	93                   	xchg   %eax,%ebx
     b8b:	08 6a 93             	or     %ch,-0x6d(%rdx)
     b8e:	08 62 93             	or     %ah,-0x6d(%rdx)
     b91:	08 67 93             	or     %ah,-0x6d(%rdi)
     b94:	08 66 93             	or     %ah,-0x6d(%rsi)
     b97:	08 65 93             	or     %ah,-0x6d(%rbp)
     b9a:	08 69 93             	or     %ch,-0x6d(%rcx)
     b9d:	08 6b 04             	or     %ch,0x4(%rbx)
     ba0:	00 00                	add    %al,(%rax)
     ba2:	00 00                	add    %al,(%rax)
     ba4:	00 00                	add    %al,(%rax)
     ba6:	8e 04 00             	mov    (%rax,%rax,1),%es
     ba9:	00 00                	add    %al,(%rax)
     bab:	00 00                	add    %al,(%rax)
     bad:	00 34 00             	add    %dh,(%rax,%rax,1)
     bb0:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     bb5:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     bb9:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     bc0:	77 58                	ja     c1a <__abi_tag+0x956>
     bc2:	93                   	xchg   %eax,%ebx
     bc3:	08 6e 93             	or     %ch,-0x6d(%rsi)
     bc6:	08 77 60             	or     %dh,0x60(%rdi)
     bc9:	93                   	xchg   %eax,%ebx
     bca:	08 6f 93             	or     %ch,-0x6d(%rdi)
     bcd:	08 77 68             	or     %dh,0x68(%rdi)
     bd0:	93                   	xchg   %eax,%ebx
     bd1:	08 6a 93             	or     %ch,-0x6d(%rdx)
     bd4:	08 62 93             	or     %ah,-0x6d(%rdx)
     bd7:	08 67 93             	or     %ah,-0x6d(%rdi)
     bda:	08 66 93             	or     %ah,-0x6d(%rsi)
     bdd:	08 65 93             	or     %ah,-0x6d(%rbp)
     be0:	08 69 93             	or     %ch,-0x6d(%rcx)
     be3:	08 8e 04 00 00 00    	or     %cl,0x4(%rsi)
     be9:	00 00                	add    %al,(%rax)
     beb:	00 98 04 00 00 00    	add    %bl,0x4(%rax)
     bf1:	00 00                	add    %al,(%rax)
     bf3:	00 33                	add    %dh,(%rbx)
     bf5:	00 68 93             	add    %ch,-0x6d(%rax)
     bf8:	08 6d 93             	or     %ch,-0x6d(%rbp)
     bfb:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     bff:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     c06:	77 58                	ja     c60 <__abi_tag+0x99c>
     c08:	93                   	xchg   %eax,%ebx
     c09:	08 6e 93             	or     %ch,-0x6d(%rsi)
     c0c:	08 77 60             	or     %dh,0x60(%rdi)
     c0f:	93                   	xchg   %eax,%ebx
     c10:	08 6f 93             	or     %ch,-0x6d(%rdi)
     c13:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     c17:	6a 93                	pushq  $0xffffffffffffff93
     c19:	08 62 93             	or     %ah,-0x6d(%rdx)
     c1c:	08 67 93             	or     %ah,-0x6d(%rdi)
     c1f:	08 66 93             	or     %ah,-0x6d(%rsi)
     c22:	08 65 93             	or     %ah,-0x6d(%rbp)
     c25:	08 69 93             	or     %ch,-0x6d(%rcx)
     c28:	08 98 04 00 00 00    	or     %bl,0x4(%rax)
     c2e:	00 00                	add    %al,(%rax)
     c30:	00 f3                	add    %dh,%bl
     c32:	04 00                	add    $0x0,%al
     c34:	00 00                	add    %al,(%rax)
     c36:	00 00                	add    %al,(%rax)
     c38:	00 34 00             	add    %dh,(%rax,%rax,1)
     c3b:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     c40:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     c44:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     c4b:	77 58                	ja     ca5 <__abi_tag+0x9e1>
     c4d:	93                   	xchg   %eax,%ebx
     c4e:	08 6e 93             	or     %ch,-0x6d(%rsi)
     c51:	08 77 60             	or     %dh,0x60(%rdi)
     c54:	93                   	xchg   %eax,%ebx
     c55:	08 6f 93             	or     %ch,-0x6d(%rdi)
     c58:	08 77 68             	or     %dh,0x68(%rdi)
     c5b:	93                   	xchg   %eax,%ebx
     c5c:	08 6a 93             	or     %ch,-0x6d(%rdx)
     c5f:	08 62 93             	or     %ah,-0x6d(%rdx)
     c62:	08 67 93             	or     %ah,-0x6d(%rdi)
     c65:	08 66 93             	or     %ah,-0x6d(%rsi)
     c68:	08 65 93             	or     %ah,-0x6d(%rbp)
     c6b:	08 69 93             	or     %ch,-0x6d(%rcx)
     c6e:	08 f3                	or     %dh,%bl
     c70:	04 00                	add    $0x0,%al
     c72:	00 00                	add    %al,(%rax)
     c74:	00 00                	add    %al,(%rax)
     c76:	00 02                	add    %al,(%rdx)
     c78:	05 00 00 00 00       	add    $0x0,%eax
     c7d:	00 00                	add    %al,(%rax)
     c7f:	34 00                	xor    $0x0,%al
     c81:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     c86:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     c8a:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     c91:	77 58                	ja     ceb <__abi_tag+0xa27>
     c93:	93                   	xchg   %eax,%ebx
     c94:	08 6e 93             	or     %ch,-0x6d(%rsi)
     c97:	08 77 60             	or     %dh,0x60(%rdi)
     c9a:	93                   	xchg   %eax,%ebx
     c9b:	08 6f 93             	or     %ch,-0x6d(%rdi)
     c9e:	08 77 68             	or     %dh,0x68(%rdi)
     ca1:	93                   	xchg   %eax,%ebx
     ca2:	08 6a 93             	or     %ch,-0x6d(%rdx)
     ca5:	08 62 93             	or     %ah,-0x6d(%rdx)
     ca8:	08 67 93             	or     %ah,-0x6d(%rdi)
     cab:	08 66 93             	or     %ah,-0x6d(%rsi)
     cae:	08 65 93             	or     %ah,-0x6d(%rbp)
     cb1:	08 61 93             	or     %ah,-0x6d(%rcx)
     cb4:	08 02                	or     %al,(%rdx)
     cb6:	05 00 00 00 00       	add    $0x0,%eax
     cbb:	00 00                	add    %al,(%rax)
     cbd:	5b                   	pop    %rbx
     cbe:	05 00 00 00 00       	add    $0x0,%eax
     cc3:	00 00                	add    %al,(%rax)
     cc5:	40 00 30             	add    %sil,(%rax)
     cc8:	9f                   	lahf   
     cc9:	93                   	xchg   %eax,%ebx
     cca:	08 30                	or     %dh,(%rax)
     ccc:	9f                   	lahf   
     ccd:	93                   	xchg   %eax,%ebx
     cce:	08 30                	or     %dh,(%rax)
     cd0:	9f                   	lahf   
     cd1:	93                   	xchg   %eax,%ebx
     cd2:	08 30                	or     %dh,(%rax)
     cd4:	9f                   	lahf   
     cd5:	93                   	xchg   %eax,%ebx
     cd6:	08 30                	or     %dh,(%rax)
     cd8:	9f                   	lahf   
     cd9:	93                   	xchg   %eax,%ebx
     cda:	08 30                	or     %dh,(%rax)
     cdc:	9f                   	lahf   
     cdd:	93                   	xchg   %eax,%ebx
     cde:	08 30                	or     %dh,(%rax)
     ce0:	9f                   	lahf   
     ce1:	93                   	xchg   %eax,%ebx
     ce2:	08 30                	or     %dh,(%rax)
     ce4:	9f                   	lahf   
     ce5:	93                   	xchg   %eax,%ebx
     ce6:	08 30                	or     %dh,(%rax)
     ce8:	9f                   	lahf   
     ce9:	93                   	xchg   %eax,%ebx
     cea:	08 30                	or     %dh,(%rax)
     cec:	9f                   	lahf   
     ced:	93                   	xchg   %eax,%ebx
     cee:	08 30                	or     %dh,(%rax)
     cf0:	9f                   	lahf   
     cf1:	93                   	xchg   %eax,%ebx
     cf2:	08 30                	or     %dh,(%rax)
     cf4:	9f                   	lahf   
     cf5:	93                   	xchg   %eax,%ebx
     cf6:	08 30                	or     %dh,(%rax)
     cf8:	9f                   	lahf   
     cf9:	93                   	xchg   %eax,%ebx
     cfa:	08 30                	or     %dh,(%rax)
     cfc:	9f                   	lahf   
     cfd:	93                   	xchg   %eax,%ebx
     cfe:	08 30                	or     %dh,(%rax)
     d00:	9f                   	lahf   
     d01:	93                   	xchg   %eax,%ebx
     d02:	08 30                	or     %dh,(%rax)
     d04:	9f                   	lahf   
     d05:	93                   	xchg   %eax,%ebx
     d06:	08 5b 05             	or     %bl,0x5(%rbx)
     d09:	00 00                	add    %al,(%rax)
     d0b:	00 00                	add    %al,(%rax)
     d0d:	00 00                	add    %al,(%rax)
     d0f:	62                   	(bad)  
     d10:	05 00 00 00 00       	add    $0x0,%eax
     d15:	00 00                	add    %al,(%rax)
     d17:	34 00                	xor    $0x0,%al
     d19:	68 93 08 6d 93       	pushq  $0xffffffff936d0893
     d1e:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     d22:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     d29:	77 58                	ja     d83 <__abi_tag+0xabf>
     d2b:	93                   	xchg   %eax,%ebx
     d2c:	08 6e 93             	or     %ch,-0x6d(%rsi)
     d2f:	08 77 60             	or     %dh,0x60(%rdi)
     d32:	93                   	xchg   %eax,%ebx
     d33:	08 6f 93             	or     %ch,-0x6d(%rdi)
     d36:	08 77 68             	or     %dh,0x68(%rdi)
     d39:	93                   	xchg   %eax,%ebx
     d3a:	08 6a 93             	or     %ch,-0x6d(%rdx)
     d3d:	08 62 93             	or     %ah,-0x6d(%rdx)
     d40:	08 67 93             	or     %ah,-0x6d(%rdi)
     d43:	08 66 93             	or     %ah,-0x6d(%rsi)
     d46:	08 65 93             	or     %ah,-0x6d(%rbp)
     d49:	08 61 93             	or     %ah,-0x6d(%rcx)
     d4c:	08 62 05             	or     %ah,0x5(%rdx)
     d4f:	00 00                	add    %al,(%rax)
     d51:	00 00                	add    %al,(%rax)
     d53:	00 00                	add    %al,(%rax)
     d55:	69 05 00 00 00 00 00 	imul   $0x350000,0x0(%rip),%eax        # d5f <__abi_tag+0xa9b>
     d5c:	00 35 00 
     d5f:	68 93 08 77 78       	pushq  $0x78770893
     d64:	93                   	xchg   %eax,%ebx
     d65:	08 6c 93 08          	or     %ch,0x8(%rbx,%rdx,4)
     d69:	6b 93 08 90 20 93 08 	imul   $0x8,-0x6cdf6ff8(%rbx),%edx
     d70:	77 58                	ja     dca <__abi_tag+0xb06>
     d72:	93                   	xchg   %eax,%ebx
     d73:	08 6e 93             	or     %ch,-0x6d(%rsi)
     d76:	08 77 60             	or     %dh,0x60(%rdi)
     d79:	93                   	xchg   %eax,%ebx
     d7a:	08 6f 93             	or     %ch,-0x6d(%rdi)
     d7d:	08 77 68             	or     %dh,0x68(%rdi)
     d80:	93                   	xchg   %eax,%ebx
     d81:	08 6a 93             	or     %ch,-0x6d(%rdx)
     d84:	08 62 93             	or     %ah,-0x6d(%rdx)
     d87:	08 67 93             	or     %ah,-0x6d(%rdi)
     d8a:	08 66 93             	or     %ah,-0x6d(%rsi)
     d8d:	08 65 93             	or     %ah,-0x6d(%rbp)
     d90:	08 61 93             	or     %ah,-0x6d(%rcx)
     d93:	08 69 05             	or     %ch,0x5(%rcx)
     d96:	00 00                	add    %al,(%rax)
     d98:	00 00                	add    %al,(%rax)
     d9a:	00 00                	add    %al,(%rax)
     d9c:	6e                   	outsb  %ds:(%rsi),(%dx)
     d9d:	05 00 00 00 00       	add    $0x0,%eax
     da2:	00 00                	add    %al,(%rax)
     da4:	36 00 68 93          	add    %ch,%ss:-0x6d(%rax)
     da8:	08 77 78             	or     %dh,0x78(%rdi)
     dab:	93                   	xchg   %eax,%ebx
     dac:	08 77 70             	or     %dh,0x70(%rdi)
     daf:	93                   	xchg   %eax,%ebx
     db0:	08 6b 93             	or     %ch,-0x6d(%rbx)
     db3:	08 90 20 93 08 77    	or     %dl,0x77089320(%rax)
     db9:	58                   	pop    %rax
     dba:	93                   	xchg   %eax,%ebx
     dbb:	08 6e 93             	or     %ch,-0x6d(%rsi)
     dbe:	08 77 60             	or     %dh,0x60(%rdi)
     dc1:	93                   	xchg   %eax,%ebx
     dc2:	08 6f 93             	or     %ch,-0x6d(%rdi)
     dc5:	08 77 68             	or     %dh,0x68(%rdi)
     dc8:	93                   	xchg   %eax,%ebx
     dc9:	08 6a 93             	or     %ch,-0x6d(%rdx)
     dcc:	08 62 93             	or     %ah,-0x6d(%rdx)
     dcf:	08 67 93             	or     %ah,-0x6d(%rdi)
     dd2:	08 66 93             	or     %ah,-0x6d(%rsi)
     dd5:	08 65 93             	or     %ah,-0x6d(%rbp)
     dd8:	08 61 93             	or     %ah,-0x6d(%rcx)
     ddb:	08 6e 05             	or     %ch,0x5(%rsi)
     dde:	00 00                	add    %al,(%rax)
     de0:	00 00                	add    %al,(%rax)
     de2:	00 00                	add    %al,(%rax)
     de4:	74 05                	je     deb <__abi_tag+0xb27>
     de6:	00 00                	add    %al,(%rax)
     de8:	00 00                	add    %al,(%rax)
     dea:	00 00                	add    %al,(%rax)
     dec:	36 00 68 93          	add    %ch,%ss:-0x6d(%rax)
     df0:	08 77 78             	or     %dh,0x78(%rdi)
     df3:	93                   	xchg   %eax,%ebx
     df4:	08 77 70             	or     %dh,0x70(%rdi)
     df7:	93                   	xchg   %eax,%ebx
     df8:	08 6d 93             	or     %ch,-0x6d(%rbp)
     dfb:	08 90 20 93 08 77    	or     %dl,0x77089320(%rax)
     e01:	58                   	pop    %rax
     e02:	93                   	xchg   %eax,%ebx
     e03:	08 6e 93             	or     %ch,-0x6d(%rsi)
     e06:	08 77 60             	or     %dh,0x60(%rdi)
     e09:	93                   	xchg   %eax,%ebx
     e0a:	08 6f 93             	or     %ch,-0x6d(%rdi)
     e0d:	08 77 68             	or     %dh,0x68(%rdi)
     e10:	93                   	xchg   %eax,%ebx
     e11:	08 6a 93             	or     %ch,-0x6d(%rdx)
     e14:	08 62 93             	or     %ah,-0x6d(%rdx)
     e17:	08 67 93             	or     %ah,-0x6d(%rdi)
     e1a:	08 66 93             	or     %ah,-0x6d(%rsi)
     e1d:	08 65 93             	or     %ah,-0x6d(%rbp)
     e20:	08 61 93             	or     %ah,-0x6d(%rcx)
     e23:	08 74 05 00          	or     %dh,0x0(%rbp,%rax,1)
     e27:	00 00                	add    %al,(%rax)
     e29:	00 00                	add    %al,(%rax)
     e2b:	00 7b 05             	add    %bh,0x5(%rbx)
     e2e:	00 00                	add    %al,(%rax)
     e30:	00 00                	add    %al,(%rax)
     e32:	00 00                	add    %al,(%rax)
     e34:	35 00 68 93 08       	xor    $0x8936800,%eax
     e39:	77 78                	ja     eb3 <__abi_tag+0xbef>
     e3b:	93                   	xchg   %eax,%ebx
     e3c:	08 77 70             	or     %dh,0x70(%rdi)
     e3f:	93                   	xchg   %eax,%ebx
     e40:	08 6d 93             	or     %ch,-0x6d(%rbp)
     e43:	08 90 20 93 08 63    	or     %dl,0x63089320(%rax)
     e49:	93                   	xchg   %eax,%ebx
     e4a:	08 6e 93             	or     %ch,-0x6d(%rsi)
     e4d:	08 77 60             	or     %dh,0x60(%rdi)
     e50:	93                   	xchg   %eax,%ebx
     e51:	08 6f 93             	or     %ch,-0x6d(%rdi)
     e54:	08 77 68             	or     %dh,0x68(%rdi)
     e57:	93                   	xchg   %eax,%ebx
     e58:	08 6a 93             	or     %ch,-0x6d(%rdx)
     e5b:	08 62 93             	or     %ah,-0x6d(%rdx)
     e5e:	08 67 93             	or     %ah,-0x6d(%rdi)
     e61:	08 66 93             	or     %ah,-0x6d(%rsi)
     e64:	08 65 93             	or     %ah,-0x6d(%rbp)
     e67:	08 61 93             	or     %ah,-0x6d(%rcx)
     e6a:	08 7b 05             	or     %bh,0x5(%rbx)
     e6d:	00 00                	add    %al,(%rax)
     e6f:	00 00                	add    %al,(%rax)
     e71:	00 00                	add    %al,(%rax)
     e73:	81 05 00 00 00 00 00 	addl   $0x340000,0x0(%rip)        # e7d <__abi_tag+0xbb9>
     e7a:	00 34 00 
     e7d:	68 93 08 77 78       	pushq  $0x78770893
     e82:	93                   	xchg   %eax,%ebx
     e83:	08 77 70             	or     %dh,0x70(%rdi)
     e86:	93                   	xchg   %eax,%ebx
     e87:	08 6d 93             	or     %ch,-0x6d(%rbp)
     e8a:	08 90 20 93 08 63    	or     %dl,0x63089320(%rax)
     e90:	93                   	xchg   %eax,%ebx
     e91:	08 6e 93             	or     %ch,-0x6d(%rsi)
     e94:	08 6b 93             	or     %ch,-0x6d(%rbx)
     e97:	08 6f 93             	or     %ch,-0x6d(%rdi)
     e9a:	08 77 68             	or     %dh,0x68(%rdi)
     e9d:	93                   	xchg   %eax,%ebx
     e9e:	08 6a 93             	or     %ch,-0x6d(%rdx)
     ea1:	08 62 93             	or     %ah,-0x6d(%rdx)
     ea4:	08 67 93             	or     %ah,-0x6d(%rdi)
     ea7:	08 66 93             	or     %ah,-0x6d(%rsi)
     eaa:	08 65 93             	or     %ah,-0x6d(%rbp)
     ead:	08 61 93             	or     %ah,-0x6d(%rcx)
     eb0:	08 81 05 00 00 00    	or     %al,0x5(%rcx)
     eb6:	00 00                	add    %al,(%rax)
     eb8:	00 9f 05 00 00 00    	add    %bl,0x5(%rdi)
     ebe:	00 00                	add    %al,(%rax)
     ec0:	00 33                	add    %dh,(%rbx)
     ec2:	00 68 93             	add    %ch,-0x6d(%rax)
     ec5:	08 77 78             	or     %dh,0x78(%rdi)
     ec8:	93                   	xchg   %eax,%ebx
     ec9:	08 77 70             	or     %dh,0x70(%rdi)
     ecc:	93                   	xchg   %eax,%ebx
     ecd:	08 6d 93             	or     %ch,-0x6d(%rbp)
     ed0:	08 90 20 93 08 63    	or     %dl,0x63089320(%rax)
     ed6:	93                   	xchg   %eax,%ebx
     ed7:	08 6e 93             	or     %ch,-0x6d(%rsi)
     eda:	08 6b 93             	or     %ch,-0x6d(%rbx)
     edd:	08 6f 93             	or     %ch,-0x6d(%rdi)
     ee0:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     ee4:	6a 93                	pushq  $0xffffffffffffff93
     ee6:	08 62 93             	or     %ah,-0x6d(%rdx)
     ee9:	08 67 93             	or     %ah,-0x6d(%rdi)
     eec:	08 66 93             	or     %ah,-0x6d(%rsi)
     eef:	08 65 93             	or     %ah,-0x6d(%rbp)
     ef2:	08 61 93             	or     %ah,-0x6d(%rcx)
     ef5:	08 9f 05 00 00 00    	or     %bl,0x5(%rdi)
     efb:	00 00                	add    %al,(%rax)
     efd:	00 a6 05 00 00 00    	add    %ah,0x5(%rsi)
     f03:	00 00                	add    %al,(%rax)
     f05:	00 32                	add    %dh,(%rdx)
     f07:	00 68 93             	add    %ch,-0x6d(%rax)
     f0a:	08 77 78             	or     %dh,0x78(%rdi)
     f0d:	93                   	xchg   %eax,%ebx
     f0e:	08 77 70             	or     %dh,0x70(%rdi)
     f11:	93                   	xchg   %eax,%ebx
     f12:	08 6d 93             	or     %ch,-0x6d(%rbp)
     f15:	08 90 20 93 08 63    	or     %dl,0x63089320(%rax)
     f1b:	93                   	xchg   %eax,%ebx
     f1c:	08 6e 93             	or     %ch,-0x6d(%rsi)
     f1f:	08 6b 93             	or     %ch,-0x6d(%rbx)
     f22:	08 93 08 64 93 08    	or     %dl,0x8936408(%rbx)
     f28:	6a 93                	pushq  $0xffffffffffffff93
     f2a:	08 62 93             	or     %ah,-0x6d(%rdx)
     f2d:	08 67 93             	or     %ah,-0x6d(%rdi)
     f30:	08 66 93             	or     %ah,-0x6d(%rsi)
     f33:	08 65 93             	or     %ah,-0x6d(%rbp)
     f36:	08 61 93             	or     %ah,-0x6d(%rcx)
     f39:	08 a6 05 00 00 00    	or     %ah,0x5(%rsi)
     f3f:	00 00                	add    %al,(%rax)
     f41:	00 c9                	add    %cl,%cl
     f43:	05 00 00 00 00       	add    $0x0,%eax
     f48:	00 00                	add    %al,(%rax)
     f4a:	2e 00 68 93          	add    %ch,%cs:-0x6d(%rax)
     f4e:	08 77 78             	or     %dh,0x78(%rdi)
     f51:	93                   	xchg   %eax,%ebx
     f52:	08 77 70             	or     %dh,0x70(%rdi)
     f55:	93                   	xchg   %eax,%ebx
     f56:	08 6d 93             	or     %ch,-0x6d(%rbp)
     f59:	08 90 20 93 08 93    	or     %dl,-0x6cf76ce0(%rax)
     f5f:	10 6b 93             	adc    %ch,-0x6d(%rbx)
     f62:	08 93 08 64 93 08    	or     %dl,0x8936408(%rbx)
     f68:	6a 93                	pushq  $0xffffffffffffff93
     f6a:	08 62 93             	or     %ah,-0x6d(%rdx)
     f6d:	08 67 93             	or     %ah,-0x6d(%rdi)
     f70:	08 66 93             	or     %ah,-0x6d(%rsi)
     f73:	08 65 93             	or     %ah,-0x6d(%rbp)
     f76:	08 61 93             	or     %ah,-0x6d(%rcx)
     f79:	08 c9                	or     %cl,%cl
     f7b:	05 00 00 00 00       	add    $0x0,%eax
     f80:	00 00                	add    %al,(%rax)
     f82:	d8 05 00 00 00 00    	fadds  0x0(%rip)        # f88 <__abi_tag+0xcc4>
     f88:	00 00                	add    %al,(%rax)
     f8a:	33 00                	xor    (%rax),%eax
     f8c:	68 93 08 77 78       	pushq  $0x78770893
     f91:	93                   	xchg   %eax,%ebx
     f92:	08 77 70             	or     %dh,0x70(%rdi)
     f95:	93                   	xchg   %eax,%ebx
     f96:	08 6d 93             	or     %ch,-0x6d(%rbp)
     f99:	08 90 20 93 08 63    	or     %dl,0x63089320(%rax)
     f9f:	93                   	xchg   %eax,%ebx
     fa0:	08 6e 93             	or     %ch,-0x6d(%rsi)
     fa3:	08 6b 93             	or     %ch,-0x6d(%rbx)
     fa6:	08 6f 93             	or     %ch,-0x6d(%rdi)
     fa9:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
     fad:	6a 93                	pushq  $0xffffffffffffff93
     faf:	08 62 93             	or     %ah,-0x6d(%rdx)
     fb2:	08 67 93             	or     %ah,-0x6d(%rdi)
     fb5:	08 66 93             	or     %ah,-0x6d(%rsi)
     fb8:	08 65 93             	or     %ah,-0x6d(%rbp)
     fbb:	08 61 93             	or     %ah,-0x6d(%rcx)
     fbe:	08 d8                	or     %bl,%al
     fc0:	05 00 00 00 00       	add    $0x0,%eax
     fc5:	00 00                	add    %al,(%rax)
     fc7:	df 05 00 00 00 00    	filds  0x0(%rip)        # fcd <__abi_tag+0xd09>
     fcd:	00 00                	add    %al,(%rax)
     fcf:	32 00                	xor    (%rax),%al
     fd1:	68 93 08 77 78       	pushq  $0x78770893
     fd6:	93                   	xchg   %eax,%ebx
     fd7:	08 77 70             	or     %dh,0x70(%rdi)
     fda:	93                   	xchg   %eax,%ebx
     fdb:	08 6d 93             	or     %ch,-0x6d(%rbp)
     fde:	08 90 20 93 08 63    	or     %dl,0x63089320(%rax)
     fe4:	93                   	xchg   %eax,%ebx
     fe5:	08 6e 93             	or     %ch,-0x6d(%rsi)
     fe8:	08 6b 93             	or     %ch,-0x6d(%rbx)
     feb:	08 93 08 64 93 08    	or     %dl,0x8936408(%rbx)
     ff1:	6a 93                	pushq  $0xffffffffffffff93
     ff3:	08 62 93             	or     %ah,-0x6d(%rdx)
     ff6:	08 67 93             	or     %ah,-0x6d(%rdi)
     ff9:	08 66 93             	or     %ah,-0x6d(%rsi)
     ffc:	08 65 93             	or     %ah,-0x6d(%rbp)
     fff:	08 61 93             	or     %ah,-0x6d(%rcx)
    1002:	08 df                	or     %bl,%bh
    1004:	05 00 00 00 00       	add    $0x0,%eax
    1009:	00 00                	add    %al,(%rax)
    100b:	f3 05 00 00 00 00    	repz add $0x0,%eax
    1011:	00 00                	add    %al,(%rax)
    1013:	2e 00 68 93          	add    %ch,%cs:-0x6d(%rax)
    1017:	08 77 78             	or     %dh,0x78(%rdi)
    101a:	93                   	xchg   %eax,%ebx
    101b:	08 77 70             	or     %dh,0x70(%rdi)
    101e:	93                   	xchg   %eax,%ebx
    101f:	08 6d 93             	or     %ch,-0x6d(%rbp)
    1022:	08 90 20 93 08 93    	or     %dl,-0x6cf76ce0(%rax)
    1028:	10 6b 93             	adc    %ch,-0x6d(%rbx)
    102b:	08 93 08 64 93 08    	or     %dl,0x8936408(%rbx)
    1031:	6a 93                	pushq  $0xffffffffffffff93
    1033:	08 62 93             	or     %ah,-0x6d(%rdx)
    1036:	08 67 93             	or     %ah,-0x6d(%rdi)
    1039:	08 66 93             	or     %ah,-0x6d(%rsi)
    103c:	08 65 93             	or     %ah,-0x6d(%rbp)
    103f:	08 61 93             	or     %ah,-0x6d(%rcx)
    1042:	08 f3                	or     %dh,%bl
    1044:	05 00 00 00 00       	add    $0x0,%eax
    1049:	00 00                	add    %al,(%rax)
    104b:	f8                   	clc    
    104c:	05 00 00 00 00       	add    $0x0,%eax
    1051:	00 00                	add    %al,(%rax)
    1053:	2d 00 68 93 08       	sub    $0x8936800,%eax
    1058:	77 78                	ja     10d2 <deregister_tm_clones+0x22>
    105a:	93                   	xchg   %eax,%ebx
    105b:	08 77 70             	or     %dh,0x70(%rdi)
    105e:	93                   	xchg   %eax,%ebx
    105f:	08 93 08 90 20 93    	or     %dl,-0x6cdf6ff8(%rbx)
    1065:	08 93 10 6b 93 08    	or     %dl,0x8936b10(%rbx)
    106b:	93                   	xchg   %eax,%ebx
    106c:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
    1070:	6a 93                	pushq  $0xffffffffffffff93
    1072:	08 62 93             	or     %ah,-0x6d(%rdx)
    1075:	08 67 93             	or     %ah,-0x6d(%rdi)
    1078:	08 66 93             	or     %ah,-0x6d(%rsi)
    107b:	08 65 93             	or     %ah,-0x6d(%rbp)
    107e:	08 61 93             	or     %ah,-0x6d(%rcx)
    1081:	08 f8                	or     %bh,%al
    1083:	05 00 00 00 00       	add    $0x0,%eax
    1088:	00 00                	add    %al,(%rax)
    108a:	07                   	(bad)  
    108b:	06                   	(bad)  
    108c:	00 00                	add    %al,(%rax)
    108e:	00 00                	add    %al,(%rax)
    1090:	00 00                	add    %al,(%rax)
    1092:	27                   	(bad)  
    1093:	00 68 93             	add    %ch,-0x6d(%rax)
    1096:	08 77 78             	or     %dh,0x78(%rdi)
    1099:	93                   	xchg   %eax,%ebx
    109a:	08 77 70             	or     %dh,0x70(%rdi)
    109d:	93                   	xchg   %eax,%ebx
    109e:	08 93 20 6b 93 08    	or     %dl,0x8936b20(%rbx)
    10a4:	93                   	xchg   %eax,%ebx
    10a5:	08 64 93 08          	or     %ah,0x8(%rbx,%rdx,4)
    10a9:	6a 93                	pushq  $0xffffffffffffff93
    10ab:	08 62 93             	or     %ah,-0x6d(%rdx)
    10ae:	08 67 93             	or     %ah,-0x6d(%rdi)
    10b1:	08 66 93             	or     %ah,-0x6d(%rsi)
    10b4:	08 65 93             	or     %ah,-0x6d(%rbp)
    10b7:	08 61 93             	or     %ah,-0x6d(%rcx)
    10ba:	08 07                	or     %al,(%rdi)
    10bc:	06                   	(bad)  
    10bd:	00 00                	add    %al,(%rax)
    10bf:	00 00                	add    %al,(%rax)
    10c1:	00 00                	add    %al,(%rax)
    10c3:	11 06                	adc    %eax,(%rsi)
    10c5:	00 00                	add    %al,(%rax)
    10c7:	00 00                	add    %al,(%rax)
    10c9:	00 00                	add    %al,(%rax)
    10cb:	22 00                	and    (%rax),%al
    10cd:	68 93 08 77 78       	pushq  $0x78770893
    10d2:	93                   	xchg   %eax,%ebx
    10d3:	08 77 70             	or     %dh,0x70(%rdi)
    10d6:	93                   	xchg   %eax,%ebx
    10d7:	08 93 30 64 93 08    	or     %dl,0x8936430(%rbx)
    10dd:	6a 93                	pushq  $0xffffffffffffff93
    10df:	08 62 93             	or     %ah,-0x6d(%rdx)
    10e2:	08 67 93             	or     %ah,-0x6d(%rdi)
    10e5:	08 66 93             	or     %ah,-0x6d(%rsi)
    10e8:	08 65 93             	or     %ah,-0x6d(%rbp)
    10eb:	08 61 93             	or     %ah,-0x6d(%rcx)
    10ee:	08 11                	or     %dl,(%rcx)
    10f0:	06                   	(bad)  
    10f1:	00 00                	add    %al,(%rax)
    10f3:	00 00                	add    %al,(%rax)
    10f5:	00 00                	add    %al,(%rax)
    10f7:	16                   	(bad)  
    10f8:	06                   	(bad)  
    10f9:	00 00                	add    %al,(%rax)
    10fb:	00 00                	add    %al,(%rax)
    10fd:	00 00                	add    %al,(%rax)
    10ff:	1f                   	(bad)  
    1100:	00 68 93             	add    %ch,-0x6d(%rax)
    1103:	08 77 78             	or     %dh,0x78(%rdi)
    1106:	93                   	xchg   %eax,%ebx
    1107:	08 77 70             	or     %dh,0x70(%rdi)
    110a:	93                   	xchg   %eax,%ebx
    110b:	08 93 38 6a 93 08    	or     %dl,0x8936a38(%rbx)
    1111:	62 93                	(bad)  
    1113:	08 67 93             	or     %ah,-0x6d(%rdi)
    1116:	08 66 93             	or     %ah,-0x6d(%rsi)
    1119:	08 65 93             	or     %ah,-0x6d(%rbp)
    111c:	08 61 93             	or     %ah,-0x6d(%rcx)
    111f:	08 16                	or     %dl,(%rsi)
    1121:	06                   	(bad)  
    1122:	00 00                	add    %al,(%rax)
    1124:	00 00                	add    %al,(%rax)
    1126:	00 00                	add    %al,(%rax)
    1128:	1b 06                	sbb    (%rsi),%eax
    112a:	00 00                	add    %al,(%rax)
    112c:	00 00                	add    %al,(%rax)
    112e:	00 00                	add    %al,(%rax)
    1130:	1c 00                	sbb    $0x0,%al
    1132:	68 93 08 77 78       	pushq  $0x78770893
    1137:	93                   	xchg   %eax,%ebx
    1138:	08 77 70             	or     %dh,0x70(%rdi)
    113b:	93                   	xchg   %eax,%ebx
    113c:	08 93 40 62 93 08    	or     %dl,0x8936240(%rbx)
    1142:	67 93                	addr32 xchg %eax,%ebx
    1144:	08 66 93             	or     %ah,-0x6d(%rsi)
    1147:	08 65 93             	or     %ah,-0x6d(%rbp)
    114a:	08 61 93             	or     %ah,-0x6d(%rcx)
    114d:	08 1b                	or     %bl,(%rbx)
    114f:	06                   	(bad)  
    1150:	00 00                	add    %al,(%rax)
    1152:	00 00                	add    %al,(%rax)
    1154:	00 00                	add    %al,(%rax)
    1156:	1f                   	(bad)  
    1157:	06                   	(bad)  
    1158:	00 00                	add    %al,(%rax)
    115a:	00 00                	add    %al,(%rax)
    115c:	00 00                	add    %al,(%rax)
    115e:	19 00                	sbb    %eax,(%rax)
    1160:	68 93 08 77 78       	pushq  $0x78770893
    1165:	93                   	xchg   %eax,%ebx
    1166:	08 77 70             	or     %dh,0x70(%rdi)
    1169:	93                   	xchg   %eax,%ebx
    116a:	08 93 48 67 93 08    	or     %dl,0x8936748(%rbx)
    1170:	66 93                	xchg   %ax,%bx
    1172:	08 65 93             	or     %ah,-0x6d(%rbp)
    1175:	08 61 93             	or     %ah,-0x6d(%rcx)
    1178:	08 1f                	or     %bl,(%rdi)
    117a:	06                   	(bad)  
    117b:	00 00                	add    %al,(%rax)
    117d:	00 00                	add    %al,(%rax)
    117f:	00 00                	add    %al,(%rax)
    1181:	23 06                	and    (%rsi),%eax
    1183:	00 00                	add    %al,(%rax)
    1185:	00 00                	add    %al,(%rax)
    1187:	00 00                	add    %al,(%rax)
    1189:	16                   	(bad)  
    118a:	00 68 93             	add    %ch,-0x6d(%rax)
    118d:	08 77 78             	or     %dh,0x78(%rdi)
    1190:	93                   	xchg   %eax,%ebx
    1191:	08 77 70             	or     %dh,0x70(%rdi)
    1194:	93                   	xchg   %eax,%ebx
    1195:	08 93 50 66 93 08    	or     %dl,0x8936650(%rbx)
    119b:	65 93                	gs xchg %eax,%ebx
    119d:	08 61 93             	or     %ah,-0x6d(%rcx)
    11a0:	08 23                	or     %ah,(%rbx)
    11a2:	06                   	(bad)  
    11a3:	00 00                	add    %al,(%rax)
    11a5:	00 00                	add    %al,(%rax)
    11a7:	00 00                	add    %al,(%rax)
    11a9:	27                   	(bad)  
    11aa:	06                   	(bad)  
    11ab:	00 00                	add    %al,(%rax)
    11ad:	00 00                	add    %al,(%rax)
    11af:	00 00                	add    %al,(%rax)
    11b1:	13 00                	adc    (%rax),%eax
    11b3:	68 93 08 77 78       	pushq  $0x78770893
    11b8:	93                   	xchg   %eax,%ebx
    11b9:	08 77 70             	or     %dh,0x70(%rdi)
    11bc:	93                   	xchg   %eax,%ebx
    11bd:	08 93 58 65 93 08    	or     %dl,0x8936558(%rbx)
    11c3:	61                   	(bad)  
    11c4:	93                   	xchg   %eax,%ebx
    11c5:	08 27                	or     %ah,(%rdi)
    11c7:	06                   	(bad)  
    11c8:	00 00                	add    %al,(%rax)
    11ca:	00 00                	add    %al,(%rax)
    11cc:	00 00                	add    %al,(%rax)
    11ce:	2b 06                	sub    (%rsi),%eax
    11d0:	00 00                	add    %al,(%rax)
    11d2:	00 00                	add    %al,(%rax)
    11d4:	00 00                	add    %al,(%rax)
    11d6:	10 00                	adc    %al,(%rax)
    11d8:	68 93 08 77 78       	pushq  $0x78770893
    11dd:	93                   	xchg   %eax,%ebx
    11de:	08 77 70             	or     %dh,0x70(%rdi)
    11e1:	93                   	xchg   %eax,%ebx
    11e2:	08 93 60 61 93 08    	or     %dl,0x8936160(%rbx)
    11e8:	2b 06                	sub    (%rsi),%eax
    11ea:	00 00                	add    %al,(%rax)
    11ec:	00 00                	add    %al,(%rax)
    11ee:	00 00                	add    %al,(%rax)
    11f0:	2c 06                	sub    $0x6,%al
    11f2:	00 00                	add    %al,(%rax)
    11f4:	00 00                	add    %al,(%rax)
    11f6:	00 00                	add    %al,(%rax)
    11f8:	0b 00                	or     (%rax),%eax
    11fa:	68 93 08 77 78       	pushq  $0x78770893
    11ff:	93                   	xchg   %eax,%ebx
    1200:	08 77 70             	or     %dh,0x70(%rdi)
    1203:	93                   	xchg   %eax,%ebx
    1204:	08 00                	or     %al,(%rax)
	...
    1212:	00 00                	add    %al,(%rax)
    1214:	00 20                	add    %ah,(%rax)
    1216:	03 00                	add    (%rax),%eax
    1218:	00 00                	add    %al,(%rax)
    121a:	00 00                	add    %al,(%rax)
    121c:	00 84 03 00 00 00 00 	add    %al,0x0(%rbx,%rax,1)
    1223:	00 00                	add    %al,(%rax)
    1225:	02 00                	add    (%rax),%al
    1227:	30 9f 84 03 00 00    	xor    %bl,0x384(%rdi)
    122d:	00 00                	add    %al,(%rax)
    122f:	00 00                	add    %al,(%rax)
    1231:	02 05 00 00 00 00    	add    0x0(%rip),%al        # 1237 <dotprod_2x+0x57>
    1237:	00 00                	add    %al,(%rax)
    1239:	01 00                	add    %eax,(%rax)
    123b:	50                   	push   %rax
    123c:	02 05 00 00 00 00    	add    0x0(%rip),%al        # 1242 <dotprod_2x+0x62>
    1242:	00 00                	add    %al,(%rax)
    1244:	5b                   	pop    %rbx
    1245:	05 00 00 00 00       	add    $0x0,%eax
    124a:	00 00                	add    %al,(%rax)
    124c:	02 00                	add    (%rax),%al
    124e:	30 9f 00 00 00 00    	xor    %bl,0x0(%rdi)
	...
    1260:	84 05 00 00 00 00    	test   %al,0x0(%rip)        # 1266 <dotprod_2x+0x86>
    1266:	00 00                	add    %al,(%rax)
    1268:	86 05 00 00 00 00    	xchg   %al,0x0(%rip)        # 126e <dotprod_2x+0x8e>
    126e:	00 00                	add    %al,(%rax)
    1270:	03 00                	add    (%rax),%eax
    1272:	71 71                	jno    12e5 <dotprod_4x+0x45>
    1274:	9f                   	lahf   
    1275:	95                   	xchg   %eax,%ebp
    1276:	05 00 00 00 00       	add    $0x0,%eax
    127b:	00 00                	add    %al,(%rax)
    127d:	c9                   	leaveq 
    127e:	05 00 00 00 00       	add    $0x0,%eax
    1283:	00 00                	add    %al,(%rax)
    1285:	01 00                	add    %eax,(%rax)
    1287:	50                   	push   %rax
    1288:	c9                   	leaveq 
    1289:	05 00 00 00 00       	add    $0x0,%eax
    128e:	00 00                	add    %al,(%rax)
    1290:	ce                   	(bad)  
    1291:	05 00 00 00 00       	add    $0x0,%eax
    1296:	00 00                	add    %al,(%rax)
    1298:	03 00                	add    (%rax),%eax
    129a:	71 71                	jno    130d <dotprod_4x+0x6d>
    129c:	9f                   	lahf   
	...
    12ad:	84 05 00 00 00 00    	test   %al,0x0(%rip)        # 12b3 <dotprod_4x+0x13>
    12b3:	00 00                	add    %al,(%rax)
    12b5:	86 05 00 00 00 00    	xchg   %al,0x0(%rip)        # 12bb <dotprod_4x+0x1b>
    12bb:	00 00                	add    %al,(%rax)
    12bd:	03 00                	add    (%rax),%eax
    12bf:	71 70                	jno    1331 <dotprod_4x+0x91>
    12c1:	9f                   	lahf   
    12c2:	c9                   	leaveq 
    12c3:	05 00 00 00 00       	add    $0x0,%eax
    12c8:	00 00                	add    %al,(%rax)
    12ca:	ce                   	(bad)  
    12cb:	05 00 00 00 00       	add    $0x0,%eax
    12d0:	00 00                	add    %al,(%rax)
    12d2:	03 00                	add    (%rax),%eax
    12d4:	71 70                	jno    1346 <dotprod_4x+0xa6>
    12d6:	9f                   	lahf   
	...
    12e7:	30 06                	xor    %al,(%rsi)
    12e9:	00 00                	add    %al,(%rax)
    12eb:	00 00                	add    %al,(%rax)
    12ed:	00 00                	add    %al,(%rax)
    12ef:	43 06                	rex.XB (bad) 
    12f1:	00 00                	add    %al,(%rax)
    12f3:	00 00                	add    %al,(%rax)
    12f5:	00 00                	add    %al,(%rax)
    12f7:	01 00                	add    %eax,(%rax)
    12f9:	55                   	push   %rbp
    12fa:	43 06                	rex.XB (bad) 
    12fc:	00 00                	add    %al,(%rax)
    12fe:	00 00                	add    %al,(%rax)
    1300:	00 00                	add    %al,(%rax)
    1302:	75 08                	jne    130c <dotprod_4x+0x6c>
    1304:	00 00                	add    %al,(%rax)
    1306:	00 00                	add    %al,(%rax)
    1308:	00 00                	add    %al,(%rax)
    130a:	04 00                	add    $0x0,%al
    130c:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
    1320:	30 06                	xor    %al,(%rsi)
    1322:	00 00                	add    %al,(%rax)
    1324:	00 00                	add    %al,(%rax)
    1326:	00 00                	add    %al,(%rax)
    1328:	43 06                	rex.XB (bad) 
    132a:	00 00                	add    %al,(%rax)
    132c:	00 00                	add    %al,(%rax)
    132e:	00 00                	add    %al,(%rax)
    1330:	01 00                	add    %eax,(%rax)
    1332:	54                   	push   %rsp
    1333:	43 06                	rex.XB (bad) 
    1335:	00 00                	add    %al,(%rax)
    1337:	00 00                	add    %al,(%rax)
    1339:	00 00                	add    %al,(%rax)
    133b:	75 08                	jne    1345 <dotprod_4x+0xa5>
    133d:	00 00                	add    %al,(%rax)
    133f:	00 00                	add    %al,(%rax)
    1341:	00 00                	add    %al,(%rax)
    1343:	04 00                	add    $0x0,%al
    1345:	f3 01 54 9f 00       	repz add %edx,0x0(%rdi,%rbx,4)
	...
    1356:	00 00                	add    %al,(%rax)
    1358:	00 46 06             	add    %al,0x6(%rsi)
    135b:	00 00                	add    %al,(%rax)
    135d:	00 00                	add    %al,(%rax)
    135f:	00 00                	add    %al,(%rax)
    1361:	58                   	pop    %rax
    1362:	07                   	(bad)  
    1363:	00 00                	add    %al,(%rax)
    1365:	00 00                	add    %al,(%rax)
    1367:	00 00                	add    %al,(%rax)
    1369:	01 00                	add    %eax,(%rax)
    136b:	53                   	push   %rbx
    136c:	58                   	pop    %rax
    136d:	07                   	(bad)  
    136e:	00 00                	add    %al,(%rax)
    1370:	00 00                	add    %al,(%rax)
    1372:	00 00                	add    %al,(%rax)
    1374:	75 08                	jne    137e <dotprod_8x+0x1e>
    1376:	00 00                	add    %al,(%rax)
    1378:	00 00                	add    %al,(%rax)
    137a:	00 00                	add    %al,(%rax)
    137c:	02 00                	add    (%rax),%al
    137e:	35 9f 00 00 00       	xor    $0x9f,%eax
	...
    138f:	00 5e 06             	add    %bl,0x6(%rsi)
    1392:	00 00                	add    %al,(%rax)
    1394:	00 00                	add    %al,(%rax)
    1396:	00 00                	add    %al,(%rax)
    1398:	6d                   	insl   (%dx),%es:(%rdi)
    1399:	08 00                	or     %al,(%rax)
    139b:	00 00                	add    %al,(%rax)
    139d:	00 00                	add    %al,(%rax)
    139f:	00 01                	add    %al,(%rcx)
    13a1:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
	...
    13b1:	00 00                	add    %al,(%rax)
    13b3:	6e                   	outsb  %ds:(%rsi),(%dx)
    13b4:	06                   	(bad)  
    13b5:	00 00                	add    %al,(%rax)
    13b7:	00 00                	add    %al,(%rax)
    13b9:	00 00                	add    %al,(%rax)
    13bb:	71 08                	jno    13c5 <dotprod_8x+0x65>
    13bd:	00 00                	add    %al,(%rax)
    13bf:	00 00                	add    %al,(%rax)
    13c1:	00 00                	add    %al,(%rax)
    13c3:	01 00                	add    %eax,(%rax)
    13c5:	5e                   	pop    %rsi
	...
    13d6:	90                   	nop
    13d7:	06                   	(bad)  
    13d8:	00 00                	add    %al,(%rax)
    13da:	00 00                	add    %al,(%rax)
    13dc:	00 00                	add    %al,(%rax)
    13de:	75 08                	jne    13e8 <dotprod_8x+0x88>
    13e0:	00 00                	add    %al,(%rax)
    13e2:	00 00                	add    %al,(%rax)
    13e4:	00 00                	add    %al,(%rax)
    13e6:	02 00                	add    (%rax),%al
    13e8:	77 20                	ja     140a <dotprod_8x+0xaa>
	...
    13fa:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    13fb:	06                   	(bad)  
    13fc:	00 00                	add    %al,(%rax)
    13fe:	00 00                	add    %al,(%rax)
    1400:	00 00                	add    %al,(%rax)
    1402:	75 08                	jne    140c <dotprod_8x+0xac>
    1404:	00 00                	add    %al,(%rax)
    1406:	00 00                	add    %al,(%rax)
    1408:	00 00                	add    %al,(%rax)
    140a:	02 00                	add    (%rax),%al
    140c:	77 18                	ja     1426 <dotprod_8x+0xc6>
	...
    141e:	b8 06 00 00 00       	mov    $0x6,%eax
    1423:	00 00                	add    %al,(%rax)
    1425:	00 75 08             	add    %dh,0x8(%rbp)
    1428:	00 00                	add    %al,(%rax)
    142a:	00 00                	add    %al,(%rax)
    142c:	00 00                	add    %al,(%rax)
    142e:	02 00                	add    (%rax),%al
    1430:	77 10                	ja     1442 <dotprod_8x+0xe2>
	...
    1442:	cc                   	int3   
    1443:	06                   	(bad)  
    1444:	00 00                	add    %al,(%rax)
    1446:	00 00                	add    %al,(%rax)
    1448:	00 00                	add    %al,(%rax)
    144a:	75 08                	jne    1454 <dotprod_8x+0xf4>
    144c:	00 00                	add    %al,(%rax)
    144e:	00 00                	add    %al,(%rax)
    1450:	00 00                	add    %al,(%rax)
    1452:	02 00                	add    (%rax),%al
    1454:	77 08                	ja     145e <dotprod_8x+0xfe>
	...
    1466:	df 06                	filds  (%rsi)
    1468:	00 00                	add    %al,(%rax)
    146a:	00 00                	add    %al,(%rax)
    146c:	00 00                	add    %al,(%rax)
    146e:	75 08                	jne    1478 <dotprod_8x+0x118>
    1470:	00 00                	add    %al,(%rax)
    1472:	00 00                	add    %al,(%rax)
    1474:	00 00                	add    %al,(%rax)
    1476:	02 00                	add    (%rax),%al
    1478:	77 00                	ja     147a <dotprod_8x+0x11a>
	...
    148a:	6a 07                	pushq  $0x7
    148c:	00 00                	add    %al,(%rax)
    148e:	00 00                	add    %al,(%rax)
    1490:	00 00                	add    %al,(%rax)
    1492:	74 08                	je     149c <dotprod_8x+0x13c>
    1494:	00 00                	add    %al,(%rax)
    1496:	00 00                	add    %al,(%rax)
    1498:	00 00                	add    %al,(%rax)
    149a:	01 00                	add    %eax,(%rax)
    149c:	56                   	push   %rsi
	...
    14ad:	7c 07                	jl     14b6 <dotprod_16x+0x16>
    14af:	00 00                	add    %al,(%rax)
    14b1:	00 00                	add    %al,(%rax)
    14b3:	00 00                	add    %al,(%rax)
    14b5:	6b 08 00             	imul   $0x0,(%rax),%ecx
    14b8:	00 00                	add    %al,(%rax)
    14ba:	00 00                	add    %al,(%rax)
    14bc:	00 01                	add    %al,(%rcx)
    14be:	00 53 00             	add    %dl,0x0(%rbx)
	...
    14cd:	00 00                	add    %al,(%rax)
    14cf:	00 80 08 00 00 00    	add    %al,0x8(%rax)
    14d5:	00 00                	add    %al,(%rax)
    14d7:	00 9b 08 00 00 00    	add    %bl,0x8(%rbx)
    14dd:	00 00                	add    %al,(%rax)
    14df:	00 02                	add    %al,(%rdx)
    14e1:	00 30                	add    %dh,(%rax)
    14e3:	9f                   	lahf   
    14e4:	9b                   	fwait
    14e5:	08 00                	or     %al,(%rax)
    14e7:	00 00                	add    %al,(%rax)
    14e9:	00 00                	add    %al,(%rax)
    14eb:	00 b1 08 00 00 00    	add    %dh,0x8(%rcx)
    14f1:	00 00                	add    %al,(%rax)
    14f3:	00 01                	add    %al,(%rcx)
    14f5:	00 50 00             	add    %dl,0x0(%rax)
	...

Déassemblage de la section .debug_ranges :

0000000000000000 <.debug_ranges>:
   0:	ac                   	lods   %ds:(%rsi),%al
   1:	00 00                	add    %al,(%rax)
   3:	00 00                	add    %al,(%rax)
   5:	00 00                	add    %al,(%rax)
   7:	00 e9                	add    %ch,%cl
   9:	00 00                	add    %al,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 fe                	add    %bh,%dh
  11:	00 00                	add    %al,(%rax)
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 0e                	add    %cl,(%rsi)
  19:	01 00                	add    %eax,(%rax)
	...
