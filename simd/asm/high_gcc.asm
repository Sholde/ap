
high_gcc:     format de fichier elf64-x86-64


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

0000000000001080 <main>:
  
  return d[0] + d[1];
}

int main(int argc, char **argv)
{
    1080:	41 55                	push   %r13
    1082:	41 54                	push   %r12
    1084:	55                   	push   %rbp
    1085:	48 83 ec 10          	sub    $0x10,%rsp
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    1089:	e8 a2 02 00 00       	callq  1330 <parse_args>

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    108e:	bf 40 00 00 00       	mov    $0x40,%edi
    1093:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    109a:	00 
  unsigned long long n = parse_args(argc, argv);
    109b:	49 89 c5             	mov    %rax,%r13
  double *a = aligned_alloc(64, n * sizeof(double));
    109e:	48 89 ee             	mov    %rbp,%rsi
    10a1:	e8 ca ff ff ff       	callq  1070 <aligned_alloc@plt>
  double *b = aligned_alloc(64, n * sizeof(double));
    10a6:	48 89 ee             	mov    %rbp,%rsi
    10a9:	bf 40 00 00 00       	mov    $0x40,%edi
  double *a = aligned_alloc(64, n * sizeof(double));
    10ae:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    10b1:	e8 ba ff ff ff       	callq  1070 <aligned_alloc@plt>
    10b6:	48 89 c5             	mov    %rax,%rbp
  for (unsigned long long i = 0; i < n; i++)
    10b9:	4d 85 ed             	test   %r13,%r13
    10bc:	0f 84 36 01 00 00    	je     11f8 <main+0x178>
    10c2:	49 83 fd 01          	cmp    $0x1,%r13
    10c6:	0f 84 32 01 00 00    	je     11fe <main+0x17e>
    10cc:	4c 89 ea             	mov    %r13,%rdx
    10cf:	66 0f 28 0d 49 0f 00 	movapd 0xf49(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    10d6:	00 
    10d7:	66 0f 28 05 51 0f 00 	movapd 0xf51(%rip),%xmm0        # 2030 <_IO_stdin_used+0x30>
    10de:	00 
    10df:	31 c0                	xor    %eax,%eax
    10e1:	48 d1 ea             	shr    %rdx
    10e4:	48 c1 e2 04          	shl    $0x4,%rdx
    10e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    10ef:	00 
      a[i] = 0.1;
    10f0:	41 0f 29 0c 04       	movaps %xmm1,(%r12,%rax,1)
      b[i] = 0.001;
    10f5:	0f 29 44 05 00       	movaps %xmm0,0x0(%rbp,%rax,1)
  for (unsigned long long i = 0; i < n; i++)
    10fa:	48 83 c0 10          	add    $0x10,%rax
    10fe:	48 39 c2             	cmp    %rax,%rdx
    1101:	75 ed                	jne    10f0 <main+0x70>
    1103:	4c 89 e8             	mov    %r13,%rax
    1106:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    110a:	41 f6 c5 01          	test   $0x1,%r13b
    110e:	74 21                	je     1131 <main+0xb1>
      a[i] = 0.1;
    1110:	48 8b 0d 29 0f 00 00 	mov    0xf29(%rip),%rcx        # 2040 <_IO_stdin_used+0x40>
      b[i] = 0.001;
    1117:	48 8b 35 2a 0f 00 00 	mov    0xf2a(%rip),%rsi        # 2048 <_IO_stdin_used+0x48>
      a[i] = 0.1;
    111e:	49 89 0c c4          	mov    %rcx,(%r12,%rax,8)
      b[i] = 0.001;
    1122:	48 89 74 c5 00       	mov    %rsi,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1127:	49 83 fd 01          	cmp    $0x1,%r13
    112b:	0f 84 bf 00 00 00    	je     11f0 <main+0x170>
    1131:	4c 89 ea             	mov    %r13,%rdx
    1134:	31 c0                	xor    %eax,%eax
    1136:	66 0f ef c9          	pxor   %xmm1,%xmm1
    113a:	48 d1 ea             	shr    %rdx
    113d:	48 c1 e2 04          	shl    $0x4,%rdx
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    d += a[i] * b[i];
    1148:	66 41 0f 28 04 04    	movapd (%r12,%rax,1),%xmm0
    114e:	66 0f 59 44 05 00    	mulpd  0x0(%rbp,%rax,1),%xmm0
    1154:	48 83 c0 10          	add    $0x10,%rax
    1158:	66 0f 58 c8          	addpd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    115c:	48 39 c2             	cmp    %rax,%rdx
    115f:	75 e7                	jne    1148 <main+0xc8>
    1161:	66 0f 28 e1          	movapd %xmm1,%xmm4
    1165:	4c 89 e8             	mov    %r13,%rax
    1168:	66 0f 15 e1          	unpckhpd %xmm1,%xmm4
    116c:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1170:	66 0f 58 e1          	addpd  %xmm1,%xmm4
    1174:	41 f6 c5 01          	test   $0x1,%r13b
    1178:	74 10                	je     118a <main+0x10a>
    d += a[i] * b[i];
    117a:	f2 0f 10 44 c5 00    	movsd  0x0(%rbp,%rax,8),%xmm0
    1180:	f2 41 0f 59 04 c4    	mulsd  (%r12,%rax,8),%xmm0
    1186:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
    118a:	4c 89 ea             	mov    %r13,%rdx
    118d:	48 89 ee             	mov    %rbp,%rsi
    1190:	4c 89 e7             	mov    %r12,%rdi
    1193:	e8 48 02 00 00       	callq  13e0 <dotprod_2x>

  // Print result
  printf("res = %lf\n", res);
    1198:	48 8d 3d 65 0e 00 00 	lea    0xe65(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    119f:	b8 01 00 00 00       	mov    $0x1,%eax
  double res_2x = dotprod_2x(a, b, n);
    11a4:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  printf("res = %lf\n", res);
    11aa:	66 0f 28 c4          	movapd %xmm4,%xmm0
    11ae:	e8 8d fe ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    11b3:	f2 0f 10 4c 24 08    	movsd  0x8(%rsp),%xmm1
    11b9:	b8 01 00 00 00       	mov    $0x1,%eax
    11be:	48 8d 3d 4a 0e 00 00 	lea    0xe4a(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    11c5:	66 0f 28 c1          	movapd %xmm1,%xmm0
    11c9:	e8 72 fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    11ce:	4c 89 e7             	mov    %r12,%rdi
    11d1:	e8 5a fe ff ff       	callq  1030 <free@plt>
  free(b);
    11d6:	48 89 ef             	mov    %rbp,%rdi
    11d9:	e8 52 fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    11de:	48 83 c4 10          	add    $0x10,%rsp
    11e2:	31 c0                	xor    %eax,%eax
    11e4:	5d                   	pop    %rbp
    11e5:	41 5c                	pop    %r12
    11e7:	41 5d                	pop    %r13
    11e9:	c3                   	retq   
    11ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      b[i] = 0.001;
    11f0:	66 0f ef e4          	pxor   %xmm4,%xmm4
    11f4:	31 c0                	xor    %eax,%eax
    11f6:	eb 82                	jmp    117a <main+0xfa>
  double d = 0.0;
    11f8:	66 0f ef e4          	pxor   %xmm4,%xmm4
    11fc:	eb 8c                	jmp    118a <main+0x10a>
  for (unsigned long long i = 0; i < n; i++)
    11fe:	31 c0                	xor    %eax,%eax
    1200:	e9 0b ff ff ff       	jmpq   1110 <main+0x90>
    1205:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    120c:	00 00 00 
    120f:	90                   	nop

0000000000001210 <set_fast_math>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1219:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    1220:	00 
    1221:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    1226:	c3                   	retq   
    1227:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    122e:	00 00 

0000000000001230 <_start>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	31 ed                	xor    %ebp,%ebp
    1236:	49 89 d1             	mov    %rdx,%r9
    1239:	5e                   	pop    %rsi
    123a:	48 89 e2             	mov    %rsp,%rdx
    123d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1241:	50                   	push   %rax
    1242:	54                   	push   %rsp
    1243:	4c 8d 05 86 02 00 00 	lea    0x286(%rip),%r8        # 14d0 <__libc_csu_fini>
    124a:	48 8d 0d 0f 02 00 00 	lea    0x20f(%rip),%rcx        # 1460 <__libc_csu_init>
    1251:	48 8d 3d 28 fe ff ff 	lea    -0x1d8(%rip),%rdi        # 1080 <main>
    1258:	ff 15 82 2d 00 00    	callq  *0x2d82(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    125e:	f4                   	hlt    
    125f:	90                   	nop

0000000000001260 <deregister_tm_clones>:
    1260:	48 8d 3d e9 2d 00 00 	lea    0x2de9(%rip),%rdi        # 4050 <__TMC_END__>
    1267:	48 8d 05 e2 2d 00 00 	lea    0x2de2(%rip),%rax        # 4050 <__TMC_END__>
    126e:	48 39 f8             	cmp    %rdi,%rax
    1271:	74 15                	je     1288 <deregister_tm_clones+0x28>
    1273:	48 8b 05 5e 2d 00 00 	mov    0x2d5e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    127a:	48 85 c0             	test   %rax,%rax
    127d:	74 09                	je     1288 <deregister_tm_clones+0x28>
    127f:	ff e0                	jmpq   *%rax
    1281:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1288:	c3                   	retq   
    1289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001290 <register_tm_clones>:
    1290:	48 8d 3d b9 2d 00 00 	lea    0x2db9(%rip),%rdi        # 4050 <__TMC_END__>
    1297:	48 8d 35 b2 2d 00 00 	lea    0x2db2(%rip),%rsi        # 4050 <__TMC_END__>
    129e:	48 29 fe             	sub    %rdi,%rsi
    12a1:	48 89 f0             	mov    %rsi,%rax
    12a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    12a8:	48 c1 f8 03          	sar    $0x3,%rax
    12ac:	48 01 c6             	add    %rax,%rsi
    12af:	48 d1 fe             	sar    %rsi
    12b2:	74 14                	je     12c8 <register_tm_clones+0x38>
    12b4:	48 8b 05 35 2d 00 00 	mov    0x2d35(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    12bb:	48 85 c0             	test   %rax,%rax
    12be:	74 08                	je     12c8 <register_tm_clones+0x38>
    12c0:	ff e0                	jmpq   *%rax
    12c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12c8:	c3                   	retq   
    12c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012d0 <__do_global_dtors_aux>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	80 3d 75 2d 00 00 00 	cmpb   $0x0,0x2d75(%rip)        # 4050 <__TMC_END__>
    12db:	75 33                	jne    1310 <__do_global_dtors_aux+0x40>
    12dd:	55                   	push   %rbp
    12de:	48 83 3d 12 2d 00 00 	cmpq   $0x0,0x2d12(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12e5:	00 
    12e6:	48 89 e5             	mov    %rsp,%rbp
    12e9:	74 0d                	je     12f8 <__do_global_dtors_aux+0x28>
    12eb:	48 8b 3d 56 2d 00 00 	mov    0x2d56(%rip),%rdi        # 4048 <__dso_handle>
    12f2:	ff 15 00 2d 00 00    	callq  *0x2d00(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12f8:	e8 63 ff ff ff       	callq  1260 <deregister_tm_clones>
    12fd:	c6 05 4c 2d 00 00 01 	movb   $0x1,0x2d4c(%rip)        # 4050 <__TMC_END__>
    1304:	5d                   	pop    %rbp
    1305:	c3                   	retq   
    1306:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    130d:	00 00 00 
    1310:	c3                   	retq   
    1311:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1318:	00 00 00 00 
    131c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001320 <frame_dummy>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	e9 67 ff ff ff       	jmpq   1290 <register_tm_clones>
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001330 <parse_args>:
  if (argc != 2)
    1330:	83 ff 02             	cmp    $0x2,%edi
    1333:	75 10                	jne    1345 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    1335:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1339:	ba 0a 00 00 00       	mov    $0xa,%edx
    133e:	31 f6                	xor    %esi,%esi
    1340:	e9 0b fd ff ff       	jmpq   1050 <strtoll@plt>
{
    1345:	50                   	push   %rax
    exit(ARGS);
    1346:	bf 01 00 00 00       	mov    $0x1,%edi
    134b:	e8 10 fd ff ff       	callq  1060 <exit@plt>

0000000000001350 <dotprod>:
  for (unsigned long long i = 0; i < n; ++i)
    1350:	48 85 d2             	test   %rdx,%rdx
    1353:	74 6b                	je     13c0 <dotprod+0x70>
    1355:	48 83 fa 01          	cmp    $0x1,%rdx
    1359:	74 6e                	je     13c9 <dotprod+0x79>
    135b:	48 89 d1             	mov    %rdx,%rcx
    135e:	31 c0                	xor    %eax,%eax
    1360:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1364:	48 d1 e9             	shr    %rcx
    1367:	48 c1 e1 04          	shl    $0x4,%rcx
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1370:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
    1375:	66 0f 10 1c 06       	movupd (%rsi,%rax,1),%xmm3
    137a:	48 83 c0 10          	add    $0x10,%rax
    137e:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1382:	66 0f 58 d0          	addpd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; ++i)
    1386:	48 39 c1             	cmp    %rax,%rcx
    1389:	75 e5                	jne    1370 <dotprod+0x20>
    138b:	48 89 d0             	mov    %rdx,%rax
    138e:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1392:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
    1396:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    139a:	83 e2 01             	and    $0x1,%edx
    139d:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    13a1:	74 0e                	je     13b1 <dotprod+0x61>
    d += a[i] * b[i];
    13a3:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    13a8:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    13ad:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
}
    13b1:	66 0f 28 c1          	movapd %xmm1,%xmm0
    13b5:	c3                   	retq   
    13b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13bd:	00 00 00 
  double d = 0.0;
    13c0:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    13c4:	66 0f 28 c1          	movapd %xmm1,%xmm0
    13c8:	c3                   	retq   
  for (unsigned long long i = 0; i < n; ++i)
    13c9:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    13cb:	66 0f ef c9          	pxor   %xmm1,%xmm1
    13cf:	eb d2                	jmp    13a3 <dotprod+0x53>
    13d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    13d8:	00 00 00 00 
    13dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000013e0 <dotprod_2x>:
{
    13e0:	49 89 d0             	mov    %rdx,%r8
  for (unsigned long long i = 0; i < n; i += 2)
    13e3:	48 85 d2             	test   %rdx,%rdx
    13e6:	74 68                	je     1450 <dotprod_2x+0x70>
    13e8:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    13ec:	31 c0                	xor    %eax,%eax
    13ee:	66 0f ef c9          	pxor   %xmm1,%xmm1
    13f2:	31 d2                	xor    %edx,%edx
    13f4:	48 d1 e9             	shr    %rcx
    13f7:	48 83 c1 01          	add    $0x1,%rcx
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      d[0] += a[i] * b[i];
    1400:	66 0f 10 04 06       	movupd (%rsi,%rax,1),%xmm0
    1405:	66 0f 10 1c 07       	movupd (%rdi,%rax,1),%xmm3
  for (unsigned long long i = 0; i < n; i += 2)
    140a:	48 83 c2 01          	add    $0x1,%rdx
    140e:	48 83 c0 10          	add    $0x10,%rax
      d[0] += a[i] * b[i];
    1412:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1416:	66 0f 58 c8          	addpd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    141a:	48 39 ca             	cmp    %rcx,%rdx
    141d:	72 e1                	jb     1400 <dotprod_2x+0x20>
    141f:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1423:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
  if (n & 1)
    1427:	41 f6 c0 01          	test   $0x1,%r8b
    142b:	75 0b                	jne    1438 <dotprod_2x+0x58>
  return d[0] + d[1];
    142d:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1431:	c3                   	retq   
    1432:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    return d[0] + d[1] + a[n-1] * b[n-1];
    1438:	f2 42 0f 10 54 c7 f8 	movsd  -0x8(%rdi,%r8,8),%xmm2
    143f:	f2 42 0f 59 54 c6 f8 	mulsd  -0x8(%rsi,%r8,8),%xmm2
    1446:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    144a:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    144e:	c3                   	retq   
    144f:	90                   	nop
  for (unsigned long long i = 0; i < n; i += 2)
    1450:	66 0f ef c0          	pxor   %xmm0,%xmm0
}
    1454:	c3                   	retq   
    1455:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    145c:	00 00 00 
    145f:	90                   	nop

0000000000001460 <__libc_csu_init>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	41 57                	push   %r15
    1466:	4c 8d 3d 73 29 00 00 	lea    0x2973(%rip),%r15        # 3de0 <__frame_dummy_init_array_entry>
    146d:	41 56                	push   %r14
    146f:	49 89 d6             	mov    %rdx,%r14
    1472:	41 55                	push   %r13
    1474:	49 89 f5             	mov    %rsi,%r13
    1477:	41 54                	push   %r12
    1479:	41 89 fc             	mov    %edi,%r12d
    147c:	55                   	push   %rbp
    147d:	48 8d 2d 6c 29 00 00 	lea    0x296c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1484:	53                   	push   %rbx
    1485:	4c 29 fd             	sub    %r15,%rbp
    1488:	48 83 ec 08          	sub    $0x8,%rsp
    148c:	e8 6f fb ff ff       	callq  1000 <_init>
    1491:	48 c1 fd 03          	sar    $0x3,%rbp
    1495:	74 1f                	je     14b6 <__libc_csu_init+0x56>
    1497:	31 db                	xor    %ebx,%ebx
    1499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    14a0:	4c 89 f2             	mov    %r14,%rdx
    14a3:	4c 89 ee             	mov    %r13,%rsi
    14a6:	44 89 e7             	mov    %r12d,%edi
    14a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    14ad:	48 83 c3 01          	add    $0x1,%rbx
    14b1:	48 39 dd             	cmp    %rbx,%rbp
    14b4:	75 ea                	jne    14a0 <__libc_csu_init+0x40>
    14b6:	48 83 c4 08          	add    $0x8,%rsp
    14ba:	5b                   	pop    %rbx
    14bb:	5d                   	pop    %rbp
    14bc:	41 5c                	pop    %r12
    14be:	41 5d                	pop    %r13
    14c0:	41 5e                	pop    %r14
    14c2:	41 5f                	pop    %r15
    14c4:	c3                   	retq   
    14c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    14cc:	00 00 00 00 

00000000000014d0 <__libc_csu_fini>:
    14d0:	f3 0f 1e fa          	endbr64 
    14d4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000014d8 <_fini>:
    14d8:	f3 0f 1e fa          	endbr64 
    14dc:	48 83 ec 08          	sub    $0x8,%rsp
    14e0:	48 83 c4 08          	add    $0x8,%rsp
    14e4:	c3                   	retq   
