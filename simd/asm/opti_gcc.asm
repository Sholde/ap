
opti_gcc:     format de fichier elf64-x86-64


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
    1089:	e8 02 03 00 00       	callq  1390 <parse_args>

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
    10bc:	0f 84 b9 01 00 00    	je     127b <main+0x1fb>
    10c2:	49 83 fd 01          	cmp    $0x1,%r13
    10c6:	0f 84 b8 01 00 00    	je     1284 <main+0x204>
    10cc:	4c 89 ea             	mov    %r13,%rdx
    10cf:	66 0f 28 0d 79 1f 00 	movapd 0x1f79(%rip),%xmm1        # 3050 <_IO_stdin_used+0x50>
    10d6:	00 
    10d7:	66 0f 28 05 81 1f 00 	movapd 0x1f81(%rip),%xmm0        # 3060 <_IO_stdin_used+0x60>
    10de:	00 
    10df:	31 c0                	xor    %eax,%eax
    10e1:	48 d1 ea             	shr    %rdx
    10e4:	48 c1 e2 04          	shl    $0x4,%rdx
    10e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    10ef:	00 
      a[i] = 0.1;
    10f0:	41 0f 29 0c 04       	movaps %xmm1,(%r12,%rax,1)
      b[i] = 1.0;
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
    1110:	48 8b 0d 59 1f 00 00 	mov    0x1f59(%rip),%rcx        # 3070 <_IO_stdin_used+0x70>
    1117:	49 89 0c c4          	mov    %rcx,(%r12,%rax,8)
      b[i] = 1.0;
    111b:	48 8b 0d 56 1f 00 00 	mov    0x1f56(%rip),%rcx        # 3078 <_IO_stdin_used+0x78>
    1122:	48 89 4c c5 00       	mov    %rcx,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1127:	49 83 fd 01          	cmp    $0x1,%r13
    112b:	0f 84 3f 01 00 00    	je     1270 <main+0x1f0>
    1131:	4c 89 ea             	mov    %r13,%rdx
    1134:	31 c0                	xor    %eax,%eax
    1136:	66 0f ef c9          	pxor   %xmm1,%xmm1
    113a:	48 d1 ea             	shr    %rdx
    113d:	48 c1 e2 04          	shl    $0x4,%rdx
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    d += a[i] * b[i];
    1148:	66 0f 28 44 05 00    	movapd 0x0(%rbp,%rax,1),%xmm0
    114e:	66 41 0f 59 04 04    	mulpd  (%r12,%rax,1),%xmm0
    1154:	48 83 c0 10          	add    $0x10,%rax
    1158:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    115c:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1160:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
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
    1182:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
    1186:	48 89 ee             	mov    %rbp,%rsi
    1189:	4c 89 e7             	mov    %r12,%rdi
    118c:	4c 89 ea             	mov    %r13,%rdx
    118f:	f2 0f 11 4c 24 28    	movsd  %xmm1,0x28(%rsp)
    1195:	e8 96 02 00 00       	callq  1430 <dotprod_2x>
  double res_4x = dotprod_4x(a, b, n);
    119a:	4c 89 ea             	mov    %r13,%rdx
  double res_2x = dotprod_2x(a, b, n);
    119d:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
  double res_4x = dotprod_4x(a, b, n);
    11a3:	e8 68 04 00 00       	callq  1610 <dotprod_4x>
  double res_8x = dotprod_8x(a, b, n);
    11a8:	4c 89 ea             	mov    %r13,%rdx
  double res_4x = dotprod_4x(a, b, n);
    11ab:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
  double res_8x = dotprod_8x(a, b, n);
    11b1:	e8 aa 06 00 00       	callq  1860 <dotprod_8x>
  double res_16x = dotprod_16x(a, b, n);
    11b6:	4c 89 ea             	mov    %r13,%rdx
  double res_8x = dotprod_8x(a, b, n);
    11b9:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    11bf:	e8 0c 0c 00 00       	callq  1dd0 <dotprod_16x>

  // Print result
  printf("res = %lf\n", res);
    11c4:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    11ca:	b8 01 00 00 00       	mov    $0x1,%eax
    11cf:	48 8d 3d 2e 1e 00 00 	lea    0x1e2e(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
  double res_16x = dotprod_16x(a, b, n);
    11d6:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  printf("res = %lf\n", res);
    11dc:	66 0f 28 c1          	movapd %xmm1,%xmm0
    11e0:	e8 5b fe ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    11e5:	f2 0f 10 6c 24 20    	movsd  0x20(%rsp),%xmm5
    11eb:	b8 01 00 00 00       	mov    $0x1,%eax
    11f0:	48 8d 3d 18 1e 00 00 	lea    0x1e18(%rip),%rdi        # 300f <_IO_stdin_used+0xf>
    11f7:	66 0f 28 c5          	movapd %xmm5,%xmm0
    11fb:	e8 40 fe ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1200:	f2 0f 10 64 24 18    	movsd  0x18(%rsp),%xmm4
    1206:	b8 01 00 00 00       	mov    $0x1,%eax
    120b:	48 8d 3d 0b 1e 00 00 	lea    0x1e0b(%rip),%rdi        # 301d <_IO_stdin_used+0x1d>
    1212:	66 0f 28 c4          	movapd %xmm4,%xmm0
    1216:	e8 25 fe ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    121b:	f2 0f 10 5c 24 10    	movsd  0x10(%rsp),%xmm3
    1221:	b8 01 00 00 00       	mov    $0x1,%eax
    1226:	48 8d 3d fe 1d 00 00 	lea    0x1dfe(%rip),%rdi        # 302b <_IO_stdin_used+0x2b>
    122d:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1231:	e8 0a fe ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    1236:	f2 0f 10 54 24 08    	movsd  0x8(%rsp),%xmm2
    123c:	b8 01 00 00 00       	mov    $0x1,%eax
    1241:	48 8d 3d f1 1d 00 00 	lea    0x1df1(%rip),%rdi        # 3039 <_IO_stdin_used+0x39>
    1248:	66 0f 28 c2          	movapd %xmm2,%xmm0
    124c:	e8 ef fd ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1251:	4c 89 e7             	mov    %r12,%rdi
    1254:	e8 d7 fd ff ff       	callq  1030 <free@plt>
  free(b);
    1259:	48 89 ef             	mov    %rbp,%rdi
    125c:	e8 cf fd ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    1261:	48 83 c4 30          	add    $0x30,%rsp
    1265:	31 c0                	xor    %eax,%eax
    1267:	5d                   	pop    %rbp
    1268:	41 5c                	pop    %r12
    126a:	41 5d                	pop    %r13
    126c:	c3                   	retq   
    126d:	0f 1f 00             	nopl   (%rax)
      b[i] = 1.0;
    1270:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1274:	31 c0                	xor    %eax,%eax
    1276:	e9 fb fe ff ff       	jmpq   1176 <main+0xf6>
  double d = 0.0;
    127b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    127f:	e9 02 ff ff ff       	jmpq   1186 <main+0x106>
  for (unsigned long long i = 0; i < n; i++)
    1284:	31 c0                	xor    %eax,%eax
    1286:	e9 85 fe ff ff       	jmpq   1110 <main+0x90>
    128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001290 <_start>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	31 ed                	xor    %ebp,%ebp
    1296:	49 89 d1             	mov    %rdx,%r9
    1299:	5e                   	pop    %rsi
    129a:	48 89 e2             	mov    %rsp,%rdx
    129d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    12a1:	50                   	push   %rax
    12a2:	54                   	push   %rsp
    12a3:	4c 8d 05 46 18 00 00 	lea    0x1846(%rip),%r8        # 2af0 <__libc_csu_fini>
    12aa:	48 8d 0d cf 17 00 00 	lea    0x17cf(%rip),%rcx        # 2a80 <__libc_csu_init>
    12b1:	48 8d 3d c8 fd ff ff 	lea    -0x238(%rip),%rdi        # 1080 <main>
    12b8:	ff 15 22 3d 00 00    	callq  *0x3d22(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    12be:	f4                   	hlt    
    12bf:	90                   	nop

00000000000012c0 <deregister_tm_clones>:
    12c0:	48 8d 3d 89 3d 00 00 	lea    0x3d89(%rip),%rdi        # 5050 <__TMC_END__>
    12c7:	48 8d 05 82 3d 00 00 	lea    0x3d82(%rip),%rax        # 5050 <__TMC_END__>
    12ce:	48 39 f8             	cmp    %rdi,%rax
    12d1:	74 15                	je     12e8 <deregister_tm_clones+0x28>
    12d3:	48 8b 05 fe 3c 00 00 	mov    0x3cfe(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    12da:	48 85 c0             	test   %rax,%rax
    12dd:	74 09                	je     12e8 <deregister_tm_clones+0x28>
    12df:	ff e0                	jmpq   *%rax
    12e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12e8:	c3                   	retq   
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012f0 <register_tm_clones>:
    12f0:	48 8d 3d 59 3d 00 00 	lea    0x3d59(%rip),%rdi        # 5050 <__TMC_END__>
    12f7:	48 8d 35 52 3d 00 00 	lea    0x3d52(%rip),%rsi        # 5050 <__TMC_END__>
    12fe:	48 29 fe             	sub    %rdi,%rsi
    1301:	48 89 f0             	mov    %rsi,%rax
    1304:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1308:	48 c1 f8 03          	sar    $0x3,%rax
    130c:	48 01 c6             	add    %rax,%rsi
    130f:	48 d1 fe             	sar    %rsi
    1312:	74 14                	je     1328 <register_tm_clones+0x38>
    1314:	48 8b 05 d5 3c 00 00 	mov    0x3cd5(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    131b:	48 85 c0             	test   %rax,%rax
    131e:	74 08                	je     1328 <register_tm_clones+0x38>
    1320:	ff e0                	jmpq   *%rax
    1322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1328:	c3                   	retq   
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001330 <__do_global_dtors_aux>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	80 3d 15 3d 00 00 00 	cmpb   $0x0,0x3d15(%rip)        # 5050 <__TMC_END__>
    133b:	75 33                	jne    1370 <__do_global_dtors_aux+0x40>
    133d:	55                   	push   %rbp
    133e:	48 83 3d b2 3c 00 00 	cmpq   $0x0,0x3cb2(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1345:	00 
    1346:	48 89 e5             	mov    %rsp,%rbp
    1349:	74 0d                	je     1358 <__do_global_dtors_aux+0x28>
    134b:	48 8b 3d f6 3c 00 00 	mov    0x3cf6(%rip),%rdi        # 5048 <__dso_handle>
    1352:	ff 15 a0 3c 00 00    	callq  *0x3ca0(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    1358:	e8 63 ff ff ff       	callq  12c0 <deregister_tm_clones>
    135d:	c6 05 ec 3c 00 00 01 	movb   $0x1,0x3cec(%rip)        # 5050 <__TMC_END__>
    1364:	5d                   	pop    %rbp
    1365:	c3                   	retq   
    1366:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    136d:	00 00 00 
    1370:	c3                   	retq   
    1371:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1378:	00 00 00 00 
    137c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001380 <frame_dummy>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	e9 67 ff ff ff       	jmpq   12f0 <register_tm_clones>
    1389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001390 <parse_args>:
  if (argc != 2)
    1390:	83 ff 02             	cmp    $0x2,%edi
    1393:	75 10                	jne    13a5 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    1395:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1399:	ba 0a 00 00 00       	mov    $0xa,%edx
    139e:	31 f6                	xor    %esi,%esi
    13a0:	e9 ab fc ff ff       	jmpq   1050 <strtoll@plt>
{
    13a5:	50                   	push   %rax
    exit(ARGS);
    13a6:	bf 01 00 00 00       	mov    $0x1,%edi
    13ab:	e8 b0 fc ff ff       	callq  1060 <exit@plt>

00000000000013b0 <dotprod>:
  for (unsigned long long i = 0; i < n; ++i)
    13b0:	48 85 d2             	test   %rdx,%rdx
    13b3:	74 63                	je     1418 <dotprod+0x68>
    13b5:	48 83 fa 01          	cmp    $0x1,%rdx
    13b9:	74 66                	je     1421 <dotprod+0x71>
    13bb:	48 89 d1             	mov    %rdx,%rcx
    13be:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    13c0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    13c4:	48 d1 e9             	shr    %rcx
    13c7:	48 c1 e1 04          	shl    $0x4,%rcx
    13cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    13d0:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
    13d5:	66 0f 10 1c 06       	movupd (%rsi,%rax,1),%xmm3
    13da:	48 83 c0 10          	add    $0x10,%rax
    13de:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    13e2:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    13e6:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    13ea:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    13ee:	48 39 c1             	cmp    %rax,%rcx
    13f1:	75 dd                	jne    13d0 <dotprod+0x20>
    13f3:	48 89 d0             	mov    %rdx,%rax
    13f6:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    13fa:	83 e2 01             	and    $0x1,%edx
    13fd:	74 0e                	je     140d <dotprod+0x5d>
    d += a[i] * b[i];
    13ff:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    1404:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    1409:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
}
    140d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1411:	c3                   	retq   
    1412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  double d = 0.0;
    1418:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    141c:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1420:	c3                   	retq   
  for (unsigned long long i = 0; i < n; ++i)
    1421:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    1423:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1427:	eb d6                	jmp    13ff <dotprod+0x4f>
    1429:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001430 <dotprod_2x>:
  if (n & 1)
    1430:	48 89 d0             	mov    %rdx,%rax
    1433:	83 e0 01             	and    $0x1,%eax
    1436:	0f 85 c4 00 00 00    	jne    1500 <dotprod_2x+0xd0>
      for (unsigned long long i = 0; i < n; i += 2)
    143c:	48 85 d2             	test   %rdx,%rdx
    143f:	0f 84 9b 01 00 00    	je     15e0 <dotprod_2x+0x1b0>
    1445:	48 83 ea 01          	sub    $0x1,%rdx
    1449:	48 89 d1             	mov    %rdx,%rcx
    144c:	48 d1 e9             	shr    %rcx
    144f:	48 83 c1 01          	add    $0x1,%rcx
    1453:	48 83 fa 01          	cmp    $0x1,%rdx
    1457:	0f 86 91 01 00 00    	jbe    15ee <dotprod_2x+0x1be>
    145d:	48 89 ca             	mov    %rcx,%rdx
  double d[2] = {0.0};
    1460:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1464:	48 d1 ea             	shr    %rdx
    1467:	66 0f 28 d1          	movapd %xmm1,%xmm2
    146b:	48 c1 e2 05          	shl    $0x5,%rdx
    146f:	90                   	nop
	  d[0] += a[i] * b[i];
    1470:	66 0f 10 1c 07       	movupd (%rdi,%rax,1),%xmm3
    1475:	66 0f 10 04 06       	movupd (%rsi,%rax,1),%xmm0
    147a:	66 0f 16 5c 07 10    	movhpd 0x10(%rdi,%rax,1),%xmm3
    1480:	66 0f 16 44 06 10    	movhpd 0x10(%rsi,%rax,1),%xmm0
    1486:	66 0f 59 d8          	mulpd  %xmm0,%xmm3
    148a:	66 0f 10 44 07 10    	movupd 0x10(%rdi,%rax,1),%xmm0
    1490:	66 0f 12 44 07 08    	movlpd 0x8(%rdi,%rax,1),%xmm0
    1496:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
    149a:	66 0f 15 db          	unpckhpd %xmm3,%xmm3
    149e:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
    14a2:	66 0f 10 5c 06 10    	movupd 0x10(%rsi,%rax,1),%xmm3
    14a8:	66 0f 12 5c 06 08    	movlpd 0x8(%rsi,%rax,1),%xmm3
    14ae:	48 83 c0 20          	add    $0x20,%rax
	  d[1] += a[i + 1] * b[i + 1];
    14b2:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    14b6:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    14ba:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    14be:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      for (unsigned long long i = 0; i < n; i += 2)
    14c2:	48 39 d0             	cmp    %rdx,%rax
    14c5:	75 a9                	jne    1470 <dotprod_2x+0x40>
    14c7:	48 89 ca             	mov    %rcx,%rdx
    14ca:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
    14ce:	48 8d 04 12          	lea    (%rdx,%rdx,1),%rax
    14d2:	48 39 d1             	cmp    %rdx,%rcx
    14d5:	74 1e                	je     14f5 <dotprod_2x+0xc5>
	  d[0] += a[i] * b[i];
    14d7:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    14dc:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    14e1:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
	  d[1] += a[i + 1] * b[i + 1];
    14e5:	f2 0f 10 44 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm0
    14eb:	f2 0f 59 44 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm0
    14f1:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      return d[0] + d[1];
    14f5:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    14f9:	66 0f 28 c2          	movapd %xmm2,%xmm0
}
    14fd:	c3                   	retq   
    14fe:	66 90                	xchg   %ax,%ax
      for (unsigned long long i = 0; i < n_1; i += 2)
    1500:	48 83 fa 01          	cmp    $0x1,%rdx
    1504:	0f 84 de 00 00 00    	je     15e8 <dotprod_2x+0x1b8>
    150a:	48 8d 42 fe          	lea    -0x2(%rdx),%rax
    150e:	49 89 c0             	mov    %rax,%r8
    1511:	49 d1 e8             	shr    %r8
    1514:	49 83 c0 01          	add    $0x1,%r8
    1518:	48 83 f8 01          	cmp    $0x1,%rax
    151c:	0f 86 d9 00 00 00    	jbe    15fb <dotprod_2x+0x1cb>
    1522:	4c 89 c1             	mov    %r8,%rcx
  double d[2] = {0.0};
    1525:	66 0f ef db          	pxor   %xmm3,%xmm3
      for (unsigned long long i = 0; i < n_1; i += 2)
    1529:	31 c0                	xor    %eax,%eax
    152b:	48 d1 e9             	shr    %rcx
  double d[2] = {0.0};
    152e:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1532:	48 c1 e1 05          	shl    $0x5,%rcx
    1536:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    153d:	00 00 00 
	  d[0] += a[i] * b[i];
    1540:	66 0f 10 24 06       	movupd (%rsi,%rax,1),%xmm4
    1545:	66 0f 10 0c 07       	movupd (%rdi,%rax,1),%xmm1
    154a:	66 0f 10 54 07 10    	movupd 0x10(%rdi,%rax,1),%xmm2
    1550:	66 0f 12 54 07 08    	movlpd 0x8(%rdi,%rax,1),%xmm2
    1556:	66 0f 16 4c 07 10    	movhpd 0x10(%rdi,%rax,1),%xmm1
    155c:	66 0f 16 64 06 10    	movhpd 0x10(%rsi,%rax,1),%xmm4
    1562:	66 0f 59 e1          	mulpd  %xmm1,%xmm4
    1566:	66 0f 10 4c 06 10    	movupd 0x10(%rsi,%rax,1),%xmm1
    156c:	66 0f 12 4c 06 08    	movlpd 0x8(%rsi,%rax,1),%xmm1
    1572:	48 83 c0 20          	add    $0x20,%rax
	  d[1] += a[i + 1] * b[i + 1];
    1576:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
	  d[0] += a[i] * b[i];
    157a:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    157e:	66 0f 15 e4          	unpckhpd %xmm4,%xmm4
	  d[1] += a[i + 1] * b[i + 1];
    1582:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1586:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
	  d[0] += a[i] * b[i];
    158a:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
	  d[1] += a[i + 1] * b[i + 1];
    158e:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
      for (unsigned long long i = 0; i < n_1; i += 2)
    1592:	48 39 c1             	cmp    %rax,%rcx
    1595:	75 a9                	jne    1540 <dotprod_2x+0x110>
    1597:	4c 89 c1             	mov    %r8,%rcx
    159a:	48 83 e1 fe          	and    $0xfffffffffffffffe,%rcx
    159e:	48 8d 04 09          	lea    (%rcx,%rcx,1),%rax
    15a2:	4c 39 c1             	cmp    %r8,%rcx
    15a5:	74 1e                	je     15c5 <dotprod_2x+0x195>
	  d[0] += a[i] * b[i];
    15a7:	f2 0f 10 0c c6       	movsd  (%rsi,%rax,8),%xmm1
    15ac:	f2 0f 59 0c c7       	mulsd  (%rdi,%rax,8),%xmm1
    15b1:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
	  d[1] += a[i + 1] * b[i + 1];
    15b5:	f2 0f 10 4c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm1
    15bb:	f2 0f 59 4c c7 08    	mulsd  0x8(%rdi,%rax,8),%xmm1
    15c1:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
      return d[0] + d[1] + a[n-1] * b[n-1];
    15c5:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
    15c9:	66 0f 28 cb          	movapd %xmm3,%xmm1
    15cd:	f2 0f 10 44 d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm0
    15d3:	f2 0f 59 44 d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm0
    15d9:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    15dd:	c3                   	retq   
    15de:	66 90                	xchg   %ax,%ax
      for (unsigned long long i = 0; i < n; i += 2)
    15e0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    15e4:	c3                   	retq   
    15e5:	0f 1f 00             	nopl   (%rax)
      for (unsigned long long i = 0; i < n_1; i += 2)
    15e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    15ec:	eb df                	jmp    15cd <dotprod_2x+0x19d>
  double d[2] = {0.0};
    15ee:	66 0f ef c9          	pxor   %xmm1,%xmm1
    15f2:	66 0f 28 d1          	movapd %xmm1,%xmm2
    15f6:	e9 dc fe ff ff       	jmpq   14d7 <dotprod_2x+0xa7>
    15fb:	66 0f ef db          	pxor   %xmm3,%xmm3
      for (unsigned long long i = 0; i < n_1; i += 2)
    15ff:	31 c0                	xor    %eax,%eax
  double d[2] = {0.0};
    1601:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1605:	eb a0                	jmp    15a7 <dotprod_2x+0x177>
    1607:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    160e:	00 00 

0000000000001610 <dotprod_4x>:
  unsigned long long test = n % 4;
    1610:	49 89 d1             	mov    %rdx,%r9
{
    1613:	48 89 d1             	mov    %rdx,%rcx
  unsigned long long test = n % 4;
    1616:	41 83 e1 03          	and    $0x3,%r9d
  for (unsigned long long i = 0; i < n; i += 4)
    161a:	48 85 d2             	test   %rdx,%rdx
    161d:	0f 84 fd 01 00 00    	je     1820 <dotprod_4x+0x210>
    1623:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    1627:	49 89 c2             	mov    %rax,%r10
    162a:	49 c1 ea 02          	shr    $0x2,%r10
    162e:	49 83 c2 01          	add    $0x1,%r10
    1632:	48 83 f8 03          	cmp    $0x3,%rax
    1636:	0f 86 fd 01 00 00    	jbe    1839 <dotprod_4x+0x229>
    163c:	4d 89 d0             	mov    %r10,%r8
  double d[4] = {0.0};
    163f:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    1644:	48 89 f8             	mov    %rdi,%rax
    1647:	48 89 f2             	mov    %rsi,%rdx
    164a:	49 d1 e8             	shr    %r8
    164d:	66 45 0f 28 d1       	movapd %xmm9,%xmm10
    1652:	66 41 0f 28 f1       	movapd %xmm9,%xmm6
    1657:	49 c1 e0 06          	shl    $0x6,%r8
    165b:	66 45 0f 28 c1       	movapd %xmm9,%xmm8
    1660:	49 01 f8             	add    %rdi,%r8
    1663:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      d[0] += a[i] * b[i];
    1668:	66 0f 10 18          	movupd (%rax),%xmm3
    166c:	66 0f 10 12          	movupd (%rdx),%xmm2
    1670:	48 83 c0 40          	add    $0x40,%rax
    1674:	48 83 c2 40          	add    $0x40,%rdx
    1678:	66 44 0f 10 68 e0    	movupd -0x20(%rax),%xmm13
    167e:	66 44 0f 10 62 e0    	movupd -0x20(%rdx),%xmm12
    1684:	66 0f 16 58 d0       	movhpd -0x30(%rax),%xmm3
    1689:	66 0f 16 52 d0       	movhpd -0x30(%rdx),%xmm2
    168e:	66 0f 10 48 d0       	movupd -0x30(%rax),%xmm1
    1693:	66 0f 10 62 d0       	movupd -0x30(%rdx),%xmm4
    1698:	66 44 0f 16 68 f0    	movhpd -0x10(%rax),%xmm13
    169e:	66 44 0f 16 62 f0    	movhpd -0x10(%rdx),%xmm12
    16a4:	66 0f 28 eb          	movapd %xmm3,%xmm5
    16a8:	66 0f 12 48 c8       	movlpd -0x38(%rax),%xmm1
    16ad:	66 0f 28 c2          	movapd %xmm2,%xmm0
    16b1:	66 41 0f 14 ed       	unpcklpd %xmm13,%xmm5
    16b6:	66 0f 12 62 c8       	movlpd -0x38(%rdx),%xmm4
    16bb:	66 44 0f 10 58 f0    	movupd -0x10(%rax),%xmm11
    16c1:	66 41 0f 14 c4       	unpcklpd %xmm12,%xmm0
    16c6:	66 44 0f 12 58 e8    	movlpd -0x18(%rax),%xmm11
    16cc:	66 0f 10 7a f0       	movupd -0x10(%rdx),%xmm7
    16d1:	66 41 0f 15 dd       	unpckhpd %xmm13,%xmm3
    16d6:	66 0f 59 e8          	mulpd  %xmm0,%xmm5
    16da:	66 0f 12 7a e8       	movlpd -0x18(%rdx),%xmm7
    16df:	66 0f 28 c4          	movapd %xmm4,%xmm0
    16e3:	66 41 0f 15 d4       	unpckhpd %xmm12,%xmm2
      d[2] += a[i + 2] * b[i + 2];
    16e8:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
      d[0] += a[i] * b[i];
    16ec:	66 0f 14 c7          	unpcklpd %xmm7,%xmm0
    16f0:	66 0f 15 e7          	unpckhpd %xmm7,%xmm4
    16f4:	f2 44 0f 58 c5       	addsd  %xmm5,%xmm8
    16f9:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
      d[2] += a[i + 2] * b[i + 2];
    16fd:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
    1702:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
      d[0] += a[i] * b[i];
    1706:	f2 44 0f 58 c5       	addsd  %xmm5,%xmm8
    170b:	66 0f 28 e9          	movapd %xmm1,%xmm5
    170f:	66 41 0f 15 cb       	unpckhpd %xmm11,%xmm1
    1714:	66 41 0f 14 eb       	unpcklpd %xmm11,%xmm5
      d[2] += a[i + 2] * b[i + 2];
    1719:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
      d[1] += a[i + 1] * b[i + 1];
    171e:	66 0f 59 e8          	mulpd  %xmm0,%xmm5
      d[0] += a[i] * b[i];
    1722:	66 0f 28 c4          	movapd %xmm4,%xmm0
      d[3] += a[i + 3] * b[i + 3];
    1726:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    172a:	f2 0f 58 f5          	addsd  %xmm5,%xmm6
    172e:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
      d[3] += a[i + 3] * b[i + 3];
    1732:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
    1737:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    173b:	f2 0f 58 f5          	addsd  %xmm5,%xmm6
      d[3] += a[i + 3] * b[i + 3];
    173f:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
  for (unsigned long long i = 0; i < n; i += 4)
    1744:	49 39 c0             	cmp    %rax,%r8
    1747:	0f 85 1b ff ff ff    	jne    1668 <dotprod_4x+0x58>
    174d:	4c 89 d0             	mov    %r10,%rax
    1750:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1754:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    175b:	00 
    175c:	4c 39 d0             	cmp    %r10,%rax
    175f:	0f 84 ab 00 00 00    	je     1810 <dotprod_4x+0x200>
      d[0] += a[i] * b[i];
    1765:	f2 0f 10 04 d6       	movsd  (%rsi,%rdx,8),%xmm0
    176a:	f2 0f 59 04 d7       	mulsd  (%rdi,%rdx,8),%xmm0
    176f:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    1776:	00 
    1777:	f2 44 0f 58 c0       	addsd  %xmm0,%xmm8
      d[1] += a[i + 1] * b[i + 1];
    177c:	f2 0f 10 44 06 08    	movsd  0x8(%rsi,%rax,1),%xmm0
    1782:	f2 0f 59 44 07 08    	mulsd  0x8(%rdi,%rax,1),%xmm0
    1788:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
      d[2] += a[i + 2] * b[i + 2];
    178c:	f2 0f 10 44 06 10    	movsd  0x10(%rsi,%rax,1),%xmm0
    1792:	f2 0f 59 44 07 10    	mulsd  0x10(%rdi,%rax,1),%xmm0
    1798:	f2 44 0f 58 d0       	addsd  %xmm0,%xmm10
      d[3] += a[i + 3] * b[i + 3];
    179d:	f2 0f 10 44 06 18    	movsd  0x18(%rsi,%rax,1),%xmm0
    17a3:	f2 0f 59 44 07 18    	mulsd  0x18(%rdi,%rax,1),%xmm0
    17a9:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
  if (! test)
    17ae:	4d 85 c9             	test   %r9,%r9
    17b1:	74 1d                	je     17d0 <dotprod_4x+0x1c0>
  return d[0] + d[1] + d[2] + d[3];
    17b3:	66 41 0f 28 e8       	movapd %xmm8,%xmm5
    17b8:	f2 0f 58 ee          	addsd  %xmm6,%xmm5
    17bc:	66 0f 28 d5          	movapd %xmm5,%xmm2
    17c0:	f2 41 0f 58 d2       	addsd  %xmm10,%xmm2
    17c5:	f2 41 0f 58 d1       	addsd  %xmm9,%xmm2
    17ca:	66 0f 28 c2          	movapd %xmm2,%xmm0
}
    17ce:	c3                   	retq   
    17cf:	90                   	nop
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    17d0:	48 89 c8             	mov    %rcx,%rax
    17d3:	48 83 c0 fd          	add    $0xfffffffffffffffd,%rax
    17d7:	73 da                	jae    17b3 <dotprod_4x+0x1a3>
	  d[0] += a[i] * b[i];
    17d9:	66 0f 10 0c c6       	movupd (%rsi,%rax,8),%xmm1
    17de:	66 0f 10 3c c7       	movupd (%rdi,%rax,8),%xmm7
    17e3:	f2 0f 10 54 c6 10    	movsd  0x10(%rsi,%rax,8),%xmm2
    17e9:	f2 0f 59 54 c7 10    	mulsd  0x10(%rdi,%rax,8),%xmm2
    17ef:	66 0f 59 cf          	mulpd  %xmm7,%xmm1
    17f3:	f2 44 0f 58 c1       	addsd  %xmm1,%xmm8
    17f8:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    17fc:	f2 41 0f 58 c8       	addsd  %xmm8,%xmm1
    1801:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1805:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    180a:	eb a7                	jmp    17b3 <dotprod_4x+0x1a3>
    180c:	0f 1f 40 00          	nopl   0x0(%rax)
  if (! test)
    1810:	4d 85 c9             	test   %r9,%r9
    1813:	75 9e                	jne    17b3 <dotprod_4x+0x1a3>
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1815:	48 8d 41 fd          	lea    -0x3(%rcx),%rax
    1819:	eb be                	jmp    17d9 <dotprod_4x+0x1c9>
    181b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  double d[4] = {0.0};
    1820:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
    1825:	66 45 0f 28 d1       	movapd %xmm9,%xmm10
    182a:	66 41 0f 28 f1       	movapd %xmm9,%xmm6
    182f:	66 45 0f 28 c1       	movapd %xmm9,%xmm8
    1834:	e9 7a ff ff ff       	jmpq   17b3 <dotprod_4x+0x1a3>
    1839:	66 45 0f ef c9       	pxor   %xmm9,%xmm9
  for (unsigned long long i = 0; i < n; i += 4)
    183e:	31 d2                	xor    %edx,%edx
  double d[4] = {0.0};
    1840:	66 45 0f 28 d1       	movapd %xmm9,%xmm10
    1845:	66 41 0f 28 f1       	movapd %xmm9,%xmm6
    184a:	66 45 0f 28 c1       	movapd %xmm9,%xmm8
    184f:	e9 11 ff ff ff       	jmpq   1765 <dotprod_4x+0x155>
    1854:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    185b:	00 00 00 00 
    185f:	90                   	nop

0000000000001860 <dotprod_8x>:
  unsigned long long test = n % 8;
    1860:	49 89 d1             	mov    %rdx,%r9
{
    1863:	48 89 d1             	mov    %rdx,%rcx
  unsigned long long test = n % 8;
    1866:	41 83 e1 07          	and    $0x7,%r9d
  for (unsigned long long i = 0; i < n; i += 8)
    186a:	48 85 d2             	test   %rdx,%rdx
    186d:	0f 84 e5 04 00 00    	je     1d58 <dotprod_8x+0x4f8>
    1873:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    1877:	49 89 c2             	mov    %rax,%r10
    187a:	49 c1 ea 03          	shr    $0x3,%r10
    187e:	49 83 c2 01          	add    $0x1,%r10
    1882:	48 83 f8 07          	cmp    $0x7,%rax
    1886:	0f 86 05 05 00 00    	jbe    1d91 <dotprod_8x+0x531>
    188c:	4d 89 d0             	mov    %r10,%r8
  double d[8] = {0.0};
    188f:	66 45 0f ef ed       	pxor   %xmm13,%xmm13
    1894:	48 89 f0             	mov    %rsi,%rax
    1897:	48 89 fa             	mov    %rdi,%rdx
    189a:	49 d1 e8             	shr    %r8
    189d:	f2 44 0f 11 6c 24 e8 	movsd  %xmm13,-0x18(%rsp)
    18a4:	66 45 0f 28 fd       	movapd %xmm13,%xmm15
    18a9:	49 c1 e0 07          	shl    $0x7,%r8
    18ad:	f2 44 0f 11 6c 24 b0 	movsd  %xmm13,-0x50(%rsp)
    18b4:	49 01 f0             	add    %rsi,%r8
    18b7:	f2 44 0f 11 6c 24 a8 	movsd  %xmm13,-0x58(%rsp)
    18be:	f2 44 0f 11 6c 24 a0 	movsd  %xmm13,-0x60(%rsp)
    18c5:	f2 44 0f 11 6c 24 98 	movsd  %xmm13,-0x68(%rsp)
    18cc:	f2 44 0f 11 6c 24 90 	movsd  %xmm13,-0x70(%rsp)
    18d3:	f2 44 0f 11 6c 24 f0 	movsd  %xmm13,-0x10(%rsp)
    18da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      d[0] += a[i] * b[i];
    18e0:	66 0f 10 0a          	movupd (%rdx),%xmm1
    18e4:	66 0f 10 7a 20       	movupd 0x20(%rdx),%xmm7
    18e9:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    18ed:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
    18f1:	66 0f 10 6a c0       	movupd -0x40(%rdx),%xmm5
    18f6:	66 0f 10 5a e0       	movupd -0x20(%rdx),%xmm3
    18fb:	66 0f 16 4a 90       	movhpd -0x70(%rdx),%xmm1
    1900:	66 0f 16 7a b0       	movhpd -0x50(%rdx),%xmm7
    1905:	66 0f 10 72 d0       	movupd -0x30(%rdx),%xmm6
    190a:	66 0f 12 72 c8       	movlpd -0x38(%rdx),%xmm6
    190f:	66 0f 16 5a f0       	movhpd -0x10(%rdx),%xmm3
    1914:	66 0f 16 6a d0       	movhpd -0x30(%rdx),%xmm5
    1919:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    191e:	66 0f 10 42 90       	movupd -0x70(%rdx),%xmm0
    1923:	66 44 0f 14 cf       	unpcklpd %xmm7,%xmm9
    1928:	66 0f 12 42 88       	movlpd -0x78(%rdx),%xmm0
    192d:	66 0f 15 cf          	unpckhpd %xmm7,%xmm1
    1931:	66 0f 10 52 f0       	movupd -0x10(%rdx),%xmm2
    1936:	66 0f 28 fd          	movapd %xmm5,%xmm7
    193a:	66 0f 12 52 e8       	movlpd -0x18(%rdx),%xmm2
    193f:	66 0f 15 eb          	unpckhpd %xmm3,%xmm5
    1943:	66 0f 10 62 b0       	movupd -0x50(%rdx),%xmm4
    1948:	66 44 0f 28 ed       	movapd %xmm5,%xmm13
    194d:	66 0f 12 62 a8       	movlpd -0x58(%rdx),%xmm4
    1952:	66 0f 28 ee          	movapd %xmm6,%xmm5
    1956:	66 44 0f 10 70 80    	movupd -0x80(%rax),%xmm14
    195c:	66 44 0f 10 60 a0    	movupd -0x60(%rax),%xmm12
    1962:	66 0f 14 fb          	unpcklpd %xmm3,%xmm7
    1966:	66 0f 14 ea          	unpcklpd %xmm2,%xmm5
    196a:	66 0f 28 d8          	movapd %xmm0,%xmm3
    196e:	66 44 0f 10 58 c0    	movupd -0x40(%rax),%xmm11
    1974:	66 0f 14 dc          	unpcklpd %xmm4,%xmm3
    1978:	66 0f 15 c4          	unpckhpd %xmm4,%xmm0
    197c:	66 0f 15 f2          	unpckhpd %xmm2,%xmm6
    1980:	66 44 0f 10 50 e0    	movupd -0x20(%rax),%xmm10
    1986:	66 0f 10 50 90       	movupd -0x70(%rax),%xmm2
    198b:	66 44 0f 16 60 b0    	movhpd -0x50(%rax),%xmm12
    1991:	66 44 0f 16 70 90    	movhpd -0x70(%rax),%xmm14
    1997:	66 0f 12 50 88       	movlpd -0x78(%rax),%xmm2
    199c:	66 44 0f 16 58 d0    	movhpd -0x30(%rax),%xmm11
    19a2:	66 44 0f 10 40 b0    	movupd -0x50(%rax),%xmm8
    19a8:	0f 29 7c 24 c8       	movaps %xmm7,-0x38(%rsp)
    19ad:	66 44 0f 12 40 a8    	movlpd -0x58(%rax),%xmm8
    19b3:	66 44 0f 16 50 f0    	movhpd -0x10(%rax),%xmm10
    19b9:	0f 29 6c 24 b8       	movaps %xmm5,-0x48(%rsp)
    19be:	66 0f 10 68 d0       	movupd -0x30(%rax),%xmm5
    19c3:	66 0f 12 68 c8       	movlpd -0x38(%rax),%xmm5
    19c8:	66 0f 10 60 f0       	movupd -0x10(%rax),%xmm4
    19cd:	66 0f 12 60 e8       	movlpd -0x18(%rax),%xmm4
    19d2:	66 0f 28 fc          	movapd %xmm4,%xmm7
    19d6:	66 41 0f 28 e6       	movapd %xmm14,%xmm4
    19db:	66 45 0f 15 f4       	unpckhpd %xmm12,%xmm14
    19e0:	66 41 0f 14 e4       	unpcklpd %xmm12,%xmm4
    19e5:	66 45 0f 28 e3       	movapd %xmm11,%xmm12
    19ea:	66 45 0f 15 da       	unpckhpd %xmm10,%xmm11
    19ef:	66 45 0f 14 e2       	unpcklpd %xmm10,%xmm12
    19f4:	66 44 0f 28 d2       	movapd %xmm2,%xmm10
    19f9:	66 41 0f 15 d0       	unpckhpd %xmm8,%xmm2
    19fe:	66 45 0f 14 d0       	unpcklpd %xmm8,%xmm10
    1a03:	66 44 0f 28 c5       	movapd %xmm5,%xmm8
    1a08:	66 0f 15 ef          	unpckhpd %xmm7,%xmm5
    1a0c:	66 44 0f 14 c7       	unpcklpd %xmm7,%xmm8
    1a11:	66 0f 28 fc          	movapd %xmm4,%xmm7
    1a15:	66 41 0f 15 e4       	unpckhpd %xmm12,%xmm4
    1a1a:	44 0f 29 44 24 d8    	movaps %xmm8,-0x28(%rsp)
    1a20:	66 45 0f 28 c1       	movapd %xmm9,%xmm8
    1a25:	66 41 0f 14 fc       	unpcklpd %xmm12,%xmm7
    1a2a:	66 44 0f 16 44 24 c8 	movhpd -0x38(%rsp),%xmm8
    1a31:	66 41 0f 59 f8       	mulpd  %xmm8,%xmm7
    1a36:	66 44 0f 28 c3       	movapd %xmm3,%xmm8
    1a3b:	66 44 0f 16 44 24 b8 	movhpd -0x48(%rsp),%xmm8
    1a42:	f2 44 0f 58 ff       	addsd  %xmm7,%xmm15
    1a47:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    1a4b:	f2 44 0f 58 ff       	addsd  %xmm7,%xmm15
    1a50:	66 41 0f 28 fa       	movapd %xmm10,%xmm7
    1a55:	66 0f 16 7c 24 d8    	movhpd -0x28(%rsp),%xmm7
      d[1] += a[i + 1] * b[i + 1];
    1a5b:	66 41 0f 59 f8       	mulpd  %xmm8,%xmm7
    1a60:	f2 44 0f 10 44 24 90 	movsd  -0x70(%rsp),%xmm8
    1a67:	f2 44 0f 58 c7       	addsd  %xmm7,%xmm8
    1a6c:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    1a70:	f2 44 0f 58 c7       	addsd  %xmm7,%xmm8
      d[0] += a[i] * b[i];
    1a75:	66 41 0f 28 fe       	movapd %xmm14,%xmm7
    1a7a:	66 45 0f 15 f3       	unpckhpd %xmm11,%xmm14
    1a7f:	66 41 0f 14 fb       	unpcklpd %xmm11,%xmm7
      d[1] += a[i + 1] * b[i + 1];
    1a84:	f2 44 0f 11 44 24 90 	movsd  %xmm8,-0x70(%rsp)
      d[0] += a[i] * b[i];
    1a8b:	66 44 0f 28 c1       	movapd %xmm1,%xmm8
    1a90:	66 41 0f 15 cd       	unpckhpd %xmm13,%xmm1
      d[6] += a[i + 6] * b[i + 6];
    1a95:	66 44 0f 59 f1       	mulpd  %xmm1,%xmm14
      d[0] += a[i] * b[i];
    1a9a:	66 45 0f 14 c5       	unpcklpd %xmm13,%xmm8
      d[6] += a[i + 6] * b[i + 6];
    1a9f:	f2 0f 10 4c 24 e8    	movsd  -0x18(%rsp),%xmm1
      d[7] += a[i + 7] * b[i + 7];
    1aa5:	f2 44 0f 10 6c 24 f0 	movsd  -0x10(%rsp),%xmm13
      d[2] += a[i + 2] * b[i + 2];
    1aac:	66 41 0f 59 f8       	mulpd  %xmm8,%xmm7
    1ab1:	f2 44 0f 10 44 24 98 	movsd  -0x68(%rsp),%xmm8
      d[6] += a[i + 6] * b[i + 6];
    1ab8:	f2 41 0f 58 ce       	addsd  %xmm14,%xmm1
    1abd:	66 45 0f 15 f6       	unpckhpd %xmm14,%xmm14
      d[2] += a[i + 2] * b[i + 2];
    1ac2:	f2 44 0f 58 c7       	addsd  %xmm7,%xmm8
    1ac7:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
      d[6] += a[i + 6] * b[i + 6];
    1acb:	f2 41 0f 58 ce       	addsd  %xmm14,%xmm1
      d[2] += a[i + 2] * b[i + 2];
    1ad0:	f2 44 0f 58 c7       	addsd  %xmm7,%xmm8
      d[0] += a[i] * b[i];
    1ad5:	66 0f 28 fa          	movapd %xmm2,%xmm7
    1ad9:	66 0f 15 d5          	unpckhpd %xmm5,%xmm2
    1add:	66 0f 14 fd          	unpcklpd %xmm5,%xmm7
      d[6] += a[i + 6] * b[i + 6];
    1ae1:	f2 0f 11 4c 24 e8    	movsd  %xmm1,-0x18(%rsp)
      d[2] += a[i + 2] * b[i + 2];
    1ae7:	f2 44 0f 11 44 24 98 	movsd  %xmm8,-0x68(%rsp)
      d[0] += a[i] * b[i];
    1aee:	66 44 0f 28 c0       	movapd %xmm0,%xmm8
    1af3:	66 0f 15 c6          	unpckhpd %xmm6,%xmm0
      d[7] += a[i + 7] * b[i + 7];
    1af7:	66 0f 59 d0          	mulpd  %xmm0,%xmm2
      d[0] += a[i] * b[i];
    1afb:	66 44 0f 14 c6       	unpcklpd %xmm6,%xmm8
      d[3] += a[i + 3] * b[i + 3];
    1b00:	66 41 0f 59 f8       	mulpd  %xmm8,%xmm7
    1b05:	f2 44 0f 10 44 24 a0 	movsd  -0x60(%rsp),%xmm8
      d[7] += a[i + 7] * b[i + 7];
    1b0c:	f2 44 0f 58 ea       	addsd  %xmm2,%xmm13
    1b11:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
      d[3] += a[i + 3] * b[i + 3];
    1b15:	f2 44 0f 58 c7       	addsd  %xmm7,%xmm8
    1b1a:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
      d[7] += a[i + 7] * b[i + 7];
    1b1e:	f2 44 0f 58 ea       	addsd  %xmm2,%xmm13
      d[3] += a[i + 3] * b[i + 3];
    1b23:	f2 44 0f 58 c7       	addsd  %xmm7,%xmm8
      d[0] += a[i] * b[i];
    1b28:	66 0f 28 7c 24 c8    	movapd -0x38(%rsp),%xmm7
    1b2e:	66 44 0f 15 cf       	unpckhpd %xmm7,%xmm9
      d[4] += a[i + 4] * b[i + 4];
    1b33:	f2 0f 10 7c 24 a8    	movsd  -0x58(%rsp),%xmm7
      d[7] += a[i + 7] * b[i + 7];
    1b39:	f2 44 0f 11 6c 24 f0 	movsd  %xmm13,-0x10(%rsp)
      d[4] += a[i + 4] * b[i + 4];
    1b40:	66 44 0f 59 cc       	mulpd  %xmm4,%xmm9
      d[3] += a[i + 3] * b[i + 3];
    1b45:	f2 44 0f 11 44 24 a0 	movsd  %xmm8,-0x60(%rsp)
      d[0] += a[i] * b[i];
    1b4c:	66 0f 28 64 24 b8    	movapd -0x48(%rsp),%xmm4
    1b52:	66 44 0f 28 44 24 d8 	movapd -0x28(%rsp),%xmm8
    1b59:	66 0f 15 dc          	unpckhpd %xmm4,%xmm3
    1b5d:	66 45 0f 15 d0       	unpckhpd %xmm8,%xmm10
      d[5] += a[i + 5] * b[i + 5];
    1b62:	f2 0f 10 64 24 b0    	movsd  -0x50(%rsp),%xmm4
    1b68:	66 41 0f 59 da       	mulpd  %xmm10,%xmm3
      d[4] += a[i + 4] * b[i + 4];
    1b6d:	f2 41 0f 58 f9       	addsd  %xmm9,%xmm7
    1b72:	66 45 0f 15 c9       	unpckhpd %xmm9,%xmm9
      d[5] += a[i + 5] * b[i + 5];
    1b77:	f2 0f 58 e3          	addsd  %xmm3,%xmm4
    1b7b:	66 0f 15 db          	unpckhpd %xmm3,%xmm3
      d[4] += a[i + 4] * b[i + 4];
    1b7f:	f2 41 0f 58 f9       	addsd  %xmm9,%xmm7
      d[5] += a[i + 5] * b[i + 5];
    1b84:	f2 0f 58 e3          	addsd  %xmm3,%xmm4
      d[4] += a[i + 4] * b[i + 4];
    1b88:	f2 0f 11 7c 24 a8    	movsd  %xmm7,-0x58(%rsp)
      d[5] += a[i + 5] * b[i + 5];
    1b8e:	f2 0f 11 64 24 b0    	movsd  %xmm4,-0x50(%rsp)
  for (unsigned long long i = 0; i < n; i += 8)
    1b94:	49 39 c0             	cmp    %rax,%r8
    1b97:	0f 85 43 fd ff ff    	jne    18e0 <dotprod_8x+0x80>
    1b9d:	4c 89 d0             	mov    %r10,%rax
    1ba0:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1ba4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    1bab:	00 
    1bac:	4c 39 d0             	cmp    %r10,%rax
    1baf:	0f 84 8b 01 00 00    	je     1d40 <dotprod_8x+0x4e0>
      d[0] += a[i] * b[i];
    1bb5:	f2 0f 10 04 d6       	movsd  (%rsi,%rdx,8),%xmm0
    1bba:	f2 0f 59 04 d7       	mulsd  (%rdi,%rdx,8),%xmm0
    1bbf:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    1bc6:	00 
    1bc7:	f2 44 0f 58 f8       	addsd  %xmm0,%xmm15
      d[1] += a[i + 1] * b[i + 1];
    1bcc:	f2 0f 10 44 06 08    	movsd  0x8(%rsi,%rax,1),%xmm0
    1bd2:	f2 0f 59 44 07 08    	mulsd  0x8(%rdi,%rax,1),%xmm0
    1bd8:	f2 0f 58 44 24 90    	addsd  -0x70(%rsp),%xmm0
    1bde:	f2 0f 11 44 24 90    	movsd  %xmm0,-0x70(%rsp)
      d[2] += a[i + 2] * b[i + 2];
    1be4:	f2 0f 10 44 06 10    	movsd  0x10(%rsi,%rax,1),%xmm0
    1bea:	f2 0f 59 44 07 10    	mulsd  0x10(%rdi,%rax,1),%xmm0
    1bf0:	f2 0f 58 44 24 98    	addsd  -0x68(%rsp),%xmm0
    1bf6:	f2 0f 11 44 24 98    	movsd  %xmm0,-0x68(%rsp)
      d[3] += a[i + 3] * b[i + 3];
    1bfc:	f2 0f 10 44 06 18    	movsd  0x18(%rsi,%rax,1),%xmm0
    1c02:	f2 0f 59 44 07 18    	mulsd  0x18(%rdi,%rax,1),%xmm0
    1c08:	f2 0f 58 44 24 a0    	addsd  -0x60(%rsp),%xmm0
    1c0e:	f2 0f 11 44 24 a0    	movsd  %xmm0,-0x60(%rsp)
      d[4] += a[i + 4] * b[i + 4];
    1c14:	f2 0f 10 44 06 20    	movsd  0x20(%rsi,%rax,1),%xmm0
    1c1a:	f2 0f 59 44 07 20    	mulsd  0x20(%rdi,%rax,1),%xmm0
    1c20:	f2 0f 58 44 24 a8    	addsd  -0x58(%rsp),%xmm0
    1c26:	f2 0f 11 44 24 a8    	movsd  %xmm0,-0x58(%rsp)
      d[5] += a[i + 5] * b[i + 5];
    1c2c:	f2 0f 10 44 06 28    	movsd  0x28(%rsi,%rax,1),%xmm0
    1c32:	f2 0f 59 44 07 28    	mulsd  0x28(%rdi,%rax,1),%xmm0
    1c38:	f2 0f 58 44 24 b0    	addsd  -0x50(%rsp),%xmm0
    1c3e:	f2 0f 11 44 24 b0    	movsd  %xmm0,-0x50(%rsp)
      d[6] += a[i + 6] * b[i + 6];
    1c44:	f2 0f 10 44 06 30    	movsd  0x30(%rsi,%rax,1),%xmm0
    1c4a:	f2 0f 59 44 07 30    	mulsd  0x30(%rdi,%rax,1),%xmm0
    1c50:	f2 0f 58 44 24 e8    	addsd  -0x18(%rsp),%xmm0
    1c56:	f2 0f 11 44 24 e8    	movsd  %xmm0,-0x18(%rsp)
      d[7] += a[i + 7] * b[i + 7];
    1c5c:	f2 0f 10 44 06 38    	movsd  0x38(%rsi,%rax,1),%xmm0
    1c62:	f2 0f 59 44 07 38    	mulsd  0x38(%rdi,%rax,1),%xmm0
    1c68:	f2 44 0f 58 e8       	addsd  %xmm0,%xmm13
  if (! test)
    1c6d:	4d 85 c9             	test   %r9,%r9
    1c70:	74 36                	je     1ca8 <dotprod_8x+0x448>
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    1c72:	f2 0f 10 7c 24 90    	movsd  -0x70(%rsp),%xmm7
    1c78:	f2 0f 10 44 24 98    	movsd  -0x68(%rsp),%xmm0
    1c7e:	f2 41 0f 58 ff       	addsd  %xmm15,%xmm7
    1c83:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    1c87:	f2 0f 58 44 24 a0    	addsd  -0x60(%rsp),%xmm0
    1c8d:	f2 0f 58 44 24 a8    	addsd  -0x58(%rsp),%xmm0
    1c93:	f2 0f 58 44 24 b0    	addsd  -0x50(%rsp),%xmm0
    1c99:	f2 0f 58 44 24 e8    	addsd  -0x18(%rsp),%xmm0
    1c9f:	f2 41 0f 58 c5       	addsd  %xmm13,%xmm0
}
    1ca4:	c3                   	retq   
    1ca5:	0f 1f 00             	nopl   (%rax)
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1ca8:	48 83 c1 f9          	add    $0xfffffffffffffff9,%rcx
    1cac:	48 89 c8             	mov    %rcx,%rax
    1caf:	73 c1                	jae    1c72 <dotprod_8x+0x412>
    1cb1:	48 c1 e0 03          	shl    $0x3,%rax
    1cb5:	48 8d 14 07          	lea    (%rdi,%rax,1),%rdx
    1cb9:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
	  d[0] += a[i] * b[i];
    1cbd:	66 44 0f 10 02       	movupd (%rdx),%xmm8
    1cc2:	66 0f 10 09          	movupd (%rcx),%xmm1
    1cc6:	66 0f 10 71 10       	movupd 0x10(%rcx),%xmm6
    1ccb:	66 0f 10 41 20       	movupd 0x20(%rcx),%xmm0
    1cd0:	66 44 0f 59 c1       	mulpd  %xmm1,%xmm8
    1cd5:	66 41 0f 28 f8       	movapd %xmm8,%xmm7
    1cda:	66 45 0f 15 c0       	unpckhpd %xmm8,%xmm8
    1cdf:	f2 41 0f 58 ff       	addsd  %xmm15,%xmm7
    1ce4:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1ce9:	66 44 0f 10 42 10    	movupd 0x10(%rdx),%xmm8
    1cef:	66 44 0f 59 c6       	mulpd  %xmm6,%xmm8
    1cf4:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1cf9:	66 45 0f 15 c0       	unpckhpd %xmm8,%xmm8
    1cfe:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1d03:	66 44 0f 10 42 20    	movupd 0x20(%rdx),%xmm8
    1d09:	66 41 0f 59 c0       	mulpd  %xmm8,%xmm0
    1d0e:	f2 44 0f 10 44 06 30 	movsd  0x30(%rsi,%rax,1),%xmm8
    1d15:	f2 44 0f 59 44 07 30 	mulsd  0x30(%rdi,%rax,1),%xmm8
    1d1c:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1d20:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1d24:	66 45 0f 28 f8       	movapd %xmm8,%xmm15
    1d29:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1d2d:	f2 44 0f 58 ff       	addsd  %xmm7,%xmm15
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1d32:	e9 3b ff ff ff       	jmpq   1c72 <dotprod_8x+0x412>
    1d37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    1d3e:	00 00 
  if (! test)
    1d40:	4d 85 c9             	test   %r9,%r9
    1d43:	0f 85 29 ff ff ff    	jne    1c72 <dotprod_8x+0x412>
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1d49:	48 8d 41 f9          	lea    -0x7(%rcx),%rax
    1d4d:	e9 5f ff ff ff       	jmpq   1cb1 <dotprod_8x+0x451>
    1d52:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  double d[8] = {0.0};
    1d58:	66 45 0f ef ed       	pxor   %xmm13,%xmm13
    1d5d:	f2 44 0f 11 6c 24 e8 	movsd  %xmm13,-0x18(%rsp)
    1d64:	66 45 0f 28 fd       	movapd %xmm13,%xmm15
    1d69:	f2 44 0f 11 6c 24 b0 	movsd  %xmm13,-0x50(%rsp)
    1d70:	f2 44 0f 11 6c 24 a8 	movsd  %xmm13,-0x58(%rsp)
    1d77:	f2 44 0f 11 6c 24 a0 	movsd  %xmm13,-0x60(%rsp)
    1d7e:	f2 44 0f 11 6c 24 98 	movsd  %xmm13,-0x68(%rsp)
    1d85:	f2 44 0f 11 6c 24 90 	movsd  %xmm13,-0x70(%rsp)
    1d8c:	e9 e1 fe ff ff       	jmpq   1c72 <dotprod_8x+0x412>
    1d91:	66 45 0f ef ed       	pxor   %xmm13,%xmm13
  for (unsigned long long i = 0; i < n; i += 8)
    1d96:	31 d2                	xor    %edx,%edx
  double d[8] = {0.0};
    1d98:	f2 44 0f 11 6c 24 e8 	movsd  %xmm13,-0x18(%rsp)
    1d9f:	66 45 0f 28 fd       	movapd %xmm13,%xmm15
    1da4:	f2 44 0f 11 6c 24 b0 	movsd  %xmm13,-0x50(%rsp)
    1dab:	f2 44 0f 11 6c 24 a8 	movsd  %xmm13,-0x58(%rsp)
    1db2:	f2 44 0f 11 6c 24 a0 	movsd  %xmm13,-0x60(%rsp)
    1db9:	f2 44 0f 11 6c 24 98 	movsd  %xmm13,-0x68(%rsp)
    1dc0:	f2 44 0f 11 6c 24 90 	movsd  %xmm13,-0x70(%rsp)
    1dc7:	e9 e9 fd ff ff       	jmpq   1bb5 <dotprod_8x+0x355>
    1dcc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001dd0 <dotprod_16x>:
  unsigned long long test = n % 16;
    1dd0:	49 89 d2             	mov    %rdx,%r10
{
    1dd3:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
  unsigned long long test = n % 16;
    1dda:	41 83 e2 0f          	and    $0xf,%r10d
  for (unsigned long long i = 0; i < n; i += 16)
    1dde:	48 85 d2             	test   %rdx,%rdx
    1de1:	0f 84 c1 0b 00 00    	je     29a8 <dotprod_16x+0xbd8>
    1de7:	48 8d 42 ff          	lea    -0x1(%rdx),%rax
    1deb:	49 89 d0             	mov    %rdx,%r8
    1dee:	49 89 c1             	mov    %rax,%r9
    1df1:	49 c1 e9 04          	shr    $0x4,%r9
    1df5:	49 83 c1 01          	add    $0x1,%r9
    1df9:	48 83 f8 0f          	cmp    $0xf,%rax
    1dfd:	0f 86 0d 0c 00 00    	jbe    2a10 <dotprod_16x+0xc40>
    1e03:	4c 89 c9             	mov    %r9,%rcx
  double d[16] = {0.0};
    1e06:	66 0f ef ed          	pxor   %xmm5,%xmm5
    1e0a:	48 89 f0             	mov    %rsi,%rax
    1e0d:	48 89 fa             	mov    %rdi,%rdx
    1e10:	48 d1 e9             	shr    %rcx
    1e13:	f2 0f 11 2c 24       	movsd  %xmm5,(%rsp)
    1e18:	48 c1 e1 08          	shl    $0x8,%rcx
    1e1c:	f2 0f 11 6c 24 f8    	movsd  %xmm5,-0x8(%rsp)
    1e22:	48 01 f1             	add    %rsi,%rcx
    1e25:	f2 0f 11 6c 24 f0    	movsd  %xmm5,-0x10(%rsp)
    1e2b:	f2 0f 11 6c 24 e8    	movsd  %xmm5,-0x18(%rsp)
    1e31:	f2 0f 11 6c 24 e0    	movsd  %xmm5,-0x20(%rsp)
    1e37:	f2 0f 11 6c 24 d8    	movsd  %xmm5,-0x28(%rsp)
    1e3d:	f2 0f 11 6c 24 d0    	movsd  %xmm5,-0x30(%rsp)
    1e43:	f2 0f 11 6c 24 c8    	movsd  %xmm5,-0x38(%rsp)
    1e49:	f2 0f 11 6c 24 c0    	movsd  %xmm5,-0x40(%rsp)
    1e4f:	f2 0f 11 6c 24 b8    	movsd  %xmm5,-0x48(%rsp)
    1e55:	f2 0f 11 6c 24 b0    	movsd  %xmm5,-0x50(%rsp)
    1e5b:	f2 0f 11 6c 24 a8    	movsd  %xmm5,-0x58(%rsp)
    1e61:	f2 0f 11 6c 24 a0    	movsd  %xmm5,-0x60(%rsp)
    1e67:	f2 0f 11 6c 24 98    	movsd  %xmm5,-0x68(%rsp)
    1e6d:	f2 0f 11 6c 24 90    	movsd  %xmm5,-0x70(%rsp)
    1e73:	f2 0f 11 6c 24 88    	movsd  %xmm5,-0x78(%rsp)
    1e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      d[0] += a[i] * b[i];
    1e80:	66 44 0f 10 3a       	movupd (%rdx),%xmm15
    1e85:	66 44 0f 10 72 20    	movupd 0x20(%rdx),%xmm14
    1e8b:	48 05 00 01 00 00    	add    $0x100,%rax
    1e91:	48 81 c2 00 01 00 00 	add    $0x100,%rdx
    1e98:	66 0f 10 b2 40 ff ff 	movupd -0xc0(%rdx),%xmm6
    1e9f:	ff 
    1ea0:	66 0f 10 6a 80       	movupd -0x80(%rdx),%xmm5
    1ea5:	66 44 0f 10 aa 60 ff 	movupd -0xa0(%rdx),%xmm13
    1eac:	ff ff 
    1eae:	66 44 0f 10 62 a0    	movupd -0x60(%rdx),%xmm12
    1eb4:	66 44 0f 16 ba 10 ff 	movhpd -0xf0(%rdx),%xmm15
    1ebb:	ff ff 
    1ebd:	66 44 0f 16 b2 30 ff 	movhpd -0xd0(%rdx),%xmm14
    1ec4:	ff ff 
    1ec6:	66 0f 10 62 c0       	movupd -0x40(%rdx),%xmm4
    1ecb:	66 44 0f 10 5a e0    	movupd -0x20(%rdx),%xmm11
    1ed1:	66 0f 16 b2 50 ff ff 	movhpd -0xb0(%rdx),%xmm6
    1ed8:	ff 
    1ed9:	66 0f 16 6a 90       	movhpd -0x70(%rdx),%xmm5
    1ede:	66 0f 10 7a f0       	movupd -0x10(%rdx),%xmm7
    1ee3:	66 0f 12 7a e8       	movlpd -0x18(%rdx),%xmm7
    1ee8:	66 44 0f 16 aa 70 ff 	movhpd -0x90(%rdx),%xmm13
    1eef:	ff ff 
    1ef1:	66 44 0f 16 62 b0    	movhpd -0x50(%rdx),%xmm12
    1ef7:	66 44 0f 16 5a f0    	movhpd -0x10(%rdx),%xmm11
    1efd:	66 0f 16 62 d0       	movhpd -0x30(%rdx),%xmm4
    1f02:	66 0f 10 9a 10 ff ff 	movupd -0xf0(%rdx),%xmm3
    1f09:	ff 
    1f0a:	66 44 0f 10 92 30 ff 	movupd -0xd0(%rdx),%xmm10
    1f11:	ff ff 
    1f13:	66 0f 12 9a 08 ff ff 	movlpd -0xf8(%rdx),%xmm3
    1f1a:	ff 
    1f1b:	66 0f 10 92 50 ff ff 	movupd -0xb0(%rdx),%xmm2
    1f22:	ff 
    1f23:	66 44 0f 12 92 28 ff 	movlpd -0xd8(%rdx),%xmm10
    1f2a:	ff ff 
    1f2c:	66 0f 12 92 48 ff ff 	movlpd -0xb8(%rdx),%xmm2
    1f33:	ff 
    1f34:	66 44 0f 10 8a 70 ff 	movupd -0x90(%rdx),%xmm9
    1f3b:	ff ff 
    1f3d:	66 0f 10 4a 90       	movupd -0x70(%rdx),%xmm1
    1f42:	66 44 0f 12 8a 68 ff 	movlpd -0x98(%rdx),%xmm9
    1f49:	ff ff 
    1f4b:	66 0f 12 4a 88       	movlpd -0x78(%rdx),%xmm1
    1f50:	66 44 0f 10 42 b0    	movupd -0x50(%rdx),%xmm8
    1f56:	66 0f 10 42 d0       	movupd -0x30(%rdx),%xmm0
    1f5b:	66 44 0f 12 42 a8    	movlpd -0x58(%rdx),%xmm8
    1f61:	66 0f 12 42 c8       	movlpd -0x38(%rdx),%xmm0
    1f66:	0f 29 7c 24 18       	movaps %xmm7,0x18(%rsp)
    1f6b:	66 41 0f 28 ff       	movapd %xmm15,%xmm7
    1f70:	66 41 0f 14 fe       	unpcklpd %xmm14,%xmm7
    1f75:	66 45 0f 15 fe       	unpckhpd %xmm14,%xmm15
    1f7a:	66 44 0f 28 f6       	movapd %xmm6,%xmm14
    1f7f:	66 45 0f 14 f5       	unpcklpd %xmm13,%xmm14
    1f84:	66 41 0f 15 f5       	unpckhpd %xmm13,%xmm6
    1f89:	66 44 0f 28 ed       	movapd %xmm5,%xmm13
    1f8e:	66 45 0f 14 ec       	unpcklpd %xmm12,%xmm13
    1f93:	66 41 0f 15 ec       	unpckhpd %xmm12,%xmm5
    1f98:	66 44 0f 28 e4       	movapd %xmm4,%xmm12
    1f9d:	66 45 0f 14 e3       	unpcklpd %xmm11,%xmm12
    1fa2:	66 41 0f 15 e3       	unpckhpd %xmm11,%xmm4
    1fa7:	66 44 0f 28 db       	movapd %xmm3,%xmm11
    1fac:	66 45 0f 14 da       	unpcklpd %xmm10,%xmm11
    1fb1:	66 41 0f 15 da       	unpckhpd %xmm10,%xmm3
    1fb6:	66 44 0f 28 d2       	movapd %xmm2,%xmm10
    1fbb:	66 41 0f 15 d1       	unpckhpd %xmm9,%xmm2
    1fc0:	66 45 0f 14 d1       	unpcklpd %xmm9,%xmm10
    1fc5:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    1fca:	0f 29 54 24 08       	movaps %xmm2,0x8(%rsp)
    1fcf:	66 0f 28 54 24 18    	movapd 0x18(%rsp),%xmm2
    1fd5:	66 41 0f 15 c8       	unpckhpd %xmm8,%xmm1
    1fda:	66 45 0f 14 c8       	unpcklpd %xmm8,%xmm9
    1fdf:	66 44 0f 28 c0       	movapd %xmm0,%xmm8
    1fe4:	66 44 0f 14 c2       	unpcklpd %xmm2,%xmm8
    1fe9:	66 0f 15 c2          	unpckhpd %xmm2,%xmm0
    1fed:	66 0f 28 d7          	movapd %xmm7,%xmm2
    1ff1:	66 41 0f 15 fe       	unpckhpd %xmm14,%xmm7
    1ff6:	66 41 0f 14 d6       	unpcklpd %xmm14,%xmm2
    1ffb:	0f 29 bc 24 08 01 00 	movaps %xmm7,0x108(%rsp)
    2002:	00 
    2003:	66 41 0f 28 fd       	movapd %xmm13,%xmm7
    2008:	66 45 0f 15 ec       	unpckhpd %xmm12,%xmm13
    200d:	66 41 0f 14 fc       	unpcklpd %xmm12,%xmm7
    2012:	66 45 0f 28 e3       	movapd %xmm11,%xmm12
    2017:	66 45 0f 15 da       	unpckhpd %xmm10,%xmm11
    201c:	0f 29 94 24 18 01 00 	movaps %xmm2,0x118(%rsp)
    2023:	00 
    2024:	66 45 0f 14 e2       	unpcklpd %xmm10,%xmm12
    2029:	66 45 0f 28 d1       	movapd %xmm9,%xmm10
    202e:	66 45 0f 15 c8       	unpckhpd %xmm8,%xmm9
    2033:	0f 29 bc 24 f8 00 00 	movaps %xmm7,0xf8(%rsp)
    203a:	00 
    203b:	44 0f 29 ac 24 e8 00 	movaps %xmm13,0xe8(%rsp)
    2042:	00 00 
    2044:	66 45 0f 14 d0       	unpcklpd %xmm8,%xmm10
    2049:	66 45 0f 28 c7       	movapd %xmm15,%xmm8
    204e:	66 44 0f 15 fe       	unpckhpd %xmm6,%xmm15
    2053:	44 0f 29 bc 24 88 00 	movaps %xmm15,0x88(%rsp)
    205a:	00 00 
    205c:	66 44 0f 14 c6       	unpcklpd %xmm6,%xmm8
    2061:	66 0f 28 f5          	movapd %xmm5,%xmm6
    2065:	66 0f 15 ec          	unpckhpd %xmm4,%xmm5
    2069:	66 0f 14 f4          	unpcklpd %xmm4,%xmm6
    206d:	66 0f 28 e3          	movapd %xmm3,%xmm4
    2071:	0f 29 6c 24 68       	movaps %xmm5,0x68(%rsp)
    2076:	66 0f 28 e9          	movapd %xmm1,%xmm5
    207a:	0f 29 74 24 78       	movaps %xmm6,0x78(%rsp)
    207f:	66 0f 28 74 24 08    	movapd 0x8(%rsp),%xmm6
    2085:	66 0f 14 e8          	unpcklpd %xmm0,%xmm5
    2089:	44 0f 29 94 24 b8 00 	movaps %xmm10,0xb8(%rsp)
    2090:	00 00 
    2092:	66 0f 14 e6          	unpcklpd %xmm6,%xmm4
    2096:	66 0f 15 de          	unpckhpd %xmm6,%xmm3
    209a:	44 0f 29 a4 24 d8 00 	movaps %xmm12,0xd8(%rsp)
    20a1:	00 00 
    20a3:	0f 29 64 24 58       	movaps %xmm4,0x58(%rsp)
    20a8:	66 0f 28 e1          	movapd %xmm1,%xmm4
    20ac:	66 0f 15 e0          	unpckhpd %xmm0,%xmm4
    20b0:	0f 29 5c 24 48       	movaps %xmm3,0x48(%rsp)
    20b5:	66 0f 10 80 00 ff ff 	movupd -0x100(%rax),%xmm0
    20bc:	ff 
    20bd:	44 0f 29 9c 24 c8 00 	movaps %xmm11,0xc8(%rsp)
    20c4:	00 00 
    20c6:	66 0f 16 80 10 ff ff 	movhpd -0xf0(%rax),%xmm0
    20cd:	ff 
    20ce:	0f 29 6c 24 38       	movaps %xmm5,0x38(%rsp)
    20d3:	66 44 0f 28 f8       	movapd %xmm0,%xmm15
    20d8:	66 0f 10 80 10 ff ff 	movupd -0xf0(%rax),%xmm0
    20df:	ff 
    20e0:	0f 29 64 24 28       	movaps %xmm4,0x28(%rsp)
    20e5:	66 0f 12 80 08 ff ff 	movlpd -0xf8(%rax),%xmm0
    20ec:	ff 
    20ed:	44 0f 29 8c 24 a8 00 	movaps %xmm9,0xa8(%rsp)
    20f4:	00 00 
    20f6:	0f 29 44 24 18       	movaps %xmm0,0x18(%rsp)
    20fb:	66 0f 10 80 20 ff ff 	movupd -0xe0(%rax),%xmm0
    2102:	ff 
    2103:	44 0f 29 84 24 98 00 	movaps %xmm8,0x98(%rsp)
    210a:	00 00 
    210c:	66 0f 16 80 30 ff ff 	movhpd -0xd0(%rax),%xmm0
    2113:	ff 
    2114:	66 44 0f 28 f0       	movapd %xmm0,%xmm14
    2119:	66 0f 10 80 30 ff ff 	movupd -0xd0(%rax),%xmm0
    2120:	ff 
    2121:	66 0f 12 80 28 ff ff 	movlpd -0xd8(%rax),%xmm0
    2128:	ff 
    2129:	66 44 0f 28 d0       	movapd %xmm0,%xmm10
    212e:	66 0f 10 80 40 ff ff 	movupd -0xc0(%rax),%xmm0
    2135:	ff 
    2136:	66 0f 16 80 50 ff ff 	movhpd -0xb0(%rax),%xmm0
    213d:	ff 
    213e:	66 0f 28 f0          	movapd %xmm0,%xmm6
    2142:	66 0f 10 80 50 ff ff 	movupd -0xb0(%rax),%xmm0
    2149:	ff 
    214a:	66 0f 12 80 48 ff ff 	movlpd -0xb8(%rax),%xmm0
    2151:	ff 
    2152:	66 0f 28 d8          	movapd %xmm0,%xmm3
    2156:	66 0f 10 80 60 ff ff 	movupd -0xa0(%rax),%xmm0
    215d:	ff 
    215e:	66 0f 16 80 70 ff ff 	movhpd -0x90(%rax),%xmm0
    2165:	ff 
    2166:	66 44 0f 28 e8       	movapd %xmm0,%xmm13
    216b:	66 0f 10 80 70 ff ff 	movupd -0x90(%rax),%xmm0
    2172:	ff 
    2173:	66 0f 12 80 68 ff ff 	movlpd -0x98(%rax),%xmm0
    217a:	ff 
    217b:	66 44 0f 28 c8       	movapd %xmm0,%xmm9
    2180:	66 0f 10 40 80       	movupd -0x80(%rax),%xmm0
    2185:	66 0f 16 40 90       	movhpd -0x70(%rax),%xmm0
    218a:	66 0f 28 e8          	movapd %xmm0,%xmm5
    218e:	66 0f 10 40 90       	movupd -0x70(%rax),%xmm0
    2193:	66 0f 12 40 88       	movlpd -0x78(%rax),%xmm0
    2198:	66 0f 28 d0          	movapd %xmm0,%xmm2
    219c:	66 0f 10 40 a0       	movupd -0x60(%rax),%xmm0
    21a1:	66 0f 16 40 b0       	movhpd -0x50(%rax),%xmm0
    21a6:	66 44 0f 28 e0       	movapd %xmm0,%xmm12
    21ab:	66 0f 10 40 b0       	movupd -0x50(%rax),%xmm0
    21b0:	66 0f 12 40 a8       	movlpd -0x58(%rax),%xmm0
    21b5:	66 44 0f 28 c0       	movapd %xmm0,%xmm8
    21ba:	66 0f 10 40 c0       	movupd -0x40(%rax),%xmm0
    21bf:	66 0f 16 40 d0       	movhpd -0x30(%rax),%xmm0
    21c4:	66 0f 28 e0          	movapd %xmm0,%xmm4
    21c8:	66 0f 10 40 d0       	movupd -0x30(%rax),%xmm0
    21cd:	66 0f 12 40 c8       	movlpd -0x38(%rax),%xmm0
    21d2:	66 0f 28 c8          	movapd %xmm0,%xmm1
    21d6:	66 0f 10 40 e0       	movupd -0x20(%rax),%xmm0
    21db:	66 0f 16 40 f0       	movhpd -0x10(%rax),%xmm0
    21e0:	66 44 0f 28 d8       	movapd %xmm0,%xmm11
    21e5:	66 0f 10 40 f0       	movupd -0x10(%rax),%xmm0
    21ea:	66 0f 12 40 e8       	movlpd -0x18(%rax),%xmm0
    21ef:	66 0f 28 f8          	movapd %xmm0,%xmm7
    21f3:	66 41 0f 28 c7       	movapd %xmm15,%xmm0
    21f8:	66 45 0f 15 fe       	unpckhpd %xmm14,%xmm15
    21fd:	66 41 0f 14 c6       	unpcklpd %xmm14,%xmm0
    2202:	66 44 0f 28 f6       	movapd %xmm6,%xmm14
    2207:	66 41 0f 15 f5       	unpckhpd %xmm13,%xmm6
    220c:	0f 29 44 24 08       	movaps %xmm0,0x8(%rsp)
    2211:	66 0f 28 44 24 18    	movapd 0x18(%rsp),%xmm0
    2217:	66 45 0f 14 f5       	unpcklpd %xmm13,%xmm14
    221c:	66 44 0f 28 ed       	movapd %xmm5,%xmm13
    2221:	66 45 0f 14 ec       	unpcklpd %xmm12,%xmm13
    2226:	66 41 0f 15 ec       	unpckhpd %xmm12,%xmm5
    222b:	66 44 0f 28 e4       	movapd %xmm4,%xmm12
    2230:	66 41 0f 14 c2       	unpcklpd %xmm10,%xmm0
    2235:	66 45 0f 14 e3       	unpcklpd %xmm11,%xmm12
    223a:	66 41 0f 15 e3       	unpckhpd %xmm11,%xmm4
    223f:	66 44 0f 28 d8       	movapd %xmm0,%xmm11
    2244:	66 0f 28 44 24 18    	movapd 0x18(%rsp),%xmm0
    224a:	66 41 0f 15 c2       	unpckhpd %xmm10,%xmm0
    224f:	66 44 0f 28 d3       	movapd %xmm3,%xmm10
    2254:	66 41 0f 15 d9       	unpckhpd %xmm9,%xmm3
    2259:	66 45 0f 14 d1       	unpcklpd %xmm9,%xmm10
    225e:	66 44 0f 28 ca       	movapd %xmm2,%xmm9
    2263:	66 41 0f 15 d0       	unpckhpd %xmm8,%xmm2
    2268:	66 45 0f 14 c8       	unpcklpd %xmm8,%xmm9
    226d:	66 44 0f 28 c1       	movapd %xmm1,%xmm8
    2272:	66 0f 15 cf          	unpckhpd %xmm7,%xmm1
    2276:	66 44 0f 14 c7       	unpcklpd %xmm7,%xmm8
    227b:	66 0f 28 7c 24 08    	movapd 0x8(%rsp),%xmm7
    2281:	66 41 0f 14 fe       	unpcklpd %xmm14,%xmm7
    2286:	66 44 0f 12 74 24 10 	movlpd 0x10(%rsp),%xmm14
    228d:	44 0f 29 74 24 08    	movaps %xmm14,0x8(%rsp)
    2293:	66 45 0f 28 f5       	movapd %xmm13,%xmm14
    2298:	66 45 0f 15 ec       	unpckhpd %xmm12,%xmm13
    229d:	66 45 0f 14 f4       	unpcklpd %xmm12,%xmm14
    22a2:	66 45 0f 28 e3       	movapd %xmm11,%xmm12
    22a7:	66 45 0f 15 da       	unpckhpd %xmm10,%xmm11
    22ac:	66 45 0f 14 e2       	unpcklpd %xmm10,%xmm12
    22b1:	66 45 0f 28 d1       	movapd %xmm9,%xmm10
    22b6:	66 45 0f 15 c8       	unpckhpd %xmm8,%xmm9
    22bb:	66 45 0f 14 d0       	unpcklpd %xmm8,%xmm10
    22c0:	66 45 0f 28 c7       	movapd %xmm15,%xmm8
    22c5:	66 44 0f 15 fe       	unpckhpd %xmm6,%xmm15
    22ca:	66 44 0f 14 c6       	unpcklpd %xmm6,%xmm8
    22cf:	66 0f 28 f5          	movapd %xmm5,%xmm6
    22d3:	66 0f 15 ec          	unpckhpd %xmm4,%xmm5
    22d7:	66 0f 14 f4          	unpcklpd %xmm4,%xmm6
    22db:	66 0f 28 e0          	movapd %xmm0,%xmm4
    22df:	66 0f 15 c3          	unpckhpd %xmm3,%xmm0
    22e3:	66 0f 14 e3          	unpcklpd %xmm3,%xmm4
    22e7:	66 0f 28 da          	movapd %xmm2,%xmm3
    22eb:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    22ef:	0f 29 54 24 18       	movaps %xmm2,0x18(%rsp)
    22f4:	66 0f 14 d9          	unpcklpd %xmm1,%xmm3
    22f8:	66 0f 28 cf          	movapd %xmm7,%xmm1
    22fc:	66 0f 28 94 24 18 01 	movapd 0x118(%rsp),%xmm2
    2303:	00 00 
    2305:	66 41 0f 14 ce       	unpcklpd %xmm14,%xmm1
    230a:	66 41 0f 15 fe       	unpckhpd %xmm14,%xmm7
    230f:	66 0f 16 94 24 f8 00 	movhpd 0xf8(%rsp),%xmm2
    2316:	00 00 
    2318:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    231c:	f2 0f 10 54 24 88    	movsd  -0x78(%rsp),%xmm2
    2322:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    2326:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    232a:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    232e:	66 41 0f 28 cc       	movapd %xmm12,%xmm1
    2333:	66 45 0f 15 e2       	unpckhpd %xmm10,%xmm12
    2338:	66 41 0f 14 ca       	unpcklpd %xmm10,%xmm1
    233d:	f2 0f 11 54 24 88    	movsd  %xmm2,-0x78(%rsp)
    2343:	66 0f 28 94 24 d8 00 	movapd 0xd8(%rsp),%xmm2
    234a:	00 00 
    234c:	66 0f 16 94 24 b8 00 	movhpd 0xb8(%rsp),%xmm2
    2353:	00 00 
      d[1] += a[i + 1] * b[i + 1];
    2355:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    2359:	f2 0f 10 54 24 90    	movsd  -0x70(%rsp),%xmm2
    235f:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    2363:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    2367:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    236b:	66 41 0f 28 c8       	movapd %xmm8,%xmm1
    2370:	66 44 0f 15 c6       	unpckhpd %xmm6,%xmm8
    2375:	66 0f 14 ce          	unpcklpd %xmm6,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    2379:	f2 0f 11 54 24 90    	movsd  %xmm2,-0x70(%rsp)
      d[0] += a[i] * b[i];
    237f:	66 0f 28 94 24 98 00 	movapd 0x98(%rsp),%xmm2
    2386:	00 00 
    2388:	66 0f 16 54 24 78    	movhpd 0x78(%rsp),%xmm2
      d[2] += a[i + 2] * b[i + 2];
    238e:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    2392:	f2 0f 10 54 24 98    	movsd  -0x68(%rsp),%xmm2
    2398:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    239c:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    23a0:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    23a4:	66 0f 28 4c 24 58    	movapd 0x58(%rsp),%xmm1
    23aa:	66 0f 16 4c 24 38    	movhpd 0x38(%rsp),%xmm1
      d[2] += a[i + 2] * b[i + 2];
    23b0:	f2 0f 11 54 24 98    	movsd  %xmm2,-0x68(%rsp)
      d[0] += a[i] * b[i];
    23b6:	66 0f 28 d1          	movapd %xmm1,%xmm2
    23ba:	66 0f 28 cc          	movapd %xmm4,%xmm1
    23be:	66 0f 15 e3          	unpckhpd %xmm3,%xmm4
    23c2:	66 0f 14 cb          	unpcklpd %xmm3,%xmm1
      d[3] += a[i + 3] * b[i + 3];
    23c6:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    23ca:	f2 0f 10 54 24 a0    	movsd  -0x60(%rsp),%xmm2
    23d0:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    23d4:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    23d8:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    23dc:	66 0f 28 4c 24 08    	movapd 0x8(%rsp),%xmm1
    23e2:	66 41 0f 14 cd       	unpcklpd %xmm13,%xmm1
      d[3] += a[i + 3] * b[i + 3];
    23e7:	f2 0f 11 54 24 a0    	movsd  %xmm2,-0x60(%rsp)
      d[0] += a[i] * b[i];
    23ed:	66 0f 28 94 24 08 01 	movapd 0x108(%rsp),%xmm2
    23f4:	00 00 
    23f6:	66 0f 16 94 24 e8 00 	movhpd 0xe8(%rsp),%xmm2
    23fd:	00 00 
      d[4] += a[i + 4] * b[i + 4];
    23ff:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    2403:	f2 0f 10 54 24 a8    	movsd  -0x58(%rsp),%xmm2
    2409:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    240d:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    2411:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    2415:	66 0f 28 8c 24 c8 00 	movapd 0xc8(%rsp),%xmm1
    241c:	00 00 
    241e:	66 0f 16 8c 24 a8 00 	movhpd 0xa8(%rsp),%xmm1
    2425:	00 00 
      d[4] += a[i + 4] * b[i + 4];
    2427:	f2 0f 11 54 24 a8    	movsd  %xmm2,-0x58(%rsp)
      d[0] += a[i] * b[i];
    242d:	66 0f 28 d1          	movapd %xmm1,%xmm2
    2431:	66 41 0f 28 cb       	movapd %xmm11,%xmm1
    2436:	66 45 0f 15 d9       	unpckhpd %xmm9,%xmm11
    243b:	66 41 0f 14 c9       	unpcklpd %xmm9,%xmm1
      d[5] += a[i + 5] * b[i + 5];
    2440:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    2444:	f2 0f 10 54 24 b0    	movsd  -0x50(%rsp),%xmm2
    244a:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    244e:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    2452:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    2456:	66 0f 28 8c 24 88 00 	movapd 0x88(%rsp),%xmm1
    245d:	00 00 
    245f:	66 0f 16 4c 24 68    	movhpd 0x68(%rsp),%xmm1
      d[5] += a[i + 5] * b[i + 5];
    2465:	f2 0f 11 54 24 b0    	movsd  %xmm2,-0x50(%rsp)
      d[0] += a[i] * b[i];
    246b:	66 0f 28 d1          	movapd %xmm1,%xmm2
    246f:	66 41 0f 28 cf       	movapd %xmm15,%xmm1
    2474:	66 44 0f 15 fd       	unpckhpd %xmm5,%xmm15
    2479:	66 0f 14 cd          	unpcklpd %xmm5,%xmm1
      d[6] += a[i + 6] * b[i + 6];
    247d:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    2481:	f2 0f 10 54 24 b8    	movsd  -0x48(%rsp),%xmm2
    2487:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    248b:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    248f:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    2493:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2497:	66 0f 16 4c 24 18    	movhpd 0x18(%rsp),%xmm1
      d[6] += a[i + 6] * b[i + 6];
    249d:	f2 0f 11 54 24 b8    	movsd  %xmm2,-0x48(%rsp)
      d[0] += a[i] * b[i];
    24a3:	66 0f 28 54 24 48    	movapd 0x48(%rsp),%xmm2
    24a9:	66 0f 16 54 24 28    	movhpd 0x28(%rsp),%xmm2
      d[7] += a[i + 7] * b[i + 7];
    24af:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
    24b3:	f2 0f 10 54 24 c0    	movsd  -0x40(%rsp),%xmm2
    24b9:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    24bd:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    24c1:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[0] += a[i] * b[i];
    24c5:	66 0f 28 8c 24 f8 00 	movapd 0xf8(%rsp),%xmm1
    24cc:	00 00 
    24ce:	66 0f 12 8c 24 20 01 	movlpd 0x120(%rsp),%xmm1
    24d5:	00 00 
      d[8] += a[i + 8] * b[i + 8];
    24d7:	66 0f 59 f9          	mulpd  %xmm1,%xmm7
      d[7] += a[i + 7] * b[i + 7];
    24db:	f2 0f 11 54 24 c0    	movsd  %xmm2,-0x40(%rsp)
      d[8] += a[i + 8] * b[i + 8];
    24e1:	f2 0f 10 54 24 c8    	movsd  -0x38(%rsp),%xmm2
    24e7:	f2 0f 58 d7          	addsd  %xmm7,%xmm2
    24eb:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    24ef:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    24f4:	f2 44 0f 58 f7       	addsd  %xmm7,%xmm14
    24f9:	f2 44 0f 11 74 24 c8 	movsd  %xmm14,-0x38(%rsp)
      d[9] += a[i + 9] * b[i + 9];
    2500:	f2 0f 10 54 24 d0    	movsd  -0x30(%rsp),%xmm2
      d[0] += a[i] * b[i];
    2506:	66 0f 28 bc 24 b8 00 	movapd 0xb8(%rsp),%xmm7
    250d:	00 00 
    250f:	66 0f 12 bc 24 e0 00 	movlpd 0xe0(%rsp),%xmm7
    2516:	00 00 
      d[12] += a[i + 12] * b[i + 12];
    2518:	f2 0f 10 5c 24 e8    	movsd  -0x18(%rsp),%xmm3
      d[0] += a[i] * b[i];
    251e:	66 0f 28 b4 24 e8 00 	movapd 0xe8(%rsp),%xmm6
    2525:	00 00 
      d[14] += a[i + 14] * b[i + 14];
    2527:	f2 0f 10 6c 24 f8    	movsd  -0x8(%rsp),%xmm5
      d[9] += a[i + 9] * b[i + 9];
    252d:	66 44 0f 59 e7       	mulpd  %xmm7,%xmm12
      d[0] += a[i] * b[i];
    2532:	66 0f 28 7c 24 78    	movapd 0x78(%rsp),%xmm7
      d[15] += a[i + 15] * b[i + 15];
    2538:	f2 0f 10 0c 24       	movsd  (%rsp),%xmm1
      d[0] += a[i] * b[i];
    253d:	66 0f 12 bc 24 a0 00 	movlpd 0xa0(%rsp),%xmm7
    2544:	00 00 
    2546:	66 0f 12 b4 24 10 01 	movlpd 0x110(%rsp),%xmm6
    254d:	00 00 
      d[10] += a[i + 10] * b[i + 10];
    254f:	66 44 0f 59 c7       	mulpd  %xmm7,%xmm8
      d[0] += a[i] * b[i];
    2554:	66 0f 28 7c 24 38    	movapd 0x38(%rsp),%xmm7
    255a:	66 0f 12 7c 24 60    	movlpd 0x60(%rsp),%xmm7
      d[9] += a[i + 9] * b[i + 9];
    2560:	f2 41 0f 58 d4       	addsd  %xmm12,%xmm2
      d[11] += a[i + 11] * b[i + 11];
    2565:	66 0f 59 e7          	mulpd  %xmm7,%xmm4
      d[9] += a[i + 9] * b[i + 9];
    2569:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    256e:	66 44 0f 28 d2       	movapd %xmm2,%xmm10
      d[10] += a[i + 10] * b[i + 10];
    2573:	f2 0f 10 54 24 d8    	movsd  -0x28(%rsp),%xmm2
      d[9] += a[i + 9] * b[i + 9];
    2579:	f2 45 0f 58 d4       	addsd  %xmm12,%xmm10
      d[10] += a[i + 10] * b[i + 10];
    257e:	f2 41 0f 58 d0       	addsd  %xmm8,%xmm2
    2583:	66 45 0f 15 c0       	unpckhpd %xmm8,%xmm8
      d[9] += a[i + 9] * b[i + 9];
    2588:	f2 44 0f 11 54 24 d0 	movsd  %xmm10,-0x30(%rsp)
      d[10] += a[i + 10] * b[i + 10];
    258f:	66 44 0f 28 d2       	movapd %xmm2,%xmm10
      d[11] += a[i + 11] * b[i + 11];
    2594:	f2 0f 10 54 24 e0    	movsd  -0x20(%rsp),%xmm2
      d[10] += a[i + 10] * b[i + 10];
    259a:	f2 45 0f 58 d0       	addsd  %xmm8,%xmm10
      d[11] += a[i + 11] * b[i + 11];
    259f:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
    25a3:	66 0f 15 e4          	unpckhpd %xmm4,%xmm4
      d[10] += a[i + 10] * b[i + 10];
    25a7:	f2 44 0f 11 54 24 d8 	movsd  %xmm10,-0x28(%rsp)
      d[11] += a[i + 11] * b[i + 11];
    25ae:	66 0f 28 fa          	movapd %xmm2,%xmm7
      d[0] += a[i] * b[i];
    25b2:	66 0f 28 54 24 08    	movapd 0x8(%rsp),%xmm2
      d[11] += a[i + 11] * b[i + 11];
    25b8:	f2 0f 58 fc          	addsd  %xmm4,%xmm7
      d[0] += a[i] * b[i];
    25bc:	66 41 0f 15 d5       	unpckhpd %xmm13,%xmm2
      d[12] += a[i + 12] * b[i + 12];
    25c1:	66 0f 59 d6          	mulpd  %xmm6,%xmm2
      d[0] += a[i] * b[i];
    25c5:	66 0f 28 b4 24 a8 00 	movapd 0xa8(%rsp),%xmm6
    25cc:	00 00 
    25ce:	66 0f 12 b4 24 d0 00 	movlpd 0xd0(%rsp),%xmm6
    25d5:	00 00 
      d[11] += a[i + 11] * b[i + 11];
    25d7:	f2 0f 11 7c 24 e0    	movsd  %xmm7,-0x20(%rsp)
      d[13] += a[i + 13] * b[i + 13];
    25dd:	66 44 0f 59 de       	mulpd  %xmm6,%xmm11
    25e2:	f2 0f 10 74 24 f0    	movsd  -0x10(%rsp),%xmm6
      d[12] += a[i + 12] * b[i + 12];
    25e8:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    25ec:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
      d[13] += a[i + 13] * b[i + 13];
    25f0:	f2 41 0f 58 f3       	addsd  %xmm11,%xmm6
    25f5:	66 45 0f 15 db       	unpckhpd %xmm11,%xmm11
      d[12] += a[i + 12] * b[i + 12];
    25fa:	66 0f 28 fb          	movapd %xmm3,%xmm7
      d[0] += a[i] * b[i];
    25fe:	66 0f 28 5c 24 68    	movapd 0x68(%rsp),%xmm3
    2604:	66 0f 12 9c 24 90 00 	movlpd 0x90(%rsp),%xmm3
    260b:	00 00 
      d[12] += a[i + 12] * b[i + 12];
    260d:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
      d[0] += a[i] * b[i];
    2611:	66 0f 28 54 24 18    	movapd 0x18(%rsp),%xmm2
      d[14] += a[i + 14] * b[i + 14];
    2617:	66 44 0f 59 fb       	mulpd  %xmm3,%xmm15
      d[0] += a[i] * b[i];
    261c:	66 0f 28 5c 24 28    	movapd 0x28(%rsp),%xmm3
      d[13] += a[i + 13] * b[i + 13];
    2622:	f2 41 0f 58 f3       	addsd  %xmm11,%xmm6
      d[0] += a[i] * b[i];
    2627:	66 0f 12 5c 24 50    	movlpd 0x50(%rsp),%xmm3
    262d:	66 0f 15 c2          	unpckhpd %xmm2,%xmm0
      d[15] += a[i + 15] * b[i + 15];
    2631:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
      d[12] += a[i + 12] * b[i + 12];
    2635:	f2 0f 11 7c 24 e8    	movsd  %xmm7,-0x18(%rsp)
      d[13] += a[i + 13] * b[i + 13];
    263b:	f2 0f 11 74 24 f0    	movsd  %xmm6,-0x10(%rsp)
      d[14] += a[i + 14] * b[i + 14];
    2641:	f2 41 0f 58 ef       	addsd  %xmm15,%xmm5
    2646:	66 45 0f 15 ff       	unpckhpd %xmm15,%xmm15
      d[15] += a[i + 15] * b[i + 15];
    264b:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    264f:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
      d[14] += a[i + 14] * b[i + 14];
    2653:	f2 41 0f 58 ef       	addsd  %xmm15,%xmm5
      d[15] += a[i + 15] * b[i + 15];
    2658:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      d[14] += a[i + 14] * b[i + 14];
    265c:	f2 0f 11 6c 24 f8    	movsd  %xmm5,-0x8(%rsp)
      d[15] += a[i + 15] * b[i + 15];
    2662:	f2 0f 11 0c 24       	movsd  %xmm1,(%rsp)
  for (unsigned long long i = 0; i < n; i += 16)
    2667:	48 39 c1             	cmp    %rax,%rcx
    266a:	0f 85 10 f8 ff ff    	jne    1e80 <dotprod_16x+0xb0>
    2670:	4c 89 c8             	mov    %r9,%rax
    2673:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    2677:	48 89 c2             	mov    %rax,%rdx
    267a:	48 c1 e2 04          	shl    $0x4,%rdx
    267e:	4c 39 c8             	cmp    %r9,%rax
    2681:	0f 84 84 01 00 00    	je     280b <dotprod_16x+0xa3b>
      d[0] += a[i] * b[i];
    2687:	f2 0f 10 04 d6       	movsd  (%rsi,%rdx,8),%xmm0
    268c:	f2 0f 59 04 d7       	mulsd  (%rdi,%rdx,8),%xmm0
    2691:	48 8d 04 d5 00 00 00 	lea    0x0(,%rdx,8),%rax
    2698:	00 
    2699:	f2 0f 58 44 24 88    	addsd  -0x78(%rsp),%xmm0
    269f:	f2 0f 11 44 24 88    	movsd  %xmm0,-0x78(%rsp)
      d[1] += a[i + 1] * b[i + 1];
    26a5:	f2 0f 10 44 06 08    	movsd  0x8(%rsi,%rax,1),%xmm0
    26ab:	f2 0f 59 44 07 08    	mulsd  0x8(%rdi,%rax,1),%xmm0
    26b1:	f2 0f 58 44 24 90    	addsd  -0x70(%rsp),%xmm0
    26b7:	f2 0f 11 44 24 90    	movsd  %xmm0,-0x70(%rsp)
      d[2] += a[i + 2] * b[i + 2];
    26bd:	f2 0f 10 44 06 10    	movsd  0x10(%rsi,%rax,1),%xmm0
    26c3:	f2 0f 59 44 07 10    	mulsd  0x10(%rdi,%rax,1),%xmm0
    26c9:	f2 0f 58 44 24 98    	addsd  -0x68(%rsp),%xmm0
    26cf:	f2 0f 11 44 24 98    	movsd  %xmm0,-0x68(%rsp)
      d[3] += a[i + 3] * b[i + 3];
    26d5:	f2 0f 10 44 06 18    	movsd  0x18(%rsi,%rax,1),%xmm0
    26db:	f2 0f 59 44 07 18    	mulsd  0x18(%rdi,%rax,1),%xmm0
    26e1:	f2 0f 58 44 24 a0    	addsd  -0x60(%rsp),%xmm0
    26e7:	f2 0f 11 44 24 a0    	movsd  %xmm0,-0x60(%rsp)
      d[4] += a[i + 4] * b[i + 4];
    26ed:	f2 0f 10 44 06 20    	movsd  0x20(%rsi,%rax,1),%xmm0
    26f3:	f2 0f 59 44 07 20    	mulsd  0x20(%rdi,%rax,1),%xmm0
    26f9:	f2 0f 58 44 24 a8    	addsd  -0x58(%rsp),%xmm0
    26ff:	f2 0f 11 44 24 a8    	movsd  %xmm0,-0x58(%rsp)
      d[5] += a[i + 5] * b[i + 5];
    2705:	f2 0f 10 44 06 28    	movsd  0x28(%rsi,%rax,1),%xmm0
    270b:	f2 0f 59 44 07 28    	mulsd  0x28(%rdi,%rax,1),%xmm0
    2711:	f2 0f 58 44 24 b0    	addsd  -0x50(%rsp),%xmm0
    2717:	f2 0f 11 44 24 b0    	movsd  %xmm0,-0x50(%rsp)
      d[6] += a[i + 6] * b[i + 6];
    271d:	f2 0f 10 44 06 30    	movsd  0x30(%rsi,%rax,1),%xmm0
    2723:	f2 0f 59 44 07 30    	mulsd  0x30(%rdi,%rax,1),%xmm0
    2729:	f2 0f 58 44 24 b8    	addsd  -0x48(%rsp),%xmm0
    272f:	f2 0f 11 44 24 b8    	movsd  %xmm0,-0x48(%rsp)
      d[7] += a[i + 7] * b[i + 7];
    2735:	f2 0f 10 44 06 38    	movsd  0x38(%rsi,%rax,1),%xmm0
    273b:	f2 0f 59 44 07 38    	mulsd  0x38(%rdi,%rax,1),%xmm0
    2741:	f2 0f 58 44 24 c0    	addsd  -0x40(%rsp),%xmm0
    2747:	f2 0f 11 44 24 c0    	movsd  %xmm0,-0x40(%rsp)
      d[8] += a[i + 8] * b[i + 8];
    274d:	f2 0f 10 44 06 40    	movsd  0x40(%rsi,%rax,1),%xmm0
    2753:	f2 0f 59 44 07 40    	mulsd  0x40(%rdi,%rax,1),%xmm0
    2759:	f2 0f 58 44 24 c8    	addsd  -0x38(%rsp),%xmm0
    275f:	f2 0f 11 44 24 c8    	movsd  %xmm0,-0x38(%rsp)
      d[9] += a[i + 9] * b[i + 9];
    2765:	f2 0f 10 44 06 48    	movsd  0x48(%rsi,%rax,1),%xmm0
    276b:	f2 0f 59 44 07 48    	mulsd  0x48(%rdi,%rax,1),%xmm0
    2771:	f2 0f 58 44 24 d0    	addsd  -0x30(%rsp),%xmm0
    2777:	f2 0f 11 44 24 d0    	movsd  %xmm0,-0x30(%rsp)
      d[10] += a[i + 10] * b[i + 10];
    277d:	f2 0f 10 44 06 50    	movsd  0x50(%rsi,%rax,1),%xmm0
    2783:	f2 0f 59 44 07 50    	mulsd  0x50(%rdi,%rax,1),%xmm0
    2789:	f2 0f 58 44 24 d8    	addsd  -0x28(%rsp),%xmm0
    278f:	f2 0f 11 44 24 d8    	movsd  %xmm0,-0x28(%rsp)
      d[11] += a[i + 11] * b[i + 11];
    2795:	f2 0f 10 44 06 58    	movsd  0x58(%rsi,%rax,1),%xmm0
    279b:	f2 0f 59 44 07 58    	mulsd  0x58(%rdi,%rax,1),%xmm0
    27a1:	f2 0f 58 44 24 e0    	addsd  -0x20(%rsp),%xmm0
    27a7:	f2 0f 11 44 24 e0    	movsd  %xmm0,-0x20(%rsp)
      d[12] += a[i + 12] * b[i + 12];
    27ad:	f2 0f 10 44 06 60    	movsd  0x60(%rsi,%rax,1),%xmm0
    27b3:	f2 0f 59 44 07 60    	mulsd  0x60(%rdi,%rax,1),%xmm0
    27b9:	f2 0f 58 44 24 e8    	addsd  -0x18(%rsp),%xmm0
    27bf:	f2 0f 11 44 24 e8    	movsd  %xmm0,-0x18(%rsp)
      d[13] += a[i + 13] * b[i + 13];
    27c5:	f2 0f 10 44 06 68    	movsd  0x68(%rsi,%rax,1),%xmm0
    27cb:	f2 0f 59 44 07 68    	mulsd  0x68(%rdi,%rax,1),%xmm0
    27d1:	f2 0f 58 44 24 f0    	addsd  -0x10(%rsp),%xmm0
    27d7:	f2 0f 11 44 24 f0    	movsd  %xmm0,-0x10(%rsp)
      d[14] += a[i + 14] * b[i + 14];
    27dd:	f2 0f 10 44 06 70    	movsd  0x70(%rsi,%rax,1),%xmm0
    27e3:	f2 0f 59 44 07 70    	mulsd  0x70(%rdi,%rax,1),%xmm0
    27e9:	f2 0f 58 44 24 f8    	addsd  -0x8(%rsp),%xmm0
    27ef:	f2 0f 11 44 24 f8    	movsd  %xmm0,-0x8(%rsp)
      d[15] += a[i + 15] * b[i + 15];
    27f5:	f2 0f 10 44 06 78    	movsd  0x78(%rsi,%rax,1),%xmm0
    27fb:	f2 0f 59 44 07 78    	mulsd  0x78(%rdi,%rax,1),%xmm0
    2801:	f2 0f 58 04 24       	addsd  (%rsp),%xmm0
    2806:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  if (! test)
    280b:	4d 85 d2             	test   %r10,%r10
    280e:	74 78                	je     2888 <dotprod_16x+0xab8>
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    2810:	f2 0f 10 4c 24 88    	movsd  -0x78(%rsp),%xmm1
    2816:	f2 0f 58 4c 24 90    	addsd  -0x70(%rsp),%xmm1
    281c:	f2 0f 58 4c 24 98    	addsd  -0x68(%rsp),%xmm1
    2822:	f2 0f 58 4c 24 a0    	addsd  -0x60(%rsp),%xmm1
    2828:	f2 0f 58 4c 24 a8    	addsd  -0x58(%rsp),%xmm1
    282e:	f2 0f 58 4c 24 b0    	addsd  -0x50(%rsp),%xmm1
    2834:	f2 0f 58 4c 24 b8    	addsd  -0x48(%rsp),%xmm1
    283a:	f2 0f 58 4c 24 c0    	addsd  -0x40(%rsp),%xmm1
    2840:	f2 0f 58 4c 24 c8    	addsd  -0x38(%rsp),%xmm1
    2846:	f2 0f 58 4c 24 d0    	addsd  -0x30(%rsp),%xmm1
    284c:	f2 0f 58 4c 24 d8    	addsd  -0x28(%rsp),%xmm1
    2852:	f2 0f 58 4c 24 e0    	addsd  -0x20(%rsp),%xmm1
    2858:	f2 0f 58 4c 24 e8    	addsd  -0x18(%rsp),%xmm1
    285e:	f2 0f 58 4c 24 f0    	addsd  -0x10(%rsp),%xmm1
    2864:	f2 44 0f 10 7c 24 f8 	movsd  -0x8(%rsp),%xmm15
    286b:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
}
    2870:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    2877:	f2 44 0f 58 f9       	addsd  %xmm1,%xmm15
    287c:	f2 41 0f 58 c7       	addsd  %xmm15,%xmm0
}
    2881:	c3                   	retq   
    2882:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    2888:	49 83 c0 f1          	add    $0xfffffffffffffff1,%r8
    288c:	73 82                	jae    2810 <dotprod_16x+0xa40>
    288e:	49 c1 e0 03          	shl    $0x3,%r8
	  d[0] += a[i] * b[i];
    2892:	f2 0f 10 44 24 88    	movsd  -0x78(%rsp),%xmm0
    2898:	4a 8d 04 07          	lea    (%rdi,%r8,1),%rax
    289c:	4a 8d 14 06          	lea    (%rsi,%r8,1),%rdx
    28a0:	66 0f 10 1a          	movupd (%rdx),%xmm3
    28a4:	66 0f 10 08          	movupd (%rax),%xmm1
    28a8:	66 0f 10 6a 40       	movupd 0x40(%rdx),%xmm5
    28ad:	66 0f 59 cb          	mulpd  %xmm3,%xmm1
    28b1:	66 0f 10 5a 10       	movupd 0x10(%rdx),%xmm3
    28b6:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    28ba:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    28be:	66 0f 28 d0          	movapd %xmm0,%xmm2
    28c2:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    28c6:	66 0f 10 48 10       	movupd 0x10(%rax),%xmm1
    28cb:	66 0f 59 cb          	mulpd  %xmm3,%xmm1
    28cf:	66 0f 10 5a 20       	movupd 0x20(%rdx),%xmm3
    28d4:	66 0f 28 c1          	movapd %xmm1,%xmm0
    28d8:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    28dc:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    28e0:	66 0f 28 d0          	movapd %xmm0,%xmm2
    28e4:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    28e8:	66 0f 10 48 20       	movupd 0x20(%rax),%xmm1
    28ed:	66 0f 59 cb          	mulpd  %xmm3,%xmm1
    28f1:	66 0f 10 5a 30       	movupd 0x30(%rdx),%xmm3
    28f6:	66 0f 28 c1          	movapd %xmm1,%xmm0
    28fa:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    28fe:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    2902:	66 0f 28 d0          	movapd %xmm0,%xmm2
    2906:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    290a:	66 0f 10 48 30       	movupd 0x30(%rax),%xmm1
    290f:	66 0f 59 cb          	mulpd  %xmm3,%xmm1
    2913:	66 0f 10 5a 50       	movupd 0x50(%rdx),%xmm3
    2918:	66 0f 28 c1          	movapd %xmm1,%xmm0
    291c:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    2920:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    2924:	66 0f 28 d0          	movapd %xmm0,%xmm2
    2928:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    292c:	66 0f 10 48 40       	movupd 0x40(%rax),%xmm1
    2931:	66 0f 59 cd          	mulpd  %xmm5,%xmm1
    2935:	66 0f 28 c1          	movapd %xmm1,%xmm0
    2939:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    293d:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    2941:	66 0f 28 d0          	movapd %xmm0,%xmm2
    2945:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    2949:	66 0f 10 48 50       	movupd 0x50(%rax),%xmm1
    294e:	66 0f 59 cb          	mulpd  %xmm3,%xmm1
    2952:	f2 42 0f 10 5c 06 70 	movsd  0x70(%rsi,%r8,1),%xmm3
    2959:	f2 42 0f 59 5c 07 70 	mulsd  0x70(%rdi,%r8,1),%xmm3
    2960:	66 0f 28 c1          	movapd %xmm1,%xmm0
    2964:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    2968:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    296c:	66 0f 28 d0          	movapd %xmm0,%xmm2
    2970:	66 0f 10 40 60       	movupd 0x60(%rax),%xmm0
    2975:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    2979:	66 0f 10 4a 60       	movupd 0x60(%rdx),%xmm1
    297e:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    2982:	66 0f 28 c8          	movapd %xmm0,%xmm1
    2986:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    298a:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    298e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    2992:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    2996:	f2 0f 11 5c 24 88    	movsd  %xmm3,-0x78(%rsp)
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    299c:	e9 6f fe ff ff       	jmpq   2810 <dotprod_16x+0xa40>
    29a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  double d[16] = {0.0};
    29a8:	66 0f ef f6          	pxor   %xmm6,%xmm6
    29ac:	f2 0f 11 34 24       	movsd  %xmm6,(%rsp)
    29b1:	f2 0f 11 74 24 f8    	movsd  %xmm6,-0x8(%rsp)
    29b7:	f2 0f 11 74 24 f0    	movsd  %xmm6,-0x10(%rsp)
    29bd:	f2 0f 11 74 24 e8    	movsd  %xmm6,-0x18(%rsp)
    29c3:	f2 0f 11 74 24 e0    	movsd  %xmm6,-0x20(%rsp)
    29c9:	f2 0f 11 74 24 d8    	movsd  %xmm6,-0x28(%rsp)
    29cf:	f2 0f 11 74 24 d0    	movsd  %xmm6,-0x30(%rsp)
    29d5:	f2 0f 11 74 24 c8    	movsd  %xmm6,-0x38(%rsp)
    29db:	f2 0f 11 74 24 c0    	movsd  %xmm6,-0x40(%rsp)
    29e1:	f2 0f 11 74 24 b8    	movsd  %xmm6,-0x48(%rsp)
    29e7:	f2 0f 11 74 24 b0    	movsd  %xmm6,-0x50(%rsp)
    29ed:	f2 0f 11 74 24 a8    	movsd  %xmm6,-0x58(%rsp)
    29f3:	f2 0f 11 74 24 a0    	movsd  %xmm6,-0x60(%rsp)
    29f9:	f2 0f 11 74 24 98    	movsd  %xmm6,-0x68(%rsp)
    29ff:	f2 0f 11 74 24 90    	movsd  %xmm6,-0x70(%rsp)
    2a05:	f2 0f 11 74 24 88    	movsd  %xmm6,-0x78(%rsp)
    2a0b:	e9 00 fe ff ff       	jmpq   2810 <dotprod_16x+0xa40>
    2a10:	66 0f ef e4          	pxor   %xmm4,%xmm4
  for (unsigned long long i = 0; i < n; i += 16)
    2a14:	31 d2                	xor    %edx,%edx
  double d[16] = {0.0};
    2a16:	f2 0f 11 24 24       	movsd  %xmm4,(%rsp)
    2a1b:	f2 0f 11 64 24 f8    	movsd  %xmm4,-0x8(%rsp)
    2a21:	f2 0f 11 64 24 f0    	movsd  %xmm4,-0x10(%rsp)
    2a27:	f2 0f 11 64 24 e8    	movsd  %xmm4,-0x18(%rsp)
    2a2d:	f2 0f 11 64 24 e0    	movsd  %xmm4,-0x20(%rsp)
    2a33:	f2 0f 11 64 24 d8    	movsd  %xmm4,-0x28(%rsp)
    2a39:	f2 0f 11 64 24 d0    	movsd  %xmm4,-0x30(%rsp)
    2a3f:	f2 0f 11 64 24 c8    	movsd  %xmm4,-0x38(%rsp)
    2a45:	f2 0f 11 64 24 c0    	movsd  %xmm4,-0x40(%rsp)
    2a4b:	f2 0f 11 64 24 b8    	movsd  %xmm4,-0x48(%rsp)
    2a51:	f2 0f 11 64 24 b0    	movsd  %xmm4,-0x50(%rsp)
    2a57:	f2 0f 11 64 24 a8    	movsd  %xmm4,-0x58(%rsp)
    2a5d:	f2 0f 11 64 24 a0    	movsd  %xmm4,-0x60(%rsp)
    2a63:	f2 0f 11 64 24 98    	movsd  %xmm4,-0x68(%rsp)
    2a69:	f2 0f 11 64 24 90    	movsd  %xmm4,-0x70(%rsp)
    2a6f:	f2 0f 11 64 24 88    	movsd  %xmm4,-0x78(%rsp)
    2a75:	e9 0d fc ff ff       	jmpq   2687 <dotprod_16x+0x8b7>
    2a7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000002a80 <__libc_csu_init>:
    2a80:	f3 0f 1e fa          	endbr64 
    2a84:	41 57                	push   %r15
    2a86:	4c 8d 3d 5b 23 00 00 	lea    0x235b(%rip),%r15        # 4de8 <__frame_dummy_init_array_entry>
    2a8d:	41 56                	push   %r14
    2a8f:	49 89 d6             	mov    %rdx,%r14
    2a92:	41 55                	push   %r13
    2a94:	49 89 f5             	mov    %rsi,%r13
    2a97:	41 54                	push   %r12
    2a99:	41 89 fc             	mov    %edi,%r12d
    2a9c:	55                   	push   %rbp
    2a9d:	48 8d 2d 4c 23 00 00 	lea    0x234c(%rip),%rbp        # 4df0 <__do_global_dtors_aux_fini_array_entry>
    2aa4:	53                   	push   %rbx
    2aa5:	4c 29 fd             	sub    %r15,%rbp
    2aa8:	48 83 ec 08          	sub    $0x8,%rsp
    2aac:	e8 4f e5 ff ff       	callq  1000 <_init>
    2ab1:	48 c1 fd 03          	sar    $0x3,%rbp
    2ab5:	74 1f                	je     2ad6 <__libc_csu_init+0x56>
    2ab7:	31 db                	xor    %ebx,%ebx
    2ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ac0:	4c 89 f2             	mov    %r14,%rdx
    2ac3:	4c 89 ee             	mov    %r13,%rsi
    2ac6:	44 89 e7             	mov    %r12d,%edi
    2ac9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2acd:	48 83 c3 01          	add    $0x1,%rbx
    2ad1:	48 39 dd             	cmp    %rbx,%rbp
    2ad4:	75 ea                	jne    2ac0 <__libc_csu_init+0x40>
    2ad6:	48 83 c4 08          	add    $0x8,%rsp
    2ada:	5b                   	pop    %rbx
    2adb:	5d                   	pop    %rbp
    2adc:	41 5c                	pop    %r12
    2ade:	41 5d                	pop    %r13
    2ae0:	41 5e                	pop    %r14
    2ae2:	41 5f                	pop    %r15
    2ae4:	c3                   	retq   
    2ae5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2aec:	00 00 00 00 

0000000000002af0 <__libc_csu_fini>:
    2af0:	f3 0f 1e fa          	endbr64 
    2af4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000002af8 <_fini>:
    2af8:	f3 0f 1e fa          	endbr64 
    2afc:	48 83 ec 08          	sub    $0x8,%rsp
    2b00:	48 83 c4 08          	add    $0x8,%rsp
    2b04:	c3                   	retq   
