
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
    1089:	e8 32 03 00 00       	callq  13c0 <parse_args>

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
    10bc:	0f 84 c9 01 00 00    	je     128b <main+0x20b>
    10c2:	49 83 fd 01          	cmp    $0x1,%r13
    10c6:	0f 84 c8 01 00 00    	je     1294 <main+0x214>
    10cc:	4c 89 ea             	mov    %r13,%rdx
    10cf:	66 0f 28 0d 79 0f 00 	movapd 0xf79(%rip),%xmm1        # 2050 <_IO_stdin_used+0x50>
    10d6:	00 
    10d7:	66 0f 28 05 81 0f 00 	movapd 0xf81(%rip),%xmm0        # 2060 <_IO_stdin_used+0x60>
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
    1110:	48 8b 0d 59 0f 00 00 	mov    0xf59(%rip),%rcx        # 2070 <_IO_stdin_used+0x70>
    1117:	49 89 0c c4          	mov    %rcx,(%r12,%rax,8)
      b[i] = 1.0;
    111b:	48 8b 0d 56 0f 00 00 	mov    0xf56(%rip),%rcx        # 2078 <_IO_stdin_used+0x78>
    1122:	48 89 4c c5 00       	mov    %rcx,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1127:	49 83 fd 01          	cmp    $0x1,%r13
    112b:	0f 84 4f 01 00 00    	je     1280 <main+0x200>
    1131:	4c 89 ea             	mov    %r13,%rdx
    1134:	31 c0                	xor    %eax,%eax
    1136:	66 0f ef d2          	pxor   %xmm2,%xmm2
    113a:	48 d1 ea             	shr    %rdx
    113d:	48 c1 e2 04          	shl    $0x4,%rdx
    1141:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    d += a[i] * b[i];
    1148:	66 41 0f 28 04 04    	movapd (%r12,%rax,1),%xmm0
    114e:	66 0f 59 44 05 00    	mulpd  0x0(%rbp,%rax,1),%xmm0
    1154:	48 83 c0 10          	add    $0x10,%rax
    1158:	66 0f 58 d0          	addpd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; ++i)
    115c:	48 39 c2             	cmp    %rax,%rdx
    115f:	75 e7                	jne    1148 <main+0xc8>
    1161:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1165:	4c 89 e8             	mov    %r13,%rax
    1168:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
    116c:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1170:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1174:	41 f6 c5 01          	test   $0x1,%r13b
    1178:	74 10                	je     118a <main+0x10a>
    d += a[i] * b[i];
    117a:	f2 0f 10 44 c5 00    	movsd  0x0(%rbp,%rax,8),%xmm0
    1180:	f2 41 0f 59 04 c4    	mulsd  (%r12,%rax,8),%xmm0
    1186:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
    118a:	48 89 ee             	mov    %rbp,%rsi
    118d:	4c 89 e7             	mov    %r12,%rdi
    1190:	4c 89 ea             	mov    %r13,%rdx
    1193:	f2 0f 11 4c 24 28    	movsd  %xmm1,0x28(%rsp)
    1199:	e8 d2 02 00 00       	callq  1470 <dotprod_2x>
  double res_4x = dotprod_4x(a, b, n);
    119e:	4c 89 ea             	mov    %r13,%rdx
  double res_2x = dotprod_2x(a, b, n);
    11a1:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
  double res_4x = dotprod_4x(a, b, n);
    11a7:	e8 94 03 00 00       	callq  1540 <dotprod_4x>
  double res_8x = dotprod_8x(a, b, n);
    11ac:	4c 89 ea             	mov    %r13,%rdx
  double res_4x = dotprod_4x(a, b, n);
    11af:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
  double res_8x = dotprod_8x(a, b, n);
    11b5:	e8 76 04 00 00       	callq  1630 <dotprod_8x>
  double res_16x = dotprod_16x(a, b, n);
    11ba:	4c 89 ea             	mov    %r13,%rdx
    11bd:	48 89 ee             	mov    %rbp,%rsi
    11c0:	4c 89 e7             	mov    %r12,%rdi
  double res_8x = dotprod_8x(a, b, n);
    11c3:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    11c9:	e8 f2 05 00 00       	callq  17c0 <dotprod_16x>

  // Print result
  printf("res = %lf\n", res);
    11ce:	f2 0f 10 4c 24 28    	movsd  0x28(%rsp),%xmm1
    11d4:	b8 01 00 00 00       	mov    $0x1,%eax
    11d9:	48 8d 3d 24 0e 00 00 	lea    0xe24(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
  double res_16x = dotprod_16x(a, b, n);
    11e0:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  printf("res = %lf\n", res);
    11e6:	66 0f 28 c1          	movapd %xmm1,%xmm0
    11ea:	e8 51 fe ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    11ef:	f2 0f 10 6c 24 20    	movsd  0x20(%rsp),%xmm5
    11f5:	b8 01 00 00 00       	mov    $0x1,%eax
    11fa:	48 8d 3d 0e 0e 00 00 	lea    0xe0e(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    1201:	66 0f 28 c5          	movapd %xmm5,%xmm0
    1205:	e8 36 fe ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    120a:	f2 0f 10 64 24 18    	movsd  0x18(%rsp),%xmm4
    1210:	b8 01 00 00 00       	mov    $0x1,%eax
    1215:	48 8d 3d 01 0e 00 00 	lea    0xe01(%rip),%rdi        # 201d <_IO_stdin_used+0x1d>
    121c:	66 0f 28 c4          	movapd %xmm4,%xmm0
    1220:	e8 1b fe ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    1225:	f2 0f 10 5c 24 10    	movsd  0x10(%rsp),%xmm3
    122b:	b8 01 00 00 00       	mov    $0x1,%eax
    1230:	48 8d 3d f4 0d 00 00 	lea    0xdf4(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    1237:	66 0f 28 c3          	movapd %xmm3,%xmm0
    123b:	e8 00 fe ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    1240:	f2 0f 10 54 24 08    	movsd  0x8(%rsp),%xmm2
    1246:	b8 01 00 00 00       	mov    $0x1,%eax
    124b:	48 8d 3d e7 0d 00 00 	lea    0xde7(%rip),%rdi        # 2039 <_IO_stdin_used+0x39>
    1252:	66 0f 28 c2          	movapd %xmm2,%xmm0
    1256:	e8 e5 fd ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    125b:	4c 89 e7             	mov    %r12,%rdi
    125e:	e8 cd fd ff ff       	callq  1030 <free@plt>
  free(b);
    1263:	48 89 ef             	mov    %rbp,%rdi
    1266:	e8 c5 fd ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    126b:	48 83 c4 30          	add    $0x30,%rsp
    126f:	31 c0                	xor    %eax,%eax
    1271:	5d                   	pop    %rbp
    1272:	41 5c                	pop    %r12
    1274:	41 5d                	pop    %r13
    1276:	c3                   	retq   
    1277:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    127e:	00 00 
      b[i] = 1.0;
    1280:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1284:	31 c0                	xor    %eax,%eax
    1286:	e9 ef fe ff ff       	jmpq   117a <main+0xfa>
  double d = 0.0;
    128b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    128f:	e9 f6 fe ff ff       	jmpq   118a <main+0x10a>
  for (unsigned long long i = 0; i < n; i++)
    1294:	31 c0                	xor    %eax,%eax
    1296:	e9 75 fe ff ff       	jmpq   1110 <main+0x90>
    129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012a0 <set_fast_math>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    12a9:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    12b0:	00 
    12b1:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    12b6:	c3                   	retq   
    12b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12be:	00 00 

00000000000012c0 <_start>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	31 ed                	xor    %ebp,%ebp
    12c6:	49 89 d1             	mov    %rdx,%r9
    12c9:	5e                   	pop    %rsi
    12ca:	48 89 e2             	mov    %rsp,%rdx
    12cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    12d1:	50                   	push   %rax
    12d2:	54                   	push   %rsp
    12d3:	4c 8d 05 76 08 00 00 	lea    0x876(%rip),%r8        # 1b50 <__libc_csu_fini>
    12da:	48 8d 0d ff 07 00 00 	lea    0x7ff(%rip),%rcx        # 1ae0 <__libc_csu_init>
    12e1:	48 8d 3d 98 fd ff ff 	lea    -0x268(%rip),%rdi        # 1080 <main>
    12e8:	ff 15 f2 2c 00 00    	callq  *0x2cf2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    12ee:	f4                   	hlt    
    12ef:	90                   	nop

00000000000012f0 <deregister_tm_clones>:
    12f0:	48 8d 3d 59 2d 00 00 	lea    0x2d59(%rip),%rdi        # 4050 <__TMC_END__>
    12f7:	48 8d 05 52 2d 00 00 	lea    0x2d52(%rip),%rax        # 4050 <__TMC_END__>
    12fe:	48 39 f8             	cmp    %rdi,%rax
    1301:	74 15                	je     1318 <deregister_tm_clones+0x28>
    1303:	48 8b 05 ce 2c 00 00 	mov    0x2cce(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    130a:	48 85 c0             	test   %rax,%rax
    130d:	74 09                	je     1318 <deregister_tm_clones+0x28>
    130f:	ff e0                	jmpq   *%rax
    1311:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1318:	c3                   	retq   
    1319:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001320 <register_tm_clones>:
    1320:	48 8d 3d 29 2d 00 00 	lea    0x2d29(%rip),%rdi        # 4050 <__TMC_END__>
    1327:	48 8d 35 22 2d 00 00 	lea    0x2d22(%rip),%rsi        # 4050 <__TMC_END__>
    132e:	48 29 fe             	sub    %rdi,%rsi
    1331:	48 89 f0             	mov    %rsi,%rax
    1334:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1338:	48 c1 f8 03          	sar    $0x3,%rax
    133c:	48 01 c6             	add    %rax,%rsi
    133f:	48 d1 fe             	sar    %rsi
    1342:	74 14                	je     1358 <register_tm_clones+0x38>
    1344:	48 8b 05 a5 2c 00 00 	mov    0x2ca5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    134b:	48 85 c0             	test   %rax,%rax
    134e:	74 08                	je     1358 <register_tm_clones+0x38>
    1350:	ff e0                	jmpq   *%rax
    1352:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1358:	c3                   	retq   
    1359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001360 <__do_global_dtors_aux>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	80 3d e5 2c 00 00 00 	cmpb   $0x0,0x2ce5(%rip)        # 4050 <__TMC_END__>
    136b:	75 33                	jne    13a0 <__do_global_dtors_aux+0x40>
    136d:	55                   	push   %rbp
    136e:	48 83 3d 82 2c 00 00 	cmpq   $0x0,0x2c82(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1375:	00 
    1376:	48 89 e5             	mov    %rsp,%rbp
    1379:	74 0d                	je     1388 <__do_global_dtors_aux+0x28>
    137b:	48 8b 3d c6 2c 00 00 	mov    0x2cc6(%rip),%rdi        # 4048 <__dso_handle>
    1382:	ff 15 70 2c 00 00    	callq  *0x2c70(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1388:	e8 63 ff ff ff       	callq  12f0 <deregister_tm_clones>
    138d:	c6 05 bc 2c 00 00 01 	movb   $0x1,0x2cbc(%rip)        # 4050 <__TMC_END__>
    1394:	5d                   	pop    %rbp
    1395:	c3                   	retq   
    1396:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    139d:	00 00 00 
    13a0:	c3                   	retq   
    13a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    13a8:	00 00 00 00 
    13ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000013b0 <frame_dummy>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	e9 67 ff ff ff       	jmpq   1320 <register_tm_clones>
    13b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013c0 <parse_args>:
  if (argc != 2)
    13c0:	83 ff 02             	cmp    $0x2,%edi
    13c3:	75 10                	jne    13d5 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    13c5:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    13c9:	ba 0a 00 00 00       	mov    $0xa,%edx
    13ce:	31 f6                	xor    %esi,%esi
    13d0:	e9 7b fc ff ff       	jmpq   1050 <strtoll@plt>
{
    13d5:	50                   	push   %rax
    exit(ARGS);
    13d6:	bf 01 00 00 00       	mov    $0x1,%edi
    13db:	e8 80 fc ff ff       	callq  1060 <exit@plt>

00000000000013e0 <dotprod>:
  for (unsigned long long i = 0; i < n; ++i)
    13e0:	48 85 d2             	test   %rdx,%rdx
    13e3:	74 6b                	je     1450 <dotprod+0x70>
    13e5:	48 83 fa 01          	cmp    $0x1,%rdx
    13e9:	74 6e                	je     1459 <dotprod+0x79>
    13eb:	48 89 d1             	mov    %rdx,%rcx
    13ee:	31 c0                	xor    %eax,%eax
    13f0:	66 0f ef d2          	pxor   %xmm2,%xmm2
    13f4:	48 d1 e9             	shr    %rcx
    13f7:	48 c1 e1 04          	shl    $0x4,%rcx
    13fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1400:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
    1405:	66 0f 10 1c 06       	movupd (%rsi,%rax,1),%xmm3
    140a:	48 83 c0 10          	add    $0x10,%rax
    140e:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1412:	66 0f 58 d0          	addpd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; ++i)
    1416:	48 39 c1             	cmp    %rax,%rcx
    1419:	75 e5                	jne    1400 <dotprod+0x20>
    141b:	48 89 d0             	mov    %rdx,%rax
    141e:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1422:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
    1426:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    142a:	83 e2 01             	and    $0x1,%edx
    142d:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1431:	74 0e                	je     1441 <dotprod+0x61>
    d += a[i] * b[i];
    1433:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    1438:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    143d:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
}
    1441:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1445:	c3                   	retq   
    1446:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    144d:	00 00 00 
  double d = 0.0;
    1450:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    1454:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1458:	c3                   	retq   
  for (unsigned long long i = 0; i < n; ++i)
    1459:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    145b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    145f:	eb d2                	jmp    1433 <dotprod+0x53>
    1461:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1468:	00 00 00 00 
    146c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001470 <dotprod_2x>:
  if (n & 1)
    1470:	48 89 d1             	mov    %rdx,%rcx
    1473:	83 e1 01             	and    $0x1,%ecx
    1476:	75 58                	jne    14d0 <dotprod_2x+0x60>
      for (unsigned long long i = 0; i < n; i += 2)
    1478:	48 85 d2             	test   %rdx,%rdx
    147b:	0f 84 af 00 00 00    	je     1530 <dotprod_2x+0xc0>
    1481:	48 83 ea 01          	sub    $0x1,%rdx
    1485:	31 c0                	xor    %eax,%eax
    1487:	66 0f ef c9          	pxor   %xmm1,%xmm1
    148b:	48 d1 ea             	shr    %rdx
    148e:	48 83 c2 01          	add    $0x1,%rdx
    1492:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	  d[0] += a[i] * b[i];
    1498:	66 0f 10 04 06       	movupd (%rsi,%rax,1),%xmm0
    149d:	66 0f 10 24 07       	movupd (%rdi,%rax,1),%xmm4
      for (unsigned long long i = 0; i < n; i += 2)
    14a2:	48 83 c1 01          	add    $0x1,%rcx
    14a6:	48 83 c0 10          	add    $0x10,%rax
	  d[0] += a[i] * b[i];
    14aa:	66 0f 59 c4          	mulpd  %xmm4,%xmm0
    14ae:	66 0f 58 c8          	addpd  %xmm0,%xmm1
      for (unsigned long long i = 0; i < n; i += 2)
    14b2:	48 39 d1             	cmp    %rdx,%rcx
    14b5:	72 e1                	jb     1498 <dotprod_2x+0x28>
      return d[0] + d[1];
    14b7:	66 0f 28 f1          	movapd %xmm1,%xmm6
    14bb:	66 0f 28 c1          	movapd %xmm1,%xmm0
    14bf:	66 0f 15 f6          	unpckhpd %xmm6,%xmm6
    14c3:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
}
    14c7:	c3                   	retq   
    14c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    14cf:	00 
      for (unsigned long long i = 0; i < n_1; i += 2)
    14d0:	48 83 fa 01          	cmp    $0x1,%rdx
    14d4:	74 62                	je     1538 <dotprod_2x+0xc8>
    14d6:	4c 8d 42 fe          	lea    -0x2(%rdx),%r8
    14da:	31 c0                	xor    %eax,%eax
    14dc:	66 0f ef d2          	pxor   %xmm2,%xmm2
    14e0:	31 c9                	xor    %ecx,%ecx
    14e2:	49 d1 e8             	shr    %r8
    14e5:	49 83 c0 01          	add    $0x1,%r8
    14e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  d[0] += a[i] * b[i];
    14f0:	66 0f 10 04 06       	movupd (%rsi,%rax,1),%xmm0
    14f5:	66 0f 10 1c 07       	movupd (%rdi,%rax,1),%xmm3
      for (unsigned long long i = 0; i < n_1; i += 2)
    14fa:	48 83 c1 01          	add    $0x1,%rcx
    14fe:	48 83 c0 10          	add    $0x10,%rax
	  d[0] += a[i] * b[i];
    1502:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1506:	66 0f 58 d0          	addpd  %xmm0,%xmm2
      for (unsigned long long i = 0; i < n_1; i += 2)
    150a:	4c 39 c1             	cmp    %r8,%rcx
    150d:	72 e1                	jb     14f0 <dotprod_2x+0x80>
      return d[0] + d[1] + a[n-1] * b[n-1];
    150f:	66 0f 28 ea          	movapd %xmm2,%xmm5
    1513:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
    1517:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    151b:	f2 0f 10 44 d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm0
    1521:	f2 0f 59 44 d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm0
    1527:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    152b:	c3                   	retq   
    152c:	0f 1f 40 00          	nopl   0x0(%rax)
      for (unsigned long long i = 0; i < n; i += 2)
    1530:	66 0f ef c0          	pxor   %xmm0,%xmm0
    1534:	c3                   	retq   
    1535:	0f 1f 00             	nopl   (%rax)
      for (unsigned long long i = 0; i < n_1; i += 2)
    1538:	66 0f ef d2          	pxor   %xmm2,%xmm2
    153c:	eb dd                	jmp    151b <dotprod_2x+0xab>
    153e:	66 90                	xchg   %ax,%ax

0000000000001540 <dotprod_4x>:
  unsigned long long test = n % 4;
    1540:	49 89 d1             	mov    %rdx,%r9
{
    1543:	49 89 d0             	mov    %rdx,%r8
  unsigned long long test = n % 4;
    1546:	41 83 e1 03          	and    $0x3,%r9d
  for (unsigned long long i = 0; i < n; i += 4)
    154a:	48 85 d2             	test   %rdx,%rdx
    154d:	0f 84 bd 00 00 00    	je     1610 <dotprod_4x+0xd0>
    1553:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    1557:	66 0f ef c9          	pxor   %xmm1,%xmm1
    155b:	31 c0                	xor    %eax,%eax
    155d:	31 d2                	xor    %edx,%edx
    155f:	48 c1 e9 02          	shr    $0x2,%rcx
    1563:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1567:	48 83 c1 01          	add    $0x1,%rcx
    156b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      d[0] += a[i] * b[i];
    1570:	66 0f 10 04 06       	movupd (%rsi,%rax,1),%xmm0
    1575:	66 0f 10 34 07       	movupd (%rdi,%rax,1),%xmm6
    157a:	48 83 c2 01          	add    $0x1,%rdx
    157e:	66 0f 10 7c 07 10    	movupd 0x10(%rdi,%rax,1),%xmm7
    1584:	66 0f 59 c6          	mulpd  %xmm6,%xmm0
    1588:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    158c:	66 0f 10 44 06 10    	movupd 0x10(%rsi,%rax,1),%xmm0
    1592:	48 83 c0 20          	add    $0x20,%rax
    1596:	66 0f 59 c7          	mulpd  %xmm7,%xmm0
    159a:	66 0f 58 c8          	addpd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i += 4)
    159e:	48 39 d1             	cmp    %rdx,%rcx
    15a1:	77 cd                	ja     1570 <dotprod_4x+0x30>
    15a3:	66 0f 28 da          	movapd %xmm2,%xmm3
    15a7:	66 0f 28 c1          	movapd %xmm1,%xmm0
    15ab:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    15af:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
  if (! test)
    15b3:	4d 85 c9             	test   %r9,%r9
    15b6:	74 18                	je     15d0 <dotprod_4x+0x90>
  return d[0] + d[1] + d[2] + d[3];
    15b8:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    15bc:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    15c0:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    15c4:	66 0f 28 c1          	movapd %xmm1,%xmm0
}
    15c8:	c3                   	retq   
    15c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    15d0:	49 83 c0 fd          	add    $0xfffffffffffffffd,%r8
    15d4:	73 e2                	jae    15b8 <dotprod_4x+0x78>
	  d[0] += a[i] * b[i];
    15d6:	66 42 0f 10 24 c7    	movupd (%rdi,%r8,8),%xmm4
    15dc:	66 42 0f 10 2c c6    	movupd (%rsi,%r8,8),%xmm5
    15e2:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    15e6:	66 0f 28 e5          	movapd %xmm5,%xmm4
    15ea:	66 0f 15 e5          	unpckhpd %xmm5,%xmm4
    15ee:	66 0f 58 e5          	addpd  %xmm5,%xmm4
    15f2:	f2 42 0f 10 6c c6 10 	movsd  0x10(%rsi,%r8,8),%xmm5
    15f9:	f2 42 0f 59 6c c7 10 	mulsd  0x10(%rdi,%r8,8),%xmm5
    1600:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    1604:	f2 0f 58 dc          	addsd  %xmm4,%xmm3
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1608:	eb ae                	jmp    15b8 <dotprod_4x+0x78>
    160a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  double d[4] = {0.0};
    1610:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1614:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1618:	66 0f 28 d1          	movapd %xmm1,%xmm2
    161c:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1620:	eb 96                	jmp    15b8 <dotprod_4x+0x78>
    1622:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1629:	00 00 00 00 
    162d:	0f 1f 00             	nopl   (%rax)

0000000000001630 <dotprod_8x>:
  unsigned long long test = n % 8;
    1630:	49 89 d2             	mov    %rdx,%r10
{
    1633:	49 89 f9             	mov    %rdi,%r9
    1636:	49 89 f0             	mov    %rsi,%r8
    1639:	48 89 d7             	mov    %rdx,%rdi
  unsigned long long test = n % 8;
    163c:	41 83 e2 07          	and    $0x7,%r10d
  for (unsigned long long i = 0; i < n; i += 8)
    1640:	48 85 d2             	test   %rdx,%rdx
    1643:	0f 84 47 01 00 00    	je     1790 <dotprod_8x+0x160>
    1649:	48 8d 72 ff          	lea    -0x1(%rdx),%rsi
    164d:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1651:	4c 89 c2             	mov    %r8,%rdx
    1654:	4c 89 c8             	mov    %r9,%rax
    1657:	48 c1 ee 03          	shr    $0x3,%rsi
    165b:	66 0f 28 d1          	movapd %xmm1,%xmm2
    165f:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1663:	31 c9                	xor    %ecx,%ecx
    1665:	48 83 c6 01          	add    $0x1,%rsi
    1669:	66 0f 28 e1          	movapd %xmm1,%xmm4
    166d:	0f 1f 00             	nopl   (%rax)
      d[0] += a[i] * b[i];
    1670:	66 0f 10 28          	movupd (%rax),%xmm5
    1674:	66 0f 10 02          	movupd (%rdx),%xmm0
    1678:	48 83 c1 01          	add    $0x1,%rcx
    167c:	48 83 c2 40          	add    $0x40,%rdx
    1680:	66 0f 10 70 10       	movupd 0x10(%rax),%xmm6
    1685:	66 0f 10 78 20       	movupd 0x20(%rax),%xmm7
    168a:	48 83 c0 40          	add    $0x40,%rax
    168e:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
    1692:	66 0f 10 68 f0       	movupd -0x10(%rax),%xmm5
    1697:	66 0f 58 e0          	addpd  %xmm0,%xmm4
    169b:	66 0f 10 42 d0       	movupd -0x30(%rdx),%xmm0
    16a0:	66 0f 59 c6          	mulpd  %xmm6,%xmm0
    16a4:	66 0f 58 d8          	addpd  %xmm0,%xmm3
    16a8:	66 0f 10 42 e0       	movupd -0x20(%rdx),%xmm0
    16ad:	66 0f 59 c7          	mulpd  %xmm7,%xmm0
    16b1:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    16b5:	66 0f 10 42 f0       	movupd -0x10(%rdx),%xmm0
    16ba:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
    16be:	66 0f 58 c8          	addpd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i += 8)
    16c2:	48 39 ce             	cmp    %rcx,%rsi
    16c5:	77 a9                	ja     1670 <dotprod_8x+0x40>
    16c7:	66 0f 28 c4          	movapd %xmm4,%xmm0
    16cb:	66 0f 28 fb          	movapd %xmm3,%xmm7
    16cf:	66 0f 28 ea          	movapd %xmm2,%xmm5
    16d3:	66 0f 28 f1          	movapd %xmm1,%xmm6
    16d7:	66 0f 15 e4          	unpckhpd %xmm4,%xmm4
    16db:	66 0f 15 db          	unpckhpd %xmm3,%xmm3
    16df:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    16e3:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
  if (! test)
    16e7:	4d 85 d2             	test   %r10,%r10
    16ea:	74 24                	je     1710 <dotprod_8x+0xe0>
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    16ec:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    16f0:	f2 0f 58 e7          	addsd  %xmm7,%xmm4
    16f4:	f2 0f 58 d5          	addsd  %xmm5,%xmm2
    16f8:	f2 0f 58 ce          	addsd  %xmm6,%xmm1
    16fc:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    1700:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1704:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
}
    1708:	c3                   	retq   
    1709:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1710:	48 83 c7 f9          	add    $0xfffffffffffffff9,%rdi
    1714:	73 d6                	jae    16ec <dotprod_8x+0xbc>
    1716:	48 c1 e7 03          	shl    $0x3,%rdi
    171a:	49 8d 04 39          	lea    (%r9,%rdi,1),%rax
    171e:	49 8d 14 38          	lea    (%r8,%rdi,1),%rdx
	  d[0] += a[i] * b[i];
    1722:	66 44 0f 10 40 10    	movupd 0x10(%rax),%xmm8
    1728:	66 44 0f 10 5a 10    	movupd 0x10(%rdx),%xmm11
    172e:	66 44 0f 10 0a       	movupd (%rdx),%xmm9
    1733:	66 44 0f 10 20       	movupd (%rax),%xmm12
    1738:	66 45 0f 59 c3       	mulpd  %xmm11,%xmm8
    173d:	66 44 0f 10 50 20    	movupd 0x20(%rax),%xmm10
    1743:	66 45 0f 59 cc       	mulpd  %xmm12,%xmm9
    1748:	66 45 0f 58 c8       	addpd  %xmm8,%xmm9
    174d:	66 44 0f 10 42 20    	movupd 0x20(%rdx),%xmm8
    1753:	66 45 0f 59 c2       	mulpd  %xmm10,%xmm8
    1758:	66 45 0f 58 c1       	addpd  %xmm9,%xmm8
    175d:	66 45 0f 28 c8       	movapd %xmm8,%xmm9
    1762:	66 45 0f 15 c8       	unpckhpd %xmm8,%xmm9
    1767:	66 45 0f 58 c1       	addpd  %xmm9,%xmm8
    176c:	f2 45 0f 10 4c 38 30 	movsd  0x30(%r8,%rdi,1),%xmm9
    1773:	f2 45 0f 59 4c 39 30 	mulsd  0x30(%r9,%rdi,1),%xmm9
    177a:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    177f:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1784:	e9 63 ff ff ff       	jmpq   16ec <dotprod_8x+0xbc>
    1789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  double d[8] = {0.0};
    1790:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1794:	66 0f 28 f1          	movapd %xmm1,%xmm6
    1798:	66 0f 28 d1          	movapd %xmm1,%xmm2
    179c:	66 0f 28 e9          	movapd %xmm1,%xmm5
    17a0:	66 0f 28 d9          	movapd %xmm1,%xmm3
    17a4:	66 0f 28 f9          	movapd %xmm1,%xmm7
    17a8:	66 0f 28 e1          	movapd %xmm1,%xmm4
    17ac:	66 0f 28 c1          	movapd %xmm1,%xmm0
    17b0:	e9 37 ff ff ff       	jmpq   16ec <dotprod_8x+0xbc>
    17b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    17bc:	00 00 00 00 

00000000000017c0 <dotprod_16x>:
  unsigned long long test = n % 16;
    17c0:	49 89 d2             	mov    %rdx,%r10
{
    17c3:	49 89 f9             	mov    %rdi,%r9
    17c6:	49 89 f0             	mov    %rsi,%r8
    17c9:	48 89 d7             	mov    %rdx,%rdi
  unsigned long long test = n % 16;
    17cc:	41 83 e2 0f          	and    $0xf,%r10d
  for (unsigned long long i = 0; i < n; i += 16)
    17d0:	48 85 d2             	test   %rdx,%rdx
    17d3:	0f 84 a7 02 00 00    	je     1a80 <dotprod_16x+0x2c0>
    17d9:	48 8d 72 ff          	lea    -0x1(%rdx),%rsi
    17dd:	66 0f ef d2          	pxor   %xmm2,%xmm2
    17e1:	4c 89 c2             	mov    %r8,%rdx
    17e4:	4c 89 c8             	mov    %r9,%rax
    17e7:	48 c1 ee 04          	shr    $0x4,%rsi
    17eb:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    17f0:	66 0f 28 ca          	movapd %xmm2,%xmm1
    17f4:	31 c9                	xor    %ecx,%ecx
    17f6:	66 0f 28 da          	movapd %xmm2,%xmm3
    17fa:	66 0f 28 e2          	movapd %xmm2,%xmm4
    17fe:	66 0f 28 ea          	movapd %xmm2,%xmm5
    1802:	48 83 c6 01          	add    $0x1,%rsi
    1806:	66 0f 28 c2          	movapd %xmm2,%xmm0
    180a:	66 0f 28 f2          	movapd %xmm2,%xmm6
    180e:	66 90                	xchg   %ax,%ax
      d[0] += a[i] * b[i];
    1810:	66 44 0f 10 08       	movupd (%rax),%xmm9
    1815:	66 0f 10 3a          	movupd (%rdx),%xmm7
    1819:	48 83 c1 01          	add    $0x1,%rcx
    181d:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
    1821:	66 44 0f 10 50 10    	movupd 0x10(%rax),%xmm10
    1827:	66 44 0f 10 58 20    	movupd 0x20(%rax),%xmm11
    182d:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    1831:	66 41 0f 59 f9       	mulpd  %xmm9,%xmm7
    1836:	66 44 0f 10 78 b0    	movupd -0x50(%rax),%xmm15
    183c:	66 44 0f 10 60 c0    	movupd -0x40(%rax),%xmm12
    1842:	66 44 0f 10 68 d0    	movupd -0x30(%rax),%xmm13
    1848:	66 44 0f 10 40 e0    	movupd -0x20(%rax),%xmm8
    184e:	66 44 0f 10 48 f0    	movupd -0x10(%rax),%xmm9
    1854:	66 0f 58 f7          	addpd  %xmm7,%xmm6
    1858:	66 0f 10 7a 90       	movupd -0x70(%rdx),%xmm7
    185d:	66 41 0f 59 fa       	mulpd  %xmm10,%xmm7
    1862:	66 0f 58 c7          	addpd  %xmm7,%xmm0
    1866:	66 0f 10 7a a0       	movupd -0x60(%rdx),%xmm7
    186b:	66 41 0f 59 fb       	mulpd  %xmm11,%xmm7
    1870:	66 0f 58 ef          	addpd  %xmm7,%xmm5
    1874:	66 0f 10 7a b0       	movupd -0x50(%rdx),%xmm7
    1879:	66 41 0f 59 ff       	mulpd  %xmm15,%xmm7
    187e:	66 0f 58 e7          	addpd  %xmm7,%xmm4
    1882:	66 0f 10 7a c0       	movupd -0x40(%rdx),%xmm7
    1887:	66 41 0f 59 fc       	mulpd  %xmm12,%xmm7
    188c:	66 0f 58 df          	addpd  %xmm7,%xmm3
    1890:	66 0f 10 7a d0       	movupd -0x30(%rdx),%xmm7
    1895:	66 41 0f 59 fd       	mulpd  %xmm13,%xmm7
    189a:	66 0f 58 cf          	addpd  %xmm7,%xmm1
    189e:	66 0f 10 7a e0       	movupd -0x20(%rdx),%xmm7
    18a3:	66 41 0f 59 f8       	mulpd  %xmm8,%xmm7
    18a8:	66 44 0f 58 f7       	addpd  %xmm7,%xmm14
    18ad:	66 0f 10 7a f0       	movupd -0x10(%rdx),%xmm7
    18b2:	66 41 0f 59 f9       	mulpd  %xmm9,%xmm7
    18b7:	66 0f 58 d7          	addpd  %xmm7,%xmm2
  for (unsigned long long i = 0; i < n; i += 16)
    18bb:	48 39 ce             	cmp    %rcx,%rsi
    18be:	0f 87 4c ff ff ff    	ja     1810 <dotprod_16x+0x50>
    18c4:	66 44 0f 28 e6       	movapd %xmm6,%xmm12
    18c9:	66 44 0f 28 c5       	movapd %xmm5,%xmm8
    18ce:	66 44 0f 28 d4       	movapd %xmm4,%xmm10
    18d3:	66 0f 17 44 24 d0    	movhpd %xmm0,-0x30(%rsp)
    18d9:	66 0f 15 f6          	unpckhpd %xmm6,%xmm6
    18dd:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
    18e1:	66 0f 15 e4          	unpckhpd %xmm4,%xmm4
    18e5:	66 0f 17 5c 24 d8    	movhpd %xmm3,-0x28(%rsp)
    18eb:	66 45 0f 28 ee       	movapd %xmm14,%xmm13
    18f0:	66 44 0f 28 fa       	movapd %xmm2,%xmm15
    18f5:	66 44 0f 28 d8       	movapd %xmm0,%xmm11
    18fa:	66 0f 17 4c 24 e0    	movhpd %xmm1,-0x20(%rsp)
    1900:	66 0f 28 fb          	movapd %xmm3,%xmm7
    1904:	66 44 0f 28 c9       	movapd %xmm1,%xmm9
    1909:	66 45 0f 15 f6       	unpckhpd %xmm14,%xmm14
    190e:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
  if (! test)
    1912:	4d 85 d2             	test   %r10,%r10
    1915:	74 59                	je     1970 <dotprod_16x+0x1b0>
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    1917:	f2 0f 10 44 24 d0    	movsd  -0x30(%rsp),%xmm0
    191d:	f2 41 0f 58 f3       	addsd  %xmm11,%xmm6
    1922:	f2 44 0f 58 c5       	addsd  %xmm5,%xmm8
    1927:	f2 0f 10 4c 24 e0    	movsd  -0x20(%rsp),%xmm1
    192d:	f2 41 0f 58 e2       	addsd  %xmm10,%xmm4
    1932:	f2 0f 58 7c 24 d8    	addsd  -0x28(%rsp),%xmm7
    1938:	f2 41 0f 58 c4       	addsd  %xmm12,%xmm0
    193d:	f2 45 0f 58 e9       	addsd  %xmm9,%xmm13
    1942:	f2 41 0f 58 ce       	addsd  %xmm14,%xmm1
    1947:	f2 41 0f 58 d7       	addsd  %xmm15,%xmm2
    194c:	f2 44 0f 58 c4       	addsd  %xmm4,%xmm8
    1951:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
    1955:	f2 41 0f 58 fd       	addsd  %xmm13,%xmm7
    195a:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    195e:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    1963:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    1967:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
}
    196b:	c3                   	retq   
    196c:	0f 1f 40 00          	nopl   0x0(%rax)
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1970:	48 83 c7 f1          	add    $0xfffffffffffffff1,%rdi
    1974:	73 a1                	jae    1917 <dotprod_16x+0x157>
    1976:	48 c1 e7 03          	shl    $0x3,%rdi
    197a:	49 8d 04 39          	lea    (%r9,%rdi,1),%rax
    197e:	49 8d 14 38          	lea    (%r8,%rdi,1),%rdx
	  d[0] += a[i] * b[i];
    1982:	66 0f 10 48 10       	movupd 0x10(%rax),%xmm1
    1987:	66 0f 10 42 10       	movupd 0x10(%rdx),%xmm0
    198c:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    1990:	66 0f 10 08          	movupd (%rax),%xmm1
    1994:	66 0f 28 d8          	movapd %xmm0,%xmm3
    1998:	66 0f 10 02          	movupd (%rdx),%xmm0
    199c:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    19a0:	66 0f 28 c8          	movapd %xmm0,%xmm1
    19a4:	66 0f 28 c3          	movapd %xmm3,%xmm0
    19a8:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    19ac:	66 0f 10 4a 20       	movupd 0x20(%rdx),%xmm1
    19b1:	0f 29 44 24 e8       	movaps %xmm0,-0x18(%rsp)
    19b6:	66 0f 10 40 20       	movupd 0x20(%rax),%xmm0
    19bb:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    19bf:	66 0f 10 4a 30       	movupd 0x30(%rdx),%xmm1
    19c4:	66 0f 28 d8          	movapd %xmm0,%xmm3
    19c8:	66 0f 10 40 30       	movupd 0x30(%rax),%xmm0
    19cd:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    19d1:	66 0f 28 c8          	movapd %xmm0,%xmm1
    19d5:	66 0f 28 c3          	movapd %xmm3,%xmm0
    19d9:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    19dd:	66 0f 28 c8          	movapd %xmm0,%xmm1
    19e1:	66 0f 28 44 24 e8    	movapd -0x18(%rsp),%xmm0
    19e7:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    19eb:	66 0f 10 4a 40       	movupd 0x40(%rdx),%xmm1
    19f0:	0f 29 44 24 e8       	movaps %xmm0,-0x18(%rsp)
    19f5:	66 0f 10 40 40       	movupd 0x40(%rax),%xmm0
    19fa:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    19fe:	66 0f 10 4a 50       	movupd 0x50(%rdx),%xmm1
    1a03:	66 0f 28 d8          	movapd %xmm0,%xmm3
    1a07:	66 0f 10 40 50       	movupd 0x50(%rax),%xmm0
    1a0c:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    1a10:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a14:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1a18:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    1a1c:	66 0f 10 48 60       	movupd 0x60(%rax),%xmm1
    1a21:	49 8b 44 38 70       	mov    0x70(%r8,%rdi,1),%rax
    1a26:	66 0f 28 d8          	movapd %xmm0,%xmm3
    1a2a:	66 0f 10 42 60       	movupd 0x60(%rdx),%xmm0
    1a2f:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
    1a33:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a37:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1a3b:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    1a3f:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a43:	66 0f 28 44 24 e8    	movapd -0x18(%rsp),%xmm0
    1a49:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    1a4d:	66 0f 28 d8          	movapd %xmm0,%xmm3
    1a51:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a55:	66 0f 15 d8          	unpckhpd %xmm0,%xmm3
    1a59:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1a5d:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    1a61:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a65:	66 48 0f 6e c0       	movq   %rax,%xmm0
    1a6a:	f2 41 0f 59 44 39 70 	mulsd  0x70(%r9,%rdi,1),%xmm0
    1a71:	f2 44 0f 58 e0       	addsd  %xmm0,%xmm12
    1a76:	f2 44 0f 58 e1       	addsd  %xmm1,%xmm12
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1a7b:	e9 97 fe ff ff       	jmpq   1917 <dotprod_16x+0x157>
  double d[16] = {0.0};
    1a80:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1a84:	66 44 0f 28 fa       	movapd %xmm2,%xmm15
    1a89:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    1a8e:	66 44 0f 28 ea       	movapd %xmm2,%xmm13
    1a93:	f2 0f 11 54 24 e0    	movsd  %xmm2,-0x20(%rsp)
    1a99:	66 44 0f 28 ca       	movapd %xmm2,%xmm9
    1a9e:	f2 0f 11 54 24 d8    	movsd  %xmm2,-0x28(%rsp)
    1aa4:	66 0f 28 fa          	movapd %xmm2,%xmm7
    1aa8:	66 0f 28 e2          	movapd %xmm2,%xmm4
    1aac:	66 44 0f 28 d2       	movapd %xmm2,%xmm10
    1ab1:	66 0f 28 ea          	movapd %xmm2,%xmm5
    1ab5:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
    1aba:	f2 0f 11 54 24 d0    	movsd  %xmm2,-0x30(%rsp)
    1ac0:	66 44 0f 28 da       	movapd %xmm2,%xmm11
    1ac5:	66 0f 28 f2          	movapd %xmm2,%xmm6
    1ac9:	66 44 0f 28 e2       	movapd %xmm2,%xmm12
    1ace:	e9 44 fe ff ff       	jmpq   1917 <dotprod_16x+0x157>
    1ad3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1ada:	00 00 00 
    1add:	0f 1f 00             	nopl   (%rax)

0000000000001ae0 <__libc_csu_init>:
    1ae0:	f3 0f 1e fa          	endbr64 
    1ae4:	41 57                	push   %r15
    1ae6:	4c 8d 3d f3 22 00 00 	lea    0x22f3(%rip),%r15        # 3de0 <__frame_dummy_init_array_entry>
    1aed:	41 56                	push   %r14
    1aef:	49 89 d6             	mov    %rdx,%r14
    1af2:	41 55                	push   %r13
    1af4:	49 89 f5             	mov    %rsi,%r13
    1af7:	41 54                	push   %r12
    1af9:	41 89 fc             	mov    %edi,%r12d
    1afc:	55                   	push   %rbp
    1afd:	48 8d 2d ec 22 00 00 	lea    0x22ec(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1b04:	53                   	push   %rbx
    1b05:	4c 29 fd             	sub    %r15,%rbp
    1b08:	48 83 ec 08          	sub    $0x8,%rsp
    1b0c:	e8 ef f4 ff ff       	callq  1000 <_init>
    1b11:	48 c1 fd 03          	sar    $0x3,%rbp
    1b15:	74 1f                	je     1b36 <__libc_csu_init+0x56>
    1b17:	31 db                	xor    %ebx,%ebx
    1b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b20:	4c 89 f2             	mov    %r14,%rdx
    1b23:	4c 89 ee             	mov    %r13,%rsi
    1b26:	44 89 e7             	mov    %r12d,%edi
    1b29:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1b2d:	48 83 c3 01          	add    $0x1,%rbx
    1b31:	48 39 dd             	cmp    %rbx,%rbp
    1b34:	75 ea                	jne    1b20 <__libc_csu_init+0x40>
    1b36:	48 83 c4 08          	add    $0x8,%rsp
    1b3a:	5b                   	pop    %rbx
    1b3b:	5d                   	pop    %rbp
    1b3c:	41 5c                	pop    %r12
    1b3e:	41 5d                	pop    %r13
    1b40:	41 5e                	pop    %r14
    1b42:	41 5f                	pop    %r15
    1b44:	c3                   	retq   
    1b45:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1b4c:	00 00 00 00 

0000000000001b50 <__libc_csu_fini>:
    1b50:	f3 0f 1e fa          	endbr64 
    1b54:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001b58 <_fini>:
    1b58:	f3 0f 1e fa          	endbr64 
    1b5c:	48 83 ec 08          	sub    $0x8,%rsp
    1b60:	48 83 c4 08          	add    $0x8,%rsp
    1b64:	c3                   	retq   
