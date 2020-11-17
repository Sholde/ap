
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
  
  return d;
}

int main(int argc, char **argv)
{
    1080:	41 54                	push   %r12
    1082:	55                   	push   %rbp
    1083:	53                   	push   %rbx
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    1084:	e8 67 02 00 00       	callq  12f0 <parse_args>

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
    112d:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1131:	48 d1 ea             	shr    %rdx
    1134:	48 c1 e2 04          	shl    $0x4,%rdx
    1138:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    113f:	00 
    d += a[i] * b[i];
    1140:	66 41 0f 28 04 04    	movapd (%r12,%rax,1),%xmm0
    1146:	66 0f 59 44 05 00    	mulpd  0x0(%rbp,%rax,1),%xmm0
    114c:	48 83 c0 10          	add    $0x10,%rax
    1150:	66 0f 58 d0          	addpd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; i++)
    1154:	48 39 c2             	cmp    %rax,%rdx
    1157:	75 e7                	jne    1140 <main+0xc0>
    1159:	48 89 d8             	mov    %rbx,%rax
    115c:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1160:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
    1164:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1168:	83 e3 01             	and    $0x1,%ebx
    116b:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    116f:	74 10                	je     1181 <main+0x101>
    d += a[i] * b[i];
    1171:	f2 0f 10 44 c5 00    	movsd  0x0(%rbp,%rax,8),%xmm0
    1177:	f2 41 0f 59 04 c4    	mulsd  (%r12,%rax,8),%xmm0
    117d:	f2 0f 58 c8          	addsd  %xmm0,%xmm1

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    1181:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1185:	48 8d 3d 78 0e 00 00 	lea    0xe78(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    118c:	b8 01 00 00 00       	mov    $0x1,%eax
    1191:	e8 aa fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1196:	4c 89 e7             	mov    %r12,%rdi
    1199:	e8 92 fe ff ff       	callq  1030 <free@plt>
  free(b);
    119e:	48 89 ef             	mov    %rbp,%rdi
    11a1:	e8 8a fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    11a6:	5b                   	pop    %rbx
    11a7:	31 c0                	xor    %eax,%eax
    11a9:	5d                   	pop    %rbp
    11aa:	41 5c                	pop    %r12
    11ac:	c3                   	retq   
    11ad:	0f 1f 00             	nopl   (%rax)
      b[i] = 0.001;
    11b0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    11b4:	31 c0                	xor    %eax,%eax
    11b6:	eb b9                	jmp    1171 <main+0xf1>
  double d = 0.0;
    11b8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    11bc:	eb c3                	jmp    1181 <main+0x101>
  for (unsigned long long i = 0; i < n; i++)
    11be:	31 c0                	xor    %eax,%eax
    11c0:	e9 42 ff ff ff       	jmpq   1107 <main+0x87>
    11c5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11cc:	00 00 00 
    11cf:	90                   	nop

00000000000011d0 <set_fast_math>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    11d9:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    11e0:	00 
    11e1:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    11e6:	c3                   	retq   
    11e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11ee:	00 00 

00000000000011f0 <_start>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	31 ed                	xor    %ebp,%ebp
    11f6:	49 89 d1             	mov    %rdx,%r9
    11f9:	5e                   	pop    %rsi
    11fa:	48 89 e2             	mov    %rsp,%rdx
    11fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1201:	50                   	push   %rax
    1202:	54                   	push   %rsp
    1203:	4c 8d 05 06 02 00 00 	lea    0x206(%rip),%r8        # 1410 <__libc_csu_fini>
    120a:	48 8d 0d 8f 01 00 00 	lea    0x18f(%rip),%rcx        # 13a0 <__libc_csu_init>
    1211:	48 8d 3d 68 fe ff ff 	lea    -0x198(%rip),%rdi        # 1080 <main>
    1218:	ff 15 c2 2d 00 00    	callq  *0x2dc2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    121e:	f4                   	hlt    
    121f:	90                   	nop

0000000000001220 <deregister_tm_clones>:
    1220:	48 8d 3d 29 2e 00 00 	lea    0x2e29(%rip),%rdi        # 4050 <__TMC_END__>
    1227:	48 8d 05 22 2e 00 00 	lea    0x2e22(%rip),%rax        # 4050 <__TMC_END__>
    122e:	48 39 f8             	cmp    %rdi,%rax
    1231:	74 15                	je     1248 <deregister_tm_clones+0x28>
    1233:	48 8b 05 9e 2d 00 00 	mov    0x2d9e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    123a:	48 85 c0             	test   %rax,%rax
    123d:	74 09                	je     1248 <deregister_tm_clones+0x28>
    123f:	ff e0                	jmpq   *%rax
    1241:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1248:	c3                   	retq   
    1249:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001250 <register_tm_clones>:
    1250:	48 8d 3d f9 2d 00 00 	lea    0x2df9(%rip),%rdi        # 4050 <__TMC_END__>
    1257:	48 8d 35 f2 2d 00 00 	lea    0x2df2(%rip),%rsi        # 4050 <__TMC_END__>
    125e:	48 29 fe             	sub    %rdi,%rsi
    1261:	48 89 f0             	mov    %rsi,%rax
    1264:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1268:	48 c1 f8 03          	sar    $0x3,%rax
    126c:	48 01 c6             	add    %rax,%rsi
    126f:	48 d1 fe             	sar    %rsi
    1272:	74 14                	je     1288 <register_tm_clones+0x38>
    1274:	48 8b 05 75 2d 00 00 	mov    0x2d75(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    127b:	48 85 c0             	test   %rax,%rax
    127e:	74 08                	je     1288 <register_tm_clones+0x38>
    1280:	ff e0                	jmpq   *%rax
    1282:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1288:	c3                   	retq   
    1289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001290 <__do_global_dtors_aux>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	80 3d b5 2d 00 00 00 	cmpb   $0x0,0x2db5(%rip)        # 4050 <__TMC_END__>
    129b:	75 33                	jne    12d0 <__do_global_dtors_aux+0x40>
    129d:	55                   	push   %rbp
    129e:	48 83 3d 52 2d 00 00 	cmpq   $0x0,0x2d52(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12a5:	00 
    12a6:	48 89 e5             	mov    %rsp,%rbp
    12a9:	74 0d                	je     12b8 <__do_global_dtors_aux+0x28>
    12ab:	48 8b 3d 96 2d 00 00 	mov    0x2d96(%rip),%rdi        # 4048 <__dso_handle>
    12b2:	ff 15 40 2d 00 00    	callq  *0x2d40(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12b8:	e8 63 ff ff ff       	callq  1220 <deregister_tm_clones>
    12bd:	c6 05 8c 2d 00 00 01 	movb   $0x1,0x2d8c(%rip)        # 4050 <__TMC_END__>
    12c4:	5d                   	pop    %rbp
    12c5:	c3                   	retq   
    12c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12cd:	00 00 00 
    12d0:	c3                   	retq   
    12d1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12d8:	00 00 00 00 
    12dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012e0 <frame_dummy>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	e9 67 ff ff ff       	jmpq   1250 <register_tm_clones>
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012f0 <parse_args>:
  if (argc != 2)
    12f0:	83 ff 02             	cmp    $0x2,%edi
    12f3:	75 10                	jne    1305 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    12f5:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12f9:	ba 0a 00 00 00       	mov    $0xa,%edx
    12fe:	31 f6                	xor    %esi,%esi
    1300:	e9 4b fd ff ff       	jmpq   1050 <strtoll@plt>
{
    1305:	50                   	push   %rax
    exit(ARGS);
    1306:	bf 01 00 00 00       	mov    $0x1,%edi
    130b:	e8 50 fd ff ff       	callq  1060 <exit@plt>

0000000000001310 <dotprod>:
  for (unsigned long long i = 0; i < n; i++)
    1310:	48 85 d2             	test   %rdx,%rdx
    1313:	74 6b                	je     1380 <dotprod+0x70>
    1315:	48 83 fa 01          	cmp    $0x1,%rdx
    1319:	74 6e                	je     1389 <dotprod+0x79>
    131b:	48 89 d1             	mov    %rdx,%rcx
    131e:	31 c0                	xor    %eax,%eax
    1320:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1324:	48 d1 e9             	shr    %rcx
    1327:	48 c1 e1 04          	shl    $0x4,%rcx
    132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1330:	66 0f 10 04 07       	movupd (%rdi,%rax,1),%xmm0
    1335:	66 0f 10 1c 06       	movupd (%rsi,%rax,1),%xmm3
    133a:	48 83 c0 10          	add    $0x10,%rax
    133e:	66 0f 59 c3          	mulpd  %xmm3,%xmm0
    1342:	66 0f 58 d0          	addpd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; i++)
    1346:	48 39 c1             	cmp    %rax,%rcx
    1349:	75 e5                	jne    1330 <dotprod+0x20>
    134b:	48 89 d0             	mov    %rdx,%rax
    134e:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1352:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
    1356:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    135a:	83 e2 01             	and    $0x1,%edx
    135d:	66 0f 58 ca          	addpd  %xmm2,%xmm1
    1361:	74 0e                	je     1371 <dotprod+0x61>
    d += a[i] * b[i];
    1363:	f2 0f 10 04 c6       	movsd  (%rsi,%rax,8),%xmm0
    1368:	f2 0f 59 04 c7       	mulsd  (%rdi,%rax,8),%xmm0
    136d:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
}
    1371:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1375:	c3                   	retq   
    1376:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    137d:	00 00 00 
  double d = 0.0;
    1380:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    1384:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1388:	c3                   	retq   
  for (unsigned long long i = 0; i < n; i++)
    1389:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    138b:	66 0f ef c9          	pxor   %xmm1,%xmm1
    138f:	eb d2                	jmp    1363 <dotprod+0x53>
    1391:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1398:	00 00 00 
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000013a0 <__libc_csu_init>:
    13a0:	f3 0f 1e fa          	endbr64 
    13a4:	41 57                	push   %r15
    13a6:	4c 8d 3d 33 2a 00 00 	lea    0x2a33(%rip),%r15        # 3de0 <__frame_dummy_init_array_entry>
    13ad:	41 56                	push   %r14
    13af:	49 89 d6             	mov    %rdx,%r14
    13b2:	41 55                	push   %r13
    13b4:	49 89 f5             	mov    %rsi,%r13
    13b7:	41 54                	push   %r12
    13b9:	41 89 fc             	mov    %edi,%r12d
    13bc:	55                   	push   %rbp
    13bd:	48 8d 2d 2c 2a 00 00 	lea    0x2a2c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    13c4:	53                   	push   %rbx
    13c5:	4c 29 fd             	sub    %r15,%rbp
    13c8:	48 83 ec 08          	sub    $0x8,%rsp
    13cc:	e8 2f fc ff ff       	callq  1000 <_init>
    13d1:	48 c1 fd 03          	sar    $0x3,%rbp
    13d5:	74 1f                	je     13f6 <__libc_csu_init+0x56>
    13d7:	31 db                	xor    %ebx,%ebx
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13e0:	4c 89 f2             	mov    %r14,%rdx
    13e3:	4c 89 ee             	mov    %r13,%rsi
    13e6:	44 89 e7             	mov    %r12d,%edi
    13e9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    13ed:	48 83 c3 01          	add    $0x1,%rbx
    13f1:	48 39 dd             	cmp    %rbx,%rbp
    13f4:	75 ea                	jne    13e0 <__libc_csu_init+0x40>
    13f6:	48 83 c4 08          	add    $0x8,%rsp
    13fa:	5b                   	pop    %rbx
    13fb:	5d                   	pop    %rbp
    13fc:	41 5c                	pop    %r12
    13fe:	41 5d                	pop    %r13
    1400:	41 5e                	pop    %r14
    1402:	41 5f                	pop    %r15
    1404:	c3                   	retq   
    1405:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    140c:	00 00 00 00 

0000000000001410 <__libc_csu_fini>:
    1410:	f3 0f 1e fa          	endbr64 
    1414:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001418 <_fini>:
    1418:	f3 0f 1e fa          	endbr64 
    141c:	48 83 ec 08          	sub    $0x8,%rsp
    1420:	48 83 c4 08          	add    $0x8,%rsp
    1424:	c3                   	retq   
