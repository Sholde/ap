
light_gcc:     format de fichier elf64-x86-64


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
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
}

int main(int argc, char **argv)
{
    1080:	41 55                	push   %r13
    1082:	41 54                	push   %r12
    1084:	55                   	push   %rbp
    1085:	48 83 ec 30          	sub    $0x30,%rsp
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    1089:	e8 82 02 00 00       	callq  1310 <parse_args>

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
    10bc:	0f 84 44 01 00 00    	je     1206 <main+0x186>
    10c2:	f2 0f 10 0d 7e 0f 00 	movsd  0xf7e(%rip),%xmm1        # 2048 <_IO_stdin_used+0x48>
    10c9:	00 
    10ca:	f2 0f 10 05 7e 0f 00 	movsd  0xf7e(%rip),%xmm0        # 2050 <_IO_stdin_used+0x50>
    10d1:	00 
    10d2:	31 c0                	xor    %eax,%eax
    10d4:	0f 1f 40 00          	nopl   0x0(%rax)
      a[i] = 0.1;
    10d8:	f2 41 0f 11 0c c4    	movsd  %xmm1,(%r12,%rax,8)
      b[i] = 1.0;
    10de:	48 89 c2             	mov    %rax,%rdx
    10e1:	f2 0f 11 44 c5 00    	movsd  %xmm0,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    10e7:	48 8d 40 01          	lea    0x1(%rax),%rax
    10eb:	49 39 c5             	cmp    %rax,%r13
    10ee:	75 e8                	jne    10d8 <main+0x58>
    10f0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    10f4:	31 c0                	xor    %eax,%eax
    10f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    10fd:	00 00 00 
    d += a[i] * b[i];
    1100:	f2 41 0f 10 04 c4    	movsd  (%r12,%rax,8),%xmm0
    1106:	f2 0f 59 44 c5 00    	mulsd  0x0(%rbp,%rax,8),%xmm0
    110c:	48 89 c1             	mov    %rax,%rcx
  for (unsigned long long i = 0; i < n; ++i)
    110f:	48 83 c0 01          	add    $0x1,%rax
    d += a[i] * b[i];
    1113:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    1117:	48 39 d1             	cmp    %rdx,%rcx
    111a:	75 e4                	jne    1100 <main+0x80>
  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
    111c:	4c 89 e7             	mov    %r12,%rdi
    111f:	4c 89 ea             	mov    %r13,%rdx
    1122:	48 89 ee             	mov    %rbp,%rsi
    1125:	f2 0f 11 4c 24 28    	movsd  %xmm1,0x28(%rsp)
    112b:	e8 40 02 00 00       	callq  1370 <dotprod_2x>
    1130:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
  double res_4x = dotprod_4x(a, b, n);
    1136:	e8 f5 02 00 00       	callq  1430 <dotprod_4x>
  double res_8x = dotprod_8x(a, b, n);
    113b:	4c 89 ea             	mov    %r13,%rdx
    113e:	48 89 ee             	mov    %rbp,%rsi
  double res_4x = dotprod_4x(a, b, n);
    1141:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
  double res_8x = dotprod_8x(a, b, n);
    1147:	e8 c4 03 00 00       	callq  1510 <dotprod_8x>
  double res_16x = dotprod_16x(a, b, n);
    114c:	4c 89 ea             	mov    %r13,%rdx
    114f:	48 89 ee             	mov    %rbp,%rsi
  double res_8x = dotprod_8x(a, b, n);
    1152:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    1158:	e8 03 05 00 00       	callq  1660 <dotprod_16x>

  // Print result
  printf("res = %lf\n", res);
    115d:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    1163:	b8 01 00 00 00       	mov    $0x1,%eax
    1168:	48 8d 3d 95 0e 00 00 	lea    0xe95(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
  double res_16x = dotprod_16x(a, b, n);
    116f:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  printf("res = %lf\n", res);
    1175:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1179:	e8 c2 fe ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    117e:	f2 0f 10 6c 24 20    	movsd  0x20(%rsp),%xmm5
    1184:	b8 01 00 00 00       	mov    $0x1,%eax
    1189:	48 8d 3d 7f 0e 00 00 	lea    0xe7f(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    1190:	66 0f 28 c5          	movapd %xmm5,%xmm0
    1194:	e8 a7 fe ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1199:	f2 0f 10 64 24 18    	movsd  0x18(%rsp),%xmm4
    119f:	b8 01 00 00 00       	mov    $0x1,%eax
    11a4:	48 8d 3d 72 0e 00 00 	lea    0xe72(%rip),%rdi        # 201d <_IO_stdin_used+0x1d>
    11ab:	66 0f 28 c4          	movapd %xmm4,%xmm0
    11af:	e8 8c fe ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    11b4:	f2 0f 10 5c 24 10    	movsd  0x10(%rsp),%xmm3
    11ba:	b8 01 00 00 00       	mov    $0x1,%eax
    11bf:	48 8d 3d 65 0e 00 00 	lea    0xe65(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    11c6:	66 0f 28 c3          	movapd %xmm3,%xmm0
    11ca:	e8 71 fe ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    11cf:	f2 0f 10 54 24 08    	movsd  0x8(%rsp),%xmm2
    11d5:	b8 01 00 00 00       	mov    $0x1,%eax
    11da:	48 8d 3d 58 0e 00 00 	lea    0xe58(%rip),%rdi        # 2039 <_IO_stdin_used+0x39>
    11e1:	66 0f 28 c2          	movapd %xmm2,%xmm0
    11e5:	e8 56 fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    11ea:	4c 89 e7             	mov    %r12,%rdi
    11ed:	e8 3e fe ff ff       	callq  1030 <free@plt>
  free(b);
    11f2:	48 89 ef             	mov    %rbp,%rdi
    11f5:	e8 36 fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    11fa:	48 83 c4 30          	add    $0x30,%rsp
    11fe:	31 c0                	xor    %eax,%eax
    1200:	5d                   	pop    %rbp
    1201:	41 5c                	pop    %r12
    1203:	41 5d                	pop    %r13
    1205:	c3                   	retq   
  double d = 0.0;
    1206:	66 0f ef c9          	pxor   %xmm1,%xmm1
    120a:	e9 0d ff ff ff       	jmpq   111c <main+0x9c>
    120f:	90                   	nop

0000000000001210 <_start>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	31 ed                	xor    %ebp,%ebp
    1216:	49 89 d1             	mov    %rdx,%r9
    1219:	5e                   	pop    %rsi
    121a:	48 89 e2             	mov    %rsp,%rdx
    121d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1221:	50                   	push   %rax
    1222:	54                   	push   %rsp
    1223:	4c 8d 05 f6 06 00 00 	lea    0x6f6(%rip),%r8        # 1920 <__libc_csu_fini>
    122a:	48 8d 0d 7f 06 00 00 	lea    0x67f(%rip),%rcx        # 18b0 <__libc_csu_init>
    1231:	48 8d 3d 48 fe ff ff 	lea    -0x1b8(%rip),%rdi        # 1080 <main>
    1238:	ff 15 a2 2d 00 00    	callq  *0x2da2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    123e:	f4                   	hlt    
    123f:	90                   	nop

0000000000001240 <deregister_tm_clones>:
    1240:	48 8d 3d 09 2e 00 00 	lea    0x2e09(%rip),%rdi        # 4050 <__TMC_END__>
    1247:	48 8d 05 02 2e 00 00 	lea    0x2e02(%rip),%rax        # 4050 <__TMC_END__>
    124e:	48 39 f8             	cmp    %rdi,%rax
    1251:	74 15                	je     1268 <deregister_tm_clones+0x28>
    1253:	48 8b 05 7e 2d 00 00 	mov    0x2d7e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    125a:	48 85 c0             	test   %rax,%rax
    125d:	74 09                	je     1268 <deregister_tm_clones+0x28>
    125f:	ff e0                	jmpq   *%rax
    1261:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1268:	c3                   	retq   
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <register_tm_clones>:
    1270:	48 8d 3d d9 2d 00 00 	lea    0x2dd9(%rip),%rdi        # 4050 <__TMC_END__>
    1277:	48 8d 35 d2 2d 00 00 	lea    0x2dd2(%rip),%rsi        # 4050 <__TMC_END__>
    127e:	48 29 fe             	sub    %rdi,%rsi
    1281:	48 89 f0             	mov    %rsi,%rax
    1284:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1288:	48 c1 f8 03          	sar    $0x3,%rax
    128c:	48 01 c6             	add    %rax,%rsi
    128f:	48 d1 fe             	sar    %rsi
    1292:	74 14                	je     12a8 <register_tm_clones+0x38>
    1294:	48 8b 05 55 2d 00 00 	mov    0x2d55(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    129b:	48 85 c0             	test   %rax,%rax
    129e:	74 08                	je     12a8 <register_tm_clones+0x38>
    12a0:	ff e0                	jmpq   *%rax
    12a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    12a8:	c3                   	retq   
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012b0 <__do_global_dtors_aux>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	80 3d 95 2d 00 00 00 	cmpb   $0x0,0x2d95(%rip)        # 4050 <__TMC_END__>
    12bb:	75 33                	jne    12f0 <__do_global_dtors_aux+0x40>
    12bd:	55                   	push   %rbp
    12be:	48 83 3d 32 2d 00 00 	cmpq   $0x0,0x2d32(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12c5:	00 
    12c6:	48 89 e5             	mov    %rsp,%rbp
    12c9:	74 0d                	je     12d8 <__do_global_dtors_aux+0x28>
    12cb:	48 8b 3d 76 2d 00 00 	mov    0x2d76(%rip),%rdi        # 4048 <__dso_handle>
    12d2:	ff 15 20 2d 00 00    	callq  *0x2d20(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d8:	e8 63 ff ff ff       	callq  1240 <deregister_tm_clones>
    12dd:	c6 05 6c 2d 00 00 01 	movb   $0x1,0x2d6c(%rip)        # 4050 <__TMC_END__>
    12e4:	5d                   	pop    %rbp
    12e5:	c3                   	retq   
    12e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12ed:	00 00 00 
    12f0:	c3                   	retq   
    12f1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12f8:	00 00 00 00 
    12fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	e9 67 ff ff ff       	jmpq   1270 <register_tm_clones>
    1309:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001310 <parse_args>:
  if (argc != 2)
    1310:	83 ff 02             	cmp    $0x2,%edi
    1313:	75 10                	jne    1325 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    1315:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1319:	ba 0a 00 00 00       	mov    $0xa,%edx
    131e:	31 f6                	xor    %esi,%esi
    1320:	e9 2b fd ff ff       	jmpq   1050 <strtoll@plt>
{
    1325:	50                   	push   %rax
    exit(ARGS);
    1326:	bf 01 00 00 00       	mov    $0x1,%edi
    132b:	e8 30 fd ff ff       	callq  1060 <exit@plt>

0000000000001330 <dotprod>:
  for (unsigned long long i = 0; i < n; ++i)
    1330:	48 85 d2             	test   %rdx,%rdx
    1333:	74 2b                	je     1360 <dotprod+0x30>
    1335:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    1337:	66 0f ef c9          	pxor   %xmm1,%xmm1
    133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1340:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    1345:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    134a:	48 83 c0 01          	add    $0x1,%rax
    d += a[i] * b[i];
    134e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    1352:	48 39 c2             	cmp    %rax,%rdx
    1355:	75 e9                	jne    1340 <dotprod+0x10>
}
    1357:	66 0f 28 c1          	movapd %xmm1,%xmm0
    135b:	c3                   	retq   
    135c:	0f 1f 40 00          	nopl   0x0(%rax)
  double d = 0.0;
    1360:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    1364:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1368:	c3                   	retq   
    1369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001370 <dotprod_2x>:
  if (n & 1)
    1370:	48 89 d0             	mov    %rdx,%rax
    1373:	83 e0 01             	and    $0x1,%eax
    1376:	75 48                	jne    13c0 <dotprod_2x+0x50>
  double d[2] = {0.0};
    1378:	66 0f ef d2          	pxor   %xmm2,%xmm2
    137c:	66 0f 28 ca          	movapd %xmm2,%xmm1
      for (unsigned long long i = 0; i < n; i += 2)
    1380:	48 85 d2             	test   %rdx,%rdx
    1383:	0f 84 97 00 00 00    	je     1420 <dotprod_2x+0xb0>
    1389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  d[0] += a[i] * b[i];
    1390:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    1395:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    139a:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
	  d[1] += a[i + 1] * b[i + 1];
    139e:	f2 0f 10 44 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm0
    13a4:	f2 0f 59 44 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm0
      for (unsigned long long i = 0; i < n; i += 2)
    13aa:	48 83 c0 02          	add    $0x2,%rax
	  d[1] += a[i + 1] * b[i + 1];
    13ae:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
      for (unsigned long long i = 0; i < n; i += 2)
    13b2:	48 39 c2             	cmp    %rax,%rdx
    13b5:	77 d9                	ja     1390 <dotprod_2x+0x20>
      return d[0] + d[1];
    13b7:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    13bb:	66 0f 28 c1          	movapd %xmm1,%xmm0
}
    13bf:	c3                   	retq   
      for (unsigned long long i = 0; i < n_1; i += 2)
    13c0:	48 89 d1             	mov    %rdx,%rcx
    13c3:	48 83 e9 01          	sub    $0x1,%rcx
    13c7:	74 5f                	je     1428 <dotprod_2x+0xb8>
  double d[2] = {0.0};
    13c9:	66 0f ef d2          	pxor   %xmm2,%xmm2
      for (unsigned long long i = 0; i < n_1; i += 2)
    13cd:	31 c0                	xor    %eax,%eax
  double d[2] = {0.0};
    13cf:	66 0f 28 ca          	movapd %xmm2,%xmm1
    13d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
	  d[0] += a[i] * b[i];
    13d8:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    13dd:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    13e2:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
	  d[1] += a[i + 1] * b[i + 1];
    13e6:	f2 0f 10 44 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm0
    13ec:	f2 0f 59 44 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    13f2:	48 83 c0 02          	add    $0x2,%rax
	  d[1] += a[i + 1] * b[i + 1];
    13f6:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
      for (unsigned long long i = 0; i < n_1; i += 2)
    13fa:	48 39 c1             	cmp    %rax,%rcx
    13fd:	77 d9                	ja     13d8 <dotprod_2x+0x68>
      return d[0] + d[1] + a[n-1] * b[n-1];
    13ff:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1403:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1407:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    140d:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    1413:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1417:	c3                   	retq   
    1418:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    141f:	00 
      for (unsigned long long i = 0; i < n; i += 2)
    1420:	66 0f 28 c2          	movapd %xmm2,%xmm0
    1424:	c3                   	retq   
    1425:	0f 1f 00             	nopl   (%rax)
      for (unsigned long long i = 0; i < n_1; i += 2)
    1428:	66 0f ef c0          	pxor   %xmm0,%xmm0
    142c:	eb d9                	jmp    1407 <dotprod_2x+0x97>
    142e:	66 90                	xchg   %ax,%ax

0000000000001430 <dotprod_4x>:
  unsigned long long test = n % 4;
    1430:	49 89 d1             	mov    %rdx,%r9
{
    1433:	49 89 f0             	mov    %rsi,%r8
    1436:	48 89 d6             	mov    %rdx,%rsi
  unsigned long long test = n % 4;
    1439:	41 83 e1 03          	and    $0x3,%r9d
  for (unsigned long long i = 0; i < n; i += 4)
    143d:	48 85 d2             	test   %rdx,%rdx
    1440:	0f 84 b2 00 00 00    	je     14f8 <dotprod_4x+0xc8>
    1446:	48 8d 0c f5 f8 ff ff 	lea    -0x8(,%rsi,8),%rcx
    144d:	ff 
  double d[4] = {0.0};
    144e:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1452:	48 89 f8             	mov    %rdi,%rax
    1455:	4c 89 c2             	mov    %r8,%rdx
    1458:	66 0f 28 da          	movapd %xmm2,%xmm3
    145c:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1460:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1464:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    1468:	48 8d 4c 0f 20       	lea    0x20(%rdi,%rcx,1),%rcx
    146d:	0f 1f 00             	nopl   (%rax)
      d[0] += a[i] * b[i];
    1470:	f2 0f 10 00          	movsd  (%rax),%xmm0
    1474:	f2 0f 59 02          	mulsd  (%rdx),%xmm0
  for (unsigned long long i = 0; i < n; i += 4)
    1478:	48 83 c0 20          	add    $0x20,%rax
    147c:	48 83 c2 20          	add    $0x20,%rdx
      d[0] += a[i] * b[i];
    1480:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    1484:	f2 0f 10 40 e8       	movsd  -0x18(%rax),%xmm0
    1489:	f2 0f 59 42 e8       	mulsd  -0x18(%rdx),%xmm0
    148e:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
      d[2] += a[i + 2] * b[i + 2];
    1492:	f2 0f 10 40 f0       	movsd  -0x10(%rax),%xmm0
    1497:	f2 0f 59 42 f0       	mulsd  -0x10(%rdx),%xmm0
    149c:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
      d[3] += a[i + 3] * b[i + 3];
    14a0:	f2 0f 10 40 f8       	movsd  -0x8(%rax),%xmm0
    14a5:	f2 0f 59 42 f8       	mulsd  -0x8(%rdx),%xmm0
    14aa:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; i += 4)
    14ae:	48 39 c1             	cmp    %rax,%rcx
    14b1:	75 bd                	jne    1470 <dotprod_4x+0x40>
  if (! test)
    14b3:	4d 85 c9             	test   %r9,%r9
    14b6:	74 18                	je     14d0 <dotprod_4x+0xa0>
  return d[0] + d[1] + d[2] + d[3];
    14b8:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    14bc:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    14c0:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    14c4:	66 0f 28 c1          	movapd %xmm1,%xmm0
}
    14c8:	c3                   	retq   
    14c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    14d0:	48 89 f0             	mov    %rsi,%rax
    14d3:	48 83 c0 fd          	add    $0xfffffffffffffffd,%rax
    14d7:	73 df                	jae    14b8 <dotprod_4x+0x88>
	  d[0] += a[i] * b[i];
    14d9:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    14de:	f2 41 0f 59 04 c0    	mulsd  (%r8,%rax,8),%xmm0
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    14e4:	48 83 c0 01          	add    $0x1,%rax
	  d[0] += a[i] * b[i];
    14e8:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    14ec:	48 39 c6             	cmp    %rax,%rsi
    14ef:	75 e8                	jne    14d9 <dotprod_4x+0xa9>
    14f1:	eb c5                	jmp    14b8 <dotprod_4x+0x88>
    14f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  double d[4] = {0.0};
    14f8:	66 0f ef d2          	pxor   %xmm2,%xmm2
    14fc:	66 0f 28 da          	movapd %xmm2,%xmm3
    1500:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1504:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1508:	eb ae                	jmp    14b8 <dotprod_4x+0x88>
    150a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001510 <dotprod_8x>:
  unsigned long long test = n % 8;
    1510:	49 89 d1             	mov    %rdx,%r9
{
    1513:	49 89 f0             	mov    %rsi,%r8
    1516:	48 89 d1             	mov    %rdx,%rcx
  unsigned long long test = n % 8;
    1519:	41 83 e1 07          	and    $0x7,%r9d
  for (unsigned long long i = 0; i < n; i += 8)
    151d:	48 85 d2             	test   %rdx,%rdx
    1520:	0f 84 0a 01 00 00    	je     1630 <dotprod_8x+0x120>
    1526:	48 89 f2             	mov    %rsi,%rdx
    1529:	48 8d 34 cd f8 ff ff 	lea    -0x8(,%rcx,8),%rsi
    1530:	ff 
  double d[8] = {0.0};
    1531:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1535:	48 89 f8             	mov    %rdi,%rax
    1538:	66 0f 28 da          	movapd %xmm2,%xmm3
    153c:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1540:	66 0f 28 ea          	movapd %xmm2,%xmm5
    1544:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
    1548:	48 8d 74 37 40       	lea    0x40(%rdi,%rsi,1),%rsi
    154d:	66 0f 28 f2          	movapd %xmm2,%xmm6
    1551:	66 0f 28 fa          	movapd %xmm2,%xmm7
    1555:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
    155a:	66 0f 28 c2          	movapd %xmm2,%xmm0
    155e:	66 90                	xchg   %ax,%ax
      d[0] += a[i] * b[i];
    1560:	f2 0f 10 08          	movsd  (%rax),%xmm1
    1564:	f2 0f 59 0a          	mulsd  (%rdx),%xmm1
  for (unsigned long long i = 0; i < n; i += 8)
    1568:	48 83 c0 40          	add    $0x40,%rax
    156c:	48 83 c2 40          	add    $0x40,%rdx
      d[0] += a[i] * b[i];
    1570:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    1574:	f2 0f 10 48 c8       	movsd  -0x38(%rax),%xmm1
    1579:	f2 0f 59 4a c8       	mulsd  -0x38(%rdx),%xmm1
    157e:	f2 44 0f 58 c1       	addsd  %xmm1,%xmm8
      d[2] += a[i + 2] * b[i + 2];
    1583:	f2 0f 10 48 d0       	movsd  -0x30(%rax),%xmm1
    1588:	f2 0f 59 4a d0       	mulsd  -0x30(%rdx),%xmm1
    158d:	f2 0f 58 f9          	addsd  %xmm1,%xmm7
      d[3] += a[i + 3] * b[i + 3];
    1591:	f2 0f 10 48 d8       	movsd  -0x28(%rax),%xmm1
    1596:	f2 0f 59 4a d8       	mulsd  -0x28(%rdx),%xmm1
    159b:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
      d[4] += a[i + 4] * b[i + 4];
    159f:	f2 0f 10 48 e0       	movsd  -0x20(%rax),%xmm1
    15a4:	f2 0f 59 4a e0       	mulsd  -0x20(%rdx),%xmm1
    15a9:	f2 0f 58 e9          	addsd  %xmm1,%xmm5
      d[5] += a[i + 5] * b[i + 5];
    15ad:	f2 0f 10 48 e8       	movsd  -0x18(%rax),%xmm1
    15b2:	f2 0f 59 4a e8       	mulsd  -0x18(%rdx),%xmm1
    15b7:	f2 0f 58 e1          	addsd  %xmm1,%xmm4
      d[6] += a[i + 6] * b[i + 6];
    15bb:	f2 0f 10 48 f0       	movsd  -0x10(%rax),%xmm1
    15c0:	f2 0f 59 4a f0       	mulsd  -0x10(%rdx),%xmm1
    15c5:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
      d[7] += a[i + 7] * b[i + 7];
    15c9:	f2 0f 10 48 f8       	movsd  -0x8(%rax),%xmm1
    15ce:	f2 0f 59 4a f8       	mulsd  -0x8(%rdx),%xmm1
    15d3:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
  for (unsigned long long i = 0; i < n; i += 8)
    15d7:	48 39 c6             	cmp    %rax,%rsi
    15da:	75 84                	jne    1560 <dotprod_8x+0x50>
  if (! test)
    15dc:	4d 85 c9             	test   %r9,%r9
    15df:	74 1f                	je     1600 <dotprod_8x+0xf0>
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    15e1:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    15e6:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    15ea:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
    15ee:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    15f2:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    15f6:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    15fa:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
}
    15fe:	c3                   	retq   
    15ff:	90                   	nop
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1600:	48 89 c8             	mov    %rcx,%rax
    1603:	48 83 c0 f9          	add    $0xfffffffffffffff9,%rax
    1607:	73 d8                	jae    15e1 <dotprod_8x+0xd1>
    1609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  d[0] += a[i] * b[i];
    1610:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1615:	f2 41 0f 59 0c c0    	mulsd  (%r8,%rax,8),%xmm1
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    161b:	48 83 c0 01          	add    $0x1,%rax
	  d[0] += a[i] * b[i];
    161f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1623:	48 39 c1             	cmp    %rax,%rcx
    1626:	75 e8                	jne    1610 <dotprod_8x+0x100>
    1628:	eb b7                	jmp    15e1 <dotprod_8x+0xd1>
    162a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  double d[8] = {0.0};
    1630:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1634:	66 0f 28 da          	movapd %xmm2,%xmm3
    1638:	66 0f 28 e2          	movapd %xmm2,%xmm4
    163c:	66 0f 28 ea          	movapd %xmm2,%xmm5
    1640:	66 0f 28 f2          	movapd %xmm2,%xmm6
    1644:	66 0f 28 fa          	movapd %xmm2,%xmm7
    1648:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
    164d:	66 0f 28 c2          	movapd %xmm2,%xmm0
    1651:	eb 8e                	jmp    15e1 <dotprod_8x+0xd1>
    1653:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    165a:	00 00 00 00 
    165e:	66 90                	xchg   %ax,%ax

0000000000001660 <dotprod_16x>:
  unsigned long long test = n % 16;
    1660:	49 89 d1             	mov    %rdx,%r9
{
    1663:	48 89 d1             	mov    %rdx,%rcx
  unsigned long long test = n % 16;
    1666:	41 83 e1 0f          	and    $0xf,%r9d
  for (unsigned long long i = 0; i < n; i += 16)
    166a:	48 85 d2             	test   %rdx,%rdx
    166d:	0f 84 ed 01 00 00    	je     1860 <dotprod_16x+0x200>
    1673:	4c 8d 04 cd f8 ff ff 	lea    -0x8(,%rcx,8),%r8
    167a:	ff 
  double d[16] = {0.0};
    167b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    167f:	48 89 f8             	mov    %rdi,%rax
    1682:	48 89 f2             	mov    %rsi,%rdx
    1685:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1689:	66 0f 28 e1          	movapd %xmm1,%xmm4
    168d:	66 0f 28 e9          	movapd %xmm1,%xmm5
    1691:	49 83 e0 80          	and    $0xffffffffffffff80,%r8
    1695:	4e 8d 84 07 80 00 00 	lea    0x80(%rdi,%r8,1),%r8
    169c:	00 
    169d:	f2 0f 11 4c 24 f8    	movsd  %xmm1,-0x8(%rsp)
    16a3:	66 0f 28 f1          	movapd %xmm1,%xmm6
    16a7:	66 0f 28 f9          	movapd %xmm1,%xmm7
    16ab:	66 44 0f 28 c1       	movapd %xmm1,%xmm8
    16b0:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    16b5:	66 44 0f 28 d1       	movapd %xmm1,%xmm10
    16ba:	66 44 0f 28 d9       	movapd %xmm1,%xmm11
    16bf:	66 44 0f 28 e1       	movapd %xmm1,%xmm12
    16c4:	66 44 0f 28 e9       	movapd %xmm1,%xmm13
    16c9:	66 44 0f 28 f1       	movapd %xmm1,%xmm14
    16ce:	66 44 0f 28 f9       	movapd %xmm1,%xmm15
    16d3:	66 0f 28 c1          	movapd %xmm1,%xmm0
    16d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    16de:	00 00 
      d[0] += a[i] * b[i];
    16e0:	f2 0f 10 10          	movsd  (%rax),%xmm2
    16e4:	f2 0f 59 12          	mulsd  (%rdx),%xmm2
  for (unsigned long long i = 0; i < n; i += 16)
    16e8:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    16ec:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
      d[0] += a[i] * b[i];
    16f0:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    16f4:	f2 0f 10 50 88       	movsd  -0x78(%rax),%xmm2
    16f9:	f2 0f 59 52 88       	mulsd  -0x78(%rdx),%xmm2
    16fe:	f2 44 0f 58 fa       	addsd  %xmm2,%xmm15
      d[2] += a[i + 2] * b[i + 2];
    1703:	f2 0f 10 50 90       	movsd  -0x70(%rax),%xmm2
    1708:	f2 0f 59 52 90       	mulsd  -0x70(%rdx),%xmm2
    170d:	f2 44 0f 58 f2       	addsd  %xmm2,%xmm14
      d[3] += a[i + 3] * b[i + 3];
    1712:	f2 0f 10 50 98       	movsd  -0x68(%rax),%xmm2
    1717:	f2 0f 59 52 98       	mulsd  -0x68(%rdx),%xmm2
    171c:	f2 44 0f 58 ea       	addsd  %xmm2,%xmm13
      d[4] += a[i + 4] * b[i + 4];
    1721:	f2 0f 10 50 a0       	movsd  -0x60(%rax),%xmm2
    1726:	f2 0f 59 52 a0       	mulsd  -0x60(%rdx),%xmm2
    172b:	f2 44 0f 58 e2       	addsd  %xmm2,%xmm12
      d[5] += a[i + 5] * b[i + 5];
    1730:	f2 0f 10 50 a8       	movsd  -0x58(%rax),%xmm2
    1735:	f2 0f 59 52 a8       	mulsd  -0x58(%rdx),%xmm2
    173a:	f2 44 0f 58 da       	addsd  %xmm2,%xmm11
      d[6] += a[i + 6] * b[i + 6];
    173f:	f2 0f 10 50 b0       	movsd  -0x50(%rax),%xmm2
    1744:	f2 0f 59 52 b0       	mulsd  -0x50(%rdx),%xmm2
    1749:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
      d[7] += a[i + 7] * b[i + 7];
    174e:	f2 0f 10 50 b8       	movsd  -0x48(%rax),%xmm2
    1753:	f2 0f 59 52 b8       	mulsd  -0x48(%rdx),%xmm2
    1758:	f2 44 0f 58 ca       	addsd  %xmm2,%xmm9
      d[8] += a[i + 8] * b[i + 8];
    175d:	f2 0f 10 50 c0       	movsd  -0x40(%rax),%xmm2
    1762:	f2 0f 59 52 c0       	mulsd  -0x40(%rdx),%xmm2
    1767:	f2 44 0f 58 c2       	addsd  %xmm2,%xmm8
      d[9] += a[i + 9] * b[i + 9];
    176c:	f2 0f 10 50 c8       	movsd  -0x38(%rax),%xmm2
    1771:	f2 0f 59 52 c8       	mulsd  -0x38(%rdx),%xmm2
    1776:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
      d[10] += a[i + 10] * b[i + 10];
    177a:	f2 0f 10 50 d0       	movsd  -0x30(%rax),%xmm2
    177f:	f2 0f 59 52 d0       	mulsd  -0x30(%rdx),%xmm2
    1784:	f2 0f 58 f2          	addsd  %xmm2,%xmm6
      d[11] += a[i + 11] * b[i + 11];
    1788:	f2 0f 10 50 d8       	movsd  -0x28(%rax),%xmm2
    178d:	f2 0f 59 52 d8       	mulsd  -0x28(%rdx),%xmm2
    1792:	f2 0f 58 ea          	addsd  %xmm2,%xmm5
      d[12] += a[i + 12] * b[i + 12];
    1796:	f2 0f 10 50 e0       	movsd  -0x20(%rax),%xmm2
    179b:	f2 0f 59 52 e0       	mulsd  -0x20(%rdx),%xmm2
    17a0:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
      d[13] += a[i + 13] * b[i + 13];
    17a4:	f2 0f 10 50 e8       	movsd  -0x18(%rax),%xmm2
    17a9:	f2 0f 59 52 e8       	mulsd  -0x18(%rdx),%xmm2
    17ae:	f2 0f 58 da          	addsd  %xmm2,%xmm3
      d[14] += a[i + 14] * b[i + 14];
    17b2:	f2 0f 10 50 f0       	movsd  -0x10(%rax),%xmm2
    17b7:	f2 0f 59 52 f0       	mulsd  -0x10(%rdx),%xmm2
    17bc:	f2 0f 58 54 24 f8    	addsd  -0x8(%rsp),%xmm2
    17c2:	f2 0f 11 54 24 f8    	movsd  %xmm2,-0x8(%rsp)
      d[15] += a[i + 15] * b[i + 15];
    17c8:	f2 0f 10 50 f8       	movsd  -0x8(%rax),%xmm2
    17cd:	f2 0f 59 52 f8       	mulsd  -0x8(%rdx),%xmm2
    17d2:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
  for (unsigned long long i = 0; i < n; i += 16)
    17d6:	49 39 c0             	cmp    %rax,%r8
    17d9:	0f 85 01 ff ff ff    	jne    16e0 <dotprod_16x+0x80>
  if (! test)
    17df:	4d 85 c9             	test   %r9,%r9
    17e2:	74 4c                	je     1830 <dotprod_16x+0x1d0>
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    17e4:	f2 41 0f 58 c7       	addsd  %xmm15,%xmm0
    17e9:	f2 41 0f 58 c6       	addsd  %xmm14,%xmm0
    17ee:	f2 41 0f 58 c5       	addsd  %xmm13,%xmm0
    17f3:	f2 41 0f 58 c4       	addsd  %xmm12,%xmm0
    17f8:	f2 41 0f 58 c3       	addsd  %xmm11,%xmm0
    17fd:	f2 41 0f 58 c2       	addsd  %xmm10,%xmm0
    1802:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    1807:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    180c:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    1810:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
    1814:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    1818:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    181c:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1820:	f2 0f 58 44 24 f8    	addsd  -0x8(%rsp),%xmm0
    1826:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
}
    182a:	c3                   	retq   
    182b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1830:	48 89 c8             	mov    %rcx,%rax
    1833:	48 83 c0 f1          	add    $0xfffffffffffffff1,%rax
    1837:	73 ab                	jae    17e4 <dotprod_16x+0x184>
    1839:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  d[0] += a[i] * b[i];
    1840:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
    1845:	f2 0f 59 14 c6       	mulsd  (%rsi,%rax,8),%xmm2
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    184a:	48 83 c0 01          	add    $0x1,%rax
	  d[0] += a[i] * b[i];
    184e:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1852:	48 39 c1             	cmp    %rax,%rcx
    1855:	75 e9                	jne    1840 <dotprod_16x+0x1e0>
    1857:	eb 8b                	jmp    17e4 <dotprod_16x+0x184>
    1859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  double d[16] = {0.0};
    1860:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1864:	f2 0f 11 4c 24 f8    	movsd  %xmm1,-0x8(%rsp)
    186a:	66 0f 28 d9          	movapd %xmm1,%xmm3
    186e:	66 0f 28 e1          	movapd %xmm1,%xmm4
    1872:	66 0f 28 e9          	movapd %xmm1,%xmm5
    1876:	66 0f 28 f1          	movapd %xmm1,%xmm6
    187a:	66 0f 28 f9          	movapd %xmm1,%xmm7
    187e:	66 44 0f 28 c1       	movapd %xmm1,%xmm8
    1883:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    1888:	66 44 0f 28 d1       	movapd %xmm1,%xmm10
    188d:	66 44 0f 28 d9       	movapd %xmm1,%xmm11
    1892:	66 44 0f 28 e1       	movapd %xmm1,%xmm12
    1897:	66 44 0f 28 e9       	movapd %xmm1,%xmm13
    189c:	66 44 0f 28 f1       	movapd %xmm1,%xmm14
    18a1:	66 44 0f 28 f9       	movapd %xmm1,%xmm15
    18a6:	66 0f 28 c1          	movapd %xmm1,%xmm0
    18aa:	e9 35 ff ff ff       	jmpq   17e4 <dotprod_16x+0x184>
    18af:	90                   	nop

00000000000018b0 <__libc_csu_init>:
    18b0:	f3 0f 1e fa          	endbr64 
    18b4:	41 57                	push   %r15
    18b6:	4c 8d 3d 2b 25 00 00 	lea    0x252b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    18bd:	41 56                	push   %r14
    18bf:	49 89 d6             	mov    %rdx,%r14
    18c2:	41 55                	push   %r13
    18c4:	49 89 f5             	mov    %rsi,%r13
    18c7:	41 54                	push   %r12
    18c9:	41 89 fc             	mov    %edi,%r12d
    18cc:	55                   	push   %rbp
    18cd:	48 8d 2d 1c 25 00 00 	lea    0x251c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    18d4:	53                   	push   %rbx
    18d5:	4c 29 fd             	sub    %r15,%rbp
    18d8:	48 83 ec 08          	sub    $0x8,%rsp
    18dc:	e8 1f f7 ff ff       	callq  1000 <_init>
    18e1:	48 c1 fd 03          	sar    $0x3,%rbp
    18e5:	74 1f                	je     1906 <__libc_csu_init+0x56>
    18e7:	31 db                	xor    %ebx,%ebx
    18e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    18f0:	4c 89 f2             	mov    %r14,%rdx
    18f3:	4c 89 ee             	mov    %r13,%rsi
    18f6:	44 89 e7             	mov    %r12d,%edi
    18f9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    18fd:	48 83 c3 01          	add    $0x1,%rbx
    1901:	48 39 dd             	cmp    %rbx,%rbp
    1904:	75 ea                	jne    18f0 <__libc_csu_init+0x40>
    1906:	48 83 c4 08          	add    $0x8,%rsp
    190a:	5b                   	pop    %rbx
    190b:	5d                   	pop    %rbp
    190c:	41 5c                	pop    %r12
    190e:	41 5d                	pop    %r13
    1910:	41 5e                	pop    %r14
    1912:	41 5f                	pop    %r15
    1914:	c3                   	retq   
    1915:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    191c:	00 00 00 00 

0000000000001920 <__libc_csu_fini>:
    1920:	f3 0f 1e fa          	endbr64 
    1924:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001928 <_fini>:
    1928:	f3 0f 1e fa          	endbr64 
    192c:	48 83 ec 08          	sub    $0x8,%rsp
    1930:	48 83 c4 08          	add    $0x8,%rsp
    1934:	c3                   	retq   
