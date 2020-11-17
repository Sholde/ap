
kamikaze_clang:     format de fichier elf64-x86-64


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
    10b3:	4c 8d 05 96 05 00 00 	lea    0x596(%rip),%r8        # 1650 <__libc_csu_fini>
    10ba:	48 8d 0d 1f 05 00 00 	lea    0x51f(%rip),%rcx        # 15e0 <__libc_csu_init>
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
  
  return d;
}

int main(int argc, char **argv)
{
    11a0:	41 57                	push   %r15
    11a2:	41 56                	push   %r14
    11a4:	53                   	push   %rbx
  if (argc != 2)
    11a5:	83 ff 02             	cmp    $0x2,%edi
    11a8:	0f 85 e0 03 00 00    	jne    158e <main+0x3ee>
  return strtoll(argv[1], NULL, 10);
    11ae:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11b2:	31 f6                	xor    %esi,%esi
    11b4:	ba 0a 00 00 00       	mov    $0xa,%edx
    11b9:	e8 92 fe ff ff       	callq  1050 <strtoll@plt>
    11be:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    11c1:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    11c8:	00 
    11c9:	bf 40 00 00 00       	mov    $0x40,%edi
    11ce:	48 89 de             	mov    %rbx,%rsi
    11d1:	e8 9a fe ff ff       	callq  1070 <aligned_alloc@plt>
    11d6:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    11d9:	bf 40 00 00 00       	mov    $0x40,%edi
    11de:	48 89 de             	mov    %rbx,%rsi
    11e1:	e8 8a fe ff ff       	callq  1070 <aligned_alloc@plt>
    11e6:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    11e9:	4d 85 ff             	test   %r15,%r15
    11ec:	74 0d                	je     11fb <main+0x5b>
    11ee:	49 83 ff 10          	cmp    $0x10,%r15
    11f2:	73 10                	jae    1204 <main+0x64>
    11f4:	31 c0                	xor    %eax,%eax
    11f6:	e9 e5 01 00 00       	jmpq   13e0 <main+0x240>
    11fb:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    11ff:	e9 ab 03 00 00       	jmpq   15af <main+0x40f>
    1204:	4c 89 f8             	mov    %r15,%rax
    1207:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    120b:	48 8d 70 f0          	lea    -0x10(%rax),%rsi
    120f:	48 89 f2             	mov    %rsi,%rdx
    1212:	48 c1 ea 04          	shr    $0x4,%rdx
    1216:	48 ff c2             	inc    %rdx
    1219:	89 d1                	mov    %edx,%ecx
    121b:	83 e1 03             	and    $0x3,%ecx
    121e:	48 83 fe 30          	cmp    $0x30,%rsi
    1222:	73 07                	jae    122b <main+0x8b>
    1224:	31 f6                	xor    %esi,%esi
    1226:	e9 49 01 00 00       	jmpq   1374 <main+0x1d4>
    122b:	48 29 ca             	sub    %rcx,%rdx
    122e:	31 f6                	xor    %esi,%esi
    1230:	c4 e2 7d 19 05 cf 0d 	vbroadcastsd 0xdcf(%rip),%ymm0        # 2008 <_IO_stdin_used+0x8>
    1237:	00 00 
    1239:	c4 e2 7d 19 0d ce 0d 	vbroadcastsd 0xdce(%rip),%ymm1        # 2010 <_IO_stdin_used+0x10>
    1240:	00 00 
    1242:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1249:	00 00 00 
    124c:	0f 1f 40 00          	nopl   0x0(%rax)
      a[i] = 0.1;
    1250:	c4 c1 7d 11 04 f6    	vmovupd %ymm0,(%r14,%rsi,8)
    1256:	c4 c1 7d 11 44 f6 20 	vmovupd %ymm0,0x20(%r14,%rsi,8)
    125d:	c4 c1 7d 11 44 f6 40 	vmovupd %ymm0,0x40(%r14,%rsi,8)
    1264:	c4 c1 7d 11 44 f6 60 	vmovupd %ymm0,0x60(%r14,%rsi,8)
      b[i] = 0.001;
    126b:	c5 fd 11 0c f3       	vmovupd %ymm1,(%rbx,%rsi,8)
    1270:	c5 fd 11 4c f3 20    	vmovupd %ymm1,0x20(%rbx,%rsi,8)
    1276:	c5 fd 11 4c f3 40    	vmovupd %ymm1,0x40(%rbx,%rsi,8)
    127c:	c5 fd 11 4c f3 60    	vmovupd %ymm1,0x60(%rbx,%rsi,8)
      a[i] = 0.1;
    1282:	c4 c1 7d 11 84 f6 80 	vmovupd %ymm0,0x80(%r14,%rsi,8)
    1289:	00 00 00 
    128c:	c4 c1 7d 11 84 f6 a0 	vmovupd %ymm0,0xa0(%r14,%rsi,8)
    1293:	00 00 00 
    1296:	c4 c1 7d 11 84 f6 c0 	vmovupd %ymm0,0xc0(%r14,%rsi,8)
    129d:	00 00 00 
    12a0:	c4 c1 7d 11 84 f6 e0 	vmovupd %ymm0,0xe0(%r14,%rsi,8)
    12a7:	00 00 00 
      b[i] = 0.001;
    12aa:	c5 fd 11 8c f3 80 00 	vmovupd %ymm1,0x80(%rbx,%rsi,8)
    12b1:	00 00 
    12b3:	c5 fd 11 8c f3 a0 00 	vmovupd %ymm1,0xa0(%rbx,%rsi,8)
    12ba:	00 00 
    12bc:	c5 fd 11 8c f3 c0 00 	vmovupd %ymm1,0xc0(%rbx,%rsi,8)
    12c3:	00 00 
    12c5:	c5 fd 11 8c f3 e0 00 	vmovupd %ymm1,0xe0(%rbx,%rsi,8)
    12cc:	00 00 
      a[i] = 0.1;
    12ce:	c4 c1 7d 11 84 f6 00 	vmovupd %ymm0,0x100(%r14,%rsi,8)
    12d5:	01 00 00 
    12d8:	c4 c1 7d 11 84 f6 20 	vmovupd %ymm0,0x120(%r14,%rsi,8)
    12df:	01 00 00 
    12e2:	c4 c1 7d 11 84 f6 40 	vmovupd %ymm0,0x140(%r14,%rsi,8)
    12e9:	01 00 00 
    12ec:	c4 c1 7d 11 84 f6 60 	vmovupd %ymm0,0x160(%r14,%rsi,8)
    12f3:	01 00 00 
      b[i] = 0.001;
    12f6:	c5 fd 11 8c f3 00 01 	vmovupd %ymm1,0x100(%rbx,%rsi,8)
    12fd:	00 00 
    12ff:	c5 fd 11 8c f3 20 01 	vmovupd %ymm1,0x120(%rbx,%rsi,8)
    1306:	00 00 
    1308:	c5 fd 11 8c f3 40 01 	vmovupd %ymm1,0x140(%rbx,%rsi,8)
    130f:	00 00 
    1311:	c5 fd 11 8c f3 60 01 	vmovupd %ymm1,0x160(%rbx,%rsi,8)
    1318:	00 00 
      a[i] = 0.1;
    131a:	c4 c1 7d 11 84 f6 80 	vmovupd %ymm0,0x180(%r14,%rsi,8)
    1321:	01 00 00 
    1324:	c4 c1 7d 11 84 f6 a0 	vmovupd %ymm0,0x1a0(%r14,%rsi,8)
    132b:	01 00 00 
    132e:	c4 c1 7d 11 84 f6 c0 	vmovupd %ymm0,0x1c0(%r14,%rsi,8)
    1335:	01 00 00 
    1338:	c4 c1 7d 11 84 f6 e0 	vmovupd %ymm0,0x1e0(%r14,%rsi,8)
    133f:	01 00 00 
      b[i] = 0.001;
    1342:	c5 fd 11 8c f3 80 01 	vmovupd %ymm1,0x180(%rbx,%rsi,8)
    1349:	00 00 
    134b:	c5 fd 11 8c f3 a0 01 	vmovupd %ymm1,0x1a0(%rbx,%rsi,8)
    1352:	00 00 
    1354:	c5 fd 11 8c f3 c0 01 	vmovupd %ymm1,0x1c0(%rbx,%rsi,8)
    135b:	00 00 
    135d:	c5 fd 11 8c f3 e0 01 	vmovupd %ymm1,0x1e0(%rbx,%rsi,8)
    1364:	00 00 
  for (unsigned long long i = 0; i < n; i++)
    1366:	48 83 c6 40          	add    $0x40,%rsi
    136a:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    136e:	0f 85 dc fe ff ff    	jne    1250 <main+0xb0>
    1374:	48 85 c9             	test   %rcx,%rcx
    1377:	74 62                	je     13db <main+0x23b>
    1379:	48 8d 14 f5 60 00 00 	lea    0x60(,%rsi,8),%rdx
    1380:	00 
    1381:	48 f7 d9             	neg    %rcx
    1384:	c4 e2 7d 19 05 7b 0c 	vbroadcastsd 0xc7b(%rip),%ymm0        # 2008 <_IO_stdin_used+0x8>
    138b:	00 00 
    138d:	c4 e2 7d 19 0d 7a 0c 	vbroadcastsd 0xc7a(%rip),%ymm1        # 2010 <_IO_stdin_used+0x10>
    1394:	00 00 
    1396:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    139d:	00 00 00 
      a[i] = 0.1;
    13a0:	c4 c1 7d 11 44 16 a0 	vmovupd %ymm0,-0x60(%r14,%rdx,1)
    13a7:	c4 c1 7d 11 44 16 c0 	vmovupd %ymm0,-0x40(%r14,%rdx,1)
    13ae:	c4 c1 7d 11 44 16 e0 	vmovupd %ymm0,-0x20(%r14,%rdx,1)
    13b5:	c4 c1 7d 11 04 16    	vmovupd %ymm0,(%r14,%rdx,1)
      b[i] = 0.001;
    13bb:	c5 fd 11 4c 13 a0    	vmovupd %ymm1,-0x60(%rbx,%rdx,1)
    13c1:	c5 fd 11 4c 13 c0    	vmovupd %ymm1,-0x40(%rbx,%rdx,1)
    13c7:	c5 fd 11 4c 13 e0    	vmovupd %ymm1,-0x20(%rbx,%rdx,1)
    13cd:	c5 fd 11 0c 13       	vmovupd %ymm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    13d2:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
    13d6:	48 ff c1             	inc    %rcx
    13d9:	75 c5                	jne    13a0 <main+0x200>
    13db:	49 39 c7             	cmp    %rax,%r15
    13de:	74 30                	je     1410 <main+0x270>
    13e0:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    13e7:	99 b9 3f 
    13ea:	48 ba fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rdx
    13f1:	62 50 3f 
    13f4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13fb:	00 00 00 
    13fe:	66 90                	xchg   %ax,%ax
      a[i] = 0.1;
    1400:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 0.001;
    1404:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1408:	48 ff c0             	inc    %rax
    140b:	49 39 c7             	cmp    %rax,%r15
    140e:	75 f0                	jne    1400 <main+0x260>
    1410:	49 83 ff 10          	cmp    $0x10,%r15
  for (unsigned long long i = 0; i < n; i++)
    1414:	73 0b                	jae    1421 <main+0x281>
    1416:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    141a:	31 c0                	xor    %eax,%eax
    141c:	e9 77 01 00 00       	jmpq   1598 <main+0x3f8>
    1421:	4c 89 f8             	mov    %r15,%rax
    1424:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
    1428:	48 8d 48 f0          	lea    -0x10(%rax),%rcx
    142c:	48 89 ce             	mov    %rcx,%rsi
    142f:	48 c1 ee 04          	shr    $0x4,%rsi
    1433:	48 ff c6             	inc    %rsi
    1436:	89 f2                	mov    %esi,%edx
    1438:	83 e2 01             	and    $0x1,%edx
    143b:	48 85 c9             	test   %rcx,%rcx
    143e:	0f 84 31 01 00 00    	je     1575 <main+0x3d5>
    1444:	48 29 d6             	sub    %rdx,%rsi
    1447:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    144b:	31 c9                	xor    %ecx,%ecx
    144d:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    1451:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1455:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    d += a[i] * b[i];
    1460:	c5 fd 10 24 cb       	vmovupd (%rbx,%rcx,8),%ymm4
    1465:	c5 fd 10 6c cb 20    	vmovupd 0x20(%rbx,%rcx,8),%ymm5
    146b:	c5 fd 10 74 cb 40    	vmovupd 0x40(%rbx,%rcx,8),%ymm6
    1471:	c5 fd 10 7c cb 60    	vmovupd 0x60(%rbx,%rcx,8),%ymm7
    1477:	c4 c1 5d 59 24 ce    	vmulpd (%r14,%rcx,8),%ymm4,%ymm4
    147d:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    1481:	c4 c1 55 59 64 ce 20 	vmulpd 0x20(%r14,%rcx,8),%ymm5,%ymm4
    1488:	c5 dd 58 c9          	vaddpd %ymm1,%ymm4,%ymm1
    148c:	c4 c1 4d 59 64 ce 40 	vmulpd 0x40(%r14,%rcx,8),%ymm6,%ymm4
    1493:	c5 dd 58 d2          	vaddpd %ymm2,%ymm4,%ymm2
    1497:	c4 c1 45 59 64 ce 60 	vmulpd 0x60(%r14,%rcx,8),%ymm7,%ymm4
    149e:	c5 dd 58 db          	vaddpd %ymm3,%ymm4,%ymm3
    14a2:	c5 fd 10 a4 cb 80 00 	vmovupd 0x80(%rbx,%rcx,8),%ymm4
    14a9:	00 00 
    14ab:	c5 fd 10 ac cb a0 00 	vmovupd 0xa0(%rbx,%rcx,8),%ymm5
    14b2:	00 00 
    14b4:	c5 fd 10 b4 cb c0 00 	vmovupd 0xc0(%rbx,%rcx,8),%ymm6
    14bb:	00 00 
    14bd:	c5 fd 10 bc cb e0 00 	vmovupd 0xe0(%rbx,%rcx,8),%ymm7
    14c4:	00 00 
    14c6:	c4 c1 5d 59 a4 ce 80 	vmulpd 0x80(%r14,%rcx,8),%ymm4,%ymm4
    14cd:	00 00 00 
    14d0:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
    14d4:	c4 c1 55 59 a4 ce a0 	vmulpd 0xa0(%r14,%rcx,8),%ymm5,%ymm4
    14db:	00 00 00 
    14de:	c5 dd 58 c9          	vaddpd %ymm1,%ymm4,%ymm1
    14e2:	c4 c1 4d 59 a4 ce c0 	vmulpd 0xc0(%r14,%rcx,8),%ymm6,%ymm4
    14e9:	00 00 00 
    14ec:	c5 dd 58 d2          	vaddpd %ymm2,%ymm4,%ymm2
    14f0:	c4 c1 45 59 a4 ce e0 	vmulpd 0xe0(%r14,%rcx,8),%ymm7,%ymm4
    14f7:	00 00 00 
    14fa:	c5 dd 58 db          	vaddpd %ymm3,%ymm4,%ymm3
  for (unsigned long long i = 0; i < n; i++)
    14fe:	48 83 c1 20          	add    $0x20,%rcx
    1502:	48 83 c6 fe          	add    $0xfffffffffffffffe,%rsi
    1506:	0f 85 54 ff ff ff    	jne    1460 <main+0x2c0>
    150c:	48 85 d2             	test   %rdx,%rdx
    150f:	74 42                	je     1553 <main+0x3b3>
    d += a[i] * b[i];
    1511:	c5 fd 10 24 cb       	vmovupd (%rbx,%rcx,8),%ymm4
    1516:	c5 fd 10 6c cb 20    	vmovupd 0x20(%rbx,%rcx,8),%ymm5
    151c:	c5 fd 10 74 cb 40    	vmovupd 0x40(%rbx,%rcx,8),%ymm6
    1522:	c5 fd 10 7c cb 60    	vmovupd 0x60(%rbx,%rcx,8),%ymm7
    1528:	c4 c1 45 59 7c ce 60 	vmulpd 0x60(%r14,%rcx,8),%ymm7,%ymm7
    152f:	c5 c5 58 db          	vaddpd %ymm3,%ymm7,%ymm3
    1533:	c4 c1 4d 59 74 ce 40 	vmulpd 0x40(%r14,%rcx,8),%ymm6,%ymm6
    153a:	c5 cd 58 d2          	vaddpd %ymm2,%ymm6,%ymm2
    153e:	c4 c1 55 59 6c ce 20 	vmulpd 0x20(%r14,%rcx,8),%ymm5,%ymm5
    1545:	c5 d5 58 c9          	vaddpd %ymm1,%ymm5,%ymm1
    1549:	c4 c1 5d 59 24 ce    	vmulpd (%r14,%rcx,8),%ymm4,%ymm4
    154f:	c5 dd 58 c0          	vaddpd %ymm0,%ymm4,%ymm0
  for (unsigned long long i = 0; i < n; i++)
    1553:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
    1557:	c5 f5 58 cb          	vaddpd %ymm3,%ymm1,%ymm1
    155b:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    155f:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
    1565:	c5 f9 58 c1          	vaddpd %xmm1,%xmm0,%xmm0
    1569:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    156f:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1573:	eb 35                	jmp    15aa <main+0x40a>
    1575:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1579:	31 c9                	xor    %ecx,%ecx
    157b:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    157f:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    1583:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
    1587:	48 85 d2             	test   %rdx,%rdx
    158a:	75 85                	jne    1511 <main+0x371>
    158c:	eb c5                	jmp    1553 <main+0x3b3>
    exit(ARGS);
    158e:	bf 01 00 00 00       	mov    $0x1,%edi
    1593:	e8 c8 fa ff ff       	callq  1060 <exit@plt>
    d += a[i] * b[i];
    1598:	c5 fb 10 0c c3       	vmovsd (%rbx,%rax,8),%xmm1
    159d:	c4 c1 73 59 0c c6    	vmulsd (%r14,%rax,8),%xmm1,%xmm1
    15a3:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    15a7:	48 ff c0             	inc    %rax
    15aa:	49 39 c7             	cmp    %rax,%r15
    15ad:	75 e9                	jne    1598 <main+0x3f8>

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    15af:	48 8d 3d 62 0a 00 00 	lea    0xa62(%rip),%rdi        # 2018 <_IO_stdin_used+0x18>
    15b6:	b0 01                	mov    $0x1,%al
    15b8:	c5 f8 77             	vzeroupper 
    15bb:	e8 80 fa ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    15c0:	4c 89 f7             	mov    %r14,%rdi
    15c3:	e8 68 fa ff ff       	callq  1030 <free@plt>
  free(b);
    15c8:	48 89 df             	mov    %rbx,%rdi
    15cb:	e8 60 fa ff ff       	callq  1030 <free@plt>
  
  return 0;
    15d0:	31 c0                	xor    %eax,%eax
    15d2:	5b                   	pop    %rbx
    15d3:	41 5e                	pop    %r14
    15d5:	41 5f                	pop    %r15
    15d7:	c3                   	retq   
    15d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15df:	00 

00000000000015e0 <__libc_csu_init>:
    15e0:	f3 0f 1e fa          	endbr64 
    15e4:	41 57                	push   %r15
    15e6:	4c 8d 3d e3 27 00 00 	lea    0x27e3(%rip),%r15        # 3dd0 <__frame_dummy_init_array_entry>
    15ed:	41 56                	push   %r14
    15ef:	49 89 d6             	mov    %rdx,%r14
    15f2:	41 55                	push   %r13
    15f4:	49 89 f5             	mov    %rsi,%r13
    15f7:	41 54                	push   %r12
    15f9:	41 89 fc             	mov    %edi,%r12d
    15fc:	55                   	push   %rbp
    15fd:	48 8d 2d dc 27 00 00 	lea    0x27dc(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1604:	53                   	push   %rbx
    1605:	4c 29 fd             	sub    %r15,%rbp
    1608:	48 83 ec 08          	sub    $0x8,%rsp
    160c:	e8 ef f9 ff ff       	callq  1000 <_init>
    1611:	48 c1 fd 03          	sar    $0x3,%rbp
    1615:	74 1f                	je     1636 <__libc_csu_init+0x56>
    1617:	31 db                	xor    %ebx,%ebx
    1619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1620:	4c 89 f2             	mov    %r14,%rdx
    1623:	4c 89 ee             	mov    %r13,%rsi
    1626:	44 89 e7             	mov    %r12d,%edi
    1629:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    162d:	48 83 c3 01          	add    $0x1,%rbx
    1631:	48 39 dd             	cmp    %rbx,%rbp
    1634:	75 ea                	jne    1620 <__libc_csu_init+0x40>
    1636:	48 83 c4 08          	add    $0x8,%rsp
    163a:	5b                   	pop    %rbx
    163b:	5d                   	pop    %rbp
    163c:	41 5c                	pop    %r12
    163e:	41 5d                	pop    %r13
    1640:	41 5e                	pop    %r14
    1642:	41 5f                	pop    %r15
    1644:	c3                   	retq   
    1645:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    164c:	00 00 00 00 

0000000000001650 <__libc_csu_fini>:
    1650:	f3 0f 1e fa          	endbr64 
    1654:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001658 <_fini>:
    1658:	f3 0f 1e fa          	endbr64 
    165c:	48 83 ec 08          	sub    $0x8,%rsp
    1660:	48 83 c4 08          	add    $0x8,%rsp
    1664:	c3                   	retq   
