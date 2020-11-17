
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
  
  return d;
}

int main(int argc, char **argv)
{
    1080:	41 54                	push   %r12
    1082:	55                   	push   %rbp
    1083:	53                   	push   %rbx
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    1084:	e8 47 02 00 00       	callq  12d0 <parse_args>

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1089:	bf 40 00 00 00       	mov    $0x40,%edi
    108e:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    1095:	00 
  unsigned long long n = parse_args(argc, argv);
    1096:	48 89 c3             	mov    %rax,%rbx
  double *a = aligned_alloc(64, n * sizeof(double));
    1099:	48 89 ee             	mov    %rbp,%rsi
    109c:	e8 cf ff ff ff       	callq  1070 <aligned_alloc@plt>
  double *b = aligned_alloc(64, n * sizeof(double));
    10a1:	48 89 ee             	mov    %rbp,%rsi
    10a4:	bf 40 00 00 00       	mov    $0x40,%edi
  double *a = aligned_alloc(64, n * sizeof(double));
    10a9:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    10ac:	e8 bf ff ff ff       	callq  1070 <aligned_alloc@plt>
    10b1:	48 89 c5             	mov    %rax,%rbp
  for (unsigned long long i = 0; i < n; i++)
    10b4:	48 85 db             	test   %rbx,%rbx
    10b7:	0f 84 fb 00 00 00    	je     11b8 <main+0x138>
    10bd:	48 83 fb 01          	cmp    $0x1,%rbx
    10c1:	0f 84 f7 00 00 00    	je     11be <main+0x13e>
    10c7:	48 89 da             	mov    %rbx,%rdx
    10ca:	66 0f 28 0d 3e 0f 00 	movapd 0xf3e(%rip),%xmm1        # 2010 <_IO_stdin_used+0x10>
    10d1:	00 
    10d2:	66 0f 28 05 46 0f 00 	movapd 0xf46(%rip),%xmm0        # 2020 <_IO_stdin_used+0x20>
    10d9:	00 
    10da:	31 c0                	xor    %eax,%eax
    10dc:	48 d1 ea             	shr    %rdx
    10df:	48 c1 e2 04          	shl    $0x4,%rdx
    10e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    10e8:	41 0f 29 0c 04       	movaps %xmm1,(%r12,%rax,1)
      b[i] = 0.001;
    10ed:	0f 29 44 05 00       	movaps %xmm0,0x0(%rbp,%rax,1)
  for (unsigned long long i = 0; i < n; i++)
    10f2:	48 83 c0 10          	add    $0x10,%rax
    10f6:	48 39 c2             	cmp    %rax,%rdx
    10f9:	75 ed                	jne    10e8 <main+0x68>
    10fb:	48 89 d8             	mov    %rbx,%rax
    10fe:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1102:	f6 c3 01             	test   $0x1,%bl
    1105:	74 21                	je     1128 <main+0xa8>
      a[i] = 0.1;
    1107:	48 8b 0d 22 0f 00 00 	mov    0xf22(%rip),%rcx        # 2030 <_IO_stdin_used+0x30>
      b[i] = 0.001;
    110e:	48 8b 35 23 0f 00 00 	mov    0xf23(%rip),%rsi        # 2038 <_IO_stdin_used+0x38>
      a[i] = 0.1;
    1115:	49 89 0c c4          	mov    %rcx,(%r12,%rax,8)
      b[i] = 0.001;
    1119:	48 89 74 c5 00       	mov    %rsi,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    111e:	48 83 fb 01          	cmp    $0x1,%rbx
    1122:	0f 84 88 00 00 00    	je     11b0 <main+0x130>
    1128:	48 89 da             	mov    %rbx,%rdx
    112b:	31 c0                	xor    %eax,%eax
    112d:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1131:	48 d1 ea             	shr    %rdx
    1134:	48 c1 e2 04          	shl    $0x4,%rdx
    1138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    113f:	00 
    d += a[i] * b[i];
    1140:	66 0f 28 44 05 00    	movapd 0x0(%rbp,%rax,1),%xmm0
    1146:	66 41 0f 59 04 04    	mulpd  (%r12,%rax,1),%xmm0
    114c:	48 83 c0 10          	add    $0x10,%rax
    1150:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1154:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1158:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i++)
    115c:	48 39 c2             	cmp    %rax,%rdx
    115f:	75 df                	jne    1140 <main+0xc0>
    1161:	48 89 d8             	mov    %rbx,%rax
    1164:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1168:	83 e3 01             	and    $0x1,%ebx
    116b:	74 10                	je     117d <main+0xfd>
    d += a[i] * b[i];
    116d:	f2 0f 10 44 c5 00    	movsd  0x0(%rbp,%rax,8),%xmm0
    1173:	f2 41 0f 59 04 c4    	mulsd  (%r12,%rax,8),%xmm0
    1179:	f2 0f 58 c8          	addsd  %xmm0,%xmm1

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    117d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1181:	48 8d 3d 7c 0e 00 00 	lea    0xe7c(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1188:	b8 01 00 00 00       	mov    $0x1,%eax
    118d:	e8 ae fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1192:	4c 89 e7             	mov    %r12,%rdi
    1195:	e8 96 fe ff ff       	callq  1030 <free@plt>
  free(b);
    119a:	48 89 ef             	mov    %rbp,%rdi
    119d:	e8 8e fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    11a2:	5b                   	pop    %rbx
    11a3:	31 c0                	xor    %eax,%eax
    11a5:	5d                   	pop    %rbp
    11a6:	41 5c                	pop    %r12
    11a8:	c3                   	retq   
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      b[i] = 0.001;
    11b0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    11b4:	31 c0                	xor    %eax,%eax
    11b6:	eb b5                	jmp    116d <main+0xed>
  double d = 0.0;
    11b8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    11bc:	eb bf                	jmp    117d <main+0xfd>
  for (unsigned long long i = 0; i < n; i++)
    11be:	31 c0                	xor    %eax,%eax
    11c0:	e9 42 ff ff ff       	jmpq   1107 <main+0x87>
    11c5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11cc:	00 00 00 
    11cf:	90                   	nop

00000000000011d0 <_start>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	31 ed                	xor    %ebp,%ebp
    11d6:	49 89 d1             	mov    %rdx,%r9
    11d9:	5e                   	pop    %rsi
    11da:	48 89 e2             	mov    %rsp,%rdx
    11dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11e1:	50                   	push   %rax
    11e2:	54                   	push   %rsp
    11e3:	4c 8d 05 f6 01 00 00 	lea    0x1f6(%rip),%r8        # 13e0 <__libc_csu_fini>
    11ea:	48 8d 0d 7f 01 00 00 	lea    0x17f(%rip),%rcx        # 1370 <__libc_csu_init>
    11f1:	48 8d 3d 88 fe ff ff 	lea    -0x178(%rip),%rdi        # 1080 <main>
    11f8:	ff 15 e2 2d 00 00    	callq  *0x2de2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    11fe:	f4                   	hlt    
    11ff:	90                   	nop

0000000000001200 <deregister_tm_clones>:
    1200:	48 8d 3d 49 2e 00 00 	lea    0x2e49(%rip),%rdi        # 4050 <__TMC_END__>
    1207:	48 8d 05 42 2e 00 00 	lea    0x2e42(%rip),%rax        # 4050 <__TMC_END__>
    120e:	48 39 f8             	cmp    %rdi,%rax
    1211:	74 15                	je     1228 <deregister_tm_clones+0x28>
    1213:	48 8b 05 be 2d 00 00 	mov    0x2dbe(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    121a:	48 85 c0             	test   %rax,%rax
    121d:	74 09                	je     1228 <deregister_tm_clones+0x28>
    121f:	ff e0                	jmpq   *%rax
    1221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1228:	c3                   	retq   
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <register_tm_clones>:
    1230:	48 8d 3d 19 2e 00 00 	lea    0x2e19(%rip),%rdi        # 4050 <__TMC_END__>
    1237:	48 8d 35 12 2e 00 00 	lea    0x2e12(%rip),%rsi        # 4050 <__TMC_END__>
    123e:	48 29 fe             	sub    %rdi,%rsi
    1241:	48 89 f0             	mov    %rsi,%rax
    1244:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1248:	48 c1 f8 03          	sar    $0x3,%rax
    124c:	48 01 c6             	add    %rax,%rsi
    124f:	48 d1 fe             	sar    %rsi
    1252:	74 14                	je     1268 <register_tm_clones+0x38>
    1254:	48 8b 05 95 2d 00 00 	mov    0x2d95(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    125b:	48 85 c0             	test   %rax,%rax
    125e:	74 08                	je     1268 <register_tm_clones+0x38>
    1260:	ff e0                	jmpq   *%rax
    1262:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1268:	c3                   	retq   
    1269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001270 <__do_global_dtors_aux>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	80 3d d5 2d 00 00 00 	cmpb   $0x0,0x2dd5(%rip)        # 4050 <__TMC_END__>
    127b:	75 33                	jne    12b0 <__do_global_dtors_aux+0x40>
    127d:	55                   	push   %rbp
    127e:	48 83 3d 72 2d 00 00 	cmpq   $0x0,0x2d72(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1285:	00 
    1286:	48 89 e5             	mov    %rsp,%rbp
    1289:	74 0d                	je     1298 <__do_global_dtors_aux+0x28>
    128b:	48 8b 3d b6 2d 00 00 	mov    0x2db6(%rip),%rdi        # 4048 <__dso_handle>
    1292:	ff 15 60 2d 00 00    	callq  *0x2d60(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1298:	e8 63 ff ff ff       	callq  1200 <deregister_tm_clones>
    129d:	c6 05 ac 2d 00 00 01 	movb   $0x1,0x2dac(%rip)        # 4050 <__TMC_END__>
    12a4:	5d                   	pop    %rbp
    12a5:	c3                   	retq   
    12a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12ad:	00 00 00 
    12b0:	c3                   	retq   
    12b1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12b8:	00 00 00 00 
    12bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012c0 <frame_dummy>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	e9 67 ff ff ff       	jmpq   1230 <register_tm_clones>
    12c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012d0 <parse_args>:
  if (argc != 2)
    12d0:	83 ff 02             	cmp    $0x2,%edi
    12d3:	75 10                	jne    12e5 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    12d5:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12d9:	ba 0a 00 00 00       	mov    $0xa,%edx
    12de:	31 f6                	xor    %esi,%esi
    12e0:	e9 6b fd ff ff       	jmpq   1050 <strtoll@plt>
{
    12e5:	50                   	push   %rax
    exit(ARGS);
    12e6:	bf 01 00 00 00       	mov    $0x1,%edi
    12eb:	e8 70 fd ff ff       	callq  1060 <exit@plt>

00000000000012f0 <dotprod>:
  for (unsigned long long i = 0; i < n; i++)
    12f0:	48 85 d2             	test   %rdx,%rdx
    12f3:	74 63                	je     1358 <dotprod+0x68>
    12f5:	48 83 fa 01          	cmp    $0x1,%rdx
    12f9:	74 66                	je     1361 <dotprod+0x71>
    12fb:	48 89 d1             	mov    %rdx,%rcx
    12fe:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    1300:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1304:	48 d1 e9             	shr    %rcx
    1307:	48 c1 e1 04          	shl    $0x4,%rcx
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1310:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
    1315:	66 0f 10 1c 06       	movupd (%rsi,%rax,1),%xmm3
    131a:	48 83 c0 10          	add    $0x10,%rax
    131e:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1322:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1326:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    132a:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i++)
    132e:	48 39 c1             	cmp    %rax,%rcx
    1331:	75 dd                	jne    1310 <dotprod+0x20>
    1333:	48 89 d0             	mov    %rdx,%rax
    1336:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    133a:	83 e2 01             	and    $0x1,%edx
    133d:	74 0e                	je     134d <dotprod+0x5d>
    d += a[i] * b[i];
    133f:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    1344:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    1349:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
}
    134d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1351:	c3                   	retq   
    1352:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  double d = 0.0;
    1358:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    135c:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1360:	c3                   	retq   
  for (unsigned long long i = 0; i < n; i++)
    1361:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    1363:	66 0f ef c9          	pxor   %xmm1,%xmm1
    1367:	eb d6                	jmp    133f <dotprod+0x4f>
    1369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001370 <__libc_csu_init>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	41 57                	push   %r15
    1376:	4c 8d 3d 6b 2a 00 00 	lea    0x2a6b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    137d:	41 56                	push   %r14
    137f:	49 89 d6             	mov    %rdx,%r14
    1382:	41 55                	push   %r13
    1384:	49 89 f5             	mov    %rsi,%r13
    1387:	41 54                	push   %r12
    1389:	41 89 fc             	mov    %edi,%r12d
    138c:	55                   	push   %rbp
    138d:	48 8d 2d 5c 2a 00 00 	lea    0x2a5c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1394:	53                   	push   %rbx
    1395:	4c 29 fd             	sub    %r15,%rbp
    1398:	48 83 ec 08          	sub    $0x8,%rsp
    139c:	e8 5f fc ff ff       	callq  1000 <_init>
    13a1:	48 c1 fd 03          	sar    $0x3,%rbp
    13a5:	74 1f                	je     13c6 <__libc_csu_init+0x56>
    13a7:	31 db                	xor    %ebx,%ebx
    13a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13b0:	4c 89 f2             	mov    %r14,%rdx
    13b3:	4c 89 ee             	mov    %r13,%rsi
    13b6:	44 89 e7             	mov    %r12d,%edi
    13b9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    13bd:	48 83 c3 01          	add    $0x1,%rbx
    13c1:	48 39 dd             	cmp    %rbx,%rbp
    13c4:	75 ea                	jne    13b0 <__libc_csu_init+0x40>
    13c6:	48 83 c4 08          	add    $0x8,%rsp
    13ca:	5b                   	pop    %rbx
    13cb:	5d                   	pop    %rbp
    13cc:	41 5c                	pop    %r12
    13ce:	41 5d                	pop    %r13
    13d0:	41 5e                	pop    %r14
    13d2:	41 5f                	pop    %r15
    13d4:	c3                   	retq   
    13d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    13dc:	00 00 00 00 

00000000000013e0 <__libc_csu_fini>:
    13e0:	f3 0f 1e fa          	endbr64 
    13e4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000013e8 <_fini>:
    13e8:	f3 0f 1e fa          	endbr64 
    13ec:	48 83 ec 08          	sub    $0x8,%rsp
    13f0:	48 83 c4 08          	add    $0x8,%rsp
    13f4:	c3                   	retq   
