
opti_gcc:     format de fichier elf64-x86-64


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
    10bc:	0f 84 39 01 00 00    	je     11fb <main+0x17b>
    10c2:	49 83 fd 01          	cmp    $0x1,%r13
    10c6:	0f 84 35 01 00 00    	je     1201 <main+0x181>
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
    1136:	66 0f ef e4          	pxor   %xmm4,%xmm4
    113a:	48 d1 ea             	shr    %rdx
    113d:	48 c1 e2 04          	shl    $0x4,%rdx
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    d += a[i] * b[i];
    1148:	66 0f 28 44 05 00    	movapd 0x0(%rbp,%rax,1),%xmm0
    114e:	66 41 0f 59 04 04    	mulpd  (%r12,%rax,1),%xmm0
    1154:	48 83 c0 10          	add    $0x10,%rax
    1158:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
    115c:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1160:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
  for (unsigned long long i = 0; i < n; ++i)
    1164:	48 39 c2             	cmp    %rax,%rdx
    1167:	75 df                	jne    1148 <main+0xc8>
    1169:	4c 89 e8             	mov    %r13,%rax
    116c:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1170:	41 f6 c5 01          	test   $0x1,%r13b
    1174:	74 10                	je     1186 <main+0x106>
    d += a[i] * b[i];
    1176:	f2 0f 10 44 c5 00    	movsd  0x0(%rbp,%rax,8),%xmm0
    117c:	f2 41 0f 59 04 c4    	mulsd  (%r12,%rax,8),%xmm0
    1182:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
    1186:	4c 89 ea             	mov    %r13,%rdx
    1189:	48 89 ee             	mov    %rbp,%rsi
    118c:	4c 89 e7             	mov    %r12,%rdi
    118f:	e8 1c 02 00 00       	callq  13b0 <dotprod_2x>

  // Print result
  printf("res = %lf\n", res);
    1194:	48 8d 3d 69 0e 00 00 	lea    0xe69(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    119b:	b8 01 00 00 00       	mov    $0x1,%eax
  double res_2x = dotprod_2x(a, b, n);
    11a0:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  printf("res = %lf\n", res);
    11a6:	66 0f 28 c4          	movapd %xmm4,%xmm0
    11aa:	e8 91 fe ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    11af:	f2 0f 10 4c 24 08    	movsd  0x8(%rsp),%xmm1
    11b5:	b8 01 00 00 00       	mov    $0x1,%eax
    11ba:	48 8d 3d 4e 0e 00 00 	lea    0xe4e(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    11c1:	66 0f 28 c1          	movapd %xmm1,%xmm0
    11c5:	e8 76 fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    11ca:	4c 89 e7             	mov    %r12,%rdi
    11cd:	e8 5e fe ff ff       	callq  1030 <free@plt>
  free(b);
    11d2:	48 89 ef             	mov    %rbp,%rdi
    11d5:	e8 56 fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    11da:	48 83 c4 10          	add    $0x10,%rsp
    11de:	31 c0                	xor    %eax,%eax
    11e0:	5d                   	pop    %rbp
    11e1:	41 5c                	pop    %r12
    11e3:	41 5d                	pop    %r13
    11e5:	c3                   	retq   
    11e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11ed:	00 00 00 
      b[i] = 0.001;
    11f0:	66 0f ef e4          	pxor   %xmm4,%xmm4
    11f4:	31 c0                	xor    %eax,%eax
    11f6:	e9 7b ff ff ff       	jmpq   1176 <main+0xf6>
  double d = 0.0;
    11fb:	66 0f ef e4          	pxor   %xmm4,%xmm4
    11ff:	eb 85                	jmp    1186 <main+0x106>
  for (unsigned long long i = 0; i < n; i++)
    1201:	31 c0                	xor    %eax,%eax
    1203:	e9 08 ff ff ff       	jmpq   1110 <main+0x90>
    1208:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    120f:	00 

0000000000001210 <_start>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	31 ed                	xor    %ebp,%ebp
    1216:	49 89 d1             	mov    %rdx,%r9
    1219:	5e                   	pop    %rsi
    121a:	48 89 e2             	mov    %rsp,%rdx
    121d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1221:	50                   	push   %rax
    1222:	54                   	push   %rsp
    1223:	4c 8d 05 06 03 00 00 	lea    0x306(%rip),%r8        # 1530 <__libc_csu_fini>
    122a:	48 8d 0d 8f 02 00 00 	lea    0x28f(%rip),%rcx        # 14c0 <__libc_csu_init>
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
    1333:	74 63                	je     1398 <dotprod+0x68>
    1335:	48 83 fa 01          	cmp    $0x1,%rdx
    1339:	74 66                	je     13a1 <dotprod+0x71>
    133b:	48 89 d1             	mov    %rdx,%rcx
    133e:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    1340:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1344:	48 d1 e9             	shr    %rcx
    1347:	48 c1 e1 04          	shl    $0x4,%rcx
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1350:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
    1355:	66 0f 10 1c 06       	movupd (%rsi,%rax,1),%xmm3
    135a:	48 83 c0 10          	add    $0x10,%rax
    135e:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1362:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1366:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    136a:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    136e:	48 39 c1             	cmp    %rax,%rcx
    1371:	75 dd                	jne    1350 <dotprod+0x20>
    1373:	48 89 d0             	mov    %rdx,%rax
    1376:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    137a:	83 e2 01             	and    $0x1,%edx
    137d:	74 0e                	je     138d <dotprod+0x5d>
    d += a[i] * b[i];
    137f:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    1384:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    1389:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
}
    138d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1391:	c3                   	retq   
    1392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  double d = 0.0;
    1398:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    139c:	66 0f 28 c1          	movapd %xmm1,%xmm0
    13a0:	c3                   	retq   
  for (unsigned long long i = 0; i < n; ++i)
    13a1:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    13a3:	66 0f ef c9          	pxor   %xmm1,%xmm1
    13a7:	eb d6                	jmp    137f <dotprod+0x4f>
    13a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013b0 <dotprod_2x>:
{
    13b0:	48 89 d1             	mov    %rdx,%rcx
  for (unsigned long long i = 0; i < n; i += 2)
    13b3:	48 85 d2             	test   %rdx,%rdx
    13b6:	0f 84 ec 00 00 00    	je     14a8 <dotprod_2x+0xf8>
    13bc:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    13c0:	49 89 c0             	mov    %rax,%r8
    13c3:	49 d1 e8             	shr    %r8
    13c6:	49 83 c0 01          	add    $0x1,%r8
    13ca:	48 83 f8 01          	cmp    $0x1,%rax
    13ce:	0f 86 d9 00 00 00    	jbe    14ad <dotprod_2x+0xfd>
    13d4:	4c 89 c2             	mov    %r8,%rdx
  double d[2] = {0.0};
    13d7:	66 0f ef c9          	pxor   %xmm1,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    13db:	31 c0                	xor    %eax,%eax
    13dd:	48 d1 ea             	shr    %rdx
  double d[2] = {0.0};
    13e0:	66 0f 28 d9          	movapd %xmm1,%xmm3
    13e4:	48 c1 e2 05          	shl    $0x5,%rdx
    13e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    13ef:	00 
      d[0] += a[i] * b[i];
    13f0:	66 0f 10 14 07       	movupd (%rdi,%rax,1),%xmm2
    13f5:	66 0f 10 04 06       	movupd (%rsi,%rax,1),%xmm0
    13fa:	66 0f 16 54 07 10    	movhpd 0x10(%rdi,%rax,1),%xmm2
    1400:	66 0f 16 44 06 10    	movhpd 0x10(%rsi,%rax,1),%xmm0
    1406:	66 0f 59 d0          	mulpd  %xmm0,%xmm2
    140a:	66 0f 28 c2          	movapd %xmm2,%xmm0
    140e:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    1412:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1416:	66 0f 28 d8          	movapd %xmm0,%xmm3
    141a:	66 0f 10 44 07 10    	movupd 0x10(%rdi,%rax,1),%xmm0
    1420:	66 0f 12 44 07 08    	movlpd 0x8(%rdi,%rax,1),%xmm0
    1426:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    142a:	66 0f 10 54 06 10    	movupd 0x10(%rsi,%rax,1),%xmm2
    1430:	66 0f 12 54 06 08    	movlpd 0x8(%rsi,%rax,1),%xmm2
    1436:	48 83 c0 20          	add    $0x20,%rax
      d[1] += a[i + 1] * b[i + 1];
    143a:	66 0f 59 c2          	mulpd  %xmm2,%xmm0
    143e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1442:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1446:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    144a:	48 39 d0             	cmp    %rdx,%rax
    144d:	75 a1                	jne    13f0 <dotprod_2x+0x40>
    144f:	4c 89 c2             	mov    %r8,%rdx
    1452:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
    1456:	48 8d 04 12          	lea    (%rdx,%rdx,1),%rax
    145a:	4c 39 c2             	cmp    %r8,%rdx
    145d:	74 1e                	je     147d <dotprod_2x+0xcd>
      d[0] += a[i] * b[i];
    145f:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    1464:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    1469:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
      d[1] += a[i + 1] * b[i + 1];
    146d:	f2 0f 10 44 c6 08    	movsd  0x8(%rsi,%rax,8),%xmm0
    1473:	f2 0f 59 44 c7 08    	mulsd  0x8(%rdi,%rax,8),%xmm0
    1479:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    return d[0] + d[1] + a[n-1] * b[n-1];
    147d:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1481:	66 0f 28 c1          	movapd %xmm1,%xmm0
  if (n & 1)
    1485:	f6 c1 01             	test   $0x1,%cl
    1488:	75 06                	jne    1490 <dotprod_2x+0xe0>
}
    148a:	c3                   	retq   
    148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    return d[0] + d[1] + a[n-1] * b[n-1];
    1490:	f2 0f 10 4c cf f8    	movsd  -0x8(%rdi,%rcx,8),%xmm1
    1496:	f2 0f 59 4c ce f8    	mulsd  -0x8(%rsi,%rcx,8),%xmm1
    149c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    14a0:	c3                   	retq   
    14a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  for (unsigned long long i = 0; i < n; i += 2)
    14a8:	66 0f ef c0          	pxor   %xmm0,%xmm0
}
    14ac:	c3                   	retq   
  double d[2] = {0.0};
    14ad:	66 0f ef c9          	pxor   %xmm1,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    14b1:	31 c0                	xor    %eax,%eax
  double d[2] = {0.0};
    14b3:	66 0f 28 d9          	movapd %xmm1,%xmm3
    14b7:	eb a6                	jmp    145f <dotprod_2x+0xaf>
    14b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014c0 <__libc_csu_init>:
    14c0:	f3 0f 1e fa          	endbr64 
    14c4:	41 57                	push   %r15
    14c6:	4c 8d 3d 1b 29 00 00 	lea    0x291b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    14cd:	41 56                	push   %r14
    14cf:	49 89 d6             	mov    %rdx,%r14
    14d2:	41 55                	push   %r13
    14d4:	49 89 f5             	mov    %rsi,%r13
    14d7:	41 54                	push   %r12
    14d9:	41 89 fc             	mov    %edi,%r12d
    14dc:	55                   	push   %rbp
    14dd:	48 8d 2d 0c 29 00 00 	lea    0x290c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    14e4:	53                   	push   %rbx
    14e5:	4c 29 fd             	sub    %r15,%rbp
    14e8:	48 83 ec 08          	sub    $0x8,%rsp
    14ec:	e8 0f fb ff ff       	callq  1000 <_init>
    14f1:	48 c1 fd 03          	sar    $0x3,%rbp
    14f5:	74 1f                	je     1516 <__libc_csu_init+0x56>
    14f7:	31 db                	xor    %ebx,%ebx
    14f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1500:	4c 89 f2             	mov    %r14,%rdx
    1503:	4c 89 ee             	mov    %r13,%rsi
    1506:	44 89 e7             	mov    %r12d,%edi
    1509:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    150d:	48 83 c3 01          	add    $0x1,%rbx
    1511:	48 39 dd             	cmp    %rbx,%rbp
    1514:	75 ea                	jne    1500 <__libc_csu_init+0x40>
    1516:	48 83 c4 08          	add    $0x8,%rsp
    151a:	5b                   	pop    %rbx
    151b:	5d                   	pop    %rbp
    151c:	41 5c                	pop    %r12
    151e:	41 5d                	pop    %r13
    1520:	41 5e                	pop    %r14
    1522:	41 5f                	pop    %r15
    1524:	c3                   	retq   
    1525:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    152c:	00 00 00 00 

0000000000001530 <__libc_csu_fini>:
    1530:	f3 0f 1e fa          	endbr64 
    1534:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001538 <_fini>:
    1538:	f3 0f 1e fa          	endbr64 
    153c:	48 83 ec 08          	sub    $0x8,%rsp
    1540:	48 83 c4 08          	add    $0x8,%rsp
    1544:	c3                   	retq   
