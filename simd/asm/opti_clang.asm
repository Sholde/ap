
opti_clang:     format de fichier elf64-x86-64


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
 548:	d8 4d 00             	fmuls  0x0(%rbp)
 54b:	00 00                	add    %al,(%rax)
 54d:	00 00                	add    %al,(%rax)
 54f:	00 08                	add    %cl,(%rax)
 551:	00 00                	add    %al,(%rax)
 553:	00 00                	add    %al,(%rax)
 555:	00 00                	add    %al,(%rax)
 557:	00 70 11             	add    %dh,0x11(%rax)
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	e0 4d                	loopne 5af <__abi_tag+0x2eb>
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
 578:	48 50                	rex.W push %rax
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	08 00                	or     %al,(%rax)
 582:	00 00                	add    %al,(%rax)
 584:	00 00                	add    %al,(%rax)
 586:	00 00                	add    %al,(%rax)
 588:	48 50                	rex.W push %rax
 58a:	00 00                	add    %al,(%rax)
 58c:	00 00                	add    %al,(%rax)
 58e:	00 00                	add    %al,(%rax)
 590:	d8 4f 00             	fmuls  0x0(%rdi)
 593:	00 00                	add    %al,(%rax)
 595:	00 00                	add    %al,(%rax)
 597:	00 06                	add    %al,(%rsi)
 599:	00 00                	add    %al,(%rax)
 59b:	00 02                	add    %al,(%rdx)
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 e0                	add    %ah,%al
 5a9:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	06                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5be:	00 00                	add    %al,(%rax)
 5c0:	e8 4f 00 00 00       	callq  614 <__abi_tag+0x350>
 5c5:	00 00                	add    %al,(%rax)
 5c7:	00 06                	add    %al,(%rsi)
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 06                	add    %al,(%rsi)
	...
 5d5:	00 00                	add    %al,(%rax)
 5d7:	00 f0                	add    %dh,%al
 5d9:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 5dc:	00 00                	add    %al,(%rax)
 5de:	00 00                	add    %al,(%rax)
 5e0:	06                   	(bad)  
 5e1:	00 00                	add    %al,(%rax)
 5e3:	00 08                	add    %cl,(%rax)
	...
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 f8                	add    %bh,%al
 5f1:	4f 00 00             	rex.WRXB add %r8b,(%r8)
 5f4:	00 00                	add    %al,(%rax)
 5f6:	00 00                	add    %al,(%rax)
 5f8:	06                   	(bad)  
 5f9:	00 00                	add    %al,(%rax)
 5fb:	00 0a                	add    %cl,(%rdx)
	...

Déassemblage de la section .rela.plt :

0000000000000608 <.rela.plt>:
 608:	18 50 00             	sbb    %dl,0x0(%rax)
 60b:	00 00                	add    %al,(%rax)
 60d:	00 00                	add    %al,(%rax)
 60f:	00 07                	add    %al,(%rdi)
 611:	00 00                	add    %al,(%rax)
 613:	00 01                	add    %al,(%rcx)
	...
 61d:	00 00                	add    %al,(%rax)
 61f:	00 20                	add    %ah,(%rax)
 621:	50                   	push   %rax
 622:	00 00                	add    %al,(%rax)
 624:	00 00                	add    %al,(%rax)
 626:	00 00                	add    %al,(%rax)
 628:	07                   	(bad)  
 629:	00 00                	add    %al,(%rax)
 62b:	00 03                	add    %al,(%rbx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 28                	add    %ch,(%rax)
 639:	50                   	push   %rax
 63a:	00 00                	add    %al,(%rax)
 63c:	00 00                	add    %al,(%rax)
 63e:	00 00                	add    %al,(%rax)
 640:	07                   	(bad)  
 641:	00 00                	add    %al,(%rax)
 643:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 649 <__abi_tag+0x385>
 649:	00 00                	add    %al,(%rax)
 64b:	00 00                	add    %al,(%rax)
 64d:	00 00                	add    %al,(%rax)
 64f:	00 30                	add    %dh,(%rax)
 651:	50                   	push   %rax
 652:	00 00                	add    %al,(%rax)
 654:	00 00                	add    %al,(%rax)
 656:	00 00                	add    %al,(%rax)
 658:	07                   	(bad)  
 659:	00 00                	add    %al,(%rax)
 65b:	00 07                	add    %al,(%rdi)
	...
 665:	00 00                	add    %al,(%rax)
 667:	00 38                	add    %bh,(%rax)
 669:	50                   	push   %rax
 66a:	00 00                	add    %al,(%rax)
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

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	4c 8d 05 b6 15 00 00 	lea    0x15b6(%rip),%r8        # 2650 <__libc_csu_fini>
    109a:	48 8d 0d 3f 15 00 00 	lea    0x153f(%rip),%rcx        # 25e0 <__libc_csu_init>
    10a1:	48 8d 3d 38 06 00 00 	lea    0x638(%rip),%rdi        # 16e0 <main>
    10a8:	ff 15 32 3f 00 00    	callq  *0x3f32(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    10ae:	f4                   	hlt    
    10af:	90                   	nop

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 99 3f 00 00 	lea    0x3f99(%rip),%rdi        # 5050 <__TMC_END__>
    10b7:	48 8d 05 92 3f 00 00 	lea    0x3f92(%rip),%rax        # 5050 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 3f 00 00 	mov    0x3f0e(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmpq   *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	retq   
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 69 3f 00 00 	lea    0x3f69(%rip),%rdi        # 5050 <__TMC_END__>
    10e7:	48 8d 35 62 3f 00 00 	lea    0x3f62(%rip),%rsi        # 5050 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 3e 00 00 	mov    0x3ee5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmpq   *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d 25 3f 00 00 00 	cmpb   $0x0,0x3f25(%rip)        # 5050 <__TMC_END__>
    112b:	75 33                	jne    1160 <__do_global_dtors_aux+0x40>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 3e 00 00 	cmpq   $0x0,0x3ec2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0d                	je     1148 <__do_global_dtors_aux+0x28>
    113b:	48 8b 3d 06 3f 00 00 	mov    0x3f06(%rip),%rdi        # 5048 <__dso_handle>
    1142:	ff 15 b0 3e 00 00    	callq  *0x3eb0(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	callq  10b0 <deregister_tm_clones>
    114d:	c6 05 fc 3e 00 00 01 	movb   $0x1,0x3efc(%rip)        # 5050 <__TMC_END__>
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
    16ec:	0f 85 dd 0e 00 00    	jne    25cf <main+0xeef>
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
    1785:	66 0f 28 05 83 18 00 	movapd 0x1883(%rip),%xmm0        # 3010 <_IO_stdin_used+0x10>
    178c:	00 
    178d:	66 0f 28 0d 8b 18 00 	movapd 0x188b(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
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
    1820:	66 0f 28 05 e8 17 00 	movapd 0x17e8(%rip),%xmm0        # 3010 <_IO_stdin_used+0x10>
    1827:	00 
    1828:	66 0f 28 0d f0 17 00 	movapd 0x17f0(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
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
    1aa3:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
    1aa9:	4c 89 f7             	mov    %r14,%rdi
    1aac:	48 89 de             	mov    %rbx,%rsi
    1aaf:	4c 89 fa             	mov    %r15,%rdx
    1ab2:	e8 69 fa ff ff       	callq  1520 <dotprod_16x>
    1ab7:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    1abc:	48 8d 3d 6d 15 00 00 	lea    0x156d(%rip),%rdi        # 3030 <_IO_stdin_used+0x30>
    1ac3:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1ac9:	b0 01                	mov    $0x1,%al
    1acb:	e8 70 f5 ff ff       	callq  1040 <printf@plt>
    1ad0:	48 8d 3d 64 15 00 00 	lea    0x1564(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    1ad7:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1adc:	b0 01                	mov    $0x1,%al
    1ade:	e8 5d f5 ff ff       	callq  1040 <printf@plt>
    1ae3:	48 8d 3d 5f 15 00 00 	lea    0x155f(%rip),%rdi        # 3049 <_IO_stdin_used+0x49>
    1aea:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    1aef:	b0 01                	mov    $0x1,%al
    1af1:	e8 4a f5 ff ff       	callq  1040 <printf@plt>
    1af6:	48 8d 3d 5a 15 00 00 	lea    0x155a(%rip),%rdi        # 3057 <_IO_stdin_used+0x57>
    1afd:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    1b03:	b0 01                	mov    $0x1,%al
    1b05:	e8 36 f5 ff ff       	callq  1040 <printf@plt>
    1b0a:	48 8d 3d 54 15 00 00 	lea    0x1554(%rip),%rdi        # 3065 <_IO_stdin_used+0x65>
    1b11:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
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
    1b51:	66 0f 28 05 b7 14 00 	movapd 0x14b7(%rip),%xmm0        # 3010 <_IO_stdin_used+0x10>
    1b58:	00 
    1b59:	66 41 0f 29 06       	movapd %xmm0,(%r14)
    1b5e:	66 0f 28 0d ba 14 00 	movapd 0x14ba(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
    1b65:	00 
    1b66:	66 0f 29 08          	movapd %xmm1,(%rax)
    1b6a:	66 41 0f 29 46 10    	movapd %xmm0,0x10(%r14)
    1b70:	66 0f 29 48 10       	movapd %xmm1,0x10(%rax)
    1b75:	66 41 0f 29 46 20    	movapd %xmm0,0x20(%r14)
    1b7b:	66 0f 29 48 20       	movapd %xmm1,0x20(%rax)
    1b80:	66 41 0f 29 46 30    	movapd %xmm0,0x30(%r14)
    1b86:	66 0f 29 48 30       	movapd %xmm1,0x30(%rax)
    1b8b:	66 41 0f 29 46 40    	movapd %xmm0,0x40(%r14)
    1b91:	66 0f 29 48 40       	movapd %xmm1,0x40(%rax)
    1b96:	66 41 0f 29 46 50    	movapd %xmm0,0x50(%r14)
    1b9c:	66 0f 29 48 50       	movapd %xmm1,0x50(%rax)
    1ba1:	66 41 0f 29 46 60    	movapd %xmm0,0x60(%r14)
    1ba7:	66 0f 29 48 60       	movapd %xmm1,0x60(%rax)
    1bac:	66 41 0f 29 46 70    	movapd %xmm0,0x70(%r14)
    1bb2:	66 0f 29 48 70       	movapd %xmm1,0x70(%rax)
    1bb7:	66 41 0f 29 86 80 00 	movapd %xmm0,0x80(%r14)
    1bbe:	00 00 
    1bc0:	66 0f 29 88 80 00 00 	movapd %xmm1,0x80(%rax)
    1bc7:	00 
    1bc8:	66 41 0f 29 86 90 00 	movapd %xmm0,0x90(%r14)
    1bcf:	00 00 
    1bd1:	66 0f 29 88 90 00 00 	movapd %xmm1,0x90(%rax)
    1bd8:	00 
    1bd9:	66 41 0f 29 86 a0 00 	movapd %xmm0,0xa0(%r14)
    1be0:	00 00 
    1be2:	66 0f 29 88 a0 00 00 	movapd %xmm1,0xa0(%rax)
    1be9:	00 
    1bea:	66 41 0f 29 86 b0 00 	movapd %xmm0,0xb0(%r14)
    1bf1:	00 00 
    1bf3:	66 0f 29 88 b0 00 00 	movapd %xmm1,0xb0(%rax)
    1bfa:	00 
    1bfb:	66 41 0f 29 86 c0 00 	movapd %xmm0,0xc0(%r14)
    1c02:	00 00 
    1c04:	66 0f 29 88 c0 00 00 	movapd %xmm1,0xc0(%rax)
    1c0b:	00 
    1c0c:	66 41 0f 29 86 d0 00 	movapd %xmm0,0xd0(%r14)
    1c13:	00 00 
    1c15:	66 0f 29 88 d0 00 00 	movapd %xmm1,0xd0(%rax)
    1c1c:	00 
    1c1d:	66 41 0f 29 86 e0 00 	movapd %xmm0,0xe0(%r14)
    1c24:	00 00 
    1c26:	66 0f 29 88 e0 00 00 	movapd %xmm1,0xe0(%rax)
    1c2d:	00 
    1c2e:	66 41 0f 29 86 f0 00 	movapd %xmm0,0xf0(%r14)
    1c35:	00 00 
    1c37:	66 0f 29 88 f0 00 00 	movapd %xmm1,0xf0(%rax)
    1c3e:	00 
    1c3f:	66 41 0f 29 86 00 01 	movapd %xmm0,0x100(%r14)
    1c46:	00 00 
    1c48:	66 0f 29 88 00 01 00 	movapd %xmm1,0x100(%rax)
    1c4f:	00 
    1c50:	66 41 0f 29 86 10 01 	movapd %xmm0,0x110(%r14)
    1c57:	00 00 
    1c59:	66 0f 29 88 10 01 00 	movapd %xmm1,0x110(%rax)
    1c60:	00 
    1c61:	66 41 0f 29 86 20 01 	movapd %xmm0,0x120(%r14)
    1c68:	00 00 
    1c6a:	66 0f 29 88 20 01 00 	movapd %xmm1,0x120(%rax)
    1c71:	00 
    1c72:	66 41 0f 29 86 30 01 	movapd %xmm0,0x130(%r14)
    1c79:	00 00 
    1c7b:	66 0f 29 88 30 01 00 	movapd %xmm1,0x130(%rax)
    1c82:	00 
    1c83:	66 41 0f 29 86 40 01 	movapd %xmm0,0x140(%r14)
    1c8a:	00 00 
    1c8c:	66 0f 29 88 40 01 00 	movapd %xmm1,0x140(%rax)
    1c93:	00 
    1c94:	66 41 0f 29 86 50 01 	movapd %xmm0,0x150(%r14)
    1c9b:	00 00 
    1c9d:	66 0f 29 88 50 01 00 	movapd %xmm1,0x150(%rax)
    1ca4:	00 
    1ca5:	66 41 0f 29 86 60 01 	movapd %xmm0,0x160(%r14)
    1cac:	00 00 
    1cae:	66 0f 29 88 60 01 00 	movapd %xmm1,0x160(%rax)
    1cb5:	00 
    1cb6:	66 41 0f 29 86 70 01 	movapd %xmm0,0x170(%r14)
    1cbd:	00 00 
    1cbf:	66 0f 29 88 70 01 00 	movapd %xmm1,0x170(%rax)
    1cc6:	00 
    1cc7:	66 41 0f 29 86 80 01 	movapd %xmm0,0x180(%r14)
    1cce:	00 00 
    1cd0:	66 0f 29 88 80 01 00 	movapd %xmm1,0x180(%rax)
    1cd7:	00 
    1cd8:	66 41 0f 29 86 90 01 	movapd %xmm0,0x190(%r14)
    1cdf:	00 00 
    1ce1:	66 0f 29 88 90 01 00 	movapd %xmm1,0x190(%rax)
    1ce8:	00 
    1ce9:	66 41 0f 29 86 a0 01 	movapd %xmm0,0x1a0(%r14)
    1cf0:	00 00 
    1cf2:	66 0f 29 88 a0 01 00 	movapd %xmm1,0x1a0(%rax)
    1cf9:	00 
    1cfa:	66 41 0f 29 86 b0 01 	movapd %xmm0,0x1b0(%r14)
    1d01:	00 00 
    1d03:	66 0f 29 88 b0 01 00 	movapd %xmm1,0x1b0(%rax)
    1d0a:	00 
    1d0b:	66 41 0f 29 86 c0 01 	movapd %xmm0,0x1c0(%r14)
    1d12:	00 00 
    1d14:	66 0f 29 88 c0 01 00 	movapd %xmm1,0x1c0(%rax)
    1d1b:	00 
    1d1c:	66 41 0f 29 86 d0 01 	movapd %xmm0,0x1d0(%r14)
    1d23:	00 00 
    1d25:	66 0f 29 88 d0 01 00 	movapd %xmm1,0x1d0(%rax)
    1d2c:	00 
    1d2d:	66 41 0f 29 86 e0 01 	movapd %xmm0,0x1e0(%r14)
    1d34:	00 00 
    1d36:	66 0f 29 88 e0 01 00 	movapd %xmm1,0x1e0(%rax)
    1d3d:	00 
    1d3e:	66 41 0f 29 86 f0 01 	movapd %xmm0,0x1f0(%r14)
    1d45:	00 00 
    1d47:	66 0f 29 88 f0 01 00 	movapd %xmm1,0x1f0(%rax)
    1d4e:	00 
    1d4f:	66 41 0f 29 86 00 02 	movapd %xmm0,0x200(%r14)
    1d56:	00 00 
    1d58:	66 0f 29 88 00 02 00 	movapd %xmm1,0x200(%rax)
    1d5f:	00 
    1d60:	66 41 0f 29 86 10 02 	movapd %xmm0,0x210(%r14)
    1d67:	00 00 
    1d69:	66 0f 29 88 10 02 00 	movapd %xmm1,0x210(%rax)
    1d70:	00 
    1d71:	66 41 0f 29 86 20 02 	movapd %xmm0,0x220(%r14)
    1d78:	00 00 
    1d7a:	66 0f 29 88 20 02 00 	movapd %xmm1,0x220(%rax)
    1d81:	00 
    1d82:	66 41 0f 29 86 30 02 	movapd %xmm0,0x230(%r14)
    1d89:	00 00 
    1d8b:	66 0f 29 88 30 02 00 	movapd %xmm1,0x230(%rax)
    1d92:	00 
    1d93:	66 41 0f 29 86 40 02 	movapd %xmm0,0x240(%r14)
    1d9a:	00 00 
    1d9c:	66 0f 29 88 40 02 00 	movapd %xmm1,0x240(%rax)
    1da3:	00 
    1da4:	66 41 0f 29 86 50 02 	movapd %xmm0,0x250(%r14)
    1dab:	00 00 
    1dad:	66 0f 29 88 50 02 00 	movapd %xmm1,0x250(%rax)
    1db4:	00 
    1db5:	66 41 0f 29 86 60 02 	movapd %xmm0,0x260(%r14)
    1dbc:	00 00 
    1dbe:	66 0f 29 88 60 02 00 	movapd %xmm1,0x260(%rax)
    1dc5:	00 
    1dc6:	66 41 0f 29 86 70 02 	movapd %xmm0,0x270(%r14)
    1dcd:	00 00 
    1dcf:	66 0f 29 88 70 02 00 	movapd %xmm1,0x270(%rax)
    1dd6:	00 
    1dd7:	66 41 0f 29 86 80 02 	movapd %xmm0,0x280(%r14)
    1dde:	00 00 
    1de0:	66 0f 29 88 80 02 00 	movapd %xmm1,0x280(%rax)
    1de7:	00 
    1de8:	66 41 0f 29 86 90 02 	movapd %xmm0,0x290(%r14)
    1def:	00 00 
    1df1:	66 0f 29 88 90 02 00 	movapd %xmm1,0x290(%rax)
    1df8:	00 
    1df9:	66 41 0f 29 86 a0 02 	movapd %xmm0,0x2a0(%r14)
    1e00:	00 00 
    1e02:	66 0f 29 88 a0 02 00 	movapd %xmm1,0x2a0(%rax)
    1e09:	00 
    1e0a:	66 41 0f 29 86 b0 02 	movapd %xmm0,0x2b0(%r14)
    1e11:	00 00 
    1e13:	66 0f 29 88 b0 02 00 	movapd %xmm1,0x2b0(%rax)
    1e1a:	00 
    1e1b:	66 41 0f 29 86 c0 02 	movapd %xmm0,0x2c0(%r14)
    1e22:	00 00 
    1e24:	66 0f 29 88 c0 02 00 	movapd %xmm1,0x2c0(%rax)
    1e2b:	00 
    1e2c:	66 41 0f 29 86 d0 02 	movapd %xmm0,0x2d0(%r14)
    1e33:	00 00 
    1e35:	66 0f 29 88 d0 02 00 	movapd %xmm1,0x2d0(%rax)
    1e3c:	00 
    1e3d:	66 41 0f 29 86 e0 02 	movapd %xmm0,0x2e0(%r14)
    1e44:	00 00 
    1e46:	66 0f 29 88 e0 02 00 	movapd %xmm1,0x2e0(%rax)
    1e4d:	00 
    1e4e:	66 41 0f 29 86 f0 02 	movapd %xmm0,0x2f0(%r14)
    1e55:	00 00 
    1e57:	66 0f 29 88 f0 02 00 	movapd %xmm1,0x2f0(%rax)
    1e5e:	00 
    1e5f:	66 41 0f 29 86 00 03 	movapd %xmm0,0x300(%r14)
    1e66:	00 00 
    1e68:	66 0f 29 88 00 03 00 	movapd %xmm1,0x300(%rax)
    1e6f:	00 
    1e70:	66 41 0f 29 86 10 03 	movapd %xmm0,0x310(%r14)
    1e77:	00 00 
    1e79:	66 0f 29 88 10 03 00 	movapd %xmm1,0x310(%rax)
    1e80:	00 
    1e81:	b8 04 00 00 00       	mov    $0x4,%eax
    1e86:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1e90:	f2 41 0f 10 44 c6 e0 	movsd  -0x20(%r14,%rax,8),%xmm0
    1e97:	f2 41 0f 10 4c c6 e8 	movsd  -0x18(%r14,%rax,8),%xmm1
    1e9e:	f2 0f 59 44 c3 e0    	mulsd  -0x20(%rbx,%rax,8),%xmm0
    1ea4:	f2 0f 59 4c c3 e8    	mulsd  -0x18(%rbx,%rax,8),%xmm1
    1eaa:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1eae:	f2 41 0f 10 54 c6 f0 	movsd  -0x10(%r14,%rax,8),%xmm2
    1eb5:	f2 0f 59 54 c3 f0    	mulsd  -0x10(%rbx,%rax,8),%xmm2
    1ebb:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1ebf:	f2 41 0f 10 44 c6 f8 	movsd  -0x8(%r14,%rax,8),%xmm0
    1ec6:	f2 0f 59 44 c3 f8    	mulsd  -0x8(%rbx,%rax,8),%xmm0
    1ecc:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1ed0:	f2 41 0f 10 1c c6    	movsd  (%r14,%rax,8),%xmm3
    1ed6:	f2 0f 59 1c c3       	mulsd  (%rbx,%rax,8),%xmm3
    1edb:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1edf:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
    1ee3:	48 83 c0 05          	add    $0x5,%rax
    1ee7:	48 83 f8 68          	cmp    $0x68,%rax
    1eeb:	75 a3                	jne    1e90 <main+0x7b0>
    1eed:	f2 0f 11 5c 24 08    	movsd  %xmm3,0x8(%rsp)
    1ef3:	66 41 0f 28 2e       	movapd (%r14),%xmm5
    1ef8:	66 41 0f 28 5e 10    	movapd 0x10(%r14),%xmm3
    1efe:	66 41 0f 28 56 20    	movapd 0x20(%r14),%xmm2
    1f04:	66 45 0f 28 46 30    	movapd 0x30(%r14),%xmm8
    1f0a:	66 0f 59 2b          	mulpd  (%rbx),%xmm5
    1f0e:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1f12:	66 0f 58 ee          	addpd  %xmm6,%xmm5
    1f16:	66 0f 59 5b 10       	mulpd  0x10(%rbx),%xmm3
    1f1b:	66 0f 28 cd          	movapd %xmm5,%xmm1
    1f1f:	66 0f 58 cb          	addpd  %xmm3,%xmm1
    1f23:	66 0f 59 53 20       	mulpd  0x20(%rbx),%xmm2
    1f28:	66 44 0f 59 43 30    	mulpd  0x30(%rbx),%xmm8
    1f2e:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1f32:	66 45 0f 28 4e 40    	movapd 0x40(%r14),%xmm9
    1f38:	66 44 0f 59 4b 40    	mulpd  0x40(%rbx),%xmm9
    1f3e:	66 41 0f 58 c8       	addpd  %xmm8,%xmm1
    1f43:	66 41 0f 58 c9       	addpd  %xmm9,%xmm1
    1f48:	66 0f 58 de          	addpd  %xmm6,%xmm3
    1f4c:	66 0f 28 fd          	movapd %xmm5,%xmm7
    1f50:	66 0f 58 fa          	addpd  %xmm2,%xmm7
    1f54:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1f58:	66 41 0f 58 c0       	addpd  %xmm8,%xmm0
    1f5d:	66 0f 58 d6          	addpd  %xmm6,%xmm2
    1f61:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    1f66:	66 41 0f 28 76 50    	movapd 0x50(%r14),%xmm6
    1f6c:	66 0f 59 73 50       	mulpd  0x50(%rbx),%xmm6
    1f71:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1f75:	66 41 0f 58 f9       	addpd  %xmm9,%xmm7
    1f7a:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    1f7f:	66 41 0f 28 6e 60    	movapd 0x60(%r14),%xmm5
    1f85:	66 0f 59 6b 60       	mulpd  0x60(%rbx),%xmm5
    1f8a:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    1f8e:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    1f92:	66 0f 58 de          	addpd  %xmm6,%xmm3
    1f96:	66 41 0f 28 76 70    	movapd 0x70(%r14),%xmm6
    1f9c:	66 0f 59 73 70       	mulpd  0x70(%rbx),%xmm6
    1fa1:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1fa5:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    1fa9:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    1fad:	66 41 0f 28 ae 80 00 	movapd 0x80(%r14),%xmm5
    1fb4:	00 00 
    1fb6:	66 0f 59 ab 80 00 00 	mulpd  0x80(%rbx),%xmm5
    1fbd:	00 
    1fbe:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    1fc2:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    1fc6:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    1fcb:	66 41 0f 28 b6 90 00 	movapd 0x90(%r14),%xmm6
    1fd2:	00 00 
    1fd4:	66 0f 59 b3 90 00 00 	mulpd  0x90(%rbx),%xmm6
    1fdb:	00 
    1fdc:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1fe0:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    1fe4:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    1fe9:	66 41 0f 28 ae a0 00 	movapd 0xa0(%r14),%xmm5
    1ff0:	00 00 
    1ff2:	66 0f 59 ab a0 00 00 	mulpd  0xa0(%rbx),%xmm5
    1ff9:	00 
    1ffa:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    1ffe:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2002:	66 0f 58 de          	addpd  %xmm6,%xmm3
    2006:	66 41 0f 28 b6 b0 00 	movapd 0xb0(%r14),%xmm6
    200d:	00 00 
    200f:	66 0f 59 b3 b0 00 00 	mulpd  0xb0(%rbx),%xmm6
    2016:	00 
    2017:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    201b:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    201f:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    2023:	66 41 0f 28 ae c0 00 	movapd 0xc0(%r14),%xmm5
    202a:	00 00 
    202c:	66 0f 59 ab c0 00 00 	mulpd  0xc0(%rbx),%xmm5
    2033:	00 
    2034:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2038:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    203c:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    2041:	66 41 0f 28 b6 d0 00 	movapd 0xd0(%r14),%xmm6
    2048:	00 00 
    204a:	66 0f 59 b3 d0 00 00 	mulpd  0xd0(%rbx),%xmm6
    2051:	00 
    2052:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2056:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    205a:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    205f:	66 41 0f 28 ae e0 00 	movapd 0xe0(%r14),%xmm5
    2066:	00 00 
    2068:	66 0f 59 ab e0 00 00 	mulpd  0xe0(%rbx),%xmm5
    206f:	00 
    2070:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2074:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2078:	66 0f 58 de          	addpd  %xmm6,%xmm3
    207c:	66 41 0f 28 b6 f0 00 	movapd 0xf0(%r14),%xmm6
    2083:	00 00 
    2085:	66 0f 59 b3 f0 00 00 	mulpd  0xf0(%rbx),%xmm6
    208c:	00 
    208d:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2091:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2095:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    2099:	66 41 0f 28 ae 00 01 	movapd 0x100(%r14),%xmm5
    20a0:	00 00 
    20a2:	66 0f 59 ab 00 01 00 	mulpd  0x100(%rbx),%xmm5
    20a9:	00 
    20aa:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    20ae:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    20b2:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    20b7:	66 41 0f 28 b6 10 01 	movapd 0x110(%r14),%xmm6
    20be:	00 00 
    20c0:	66 0f 59 b3 10 01 00 	mulpd  0x110(%rbx),%xmm6
    20c7:	00 
    20c8:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    20cc:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    20d0:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    20d5:	66 41 0f 28 ae 20 01 	movapd 0x120(%r14),%xmm5
    20dc:	00 00 
    20de:	66 0f 59 ab 20 01 00 	mulpd  0x120(%rbx),%xmm5
    20e5:	00 
    20e6:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    20ea:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    20ee:	66 0f 58 de          	addpd  %xmm6,%xmm3
    20f2:	66 41 0f 28 b6 30 01 	movapd 0x130(%r14),%xmm6
    20f9:	00 00 
    20fb:	66 0f 59 b3 30 01 00 	mulpd  0x130(%rbx),%xmm6
    2102:	00 
    2103:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2107:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    210b:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    210f:	66 41 0f 28 ae 40 01 	movapd 0x140(%r14),%xmm5
    2116:	00 00 
    2118:	66 0f 59 ab 40 01 00 	mulpd  0x140(%rbx),%xmm5
    211f:	00 
    2120:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2124:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2128:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    212d:	66 41 0f 28 b6 50 01 	movapd 0x150(%r14),%xmm6
    2134:	00 00 
    2136:	66 0f 59 b3 50 01 00 	mulpd  0x150(%rbx),%xmm6
    213d:	00 
    213e:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2142:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2146:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    214b:	66 41 0f 28 ae 60 01 	movapd 0x160(%r14),%xmm5
    2152:	00 00 
    2154:	66 0f 59 ab 60 01 00 	mulpd  0x160(%rbx),%xmm5
    215b:	00 
    215c:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2160:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2164:	66 0f 58 de          	addpd  %xmm6,%xmm3
    2168:	66 41 0f 28 b6 70 01 	movapd 0x170(%r14),%xmm6
    216f:	00 00 
    2171:	66 0f 59 b3 70 01 00 	mulpd  0x170(%rbx),%xmm6
    2178:	00 
    2179:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    217d:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2181:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    2185:	66 41 0f 28 ae 80 01 	movapd 0x180(%r14),%xmm5
    218c:	00 00 
    218e:	66 0f 59 ab 80 01 00 	mulpd  0x180(%rbx),%xmm5
    2195:	00 
    2196:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    219a:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    219e:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    21a3:	66 41 0f 28 b6 90 01 	movapd 0x190(%r14),%xmm6
    21aa:	00 00 
    21ac:	66 0f 59 b3 90 01 00 	mulpd  0x190(%rbx),%xmm6
    21b3:	00 
    21b4:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    21b8:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    21bc:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    21c1:	66 41 0f 28 ae a0 01 	movapd 0x1a0(%r14),%xmm5
    21c8:	00 00 
    21ca:	66 0f 59 ab a0 01 00 	mulpd  0x1a0(%rbx),%xmm5
    21d1:	00 
    21d2:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    21d6:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    21da:	66 0f 58 de          	addpd  %xmm6,%xmm3
    21de:	66 41 0f 28 b6 b0 01 	movapd 0x1b0(%r14),%xmm6
    21e5:	00 00 
    21e7:	66 0f 59 b3 b0 01 00 	mulpd  0x1b0(%rbx),%xmm6
    21ee:	00 
    21ef:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    21f3:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    21f7:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    21fb:	66 41 0f 28 ae c0 01 	movapd 0x1c0(%r14),%xmm5
    2202:	00 00 
    2204:	66 0f 59 ab c0 01 00 	mulpd  0x1c0(%rbx),%xmm5
    220b:	00 
    220c:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2210:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2214:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    2219:	66 41 0f 28 b6 d0 01 	movapd 0x1d0(%r14),%xmm6
    2220:	00 00 
    2222:	66 0f 59 b3 d0 01 00 	mulpd  0x1d0(%rbx),%xmm6
    2229:	00 
    222a:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    222e:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2232:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    2237:	66 41 0f 28 ae e0 01 	movapd 0x1e0(%r14),%xmm5
    223e:	00 00 
    2240:	66 0f 59 ab e0 01 00 	mulpd  0x1e0(%rbx),%xmm5
    2247:	00 
    2248:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    224c:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2250:	66 0f 58 de          	addpd  %xmm6,%xmm3
    2254:	66 41 0f 28 b6 f0 01 	movapd 0x1f0(%r14),%xmm6
    225b:	00 00 
    225d:	66 0f 59 b3 f0 01 00 	mulpd  0x1f0(%rbx),%xmm6
    2264:	00 
    2265:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2269:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    226d:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    2271:	66 41 0f 28 ae 00 02 	movapd 0x200(%r14),%xmm5
    2278:	00 00 
    227a:	66 0f 59 ab 00 02 00 	mulpd  0x200(%rbx),%xmm5
    2281:	00 
    2282:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2286:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    228a:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    228f:	66 41 0f 28 b6 10 02 	movapd 0x210(%r14),%xmm6
    2296:	00 00 
    2298:	66 0f 59 b3 10 02 00 	mulpd  0x210(%rbx),%xmm6
    229f:	00 
    22a0:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    22a4:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    22a8:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    22ad:	66 41 0f 28 ae 20 02 	movapd 0x220(%r14),%xmm5
    22b4:	00 00 
    22b6:	66 0f 59 ab 20 02 00 	mulpd  0x220(%rbx),%xmm5
    22bd:	00 
    22be:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    22c2:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    22c6:	66 0f 58 de          	addpd  %xmm6,%xmm3
    22ca:	66 41 0f 28 b6 30 02 	movapd 0x230(%r14),%xmm6
    22d1:	00 00 
    22d3:	66 0f 59 b3 30 02 00 	mulpd  0x230(%rbx),%xmm6
    22da:	00 
    22db:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    22df:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    22e3:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    22e7:	66 41 0f 28 ae 40 02 	movapd 0x240(%r14),%xmm5
    22ee:	00 00 
    22f0:	66 0f 59 ab 40 02 00 	mulpd  0x240(%rbx),%xmm5
    22f7:	00 
    22f8:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    22fc:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2300:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    2305:	66 41 0f 28 b6 50 02 	movapd 0x250(%r14),%xmm6
    230c:	00 00 
    230e:	66 0f 59 b3 50 02 00 	mulpd  0x250(%rbx),%xmm6
    2315:	00 
    2316:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    231a:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    231e:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    2323:	66 41 0f 28 ae 60 02 	movapd 0x260(%r14),%xmm5
    232a:	00 00 
    232c:	66 0f 59 ab 60 02 00 	mulpd  0x260(%rbx),%xmm5
    2333:	00 
    2334:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2338:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    233c:	66 0f 58 de          	addpd  %xmm6,%xmm3
    2340:	66 41 0f 28 b6 70 02 	movapd 0x270(%r14),%xmm6
    2347:	00 00 
    2349:	66 0f 59 b3 70 02 00 	mulpd  0x270(%rbx),%xmm6
    2350:	00 
    2351:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2355:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2359:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    235d:	66 41 0f 28 ae 80 02 	movapd 0x280(%r14),%xmm5
    2364:	00 00 
    2366:	66 0f 59 ab 80 02 00 	mulpd  0x280(%rbx),%xmm5
    236d:	00 
    236e:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2372:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2376:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    237b:	66 41 0f 28 b6 90 02 	movapd 0x290(%r14),%xmm6
    2382:	00 00 
    2384:	66 0f 59 b3 90 02 00 	mulpd  0x290(%rbx),%xmm6
    238b:	00 
    238c:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2390:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2394:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    2399:	66 41 0f 28 ae a0 02 	movapd 0x2a0(%r14),%xmm5
    23a0:	00 00 
    23a2:	66 0f 59 ab a0 02 00 	mulpd  0x2a0(%rbx),%xmm5
    23a9:	00 
    23aa:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    23ae:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    23b2:	66 0f 58 de          	addpd  %xmm6,%xmm3
    23b6:	66 41 0f 28 b6 b0 02 	movapd 0x2b0(%r14),%xmm6
    23bd:	00 00 
    23bf:	66 0f 59 b3 b0 02 00 	mulpd  0x2b0(%rbx),%xmm6
    23c6:	00 
    23c7:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    23cb:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    23cf:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    23d3:	66 41 0f 28 ae c0 02 	movapd 0x2c0(%r14),%xmm5
    23da:	00 00 
    23dc:	66 0f 59 ab c0 02 00 	mulpd  0x2c0(%rbx),%xmm5
    23e3:	00 
    23e4:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    23e8:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    23ec:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    23f1:	66 41 0f 28 b6 d0 02 	movapd 0x2d0(%r14),%xmm6
    23f8:	00 00 
    23fa:	66 0f 59 b3 d0 02 00 	mulpd  0x2d0(%rbx),%xmm6
    2401:	00 
    2402:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2406:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    240a:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    240f:	66 41 0f 28 ae e0 02 	movapd 0x2e0(%r14),%xmm5
    2416:	00 00 
    2418:	66 0f 59 ab e0 02 00 	mulpd  0x2e0(%rbx),%xmm5
    241f:	00 
    2420:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    2424:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2428:	66 0f 58 de          	addpd  %xmm6,%xmm3
    242c:	66 41 0f 28 b6 f0 02 	movapd 0x2f0(%r14),%xmm6
    2433:	00 00 
    2435:	66 0f 59 b3 f0 02 00 	mulpd  0x2f0(%rbx),%xmm6
    243c:	00 
    243d:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    2441:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2445:	66 0f 58 d5          	addpd  %xmm5,%xmm2
    2449:	66 41 0f 28 ae 00 03 	movapd 0x300(%r14),%xmm5
    2450:	00 00 
    2452:	66 0f 59 ab 00 03 00 	mulpd  0x300(%rbx),%xmm5
    2459:	00 
    245a:	66 0f 58 cd          	addpd  %xmm5,%xmm1
    245e:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    2462:	66 44 0f 58 c6       	addpd  %xmm6,%xmm8
    2467:	66 41 0f 28 b6 10 03 	movapd 0x310(%r14),%xmm6
    246e:	00 00 
    2470:	66 0f 59 b3 10 03 00 	mulpd  0x310(%rbx),%xmm6
    2477:	00 
    2478:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    247c:	66 0f 58 fd          	addpd  %xmm5,%xmm7
    2480:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
    2485:	66 41 0f 28 ae 20 03 	movapd 0x320(%r14),%xmm5
    248c:	00 00 
    248e:	66 0f 59 ab 20 03 00 	mulpd  0x320(%rbx),%xmm5
    2495:	00 
    2496:	66 0f 58 ea          	addpd  %xmm2,%xmm5
    249a:	66 41 0f 28 a6 30 03 	movapd 0x330(%r14),%xmm4
    24a1:	00 00 
    24a3:	66 0f 59 a3 30 03 00 	mulpd  0x330(%rbx),%xmm4
    24aa:	00 
    24ab:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    24af:	66 41 0f 58 e0       	addpd  %xmm8,%xmm4
    24b4:	f2 41 0f 10 96 08 03 	movsd  0x308(%r14),%xmm2
    24bb:	00 00 
    24bd:	66 0f 58 de          	addpd  %xmm6,%xmm3
    24c1:	f2 0f 59 93 08 03 00 	mulsd  0x308(%rbx),%xmm2
    24c8:	00 
    24c9:	f2 0f 58 d7          	addsd  %xmm7,%xmm2
    24cd:	f2 0f 58 d6          	addsd  %xmm6,%xmm2
    24d1:	66 0f 15 f6          	unpckhpd %xmm6,%xmm6
    24d5:	f2 0f 58 f2          	addsd  %xmm2,%xmm6
    24d9:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    24dd:	f2 0f 58 fe          	addsd  %xmm6,%xmm7
    24e1:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    24e5:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    24e9:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    24ed:	66 0f 29 44 24 30    	movapd %xmm0,0x30(%rsp)
    24f3:	66 0f 28 c1          	movapd %xmm1,%xmm0
    24f7:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    24fb:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    24ff:	66 0f 29 44 24 20    	movapd %xmm0,0x20(%rsp)
    2505:	66 41 0f 28 c9       	movapd %xmm9,%xmm1
    250a:	66 41 0f 15 c9       	unpckhpd %xmm9,%xmm1
    250f:	f2 41 0f 58 c9       	addsd  %xmm9,%xmm1
    2514:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    2518:	66 0f 15 db          	unpckhpd %xmm3,%xmm3
    251c:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    2520:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    2524:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
    2528:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    252c:	f2 0f 58 ec          	addsd  %xmm4,%xmm5
    2530:	66 0f 15 e4          	unpckhpd %xmm4,%xmm4
    2534:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    2538:	66 0f 29 64 24 10    	movapd %xmm4,0x10(%rsp)
    253e:	ba 64 00 00 00       	mov    $0x64,%edx
    2543:	4c 89 f7             	mov    %r14,%rdi
    2546:	48 89 de             	mov    %rbx,%rsi
    2549:	e8 d2 ef ff ff       	callq  1520 <dotprod_16x>
    254e:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
    2553:	48 8d 3d d6 0a 00 00 	lea    0xad6(%rip),%rdi        # 3030 <_IO_stdin_used+0x30>
    255a:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    2560:	b0 01                	mov    $0x1,%al
    2562:	e8 d9 ea ff ff       	callq  1040 <printf@plt>
    2567:	48 8d 3d cd 0a 00 00 	lea    0xacd(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    256e:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    2573:	b0 01                	mov    $0x1,%al
    2575:	e8 c6 ea ff ff       	callq  1040 <printf@plt>
    257a:	48 8d 3d c8 0a 00 00 	lea    0xac8(%rip),%rdi        # 3049 <_IO_stdin_used+0x49>
    2581:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    2586:	b0 01                	mov    $0x1,%al
    2588:	e8 b3 ea ff ff       	callq  1040 <printf@plt>
    258d:	48 8d 3d c3 0a 00 00 	lea    0xac3(%rip),%rdi        # 3057 <_IO_stdin_used+0x57>
    2594:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    2599:	b0 01                	mov    $0x1,%al
    259b:	e8 a0 ea ff ff       	callq  1040 <printf@plt>
    25a0:	48 8d 3d be 0a 00 00 	lea    0xabe(%rip),%rdi        # 3065 <_IO_stdin_used+0x65>
    25a7:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    25ac:	b0 01                	mov    $0x1,%al
    25ae:	e8 8d ea ff ff       	callq  1040 <printf@plt>
    25b3:	4c 89 f7             	mov    %r14,%rdi
    25b6:	e8 75 ea ff ff       	callq  1030 <free@plt>
    25bb:	48 89 df             	mov    %rbx,%rdi
    25be:	e8 6d ea ff ff       	callq  1030 <free@plt>
    25c3:	31 c0                	xor    %eax,%eax
    25c5:	48 83 c4 40          	add    $0x40,%rsp
    25c9:	5b                   	pop    %rbx
    25ca:	41 5e                	pop    %r14
    25cc:	41 5f                	pop    %r15
    25ce:	c3                   	retq   
    25cf:	bf 01 00 00 00       	mov    $0x1,%edi
    25d4:	e8 87 ea ff ff       	callq  1060 <exit@plt>
    25d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000025e0 <__libc_csu_init>:
    25e0:	f3 0f 1e fa          	endbr64 
    25e4:	41 57                	push   %r15
    25e6:	4c 8d 3d eb 27 00 00 	lea    0x27eb(%rip),%r15        # 4dd8 <__frame_dummy_init_array_entry>
    25ed:	41 56                	push   %r14
    25ef:	49 89 d6             	mov    %rdx,%r14
    25f2:	41 55                	push   %r13
    25f4:	49 89 f5             	mov    %rsi,%r13
    25f7:	41 54                	push   %r12
    25f9:	41 89 fc             	mov    %edi,%r12d
    25fc:	55                   	push   %rbp
    25fd:	48 8d 2d dc 27 00 00 	lea    0x27dc(%rip),%rbp        # 4de0 <__do_global_dtors_aux_fini_array_entry>
    2604:	53                   	push   %rbx
    2605:	4c 29 fd             	sub    %r15,%rbp
    2608:	48 83 ec 08          	sub    $0x8,%rsp
    260c:	e8 ef e9 ff ff       	callq  1000 <_init>
    2611:	48 c1 fd 03          	sar    $0x3,%rbp
    2615:	74 1f                	je     2636 <__libc_csu_init+0x56>
    2617:	31 db                	xor    %ebx,%ebx
    2619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2620:	4c 89 f2             	mov    %r14,%rdx
    2623:	4c 89 ee             	mov    %r13,%rsi
    2626:	44 89 e7             	mov    %r12d,%edi
    2629:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    262d:	48 83 c3 01          	add    $0x1,%rbx
    2631:	48 39 dd             	cmp    %rbx,%rbp
    2634:	75 ea                	jne    2620 <__libc_csu_init+0x40>
    2636:	48 83 c4 08          	add    $0x8,%rsp
    263a:	5b                   	pop    %rbx
    263b:	5d                   	pop    %rbp
    263c:	41 5c                	pop    %r12
    263e:	41 5d                	pop    %r13
    2640:	41 5e                	pop    %r14
    2642:	41 5f                	pop    %r15
    2644:	c3                   	retq   
    2645:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    264c:	00 00 00 00 

0000000000002650 <__libc_csu_fini>:
    2650:	f3 0f 1e fa          	endbr64 
    2654:	c3                   	retq   

Déassemblage de la section .fini :

0000000000002658 <_fini>:
    2658:	f3 0f 1e fa          	endbr64 
    265c:	48 83 ec 08          	sub    $0x8,%rsp
    2660:	48 83 c4 08          	add    $0x8,%rsp
    2664:	c3                   	retq   

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
    3078:	60                   	(bad)  
    3079:	00 00                	add    %al,(%rax)
    307b:	00 0b                	add    %cl,(%rbx)
    307d:	00 00                	add    %al,(%rax)
    307f:	00 ac df ff ff 94 00 	add    %ch,0x94ffff(%rdi,%rbx,8)
    3086:	00 00                	add    %al,(%rax)
    3088:	0c e0                	or     $0xe0,%al
    308a:	ff                   	(bad)  
    308b:	ff                   	(bad)  
    308c:	7c 00                	jl     308e <__GNU_EH_FRAME_HDR+0x1a>
    308e:	00 00                	add    %al,(%rax)
    3090:	0c e1                	or     $0xe1,%al
    3092:	ff                   	(bad)  
    3093:	ff                   	(bad)  
    3094:	bc 00 00 00 3c       	mov    $0x3c000000,%esp
    3099:	e1 ff                	loope  309a <__GNU_EH_FRAME_HDR+0x26>
    309b:	ff                   	(bad)  
    309c:	d8 00                	fadds  (%rax)
    309e:	00 00                	add    %al,(%rax)
    30a0:	ec                   	in     (%dx),%al
    30a1:	e1 ff                	loope  30a2 <__GNU_EH_FRAME_HDR+0x2e>
    30a3:	ff                   	(bad)  
    30a4:	ec                   	in     (%dx),%al
    30a5:	00 00                	add    %al,(%rax)
    30a7:	00 7c e2 ff          	add    %bh,-0x1(%rdx,%riz,8)
    30ab:	ff 00                	incl   (%rax)
    30ad:	01 00                	add    %eax,(%rax)
    30af:	00 4c e3 ff          	add    %cl,-0x1(%rbx,%riz,8)
    30b3:	ff 14 01             	callq  *(%rcx,%rax,1)
    30b6:	00 00                	add    %al,(%rax)
    30b8:	ac                   	lods   %ds:(%rsi),%al
    30b9:	e4 ff                	in     $0xff,%al
    30bb:	ff 28                	ljmp   *(%rax)
    30bd:	01 00                	add    %eax,(%rax)
    30bf:	00 6c e6 ff          	add    %ch,-0x1(%rsi,%riz,8)
    30c3:	ff                   	(bad)  
    30c4:	3c 01                	cmp    $0x1,%al
    30c6:	00 00                	add    %al,(%rax)
    30c8:	6c                   	insb   (%dx),%es:(%rdi)
    30c9:	f5                   	cmc    
    30ca:	ff                   	(bad)  
    30cb:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
    30cf:	00 dc                	add    %bl,%ah
    30d1:	f5                   	cmc    
    30d2:	ff                   	(bad)  
    30d3:	ff                   	(bad)  
    30d4:	bc                   	.byte 0xbc
    30d5:	01 00                	add    %eax,(%rax)
	...

Déassemblage de la section .eh_frame :

00000000000030d8 <__FRAME_END__-0x16c>:
    30d8:	14 00                	adc    $0x0,%al
    30da:	00 00                	add    %al,(%rax)
    30dc:	00 00                	add    %al,(%rax)
    30de:	00 00                	add    %al,(%rax)
    30e0:	01 7a 52             	add    %edi,0x52(%rdx)
    30e3:	00 01                	add    %al,(%rcx)
    30e5:	78 10                	js     30f7 <__GNU_EH_FRAME_HDR+0x83>
    30e7:	01 1b                	add    %ebx,(%rbx)
    30e9:	0c 07                	or     $0x7,%al
    30eb:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    30f1:	00 00                	add    %al,(%rax)
    30f3:	00 1c 00             	add    %bl,(%rax,%rax,1)
    30f6:	00 00                	add    %al,(%rax)
    30f8:	88 df                	mov    %bl,%bh
    30fa:	ff                   	(bad)  
    30fb:	ff 2f                	ljmp   *(%rdi)
    30fd:	00 00                	add    %al,(%rax)
    30ff:	00 00                	add    %al,(%rax)
    3101:	44 07                	rex.R (bad) 
    3103:	10 00                	adc    %al,(%rax)
    3105:	00 00                	add    %al,(%rax)
    3107:	00 24 00             	add    %ah,(%rax,%rax,1)
    310a:	00 00                	add    %al,(%rax)
    310c:	34 00                	xor    $0x0,%al
    310e:	00 00                	add    %al,(%rax)
    3110:	10 df                	adc    %bl,%bh
    3112:	ff                   	(bad)  
    3113:	ff 60 00             	jmpq   *0x0(%rax)
    3116:	00 00                	add    %al,(%rax)
    3118:	00 0e                	add    %cl,(%rsi)
    311a:	10 46 0e             	adc    %al,0xe(%rsi)
    311d:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    3120:	0b 77 08             	or     0x8(%rdi),%esi
    3123:	80 00 3f             	addb   $0x3f,(%rax)
    3126:	1a 3b                	sbb    (%rbx),%bh
    3128:	2a 33                	sub    (%rbx),%dh
    312a:	24 22                	and    $0x22,%al
    312c:	00 00                	add    %al,(%rax)
    312e:	00 00                	add    %al,(%rax)
    3130:	18 00                	sbb    %al,(%rax)
    3132:	00 00                	add    %al,(%rax)
    3134:	5c                   	pop    %rsp
    3135:	00 00                	add    %al,(%rax)
    3137:	00 48 e0             	add    %cl,-0x20(%rax)
    313a:	ff                   	(bad)  
    313b:	ff 21                	jmpq   *(%rcx)
    313d:	00 00                	add    %al,(%rax)
    313f:	00 00                	add    %al,(%rax)
    3141:	41 0e                	rex.B (bad) 
    3143:	10 51 0e             	adc    %dl,0xe(%rcx)
    3146:	08 45 0e             	or     %al,0xe(%rbp)
    3149:	10 00                	adc    %al,(%rax)
    314b:	00 10                	add    %dl,(%rax)
    314d:	00 00                	add    %al,(%rax)
    314f:	00 78 00             	add    %bh,0x0(%rax)
    3152:	00 00                	add    %al,(%rax)
    3154:	5c                   	pop    %rsp
    3155:	e0 ff                	loopne 3156 <__GNU_EH_FRAME_HDR+0xe2>
    3157:	ff a8 00 00 00 00    	ljmp   *0x0(%rax)
    315d:	00 00                	add    %al,(%rax)
    315f:	00 10                	add    %dl,(%rax)
    3161:	00 00                	add    %al,(%rax)
    3163:	00 8c 00 00 00 f8 e0 	add    %cl,-0x1f080000(%rax,%rax,1)
    316a:	ff                   	(bad)  
    316b:	ff 88 00 00 00 00    	decl   0x0(%rax)
    3171:	00 00                	add    %al,(%rax)
    3173:	00 10                	add    %dl,(%rax)
    3175:	00 00                	add    %al,(%rax)
    3177:	00 a0 00 00 00 74    	add    %ah,0x74000000(%rax)
    317d:	e1 ff                	loope  317e <__GNU_EH_FRAME_HDR+0x10a>
    317f:	ff c5                	inc    %ebp
    3181:	00 00                	add    %al,(%rax)
    3183:	00 00                	add    %al,(%rax)
    3185:	00 00                	add    %al,(%rax)
    3187:	00 10                	add    %dl,(%rax)
    3189:	00 00                	add    %al,(%rax)
    318b:	00 b4 00 00 00 30 e2 	add    %dh,-0x1dd00000(%rax,%rax,1)
    3192:	ff                   	(bad)  
    3193:	ff 55 01             	callq  *0x1(%rbp)
    3196:	00 00                	add    %al,(%rax)
    3198:	00 00                	add    %al,(%rax)
    319a:	00 00                	add    %al,(%rax)
    319c:	10 00                	adc    %al,(%rax)
    319e:	00 00                	add    %al,(%rax)
    31a0:	c8 00 00 00          	enterq $0x0,$0x0
    31a4:	7c e3                	jl     3189 <__GNU_EH_FRAME_HDR+0x115>
    31a6:	ff                   	(bad)  
    31a7:	ff b5 01 00 00 00    	pushq  0x1(%rbp)
    31ad:	00 00                	add    %al,(%rax)
    31af:	00 34 00             	add    %dh,(%rax,%rax,1)
    31b2:	00 00                	add    %al,(%rax)
    31b4:	dc 00                	faddl  (%rax)
    31b6:	00 00                	add    %al,(%rax)
    31b8:	28 e5                	sub    %ah,%ch
    31ba:	ff                   	(bad)  
    31bb:	ff                   	(bad)  
    31bc:	f9                   	stc    
    31bd:	0e                   	(bad)  
    31be:	00 00                	add    %al,(%rax)
    31c0:	00 42 0e             	add    %al,0xe(%rdx)
    31c3:	10 42 0e             	adc    %al,0xe(%rdx)
    31c6:	18 41 0e             	sbb    %al,0xe(%rcx)
    31c9:	20 44 0e 60          	and    %al,0x60(%rsi,%rcx,1)
    31cd:	83 04 8e 03          	addl   $0x3,(%rsi,%rcx,4)
    31d1:	8f 02                	popq   (%rdx)
    31d3:	03 e0                	add    %eax,%esp
    31d5:	0e                   	(bad)  
    31d6:	0e                   	(bad)  
    31d7:	20 41 0e             	and    %al,0xe(%rcx)
    31da:	18 42 0e             	sbb    %al,0xe(%rdx)
    31dd:	10 42 0e             	adc    %al,0xe(%rdx)
    31e0:	08 41 0e             	or     %al,0xe(%rcx)
    31e3:	60                   	(bad)  
    31e4:	00 00                	add    %al,(%rax)
    31e6:	00 00                	add    %al,(%rax)
    31e8:	44 00 00             	add    %r8b,(%rax)
    31eb:	00 14 01             	add    %dl,(%rcx,%rax,1)
    31ee:	00 00                	add    %al,(%rax)
    31f0:	f0 f3 ff             	lock repz (bad) 
    31f3:	ff 65 00             	jmpq   *0x0(%rbp)
    31f6:	00 00                	add    %al,(%rax)
    31f8:	00 46 0e             	add    %al,0xe(%rsi)
    31fb:	10 8f 02 49 0e 18    	adc    %cl,0x180e4902(%rdi)
    3201:	8e 03                	mov    (%rbx),%es
    3203:	45 0e                	rex.RB (bad) 
    3205:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
    320b:	8c 05 44 0e 30 86    	mov    %es,-0x79cff1bc(%rip)        # ffffffff86304055 <_end+0xffffffff862feffd>
    3211:	06                   	(bad)  
    3212:	48 0e                	rex.W (bad) 
    3214:	38 83 07 47 0e 40    	cmp    %al,0x400e4707(%rbx)
    321a:	6e                   	outsb  %ds:(%rsi),(%dx)
    321b:	0e                   	(bad)  
    321c:	38 41 0e             	cmp    %al,0xe(%rcx)
    321f:	30 41 0e             	xor    %al,0xe(%rcx)
    3222:	28 42 0e             	sub    %al,0xe(%rdx)
    3225:	20 42 0e             	and    %al,0xe(%rdx)
    3228:	18 42 0e             	sbb    %al,0xe(%rdx)
    322b:	10 42 0e             	adc    %al,0xe(%rdx)
    322e:	08 00                	or     %al,(%rax)
    3230:	10 00                	adc    %al,(%rax)
    3232:	00 00                	add    %al,(%rax)
    3234:	5c                   	pop    %rsp
    3235:	01 00                	add    %eax,(%rax)
    3237:	00 18                	add    %bl,(%rax)
    3239:	f4                   	hlt    
    323a:	ff                   	(bad)  
    323b:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 3241 <__GNU_EH_FRAME_HDR+0x1cd>
    3241:	00 00                	add    %al,(%rax)
	...

0000000000003244 <__FRAME_END__>:
    3244:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .init_array :

0000000000004dd8 <__frame_dummy_init_array_entry>:
    4dd8:	70 11                	jo     4deb <_DYNAMIC+0x3>
    4dda:	00 00                	add    %al,(%rax)
    4ddc:	00 00                	add    %al,(%rax)
	...

Déassemblage de la section .fini_array :

0000000000004de0 <__do_global_dtors_aux_fini_array_entry>:
    4de0:	20 11                	and    %dl,(%rcx)
    4de2:	00 00                	add    %al,(%rax)
    4de4:	00 00                	add    %al,(%rax)
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
    4e0f:	00 58 26             	add    %bl,0x26(%rax)
    4e12:	00 00                	add    %al,(%rax)
    4e14:	00 00                	add    %al,(%rax)
    4e16:	00 00                	add    %al,(%rax)
    4e18:	19 00                	sbb    %eax,(%rax)
    4e1a:	00 00                	add    %al,(%rax)
    4e1c:	00 00                	add    %al,(%rax)
    4e1e:	00 00                	add    %al,(%rax)
    4e20:	d8 4d 00             	fmuls  0x0(%rbp)
    4e23:	00 00                	add    %al,(%rax)
    4e25:	00 00                	add    %al,(%rax)
    4e27:	00 1b                	add    %bl,(%rbx)
    4e29:	00 00                	add    %al,(%rax)
    4e2b:	00 00                	add    %al,(%rax)
    4e2d:	00 00                	add    %al,(%rax)
    4e2f:	00 08                	add    %cl,(%rax)
    4e31:	00 00                	add    %al,(%rax)
    4e33:	00 00                	add    %al,(%rax)
    4e35:	00 00                	add    %al,(%rax)
    4e37:	00 1a                	add    %bl,(%rdx)
    4e39:	00 00                	add    %al,(%rax)
    4e3b:	00 00                	add    %al,(%rax)
    4e3d:	00 00                	add    %al,(%rax)
    4e3f:	00 e0                	add    %ah,%al
    4e41:	4d 00 00             	rex.WRB add %r8b,(%r8)
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
    4eff:	00 08                	add    %cl,(%rax)
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
    4f20:	c0 00 00             	rolb   $0x0,(%rax)
    4f23:	00 00                	add    %al,(%rax)
    4f25:	00 00                	add    %al,(%rax)
    4f27:	00 09                	add    %cl,(%rcx)
    4f29:	00 00                	add    %al,(%rax)
    4f2b:	00 00                	add    %al,(%rax)
    4f2d:	00 00                	add    %al,(%rax)
    4f2f:	00 18                	add    %bl,(%rax)
    4f31:	00 00                	add    %al,(%rax)
    4f33:	00 00                	add    %al,(%rax)
    4f35:	00 00                	add    %al,(%rax)
    4f37:	00 fb                	add    %bh,%bl
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
    4f7f:	00 03                	add    %al,(%rbx)
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

Déassemblage de la section .debug_info :

0000000000000000 <.debug_info>:
   0:	ad                   	lods   %ds:(%rsi),%eax
   1:	09 00                	or     %eax,(%rax)
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
  25:	00 59 14             	add    %bl,0x14(%rcx)
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
 24e:	7c a4                	jl     1f4 <__abi_tag-0xd0>
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
 2e4:	00 05 04 10 ec 02    	add    %al,0x2ec1004(%rip)        # 2ec12ee <_end+0x2ebc296>
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
 4f0:	f9                   	stc    
 4f1:	0e                   	(bad)  
 4f2:	00 00                	add    %al,(%rax)
 4f4:	01 57 ef             	add    %edx,-0x11(%rdi)
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
 597:	c9                   	leaveq 
 598:	0f 00 00             	sldt   (%rax)
 59b:	1d 00 00 00 01       	sbb    $0x1000000,%eax
 5a0:	c2 34 03             	retq   $0x334
 5a3:	00 00                	add    %al,(%rax)
 5a5:	0b 58 10             	or     0x10(%rax),%ebx
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
 73c:	00 51 1b             	add    %dl,0x1b(%rcx)
 73f:	00 00                	add    %al,(%rax)
 741:	00 00                	add    %al,(%rax)
 743:	00 00                	add    %al,(%rax)
 745:	39 03                	cmp    %eax,(%rbx)
 747:	00 00                	add    %al,(%rax)
 749:	01 c6                	add    %eax,%esi
 74b:	03 03                	add    (%rbx),%eax
 74d:	7b 10                	jnp    75f <__abi_tag+0x49b>
 74f:	00 00                	add    %al,(%rax)
 751:	00 03                	add    %al,(%rbx)
 753:	00 00                	add    %al,(%rax)
 755:	03 35 10 00 00 0b    	add    0xb000010(%rip),%esi        # b00076b <_end+0xaffb713>
 75b:	03 00                	add    (%rax),%eax
 75d:	00 03                	add    %al,(%rbx)
 75f:	10 10                	adc    %dl,(%rax)
 761:	00 00                	add    %al,(%rax)
 763:	16                   	(bad)  
 764:	03 00                	add    (%rax),%eax
 766:	00 07                	add    %al,(%rdi)
 768:	51                   	push   %rcx
 769:	1b 00                	sbb    (%rax),%eax
 76b:	00 00                	add    %al,(%rax)
 76d:	00 00                	add    %al,(%rax)
 76f:	00 39                	add    %bh,(%rcx)
 771:	03 00                	add    (%rax),%eax
 773:	00 05 ec 0f 00 00    	add    %al,0xfec(%rip)        # 1765 <main+0x85>
 779:	22 03                	and    (%rbx),%al
 77b:	00 00                	add    %al,(%rax)
 77d:	00 00                	add    %al,(%rax)
 77f:	19 b3 03 00 00 8a    	sbb    %esi,-0x75fffffd(%rbx)
 785:	1e                   	(bad)  
 786:	00 00                	add    %al,(%rax)
 788:	00 00                	add    %al,(%rax)
 78a:	00 00                	add    %al,(%rax)
 78c:	63 00                	movsxd (%rax),%eax
 78e:	00 00                	add    %al,(%rax)
 790:	01 c9                	add    %ecx,%ecx
 792:	09 05 9e 10 00 00    	or     %eax,0x109e(%rip)        # 1836 <main+0x156>
 798:	e0 03                	loopne 79d <__abi_tag+0x4d9>
 79a:	00 00                	add    %al,(%rax)
 79c:	07                   	(bad)  
 79d:	8a 1e                	mov    (%rsi),%bl
 79f:	00 00                	add    %al,(%rax)
 7a1:	00 00                	add    %al,(%rax)
 7a3:	00 00                	add    %al,(%rax)
 7a5:	63 00                	movsxd (%rax),%eax
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
 7c0:	00 06                	add    %al,(%rsi)
 7c2:	10 04 00             	adc    %al,(%rax,%rax,1)
 7c5:	00 05 20 11 00 00    	add    %al,0x1120(%rip)        # 18eb <main+0x20b>
 7cb:	79 03                	jns    7d0 <__abi_tag+0x50c>
 7cd:	00 00                	add    %al,(%rax)
 7cf:	00 00                	add    %al,(%rax)
 7d1:	18 f9                	sbb    %bh,%cl
 7d3:	03 00                	add    (%rax),%eax
 7d5:	00 00                	add    %al,(%rax)
 7d7:	07                   	(bad)  
 7d8:	00 00                	add    %al,(%rax)
 7da:	01 cb                	add    %ecx,%ebx
 7dc:	0c 05                	or     $0x5,%al
 7de:	4f 15 00 00 31 04    	rex.WRXB adc $0x4310000,%rax
 7e4:	00 00                	add    %al,(%rax)
 7e6:	06                   	(bad)  
 7e7:	20 0a                	and    %cl,(%rdx)
 7e9:	00 00                	add    %al,(%rax)
 7eb:	05 89 15 00 00       	add    $0x1589,%eax
 7f0:	3d 04 00 00 00       	cmp    $0x4,%eax
 7f5:	06                   	(bad)  
 7f6:	50                   	push   %rax
 7f7:	0d 00 00 1a 05       	or     $0x51a0000,%eax
 7fc:	10 64 34 1c          	adc    %ah,0x1c(%rsp,%rsi,1)
 800:	9f                   	lahf   
 801:	4a 04 00             	rex.WX add $0x0,%al
 804:	00 06                	add    %al,(%rsi)
 806:	20 0d 00 00 1b 64    	and    %cl,0x641b0000(%rip)        # 641b080c <_end+0x641ab7b4>
 80c:	56                   	push   %rsi
 80d:	04 00                	add    $0x0,%al
 80f:	00 00                	add    %al,(%rax)
 811:	00 00                	add    %al,(%rax)
 813:	18 70 04             	sbb    %dh,0x4(%rax)
 816:	00 00                	add    %al,(%rax)
 818:	80 0d 00 00 01 cc 0c 	orb    $0xc,-0x33ff0000(%rip)        # ffffffffcc01081f <_end+0xffffffffcc00b7c7>
 81f:	03 69 19             	add    0x19(%rcx),%ebp
 822:	00 00                	add    %al,(%rax)
 824:	7c 04                	jl     82a <__abi_tag+0x566>
 826:	00 00                	add    %al,(%rax)
 828:	03 46 19             	add    0x19(%rsi),%eax
 82b:	00 00                	add    %al,(%rax)
 82d:	87 04 00             	xchg   %eax,(%rax,%rax,1)
 830:	00 03                	add    %al,(%rbx)
 832:	21 19                	and    %ebx,(%rcx)
 834:	00 00                	add    %al,(%rax)
 836:	92                   	xchg   %eax,%edx
 837:	04 00                	add    $0x0,%al
 839:	00 05 89 17 00 00    	add    %al,0x1789(%rip)        # 1fc8 <main+0x8e8>
 83f:	9d                   	popfq  
 840:	04 00                	add    $0x0,%al
 842:	00 05 fd 18 00 00    	add    %al,0x18fd(%rip)        # 2145 <main+0xa65>
 848:	a8 04                	test   $0x4,%al
 84a:	00 00                	add    %al,(%rax)
 84c:	06                   	(bad)  
 84d:	a0 10 00 00 05 cb 17 	movabs 0x17cb05000010,%al
 854:	00 00 
 856:	b4 04                	mov    $0x4,%ah
 858:	00 00                	add    %al,(%rax)
 85a:	00 00                	add    %al,(%rax)
 85c:	1c 77                	sbb    $0x77,%al
 85e:	09 00                	or     %eax,(%rax)
 860:	00 1a                	add    %bl,(%rdx)
 862:	17                   	(bad)  
 863:	00 00                	add    %al,(%rax)
 865:	00 00                	add    %al,(%rax)
 867:	00 00                	add    %al,(%rax)
 869:	1d 01 54 02 73       	sbb    $0x73025401,%eax
 86e:	00 1d 01 55 02 10    	add    %bl,0x10025501(%rip)        # 10025d75 <_end+0x10020d1d>
 874:	40 00 1c 77          	add    %bl,(%rdi,%rsi,2)
 878:	09 00                	or     %eax,(%rax)
 87a:	00 2a                	add    %ch,(%rdx)
 87c:	17                   	(bad)  
 87d:	00 00                	add    %al,(%rax)
 87f:	00 00                	add    %al,(%rax)
 881:	00 00                	add    %al,(%rax)
 883:	1d 01 54 02 73       	sbb    $0x73025401,%eax
 888:	00 1d 01 55 02 10    	add    %bl,0x10025501(%rip)        # 10025d8f <_end+0x10020d37>
 88e:	40 00 1c 88          	add    %bl,(%rax,%rcx,4)
 892:	01 00                	add    %eax,(%rax)
 894:	00 a3 1a 00 00 00    	add    %ah,0x1a(%rbx)
 89a:	00 00                	add    %al,(%rax)
 89c:	00 1d 01 51 02 7f    	add    %bl,0x7f025101(%rip)        # 7f0259a3 <_end+0x7f02094b>
 8a2:	00 1d 01 54 02 73    	add    %bl,0x73025401(%rip)        # 73025ca9 <_end+0x73020c51>
 8a8:	00 1d 01 55 02 7e    	add    %bl,0x7e025501(%rip)        # 7e025daf <_end+0x7e020d57>
 8ae:	00 00                	add    %al,(%rax)
 8b0:	1c 04                	sbb    $0x4,%al
 8b2:	02 00                	add    (%rax),%al
 8b4:	00 b7 1a 00 00 00    	add    %dh,0x1a(%rdi)
 8ba:	00 00                	add    %al,(%rax)
 8bc:	00 1d 01 51 02 7f    	add    %bl,0x7f025101(%rip)        # 7f0259c3 <_end+0x7f02096b>
 8c2:	00 1d 01 54 02 73    	add    %bl,0x73025401(%rip)        # 73025cc9 <_end+0x73020c71>
 8c8:	00 1d 01 55 02 7e    	add    %bl,0x7e025501(%rip)        # 7e025dcf <_end+0x7e020d77>
 8ce:	00 00                	add    %al,(%rax)
 8d0:	1c 96                	sbb    $0x96,%al
 8d2:	09 00                	or     %eax,(%rax)
 8d4:	00 25 1b 00 00 00    	add    %ah,0x1b(%rip)        # 8f5 <__abi_tag+0x631>
 8da:	00 00                	add    %al,(%rax)
 8dc:	00 1d 01 55 02 7e    	add    %bl,0x7e025501(%rip)        # 7e025de3 <_end+0x7e020d8b>
 8e2:	00 00                	add    %al,(%rax)
 8e4:	1c 96                	sbb    $0x96,%al
 8e6:	09 00                	or     %eax,(%rax)
 8e8:	00 2d 1b 00 00 00    	add    %ch,0x1b(%rip)        # 909 <__abi_tag+0x645>
 8ee:	00 00                	add    %al,(%rax)
 8f0:	00 1d 01 55 02 73    	add    %bl,0x73025501(%rip)        # 73025df7 <_end+0x73020d9f>
 8f6:	00 00                	add    %al,(%rax)
 8f8:	1c 77                	sbb    $0x77,%al
 8fa:	09 00                	or     %eax,(%rax)
 8fc:	00 3c 1b             	add    %bh,(%rbx,%rbx,1)
 8ff:	00 00                	add    %al,(%rax)
 901:	00 00                	add    %al,(%rax)
 903:	00 00                	add    %al,(%rax)
 905:	1d 01 54 03 10       	sbb    $0x10035401,%eax
 90a:	a0 06 1d 01 55 02 10 	movabs 0x40100255011d06,%al
 911:	40 00 
 913:	1c 77                	sbb    $0x77,%al
 915:	09 00                	or     %eax,(%rax)
 917:	00 4e 1b             	add    %cl,0x1b(%rsi)
 91a:	00 00                	add    %al,(%rax)
 91c:	00 00                	add    %al,(%rax)
 91e:	00 00                	add    %al,(%rax)
 920:	1d 01 54 03 10       	sbb    $0x10035401,%eax
 925:	a0 06 1d 01 55 02 10 	movabs 0x40100255011d06,%al
 92c:	40 00 
 92e:	1c 04                	sbb    $0x4,%al
 930:	02 00                	add    (%rax),%al
 932:	00 4e 25             	add    %cl,0x25(%rsi)
 935:	00 00                	add    %al,(%rax)
 937:	00 00                	add    %al,(%rax)
 939:	00 00                	add    %al,(%rax)
 93b:	1d 01 54 02 73       	sbb    $0x73025401,%eax
 940:	00 1d 01 55 02 7e    	add    %bl,0x7e025501(%rip)        # 7e025e47 <_end+0x7e020def>
 946:	00 1d 01 51 02 10    	add    %bl,0x10025101(%rip)        # 10025a4d <_end+0x100209f5>
 94c:	64 00 1c 96          	add    %bl,%fs:(%rsi,%rdx,4)
 950:	09 00                	or     %eax,(%rax)
 952:	00 bb 25 00 00 00    	add    %bh,0x25(%rbx)
 958:	00 00                	add    %al,(%rax)
 95a:	00 1d 01 55 02 7e    	add    %bl,0x7e025501(%rip)        # 7e025e61 <_end+0x7e020e09>
 960:	00 00                	add    %al,(%rax)
 962:	1c 96                	sbb    $0x96,%al
 964:	09 00                	or     %eax,(%rax)
 966:	00 c3                	add    %al,%bl
 968:	25 00 00 00 00       	and    $0x0,%eax
 96d:	00 00                	add    %al,(%rax)
 96f:	1d 01 55 02 73       	sbb    $0x73025501,%eax
 974:	00 00                	add    %al,(%rax)
 976:	00 1e                	add    %bl,(%rsi)
 978:	d0 00                	rolb   (%rax)
 97a:	00 00                	add    %al,(%rax)
 97c:	02 4a 02             	add    0x2(%rdx),%cl
 97f:	8e 09                	mov    (%rcx),%cs
 981:	00 00                	add    %al,(%rax)
 983:	1f                   	(bad)  
 984:	8f 09 00 00          	(bad)
 988:	1f                   	(bad)  
 989:	8f 09 00 00          	(bad)
 98d:	00 20                	add    %ah,(%rax)
 98f:	0f 4f 00             	cmovg  (%rax),%eax
 992:	00 00                	add    %al,(%rax)
 994:	07                   	(bad)  
 995:	08 21                	or     %ah,(%rcx)
 997:	de 00                	fiadds (%rax)
 999:	00 00                	add    %al,(%rax)
 99b:	02 35 02 1f 8e 09    	add    0x98e1f02(%rip),%dh        # 98e28a3 <_end+0x98dd84b>
 9a1:	00 00                	add    %al,(%rax)
 9a3:	00 14 39             	add    %dl,(%rcx,%rdi,1)
 9a6:	03 00                	add    (%rax),%eax
 9a8:	00 15 ac 03 00 00    	add    %dl,0x3ac(%rip)        # d5a <__abi_tag+0xa96>
 9ae:	10 00                	adc    %al,(%rax)
	...

Déassemblage de la section .debug_abbrev :

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 05 03    	add    %esp,0x305130e(%rip)        # 3051316 <_end+0x304c2be>
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
  23:	03 05 00 02 17 31    	add    0x31170200(%rip),%eax        # 31170229 <_end+0x3116b1d1>
  29:	13 00                	adc    (%rax),%eax
  2b:	00 04 05 00 02 18 31 	add    %al,0x31180200(,%rax,1)
  32:	13 00                	adc    (%rax),%eax
  34:	00 05 34 00 02 17    	add    %al,0x17020034(%rip)        # 1702006e <_end+0x1701b016>
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
  99:	00 0d 2e 01 03 0e    	add    %cl,0xe03012e(%rip)        # e0301cd <_end+0xe02b175>
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
 132:	34 00                	xor    $0x0,%al
 134:	02 18                	add    (%rax),%bl
 136:	31 13                	xor    %edx,(%rbx)
 138:	00 00                	add    %al,(%rax)
 13a:	1b 34 00             	sbb    (%rax,%rax,1),%esi
 13d:	1c 0f                	sbb    $0xf,%al
 13f:	31 13                	xor    %edx,(%rbx)
 141:	00 00                	add    %al,(%rax)
 143:	1c 89                	sbb    $0x89,%al
 145:	82                   	(bad)  
 146:	01 01                	add    %eax,(%rcx)
 148:	31 13                	xor    %edx,(%rbx)
 14a:	11 01                	adc    %eax,(%rcx)
 14c:	00 00                	add    %al,(%rax)
 14e:	1d 8a 82 01 00       	sbb    $0x1828a,%eax
 153:	02 18                	add    (%rax),%bl
 155:	91                   	xchg   %eax,%ecx
 156:	42 18 00             	rex.X sbb %al,(%rax)
 159:	00 1e                	add    %bl,(%rsi)
 15b:	2e 01 03             	add    %eax,%cs:(%rbx)
 15e:	0e                   	(bad)  
 15f:	3a 0b                	cmp    (%rbx),%cl
 161:	3b 05 27 19 49 13    	cmp    0x13491927(%rip),%eax        # 13491a8e <_end+0x1348ca36>
 167:	3c 19                	cmp    $0x19,%al
 169:	3f                   	(bad)  
 16a:	19 00                	sbb    %eax,(%rax)
 16c:	00 1f                	add    %bl,(%rdi)
 16e:	05 00 49 13 00       	add    $0x134900,%eax
 173:	00 20                	add    %ah,(%rax)
 175:	0f 00 00             	sldt   (%rax)
 178:	00 21                	add    %ah,(%rcx)
 17a:	2e 01 03             	add    %eax,%cs:(%rbx)
 17d:	0e                   	(bad)  
 17e:	3a 0b                	cmp    (%rbx),%cl
 180:	3b 05 27 19 3c 19    	cmp    0x193c1927(%rip),%eax        # 193c1aad <_end+0x193bca55>
 186:	3f                   	(bad)  
 187:	19 00                	sbb    %eax,(%rax)
	...

Déassemblage de la section .debug_line :

0000000000000000 <.debug_line>:
   0:	f0 09 00             	lock or %eax,(%rax)
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
  5b:	31 05 0a 06 4a 05    	xor    %eax,0x54a060a(%rip)        # 54a066b <_end+0x549b613>
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
  a1:	81 05 03 06 4a 05 0a 	addl   $0xc908060a,0x54a0603(%rip)        # 54a06ae <_end+0x549b656>
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
  ff:	20 05 07 06 ac 03    	and    %al,0x3ac0607(%rip)        # 3ac070c <_end+0x3abb6b4>
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
 181:	32 05 07 06 4a 05    	xor    0x54a0607(%rip),%al        # 54a078e <_end+0x549b736>
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
 32c:	86 05 0c 4b 05 11    	xchg   %al,0x11054b0c(%rip)        # 11054e3e <_end+0x1104fde6>
 332:	06                   	(bad)  
 333:	58                   	pop    %rax
 334:	05 09 58 05 34       	add    $0x34055809,%eax
 339:	06                   	(bad)  
 33a:	49 05 2f 06 4a 03    	rex.WB add $0x34a062f,%rax
 340:	e9 7e 74 05 0a       	jmpq   a0577c3 <_end+0xa05276b>
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
 390:	69 05 0a 06 4a 05 23 	imul   $0x99030623,0x54a060a(%rip),%eax        # 54a09a4 <_end+0x549b94c>
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
 426:	81 05 03 06 4a 05 0a 	addl   $0x9108060a,0x54a0603(%rip)        # 54a0a33 <_end+0x549b9db>
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
 538:	01 66 06             	add    %esp,0x6(%rsi)
 53b:	03 cf                	add    %edi,%ecx
 53d:	7e d6                	jle    515 <__abi_tag+0x251>
 53f:	05 03 06 03 b4       	add    $0xb4030603,%eax
 544:	01 58 08             	add    %ebx,0x8(%rax)
 547:	3d 08 2f 08 2f       	cmp    $0x2f082f08,%eax
 54c:	08 3d 08 31 83 05    	or     %bh,0x5833108(%rip)        # 583365a <_end+0x582e602>
 552:	0f 88 08 21 05 0c    	js     c052660 <_end+0xc04d608>
 558:	03 d2                	add    %edx,%edx
 55a:	7e 08                	jle    564 <__abi_tag+0x2a0>
 55c:	20 c9                	and    %cl,%cl
 55e:	b9 67 57 67 57       	mov    $0x57675767,%ecx
 563:	67 57                	addr32 push %rdi
 565:	67 57                	addr32 push %rdi
 567:	67 57                	addr32 push %rdi
 569:	67 57                	addr32 push %rdi
 56b:	67 57                	addr32 push %rdi
 56d:	91                   	xchg   %eax,%ecx
 56e:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 575:	91 81 91 
 578:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 57f:	91 81 91 
 582:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 589:	91 81 91 
 58c:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 593:	91 81 91 
 596:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 59d:	91 81 91 
 5a0:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 5a7:	91 81 91 
 5aa:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 5b1:	91 81 91 
 5b4:	81 91 81 91 81 91 81 	adcl   $0x91819181,-0x6e7e6e7f(%rcx)
 5bb:	91 81 91 
 5be:	81 91 05 0a 03 0a 08 	adcl   $0xf056608,0xa030a05(%rcx)
 5c5:	66 05 0f 
 5c8:	06                   	(bad)  
 5c9:	d6                   	(bad)  
 5ca:	05 07 ba 05 0a       	add    $0xa05ba07,%eax
 5cf:	4a 05 0f 74 05 07    	rex.WX add $0x705740f,%rax
 5d5:	66 05 0a 4a          	add    $0x4a0a,%ax
 5d9:	05 0f 74 05 07       	add    $0x705740f,%eax
 5de:	66 05 0a 4a          	add    $0x4a0a,%ax
 5e2:	05 0f 66 05 07       	add    $0x705660f,%eax
 5e7:	58                   	pop    %rax
 5e8:	05 24 06 81 05       	add    $0x5810624,%eax
 5ed:	03 06                	add    (%rsi),%eax
 5ef:	82                   	(bad)  
 5f0:	03 61 2e             	add    0x2e(%rcx),%esp
 5f3:	05 0c 06 03 3b       	add    $0x3b03060c,%eax
 5f8:	66 05 11 06          	add    $0x611,%ax
 5fc:	08 66 05             	or     %ah,0x5(%rsi)
 5ff:	09 4a 05             	or     %ecx,0x5(%rdx)
 602:	11 82 05 09 58 05    	adc    %eax,0x5580905(%rdx)
 608:	11 82 05 09 ac 05    	adc    %eax,0x5ac0905(%rdx)
 60e:	0c 4a                	or     $0x4a,%al
 610:	05 11 66 05 09       	add    $0x9056611,%eax
 615:	66 05 0c 06          	add    $0x60c,%ax
 619:	03 12                	add    (%rdx),%edx
 61b:	9e                   	sahf   
 61c:	48 84 03             	rex.W test %al,(%rbx)
 61f:	1b 90 4c 03 51 58    	sbb    0x5851034c(%rax),%edx
 625:	05 11 06 66 05       	add    $0x5660611,%eax
 62a:	09 58 05             	or     %ebx,0x5(%rax)
 62d:	0c 06                	or     $0x6,%al
 62f:	03 10                	add    (%rax),%edx
 631:	4a 03 19             	rex.WX add (%rcx),%rbx
 634:	58                   	pop    %rax
 635:	03 57 58             	add    0x58(%rdi),%edx
 638:	05 11 06 66 05       	add    $0x5660611,%eax
 63d:	09 58 05             	or     %ebx,0x5(%rax)
 640:	0c 06                	or     $0x6,%al
 642:	03 12                	add    (%rdx),%edx
 644:	4a 03 19             	rex.WX add (%rcx),%rbx
 647:	4a 03 55 4a          	rex.WX add 0x4a(%rbp),%rdx
 64b:	05 11 06 66 05       	add    $0x5660611,%eax
 650:	09 58 05             	or     %ebx,0x5(%rax)
 653:	0c 06                	or     $0x6,%al
 655:	03 10                	add    (%rax),%edx
 657:	4a 03 1d 4a 03 53 4a 	rex.WX add 0x4a53034a(%rip),%rbx        # 4a5309a8 <_end+0x4a52b950>
 65e:	05 11 06 90 05       	add    $0x5900611,%eax
 663:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 669:	12 4a 03             	adc    0x3(%rdx),%cl
 66c:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 671:	05 11 06 90 05       	add    $0x5900611,%eax
 676:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 67c:	10 4a 03             	adc    %cl,0x3(%rdx)
 67f:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 682:	57                   	push   %rdi
 683:	58                   	pop    %rax
 684:	05 11 06 90 05       	add    $0x5900611,%eax
 689:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 68f:	12 4a 03             	adc    0x3(%rdx),%cl
 692:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 695:	55                   	push   %rbp
 696:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 69c:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 6a2:	10 4a 03             	adc    %cl,0x3(%rdx)
 6a5:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 6aa:	05 11 06 90 05       	add    $0x5900611,%eax
 6af:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 6b5:	12 4a 03             	adc    0x3(%rdx),%cl
 6b8:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 6bd:	05 11 06 90 05       	add    $0x5900611,%eax
 6c2:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 6c8:	10 4a 03             	adc    %cl,0x3(%rdx)
 6cb:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 6ce:	57                   	push   %rdi
 6cf:	58                   	pop    %rax
 6d0:	05 11 06 90 05       	add    $0x5900611,%eax
 6d5:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 6db:	12 4a 03             	adc    0x3(%rdx),%cl
 6de:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 6e1:	55                   	push   %rbp
 6e2:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 6e8:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 6ee:	10 4a 03             	adc    %cl,0x3(%rdx)
 6f1:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 6f6:	05 11 06 90 05       	add    $0x5900611,%eax
 6fb:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 701:	12 4a 03             	adc    0x3(%rdx),%cl
 704:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 709:	05 11 06 90 05       	add    $0x5900611,%eax
 70e:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 714:	10 4a 03             	adc    %cl,0x3(%rdx)
 717:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 71a:	57                   	push   %rdi
 71b:	58                   	pop    %rax
 71c:	05 11 06 90 05       	add    $0x5900611,%eax
 721:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 727:	12 4a 03             	adc    0x3(%rdx),%cl
 72a:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 72d:	55                   	push   %rbp
 72e:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 734:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 73a:	10 4a 03             	adc    %cl,0x3(%rdx)
 73d:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 742:	05 11 06 90 05       	add    $0x5900611,%eax
 747:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 74d:	12 4a 03             	adc    0x3(%rdx),%cl
 750:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 755:	05 11 06 90 05       	add    $0x5900611,%eax
 75a:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 760:	10 4a 03             	adc    %cl,0x3(%rdx)
 763:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 766:	57                   	push   %rdi
 767:	58                   	pop    %rax
 768:	05 11 06 90 05       	add    $0x5900611,%eax
 76d:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 773:	12 4a 03             	adc    0x3(%rdx),%cl
 776:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 779:	55                   	push   %rbp
 77a:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 780:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 786:	10 4a 03             	adc    %cl,0x3(%rdx)
 789:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 78e:	05 11 06 90 05       	add    $0x5900611,%eax
 793:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 799:	12 4a 03             	adc    0x3(%rdx),%cl
 79c:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 7a1:	05 11 06 90 05       	add    $0x5900611,%eax
 7a6:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 7ac:	10 4a 03             	adc    %cl,0x3(%rdx)
 7af:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 7b2:	57                   	push   %rdi
 7b3:	58                   	pop    %rax
 7b4:	05 11 06 90 05       	add    $0x5900611,%eax
 7b9:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 7bf:	12 4a 03             	adc    0x3(%rdx),%cl
 7c2:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 7c5:	55                   	push   %rbp
 7c6:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 7cc:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 7d2:	10 4a 03             	adc    %cl,0x3(%rdx)
 7d5:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 7da:	05 11 06 90 05       	add    $0x5900611,%eax
 7df:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 7e5:	12 4a 03             	adc    0x3(%rdx),%cl
 7e8:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 7ed:	05 11 06 90 05       	add    $0x5900611,%eax
 7f2:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 7f8:	10 4a 03             	adc    %cl,0x3(%rdx)
 7fb:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 7fe:	57                   	push   %rdi
 7ff:	58                   	pop    %rax
 800:	05 11 06 90 05       	add    $0x5900611,%eax
 805:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 80b:	12 4a 03             	adc    0x3(%rdx),%cl
 80e:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 811:	55                   	push   %rbp
 812:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 818:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 81e:	10 4a 03             	adc    %cl,0x3(%rdx)
 821:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 826:	05 11 06 90 05       	add    $0x5900611,%eax
 82b:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 831:	12 4a 03             	adc    0x3(%rdx),%cl
 834:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 839:	05 11 06 90 05       	add    $0x5900611,%eax
 83e:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 844:	10 4a 03             	adc    %cl,0x3(%rdx)
 847:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 84a:	57                   	push   %rdi
 84b:	58                   	pop    %rax
 84c:	05 11 06 90 05       	add    $0x5900611,%eax
 851:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 857:	12 4a 03             	adc    0x3(%rdx),%cl
 85a:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 85d:	55                   	push   %rbp
 85e:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 864:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 86a:	10 4a 03             	adc    %cl,0x3(%rdx)
 86d:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 872:	05 11 06 90 05       	add    $0x5900611,%eax
 877:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 87d:	12 4a 03             	adc    0x3(%rdx),%cl
 880:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 885:	05 11 06 90 05       	add    $0x5900611,%eax
 88a:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 890:	10 4a 03             	adc    %cl,0x3(%rdx)
 893:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 896:	57                   	push   %rdi
 897:	58                   	pop    %rax
 898:	05 11 06 90 05       	add    $0x5900611,%eax
 89d:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 8a3:	12 4a 03             	adc    0x3(%rdx),%cl
 8a6:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 8a9:	55                   	push   %rbp
 8aa:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 8b0:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 8b6:	10 4a 03             	adc    %cl,0x3(%rdx)
 8b9:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 8be:	05 11 06 90 05       	add    $0x5900611,%eax
 8c3:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 8c9:	12 4a 03             	adc    0x3(%rdx),%cl
 8cc:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 8d1:	05 11 06 90 05       	add    $0x5900611,%eax
 8d6:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 8dc:	10 4a 03             	adc    %cl,0x3(%rdx)
 8df:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 8e2:	57                   	push   %rdi
 8e3:	58                   	pop    %rax
 8e4:	05 11 06 90 05       	add    $0x5900611,%eax
 8e9:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 8ef:	12 4a 03             	adc    0x3(%rdx),%cl
 8f2:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 8f5:	55                   	push   %rbp
 8f6:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 8fc:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 902:	10 4a 03             	adc    %cl,0x3(%rdx)
 905:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 90a:	05 11 06 90 05       	add    $0x5900611,%eax
 90f:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 915:	12 4a 03             	adc    0x3(%rdx),%cl
 918:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 91d:	05 11 06 90 05       	add    $0x5900611,%eax
 922:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 928:	10 4a 03             	adc    %cl,0x3(%rdx)
 92b:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 92e:	57                   	push   %rdi
 92f:	58                   	pop    %rax
 930:	05 11 06 90 05       	add    $0x5900611,%eax
 935:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 93b:	12 4a 03             	adc    0x3(%rdx),%cl
 93e:	19 4a 03             	sbb    %ecx,0x3(%rdx)
 941:	55                   	push   %rbp
 942:	4a 05 11 06 90 05    	rex.WX add $0x5900611,%rax
 948:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 94e:	10 4a 03             	adc    %cl,0x3(%rdx)
 951:	1d 4a 03 53 4a       	sbb    $0x4a53034a,%eax
 956:	05 11 06 90 05       	add    $0x5900611,%eax
 95b:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 961:	12 4a 03             	adc    0x3(%rdx),%cl
 964:	1d 4a 03 51 58       	sbb    $0x5851034a,%eax
 969:	05 11 06 90 05       	add    $0x5900611,%eax
 96e:	09 82 05 0c 06 03    	or     %eax,0x3060c05(%rdx)
 974:	10 4a 03             	adc    %cl,0x3(%rdx)
 977:	19 4a 05             	sbb    %ecx,0x5(%rdx)
 97a:	0f 5c 05 18 06 90 05 	subps  0x5900618(%rip),%xmm0        # 5900f99 <_end+0x58fbf41>
 981:	0c 82                	or     $0x82,%al
 983:	05 0f 06 4c 05       	add    $0x54c060f,%eax
 988:	18 06                	sbb    %al,(%rsi)
 98a:	90                   	nop
 98b:	05 0c 06 03 63       	add    $0x6303060c,%eax
 990:	82                   	(bad)  
 991:	03 1d 4a 03 6c 58    	add    0x586c034a(%rip),%ebx        # 586c0ce1 <_end+0x586bbc89>
 997:	03 10                	add    (%rax),%edx
 999:	90                   	nop
 99a:	05 11 03 70 4a       	add    $0x4a700311,%eax
 99f:	05 09 06 82 05       	add    $0x5820609,%eax
 9a4:	0f 06                	clts   
 9a6:	f5                   	cmc    
 9a7:	05 16 06 82 05       	add    $0x5820616,%eax
 9ac:	1d 4a 03 a7 7f       	sbb    $0x7fa7034a,%eax
 9b1:	82                   	(bad)  
 9b2:	05 13 06 03 3f       	add    $0x3f030613,%eax
 9b7:	66 06                	data16 (bad) 
 9b9:	03 41 ba             	add    -0x46(%rcx),%eax
 9bc:	05 39 06 03 f6       	add    $0xf6030639,%eax
 9c1:	00 66 06             	add    %ah,0x6(%rsi)
 9c4:	03 8a 7f 02 33 01    	add    0x133027f(%rdx),%ecx
 9ca:	05 0d 06 03 cd       	add    $0xcd03060d,%eax
 9cf:	01 66 06             	add    %esp,0x6(%rsi)
 9d2:	03 b3 7e f2 05 03    	add    0x305f27e(%rbx),%esi
 9d8:	06                   	(bad)  
 9d9:	03 d0                	add    %eax,%edx
 9db:	01 58 08             	add    %ebx,0x8(%rax)
 9de:	3d 08 2f 08 2f       	cmp    $0x2f082f08,%eax
 9e3:	08 2f                	or     %ch,(%rdi)
 9e5:	08 31                	or     %dh,(%rcx)
 9e7:	83 84 05 05 03 b1 7e 	addl   $0xffffffba,0x7eb10305(%rbp,%rax,1)
 9ee:	ba 
 9ef:	02 0a                	add    (%rdx),%cl
 9f1:	00 01                	add    %al,(%rcx)
 9f3:	01                   	.byte 0x1

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
     23d:	00 05 00 72 00 31    	add    %al,0x31007200(%rip)        # 31007443 <_end+0x310023eb>
     243:	21 9f 8a 00 00 00    	and    %ebx,0x8a(%rdi)
     249:	00 00                	add    %al,(%rax)
     24b:	00 00                	add    %al,(%rax)
     24d:	9a                   	(bad)  
     24e:	00 00                	add    %al,(%rax)
     250:	00 00                	add    %al,(%rax)
     252:	00 00                	add    %al,(%rax)
     254:	00 05 00 72 00 32    	add    %al,0x32007200(%rip)        # 3200745a <_end+0x32002402>
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
     7be:	4f 14 00             	rex.WRXB adc $0x0,%al
     7c1:	00 00                	add    %al,(%rax)
     7c3:	00 00                	add    %al,(%rax)
     7c5:	00 04 00             	add    %al,(%rax,%rax,1)
     7c8:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
     7cc:	4f 14 00             	rex.WRXB adc $0x0,%al
     7cf:	00 00                	add    %al,(%rax)
     7d1:	00 00                	add    %al,(%rax)
     7d3:	00 54 14 00          	add    %dl,0x0(%rsp,%rdx,1)
     7d7:	00 00                	add    %al,(%rax)
     7d9:	00 00                	add    %al,(%rax)
     7db:	00 01                	add    %al,(%rcx)
     7dd:	00 55 54             	add    %dl,0x54(%rbp)
     7e0:	14 00                	adc    $0x0,%al
     7e2:	00 00                	add    %al,(%rax)
     7e4:	00 00                	add    %al,(%rax)
     7e6:	00 59 14             	add    %bl,0x14(%rcx)
     7e9:	00 00                	add    %al,(%rax)
     7eb:	00 00                	add    %al,(%rax)
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
     820:	4f 14 00             	rex.WRXB adc $0x0,%al
     823:	00 00                	add    %al,(%rax)
     825:	00 00                	add    %al,(%rax)
     827:	00 04 00             	add    %al,(%rax,%rax,1)
     82a:	f3 01 54 9f 4f       	repz add %edx,0x4f(%rdi,%rbx,4)
     82f:	14 00                	adc    $0x0,%al
     831:	00 00                	add    %al,(%rax)
     833:	00 00                	add    %al,(%rax)
     835:	00 59 14             	add    %bl,0x14(%rcx)
     838:	00 00                	add    %al,(%rax)
     83a:	00 00                	add    %al,(%rax)
     83c:	00 00                	add    %al,(%rax)
     83e:	01 00                	add    %eax,(%rax)
     840:	54                   	push   %rsp
     841:	59                   	pop    %rcx
     842:	14 00                	adc    $0x0,%al
     844:	00 00                	add    %al,(%rax)
     846:	00 00                	add    %al,(%rax)
     848:	00 59 14             	add    %bl,0x14(%rcx)
     84b:	00 00                	add    %al,(%rax)
     84d:	00 00                	add    %al,(%rax)
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
     87a:	4f 14 00             	rex.WRXB adc $0x0,%al
     87d:	00 00                	add    %al,(%rax)
     87f:	00 00                	add    %al,(%rax)
     881:	00 54 14 00          	add    %dl,0x0(%rsp,%rdx,1)
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
     8b0:	4f 14 00             	rex.WRXB adc $0x0,%al
     8b3:	00 00                	add    %al,(%rax)
     8b5:	00 00                	add    %al,(%rax)
     8b7:	00 59 14             	add    %bl,0x14(%rcx)
     8ba:	00 00                	add    %al,(%rax)
     8bc:	00 00                	add    %al,(%rax)
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
     8ed:	00 4f 14             	add    %cl,0x14(%rdi)
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
     d20:	7f 13                	jg     d35 <__abi_tag+0xa71>
     d22:	00 00                	add    %al,(%rax)
     d24:	00 00                	add    %al,(%rax)
     d26:	00 00                	add    %al,(%rax)
     d28:	85 13                	test   %edx,(%rbx)
     d2a:	00 00                	add    %al,(%rax)
     d2c:	00 00                	add    %al,(%rax)
     d2e:	00 00                	add    %al,(%rax)
     d30:	01 00                	add    %eax,(%rax)
     d32:	61                   	(bad)  
     d33:	85 13                	test   %edx,(%rbx)
     d35:	00 00                	add    %al,(%rax)
     d37:	00 00                	add    %al,(%rax)
     d39:	00 00                	add    %al,(%rax)
     d3b:	4f 14 00             	rex.WRXB adc $0x0,%al
     d3e:	00 00                	add    %al,(%rax)
     d40:	00 00                	add    %al,(%rax)
     d42:	00 02                	add    %al,(%rdx)
     d44:	00 77 20             	add    %dh,0x20(%rdi)
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
     e3e:	0a 0d 00 00 00 00    	or     0x0(%rip),%cl        # e44 <__abi_tag+0xb80>
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
     f16:	00 2f                	add    %ch,(%rdi)
     f18:	13 00                	adc    (%rax),%eax
     f1a:	00 00                	add    %al,(%rax)
     f1c:	00 00                	add    %al,(%rax)
     f1e:	00 02                	add    %al,(%rdx)
     f20:	00 77 10             	add    %dh,0x10(%rdi)
     f23:	6d                   	insl   (%dx),%es:(%rdi)
     f24:	13 00                	adc    (%rax),%eax
     f26:	00 00                	add    %al,(%rax)
     f28:	00 00                	add    %al,(%rax)
     f2a:	00 73 13             	add    %dh,0x13(%rbx)
     f2d:	00 00                	add    %al,(%rax)
     f2f:	00 00                	add    %al,(%rax)
     f31:	00 00                	add    %al,(%rax)
     f33:	01 00                	add    %eax,(%rax)
     f35:	61                   	(bad)  
     f36:	73 13                	jae    f4b <__abi_tag+0xc87>
     f38:	00 00                	add    %al,(%rax)
     f3a:	00 00                	add    %al,(%rax)
     f3c:	00 00                	add    %al,(%rax)
     f3e:	4f 14 00             	rex.WRXB adc $0x0,%al
     f41:	00 00                	add    %al,(%rax)
     f43:	00 00                	add    %al,(%rax)
     f45:	00 02                	add    %al,(%rdx)
     f47:	00 77 30             	add    %dh,0x30(%rdi)
	...
     f5a:	29 09                	sub    %ecx,(%rcx)
     f5c:	00 00                	add    %al,(%rax)
     f5e:	00 00                	add    %al,(%rax)
     f60:	00 00                	add    %al,(%rax)
     f62:	b8 13 00 00 00       	mov    $0x13,%eax
     f67:	00 00                	add    %al,(%rax)
     f69:	00 02                	add    %al,(%rdx)
     f6b:	00 77 20             	add    %dh,0x20(%rdi)
     f6e:	b8 13 00 00 00       	mov    $0x13,%eax
     f73:	00 00                	add    %al,(%rax)
     f75:	00 be 13 00 00 00    	add    %bh,0x13(%rsi)
     f7b:	00 00                	add    %al,(%rax)
     f7d:	00 01                	add    %al,(%rcx)
     f7f:	00 65 be             	add    %ah,-0x42(%rbp)
     f82:	13 00                	adc    (%rax),%eax
     f84:	00 00                	add    %al,(%rax)
     f86:	00 00                	add    %al,(%rax)
     f88:	00 4f 14             	add    %cl,0x14(%rdi)
     f8b:	00 00                	add    %al,(%rax)
     f8d:	00 00                	add    %al,(%rax)
     f8f:	00 00                	add    %al,(%rax)
     f91:	02 00                	add    (%rax),%al
     f93:	77 10                	ja     fa5 <__abi_tag+0xce1>
	...
     fa5:	3c 09                	cmp    $0x9,%al
     fa7:	00 00                	add    %al,(%rax)
     fa9:	00 00                	add    %al,(%rax)
     fab:	00 00                	add    %al,(%rax)
     fad:	4f 14 00             	rex.WRXB adc $0x0,%al
     fb0:	00 00                	add    %al,(%rax)
     fb2:	00 00                	add    %al,(%rax)
     fb4:	00 02                	add    %al,(%rdx)
     fb6:	00 77 00             	add    %dh,0x0(%rdi)
	...
     fc9:	bf 09 00 00 00       	mov    $0x9,%edi
     fce:	00 00                	add    %al,(%rax)
     fd0:	00 4c 14 00          	add    %cl,0x0(%rsp,%rdx,1)
     fd4:	00 00                	add    %al,(%rax)
     fd6:	00 00                	add    %al,(%rax)
     fd8:	00 01                	add    %al,(%rcx)
     fda:	00 5e 00             	add    %bl,0x0(%rsi)
	...
     fe9:	00 00                	add    %al,(%rax)
     feb:	00 d1                	add    %dl,%cl
     fed:	09 00                	or     %eax,(%rax)
     fef:	00 00                	add    %al,(%rax)
     ff1:	00 00                	add    %al,(%rax)
     ff3:	00 0a                	add    %cl,(%rdx)
     ff5:	0d 00 00 00 00       	or     $0x0,%eax
     ffa:	00 00                	add    %al,(%rax)
     ffc:	02 00                	add    (%rax),%al
     ffe:	30 9f 00 00 00 00    	xor    %bl,0x0(%rdi)
	...
    1010:	d1 09                	rorl   (%rcx)
    1012:	00 00                	add    %al,(%rax)
    1014:	00 00                	add    %al,(%rax)
    1016:	00 00                	add    %al,(%rax)
    1018:	0a 0d 00 00 00 00    	or     0x0(%rip),%cl        # 101e <_init+0x1e>
    101e:	00 00                	add    %al,(%rax)
    1020:	03 00                	add    (%rax),%eax
    1022:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
    1032:	00 00                	add    %al,(%rax)
    1034:	00 d1                	add    %dl,%cl
    1036:	09 00                	or     %eax,(%rax)
    1038:	00 00                	add    %al,(%rax)
    103a:	00 00                	add    %al,(%rax)
    103c:	00 0a                	add    %cl,(%rdx)
    103e:	0d 00 00 00 00       	or     $0x0,%eax
    1043:	00 00                	add    %al,(%rax)
    1045:	01 00                	add    %eax,(%rax)
    1047:	53                   	push   %rbx
	...
    1058:	d1 09                	rorl   (%rcx)
    105a:	00 00                	add    %al,(%rax)
    105c:	00 00                	add    %al,(%rax)
    105e:	00 00                	add    %al,(%rax)
    1060:	4a 14 00             	rex.WX adc $0x0,%al
    1063:	00 00                	add    %al,(%rax)
    1065:	00 00                	add    %al,(%rax)
    1067:	00 01                	add    %al,(%rcx)
    1069:	00 53 00             	add    %dl,0x0(%rbx)
	...
    1078:	00 00                	add    %al,(%rax)
    107a:	00 d1                	add    %dl,%cl
    107c:	09 00                	or     %eax,(%rax)
    107e:	00 00                	add    %al,(%rax)
    1080:	00 00                	add    %al,(%rax)
    1082:	00 0a                	add    %cl,(%rdx)
    1084:	0d 00 00 00 00       	or     $0x0,%eax
    1089:	00 00                	add    %al,(%rax)
    108b:	01 00                	add    %eax,(%rax)
    108d:	5e                   	pop    %rsi
	...
    109e:	0a 0d 00 00 00 00    	or     0x0(%rip),%cl        # 10a4 <_start+0x24>
    10a4:	00 00                	add    %al,(%rax)
    10a6:	2e 0d 00 00 00 00    	cs or  $0x0,%eax
    10ac:	00 00                	add    %al,(%rax)
    10ae:	01 00                	add    %eax,(%rax)
    10b0:	64 2e 0d 00 00 00 00 	fs cs or $0x0,%eax
    10b7:	00 00                	add    %al,(%rax)
    10b9:	3f                   	(bad)  
    10ba:	0d 00 00 00 00       	or     $0x0,%eax
    10bf:	00 00                	add    %al,(%rax)
    10c1:	01 00                	add    %eax,(%rax)
    10c3:	61                   	(bad)  
    10c4:	3f                   	(bad)  
    10c5:	0d 00 00 00 00       	or     $0x0,%eax
    10ca:	00 00                	add    %al,(%rax)
    10cc:	50                   	push   %rax
    10cd:	0d 00 00 00 00       	or     $0x0,%eax
    10d2:	00 00                	add    %al,(%rax)
    10d4:	01 00                	add    %eax,(%rax)
    10d6:	62                   	(bad)  
    10d7:	50                   	push   %rax
    10d8:	0d 00 00 00 00       	or     $0x0,%eax
    10dd:	00 00                	add    %al,(%rax)
    10df:	5f                   	pop    %rdi
    10e0:	0d 00 00 00 00       	or     $0x0,%eax
    10e5:	00 00                	add    %al,(%rax)
    10e7:	01 00                	add    %eax,(%rax)
    10e9:	63 5f 0d             	movsxd 0xd(%rdi),%ebx
    10ec:	00 00                	add    %al,(%rax)
    10ee:	00 00                	add    %al,(%rax)
    10f0:	00 00                	add    %al,(%rax)
    10f2:	63 0d 00 00 00 00    	movsxd 0x0(%rip),%ecx        # 10f8 <register_tm_clones+0x18>
    10f8:	00 00                	add    %al,(%rax)
    10fa:	01 00                	add    %eax,(%rax)
    10fc:	61                   	(bad)  
    10fd:	63 0d 00 00 00 00    	movsxd 0x0(%rip),%ecx        # 1103 <register_tm_clones+0x23>
    1103:	00 00                	add    %al,(%rax)
    1105:	6d                   	insl   (%dx),%es:(%rdi)
    1106:	0d 00 00 00 00       	or     $0x0,%eax
    110b:	00 00                	add    %al,(%rax)
    110d:	01 00                	add    %eax,(%rax)
    110f:	64 00 00             	add    %al,%fs:(%rax)
	...
    111e:	00 00                	add    %al,(%rax)
    1120:	6d                   	insl   (%dx),%es:(%rdi)
    1121:	0d 00 00 00 00       	or     $0x0,%eax
    1126:	00 00                	add    %al,(%rax)
    1128:	78 0d                	js     1137 <__do_global_dtors_aux+0x17>
    112a:	00 00                	add    %al,(%rax)
    112c:	00 00                	add    %al,(%rax)
    112e:	00 00                	add    %al,(%rax)
    1130:	02 00                	add    (%rax),%al
    1132:	30 9f 78 0d 00 00    	xor    %bl,0xd78(%rdi)
    1138:	00 00                	add    %al,(%rax)
    113a:	00 00                	add    %al,(%rax)
    113c:	7e 0d                	jle    114b <__do_global_dtors_aux+0x2b>
    113e:	00 00                	add    %al,(%rax)
    1140:	00 00                	add    %al,(%rax)
    1142:	00 00                	add    %al,(%rax)
    1144:	02 00                	add    (%rax),%al
    1146:	32 9f 7e 0d 00 00    	xor    0xd7e(%rdi),%bl
    114c:	00 00                	add    %al,(%rax)
    114e:	00 00                	add    %al,(%rax)
    1150:	84 0d 00 00 00 00    	test   %cl,0x0(%rip)        # 1156 <__do_global_dtors_aux+0x36>
    1156:	00 00                	add    %al,(%rax)
    1158:	02 00                	add    (%rax),%al
    115a:	34 9f                	xor    $0x9f,%al
    115c:	84 0d 00 00 00 00    	test   %cl,0x0(%rip)        # 1162 <__do_global_dtors_aux+0x42>
    1162:	00 00                	add    %al,(%rax)
    1164:	c3                   	retq   
    1165:	0d 00 00 00 00       	or     $0x0,%eax
    116a:	00 00                	add    %al,(%rax)
    116c:	02 00                	add    (%rax),%al
    116e:	36 9f                	ss lahf 
    1170:	c3                   	retq   
    1171:	0d 00 00 00 00       	or     $0x0,%eax
    1176:	00 00                	add    %al,(%rax)
    1178:	c8 0d 00 00          	enterq $0xd,$0x0
    117c:	00 00                	add    %al,(%rax)
    117e:	00 00                	add    %al,(%rax)
    1180:	02 00                	add    (%rax),%al
    1182:	38 9f c8 0d 00 00    	cmp    %bl,0xdc8(%rdi)
    1188:	00 00                	add    %al,(%rax)
    118a:	00 00                	add    %al,(%rax)
    118c:	f5                   	cmc    
    118d:	0d 00 00 00 00       	or     $0x0,%eax
    1192:	00 00                	add    %al,(%rax)
    1194:	02 00                	add    (%rax),%al
    1196:	3a 9f f5 0d 00 00    	cmp    0xdf5(%rdi),%bl
    119c:	00 00                	add    %al,(%rax)
    119e:	00 00                	add    %al,(%rax)
    11a0:	0e                   	(bad)  
    11a1:	0e                   	(bad)  
    11a2:	00 00                	add    %al,(%rax)
    11a4:	00 00                	add    %al,(%rax)
    11a6:	00 00                	add    %al,(%rax)
    11a8:	02 00                	add    (%rax),%al
    11aa:	3c 9f                	cmp    $0x9f,%al
    11ac:	0e                   	(bad)  
    11ad:	0e                   	(bad)  
    11ae:	00 00                	add    %al,(%rax)
    11b0:	00 00                	add    %al,(%rax)
    11b2:	00 00                	add    %al,(%rax)
    11b4:	25 0e 00 00 00       	and    $0xe,%eax
    11b9:	00 00                	add    %al,(%rax)
    11bb:	00 02                	add    %al,(%rdx)
    11bd:	00 3e                	add    %bh,(%rsi)
    11bf:	9f                   	lahf   
    11c0:	25 0e 00 00 00       	and    $0xe,%eax
    11c5:	00 00                	add    %al,(%rax)
    11c7:	00 42 0e             	add    %al,0xe(%rdx)
    11ca:	00 00                	add    %al,(%rax)
    11cc:	00 00                	add    %al,(%rax)
    11ce:	00 00                	add    %al,(%rax)
    11d0:	02 00                	add    (%rax),%al
    11d2:	40 9f                	rex lahf 
    11d4:	42 0e                	rex.X (bad) 
    11d6:	00 00                	add    %al,(%rax)
    11d8:	00 00                	add    %al,(%rax)
    11da:	00 00                	add    %al,(%rax)
    11dc:	60                   	(bad)  
    11dd:	0e                   	(bad)  
    11de:	00 00                	add    %al,(%rax)
    11e0:	00 00                	add    %al,(%rax)
    11e2:	00 00                	add    %al,(%rax)
    11e4:	02 00                	add    (%rax),%al
    11e6:	42 9f                	rex.X lahf 
    11e8:	60                   	(bad)  
    11e9:	0e                   	(bad)  
    11ea:	00 00                	add    %al,(%rax)
    11ec:	00 00                	add    %al,(%rax)
    11ee:	00 00                	add    %al,(%rax)
    11f0:	7e 0e                	jle    1200 <dotprod+0x50>
    11f2:	00 00                	add    %al,(%rax)
    11f4:	00 00                	add    %al,(%rax)
    11f6:	00 00                	add    %al,(%rax)
    11f8:	02 00                	add    (%rax),%al
    11fa:	44 9f                	rex.R lahf 
    11fc:	7e 0e                	jle    120c <dotprod+0x5c>
    11fe:	00 00                	add    %al,(%rax)
    1200:	00 00                	add    %al,(%rax)
    1202:	00 00                	add    %al,(%rax)
    1204:	9b                   	fwait
    1205:	0e                   	(bad)  
    1206:	00 00                	add    %al,(%rax)
    1208:	00 00                	add    %al,(%rax)
    120a:	00 00                	add    %al,(%rax)
    120c:	02 00                	add    (%rax),%al
    120e:	46 9f                	rex.RX lahf 
    1210:	9b                   	fwait
    1211:	0e                   	(bad)  
    1212:	00 00                	add    %al,(%rax)
    1214:	00 00                	add    %al,(%rax)
    1216:	00 00                	add    %al,(%rax)
    1218:	b8 0e 00 00 00       	mov    $0xe,%eax
    121d:	00 00                	add    %al,(%rax)
    121f:	00 02                	add    %al,(%rdx)
    1221:	00 48 9f             	add    %cl,-0x61(%rax)
    1224:	b8 0e 00 00 00       	mov    $0xe,%eax
    1229:	00 00                	add    %al,(%rax)
    122b:	00 d6                	add    %dl,%dh
    122d:	0e                   	(bad)  
    122e:	00 00                	add    %al,(%rax)
    1230:	00 00                	add    %al,(%rax)
    1232:	00 00                	add    %al,(%rax)
    1234:	02 00                	add    (%rax),%al
    1236:	4a 9f                	rex.WX lahf 
    1238:	d6                   	(bad)  
    1239:	0e                   	(bad)  
    123a:	00 00                	add    %al,(%rax)
    123c:	00 00                	add    %al,(%rax)
    123e:	00 00                	add    %al,(%rax)
    1240:	f4                   	hlt    
    1241:	0e                   	(bad)  
    1242:	00 00                	add    %al,(%rax)
    1244:	00 00                	add    %al,(%rax)
    1246:	00 00                	add    %al,(%rax)
    1248:	02 00                	add    (%rax),%al
    124a:	4c 9f                	rex.WR lahf 
    124c:	f4                   	hlt    
    124d:	0e                   	(bad)  
    124e:	00 00                	add    %al,(%rax)
    1250:	00 00                	add    %al,(%rax)
    1252:	00 00                	add    %al,(%rax)
    1254:	11 0f                	adc    %ecx,(%rdi)
    1256:	00 00                	add    %al,(%rax)
    1258:	00 00                	add    %al,(%rax)
    125a:	00 00                	add    %al,(%rax)
    125c:	02 00                	add    (%rax),%al
    125e:	4e 9f                	rex.WRX lahf 
    1260:	11 0f                	adc    %ecx,(%rdi)
    1262:	00 00                	add    %al,(%rax)
    1264:	00 00                	add    %al,(%rax)
    1266:	00 00                	add    %al,(%rax)
    1268:	2e 0f 00 00          	sldt   %cs:(%rax)
    126c:	00 00                	add    %al,(%rax)
    126e:	00 00                	add    %al,(%rax)
    1270:	03 00                	add    (%rax),%eax
    1272:	10 20                	adc    %ah,(%rax)
    1274:	9f                   	lahf   
    1275:	2e 0f 00 00          	sldt   %cs:(%rax)
    1279:	00 00                	add    %al,(%rax)
    127b:	00 00                	add    %al,(%rax)
    127d:	4c 0f 00 00          	rex.WR sldt (%rax)
    1281:	00 00                	add    %al,(%rax)
    1283:	00 00                	add    %al,(%rax)
    1285:	03 00                	add    (%rax),%eax
    1287:	10 22                	adc    %ah,(%rdx)
    1289:	9f                   	lahf   
    128a:	4c 0f 00 00          	rex.WR sldt (%rax)
    128e:	00 00                	add    %al,(%rax)
    1290:	00 00                	add    %al,(%rax)
    1292:	6a 0f                	pushq  $0xf
    1294:	00 00                	add    %al,(%rax)
    1296:	00 00                	add    %al,(%rax)
    1298:	00 00                	add    %al,(%rax)
    129a:	03 00                	add    (%rax),%eax
    129c:	10 24 9f             	adc    %ah,(%rdi,%rbx,4)
    129f:	6a 0f                	pushq  $0xf
    12a1:	00 00                	add    %al,(%rax)
    12a3:	00 00                	add    %al,(%rax)
    12a5:	00 00                	add    %al,(%rax)
    12a7:	87 0f                	xchg   %ecx,(%rdi)
    12a9:	00 00                	add    %al,(%rax)
    12ab:	00 00                	add    %al,(%rax)
    12ad:	00 00                	add    %al,(%rax)
    12af:	03 00                	add    (%rax),%eax
    12b1:	10 26                	adc    %ah,(%rsi)
    12b3:	9f                   	lahf   
    12b4:	87 0f                	xchg   %ecx,(%rdi)
    12b6:	00 00                	add    %al,(%rax)
    12b8:	00 00                	add    %al,(%rax)
    12ba:	00 00                	add    %al,(%rax)
    12bc:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    12bd:	0f 00 00             	sldt   (%rax)
    12c0:	00 00                	add    %al,(%rax)
    12c2:	00 00                	add    %al,(%rax)
    12c4:	03 00                	add    (%rax),%eax
    12c6:	10 28                	adc    %ch,(%rax)
    12c8:	9f                   	lahf   
    12c9:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    12ca:	0f 00 00             	sldt   (%rax)
    12cd:	00 00                	add    %al,(%rax)
    12cf:	00 00                	add    %al,(%rax)
    12d1:	c2 0f 00             	retq   $0xf
    12d4:	00 00                	add    %al,(%rax)
    12d6:	00 00                	add    %al,(%rax)
    12d8:	00 03                	add    %al,(%rbx)
    12da:	00 10                	add    %dl,(%rax)
    12dc:	2a 9f c2 0f 00 00    	sub    0xfc2(%rdi),%bl
    12e2:	00 00                	add    %al,(%rax)
    12e4:	00 00                	add    %al,(%rax)
    12e6:	e0 0f                	loopne 12f7 <dotprod_4x+0x7>
    12e8:	00 00                	add    %al,(%rax)
    12ea:	00 00                	add    %al,(%rax)
    12ec:	00 00                	add    %al,(%rax)
    12ee:	03 00                	add    (%rax),%eax
    12f0:	10 2c 9f             	adc    %ch,(%rdi,%rbx,4)
    12f3:	e0 0f                	loopne 1304 <dotprod_4x+0x14>
    12f5:	00 00                	add    %al,(%rax)
    12f7:	00 00                	add    %al,(%rax)
    12f9:	00 00                	add    %al,(%rax)
    12fb:	fd                   	std    
    12fc:	0f 00 00             	sldt   (%rax)
    12ff:	00 00                	add    %al,(%rax)
    1301:	00 00                	add    %al,(%rax)
    1303:	03 00                	add    (%rax),%eax
    1305:	10 2e                	adc    %ch,(%rsi)
    1307:	9f                   	lahf   
    1308:	fd                   	std    
    1309:	0f 00 00             	sldt   (%rax)
    130c:	00 00                	add    %al,(%rax)
    130e:	00 00                	add    %al,(%rax)
    1310:	1a 10                	sbb    (%rax),%dl
    1312:	00 00                	add    %al,(%rax)
    1314:	00 00                	add    %al,(%rax)
    1316:	00 00                	add    %al,(%rax)
    1318:	03 00                	add    (%rax),%eax
    131a:	10 30                	adc    %dh,(%rax)
    131c:	9f                   	lahf   
    131d:	1a 10                	sbb    (%rax),%dl
    131f:	00 00                	add    %al,(%rax)
    1321:	00 00                	add    %al,(%rax)
    1323:	00 00                	add    %al,(%rax)
    1325:	38 10                	cmp    %dl,(%rax)
    1327:	00 00                	add    %al,(%rax)
    1329:	00 00                	add    %al,(%rax)
    132b:	00 00                	add    %al,(%rax)
    132d:	03 00                	add    (%rax),%eax
    132f:	10 32                	adc    %dh,(%rdx)
    1331:	9f                   	lahf   
    1332:	38 10                	cmp    %dl,(%rax)
    1334:	00 00                	add    %al,(%rax)
    1336:	00 00                	add    %al,(%rax)
    1338:	00 00                	add    %al,(%rax)
    133a:	56                   	push   %rsi
    133b:	10 00                	adc    %al,(%rax)
    133d:	00 00                	add    %al,(%rax)
    133f:	00 00                	add    %al,(%rax)
    1341:	00 03                	add    %al,(%rbx)
    1343:	00 10                	add    %dl,(%rax)
    1345:	34 9f                	xor    $0x9f,%al
    1347:	56                   	push   %rsi
    1348:	10 00                	adc    %al,(%rax)
    134a:	00 00                	add    %al,(%rax)
    134c:	00 00                	add    %al,(%rax)
    134e:	00 73 10             	add    %dh,0x10(%rbx)
    1351:	00 00                	add    %al,(%rax)
    1353:	00 00                	add    %al,(%rax)
    1355:	00 00                	add    %al,(%rax)
    1357:	03 00                	add    (%rax),%eax
    1359:	10 36                	adc    %dh,(%rsi)
    135b:	9f                   	lahf   
    135c:	73 10                	jae    136e <dotprod_4x+0x7e>
    135e:	00 00                	add    %al,(%rax)
    1360:	00 00                	add    %al,(%rax)
    1362:	00 00                	add    %al,(%rax)
    1364:	90                   	nop
    1365:	10 00                	adc    %al,(%rax)
    1367:	00 00                	add    %al,(%rax)
    1369:	00 00                	add    %al,(%rax)
    136b:	00 03                	add    %al,(%rbx)
    136d:	00 10                	add    %dl,(%rax)
    136f:	38 9f 90 10 00 00    	cmp    %bl,0x1090(%rdi)
    1375:	00 00                	add    %al,(%rax)
    1377:	00 00                	add    %al,(%rax)
    1379:	ae                   	scas   %es:(%rdi),%al
    137a:	10 00                	adc    %al,(%rax)
    137c:	00 00                	add    %al,(%rax)
    137e:	00 00                	add    %al,(%rax)
    1380:	00 03                	add    %al,(%rbx)
    1382:	00 10                	add    %dl,(%rax)
    1384:	3a 9f ae 10 00 00    	cmp    0x10ae(%rdi),%bl
    138a:	00 00                	add    %al,(%rax)
    138c:	00 00                	add    %al,(%rax)
    138e:	cc                   	int3   
    138f:	10 00                	adc    %al,(%rax)
    1391:	00 00                	add    %al,(%rax)
    1393:	00 00                	add    %al,(%rax)
    1395:	00 03                	add    %al,(%rbx)
    1397:	00 10                	add    %dl,(%rax)
    1399:	3c 9f                	cmp    $0x9f,%al
    139b:	cc                   	int3   
    139c:	10 00                	adc    %al,(%rax)
    139e:	00 00                	add    %al,(%rax)
    13a0:	00 00                	add    %al,(%rax)
    13a2:	00 e9                	add    %ch,%cl
    13a4:	10 00                	adc    %al,(%rax)
    13a6:	00 00                	add    %al,(%rax)
    13a8:	00 00                	add    %al,(%rax)
    13aa:	00 03                	add    %al,(%rbx)
    13ac:	00 10                	add    %dl,(%rax)
    13ae:	3e 9f                	ds lahf 
    13b0:	e9 10 00 00 00       	jmpq   13c5 <dotprod_8x+0x5>
    13b5:	00 00                	add    %al,(%rax)
    13b7:	00 06                	add    %al,(%rsi)
    13b9:	11 00                	adc    %eax,(%rax)
    13bb:	00 00                	add    %al,(%rax)
    13bd:	00 00                	add    %al,(%rax)
    13bf:	00 03                	add    %al,(%rbx)
    13c1:	00 10                	add    %dl,(%rax)
    13c3:	40 9f                	rex lahf 
    13c5:	06                   	(bad)  
    13c6:	11 00                	adc    %eax,(%rax)
    13c8:	00 00                	add    %al,(%rax)
    13ca:	00 00                	add    %al,(%rax)
    13cc:	00 24 11             	add    %ah,(%rcx,%rdx,1)
    13cf:	00 00                	add    %al,(%rax)
    13d1:	00 00                	add    %al,(%rax)
    13d3:	00 00                	add    %al,(%rax)
    13d5:	03 00                	add    (%rax),%eax
    13d7:	10 42 9f             	adc    %al,-0x61(%rdx)
    13da:	24 11                	and    $0x11,%al
    13dc:	00 00                	add    %al,(%rax)
    13de:	00 00                	add    %al,(%rax)
    13e0:	00 00                	add    %al,(%rax)
    13e2:	42 11 00             	rex.X adc %eax,(%rax)
    13e5:	00 00                	add    %al,(%rax)
    13e7:	00 00                	add    %al,(%rax)
    13e9:	00 03                	add    %al,(%rbx)
    13eb:	00 10                	add    %dl,(%rax)
    13ed:	44 9f                	rex.R lahf 
    13ef:	42 11 00             	rex.X adc %eax,(%rax)
    13f2:	00 00                	add    %al,(%rax)
    13f4:	00 00                	add    %al,(%rax)
    13f6:	00 5f 11             	add    %bl,0x11(%rdi)
    13f9:	00 00                	add    %al,(%rax)
    13fb:	00 00                	add    %al,(%rax)
    13fd:	00 00                	add    %al,(%rax)
    13ff:	03 00                	add    (%rax),%eax
    1401:	10 46 9f             	adc    %al,-0x61(%rsi)
    1404:	5f                   	pop    %rdi
    1405:	11 00                	adc    %eax,(%rax)
    1407:	00 00                	add    %al,(%rax)
    1409:	00 00                	add    %al,(%rax)
    140b:	00 7c 11 00          	add    %bh,0x0(%rcx,%rdx,1)
    140f:	00 00                	add    %al,(%rax)
    1411:	00 00                	add    %al,(%rax)
    1413:	00 03                	add    %al,(%rbx)
    1415:	00 10                	add    %dl,(%rax)
    1417:	48 9f                	rex.W lahf 
    1419:	7c 11                	jl     142c <dotprod_8x+0x6c>
    141b:	00 00                	add    %al,(%rax)
    141d:	00 00                	add    %al,(%rax)
    141f:	00 00                	add    %al,(%rax)
    1421:	9a                   	(bad)  
    1422:	11 00                	adc    %eax,(%rax)
    1424:	00 00                	add    %al,(%rax)
    1426:	00 00                	add    %al,(%rax)
    1428:	00 03                	add    %al,(%rbx)
    142a:	00 10                	add    %dl,(%rax)
    142c:	4a 9f                	rex.WX lahf 
    142e:	9a                   	(bad)  
    142f:	11 00                	adc    %eax,(%rax)
    1431:	00 00                	add    %al,(%rax)
    1433:	00 00                	add    %al,(%rax)
    1435:	00 b8 11 00 00 00    	add    %bh,0x11(%rax)
    143b:	00 00                	add    %al,(%rax)
    143d:	00 03                	add    %al,(%rbx)
    143f:	00 10                	add    %dl,(%rax)
    1441:	4c 9f                	rex.WR lahf 
    1443:	b8 11 00 00 00       	mov    $0x11,%eax
    1448:	00 00                	add    %al,(%rax)
    144a:	00 d5                	add    %dl,%ch
    144c:	11 00                	adc    %eax,(%rax)
    144e:	00 00                	add    %al,(%rax)
    1450:	00 00                	add    %al,(%rax)
    1452:	00 03                	add    %al,(%rbx)
    1454:	00 10                	add    %dl,(%rax)
    1456:	4e 9f                	rex.WRX lahf 
    1458:	d5                   	(bad)  
    1459:	11 00                	adc    %eax,(%rax)
    145b:	00 00                	add    %al,(%rax)
    145d:	00 00                	add    %al,(%rax)
    145f:	00 f2                	add    %dh,%dl
    1461:	11 00                	adc    %eax,(%rax)
    1463:	00 00                	add    %al,(%rax)
    1465:	00 00                	add    %al,(%rax)
    1467:	00 03                	add    %al,(%rbx)
    1469:	00 10                	add    %dl,(%rax)
    146b:	50                   	push   %rax
    146c:	9f                   	lahf   
    146d:	f2 11 00             	repnz adc %eax,(%rax)
    1470:	00 00                	add    %al,(%rax)
    1472:	00 00                	add    %al,(%rax)
    1474:	00 10                	add    %dl,(%rax)
    1476:	12 00                	adc    (%rax),%al
    1478:	00 00                	add    %al,(%rax)
    147a:	00 00                	add    %al,(%rax)
    147c:	00 03                	add    %al,(%rbx)
    147e:	00 10                	add    %dl,(%rax)
    1480:	52                   	push   %rdx
    1481:	9f                   	lahf   
    1482:	10 12                	adc    %dl,(%rdx)
    1484:	00 00                	add    %al,(%rax)
    1486:	00 00                	add    %al,(%rax)
    1488:	00 00                	add    %al,(%rax)
    148a:	2e 12 00             	adc    %cs:(%rax),%al
    148d:	00 00                	add    %al,(%rax)
    148f:	00 00                	add    %al,(%rax)
    1491:	00 03                	add    %al,(%rbx)
    1493:	00 10                	add    %dl,(%rax)
    1495:	54                   	push   %rsp
    1496:	9f                   	lahf   
    1497:	2e 12 00             	adc    %cs:(%rax),%al
    149a:	00 00                	add    %al,(%rax)
    149c:	00 00                	add    %al,(%rax)
    149e:	00 4b 12             	add    %cl,0x12(%rbx)
    14a1:	00 00                	add    %al,(%rax)
    14a3:	00 00                	add    %al,(%rax)
    14a5:	00 00                	add    %al,(%rax)
    14a7:	03 00                	add    (%rax),%eax
    14a9:	10 56 9f             	adc    %dl,-0x61(%rsi)
    14ac:	4b 12 00             	rex.WXB adc (%r8),%al
    14af:	00 00                	add    %al,(%rax)
    14b1:	00 00                	add    %al,(%rax)
    14b3:	00 68 12             	add    %ch,0x12(%rax)
    14b6:	00 00                	add    %al,(%rax)
    14b8:	00 00                	add    %al,(%rax)
    14ba:	00 00                	add    %al,(%rax)
    14bc:	03 00                	add    (%rax),%eax
    14be:	10 58 9f             	adc    %bl,-0x61(%rax)
    14c1:	68 12 00 00 00       	pushq  $0x12
    14c6:	00 00                	add    %al,(%rax)
    14c8:	00 86 12 00 00 00    	add    %al,0x12(%rsi)
    14ce:	00 00                	add    %al,(%rax)
    14d0:	00 03                	add    %al,(%rbx)
    14d2:	00 10                	add    %dl,(%rax)
    14d4:	5a                   	pop    %rdx
    14d5:	9f                   	lahf   
    14d6:	86 12                	xchg   %dl,(%rdx)
    14d8:	00 00                	add    %al,(%rax)
    14da:	00 00                	add    %al,(%rax)
    14dc:	00 00                	add    %al,(%rax)
    14de:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    14df:	12 00                	adc    (%rax),%al
    14e1:	00 00                	add    %al,(%rax)
    14e3:	00 00                	add    %al,(%rax)
    14e5:	00 03                	add    %al,(%rbx)
    14e7:	00 10                	add    %dl,(%rax)
    14e9:	5c                   	pop    %rsp
    14ea:	9f                   	lahf   
    14eb:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    14ec:	12 00                	adc    (%rax),%al
    14ee:	00 00                	add    %al,(%rax)
    14f0:	00 00                	add    %al,(%rax)
    14f2:	00 c1                	add    %al,%cl
    14f4:	12 00                	adc    (%rax),%al
    14f6:	00 00                	add    %al,(%rax)
    14f8:	00 00                	add    %al,(%rax)
    14fa:	00 03                	add    %al,(%rbx)
    14fc:	00 10                	add    %dl,(%rax)
    14fe:	5e                   	pop    %rsi
    14ff:	9f                   	lahf   
    1500:	c1 12 00             	rcll   $0x0,(%rdx)
    1503:	00 00                	add    %al,(%rax)
    1505:	00 00                	add    %al,(%rax)
    1507:	00 de                	add    %bl,%dh
    1509:	12 00                	adc    (%rax),%al
    150b:	00 00                	add    %al,(%rax)
    150d:	00 00                	add    %al,(%rax)
    150f:	00 03                	add    %al,(%rbx)
    1511:	00 10                	add    %dl,(%rax)
    1513:	60                   	(bad)  
    1514:	9f                   	lahf   
    1515:	de 12                	ficoms (%rdx)
    1517:	00 00                	add    %al,(%rax)
    1519:	00 00                	add    %al,(%rax)
    151b:	00 00                	add    %al,(%rax)
    151d:	fc                   	cld    
    151e:	12 00                	adc    (%rax),%al
    1520:	00 00                	add    %al,(%rax)
    1522:	00 00                	add    %al,(%rax)
    1524:	00 03                	add    %al,(%rbx)
    1526:	00 10                	add    %dl,(%rax)
    1528:	62                   	(bad)  
    1529:	9f                   	lahf   
    152a:	fc                   	cld    
    152b:	12 00                	adc    (%rax),%al
    152d:	00 00                	add    %al,(%rax)
    152f:	00 00                	add    %al,(%rax)
    1531:	00 4f 14             	add    %cl,0x14(%rdi)
    1534:	00 00                	add    %al,(%rax)
    1536:	00 00                	add    %al,(%rax)
    1538:	00 00                	add    %al,(%rax)
    153a:	03 00                	add    (%rax),%eax
    153c:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
    154c:	00 00                	add    %al,(%rax)
    154e:	00 4d 13             	add    %cl,0x13(%rbp)
    1551:	00 00                	add    %al,(%rax)
    1553:	00 00                	add    %al,(%rax)
    1555:	00 00                	add    %al,(%rax)
    1557:	59                   	pop    %rcx
    1558:	13 00                	adc    (%rax),%eax
    155a:	00 00                	add    %al,(%rax)
    155c:	00 00                	add    %al,(%rax)
    155e:	00 03                	add    %al,(%rbx)
    1560:	00 63 93             	add    %ah,-0x6d(%rbx)
    1563:	08 59 13             	or     %bl,0x13(%rcx)
    1566:	00 00                	add    %al,(%rax)
    1568:	00 00                	add    %al,(%rax)
    156a:	00 00                	add    %al,(%rax)
    156c:	ce                   	(bad)  
    156d:	13 00                	adc    (%rax),%eax
    156f:	00 00                	add    %al,(%rax)
    1571:	00 00                	add    %al,(%rax)
    1573:	00 03                	add    %al,(%rbx)
    1575:	00 67 93             	add    %ah,-0x6d(%rdi)
    1578:	08 00                	or     %al,(%rax)
	...
    1586:	00 00                	add    %al,(%rax)
    1588:	00 cc                	add    %cl,%ah
    158a:	0d 00 00 00 00       	or     $0x0,%eax
    158f:	00 00                	add    %al,(%rax)
    1591:	dd 0d 00 00 00 00    	fisttpll 0x0(%rip)        # 1597 <dotprod_16x+0x77>
    1597:	00 00                	add    %al,(%rax)
    1599:	02 00                	add    (%rax),%al
    159b:	34 9f                	xor    $0x9f,%al
    159d:	dd 0d 00 00 00 00    	fisttpll 0x0(%rip)        # 15a3 <dotprod_16x+0x83>
    15a3:	00 00                	add    %al,(%rax)
    15a5:	29 0e                	sub    %ecx,(%rsi)
    15a7:	00 00                	add    %al,(%rax)
    15a9:	00 00                	add    %al,(%rax)
    15ab:	00 00                	add    %al,(%rax)
    15ad:	02 00                	add    (%rax),%al
    15af:	38 9f 29 0e 00 00    	cmp    %bl,0xe29(%rdi)
    15b5:	00 00                	add    %al,(%rax)
    15b7:	00 00                	add    %al,(%rax)
    15b9:	64 0e                	fs (bad) 
    15bb:	00 00                	add    %al,(%rax)
    15bd:	00 00                	add    %al,(%rax)
    15bf:	00 00                	add    %al,(%rax)
    15c1:	02 00                	add    (%rax),%al
    15c3:	3c 9f                	cmp    $0x9f,%al
    15c5:	64 0e                	fs (bad) 
    15c7:	00 00                	add    %al,(%rax)
    15c9:	00 00                	add    %al,(%rax)
    15cb:	00 00                	add    %al,(%rax)
    15cd:	9f                   	lahf   
    15ce:	0e                   	(bad)  
    15cf:	00 00                	add    %al,(%rax)
    15d1:	00 00                	add    %al,(%rax)
    15d3:	00 00                	add    %al,(%rax)
    15d5:	02 00                	add    (%rax),%al
    15d7:	40 9f                	rex lahf 
    15d9:	9f                   	lahf   
    15da:	0e                   	(bad)  
    15db:	00 00                	add    %al,(%rax)
    15dd:	00 00                	add    %al,(%rax)
    15df:	00 00                	add    %al,(%rax)
    15e1:	da 0e                	fimull (%rsi)
    15e3:	00 00                	add    %al,(%rax)
    15e5:	00 00                	add    %al,(%rax)
    15e7:	00 00                	add    %al,(%rax)
    15e9:	02 00                	add    (%rax),%al
    15eb:	44 9f                	rex.R lahf 
    15ed:	da 0e                	fimull (%rsi)
    15ef:	00 00                	add    %al,(%rax)
    15f1:	00 00                	add    %al,(%rax)
    15f3:	00 00                	add    %al,(%rax)
    15f5:	15 0f 00 00 00       	adc    $0xf,%eax
    15fa:	00 00                	add    %al,(%rax)
    15fc:	00 02                	add    %al,(%rdx)
    15fe:	00 48 9f             	add    %cl,-0x61(%rax)
    1601:	15 0f 00 00 00       	adc    $0xf,%eax
    1606:	00 00                	add    %al,(%rax)
    1608:	00 50 0f             	add    %dl,0xf(%rax)
    160b:	00 00                	add    %al,(%rax)
    160d:	00 00                	add    %al,(%rax)
    160f:	00 00                	add    %al,(%rax)
    1611:	02 00                	add    (%rax),%al
    1613:	4c 9f                	rex.WR lahf 
    1615:	50                   	push   %rax
    1616:	0f 00 00             	sldt   (%rax)
    1619:	00 00                	add    %al,(%rax)
    161b:	00 00                	add    %al,(%rax)
    161d:	8b 0f                	mov    (%rdi),%ecx
    161f:	00 00                	add    %al,(%rax)
    1621:	00 00                	add    %al,(%rax)
    1623:	00 00                	add    %al,(%rax)
    1625:	03 00                	add    (%rax),%eax
    1627:	10 20                	adc    %ah,(%rax)
    1629:	9f                   	lahf   
    162a:	8b 0f                	mov    (%rdi),%ecx
    162c:	00 00                	add    %al,(%rax)
    162e:	00 00                	add    %al,(%rax)
    1630:	00 00                	add    %al,(%rax)
    1632:	c6                   	(bad)  
    1633:	0f 00 00             	sldt   (%rax)
    1636:	00 00                	add    %al,(%rax)
    1638:	00 00                	add    %al,(%rax)
    163a:	03 00                	add    (%rax),%eax
    163c:	10 24 9f             	adc    %ah,(%rdi,%rbx,4)
    163f:	c6                   	(bad)  
    1640:	0f 00 00             	sldt   (%rax)
    1643:	00 00                	add    %al,(%rax)
    1645:	00 00                	add    %al,(%rax)
    1647:	01 10                	add    %edx,(%rax)
    1649:	00 00                	add    %al,(%rax)
    164b:	00 00                	add    %al,(%rax)
    164d:	00 00                	add    %al,(%rax)
    164f:	03 00                	add    (%rax),%eax
    1651:	10 28                	adc    %ch,(%rax)
    1653:	9f                   	lahf   
    1654:	01 10                	add    %edx,(%rax)
    1656:	00 00                	add    %al,(%rax)
    1658:	00 00                	add    %al,(%rax)
    165a:	00 00                	add    %al,(%rax)
    165c:	3c 10                	cmp    $0x10,%al
    165e:	00 00                	add    %al,(%rax)
    1660:	00 00                	add    %al,(%rax)
    1662:	00 00                	add    %al,(%rax)
    1664:	03 00                	add    (%rax),%eax
    1666:	10 2c 9f             	adc    %ch,(%rdi,%rbx,4)
    1669:	3c 10                	cmp    $0x10,%al
    166b:	00 00                	add    %al,(%rax)
    166d:	00 00                	add    %al,(%rax)
    166f:	00 00                	add    %al,(%rax)
    1671:	77 10                	ja     1683 <dotprod_16x+0x163>
    1673:	00 00                	add    %al,(%rax)
    1675:	00 00                	add    %al,(%rax)
    1677:	00 00                	add    %al,(%rax)
    1679:	03 00                	add    (%rax),%eax
    167b:	10 30                	adc    %dh,(%rax)
    167d:	9f                   	lahf   
    167e:	77 10                	ja     1690 <dotprod_16x+0x170>
    1680:	00 00                	add    %al,(%rax)
    1682:	00 00                	add    %al,(%rax)
    1684:	00 00                	add    %al,(%rax)
    1686:	b2 10                	mov    $0x10,%dl
    1688:	00 00                	add    %al,(%rax)
    168a:	00 00                	add    %al,(%rax)
    168c:	00 00                	add    %al,(%rax)
    168e:	03 00                	add    (%rax),%eax
    1690:	10 34 9f             	adc    %dh,(%rdi,%rbx,4)
    1693:	b2 10                	mov    $0x10,%dl
    1695:	00 00                	add    %al,(%rax)
    1697:	00 00                	add    %al,(%rax)
    1699:	00 00                	add    %al,(%rax)
    169b:	ed                   	in     (%dx),%eax
    169c:	10 00                	adc    %al,(%rax)
    169e:	00 00                	add    %al,(%rax)
    16a0:	00 00                	add    %al,(%rax)
    16a2:	00 03                	add    %al,(%rbx)
    16a4:	00 10                	add    %dl,(%rax)
    16a6:	38 9f ed 10 00 00    	cmp    %bl,0x10ed(%rdi)
    16ac:	00 00                	add    %al,(%rax)
    16ae:	00 00                	add    %al,(%rax)
    16b0:	28 11                	sub    %dl,(%rcx)
    16b2:	00 00                	add    %al,(%rax)
    16b4:	00 00                	add    %al,(%rax)
    16b6:	00 00                	add    %al,(%rax)
    16b8:	03 00                	add    (%rax),%eax
    16ba:	10 3c 9f             	adc    %bh,(%rdi,%rbx,4)
    16bd:	28 11                	sub    %dl,(%rcx)
    16bf:	00 00                	add    %al,(%rax)
    16c1:	00 00                	add    %al,(%rax)
    16c3:	00 00                	add    %al,(%rax)
    16c5:	63 11                	movsxd (%rcx),%edx
    16c7:	00 00                	add    %al,(%rax)
    16c9:	00 00                	add    %al,(%rax)
    16cb:	00 00                	add    %al,(%rax)
    16cd:	03 00                	add    (%rax),%eax
    16cf:	10 40 9f             	adc    %al,-0x61(%rax)
    16d2:	63 11                	movsxd (%rcx),%edx
    16d4:	00 00                	add    %al,(%rax)
    16d6:	00 00                	add    %al,(%rax)
    16d8:	00 00                	add    %al,(%rax)
    16da:	9e                   	sahf   
    16db:	11 00                	adc    %eax,(%rax)
    16dd:	00 00                	add    %al,(%rax)
    16df:	00 00                	add    %al,(%rax)
    16e1:	00 03                	add    %al,(%rbx)
    16e3:	00 10                	add    %dl,(%rax)
    16e5:	44 9f                	rex.R lahf 
    16e7:	9e                   	sahf   
    16e8:	11 00                	adc    %eax,(%rax)
    16ea:	00 00                	add    %al,(%rax)
    16ec:	00 00                	add    %al,(%rax)
    16ee:	00 d9                	add    %bl,%cl
    16f0:	11 00                	adc    %eax,(%rax)
    16f2:	00 00                	add    %al,(%rax)
    16f4:	00 00                	add    %al,(%rax)
    16f6:	00 03                	add    %al,(%rbx)
    16f8:	00 10                	add    %dl,(%rax)
    16fa:	48 9f                	rex.W lahf 
    16fc:	d9 11                	fsts   (%rcx)
    16fe:	00 00                	add    %al,(%rax)
    1700:	00 00                	add    %al,(%rax)
    1702:	00 00                	add    %al,(%rax)
    1704:	14 12                	adc    $0x12,%al
    1706:	00 00                	add    %al,(%rax)
    1708:	00 00                	add    %al,(%rax)
    170a:	00 00                	add    %al,(%rax)
    170c:	03 00                	add    (%rax),%eax
    170e:	10 4c 9f 14          	adc    %cl,0x14(%rdi,%rbx,4)
    1712:	12 00                	adc    (%rax),%al
    1714:	00 00                	add    %al,(%rax)
    1716:	00 00                	add    %al,(%rax)
    1718:	00 4f 12             	add    %cl,0x12(%rdi)
    171b:	00 00                	add    %al,(%rax)
    171d:	00 00                	add    %al,(%rax)
    171f:	00 00                	add    %al,(%rax)
    1721:	03 00                	add    (%rax),%eax
    1723:	10 50 9f             	adc    %dl,-0x61(%rax)
    1726:	4f 12 00             	rex.WRXB adc (%r8),%r8b
    1729:	00 00                	add    %al,(%rax)
    172b:	00 00                	add    %al,(%rax)
    172d:	00 8a 12 00 00 00    	add    %cl,0x12(%rdx)
    1733:	00 00                	add    %al,(%rax)
    1735:	00 03                	add    %al,(%rbx)
    1737:	00 10                	add    %dl,(%rax)
    1739:	54                   	push   %rsp
    173a:	9f                   	lahf   
    173b:	8a 12                	mov    (%rdx),%dl
    173d:	00 00                	add    %al,(%rax)
    173f:	00 00                	add    %al,(%rax)
    1741:	00 00                	add    %al,(%rax)
    1743:	c5 12 00             	(bad)
    1746:	00 00                	add    %al,(%rax)
    1748:	00 00                	add    %al,(%rax)
    174a:	00 03                	add    %al,(%rbx)
    174c:	00 10                	add    %dl,(%rax)
    174e:	58                   	pop    %rax
    174f:	9f                   	lahf   
    1750:	c5 12 00             	(bad)
    1753:	00 00                	add    %al,(%rax)
    1755:	00 00                	add    %al,(%rax)
    1757:	00 fc                	add    %bh,%ah
    1759:	12 00                	adc    (%rax),%al
    175b:	00 00                	add    %al,(%rax)
    175d:	00 00                	add    %al,(%rax)
    175f:	00 03                	add    %al,(%rbx)
    1761:	00 10                	add    %dl,(%rax)
    1763:	5c                   	pop    %rsp
    1764:	9f                   	lahf   
    1765:	fc                   	cld    
    1766:	12 00                	adc    (%rax),%al
    1768:	00 00                	add    %al,(%rax)
    176a:	00 00                	add    %al,(%rax)
    176c:	00 4f 14             	add    %cl,0x14(%rdi)
    176f:	00 00                	add    %al,(%rax)
    1771:	00 00                	add    %al,(%rax)
    1773:	00 00                	add    %al,(%rax)
    1775:	02 00                	add    (%rax),%al
    1777:	30 9f 00 00 00 00    	xor    %bl,0x0(%rdi)
	...
    1789:	2f                   	(bad)  
    178a:	13 00                	adc    (%rax),%eax
    178c:	00 00                	add    %al,(%rax)
    178e:	00 00                	add    %al,(%rax)
    1790:	00 34 13             	add    %dh,(%rbx,%rdx,1)
    1793:	00 00                	add    %al,(%rax)
    1795:	00 00                	add    %al,(%rax)
    1797:	00 00                	add    %al,(%rax)
    1799:	20 00                	and    %al,(%rax)
    179b:	30 9f 93 08 30 9f    	xor    %bl,-0x60cff76d(%rdi)
    17a1:	93                   	xchg   %eax,%ebx
    17a2:	08 30                	or     %dh,(%rax)
    17a4:	9f                   	lahf   
    17a5:	93                   	xchg   %eax,%ebx
    17a6:	08 30                	or     %dh,(%rax)
    17a8:	9f                   	lahf   
    17a9:	93                   	xchg   %eax,%ebx
    17aa:	08 30                	or     %dh,(%rax)
    17ac:	9f                   	lahf   
    17ad:	93                   	xchg   %eax,%ebx
    17ae:	08 30                	or     %dh,(%rax)
    17b0:	9f                   	lahf   
    17b1:	93                   	xchg   %eax,%ebx
    17b2:	08 30                	or     %dh,(%rax)
    17b4:	9f                   	lahf   
    17b5:	93                   	xchg   %eax,%ebx
    17b6:	08 30                	or     %dh,(%rax)
    17b8:	9f                   	lahf   
    17b9:	93                   	xchg   %eax,%ebx
    17ba:	08 00                	or     %al,(%rax)
	...
    17c8:	00 00                	add    %al,(%rax)
    17ca:	00 e6                	add    %ah,%dh
    17cc:	0d 00 00 00 00       	or     $0x0,%eax
    17d1:	00 00                	add    %al,(%rax)
    17d3:	69 0e 00 00 00 00    	imul   $0x0,(%rsi),%ecx
    17d9:	00 00                	add    %al,(%rax)
    17db:	02 00                	add    (%rax),%al
    17dd:	38 9f 69 0e 00 00    	cmp    %bl,0xe69(%rdi)
    17e3:	00 00                	add    %al,(%rax)
    17e5:	00 00                	add    %al,(%rax)
    17e7:	df 0e                	fisttps (%rsi)
    17e9:	00 00                	add    %al,(%rax)
    17eb:	00 00                	add    %al,(%rax)
    17ed:	00 00                	add    %al,(%rax)
    17ef:	02 00                	add    (%rax),%al
    17f1:	40 9f                	rex lahf 
    17f3:	df 0e                	fisttps (%rsi)
    17f5:	00 00                	add    %al,(%rax)
    17f7:	00 00                	add    %al,(%rax)
    17f9:	00 00                	add    %al,(%rax)
    17fb:	55                   	push   %rbp
    17fc:	0f 00 00             	sldt   (%rax)
    17ff:	00 00                	add    %al,(%rax)
    1801:	00 00                	add    %al,(%rax)
    1803:	02 00                	add    (%rax),%al
    1805:	48 9f                	rex.W lahf 
    1807:	55                   	push   %rbp
    1808:	0f 00 00             	sldt   (%rax)
    180b:	00 00                	add    %al,(%rax)
    180d:	00 00                	add    %al,(%rax)
    180f:	cb                   	lret   
    1810:	0f 00 00             	sldt   (%rax)
    1813:	00 00                	add    %al,(%rax)
    1815:	00 00                	add    %al,(%rax)
    1817:	03 00                	add    (%rax),%eax
    1819:	10 20                	adc    %ah,(%rax)
    181b:	9f                   	lahf   
    181c:	cb                   	lret   
    181d:	0f 00 00             	sldt   (%rax)
    1820:	00 00                	add    %al,(%rax)
    1822:	00 00                	add    %al,(%rax)
    1824:	41 10 00             	adc    %al,(%r8)
    1827:	00 00                	add    %al,(%rax)
    1829:	00 00                	add    %al,(%rax)
    182b:	00 03                	add    %al,(%rbx)
    182d:	00 10                	add    %dl,(%rax)
    182f:	28 9f 41 10 00 00    	sub    %bl,0x1041(%rdi)
    1835:	00 00                	add    %al,(%rax)
    1837:	00 00                	add    %al,(%rax)
    1839:	b7 10                	mov    $0x10,%bh
    183b:	00 00                	add    %al,(%rax)
    183d:	00 00                	add    %al,(%rax)
    183f:	00 00                	add    %al,(%rax)
    1841:	03 00                	add    (%rax),%eax
    1843:	10 30                	adc    %dh,(%rax)
    1845:	9f                   	lahf   
    1846:	b7 10                	mov    $0x10,%bh
    1848:	00 00                	add    %al,(%rax)
    184a:	00 00                	add    %al,(%rax)
    184c:	00 00                	add    %al,(%rax)
    184e:	2d 11 00 00 00       	sub    $0x11,%eax
    1853:	00 00                	add    %al,(%rax)
    1855:	00 03                	add    %al,(%rbx)
    1857:	00 10                	add    %dl,(%rax)
    1859:	38 9f 2d 11 00 00    	cmp    %bl,0x112d(%rdi)
    185f:	00 00                	add    %al,(%rax)
    1861:	00 00                	add    %al,(%rax)
    1863:	a3 11 00 00 00 00 00 	movabs %eax,0x300000000000011
    186a:	00 03 
    186c:	00 10                	add    %dl,(%rax)
    186e:	40 9f                	rex lahf 
    1870:	a3 11 00 00 00 00 00 	movabs %eax,0x1900000000000011
    1877:	00 19 
    1879:	12 00                	adc    (%rax),%al
    187b:	00 00                	add    %al,(%rax)
    187d:	00 00                	add    %al,(%rax)
    187f:	00 03                	add    %al,(%rbx)
    1881:	00 10                	add    %dl,(%rax)
    1883:	48 9f                	rex.W lahf 
    1885:	19 12                	sbb    %edx,(%rdx)
    1887:	00 00                	add    %al,(%rax)
    1889:	00 00                	add    %al,(%rax)
    188b:	00 00                	add    %al,(%rax)
    188d:	8f                   	(bad)  
    188e:	12 00                	adc    (%rax),%al
    1890:	00 00                	add    %al,(%rax)
    1892:	00 00                	add    %al,(%rax)
    1894:	00 03                	add    %al,(%rbx)
    1896:	00 10                	add    %dl,(%rax)
    1898:	50                   	push   %rax
    1899:	9f                   	lahf   
    189a:	8f                   	(bad)  
    189b:	12 00                	adc    (%rax),%al
    189d:	00 00                	add    %al,(%rax)
    189f:	00 00                	add    %al,(%rax)
    18a1:	00 05 13 00 00 00    	add    %al,0x13(%rip)        # 18ba <main+0x1da>
    18a7:	00 00                	add    %al,(%rax)
    18a9:	00 03                	add    %al,(%rbx)
    18ab:	00 10                	add    %dl,(%rax)
    18ad:	58                   	pop    %rax
    18ae:	9f                   	lahf   
    18af:	05 13 00 00 00       	add    $0x13,%eax
    18b4:	00 00                	add    %al,(%rax)
    18b6:	00 2f                	add    %ch,(%rdi)
    18b8:	13 00                	adc    (%rax),%eax
    18ba:	00 00                	add    %al,(%rax)
    18bc:	00 00                	add    %al,(%rax)
    18be:	00 03                	add    %al,(%rbx)
    18c0:	00 10                	add    %dl,(%rax)
    18c2:	60                   	(bad)  
    18c3:	9f                   	lahf   
    18c4:	2f                   	(bad)  
    18c5:	13 00                	adc    (%rax),%eax
    18c7:	00 00                	add    %al,(%rax)
    18c9:	00 00                	add    %al,(%rax)
    18cb:	00 34 13             	add    %dh,(%rbx,%rdx,1)
    18ce:	00 00                	add    %al,(%rax)
    18d0:	00 00                	add    %al,(%rax)
    18d2:	00 00                	add    %al,(%rax)
    18d4:	02 00                	add    (%rax),%al
    18d6:	30 9f 34 13 00 00    	xor    %bl,0x1334(%rdi)
    18dc:	00 00                	add    %al,(%rax)
    18de:	00 00                	add    %al,(%rax)
    18e0:	4f 14 00             	rex.WRXB adc $0x0,%al
    18e3:	00 00                	add    %al,(%rax)
    18e5:	00 00                	add    %al,(%rax)
    18e7:	00 03                	add    %al,(%rbx)
    18e9:	00 10                	add    %dl,(%rax)
    18eb:	68 9f 00 00 00       	pushq  $0x9f
	...
    18fc:	00 2f                	add    %ch,(%rdi)
    18fe:	13 00                	adc    (%rax),%eax
    1900:	00 00                	add    %al,(%rax)
    1902:	00 00                	add    %al,(%rax)
    1904:	00 4f 14             	add    %cl,0x14(%rdi)
    1907:	00 00                	add    %al,(%rax)
    1909:	00 00                	add    %al,(%rax)
    190b:	00 00                	add    %al,(%rax)
    190d:	02 00                	add    (%rax),%al
    190f:	34 9f                	xor    $0x9f,%al
	...
    1921:	2f                   	(bad)  
    1922:	13 00                	adc    (%rax),%eax
    1924:	00 00                	add    %al,(%rax)
    1926:	00 00                	add    %al,(%rax)
    1928:	00 4f 14             	add    %cl,0x14(%rdi)
    192b:	00 00                	add    %al,(%rax)
    192d:	00 00                	add    %al,(%rax)
    192f:	00 00                	add    %al,(%rax)
    1931:	03 00                	add    (%rax),%eax
    1933:	10 64 9f 00          	adc    %ah,0x0(%rdi,%rbx,4)
	...
    1943:	00 00                	add    %al,(%rax)
    1945:	00 2f                	add    %ch,(%rdi)
    1947:	13 00                	adc    (%rax),%eax
    1949:	00 00                	add    %al,(%rax)
    194b:	00 00                	add    %al,(%rax)
    194d:	00 4a 14             	add    %cl,0x14(%rdx)
    1950:	00 00                	add    %al,(%rax)
    1952:	00 00                	add    %al,(%rax)
    1954:	00 00                	add    %al,(%rax)
    1956:	01 00                	add    %eax,(%rax)
    1958:	53                   	push   %rbx
	...
    1969:	2f                   	(bad)  
    196a:	13 00                	adc    (%rax),%eax
    196c:	00 00                	add    %al,(%rax)
    196e:	00 00                	add    %al,(%rax)
    1970:	00 4c 14 00          	add    %cl,0x0(%rsp,%rdx,1)
    1974:	00 00                	add    %al,(%rax)
    1976:	00 00                	add    %al,(%rax)
    1978:	00 01                	add    %al,(%rcx)
    197a:	00 5e 00             	add    %bl,0x0(%rsi)
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
      40:	4f 14 00             	rex.WRXB adc $0x0,%al
      43:	00 00                	add    %al,(%rax)
      45:	00 00                	add    %al,(%rax)
      47:	00 59 14             	add    %bl,0x14(%rcx)
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
     110:	73 0d                	jae    11f <__abi_tag-0x1a5>
     112:	00 00                	add    %al,(%rax)
     114:	00 00                	add    %al,(%rax)
     116:	00 00                	add    %al,(%rax)
     118:	c8 0d 00 00          	enterq $0xd,$0x0
     11c:	00 00                	add    %al,(%rax)
     11e:	00 00                	add    %al,(%rax)
     120:	e6 0d                	out    %al,$0xd
     122:	00 00                	add    %al,(%rax)
     124:	00 00                	add    %al,(%rax)
     126:	00 00                	add    %al,(%rax)
     128:	f5                   	cmc    
     129:	0d 00 00 00 00       	or     $0x0,%eax
     12e:	00 00                	add    %al,(%rax)
     130:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # 136 <__abi_tag-0x18e>
     136:	00 00                	add    %al,(%rax)
     138:	0e                   	(bad)  
     139:	0e                   	(bad)  
     13a:	00 00                	add    %al,(%rax)
     13c:	00 00                	add    %al,(%rax)
     13e:	00 00                	add    %al,(%rax)
     140:	16                   	(bad)  
     141:	0e                   	(bad)  
     142:	00 00                	add    %al,(%rax)
     144:	00 00                	add    %al,(%rax)
     146:	00 00                	add    %al,(%rax)
     148:	25 0e 00 00 00       	and    $0xe,%eax
     14d:	00 00                	add    %al,(%rax)
     14f:	00 2d 0e 00 00 00    	add    %ch,0xe(%rip)        # 163 <__abi_tag-0x161>
     155:	00 00                	add    %al,(%rax)
     157:	00 42 0e             	add    %al,0xe(%rdx)
     15a:	00 00                	add    %al,(%rax)
     15c:	00 00                	add    %al,(%rax)
     15e:	00 00                	add    %al,(%rax)
     160:	4b 0e                	rex.WXB (bad) 
     162:	00 00                	add    %al,(%rax)
     164:	00 00                	add    %al,(%rax)
     166:	00 00                	add    %al,(%rax)
     168:	60                   	(bad)  
     169:	0e                   	(bad)  
     16a:	00 00                	add    %al,(%rax)
     16c:	00 00                	add    %al,(%rax)
     16e:	00 00                	add    %al,(%rax)
     170:	69 0e 00 00 00 00    	imul   $0x0,(%rsi),%ecx
     176:	00 00                	add    %al,(%rax)
     178:	7e 0e                	jle    188 <__abi_tag-0x13c>
     17a:	00 00                	add    %al,(%rax)
     17c:	00 00                	add    %al,(%rax)
     17e:	00 00                	add    %al,(%rax)
     180:	86 0e                	xchg   %cl,(%rsi)
     182:	00 00                	add    %al,(%rax)
     184:	00 00                	add    %al,(%rax)
     186:	00 00                	add    %al,(%rax)
     188:	9b                   	fwait
     189:	0e                   	(bad)  
     18a:	00 00                	add    %al,(%rax)
     18c:	00 00                	add    %al,(%rax)
     18e:	00 00                	add    %al,(%rax)
     190:	a3 0e 00 00 00 00 00 	movabs %eax,0xb80000000000000e
     197:	00 b8 
     199:	0e                   	(bad)  
     19a:	00 00                	add    %al,(%rax)
     19c:	00 00                	add    %al,(%rax)
     19e:	00 00                	add    %al,(%rax)
     1a0:	c1 0e 00             	rorl   $0x0,(%rsi)
     1a3:	00 00                	add    %al,(%rax)
     1a5:	00 00                	add    %al,(%rax)
     1a7:	00 d6                	add    %dl,%dh
     1a9:	0e                   	(bad)  
     1aa:	00 00                	add    %al,(%rax)
     1ac:	00 00                	add    %al,(%rax)
     1ae:	00 00                	add    %al,(%rax)
     1b0:	df 0e                	fisttps (%rsi)
     1b2:	00 00                	add    %al,(%rax)
     1b4:	00 00                	add    %al,(%rax)
     1b6:	00 00                	add    %al,(%rax)
     1b8:	f4                   	hlt    
     1b9:	0e                   	(bad)  
     1ba:	00 00                	add    %al,(%rax)
     1bc:	00 00                	add    %al,(%rax)
     1be:	00 00                	add    %al,(%rax)
     1c0:	fc                   	cld    
     1c1:	0e                   	(bad)  
     1c2:	00 00                	add    %al,(%rax)
     1c4:	00 00                	add    %al,(%rax)
     1c6:	00 00                	add    %al,(%rax)
     1c8:	11 0f                	adc    %ecx,(%rdi)
     1ca:	00 00                	add    %al,(%rax)
     1cc:	00 00                	add    %al,(%rax)
     1ce:	00 00                	add    %al,(%rax)
     1d0:	19 0f                	sbb    %ecx,(%rdi)
     1d2:	00 00                	add    %al,(%rax)
     1d4:	00 00                	add    %al,(%rax)
     1d6:	00 00                	add    %al,(%rax)
     1d8:	2e 0f 00 00          	sldt   %cs:(%rax)
     1dc:	00 00                	add    %al,(%rax)
     1de:	00 00                	add    %al,(%rax)
     1e0:	37                   	(bad)  
     1e1:	0f 00 00             	sldt   (%rax)
     1e4:	00 00                	add    %al,(%rax)
     1e6:	00 00                	add    %al,(%rax)
     1e8:	4c 0f 00 00          	rex.WR sldt (%rax)
     1ec:	00 00                	add    %al,(%rax)
     1ee:	00 00                	add    %al,(%rax)
     1f0:	55                   	push   %rbp
     1f1:	0f 00 00             	sldt   (%rax)
     1f4:	00 00                	add    %al,(%rax)
     1f6:	00 00                	add    %al,(%rax)
     1f8:	6a 0f                	pushq  $0xf
     1fa:	00 00                	add    %al,(%rax)
     1fc:	00 00                	add    %al,(%rax)
     1fe:	00 00                	add    %al,(%rax)
     200:	72 0f                	jb     211 <__abi_tag-0xb3>
     202:	00 00                	add    %al,(%rax)
     204:	00 00                	add    %al,(%rax)
     206:	00 00                	add    %al,(%rax)
     208:	87 0f                	xchg   %ecx,(%rdi)
     20a:	00 00                	add    %al,(%rax)
     20c:	00 00                	add    %al,(%rax)
     20e:	00 00                	add    %al,(%rax)
     210:	8f                   	(bad)  
     211:	0f 00 00             	sldt   (%rax)
     214:	00 00                	add    %al,(%rax)
     216:	00 00                	add    %al,(%rax)
     218:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     219:	0f 00 00             	sldt   (%rax)
     21c:	00 00                	add    %al,(%rax)
     21e:	00 00                	add    %al,(%rax)
     220:	ad                   	lods   %ds:(%rsi),%eax
     221:	0f 00 00             	sldt   (%rax)
     224:	00 00                	add    %al,(%rax)
     226:	00 00                	add    %al,(%rax)
     228:	c2 0f 00             	retq   $0xf
     22b:	00 00                	add    %al,(%rax)
     22d:	00 00                	add    %al,(%rax)
     22f:	00 cb                	add    %cl,%bl
     231:	0f 00 00             	sldt   (%rax)
     234:	00 00                	add    %al,(%rax)
     236:	00 00                	add    %al,(%rax)
     238:	e0 0f                	loopne 249 <__abi_tag-0x7b>
     23a:	00 00                	add    %al,(%rax)
     23c:	00 00                	add    %al,(%rax)
     23e:	00 00                	add    %al,(%rax)
     240:	e8 0f 00 00 00       	callq  254 <__abi_tag-0x70>
     245:	00 00                	add    %al,(%rax)
     247:	00 fd                	add    %bh,%ch
     249:	0f 00 00             	sldt   (%rax)
     24c:	00 00                	add    %al,(%rax)
     24e:	00 00                	add    %al,(%rax)
     250:	05 10 00 00 00       	add    $0x10,%eax
     255:	00 00                	add    %al,(%rax)
     257:	00 1a                	add    %bl,(%rdx)
     259:	10 00                	adc    %al,(%rax)
     25b:	00 00                	add    %al,(%rax)
     25d:	00 00                	add    %al,(%rax)
     25f:	00 23                	add    %ah,(%rbx)
     261:	10 00                	adc    %al,(%rax)
     263:	00 00                	add    %al,(%rax)
     265:	00 00                	add    %al,(%rax)
     267:	00 38                	add    %bh,(%rax)
     269:	10 00                	adc    %al,(%rax)
     26b:	00 00                	add    %al,(%rax)
     26d:	00 00                	add    %al,(%rax)
     26f:	00 41 10             	add    %al,0x10(%rcx)
     272:	00 00                	add    %al,(%rax)
     274:	00 00                	add    %al,(%rax)
     276:	00 00                	add    %al,(%rax)
     278:	56                   	push   %rsi
     279:	10 00                	adc    %al,(%rax)
     27b:	00 00                	add    %al,(%rax)
     27d:	00 00                	add    %al,(%rax)
     27f:	00 5e 10             	add    %bl,0x10(%rsi)
     282:	00 00                	add    %al,(%rax)
     284:	00 00                	add    %al,(%rax)
     286:	00 00                	add    %al,(%rax)
     288:	73 10                	jae    29a <__abi_tag-0x2a>
     28a:	00 00                	add    %al,(%rax)
     28c:	00 00                	add    %al,(%rax)
     28e:	00 00                	add    %al,(%rax)
     290:	7b 10                	jnp    2a2 <__abi_tag-0x22>
     292:	00 00                	add    %al,(%rax)
     294:	00 00                	add    %al,(%rax)
     296:	00 00                	add    %al,(%rax)
     298:	90                   	nop
     299:	10 00                	adc    %al,(%rax)
     29b:	00 00                	add    %al,(%rax)
     29d:	00 00                	add    %al,(%rax)
     29f:	00 99 10 00 00 00    	add    %bl,0x10(%rcx)
     2a5:	00 00                	add    %al,(%rax)
     2a7:	00 ae 10 00 00 00    	add    %ch,0x10(%rsi)
     2ad:	00 00                	add    %al,(%rax)
     2af:	00 b7 10 00 00 00    	add    %dh,0x10(%rdi)
     2b5:	00 00                	add    %al,(%rax)
     2b7:	00 cc                	add    %cl,%ah
     2b9:	10 00                	adc    %al,(%rax)
     2bb:	00 00                	add    %al,(%rax)
     2bd:	00 00                	add    %al,(%rax)
     2bf:	00 d4                	add    %dl,%ah
     2c1:	10 00                	adc    %al,(%rax)
     2c3:	00 00                	add    %al,(%rax)
     2c5:	00 00                	add    %al,(%rax)
     2c7:	00 e9                	add    %ch,%cl
     2c9:	10 00                	adc    %al,(%rax)
     2cb:	00 00                	add    %al,(%rax)
     2cd:	00 00                	add    %al,(%rax)
     2cf:	00 f1                	add    %dh,%cl
     2d1:	10 00                	adc    %al,(%rax)
     2d3:	00 00                	add    %al,(%rax)
     2d5:	00 00                	add    %al,(%rax)
     2d7:	00 06                	add    %al,(%rsi)
     2d9:	11 00                	adc    %eax,(%rax)
     2db:	00 00                	add    %al,(%rax)
     2dd:	00 00                	add    %al,(%rax)
     2df:	00 0f                	add    %cl,(%rdi)
     2e1:	11 00                	adc    %eax,(%rax)
     2e3:	00 00                	add    %al,(%rax)
     2e5:	00 00                	add    %al,(%rax)
     2e7:	00 24 11             	add    %ah,(%rcx,%rdx,1)
     2ea:	00 00                	add    %al,(%rax)
     2ec:	00 00                	add    %al,(%rax)
     2ee:	00 00                	add    %al,(%rax)
     2f0:	2d 11 00 00 00       	sub    $0x11,%eax
     2f5:	00 00                	add    %al,(%rax)
     2f7:	00 42 11             	add    %al,0x11(%rdx)
     2fa:	00 00                	add    %al,(%rax)
     2fc:	00 00                	add    %al,(%rax)
     2fe:	00 00                	add    %al,(%rax)
     300:	4a 11 00             	rex.WX adc %rax,(%rax)
     303:	00 00                	add    %al,(%rax)
     305:	00 00                	add    %al,(%rax)
     307:	00 5f 11             	add    %bl,0x11(%rdi)
     30a:	00 00                	add    %al,(%rax)
     30c:	00 00                	add    %al,(%rax)
     30e:	00 00                	add    %al,(%rax)
     310:	67 11 00             	adc    %eax,(%eax)
     313:	00 00                	add    %al,(%rax)
     315:	00 00                	add    %al,(%rax)
     317:	00 7c 11 00          	add    %bh,0x0(%rcx,%rdx,1)
     31b:	00 00                	add    %al,(%rax)
     31d:	00 00                	add    %al,(%rax)
     31f:	00 85 11 00 00 00    	add    %al,0x11(%rbp)
     325:	00 00                	add    %al,(%rax)
     327:	00 9a 11 00 00 00    	add    %bl,0x11(%rdx)
     32d:	00 00                	add    %al,(%rax)
     32f:	00 a3 11 00 00 00    	add    %ah,0x11(%rbx)
     335:	00 00                	add    %al,(%rax)
     337:	00 b8 11 00 00 00    	add    %bh,0x11(%rax)
     33d:	00 00                	add    %al,(%rax)
     33f:	00 c0                	add    %al,%al
     341:	11 00                	adc    %eax,(%rax)
     343:	00 00                	add    %al,(%rax)
     345:	00 00                	add    %al,(%rax)
     347:	00 d5                	add    %dl,%ch
     349:	11 00                	adc    %eax,(%rax)
     34b:	00 00                	add    %al,(%rax)
     34d:	00 00                	add    %al,(%rax)
     34f:	00 dd                	add    %bl,%ch
     351:	11 00                	adc    %eax,(%rax)
     353:	00 00                	add    %al,(%rax)
     355:	00 00                	add    %al,(%rax)
     357:	00 f2                	add    %dh,%dl
     359:	11 00                	adc    %eax,(%rax)
     35b:	00 00                	add    %al,(%rax)
     35d:	00 00                	add    %al,(%rax)
     35f:	00 fb                	add    %bh,%bl
     361:	11 00                	adc    %eax,(%rax)
     363:	00 00                	add    %al,(%rax)
     365:	00 00                	add    %al,(%rax)
     367:	00 10                	add    %dl,(%rax)
     369:	12 00                	adc    (%rax),%al
     36b:	00 00                	add    %al,(%rax)
     36d:	00 00                	add    %al,(%rax)
     36f:	00 19                	add    %bl,(%rcx)
     371:	12 00                	adc    (%rax),%al
     373:	00 00                	add    %al,(%rax)
     375:	00 00                	add    %al,(%rax)
     377:	00 2e                	add    %ch,(%rsi)
     379:	12 00                	adc    (%rax),%al
     37b:	00 00                	add    %al,(%rax)
     37d:	00 00                	add    %al,(%rax)
     37f:	00 36                	add    %dh,(%rsi)
     381:	12 00                	adc    (%rax),%al
     383:	00 00                	add    %al,(%rax)
     385:	00 00                	add    %al,(%rax)
     387:	00 4b 12             	add    %cl,0x12(%rbx)
     38a:	00 00                	add    %al,(%rax)
     38c:	00 00                	add    %al,(%rax)
     38e:	00 00                	add    %al,(%rax)
     390:	53                   	push   %rbx
     391:	12 00                	adc    (%rax),%al
     393:	00 00                	add    %al,(%rax)
     395:	00 00                	add    %al,(%rax)
     397:	00 68 12             	add    %ch,0x12(%rax)
     39a:	00 00                	add    %al,(%rax)
     39c:	00 00                	add    %al,(%rax)
     39e:	00 00                	add    %al,(%rax)
     3a0:	71 12                	jno    3b4 <__abi_tag+0xf0>
     3a2:	00 00                	add    %al,(%rax)
     3a4:	00 00                	add    %al,(%rax)
     3a6:	00 00                	add    %al,(%rax)
     3a8:	86 12                	xchg   %dl,(%rdx)
     3aa:	00 00                	add    %al,(%rax)
     3ac:	00 00                	add    %al,(%rax)
     3ae:	00 00                	add    %al,(%rax)
     3b0:	8f                   	(bad)  
     3b1:	12 00                	adc    (%rax),%al
     3b3:	00 00                	add    %al,(%rax)
     3b5:	00 00                	add    %al,(%rax)
     3b7:	00 a4 12 00 00 00 00 	add    %ah,0x0(%rdx,%rdx,1)
     3be:	00 00                	add    %al,(%rax)
     3c0:	ac                   	lods   %ds:(%rsi),%al
     3c1:	12 00                	adc    (%rax),%al
     3c3:	00 00                	add    %al,(%rax)
     3c5:	00 00                	add    %al,(%rax)
     3c7:	00 c1                	add    %al,%cl
     3c9:	12 00                	adc    (%rax),%al
     3cb:	00 00                	add    %al,(%rax)
     3cd:	00 00                	add    %al,(%rax)
     3cf:	00 c9                	add    %cl,%cl
     3d1:	12 00                	adc    (%rax),%al
     3d3:	00 00                	add    %al,(%rax)
     3d5:	00 00                	add    %al,(%rax)
     3d7:	00 de                	add    %bl,%dh
     3d9:	12 00                	adc    (%rax),%al
     3db:	00 00                	add    %al,(%rax)
     3dd:	00 00                	add    %al,(%rax)
     3df:	00 e7                	add    %ah,%bh
     3e1:	12 00                	adc    (%rax),%al
     3e3:	00 00                	add    %al,(%rax)
     3e5:	00 00                	add    %al,(%rax)
     3e7:	00 fc                	add    %bh,%ah
     3e9:	12 00                	adc    (%rax),%al
     3eb:	00 00                	add    %al,(%rax)
     3ed:	00 00                	add    %al,(%rax)
     3ef:	00 73 13             	add    %dh,0x13(%rbx)
     3f2:	00 00                	add    %al,(%rax)
     3f4:	00 00                	add    %al,(%rax)
     3f6:	00 00                	add    %al,(%rax)
     3f8:	85 13                	test   %edx,(%rbx)
	...
     40e:	00 00                	add    %al,(%rax)
     410:	73 0d                	jae    41f <__abi_tag+0x15b>
     412:	00 00                	add    %al,(%rax)
     414:	00 00                	add    %al,(%rax)
     416:	00 00                	add    %al,(%rax)
     418:	c8 0d 00 00          	enterq $0xd,$0x0
     41c:	00 00                	add    %al,(%rax)
     41e:	00 00                	add    %al,(%rax)
     420:	e6 0d                	out    %al,$0xd
     422:	00 00                	add    %al,(%rax)
     424:	00 00                	add    %al,(%rax)
     426:	00 00                	add    %al,(%rax)
     428:	f5                   	cmc    
     429:	0d 00 00 00 00       	or     $0x0,%eax
     42e:	00 00                	add    %al,(%rax)
     430:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # 436 <__abi_tag+0x172>
     436:	00 00                	add    %al,(%rax)
     438:	0e                   	(bad)  
     439:	0e                   	(bad)  
     43a:	00 00                	add    %al,(%rax)
     43c:	00 00                	add    %al,(%rax)
     43e:	00 00                	add    %al,(%rax)
     440:	16                   	(bad)  
     441:	0e                   	(bad)  
     442:	00 00                	add    %al,(%rax)
     444:	00 00                	add    %al,(%rax)
     446:	00 00                	add    %al,(%rax)
     448:	25 0e 00 00 00       	and    $0xe,%eax
     44d:	00 00                	add    %al,(%rax)
     44f:	00 2d 0e 00 00 00    	add    %ch,0xe(%rip)        # 463 <__abi_tag+0x19f>
     455:	00 00                	add    %al,(%rax)
     457:	00 42 0e             	add    %al,0xe(%rdx)
     45a:	00 00                	add    %al,(%rax)
     45c:	00 00                	add    %al,(%rax)
     45e:	00 00                	add    %al,(%rax)
     460:	4b 0e                	rex.WXB (bad) 
     462:	00 00                	add    %al,(%rax)
     464:	00 00                	add    %al,(%rax)
     466:	00 00                	add    %al,(%rax)
     468:	60                   	(bad)  
     469:	0e                   	(bad)  
     46a:	00 00                	add    %al,(%rax)
     46c:	00 00                	add    %al,(%rax)
     46e:	00 00                	add    %al,(%rax)
     470:	69 0e 00 00 00 00    	imul   $0x0,(%rsi),%ecx
     476:	00 00                	add    %al,(%rax)
     478:	7e 0e                	jle    488 <__abi_tag+0x1c4>
     47a:	00 00                	add    %al,(%rax)
     47c:	00 00                	add    %al,(%rax)
     47e:	00 00                	add    %al,(%rax)
     480:	86 0e                	xchg   %cl,(%rsi)
     482:	00 00                	add    %al,(%rax)
     484:	00 00                	add    %al,(%rax)
     486:	00 00                	add    %al,(%rax)
     488:	9b                   	fwait
     489:	0e                   	(bad)  
     48a:	00 00                	add    %al,(%rax)
     48c:	00 00                	add    %al,(%rax)
     48e:	00 00                	add    %al,(%rax)
     490:	a3 0e 00 00 00 00 00 	movabs %eax,0xb80000000000000e
     497:	00 b8 
     499:	0e                   	(bad)  
     49a:	00 00                	add    %al,(%rax)
     49c:	00 00                	add    %al,(%rax)
     49e:	00 00                	add    %al,(%rax)
     4a0:	c1 0e 00             	rorl   $0x0,(%rsi)
     4a3:	00 00                	add    %al,(%rax)
     4a5:	00 00                	add    %al,(%rax)
     4a7:	00 d6                	add    %dl,%dh
     4a9:	0e                   	(bad)  
     4aa:	00 00                	add    %al,(%rax)
     4ac:	00 00                	add    %al,(%rax)
     4ae:	00 00                	add    %al,(%rax)
     4b0:	df 0e                	fisttps (%rsi)
     4b2:	00 00                	add    %al,(%rax)
     4b4:	00 00                	add    %al,(%rax)
     4b6:	00 00                	add    %al,(%rax)
     4b8:	f4                   	hlt    
     4b9:	0e                   	(bad)  
     4ba:	00 00                	add    %al,(%rax)
     4bc:	00 00                	add    %al,(%rax)
     4be:	00 00                	add    %al,(%rax)
     4c0:	fc                   	cld    
     4c1:	0e                   	(bad)  
     4c2:	00 00                	add    %al,(%rax)
     4c4:	00 00                	add    %al,(%rax)
     4c6:	00 00                	add    %al,(%rax)
     4c8:	11 0f                	adc    %ecx,(%rdi)
     4ca:	00 00                	add    %al,(%rax)
     4cc:	00 00                	add    %al,(%rax)
     4ce:	00 00                	add    %al,(%rax)
     4d0:	19 0f                	sbb    %ecx,(%rdi)
     4d2:	00 00                	add    %al,(%rax)
     4d4:	00 00                	add    %al,(%rax)
     4d6:	00 00                	add    %al,(%rax)
     4d8:	2e 0f 00 00          	sldt   %cs:(%rax)
     4dc:	00 00                	add    %al,(%rax)
     4de:	00 00                	add    %al,(%rax)
     4e0:	37                   	(bad)  
     4e1:	0f 00 00             	sldt   (%rax)
     4e4:	00 00                	add    %al,(%rax)
     4e6:	00 00                	add    %al,(%rax)
     4e8:	4c 0f 00 00          	rex.WR sldt (%rax)
     4ec:	00 00                	add    %al,(%rax)
     4ee:	00 00                	add    %al,(%rax)
     4f0:	55                   	push   %rbp
     4f1:	0f 00 00             	sldt   (%rax)
     4f4:	00 00                	add    %al,(%rax)
     4f6:	00 00                	add    %al,(%rax)
     4f8:	6a 0f                	pushq  $0xf
     4fa:	00 00                	add    %al,(%rax)
     4fc:	00 00                	add    %al,(%rax)
     4fe:	00 00                	add    %al,(%rax)
     500:	72 0f                	jb     511 <__abi_tag+0x24d>
     502:	00 00                	add    %al,(%rax)
     504:	00 00                	add    %al,(%rax)
     506:	00 00                	add    %al,(%rax)
     508:	87 0f                	xchg   %ecx,(%rdi)
     50a:	00 00                	add    %al,(%rax)
     50c:	00 00                	add    %al,(%rax)
     50e:	00 00                	add    %al,(%rax)
     510:	8f                   	(bad)  
     511:	0f 00 00             	sldt   (%rax)
     514:	00 00                	add    %al,(%rax)
     516:	00 00                	add    %al,(%rax)
     518:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     519:	0f 00 00             	sldt   (%rax)
     51c:	00 00                	add    %al,(%rax)
     51e:	00 00                	add    %al,(%rax)
     520:	ad                   	lods   %ds:(%rsi),%eax
     521:	0f 00 00             	sldt   (%rax)
     524:	00 00                	add    %al,(%rax)
     526:	00 00                	add    %al,(%rax)
     528:	c2 0f 00             	retq   $0xf
     52b:	00 00                	add    %al,(%rax)
     52d:	00 00                	add    %al,(%rax)
     52f:	00 cb                	add    %cl,%bl
     531:	0f 00 00             	sldt   (%rax)
     534:	00 00                	add    %al,(%rax)
     536:	00 00                	add    %al,(%rax)
     538:	e0 0f                	loopne 549 <__abi_tag+0x285>
     53a:	00 00                	add    %al,(%rax)
     53c:	00 00                	add    %al,(%rax)
     53e:	00 00                	add    %al,(%rax)
     540:	e8 0f 00 00 00       	callq  554 <__abi_tag+0x290>
     545:	00 00                	add    %al,(%rax)
     547:	00 fd                	add    %bh,%ch
     549:	0f 00 00             	sldt   (%rax)
     54c:	00 00                	add    %al,(%rax)
     54e:	00 00                	add    %al,(%rax)
     550:	05 10 00 00 00       	add    $0x10,%eax
     555:	00 00                	add    %al,(%rax)
     557:	00 1a                	add    %bl,(%rdx)
     559:	10 00                	adc    %al,(%rax)
     55b:	00 00                	add    %al,(%rax)
     55d:	00 00                	add    %al,(%rax)
     55f:	00 23                	add    %ah,(%rbx)
     561:	10 00                	adc    %al,(%rax)
     563:	00 00                	add    %al,(%rax)
     565:	00 00                	add    %al,(%rax)
     567:	00 38                	add    %bh,(%rax)
     569:	10 00                	adc    %al,(%rax)
     56b:	00 00                	add    %al,(%rax)
     56d:	00 00                	add    %al,(%rax)
     56f:	00 41 10             	add    %al,0x10(%rcx)
     572:	00 00                	add    %al,(%rax)
     574:	00 00                	add    %al,(%rax)
     576:	00 00                	add    %al,(%rax)
     578:	56                   	push   %rsi
     579:	10 00                	adc    %al,(%rax)
     57b:	00 00                	add    %al,(%rax)
     57d:	00 00                	add    %al,(%rax)
     57f:	00 5e 10             	add    %bl,0x10(%rsi)
     582:	00 00                	add    %al,(%rax)
     584:	00 00                	add    %al,(%rax)
     586:	00 00                	add    %al,(%rax)
     588:	73 10                	jae    59a <__abi_tag+0x2d6>
     58a:	00 00                	add    %al,(%rax)
     58c:	00 00                	add    %al,(%rax)
     58e:	00 00                	add    %al,(%rax)
     590:	7b 10                	jnp    5a2 <__abi_tag+0x2de>
     592:	00 00                	add    %al,(%rax)
     594:	00 00                	add    %al,(%rax)
     596:	00 00                	add    %al,(%rax)
     598:	90                   	nop
     599:	10 00                	adc    %al,(%rax)
     59b:	00 00                	add    %al,(%rax)
     59d:	00 00                	add    %al,(%rax)
     59f:	00 99 10 00 00 00    	add    %bl,0x10(%rcx)
     5a5:	00 00                	add    %al,(%rax)
     5a7:	00 ae 10 00 00 00    	add    %ch,0x10(%rsi)
     5ad:	00 00                	add    %al,(%rax)
     5af:	00 b7 10 00 00 00    	add    %dh,0x10(%rdi)
     5b5:	00 00                	add    %al,(%rax)
     5b7:	00 cc                	add    %cl,%ah
     5b9:	10 00                	adc    %al,(%rax)
     5bb:	00 00                	add    %al,(%rax)
     5bd:	00 00                	add    %al,(%rax)
     5bf:	00 d4                	add    %dl,%ah
     5c1:	10 00                	adc    %al,(%rax)
     5c3:	00 00                	add    %al,(%rax)
     5c5:	00 00                	add    %al,(%rax)
     5c7:	00 e9                	add    %ch,%cl
     5c9:	10 00                	adc    %al,(%rax)
     5cb:	00 00                	add    %al,(%rax)
     5cd:	00 00                	add    %al,(%rax)
     5cf:	00 f1                	add    %dh,%cl
     5d1:	10 00                	adc    %al,(%rax)
     5d3:	00 00                	add    %al,(%rax)
     5d5:	00 00                	add    %al,(%rax)
     5d7:	00 06                	add    %al,(%rsi)
     5d9:	11 00                	adc    %eax,(%rax)
     5db:	00 00                	add    %al,(%rax)
     5dd:	00 00                	add    %al,(%rax)
     5df:	00 0f                	add    %cl,(%rdi)
     5e1:	11 00                	adc    %eax,(%rax)
     5e3:	00 00                	add    %al,(%rax)
     5e5:	00 00                	add    %al,(%rax)
     5e7:	00 24 11             	add    %ah,(%rcx,%rdx,1)
     5ea:	00 00                	add    %al,(%rax)
     5ec:	00 00                	add    %al,(%rax)
     5ee:	00 00                	add    %al,(%rax)
     5f0:	2d 11 00 00 00       	sub    $0x11,%eax
     5f5:	00 00                	add    %al,(%rax)
     5f7:	00 42 11             	add    %al,0x11(%rdx)
     5fa:	00 00                	add    %al,(%rax)
     5fc:	00 00                	add    %al,(%rax)
     5fe:	00 00                	add    %al,(%rax)
     600:	4a 11 00             	rex.WX adc %rax,(%rax)
     603:	00 00                	add    %al,(%rax)
     605:	00 00                	add    %al,(%rax)
     607:	00 5f 11             	add    %bl,0x11(%rdi)
     60a:	00 00                	add    %al,(%rax)
     60c:	00 00                	add    %al,(%rax)
     60e:	00 00                	add    %al,(%rax)
     610:	67 11 00             	adc    %eax,(%eax)
     613:	00 00                	add    %al,(%rax)
     615:	00 00                	add    %al,(%rax)
     617:	00 7c 11 00          	add    %bh,0x0(%rcx,%rdx,1)
     61b:	00 00                	add    %al,(%rax)
     61d:	00 00                	add    %al,(%rax)
     61f:	00 85 11 00 00 00    	add    %al,0x11(%rbp)
     625:	00 00                	add    %al,(%rax)
     627:	00 9a 11 00 00 00    	add    %bl,0x11(%rdx)
     62d:	00 00                	add    %al,(%rax)
     62f:	00 a3 11 00 00 00    	add    %ah,0x11(%rbx)
     635:	00 00                	add    %al,(%rax)
     637:	00 b8 11 00 00 00    	add    %bh,0x11(%rax)
     63d:	00 00                	add    %al,(%rax)
     63f:	00 c0                	add    %al,%al
     641:	11 00                	adc    %eax,(%rax)
     643:	00 00                	add    %al,(%rax)
     645:	00 00                	add    %al,(%rax)
     647:	00 d5                	add    %dl,%ch
     649:	11 00                	adc    %eax,(%rax)
     64b:	00 00                	add    %al,(%rax)
     64d:	00 00                	add    %al,(%rax)
     64f:	00 dd                	add    %bl,%ch
     651:	11 00                	adc    %eax,(%rax)
     653:	00 00                	add    %al,(%rax)
     655:	00 00                	add    %al,(%rax)
     657:	00 f2                	add    %dh,%dl
     659:	11 00                	adc    %eax,(%rax)
     65b:	00 00                	add    %al,(%rax)
     65d:	00 00                	add    %al,(%rax)
     65f:	00 fb                	add    %bh,%bl
     661:	11 00                	adc    %eax,(%rax)
     663:	00 00                	add    %al,(%rax)
     665:	00 00                	add    %al,(%rax)
     667:	00 10                	add    %dl,(%rax)
     669:	12 00                	adc    (%rax),%al
     66b:	00 00                	add    %al,(%rax)
     66d:	00 00                	add    %al,(%rax)
     66f:	00 19                	add    %bl,(%rcx)
     671:	12 00                	adc    (%rax),%al
     673:	00 00                	add    %al,(%rax)
     675:	00 00                	add    %al,(%rax)
     677:	00 2e                	add    %ch,(%rsi)
     679:	12 00                	adc    (%rax),%al
     67b:	00 00                	add    %al,(%rax)
     67d:	00 00                	add    %al,(%rax)
     67f:	00 36                	add    %dh,(%rsi)
     681:	12 00                	adc    (%rax),%al
     683:	00 00                	add    %al,(%rax)
     685:	00 00                	add    %al,(%rax)
     687:	00 4b 12             	add    %cl,0x12(%rbx)
     68a:	00 00                	add    %al,(%rax)
     68c:	00 00                	add    %al,(%rax)
     68e:	00 00                	add    %al,(%rax)
     690:	53                   	push   %rbx
     691:	12 00                	adc    (%rax),%al
     693:	00 00                	add    %al,(%rax)
     695:	00 00                	add    %al,(%rax)
     697:	00 68 12             	add    %ch,0x12(%rax)
     69a:	00 00                	add    %al,(%rax)
     69c:	00 00                	add    %al,(%rax)
     69e:	00 00                	add    %al,(%rax)
     6a0:	71 12                	jno    6b4 <__abi_tag+0x3f0>
     6a2:	00 00                	add    %al,(%rax)
     6a4:	00 00                	add    %al,(%rax)
     6a6:	00 00                	add    %al,(%rax)
     6a8:	86 12                	xchg   %dl,(%rdx)
     6aa:	00 00                	add    %al,(%rax)
     6ac:	00 00                	add    %al,(%rax)
     6ae:	00 00                	add    %al,(%rax)
     6b0:	8f                   	(bad)  
     6b1:	12 00                	adc    (%rax),%al
     6b3:	00 00                	add    %al,(%rax)
     6b5:	00 00                	add    %al,(%rax)
     6b7:	00 a4 12 00 00 00 00 	add    %ah,0x0(%rdx,%rdx,1)
     6be:	00 00                	add    %al,(%rax)
     6c0:	ac                   	lods   %ds:(%rsi),%al
     6c1:	12 00                	adc    (%rax),%al
     6c3:	00 00                	add    %al,(%rax)
     6c5:	00 00                	add    %al,(%rax)
     6c7:	00 c1                	add    %al,%cl
     6c9:	12 00                	adc    (%rax),%al
     6cb:	00 00                	add    %al,(%rax)
     6cd:	00 00                	add    %al,(%rax)
     6cf:	00 c9                	add    %cl,%cl
     6d1:	12 00                	adc    (%rax),%al
     6d3:	00 00                	add    %al,(%rax)
     6d5:	00 00                	add    %al,(%rax)
     6d7:	00 de                	add    %bl,%dh
     6d9:	12 00                	adc    (%rax),%al
     6db:	00 00                	add    %al,(%rax)
     6dd:	00 00                	add    %al,(%rax)
     6df:	00 e7                	add    %ah,%bh
     6e1:	12 00                	adc    (%rax),%al
     6e3:	00 00                	add    %al,(%rax)
     6e5:	00 00                	add    %al,(%rax)
     6e7:	00 fc                	add    %bh,%ah
     6e9:	12 00                	adc    (%rax),%al
	...
     6ff:	00 c8                	add    %cl,%al
     701:	0d 00 00 00 00       	or     $0x0,%eax
     706:	00 00                	add    %al,(%rax)
     708:	dd 0d 00 00 00 00    	fisttpll 0x0(%rip)        # 70e <__abi_tag+0x44a>
     70e:	00 00                	add    %al,(%rax)
     710:	f5                   	cmc    
     711:	0d 00 00 00 00       	or     $0x0,%eax
     716:	00 00                	add    %al,(%rax)
     718:	fa                   	cli    
     719:	0d 00 00 00 00       	or     $0x0,%eax
     71e:	00 00                	add    %al,(%rax)
     720:	0e                   	(bad)  
     721:	0e                   	(bad)  
     722:	00 00                	add    %al,(%rax)
     724:	00 00                	add    %al,(%rax)
     726:	00 00                	add    %al,(%rax)
     728:	12 0e                	adc    (%rsi),%cl
     72a:	00 00                	add    %al,(%rax)
     72c:	00 00                	add    %al,(%rax)
     72e:	00 00                	add    %al,(%rax)
     730:	25 0e 00 00 00       	and    $0xe,%eax
     735:	00 00                	add    %al,(%rax)
     737:	00 29                	add    %ch,(%rcx)
     739:	0e                   	(bad)  
     73a:	00 00                	add    %al,(%rax)
     73c:	00 00                	add    %al,(%rax)
     73e:	00 00                	add    %al,(%rax)
     740:	42 0e                	rex.X (bad) 
     742:	00 00                	add    %al,(%rax)
     744:	00 00                	add    %al,(%rax)
     746:	00 00                	add    %al,(%rax)
     748:	46 0e                	rex.RX (bad) 
     74a:	00 00                	add    %al,(%rax)
     74c:	00 00                	add    %al,(%rax)
     74e:	00 00                	add    %al,(%rax)
     750:	60                   	(bad)  
     751:	0e                   	(bad)  
     752:	00 00                	add    %al,(%rax)
     754:	00 00                	add    %al,(%rax)
     756:	00 00                	add    %al,(%rax)
     758:	64 0e                	fs (bad) 
     75a:	00 00                	add    %al,(%rax)
     75c:	00 00                	add    %al,(%rax)
     75e:	00 00                	add    %al,(%rax)
     760:	7e 0e                	jle    770 <__abi_tag+0x4ac>
     762:	00 00                	add    %al,(%rax)
     764:	00 00                	add    %al,(%rax)
     766:	00 00                	add    %al,(%rax)
     768:	82                   	(bad)  
     769:	0e                   	(bad)  
     76a:	00 00                	add    %al,(%rax)
     76c:	00 00                	add    %al,(%rax)
     76e:	00 00                	add    %al,(%rax)
     770:	9b                   	fwait
     771:	0e                   	(bad)  
     772:	00 00                	add    %al,(%rax)
     774:	00 00                	add    %al,(%rax)
     776:	00 00                	add    %al,(%rax)
     778:	9f                   	lahf   
     779:	0e                   	(bad)  
     77a:	00 00                	add    %al,(%rax)
     77c:	00 00                	add    %al,(%rax)
     77e:	00 00                	add    %al,(%rax)
     780:	b8 0e 00 00 00       	mov    $0xe,%eax
     785:	00 00                	add    %al,(%rax)
     787:	00 bc 0e 00 00 00 00 	add    %bh,0x0(%rsi,%rcx,1)
     78e:	00 00                	add    %al,(%rax)
     790:	d6                   	(bad)  
     791:	0e                   	(bad)  
     792:	00 00                	add    %al,(%rax)
     794:	00 00                	add    %al,(%rax)
     796:	00 00                	add    %al,(%rax)
     798:	da 0e                	fimull (%rsi)
     79a:	00 00                	add    %al,(%rax)
     79c:	00 00                	add    %al,(%rax)
     79e:	00 00                	add    %al,(%rax)
     7a0:	f4                   	hlt    
     7a1:	0e                   	(bad)  
     7a2:	00 00                	add    %al,(%rax)
     7a4:	00 00                	add    %al,(%rax)
     7a6:	00 00                	add    %al,(%rax)
     7a8:	f8                   	clc    
     7a9:	0e                   	(bad)  
     7aa:	00 00                	add    %al,(%rax)
     7ac:	00 00                	add    %al,(%rax)
     7ae:	00 00                	add    %al,(%rax)
     7b0:	11 0f                	adc    %ecx,(%rdi)
     7b2:	00 00                	add    %al,(%rax)
     7b4:	00 00                	add    %al,(%rax)
     7b6:	00 00                	add    %al,(%rax)
     7b8:	15 0f 00 00 00       	adc    $0xf,%eax
     7bd:	00 00                	add    %al,(%rax)
     7bf:	00 2e                	add    %ch,(%rsi)
     7c1:	0f 00 00             	sldt   (%rax)
     7c4:	00 00                	add    %al,(%rax)
     7c6:	00 00                	add    %al,(%rax)
     7c8:	32 0f                	xor    (%rdi),%cl
     7ca:	00 00                	add    %al,(%rax)
     7cc:	00 00                	add    %al,(%rax)
     7ce:	00 00                	add    %al,(%rax)
     7d0:	4c 0f 00 00          	rex.WR sldt (%rax)
     7d4:	00 00                	add    %al,(%rax)
     7d6:	00 00                	add    %al,(%rax)
     7d8:	50                   	push   %rax
     7d9:	0f 00 00             	sldt   (%rax)
     7dc:	00 00                	add    %al,(%rax)
     7de:	00 00                	add    %al,(%rax)
     7e0:	6a 0f                	pushq  $0xf
     7e2:	00 00                	add    %al,(%rax)
     7e4:	00 00                	add    %al,(%rax)
     7e6:	00 00                	add    %al,(%rax)
     7e8:	6e                   	outsb  %ds:(%rsi),(%dx)
     7e9:	0f 00 00             	sldt   (%rax)
     7ec:	00 00                	add    %al,(%rax)
     7ee:	00 00                	add    %al,(%rax)
     7f0:	87 0f                	xchg   %ecx,(%rdi)
     7f2:	00 00                	add    %al,(%rax)
     7f4:	00 00                	add    %al,(%rax)
     7f6:	00 00                	add    %al,(%rax)
     7f8:	8b 0f                	mov    (%rdi),%ecx
     7fa:	00 00                	add    %al,(%rax)
     7fc:	00 00                	add    %al,(%rax)
     7fe:	00 00                	add    %al,(%rax)
     800:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     801:	0f 00 00             	sldt   (%rax)
     804:	00 00                	add    %al,(%rax)
     806:	00 00                	add    %al,(%rax)
     808:	a8 0f                	test   $0xf,%al
     80a:	00 00                	add    %al,(%rax)
     80c:	00 00                	add    %al,(%rax)
     80e:	00 00                	add    %al,(%rax)
     810:	c2 0f 00             	retq   $0xf
     813:	00 00                	add    %al,(%rax)
     815:	00 00                	add    %al,(%rax)
     817:	00 c6                	add    %al,%dh
     819:	0f 00 00             	sldt   (%rax)
     81c:	00 00                	add    %al,(%rax)
     81e:	00 00                	add    %al,(%rax)
     820:	e0 0f                	loopne 831 <__abi_tag+0x56d>
     822:	00 00                	add    %al,(%rax)
     824:	00 00                	add    %al,(%rax)
     826:	00 00                	add    %al,(%rax)
     828:	e4 0f                	in     $0xf,%al
     82a:	00 00                	add    %al,(%rax)
     82c:	00 00                	add    %al,(%rax)
     82e:	00 00                	add    %al,(%rax)
     830:	fd                   	std    
     831:	0f 00 00             	sldt   (%rax)
     834:	00 00                	add    %al,(%rax)
     836:	00 00                	add    %al,(%rax)
     838:	01 10                	add    %edx,(%rax)
     83a:	00 00                	add    %al,(%rax)
     83c:	00 00                	add    %al,(%rax)
     83e:	00 00                	add    %al,(%rax)
     840:	1a 10                	sbb    (%rax),%dl
     842:	00 00                	add    %al,(%rax)
     844:	00 00                	add    %al,(%rax)
     846:	00 00                	add    %al,(%rax)
     848:	1e                   	(bad)  
     849:	10 00                	adc    %al,(%rax)
     84b:	00 00                	add    %al,(%rax)
     84d:	00 00                	add    %al,(%rax)
     84f:	00 38                	add    %bh,(%rax)
     851:	10 00                	adc    %al,(%rax)
     853:	00 00                	add    %al,(%rax)
     855:	00 00                	add    %al,(%rax)
     857:	00 3c 10             	add    %bh,(%rax,%rdx,1)
     85a:	00 00                	add    %al,(%rax)
     85c:	00 00                	add    %al,(%rax)
     85e:	00 00                	add    %al,(%rax)
     860:	56                   	push   %rsi
     861:	10 00                	adc    %al,(%rax)
     863:	00 00                	add    %al,(%rax)
     865:	00 00                	add    %al,(%rax)
     867:	00 5a 10             	add    %bl,0x10(%rdx)
     86a:	00 00                	add    %al,(%rax)
     86c:	00 00                	add    %al,(%rax)
     86e:	00 00                	add    %al,(%rax)
     870:	73 10                	jae    882 <__abi_tag+0x5be>
     872:	00 00                	add    %al,(%rax)
     874:	00 00                	add    %al,(%rax)
     876:	00 00                	add    %al,(%rax)
     878:	77 10                	ja     88a <__abi_tag+0x5c6>
     87a:	00 00                	add    %al,(%rax)
     87c:	00 00                	add    %al,(%rax)
     87e:	00 00                	add    %al,(%rax)
     880:	90                   	nop
     881:	10 00                	adc    %al,(%rax)
     883:	00 00                	add    %al,(%rax)
     885:	00 00                	add    %al,(%rax)
     887:	00 94 10 00 00 00 00 	add    %dl,0x0(%rax,%rdx,1)
     88e:	00 00                	add    %al,(%rax)
     890:	ae                   	scas   %es:(%rdi),%al
     891:	10 00                	adc    %al,(%rax)
     893:	00 00                	add    %al,(%rax)
     895:	00 00                	add    %al,(%rax)
     897:	00 b2 10 00 00 00    	add    %dh,0x10(%rdx)
     89d:	00 00                	add    %al,(%rax)
     89f:	00 cc                	add    %cl,%ah
     8a1:	10 00                	adc    %al,(%rax)
     8a3:	00 00                	add    %al,(%rax)
     8a5:	00 00                	add    %al,(%rax)
     8a7:	00 d0                	add    %dl,%al
     8a9:	10 00                	adc    %al,(%rax)
     8ab:	00 00                	add    %al,(%rax)
     8ad:	00 00                	add    %al,(%rax)
     8af:	00 e9                	add    %ch,%cl
     8b1:	10 00                	adc    %al,(%rax)
     8b3:	00 00                	add    %al,(%rax)
     8b5:	00 00                	add    %al,(%rax)
     8b7:	00 ed                	add    %ch,%ch
     8b9:	10 00                	adc    %al,(%rax)
     8bb:	00 00                	add    %al,(%rax)
     8bd:	00 00                	add    %al,(%rax)
     8bf:	00 06                	add    %al,(%rsi)
     8c1:	11 00                	adc    %eax,(%rax)
     8c3:	00 00                	add    %al,(%rax)
     8c5:	00 00                	add    %al,(%rax)
     8c7:	00 0a                	add    %cl,(%rdx)
     8c9:	11 00                	adc    %eax,(%rax)
     8cb:	00 00                	add    %al,(%rax)
     8cd:	00 00                	add    %al,(%rax)
     8cf:	00 24 11             	add    %ah,(%rcx,%rdx,1)
     8d2:	00 00                	add    %al,(%rax)
     8d4:	00 00                	add    %al,(%rax)
     8d6:	00 00                	add    %al,(%rax)
     8d8:	28 11                	sub    %dl,(%rcx)
     8da:	00 00                	add    %al,(%rax)
     8dc:	00 00                	add    %al,(%rax)
     8de:	00 00                	add    %al,(%rax)
     8e0:	42 11 00             	rex.X adc %eax,(%rax)
     8e3:	00 00                	add    %al,(%rax)
     8e5:	00 00                	add    %al,(%rax)
     8e7:	00 46 11             	add    %al,0x11(%rsi)
     8ea:	00 00                	add    %al,(%rax)
     8ec:	00 00                	add    %al,(%rax)
     8ee:	00 00                	add    %al,(%rax)
     8f0:	5f                   	pop    %rdi
     8f1:	11 00                	adc    %eax,(%rax)
     8f3:	00 00                	add    %al,(%rax)
     8f5:	00 00                	add    %al,(%rax)
     8f7:	00 63 11             	add    %ah,0x11(%rbx)
     8fa:	00 00                	add    %al,(%rax)
     8fc:	00 00                	add    %al,(%rax)
     8fe:	00 00                	add    %al,(%rax)
     900:	7c 11                	jl     913 <__abi_tag+0x64f>
     902:	00 00                	add    %al,(%rax)
     904:	00 00                	add    %al,(%rax)
     906:	00 00                	add    %al,(%rax)
     908:	80 11 00             	adcb   $0x0,(%rcx)
     90b:	00 00                	add    %al,(%rax)
     90d:	00 00                	add    %al,(%rax)
     90f:	00 9a 11 00 00 00    	add    %bl,0x11(%rdx)
     915:	00 00                	add    %al,(%rax)
     917:	00 9e 11 00 00 00    	add    %bl,0x11(%rsi)
     91d:	00 00                	add    %al,(%rax)
     91f:	00 b8 11 00 00 00    	add    %bh,0x11(%rax)
     925:	00 00                	add    %al,(%rax)
     927:	00 bc 11 00 00 00 00 	add    %bh,0x0(%rcx,%rdx,1)
     92e:	00 00                	add    %al,(%rax)
     930:	d5                   	(bad)  
     931:	11 00                	adc    %eax,(%rax)
     933:	00 00                	add    %al,(%rax)
     935:	00 00                	add    %al,(%rax)
     937:	00 d9                	add    %bl,%cl
     939:	11 00                	adc    %eax,(%rax)
     93b:	00 00                	add    %al,(%rax)
     93d:	00 00                	add    %al,(%rax)
     93f:	00 f2                	add    %dh,%dl
     941:	11 00                	adc    %eax,(%rax)
     943:	00 00                	add    %al,(%rax)
     945:	00 00                	add    %al,(%rax)
     947:	00 f6                	add    %dh,%dh
     949:	11 00                	adc    %eax,(%rax)
     94b:	00 00                	add    %al,(%rax)
     94d:	00 00                	add    %al,(%rax)
     94f:	00 10                	add    %dl,(%rax)
     951:	12 00                	adc    (%rax),%al
     953:	00 00                	add    %al,(%rax)
     955:	00 00                	add    %al,(%rax)
     957:	00 14 12             	add    %dl,(%rdx,%rdx,1)
     95a:	00 00                	add    %al,(%rax)
     95c:	00 00                	add    %al,(%rax)
     95e:	00 00                	add    %al,(%rax)
     960:	2e 12 00             	adc    %cs:(%rax),%al
     963:	00 00                	add    %al,(%rax)
     965:	00 00                	add    %al,(%rax)
     967:	00 32                	add    %dh,(%rdx)
     969:	12 00                	adc    (%rax),%al
     96b:	00 00                	add    %al,(%rax)
     96d:	00 00                	add    %al,(%rax)
     96f:	00 4b 12             	add    %cl,0x12(%rbx)
     972:	00 00                	add    %al,(%rax)
     974:	00 00                	add    %al,(%rax)
     976:	00 00                	add    %al,(%rax)
     978:	4f 12 00             	rex.WRXB adc (%r8),%r8b
     97b:	00 00                	add    %al,(%rax)
     97d:	00 00                	add    %al,(%rax)
     97f:	00 68 12             	add    %ch,0x12(%rax)
     982:	00 00                	add    %al,(%rax)
     984:	00 00                	add    %al,(%rax)
     986:	00 00                	add    %al,(%rax)
     988:	6c                   	insb   (%dx),%es:(%rdi)
     989:	12 00                	adc    (%rax),%al
     98b:	00 00                	add    %al,(%rax)
     98d:	00 00                	add    %al,(%rax)
     98f:	00 86 12 00 00 00    	add    %al,0x12(%rsi)
     995:	00 00                	add    %al,(%rax)
     997:	00 8a 12 00 00 00    	add    %cl,0x12(%rdx)
     99d:	00 00                	add    %al,(%rax)
     99f:	00 a4 12 00 00 00 00 	add    %ah,0x0(%rdx,%rdx,1)
     9a6:	00 00                	add    %al,(%rax)
     9a8:	a8 12                	test   $0x12,%al
     9aa:	00 00                	add    %al,(%rax)
     9ac:	00 00                	add    %al,(%rax)
     9ae:	00 00                	add    %al,(%rax)
     9b0:	c1 12 00             	rcll   $0x0,(%rdx)
     9b3:	00 00                	add    %al,(%rax)
     9b5:	00 00                	add    %al,(%rax)
     9b7:	00 c5                	add    %al,%ch
     9b9:	12 00                	adc    (%rax),%al
     9bb:	00 00                	add    %al,(%rax)
     9bd:	00 00                	add    %al,(%rax)
     9bf:	00 de                	add    %bl,%dh
     9c1:	12 00                	adc    (%rax),%al
     9c3:	00 00                	add    %al,(%rax)
     9c5:	00 00                	add    %al,(%rax)
     9c7:	00 e2                	add    %ah,%dl
     9c9:	12 00                	adc    (%rax),%al
     9cb:	00 00                	add    %al,(%rax)
     9cd:	00 00                	add    %al,(%rax)
     9cf:	00 fc                	add    %bh,%ah
     9d1:	12 00                	adc    (%rax),%al
     9d3:	00 00                	add    %al,(%rax)
     9d5:	00 00                	add    %al,(%rax)
     9d7:	00 00                	add    %al,(%rax)
     9d9:	13 00                	adc    (%rax),%eax
     9db:	00 00                	add    %al,(%rax)
     9dd:	00 00                	add    %al,(%rax)
     9df:	00 2b                	add    %ch,(%rbx)
     9e1:	13 00                	adc    (%rax),%eax
     9e3:	00 00                	add    %al,(%rax)
     9e5:	00 00                	add    %al,(%rax)
     9e7:	00 2f                	add    %ch,(%rdi)
     9e9:	13 00                	adc    (%rax),%eax
     9eb:	00 00                	add    %al,(%rax)
     9ed:	00 00                	add    %al,(%rax)
     9ef:	00 34 13             	add    %dh,(%rbx,%rdx,1)
     9f2:	00 00                	add    %al,(%rax)
     9f4:	00 00                	add    %al,(%rax)
     9f6:	00 00                	add    %al,(%rax)
     9f8:	3d 13 00 00 00       	cmp    $0x13,%eax
     9fd:	00 00                	add    %al,(%rax)
     9ff:	00 41 13             	add    %al,0x13(%rcx)
     a02:	00 00                	add    %al,(%rax)
     a04:	00 00                	add    %al,(%rax)
     a06:	00 00                	add    %al,(%rax)
     a08:	73 13                	jae    a1d <__abi_tag+0x759>
	...
     a1e:	00 00                	add    %al,(%rax)
     a20:	c8 0d 00 00          	enterq $0xd,$0x0
     a24:	00 00                	add    %al,(%rax)
     a26:	00 00                	add    %al,(%rax)
     a28:	dd 0d 00 00 00 00    	fisttpll 0x0(%rip)        # a2e <__abi_tag+0x76a>
     a2e:	00 00                	add    %al,(%rax)
     a30:	f5                   	cmc    
     a31:	0d 00 00 00 00       	or     $0x0,%eax
     a36:	00 00                	add    %al,(%rax)
     a38:	fa                   	cli    
     a39:	0d 00 00 00 00       	or     $0x0,%eax
     a3e:	00 00                	add    %al,(%rax)
     a40:	0e                   	(bad)  
     a41:	0e                   	(bad)  
     a42:	00 00                	add    %al,(%rax)
     a44:	00 00                	add    %al,(%rax)
     a46:	00 00                	add    %al,(%rax)
     a48:	12 0e                	adc    (%rsi),%cl
     a4a:	00 00                	add    %al,(%rax)
     a4c:	00 00                	add    %al,(%rax)
     a4e:	00 00                	add    %al,(%rax)
     a50:	25 0e 00 00 00       	and    $0xe,%eax
     a55:	00 00                	add    %al,(%rax)
     a57:	00 29                	add    %ch,(%rcx)
     a59:	0e                   	(bad)  
     a5a:	00 00                	add    %al,(%rax)
     a5c:	00 00                	add    %al,(%rax)
     a5e:	00 00                	add    %al,(%rax)
     a60:	42 0e                	rex.X (bad) 
     a62:	00 00                	add    %al,(%rax)
     a64:	00 00                	add    %al,(%rax)
     a66:	00 00                	add    %al,(%rax)
     a68:	46 0e                	rex.RX (bad) 
     a6a:	00 00                	add    %al,(%rax)
     a6c:	00 00                	add    %al,(%rax)
     a6e:	00 00                	add    %al,(%rax)
     a70:	60                   	(bad)  
     a71:	0e                   	(bad)  
     a72:	00 00                	add    %al,(%rax)
     a74:	00 00                	add    %al,(%rax)
     a76:	00 00                	add    %al,(%rax)
     a78:	64 0e                	fs (bad) 
     a7a:	00 00                	add    %al,(%rax)
     a7c:	00 00                	add    %al,(%rax)
     a7e:	00 00                	add    %al,(%rax)
     a80:	7e 0e                	jle    a90 <__abi_tag+0x7cc>
     a82:	00 00                	add    %al,(%rax)
     a84:	00 00                	add    %al,(%rax)
     a86:	00 00                	add    %al,(%rax)
     a88:	82                   	(bad)  
     a89:	0e                   	(bad)  
     a8a:	00 00                	add    %al,(%rax)
     a8c:	00 00                	add    %al,(%rax)
     a8e:	00 00                	add    %al,(%rax)
     a90:	9b                   	fwait
     a91:	0e                   	(bad)  
     a92:	00 00                	add    %al,(%rax)
     a94:	00 00                	add    %al,(%rax)
     a96:	00 00                	add    %al,(%rax)
     a98:	9f                   	lahf   
     a99:	0e                   	(bad)  
     a9a:	00 00                	add    %al,(%rax)
     a9c:	00 00                	add    %al,(%rax)
     a9e:	00 00                	add    %al,(%rax)
     aa0:	b8 0e 00 00 00       	mov    $0xe,%eax
     aa5:	00 00                	add    %al,(%rax)
     aa7:	00 bc 0e 00 00 00 00 	add    %bh,0x0(%rsi,%rcx,1)
     aae:	00 00                	add    %al,(%rax)
     ab0:	d6                   	(bad)  
     ab1:	0e                   	(bad)  
     ab2:	00 00                	add    %al,(%rax)
     ab4:	00 00                	add    %al,(%rax)
     ab6:	00 00                	add    %al,(%rax)
     ab8:	da 0e                	fimull (%rsi)
     aba:	00 00                	add    %al,(%rax)
     abc:	00 00                	add    %al,(%rax)
     abe:	00 00                	add    %al,(%rax)
     ac0:	f4                   	hlt    
     ac1:	0e                   	(bad)  
     ac2:	00 00                	add    %al,(%rax)
     ac4:	00 00                	add    %al,(%rax)
     ac6:	00 00                	add    %al,(%rax)
     ac8:	f8                   	clc    
     ac9:	0e                   	(bad)  
     aca:	00 00                	add    %al,(%rax)
     acc:	00 00                	add    %al,(%rax)
     ace:	00 00                	add    %al,(%rax)
     ad0:	11 0f                	adc    %ecx,(%rdi)
     ad2:	00 00                	add    %al,(%rax)
     ad4:	00 00                	add    %al,(%rax)
     ad6:	00 00                	add    %al,(%rax)
     ad8:	15 0f 00 00 00       	adc    $0xf,%eax
     add:	00 00                	add    %al,(%rax)
     adf:	00 2e                	add    %ch,(%rsi)
     ae1:	0f 00 00             	sldt   (%rax)
     ae4:	00 00                	add    %al,(%rax)
     ae6:	00 00                	add    %al,(%rax)
     ae8:	32 0f                	xor    (%rdi),%cl
     aea:	00 00                	add    %al,(%rax)
     aec:	00 00                	add    %al,(%rax)
     aee:	00 00                	add    %al,(%rax)
     af0:	4c 0f 00 00          	rex.WR sldt (%rax)
     af4:	00 00                	add    %al,(%rax)
     af6:	00 00                	add    %al,(%rax)
     af8:	50                   	push   %rax
     af9:	0f 00 00             	sldt   (%rax)
     afc:	00 00                	add    %al,(%rax)
     afe:	00 00                	add    %al,(%rax)
     b00:	6a 0f                	pushq  $0xf
     b02:	00 00                	add    %al,(%rax)
     b04:	00 00                	add    %al,(%rax)
     b06:	00 00                	add    %al,(%rax)
     b08:	6e                   	outsb  %ds:(%rsi),(%dx)
     b09:	0f 00 00             	sldt   (%rax)
     b0c:	00 00                	add    %al,(%rax)
     b0e:	00 00                	add    %al,(%rax)
     b10:	87 0f                	xchg   %ecx,(%rdi)
     b12:	00 00                	add    %al,(%rax)
     b14:	00 00                	add    %al,(%rax)
     b16:	00 00                	add    %al,(%rax)
     b18:	8b 0f                	mov    (%rdi),%ecx
     b1a:	00 00                	add    %al,(%rax)
     b1c:	00 00                	add    %al,(%rax)
     b1e:	00 00                	add    %al,(%rax)
     b20:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     b21:	0f 00 00             	sldt   (%rax)
     b24:	00 00                	add    %al,(%rax)
     b26:	00 00                	add    %al,(%rax)
     b28:	a8 0f                	test   $0xf,%al
     b2a:	00 00                	add    %al,(%rax)
     b2c:	00 00                	add    %al,(%rax)
     b2e:	00 00                	add    %al,(%rax)
     b30:	c2 0f 00             	retq   $0xf
     b33:	00 00                	add    %al,(%rax)
     b35:	00 00                	add    %al,(%rax)
     b37:	00 c6                	add    %al,%dh
     b39:	0f 00 00             	sldt   (%rax)
     b3c:	00 00                	add    %al,(%rax)
     b3e:	00 00                	add    %al,(%rax)
     b40:	e0 0f                	loopne b51 <__abi_tag+0x88d>
     b42:	00 00                	add    %al,(%rax)
     b44:	00 00                	add    %al,(%rax)
     b46:	00 00                	add    %al,(%rax)
     b48:	e4 0f                	in     $0xf,%al
     b4a:	00 00                	add    %al,(%rax)
     b4c:	00 00                	add    %al,(%rax)
     b4e:	00 00                	add    %al,(%rax)
     b50:	fd                   	std    
     b51:	0f 00 00             	sldt   (%rax)
     b54:	00 00                	add    %al,(%rax)
     b56:	00 00                	add    %al,(%rax)
     b58:	01 10                	add    %edx,(%rax)
     b5a:	00 00                	add    %al,(%rax)
     b5c:	00 00                	add    %al,(%rax)
     b5e:	00 00                	add    %al,(%rax)
     b60:	1a 10                	sbb    (%rax),%dl
     b62:	00 00                	add    %al,(%rax)
     b64:	00 00                	add    %al,(%rax)
     b66:	00 00                	add    %al,(%rax)
     b68:	1e                   	(bad)  
     b69:	10 00                	adc    %al,(%rax)
     b6b:	00 00                	add    %al,(%rax)
     b6d:	00 00                	add    %al,(%rax)
     b6f:	00 38                	add    %bh,(%rax)
     b71:	10 00                	adc    %al,(%rax)
     b73:	00 00                	add    %al,(%rax)
     b75:	00 00                	add    %al,(%rax)
     b77:	00 3c 10             	add    %bh,(%rax,%rdx,1)
     b7a:	00 00                	add    %al,(%rax)
     b7c:	00 00                	add    %al,(%rax)
     b7e:	00 00                	add    %al,(%rax)
     b80:	56                   	push   %rsi
     b81:	10 00                	adc    %al,(%rax)
     b83:	00 00                	add    %al,(%rax)
     b85:	00 00                	add    %al,(%rax)
     b87:	00 5a 10             	add    %bl,0x10(%rdx)
     b8a:	00 00                	add    %al,(%rax)
     b8c:	00 00                	add    %al,(%rax)
     b8e:	00 00                	add    %al,(%rax)
     b90:	73 10                	jae    ba2 <__abi_tag+0x8de>
     b92:	00 00                	add    %al,(%rax)
     b94:	00 00                	add    %al,(%rax)
     b96:	00 00                	add    %al,(%rax)
     b98:	77 10                	ja     baa <__abi_tag+0x8e6>
     b9a:	00 00                	add    %al,(%rax)
     b9c:	00 00                	add    %al,(%rax)
     b9e:	00 00                	add    %al,(%rax)
     ba0:	90                   	nop
     ba1:	10 00                	adc    %al,(%rax)
     ba3:	00 00                	add    %al,(%rax)
     ba5:	00 00                	add    %al,(%rax)
     ba7:	00 94 10 00 00 00 00 	add    %dl,0x0(%rax,%rdx,1)
     bae:	00 00                	add    %al,(%rax)
     bb0:	ae                   	scas   %es:(%rdi),%al
     bb1:	10 00                	adc    %al,(%rax)
     bb3:	00 00                	add    %al,(%rax)
     bb5:	00 00                	add    %al,(%rax)
     bb7:	00 b2 10 00 00 00    	add    %dh,0x10(%rdx)
     bbd:	00 00                	add    %al,(%rax)
     bbf:	00 cc                	add    %cl,%ah
     bc1:	10 00                	adc    %al,(%rax)
     bc3:	00 00                	add    %al,(%rax)
     bc5:	00 00                	add    %al,(%rax)
     bc7:	00 d0                	add    %dl,%al
     bc9:	10 00                	adc    %al,(%rax)
     bcb:	00 00                	add    %al,(%rax)
     bcd:	00 00                	add    %al,(%rax)
     bcf:	00 e9                	add    %ch,%cl
     bd1:	10 00                	adc    %al,(%rax)
     bd3:	00 00                	add    %al,(%rax)
     bd5:	00 00                	add    %al,(%rax)
     bd7:	00 ed                	add    %ch,%ch
     bd9:	10 00                	adc    %al,(%rax)
     bdb:	00 00                	add    %al,(%rax)
     bdd:	00 00                	add    %al,(%rax)
     bdf:	00 06                	add    %al,(%rsi)
     be1:	11 00                	adc    %eax,(%rax)
     be3:	00 00                	add    %al,(%rax)
     be5:	00 00                	add    %al,(%rax)
     be7:	00 0a                	add    %cl,(%rdx)
     be9:	11 00                	adc    %eax,(%rax)
     beb:	00 00                	add    %al,(%rax)
     bed:	00 00                	add    %al,(%rax)
     bef:	00 24 11             	add    %ah,(%rcx,%rdx,1)
     bf2:	00 00                	add    %al,(%rax)
     bf4:	00 00                	add    %al,(%rax)
     bf6:	00 00                	add    %al,(%rax)
     bf8:	28 11                	sub    %dl,(%rcx)
     bfa:	00 00                	add    %al,(%rax)
     bfc:	00 00                	add    %al,(%rax)
     bfe:	00 00                	add    %al,(%rax)
     c00:	42 11 00             	rex.X adc %eax,(%rax)
     c03:	00 00                	add    %al,(%rax)
     c05:	00 00                	add    %al,(%rax)
     c07:	00 46 11             	add    %al,0x11(%rsi)
     c0a:	00 00                	add    %al,(%rax)
     c0c:	00 00                	add    %al,(%rax)
     c0e:	00 00                	add    %al,(%rax)
     c10:	5f                   	pop    %rdi
     c11:	11 00                	adc    %eax,(%rax)
     c13:	00 00                	add    %al,(%rax)
     c15:	00 00                	add    %al,(%rax)
     c17:	00 63 11             	add    %ah,0x11(%rbx)
     c1a:	00 00                	add    %al,(%rax)
     c1c:	00 00                	add    %al,(%rax)
     c1e:	00 00                	add    %al,(%rax)
     c20:	7c 11                	jl     c33 <__abi_tag+0x96f>
     c22:	00 00                	add    %al,(%rax)
     c24:	00 00                	add    %al,(%rax)
     c26:	00 00                	add    %al,(%rax)
     c28:	80 11 00             	adcb   $0x0,(%rcx)
     c2b:	00 00                	add    %al,(%rax)
     c2d:	00 00                	add    %al,(%rax)
     c2f:	00 9a 11 00 00 00    	add    %bl,0x11(%rdx)
     c35:	00 00                	add    %al,(%rax)
     c37:	00 9e 11 00 00 00    	add    %bl,0x11(%rsi)
     c3d:	00 00                	add    %al,(%rax)
     c3f:	00 b8 11 00 00 00    	add    %bh,0x11(%rax)
     c45:	00 00                	add    %al,(%rax)
     c47:	00 bc 11 00 00 00 00 	add    %bh,0x0(%rcx,%rdx,1)
     c4e:	00 00                	add    %al,(%rax)
     c50:	d5                   	(bad)  
     c51:	11 00                	adc    %eax,(%rax)
     c53:	00 00                	add    %al,(%rax)
     c55:	00 00                	add    %al,(%rax)
     c57:	00 d9                	add    %bl,%cl
     c59:	11 00                	adc    %eax,(%rax)
     c5b:	00 00                	add    %al,(%rax)
     c5d:	00 00                	add    %al,(%rax)
     c5f:	00 f2                	add    %dh,%dl
     c61:	11 00                	adc    %eax,(%rax)
     c63:	00 00                	add    %al,(%rax)
     c65:	00 00                	add    %al,(%rax)
     c67:	00 f6                	add    %dh,%dh
     c69:	11 00                	adc    %eax,(%rax)
     c6b:	00 00                	add    %al,(%rax)
     c6d:	00 00                	add    %al,(%rax)
     c6f:	00 10                	add    %dl,(%rax)
     c71:	12 00                	adc    (%rax),%al
     c73:	00 00                	add    %al,(%rax)
     c75:	00 00                	add    %al,(%rax)
     c77:	00 14 12             	add    %dl,(%rdx,%rdx,1)
     c7a:	00 00                	add    %al,(%rax)
     c7c:	00 00                	add    %al,(%rax)
     c7e:	00 00                	add    %al,(%rax)
     c80:	2e 12 00             	adc    %cs:(%rax),%al
     c83:	00 00                	add    %al,(%rax)
     c85:	00 00                	add    %al,(%rax)
     c87:	00 32                	add    %dh,(%rdx)
     c89:	12 00                	adc    (%rax),%al
     c8b:	00 00                	add    %al,(%rax)
     c8d:	00 00                	add    %al,(%rax)
     c8f:	00 4b 12             	add    %cl,0x12(%rbx)
     c92:	00 00                	add    %al,(%rax)
     c94:	00 00                	add    %al,(%rax)
     c96:	00 00                	add    %al,(%rax)
     c98:	4f 12 00             	rex.WRXB adc (%r8),%r8b
     c9b:	00 00                	add    %al,(%rax)
     c9d:	00 00                	add    %al,(%rax)
     c9f:	00 68 12             	add    %ch,0x12(%rax)
     ca2:	00 00                	add    %al,(%rax)
     ca4:	00 00                	add    %al,(%rax)
     ca6:	00 00                	add    %al,(%rax)
     ca8:	6c                   	insb   (%dx),%es:(%rdi)
     ca9:	12 00                	adc    (%rax),%al
     cab:	00 00                	add    %al,(%rax)
     cad:	00 00                	add    %al,(%rax)
     caf:	00 86 12 00 00 00    	add    %al,0x12(%rsi)
     cb5:	00 00                	add    %al,(%rax)
     cb7:	00 8a 12 00 00 00    	add    %cl,0x12(%rdx)
     cbd:	00 00                	add    %al,(%rax)
     cbf:	00 a4 12 00 00 00 00 	add    %ah,0x0(%rdx,%rdx,1)
     cc6:	00 00                	add    %al,(%rax)
     cc8:	a8 12                	test   $0x12,%al
     cca:	00 00                	add    %al,(%rax)
     ccc:	00 00                	add    %al,(%rax)
     cce:	00 00                	add    %al,(%rax)
     cd0:	c1 12 00             	rcll   $0x0,(%rdx)
     cd3:	00 00                	add    %al,(%rax)
     cd5:	00 00                	add    %al,(%rax)
     cd7:	00 c5                	add    %al,%ch
     cd9:	12 00                	adc    (%rax),%al
     cdb:	00 00                	add    %al,(%rax)
     cdd:	00 00                	add    %al,(%rax)
     cdf:	00 de                	add    %bl,%dh
     ce1:	12 00                	adc    (%rax),%al
     ce3:	00 00                	add    %al,(%rax)
     ce5:	00 00                	add    %al,(%rax)
     ce7:	00 e2                	add    %ah,%dl
     ce9:	12 00                	adc    (%rax),%al
     ceb:	00 00                	add    %al,(%rax)
     ced:	00 00                	add    %al,(%rax)
     cef:	00 fc                	add    %bh,%ah
     cf1:	12 00                	adc    (%rax),%al
     cf3:	00 00                	add    %al,(%rax)
     cf5:	00 00                	add    %al,(%rax)
     cf7:	00 00                	add    %al,(%rax)
     cf9:	13 00                	adc    (%rax),%eax
     cfb:	00 00                	add    %al,(%rax)
     cfd:	00 00                	add    %al,(%rax)
     cff:	00 2b                	add    %ch,(%rbx)
     d01:	13 00                	adc    (%rax),%eax
     d03:	00 00                	add    %al,(%rax)
     d05:	00 00                	add    %al,(%rax)
     d07:	00 2f                	add    %ch,(%rdi)
     d09:	13 00                	adc    (%rax),%eax
	...
     d1f:	00 34 13             	add    %dh,(%rbx,%rdx,1)
     d22:	00 00                	add    %al,(%rax)
     d24:	00 00                	add    %al,(%rax)
     d26:	00 00                	add    %al,(%rax)
     d28:	3d 13 00 00 00       	cmp    $0x13,%eax
     d2d:	00 00                	add    %al,(%rax)
     d2f:	00 41 13             	add    %al,0x13(%rcx)
     d32:	00 00                	add    %al,(%rax)
     d34:	00 00                	add    %al,(%rax)
     d36:	00 00                	add    %al,(%rax)
     d38:	59                   	pop    %rcx
     d39:	13 00                	adc    (%rax),%eax
	...
     d4f:	00 34 13             	add    %dh,(%rbx,%rdx,1)
     d52:	00 00                	add    %al,(%rax)
     d54:	00 00                	add    %al,(%rax)
     d56:	00 00                	add    %al,(%rax)
     d58:	3d 13 00 00 00       	cmp    $0x13,%eax
     d5d:	00 00                	add    %al,(%rax)
     d5f:	00 41 13             	add    %al,0x13(%rcx)
     d62:	00 00                	add    %al,(%rax)
     d64:	00 00                	add    %al,(%rax)
     d66:	00 00                	add    %al,(%rax)
     d68:	59                   	pop    %rcx
     d69:	13 00                	adc    (%rax),%eax
	...
     d7f:	00 dd                	add    %bl,%ch
     d81:	0d 00 00 00 00       	or     $0x0,%eax
     d86:	00 00                	add    %al,(%rax)
     d88:	e6 0d                	out    %al,$0xd
     d8a:	00 00                	add    %al,(%rax)
     d8c:	00 00                	add    %al,(%rax)
     d8e:	00 00                	add    %al,(%rax)
     d90:	fa                   	cli    
     d91:	0d 00 00 00 00       	or     $0x0,%eax
     d96:	00 00                	add    %al,(%rax)
     d98:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # d9e <__abi_tag+0xada>
     d9e:	00 00                	add    %al,(%rax)
     da0:	12 0e                	adc    (%rsi),%cl
     da2:	00 00                	add    %al,(%rax)
     da4:	00 00                	add    %al,(%rax)
     da6:	00 00                	add    %al,(%rax)
     da8:	16                   	(bad)  
     da9:	0e                   	(bad)  
     daa:	00 00                	add    %al,(%rax)
     dac:	00 00                	add    %al,(%rax)
     dae:	00 00                	add    %al,(%rax)
     db0:	29 0e                	sub    %ecx,(%rsi)
     db2:	00 00                	add    %al,(%rax)
     db4:	00 00                	add    %al,(%rax)
     db6:	00 00                	add    %al,(%rax)
     db8:	2d 0e 00 00 00       	sub    $0xe,%eax
     dbd:	00 00                	add    %al,(%rax)
     dbf:	00 46 0e             	add    %al,0xe(%rsi)
     dc2:	00 00                	add    %al,(%rax)
     dc4:	00 00                	add    %al,(%rax)
     dc6:	00 00                	add    %al,(%rax)
     dc8:	4b 0e                	rex.WXB (bad) 
     dca:	00 00                	add    %al,(%rax)
     dcc:	00 00                	add    %al,(%rax)
     dce:	00 00                	add    %al,(%rax)
     dd0:	64 0e                	fs (bad) 
     dd2:	00 00                	add    %al,(%rax)
     dd4:	00 00                	add    %al,(%rax)
     dd6:	00 00                	add    %al,(%rax)
     dd8:	69 0e 00 00 00 00    	imul   $0x0,(%rsi),%ecx
     dde:	00 00                	add    %al,(%rax)
     de0:	82                   	(bad)  
     de1:	0e                   	(bad)  
     de2:	00 00                	add    %al,(%rax)
     de4:	00 00                	add    %al,(%rax)
     de6:	00 00                	add    %al,(%rax)
     de8:	86 0e                	xchg   %cl,(%rsi)
     dea:	00 00                	add    %al,(%rax)
     dec:	00 00                	add    %al,(%rax)
     dee:	00 00                	add    %al,(%rax)
     df0:	9f                   	lahf   
     df1:	0e                   	(bad)  
     df2:	00 00                	add    %al,(%rax)
     df4:	00 00                	add    %al,(%rax)
     df6:	00 00                	add    %al,(%rax)
     df8:	a3 0e 00 00 00 00 00 	movabs %eax,0xbc0000000000000e
     dff:	00 bc 
     e01:	0e                   	(bad)  
     e02:	00 00                	add    %al,(%rax)
     e04:	00 00                	add    %al,(%rax)
     e06:	00 00                	add    %al,(%rax)
     e08:	c1 0e 00             	rorl   $0x0,(%rsi)
     e0b:	00 00                	add    %al,(%rax)
     e0d:	00 00                	add    %al,(%rax)
     e0f:	00 da                	add    %bl,%dl
     e11:	0e                   	(bad)  
     e12:	00 00                	add    %al,(%rax)
     e14:	00 00                	add    %al,(%rax)
     e16:	00 00                	add    %al,(%rax)
     e18:	df 0e                	fisttps (%rsi)
     e1a:	00 00                	add    %al,(%rax)
     e1c:	00 00                	add    %al,(%rax)
     e1e:	00 00                	add    %al,(%rax)
     e20:	f8                   	clc    
     e21:	0e                   	(bad)  
     e22:	00 00                	add    %al,(%rax)
     e24:	00 00                	add    %al,(%rax)
     e26:	00 00                	add    %al,(%rax)
     e28:	fc                   	cld    
     e29:	0e                   	(bad)  
     e2a:	00 00                	add    %al,(%rax)
     e2c:	00 00                	add    %al,(%rax)
     e2e:	00 00                	add    %al,(%rax)
     e30:	15 0f 00 00 00       	adc    $0xf,%eax
     e35:	00 00                	add    %al,(%rax)
     e37:	00 19                	add    %bl,(%rcx)
     e39:	0f 00 00             	sldt   (%rax)
     e3c:	00 00                	add    %al,(%rax)
     e3e:	00 00                	add    %al,(%rax)
     e40:	32 0f                	xor    (%rdi),%cl
     e42:	00 00                	add    %al,(%rax)
     e44:	00 00                	add    %al,(%rax)
     e46:	00 00                	add    %al,(%rax)
     e48:	37                   	(bad)  
     e49:	0f 00 00             	sldt   (%rax)
     e4c:	00 00                	add    %al,(%rax)
     e4e:	00 00                	add    %al,(%rax)
     e50:	50                   	push   %rax
     e51:	0f 00 00             	sldt   (%rax)
     e54:	00 00                	add    %al,(%rax)
     e56:	00 00                	add    %al,(%rax)
     e58:	55                   	push   %rbp
     e59:	0f 00 00             	sldt   (%rax)
     e5c:	00 00                	add    %al,(%rax)
     e5e:	00 00                	add    %al,(%rax)
     e60:	6e                   	outsb  %ds:(%rsi),(%dx)
     e61:	0f 00 00             	sldt   (%rax)
     e64:	00 00                	add    %al,(%rax)
     e66:	00 00                	add    %al,(%rax)
     e68:	72 0f                	jb     e79 <__abi_tag+0xbb5>
     e6a:	00 00                	add    %al,(%rax)
     e6c:	00 00                	add    %al,(%rax)
     e6e:	00 00                	add    %al,(%rax)
     e70:	8b 0f                	mov    (%rdi),%ecx
     e72:	00 00                	add    %al,(%rax)
     e74:	00 00                	add    %al,(%rax)
     e76:	00 00                	add    %al,(%rax)
     e78:	8f                   	(bad)  
     e79:	0f 00 00             	sldt   (%rax)
     e7c:	00 00                	add    %al,(%rax)
     e7e:	00 00                	add    %al,(%rax)
     e80:	a8 0f                	test   $0xf,%al
     e82:	00 00                	add    %al,(%rax)
     e84:	00 00                	add    %al,(%rax)
     e86:	00 00                	add    %al,(%rax)
     e88:	ad                   	lods   %ds:(%rsi),%eax
     e89:	0f 00 00             	sldt   (%rax)
     e8c:	00 00                	add    %al,(%rax)
     e8e:	00 00                	add    %al,(%rax)
     e90:	c6                   	(bad)  
     e91:	0f 00 00             	sldt   (%rax)
     e94:	00 00                	add    %al,(%rax)
     e96:	00 00                	add    %al,(%rax)
     e98:	cb                   	lret   
     e99:	0f 00 00             	sldt   (%rax)
     e9c:	00 00                	add    %al,(%rax)
     e9e:	00 00                	add    %al,(%rax)
     ea0:	e4 0f                	in     $0xf,%al
     ea2:	00 00                	add    %al,(%rax)
     ea4:	00 00                	add    %al,(%rax)
     ea6:	00 00                	add    %al,(%rax)
     ea8:	e8 0f 00 00 00       	callq  ebc <__abi_tag+0xbf8>
     ead:	00 00                	add    %al,(%rax)
     eaf:	00 01                	add    %al,(%rcx)
     eb1:	10 00                	adc    %al,(%rax)
     eb3:	00 00                	add    %al,(%rax)
     eb5:	00 00                	add    %al,(%rax)
     eb7:	00 05 10 00 00 00    	add    %al,0x10(%rip)        # ecd <__abi_tag+0xc09>
     ebd:	00 00                	add    %al,(%rax)
     ebf:	00 1e                	add    %bl,(%rsi)
     ec1:	10 00                	adc    %al,(%rax)
     ec3:	00 00                	add    %al,(%rax)
     ec5:	00 00                	add    %al,(%rax)
     ec7:	00 23                	add    %ah,(%rbx)
     ec9:	10 00                	adc    %al,(%rax)
     ecb:	00 00                	add    %al,(%rax)
     ecd:	00 00                	add    %al,(%rax)
     ecf:	00 3c 10             	add    %bh,(%rax,%rdx,1)
     ed2:	00 00                	add    %al,(%rax)
     ed4:	00 00                	add    %al,(%rax)
     ed6:	00 00                	add    %al,(%rax)
     ed8:	41 10 00             	adc    %al,(%r8)
     edb:	00 00                	add    %al,(%rax)
     edd:	00 00                	add    %al,(%rax)
     edf:	00 5a 10             	add    %bl,0x10(%rdx)
     ee2:	00 00                	add    %al,(%rax)
     ee4:	00 00                	add    %al,(%rax)
     ee6:	00 00                	add    %al,(%rax)
     ee8:	5e                   	pop    %rsi
     ee9:	10 00                	adc    %al,(%rax)
     eeb:	00 00                	add    %al,(%rax)
     eed:	00 00                	add    %al,(%rax)
     eef:	00 77 10             	add    %dh,0x10(%rdi)
     ef2:	00 00                	add    %al,(%rax)
     ef4:	00 00                	add    %al,(%rax)
     ef6:	00 00                	add    %al,(%rax)
     ef8:	7b 10                	jnp    f0a <__abi_tag+0xc46>
     efa:	00 00                	add    %al,(%rax)
     efc:	00 00                	add    %al,(%rax)
     efe:	00 00                	add    %al,(%rax)
     f00:	94                   	xchg   %eax,%esp
     f01:	10 00                	adc    %al,(%rax)
     f03:	00 00                	add    %al,(%rax)
     f05:	00 00                	add    %al,(%rax)
     f07:	00 99 10 00 00 00    	add    %bl,0x10(%rcx)
     f0d:	00 00                	add    %al,(%rax)
     f0f:	00 b2 10 00 00 00    	add    %dh,0x10(%rdx)
     f15:	00 00                	add    %al,(%rax)
     f17:	00 b7 10 00 00 00    	add    %dh,0x10(%rdi)
     f1d:	00 00                	add    %al,(%rax)
     f1f:	00 d0                	add    %dl,%al
     f21:	10 00                	adc    %al,(%rax)
     f23:	00 00                	add    %al,(%rax)
     f25:	00 00                	add    %al,(%rax)
     f27:	00 d4                	add    %dl,%ah
     f29:	10 00                	adc    %al,(%rax)
     f2b:	00 00                	add    %al,(%rax)
     f2d:	00 00                	add    %al,(%rax)
     f2f:	00 ed                	add    %ch,%ch
     f31:	10 00                	adc    %al,(%rax)
     f33:	00 00                	add    %al,(%rax)
     f35:	00 00                	add    %al,(%rax)
     f37:	00 f1                	add    %dh,%cl
     f39:	10 00                	adc    %al,(%rax)
     f3b:	00 00                	add    %al,(%rax)
     f3d:	00 00                	add    %al,(%rax)
     f3f:	00 0a                	add    %cl,(%rdx)
     f41:	11 00                	adc    %eax,(%rax)
     f43:	00 00                	add    %al,(%rax)
     f45:	00 00                	add    %al,(%rax)
     f47:	00 0f                	add    %cl,(%rdi)
     f49:	11 00                	adc    %eax,(%rax)
     f4b:	00 00                	add    %al,(%rax)
     f4d:	00 00                	add    %al,(%rax)
     f4f:	00 28                	add    %ch,(%rax)
     f51:	11 00                	adc    %eax,(%rax)
     f53:	00 00                	add    %al,(%rax)
     f55:	00 00                	add    %al,(%rax)
     f57:	00 2d 11 00 00 00    	add    %ch,0x11(%rip)        # f6e <__abi_tag+0xcaa>
     f5d:	00 00                	add    %al,(%rax)
     f5f:	00 46 11             	add    %al,0x11(%rsi)
     f62:	00 00                	add    %al,(%rax)
     f64:	00 00                	add    %al,(%rax)
     f66:	00 00                	add    %al,(%rax)
     f68:	4a 11 00             	rex.WX adc %rax,(%rax)
     f6b:	00 00                	add    %al,(%rax)
     f6d:	00 00                	add    %al,(%rax)
     f6f:	00 63 11             	add    %ah,0x11(%rbx)
     f72:	00 00                	add    %al,(%rax)
     f74:	00 00                	add    %al,(%rax)
     f76:	00 00                	add    %al,(%rax)
     f78:	67 11 00             	adc    %eax,(%eax)
     f7b:	00 00                	add    %al,(%rax)
     f7d:	00 00                	add    %al,(%rax)
     f7f:	00 80 11 00 00 00    	add    %al,0x11(%rax)
     f85:	00 00                	add    %al,(%rax)
     f87:	00 85 11 00 00 00    	add    %al,0x11(%rbp)
     f8d:	00 00                	add    %al,(%rax)
     f8f:	00 9e 11 00 00 00    	add    %bl,0x11(%rsi)
     f95:	00 00                	add    %al,(%rax)
     f97:	00 a3 11 00 00 00    	add    %ah,0x11(%rbx)
     f9d:	00 00                	add    %al,(%rax)
     f9f:	00 bc 11 00 00 00 00 	add    %bh,0x0(%rcx,%rdx,1)
     fa6:	00 00                	add    %al,(%rax)
     fa8:	c0 11 00             	rclb   $0x0,(%rcx)
     fab:	00 00                	add    %al,(%rax)
     fad:	00 00                	add    %al,(%rax)
     faf:	00 d9                	add    %bl,%cl
     fb1:	11 00                	adc    %eax,(%rax)
     fb3:	00 00                	add    %al,(%rax)
     fb5:	00 00                	add    %al,(%rax)
     fb7:	00 dd                	add    %bl,%ch
     fb9:	11 00                	adc    %eax,(%rax)
     fbb:	00 00                	add    %al,(%rax)
     fbd:	00 00                	add    %al,(%rax)
     fbf:	00 f6                	add    %dh,%dh
     fc1:	11 00                	adc    %eax,(%rax)
     fc3:	00 00                	add    %al,(%rax)
     fc5:	00 00                	add    %al,(%rax)
     fc7:	00 fb                	add    %bh,%bl
     fc9:	11 00                	adc    %eax,(%rax)
     fcb:	00 00                	add    %al,(%rax)
     fcd:	00 00                	add    %al,(%rax)
     fcf:	00 14 12             	add    %dl,(%rdx,%rdx,1)
     fd2:	00 00                	add    %al,(%rax)
     fd4:	00 00                	add    %al,(%rax)
     fd6:	00 00                	add    %al,(%rax)
     fd8:	19 12                	sbb    %edx,(%rdx)
     fda:	00 00                	add    %al,(%rax)
     fdc:	00 00                	add    %al,(%rax)
     fde:	00 00                	add    %al,(%rax)
     fe0:	32 12                	xor    (%rdx),%dl
     fe2:	00 00                	add    %al,(%rax)
     fe4:	00 00                	add    %al,(%rax)
     fe6:	00 00                	add    %al,(%rax)
     fe8:	36 12 00             	adc    %ss:(%rax),%al
     feb:	00 00                	add    %al,(%rax)
     fed:	00 00                	add    %al,(%rax)
     fef:	00 4f 12             	add    %cl,0x12(%rdi)
     ff2:	00 00                	add    %al,(%rax)
     ff4:	00 00                	add    %al,(%rax)
     ff6:	00 00                	add    %al,(%rax)
     ff8:	53                   	push   %rbx
     ff9:	12 00                	adc    (%rax),%al
     ffb:	00 00                	add    %al,(%rax)
     ffd:	00 00                	add    %al,(%rax)
     fff:	00 6c 12 00          	add    %ch,0x0(%rdx,%rdx,1)
    1003:	00 00                	add    %al,(%rax)
    1005:	00 00                	add    %al,(%rax)
    1007:	00 71 12             	add    %dh,0x12(%rcx)
    100a:	00 00                	add    %al,(%rax)
    100c:	00 00                	add    %al,(%rax)
    100e:	00 00                	add    %al,(%rax)
    1010:	8a 12                	mov    (%rdx),%dl
    1012:	00 00                	add    %al,(%rax)
    1014:	00 00                	add    %al,(%rax)
    1016:	00 00                	add    %al,(%rax)
    1018:	8f                   	(bad)  
    1019:	12 00                	adc    (%rax),%al
    101b:	00 00                	add    %al,(%rax)
    101d:	00 00                	add    %al,(%rax)
    101f:	00 a8 12 00 00 00    	add    %ch,0x12(%rax)
    1025:	00 00                	add    %al,(%rax)
    1027:	00 ac 12 00 00 00 00 	add    %ch,0x0(%rdx,%rdx,1)
    102e:	00 00                	add    %al,(%rax)
    1030:	c5 12 00             	(bad)
    1033:	00 00                	add    %al,(%rax)
    1035:	00 00                	add    %al,(%rax)
    1037:	00 c9                	add    %cl,%cl
    1039:	12 00                	adc    (%rax),%al
    103b:	00 00                	add    %al,(%rax)
    103d:	00 00                	add    %al,(%rax)
    103f:	00 e2                	add    %ah,%dl
    1041:	12 00                	adc    (%rax),%al
    1043:	00 00                	add    %al,(%rax)
    1045:	00 00                	add    %al,(%rax)
    1047:	00 e7                	add    %ah,%bh
    1049:	12 00                	adc    (%rax),%al
    104b:	00 00                	add    %al,(%rax)
    104d:	00 00                	add    %al,(%rax)
    104f:	00 00                	add    %al,(%rax)
    1051:	13 00                	adc    (%rax),%eax
    1053:	00 00                	add    %al,(%rax)
    1055:	00 00                	add    %al,(%rax)
    1057:	00 2b                	add    %ch,(%rbx)
    1059:	13 00                	adc    (%rax),%eax
    105b:	00 00                	add    %al,(%rax)
    105d:	00 00                	add    %al,(%rax)
    105f:	00 2f                	add    %ch,(%rdi)
    1061:	13 00                	adc    (%rax),%eax
    1063:	00 00                	add    %al,(%rax)
    1065:	00 00                	add    %al,(%rax)
    1067:	00 34 13             	add    %dh,(%rbx,%rdx,1)
    106a:	00 00                	add    %al,(%rax)
    106c:	00 00                	add    %al,(%rax)
    106e:	00 00                	add    %al,(%rax)
    1070:	3d 13 00 00 00       	cmp    $0x13,%eax
    1075:	00 00                	add    %al,(%rax)
    1077:	00 41 13             	add    %al,0x13(%rcx)
    107a:	00 00                	add    %al,(%rax)
    107c:	00 00                	add    %al,(%rax)
    107e:	00 00                	add    %al,(%rax)
    1080:	85 13                	test   %edx,(%rbx)
    1082:	00 00                	add    %al,(%rax)
    1084:	00 00                	add    %al,(%rax)
    1086:	00 00                	add    %al,(%rax)
    1088:	be 13 00 00 00       	mov    $0x13,%esi
	...
    109d:	00 00                	add    %al,(%rax)
    109f:	00 dd                	add    %bl,%ch
    10a1:	0d 00 00 00 00       	or     $0x0,%eax
    10a6:	00 00                	add    %al,(%rax)
    10a8:	e6 0d                	out    %al,$0xd
    10aa:	00 00                	add    %al,(%rax)
    10ac:	00 00                	add    %al,(%rax)
    10ae:	00 00                	add    %al,(%rax)
    10b0:	fa                   	cli    
    10b1:	0d 00 00 00 00       	or     $0x0,%eax
    10b6:	00 00                	add    %al,(%rax)
    10b8:	ff 0d 00 00 00 00    	decl   0x0(%rip)        # 10be <deregister_tm_clones+0xe>
    10be:	00 00                	add    %al,(%rax)
    10c0:	12 0e                	adc    (%rsi),%cl
    10c2:	00 00                	add    %al,(%rax)
    10c4:	00 00                	add    %al,(%rax)
    10c6:	00 00                	add    %al,(%rax)
    10c8:	16                   	(bad)  
    10c9:	0e                   	(bad)  
    10ca:	00 00                	add    %al,(%rax)
    10cc:	00 00                	add    %al,(%rax)
    10ce:	00 00                	add    %al,(%rax)
    10d0:	29 0e                	sub    %ecx,(%rsi)
    10d2:	00 00                	add    %al,(%rax)
    10d4:	00 00                	add    %al,(%rax)
    10d6:	00 00                	add    %al,(%rax)
    10d8:	2d 0e 00 00 00       	sub    $0xe,%eax
    10dd:	00 00                	add    %al,(%rax)
    10df:	00 46 0e             	add    %al,0xe(%rsi)
    10e2:	00 00                	add    %al,(%rax)
    10e4:	00 00                	add    %al,(%rax)
    10e6:	00 00                	add    %al,(%rax)
    10e8:	4b 0e                	rex.WXB (bad) 
    10ea:	00 00                	add    %al,(%rax)
    10ec:	00 00                	add    %al,(%rax)
    10ee:	00 00                	add    %al,(%rax)
    10f0:	64 0e                	fs (bad) 
    10f2:	00 00                	add    %al,(%rax)
    10f4:	00 00                	add    %al,(%rax)
    10f6:	00 00                	add    %al,(%rax)
    10f8:	69 0e 00 00 00 00    	imul   $0x0,(%rsi),%ecx
    10fe:	00 00                	add    %al,(%rax)
    1100:	82                   	(bad)  
    1101:	0e                   	(bad)  
    1102:	00 00                	add    %al,(%rax)
    1104:	00 00                	add    %al,(%rax)
    1106:	00 00                	add    %al,(%rax)
    1108:	86 0e                	xchg   %cl,(%rsi)
    110a:	00 00                	add    %al,(%rax)
    110c:	00 00                	add    %al,(%rax)
    110e:	00 00                	add    %al,(%rax)
    1110:	9f                   	lahf   
    1111:	0e                   	(bad)  
    1112:	00 00                	add    %al,(%rax)
    1114:	00 00                	add    %al,(%rax)
    1116:	00 00                	add    %al,(%rax)
    1118:	a3 0e 00 00 00 00 00 	movabs %eax,0xbc0000000000000e
    111f:	00 bc 
    1121:	0e                   	(bad)  
    1122:	00 00                	add    %al,(%rax)
    1124:	00 00                	add    %al,(%rax)
    1126:	00 00                	add    %al,(%rax)
    1128:	c1 0e 00             	rorl   $0x0,(%rsi)
    112b:	00 00                	add    %al,(%rax)
    112d:	00 00                	add    %al,(%rax)
    112f:	00 da                	add    %bl,%dl
    1131:	0e                   	(bad)  
    1132:	00 00                	add    %al,(%rax)
    1134:	00 00                	add    %al,(%rax)
    1136:	00 00                	add    %al,(%rax)
    1138:	df 0e                	fisttps (%rsi)
    113a:	00 00                	add    %al,(%rax)
    113c:	00 00                	add    %al,(%rax)
    113e:	00 00                	add    %al,(%rax)
    1140:	f8                   	clc    
    1141:	0e                   	(bad)  
    1142:	00 00                	add    %al,(%rax)
    1144:	00 00                	add    %al,(%rax)
    1146:	00 00                	add    %al,(%rax)
    1148:	fc                   	cld    
    1149:	0e                   	(bad)  
    114a:	00 00                	add    %al,(%rax)
    114c:	00 00                	add    %al,(%rax)
    114e:	00 00                	add    %al,(%rax)
    1150:	15 0f 00 00 00       	adc    $0xf,%eax
    1155:	00 00                	add    %al,(%rax)
    1157:	00 19                	add    %bl,(%rcx)
    1159:	0f 00 00             	sldt   (%rax)
    115c:	00 00                	add    %al,(%rax)
    115e:	00 00                	add    %al,(%rax)
    1160:	32 0f                	xor    (%rdi),%cl
    1162:	00 00                	add    %al,(%rax)
    1164:	00 00                	add    %al,(%rax)
    1166:	00 00                	add    %al,(%rax)
    1168:	37                   	(bad)  
    1169:	0f 00 00             	sldt   (%rax)
    116c:	00 00                	add    %al,(%rax)
    116e:	00 00                	add    %al,(%rax)
    1170:	50                   	push   %rax
    1171:	0f 00 00             	sldt   (%rax)
    1174:	00 00                	add    %al,(%rax)
    1176:	00 00                	add    %al,(%rax)
    1178:	55                   	push   %rbp
    1179:	0f 00 00             	sldt   (%rax)
    117c:	00 00                	add    %al,(%rax)
    117e:	00 00                	add    %al,(%rax)
    1180:	6e                   	outsb  %ds:(%rsi),(%dx)
    1181:	0f 00 00             	sldt   (%rax)
    1184:	00 00                	add    %al,(%rax)
    1186:	00 00                	add    %al,(%rax)
    1188:	72 0f                	jb     1199 <parse_args+0x19>
    118a:	00 00                	add    %al,(%rax)
    118c:	00 00                	add    %al,(%rax)
    118e:	00 00                	add    %al,(%rax)
    1190:	8b 0f                	mov    (%rdi),%ecx
    1192:	00 00                	add    %al,(%rax)
    1194:	00 00                	add    %al,(%rax)
    1196:	00 00                	add    %al,(%rax)
    1198:	8f                   	(bad)  
    1199:	0f 00 00             	sldt   (%rax)
    119c:	00 00                	add    %al,(%rax)
    119e:	00 00                	add    %al,(%rax)
    11a0:	a8 0f                	test   $0xf,%al
    11a2:	00 00                	add    %al,(%rax)
    11a4:	00 00                	add    %al,(%rax)
    11a6:	00 00                	add    %al,(%rax)
    11a8:	ad                   	lods   %ds:(%rsi),%eax
    11a9:	0f 00 00             	sldt   (%rax)
    11ac:	00 00                	add    %al,(%rax)
    11ae:	00 00                	add    %al,(%rax)
    11b0:	c6                   	(bad)  
    11b1:	0f 00 00             	sldt   (%rax)
    11b4:	00 00                	add    %al,(%rax)
    11b6:	00 00                	add    %al,(%rax)
    11b8:	cb                   	lret   
    11b9:	0f 00 00             	sldt   (%rax)
    11bc:	00 00                	add    %al,(%rax)
    11be:	00 00                	add    %al,(%rax)
    11c0:	e4 0f                	in     $0xf,%al
    11c2:	00 00                	add    %al,(%rax)
    11c4:	00 00                	add    %al,(%rax)
    11c6:	00 00                	add    %al,(%rax)
    11c8:	e8 0f 00 00 00       	callq  11dc <dotprod+0x2c>
    11cd:	00 00                	add    %al,(%rax)
    11cf:	00 01                	add    %al,(%rcx)
    11d1:	10 00                	adc    %al,(%rax)
    11d3:	00 00                	add    %al,(%rax)
    11d5:	00 00                	add    %al,(%rax)
    11d7:	00 05 10 00 00 00    	add    %al,0x10(%rip)        # 11ed <dotprod+0x3d>
    11dd:	00 00                	add    %al,(%rax)
    11df:	00 1e                	add    %bl,(%rsi)
    11e1:	10 00                	adc    %al,(%rax)
    11e3:	00 00                	add    %al,(%rax)
    11e5:	00 00                	add    %al,(%rax)
    11e7:	00 23                	add    %ah,(%rbx)
    11e9:	10 00                	adc    %al,(%rax)
    11eb:	00 00                	add    %al,(%rax)
    11ed:	00 00                	add    %al,(%rax)
    11ef:	00 3c 10             	add    %bh,(%rax,%rdx,1)
    11f2:	00 00                	add    %al,(%rax)
    11f4:	00 00                	add    %al,(%rax)
    11f6:	00 00                	add    %al,(%rax)
    11f8:	41 10 00             	adc    %al,(%r8)
    11fb:	00 00                	add    %al,(%rax)
    11fd:	00 00                	add    %al,(%rax)
    11ff:	00 5a 10             	add    %bl,0x10(%rdx)
    1202:	00 00                	add    %al,(%rax)
    1204:	00 00                	add    %al,(%rax)
    1206:	00 00                	add    %al,(%rax)
    1208:	5e                   	pop    %rsi
    1209:	10 00                	adc    %al,(%rax)
    120b:	00 00                	add    %al,(%rax)
    120d:	00 00                	add    %al,(%rax)
    120f:	00 77 10             	add    %dh,0x10(%rdi)
    1212:	00 00                	add    %al,(%rax)
    1214:	00 00                	add    %al,(%rax)
    1216:	00 00                	add    %al,(%rax)
    1218:	7b 10                	jnp    122a <dotprod+0x7a>
    121a:	00 00                	add    %al,(%rax)
    121c:	00 00                	add    %al,(%rax)
    121e:	00 00                	add    %al,(%rax)
    1220:	94                   	xchg   %eax,%esp
    1221:	10 00                	adc    %al,(%rax)
    1223:	00 00                	add    %al,(%rax)
    1225:	00 00                	add    %al,(%rax)
    1227:	00 99 10 00 00 00    	add    %bl,0x10(%rcx)
    122d:	00 00                	add    %al,(%rax)
    122f:	00 b2 10 00 00 00    	add    %dh,0x10(%rdx)
    1235:	00 00                	add    %al,(%rax)
    1237:	00 b7 10 00 00 00    	add    %dh,0x10(%rdi)
    123d:	00 00                	add    %al,(%rax)
    123f:	00 d0                	add    %dl,%al
    1241:	10 00                	adc    %al,(%rax)
    1243:	00 00                	add    %al,(%rax)
    1245:	00 00                	add    %al,(%rax)
    1247:	00 d4                	add    %dl,%ah
    1249:	10 00                	adc    %al,(%rax)
    124b:	00 00                	add    %al,(%rax)
    124d:	00 00                	add    %al,(%rax)
    124f:	00 ed                	add    %ch,%ch
    1251:	10 00                	adc    %al,(%rax)
    1253:	00 00                	add    %al,(%rax)
    1255:	00 00                	add    %al,(%rax)
    1257:	00 f1                	add    %dh,%cl
    1259:	10 00                	adc    %al,(%rax)
    125b:	00 00                	add    %al,(%rax)
    125d:	00 00                	add    %al,(%rax)
    125f:	00 0a                	add    %cl,(%rdx)
    1261:	11 00                	adc    %eax,(%rax)
    1263:	00 00                	add    %al,(%rax)
    1265:	00 00                	add    %al,(%rax)
    1267:	00 0f                	add    %cl,(%rdi)
    1269:	11 00                	adc    %eax,(%rax)
    126b:	00 00                	add    %al,(%rax)
    126d:	00 00                	add    %al,(%rax)
    126f:	00 28                	add    %ch,(%rax)
    1271:	11 00                	adc    %eax,(%rax)
    1273:	00 00                	add    %al,(%rax)
    1275:	00 00                	add    %al,(%rax)
    1277:	00 2d 11 00 00 00    	add    %ch,0x11(%rip)        # 128e <dotprod_2x+0x2e>
    127d:	00 00                	add    %al,(%rax)
    127f:	00 46 11             	add    %al,0x11(%rsi)
    1282:	00 00                	add    %al,(%rax)
    1284:	00 00                	add    %al,(%rax)
    1286:	00 00                	add    %al,(%rax)
    1288:	4a 11 00             	rex.WX adc %rax,(%rax)
    128b:	00 00                	add    %al,(%rax)
    128d:	00 00                	add    %al,(%rax)
    128f:	00 63 11             	add    %ah,0x11(%rbx)
    1292:	00 00                	add    %al,(%rax)
    1294:	00 00                	add    %al,(%rax)
    1296:	00 00                	add    %al,(%rax)
    1298:	67 11 00             	adc    %eax,(%eax)
    129b:	00 00                	add    %al,(%rax)
    129d:	00 00                	add    %al,(%rax)
    129f:	00 80 11 00 00 00    	add    %al,0x11(%rax)
    12a5:	00 00                	add    %al,(%rax)
    12a7:	00 85 11 00 00 00    	add    %al,0x11(%rbp)
    12ad:	00 00                	add    %al,(%rax)
    12af:	00 9e 11 00 00 00    	add    %bl,0x11(%rsi)
    12b5:	00 00                	add    %al,(%rax)
    12b7:	00 a3 11 00 00 00    	add    %ah,0x11(%rbx)
    12bd:	00 00                	add    %al,(%rax)
    12bf:	00 bc 11 00 00 00 00 	add    %bh,0x0(%rcx,%rdx,1)
    12c6:	00 00                	add    %al,(%rax)
    12c8:	c0 11 00             	rclb   $0x0,(%rcx)
    12cb:	00 00                	add    %al,(%rax)
    12cd:	00 00                	add    %al,(%rax)
    12cf:	00 d9                	add    %bl,%cl
    12d1:	11 00                	adc    %eax,(%rax)
    12d3:	00 00                	add    %al,(%rax)
    12d5:	00 00                	add    %al,(%rax)
    12d7:	00 dd                	add    %bl,%ch
    12d9:	11 00                	adc    %eax,(%rax)
    12db:	00 00                	add    %al,(%rax)
    12dd:	00 00                	add    %al,(%rax)
    12df:	00 f6                	add    %dh,%dh
    12e1:	11 00                	adc    %eax,(%rax)
    12e3:	00 00                	add    %al,(%rax)
    12e5:	00 00                	add    %al,(%rax)
    12e7:	00 fb                	add    %bh,%bl
    12e9:	11 00                	adc    %eax,(%rax)
    12eb:	00 00                	add    %al,(%rax)
    12ed:	00 00                	add    %al,(%rax)
    12ef:	00 14 12             	add    %dl,(%rdx,%rdx,1)
    12f2:	00 00                	add    %al,(%rax)
    12f4:	00 00                	add    %al,(%rax)
    12f6:	00 00                	add    %al,(%rax)
    12f8:	19 12                	sbb    %edx,(%rdx)
    12fa:	00 00                	add    %al,(%rax)
    12fc:	00 00                	add    %al,(%rax)
    12fe:	00 00                	add    %al,(%rax)
    1300:	32 12                	xor    (%rdx),%dl
    1302:	00 00                	add    %al,(%rax)
    1304:	00 00                	add    %al,(%rax)
    1306:	00 00                	add    %al,(%rax)
    1308:	36 12 00             	adc    %ss:(%rax),%al
    130b:	00 00                	add    %al,(%rax)
    130d:	00 00                	add    %al,(%rax)
    130f:	00 4f 12             	add    %cl,0x12(%rdi)
    1312:	00 00                	add    %al,(%rax)
    1314:	00 00                	add    %al,(%rax)
    1316:	00 00                	add    %al,(%rax)
    1318:	53                   	push   %rbx
    1319:	12 00                	adc    (%rax),%al
    131b:	00 00                	add    %al,(%rax)
    131d:	00 00                	add    %al,(%rax)
    131f:	00 6c 12 00          	add    %ch,0x0(%rdx,%rdx,1)
    1323:	00 00                	add    %al,(%rax)
    1325:	00 00                	add    %al,(%rax)
    1327:	00 71 12             	add    %dh,0x12(%rcx)
    132a:	00 00                	add    %al,(%rax)
    132c:	00 00                	add    %al,(%rax)
    132e:	00 00                	add    %al,(%rax)
    1330:	8a 12                	mov    (%rdx),%dl
    1332:	00 00                	add    %al,(%rax)
    1334:	00 00                	add    %al,(%rax)
    1336:	00 00                	add    %al,(%rax)
    1338:	8f                   	(bad)  
    1339:	12 00                	adc    (%rax),%al
    133b:	00 00                	add    %al,(%rax)
    133d:	00 00                	add    %al,(%rax)
    133f:	00 a8 12 00 00 00    	add    %ch,0x12(%rax)
    1345:	00 00                	add    %al,(%rax)
    1347:	00 ac 12 00 00 00 00 	add    %ch,0x0(%rdx,%rdx,1)
    134e:	00 00                	add    %al,(%rax)
    1350:	c5 12 00             	(bad)
    1353:	00 00                	add    %al,(%rax)
    1355:	00 00                	add    %al,(%rax)
    1357:	00 c9                	add    %cl,%cl
    1359:	12 00                	adc    (%rax),%al
    135b:	00 00                	add    %al,(%rax)
    135d:	00 00                	add    %al,(%rax)
    135f:	00 e2                	add    %ah,%dl
    1361:	12 00                	adc    (%rax),%al
    1363:	00 00                	add    %al,(%rax)
    1365:	00 00                	add    %al,(%rax)
    1367:	00 e7                	add    %ah,%bh
    1369:	12 00                	adc    (%rax),%al
    136b:	00 00                	add    %al,(%rax)
    136d:	00 00                	add    %al,(%rax)
    136f:	00 00                	add    %al,(%rax)
    1371:	13 00                	adc    (%rax),%eax
    1373:	00 00                	add    %al,(%rax)
    1375:	00 00                	add    %al,(%rax)
    1377:	00 2b                	add    %ch,(%rbx)
    1379:	13 00                	adc    (%rax),%eax
    137b:	00 00                	add    %al,(%rax)
    137d:	00 00                	add    %al,(%rax)
    137f:	00 2f                	add    %ch,(%rdi)
    1381:	13 00                	adc    (%rax),%eax
    1383:	00 00                	add    %al,(%rax)
    1385:	00 00                	add    %al,(%rax)
    1387:	00 34 13             	add    %dh,(%rbx,%rdx,1)
    138a:	00 00                	add    %al,(%rax)
    138c:	00 00                	add    %al,(%rax)
    138e:	00 00                	add    %al,(%rax)
    1390:	3d 13 00 00 00       	cmp    $0x13,%eax
    1395:	00 00                	add    %al,(%rax)
    1397:	00 41 13             	add    %al,0x13(%rcx)
	...
