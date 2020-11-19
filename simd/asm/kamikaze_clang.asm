
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
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
}

int main(int argc, char **argv)
{
    11a0:	41 57                	push   %r15
    11a2:	41 56                	push   %r14
    11a4:	53                   	push   %rbx
    11a5:	48 81 ec 00 01 00 00 	sub    $0x100,%rsp
  if (argc != 2)
    11ac:	83 ff 02             	cmp    $0x2,%edi
    11af:	0f 85 f9 03 00 00    	jne    15ae <main+0x40e>
  return strtoll(argv[1], NULL, 10);
    11b5:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11b9:	31 f6                	xor    %esi,%esi
    11bb:	ba 0a 00 00 00       	mov    $0xa,%edx
    11c0:	e8 8b fe ff ff       	callq  1050 <strtoll@plt>
    11c5:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    11c8:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    11cf:	00 
    11d0:	bf 40 00 00 00       	mov    $0x40,%edi
    11d5:	48 89 de             	mov    %rbx,%rsi
    11d8:	e8 93 fe ff ff       	callq  1070 <aligned_alloc@plt>
    11dd:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    11e0:	bf 40 00 00 00       	mov    $0x40,%edi
    11e5:	48 89 de             	mov    %rbx,%rsi
    11e8:	e8 83 fe ff ff       	callq  1070 <aligned_alloc@plt>
    11ed:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
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
      a[i] = 0.1;
    1260:	c4 c1 7d 11 04 f6    	vmovupd %ymm0,(%r14,%rsi,8)
    1266:	c4 c1 7d 11 44 f6 20 	vmovupd %ymm0,0x20(%r14,%rsi,8)
    126d:	c4 c1 7d 11 44 f6 40 	vmovupd %ymm0,0x40(%r14,%rsi,8)
    1274:	c4 c1 7d 11 44 f6 60 	vmovupd %ymm0,0x60(%r14,%rsi,8)
      b[i] = 1.0;
    127b:	c5 fd 11 0c f3       	vmovupd %ymm1,(%rbx,%rsi,8)
    1280:	c5 fd 11 4c f3 20    	vmovupd %ymm1,0x20(%rbx,%rsi,8)
    1286:	c5 fd 11 4c f3 40    	vmovupd %ymm1,0x40(%rbx,%rsi,8)
    128c:	c5 fd 11 4c f3 60    	vmovupd %ymm1,0x60(%rbx,%rsi,8)
      a[i] = 0.1;
    1292:	c4 c1 7d 11 84 f6 80 	vmovupd %ymm0,0x80(%r14,%rsi,8)
    1299:	00 00 00 
    129c:	c4 c1 7d 11 84 f6 a0 	vmovupd %ymm0,0xa0(%r14,%rsi,8)
    12a3:	00 00 00 
    12a6:	c4 c1 7d 11 84 f6 c0 	vmovupd %ymm0,0xc0(%r14,%rsi,8)
    12ad:	00 00 00 
    12b0:	c4 c1 7d 11 84 f6 e0 	vmovupd %ymm0,0xe0(%r14,%rsi,8)
    12b7:	00 00 00 
      b[i] = 1.0;
    12ba:	c5 fd 11 8c f3 80 00 	vmovupd %ymm1,0x80(%rbx,%rsi,8)
    12c1:	00 00 
    12c3:	c5 fd 11 8c f3 a0 00 	vmovupd %ymm1,0xa0(%rbx,%rsi,8)
    12ca:	00 00 
    12cc:	c5 fd 11 8c f3 c0 00 	vmovupd %ymm1,0xc0(%rbx,%rsi,8)
    12d3:	00 00 
    12d5:	c5 fd 11 8c f3 e0 00 	vmovupd %ymm1,0xe0(%rbx,%rsi,8)
    12dc:	00 00 
      a[i] = 0.1;
    12de:	c4 c1 7d 11 84 f6 00 	vmovupd %ymm0,0x100(%r14,%rsi,8)
    12e5:	01 00 00 
    12e8:	c4 c1 7d 11 84 f6 20 	vmovupd %ymm0,0x120(%r14,%rsi,8)
    12ef:	01 00 00 
    12f2:	c4 c1 7d 11 84 f6 40 	vmovupd %ymm0,0x140(%r14,%rsi,8)
    12f9:	01 00 00 
    12fc:	c4 c1 7d 11 84 f6 60 	vmovupd %ymm0,0x160(%r14,%rsi,8)
    1303:	01 00 00 
      b[i] = 1.0;
    1306:	c5 fd 11 8c f3 00 01 	vmovupd %ymm1,0x100(%rbx,%rsi,8)
    130d:	00 00 
    130f:	c5 fd 11 8c f3 20 01 	vmovupd %ymm1,0x120(%rbx,%rsi,8)
    1316:	00 00 
    1318:	c5 fd 11 8c f3 40 01 	vmovupd %ymm1,0x140(%rbx,%rsi,8)
    131f:	00 00 
    1321:	c5 fd 11 8c f3 60 01 	vmovupd %ymm1,0x160(%rbx,%rsi,8)
    1328:	00 00 
      a[i] = 0.1;
    132a:	c4 c1 7d 11 84 f6 80 	vmovupd %ymm0,0x180(%r14,%rsi,8)
    1331:	01 00 00 
    1334:	c4 c1 7d 11 84 f6 a0 	vmovupd %ymm0,0x1a0(%r14,%rsi,8)
    133b:	01 00 00 
    133e:	c4 c1 7d 11 84 f6 c0 	vmovupd %ymm0,0x1c0(%r14,%rsi,8)
    1345:	01 00 00 
    1348:	c4 c1 7d 11 84 f6 e0 	vmovupd %ymm0,0x1e0(%r14,%rsi,8)
    134f:	01 00 00 
      b[i] = 1.0;
    1352:	c5 fd 11 8c f3 80 01 	vmovupd %ymm1,0x180(%rbx,%rsi,8)
    1359:	00 00 
    135b:	c5 fd 11 8c f3 a0 01 	vmovupd %ymm1,0x1a0(%rbx,%rsi,8)
    1362:	00 00 
    1364:	c5 fd 11 8c f3 c0 01 	vmovupd %ymm1,0x1c0(%rbx,%rsi,8)
    136b:	00 00 
    136d:	c5 fd 11 8c f3 e0 01 	vmovupd %ymm1,0x1e0(%rbx,%rsi,8)
    1374:	00 00 
  for (unsigned long long i = 0; i < n; i++)
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
      a[i] = 0.1;
    13b0:	c4 c1 7d 11 44 16 a0 	vmovupd %ymm0,-0x60(%r14,%rdx,1)
    13b7:	c4 c1 7d 11 44 16 c0 	vmovupd %ymm0,-0x40(%r14,%rdx,1)
    13be:	c4 c1 7d 11 44 16 e0 	vmovupd %ymm0,-0x20(%r14,%rdx,1)
    13c5:	c4 c1 7d 11 04 16    	vmovupd %ymm0,(%r14,%rdx,1)
      b[i] = 1.0;
    13cb:	c5 fd 11 4c 13 a0    	vmovupd %ymm1,-0x60(%rbx,%rdx,1)
    13d1:	c5 fd 11 4c 13 c0    	vmovupd %ymm1,-0x40(%rbx,%rdx,1)
    13d7:	c5 fd 11 4c 13 e0    	vmovupd %ymm1,-0x20(%rbx,%rdx,1)
    13dd:	c5 fd 11 0c 13       	vmovupd %ymm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
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
      a[i] = 0.1;
    1410:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 1.0;
    1414:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1418:	48 ff c0             	inc    %rax
    141b:	49 39 c7             	cmp    %rax,%r15
    141e:	75 f0                	jne    1410 <main+0x270>
    1420:	49 83 ff 10          	cmp    $0x10,%r15
  for (unsigned long long i = 0; i < n; ++i)
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
    d += a[i] * b[i];
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
  for (unsigned long long i = 0; i < n; ++i)
    1518:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    151f:	48 83 c6 02          	add    $0x2,%rsi
    1523:	0f 85 57 ff ff ff    	jne    1480 <main+0x2e0>
    1529:	f6 c2 01             	test   $0x1,%dl
    152c:	74 42                	je     1570 <main+0x3d0>
    d += a[i] * b[i];
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
  for (unsigned long long i = 0; i < n; ++i)
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
    exit(ARGS);
    15ae:	bf 01 00 00 00       	mov    $0x1,%edi
    15b3:	e8 a8 fa ff ff       	callq  1060 <exit@plt>
      return d[0] + d[1];
    15b8:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    15be:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    15c2:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
    15c8:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
  for (unsigned long long i = 0; i < n; i++)
    15cd:	4d 85 ff             	test   %r15,%r15
  for (unsigned long long i = 0; i < n; i += 4)
    15d0:	0f 84 c2 05 00 00    	je     1b98 <main+0x9f8>
    15d6:	31 c0                	xor    %eax,%eax
    15d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    15df:	00 
      d[0] += a[i] * b[i];
    15e0:	c5 fd 10 04 c3       	vmovupd (%rbx,%rax,8),%ymm0
      d[1] += a[i + 1] * b[i + 1];
    15e5:	c4 c1 7d 59 04 c6    	vmulpd (%r14,%rax,8),%ymm0,%ymm0
    15eb:	c4 e3 fd 01 c0 2d    	vpermpd $0x2d,%ymm0,%ymm0
    15f1:	c5 35 58 c8          	vaddpd %ymm0,%ymm9,%ymm9
  for (unsigned long long i = 0; i < n; i += 4)
    15f5:	48 83 c0 04          	add    $0x4,%rax
    15f9:	4c 39 f8             	cmp    %r15,%rax
    15fc:	72 e2                	jb     15e0 <main+0x440>
  if (! test)
    15fe:	41 f6 c7 03          	test   $0x3,%r15b
    1602:	75 52                	jne    1656 <main+0x4b6>
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1604:	49 83 ff 03          	cmp    $0x3,%r15
    1608:	72 4c                	jb     1656 <main+0x4b6>
	  d[0] += a[i] * b[i];
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
      d[0] += a[i] * b[i];
    1670:	c5 f9 10 04 c3       	vmovupd (%rbx,%rax,8),%xmm0
    1675:	c4 c1 79 59 04 c6    	vmulpd (%r14,%rax,8),%xmm0,%xmm0
      d[2] += a[i + 2] * b[i + 2];
    167b:	c5 fb 10 4c c3 10    	vmovsd 0x10(%rbx,%rax,8),%xmm1
    1681:	c4 c1 73 59 4c c6 10 	vmulsd 0x10(%r14,%rax,8),%xmm1,%xmm1
      d[0] += a[i] * b[i];
    1688:	c5 11 58 e8          	vaddpd %xmm0,%xmm13,%xmm13
      d[2] += a[i + 2] * b[i + 2];
    168c:	c5 1b 58 e1          	vaddsd %xmm1,%xmm12,%xmm12
      d[3] += a[i + 3] * b[i + 3];
    1690:	c5 f9 10 44 c3 18    	vmovupd 0x18(%rbx,%rax,8),%xmm0
      d[4] += a[i + 4] * b[i + 4];
    1696:	c4 c1 79 59 44 c6 18 	vmulpd 0x18(%r14,%rax,8),%xmm0,%xmm0
    169d:	c4 e3 79 05 c0 01    	vpermilpd $0x1,%xmm0,%xmm0
    16a3:	c5 09 58 f0          	vaddpd %xmm0,%xmm14,%xmm14
      d[5] += a[i + 5] * b[i + 5];
    16a7:	c5 fb 10 44 c3 28    	vmovsd 0x28(%rbx,%rax,8),%xmm0
    16ad:	c4 c1 7b 59 44 c6 28 	vmulsd 0x28(%r14,%rax,8),%xmm0,%xmm0
    16b4:	c5 fb 58 ff          	vaddsd %xmm7,%xmm0,%xmm7
      d[6] += a[i + 6] * b[i + 6];
    16b8:	c5 f9 10 44 c3 30    	vmovupd 0x30(%rbx,%rax,8),%xmm0
      d[7] += a[i + 7] * b[i + 7];
    16be:	c4 c1 79 59 44 c6 30 	vmulpd 0x30(%r14,%rax,8),%xmm0,%xmm0
    16c5:	c4 e3 79 05 c0 01    	vpermilpd $0x1,%xmm0,%xmm0
    16cb:	c5 f9 58 f6          	vaddpd %xmm6,%xmm0,%xmm6
  for (unsigned long long i = 0; i < n; i += 8)
    16cf:	48 83 c0 08          	add    $0x8,%rax
    16d3:	4c 39 f8             	cmp    %r15,%rax
    16d6:	72 98                	jb     1670 <main+0x4d0>
  if (! test)
    16d8:	c4 c3 79 05 c5 01    	vpermilpd $0x1,%xmm13,%xmm0
    16de:	41 f6 c7 07          	test   $0x7,%r15b
    16e2:	c5 f9 29 44 24 70    	vmovapd %xmm0,0x70(%rsp)
    16e8:	0f 85 84 00 00 00    	jne    1772 <main+0x5d2>
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    16ee:	49 83 ff 07          	cmp    $0x7,%r15
    16f2:	72 7e                	jb     1772 <main+0x5d2>
	  d[0] += a[i] * b[i];
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
      d[0] += a[i] * b[i];
    17a0:	c5 f9 10 04 c3       	vmovupd (%rbx,%rax,8),%xmm0
    17a5:	c4 c1 79 59 04 c6    	vmulpd (%r14,%rax,8),%xmm0,%xmm0
    17ab:	c5 f9 58 ed          	vaddpd %xmm5,%xmm0,%xmm5
      d[2] += a[i + 2] * b[i + 2];
    17af:	c5 fb 10 44 c3 10    	vmovsd 0x10(%rbx,%rax,8),%xmm0
    17b5:	c4 c1 7b 59 44 c6 10 	vmulsd 0x10(%r14,%rax,8),%xmm0,%xmm0
      d[3] += a[i + 3] * b[i + 3];
    17bc:	c5 f9 10 64 c3 18    	vmovupd 0x18(%rbx,%rax,8),%xmm4
      d[4] += a[i + 4] * b[i + 4];
    17c2:	c4 c1 59 59 64 c6 18 	vmulpd 0x18(%r14,%rax,8),%xmm4,%xmm4
      d[2] += a[i + 2] * b[i + 2];
    17c9:	c5 fb 58 d2          	vaddsd %xmm2,%xmm0,%xmm2
      d[4] += a[i + 4] * b[i + 4];
    17cd:	c4 e3 79 05 c4 01    	vpermilpd $0x1,%xmm4,%xmm0
    17d3:	c5 f9 58 db          	vaddpd %xmm3,%xmm0,%xmm3
      d[5] += a[i + 5] * b[i + 5];
    17d7:	c5 fd 10 44 c3 28    	vmovupd 0x28(%rbx,%rax,8),%ymm0
      d[8] += a[i + 8] * b[i + 8];
    17dd:	c4 c1 7d 59 44 c6 28 	vmulpd 0x28(%r14,%rax,8),%ymm0,%ymm0
    17e4:	c4 e3 fd 01 c0 1b    	vpermpd $0x1b,%ymm0,%ymm0
    17ea:	c5 25 58 d8          	vaddpd %ymm0,%ymm11,%ymm11
      d[9] += a[i + 9] * b[i + 9];
    17ee:	c5 fd 10 44 c3 48    	vmovupd 0x48(%rbx,%rax,8),%ymm0
      d[12] += a[i + 12] * b[i + 12];
    17f4:	c4 c1 7d 59 44 c6 48 	vmulpd 0x48(%r14,%rax,8),%ymm0,%ymm0
    17fb:	c4 e3 fd 01 c0 1b    	vpermpd $0x1b,%ymm0,%ymm0
    1801:	c5 2d 58 d0          	vaddpd %ymm0,%ymm10,%ymm10
      d[13] += a[i + 13] * b[i + 13];
    1805:	c5 fb 10 44 c3 68    	vmovsd 0x68(%rbx,%rax,8),%xmm0
    180b:	c4 c1 7b 59 44 c6 68 	vmulsd 0x68(%r14,%rax,8),%xmm0,%xmm0
    1812:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
      d[14] += a[i + 14] * b[i + 14];
    1816:	c5 f9 10 44 c3 70    	vmovupd 0x70(%rbx,%rax,8),%xmm0
      d[15] += a[i + 15] * b[i + 15];
    181c:	c4 c1 79 59 44 c6 70 	vmulpd 0x70(%r14,%rax,8),%xmm0,%xmm0
    1823:	c4 e3 79 05 c0 01    	vpermilpd $0x1,%xmm0,%xmm0
    1829:	c5 01 58 f8          	vaddpd %xmm0,%xmm15,%xmm15
  for (unsigned long long i = 0; i < n; i += 16)
    182d:	48 83 c0 10          	add    $0x10,%rax
    1831:	4c 39 f8             	cmp    %r15,%rax
    1834:	0f 82 66 ff ff ff    	jb     17a0 <main+0x600>
  if (! test)
    183a:	c4 e3 79 05 c5 01    	vpermilpd $0x1,%xmm5,%xmm0
    1840:	41 f6 c7 0f          	test   $0xf,%r15b
    1844:	c5 f9 29 44 24 60    	vmovapd %xmm0,0x60(%rsp)
    184a:	0f 85 92 03 00 00    	jne    1be2 <main+0xa42>
    1850:	49 83 ff 0e          	cmp    $0xe,%r15
    1854:	0f 86 88 03 00 00    	jbe    1be2 <main+0xa42>
      for (unsigned long long i = n_16 + 1; i < n; ++i)
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
	  d[0] += a[i] * b[i];
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
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1ad2:	c4 e3 7d 19 c4 01    	vextractf128 $0x1,%ymm0,%xmm4
    1ad8:	c5 f9 58 c4          	vaddpd %xmm4,%xmm0,%xmm0
    1adc:	c4 e3 79 05 e0 01    	vpermilpd $0x1,%xmm0,%xmm4
    1ae2:	c5 fb 58 ec          	vaddsd %xmm4,%xmm0,%xmm5
    1ae6:	e9 f7 00 00 00       	jmpq   1be2 <main+0xa42>
    d += a[i] * b[i];
    1aeb:	c5 fb 10 04 c3       	vmovsd (%rbx,%rax,8),%xmm0
    1af0:	c4 c1 7b 59 04 c6    	vmulsd (%r14,%rax,8),%xmm0,%xmm0
    1af6:	c5 fb 58 c9          	vaddsd %xmm1,%xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    1afa:	48 ff c0             	inc    %rax
    1afd:	49 39 c7             	cmp    %rax,%r15
    1b00:	75 e9                	jne    1aeb <main+0x94b>
  if (n & 1)
    1b02:	41 f6 c7 01          	test   $0x1,%r15b
    1b06:	c5 fb 11 4c 24 18    	vmovsd %xmm1,0x18(%rsp)
    1b0c:	75 2f                	jne    1b3d <main+0x99d>
    1b0e:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1b12:	31 c0                	xor    %eax,%eax
    1b14:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
    1b1b:	00 00 00 00 00 
	  d[0] += a[i] * b[i];
    1b20:	c5 f9 10 0c c3       	vmovupd (%rbx,%rax,8),%xmm1
    1b25:	c4 c1 71 59 0c c6    	vmulpd (%r14,%rax,8),%xmm1,%xmm1
    1b2b:	c5 f1 58 c0          	vaddpd %xmm0,%xmm1,%xmm0
      for (unsigned long long i = 0; i < n; i += 2)
    1b2f:	48 83 c0 02          	add    $0x2,%rax
    1b33:	4c 39 f8             	cmp    %r15,%rax
    1b36:	72 e8                	jb     1b20 <main+0x980>
    1b38:	e9 7b fa ff ff       	jmpq   15b8 <main+0x418>
      for (unsigned long long i = 0; i < n_1; i += 2)
    1b3d:	4c 89 f8             	mov    %r15,%rax
    1b40:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1b44:	48 ff c8             	dec    %rax
    1b47:	74 1f                	je     1b68 <main+0x9c8>
    1b49:	31 c9                	xor    %ecx,%ecx
    1b4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	  d[0] += a[i] * b[i];
    1b50:	c5 f9 10 0c cb       	vmovupd (%rbx,%rcx,8),%xmm1
    1b55:	c4 c1 71 59 0c ce    	vmulpd (%r14,%rcx,8),%xmm1,%xmm1
    1b5b:	c5 f1 58 c0          	vaddpd %xmm0,%xmm1,%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    1b5f:	48 83 c1 02          	add    $0x2,%rcx
    1b63:	48 39 c1             	cmp    %rax,%rcx
    1b66:	72 e8                	jb     1b50 <main+0x9b0>
      return d[0] + d[1] + a[n-1] * b[n-1];
    1b68:	c4 e3 79 05 c8 01    	vpermilpd $0x1,%xmm0,%xmm1
    1b6e:	c5 f3 58 c0          	vaddsd %xmm0,%xmm1,%xmm0
    1b72:	c4 a1 7b 10 4c fb f8 	vmovsd -0x8(%rbx,%r15,8),%xmm1
    1b79:	c4 81 73 59 4c fe f8 	vmulsd -0x8(%r14,%r15,8),%xmm1,%xmm1
    1b80:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    1b84:	c5 fb 11 44 24 10    	vmovsd %xmm0,0x10(%rsp)
    1b8a:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
  for (unsigned long long i = 0; i < n; i++)
    1b8f:	4d 85 ff             	test   %r15,%r15
  for (unsigned long long i = 0; i < n; i += 4)
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
  double d[16] = {0.0};
    1bcb:	c5 d1 57 ed          	vxorpd %xmm5,%xmm5,%xmm5
    1bcf:	c4 41 01 57 ff       	vxorpd %xmm15,%xmm15,%xmm15
    1bd4:	c4 41 29 57 d2       	vxorpd %xmm10,%xmm10,%xmm10
    1bd9:	c4 41 21 57 db       	vxorpd %xmm11,%xmm11,%xmm11
    1bde:	c5 e1 57 db          	vxorpd %xmm3,%xmm3,%xmm3
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
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
  return d[0] + d[1] + d[2] + d[3];
    1c13:	c4 c3 79 05 c1 01    	vpermilpd $0x1,%xmm9,%xmm0
    1c19:	c5 b3 58 c0          	vaddsd %xmm0,%xmm9,%xmm0
    1c1d:	c4 63 7d 19 cc 01    	vextractf128 $0x1,%ymm9,%xmm4
    1c23:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c27:	c4 e3 79 05 e4 01    	vpermilpd $0x1,%xmm4,%xmm4
    1c2d:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c31:	c5 fb 11 44 24 20    	vmovsd %xmm0,0x20(%rsp)
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
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
  double res_4x = dotprod_4x(a, b, n);
  double res_8x = dotprod_8x(a, b, n);
  double res_16x = dotprod_16x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    1cae:	48 8d 3d ab 03 00 00 	lea    0x3ab(%rip),%rdi        # 2060 <_IO_stdin_used+0x60>
    1cb5:	c5 fb 10 44 24 18    	vmovsd 0x18(%rsp),%xmm0
    1cbb:	b0 01                	mov    $0x1,%al
    1cbd:	c5 f8 77             	vzeroupper 
    1cc0:	e8 7b f3 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1cc5:	48 8d 3d 9f 03 00 00 	lea    0x39f(%rip),%rdi        # 206b <_IO_stdin_used+0x6b>
    1ccc:	c5 fb 10 44 24 10    	vmovsd 0x10(%rsp),%xmm0
    1cd2:	b0 01                	mov    $0x1,%al
    1cd4:	e8 67 f3 ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1cd9:	48 8d 3d 99 03 00 00 	lea    0x399(%rip),%rdi        # 2079 <_IO_stdin_used+0x79>
    1ce0:	c5 fb 10 44 24 20    	vmovsd 0x20(%rsp),%xmm0
    1ce6:	b0 01                	mov    $0x1,%al
    1ce8:	e8 53 f3 ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    1ced:	48 8d 3d 93 03 00 00 	lea    0x393(%rip),%rdi        # 2087 <_IO_stdin_used+0x87>
    1cf4:	c5 fb 10 44 24 40    	vmovsd 0x40(%rsp),%xmm0
    1cfa:	b0 01                	mov    $0x1,%al
    1cfc:	e8 3f f3 ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    1d01:	48 8d 3d 8d 03 00 00 	lea    0x38d(%rip),%rdi        # 2095 <_IO_stdin_used+0x95>
    1d08:	c5 fb 10 84 24 80 00 	vmovsd 0x80(%rsp),%xmm0
    1d0f:	00 00 
    1d11:	b0 01                	mov    $0x1,%al
    1d13:	e8 28 f3 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1d18:	4c 89 f7             	mov    %r14,%rdi
    1d1b:	e8 10 f3 ff ff       	callq  1030 <free@plt>
  free(b);
    1d20:	48 89 df             	mov    %rbx,%rdi
    1d23:	e8 08 f3 ff ff       	callq  1030 <free@plt>
  
  return 0;
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
