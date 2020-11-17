
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
    1089:	e8 02 02 00 00       	callq  1290 <parse_args>

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
    10bc:	0f 84 ba 00 00 00    	je     117c <main+0xfc>
    10c2:	f2 0f 10 0d 56 0f 00 	movsd  0xf56(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    10c9:	00 
    10ca:	f2 0f 10 05 56 0f 00 	movsd  0xf56(%rip),%xmm0        # 2028 <_IO_stdin_used+0x28>
    10d1:	00 
    10d2:	31 c0                	xor    %eax,%eax
    10d4:	0f 1f 40 00          	nopl   0x0(%rax)
      a[i] = 0.1;
    10d8:	f2 41 0f 11 0c c4    	movsd  %xmm1,(%r12,%rax,8)
      b[i] = 0.001;
    10de:	48 89 c2             	mov    %rax,%rdx
    10e1:	f2 0f 11 44 c5 00    	movsd  %xmm0,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    10e7:	48 8d 40 01          	lea    0x1(%rax),%rax
    10eb:	49 39 c5             	cmp    %rax,%r13
    10ee:	75 e8                	jne    10d8 <main+0x58>
    10f0:	66 0f ef db          	pxor   %xmm3,%xmm3
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
    1113:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
  for (unsigned long long i = 0; i < n; ++i)
    1117:	48 39 d1             	cmp    %rdx,%rcx
    111a:	75 e4                	jne    1100 <main+0x80>
  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
    111c:	4c 89 ea             	mov    %r13,%rdx
    111f:	48 89 ee             	mov    %rbp,%rsi
    1122:	4c 89 e7             	mov    %r12,%rdi
    1125:	e8 c6 01 00 00       	callq  12f0 <dotprod_2x>

  // Print result
  printf("res = %lf\n", res);
    112a:	48 8d 3d d3 0e 00 00 	lea    0xed3(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1131:	b8 01 00 00 00       	mov    $0x1,%eax
  double res_2x = dotprod_2x(a, b, n);
    1136:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  printf("res = %lf\n", res);
    113c:	66 0f 28 c3          	movapd %xmm3,%xmm0
    1140:	e8 fb fe ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1145:	f2 0f 10 4c 24 08    	movsd  0x8(%rsp),%xmm1
    114b:	b8 01 00 00 00       	mov    $0x1,%eax
    1150:	48 8d 3d b8 0e 00 00 	lea    0xeb8(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    1157:	66 0f 28 c1          	movapd %xmm1,%xmm0
    115b:	e8 e0 fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1160:	4c 89 e7             	mov    %r12,%rdi
    1163:	e8 c8 fe ff ff       	callq  1030 <free@plt>
  free(b);
    1168:	48 89 ef             	mov    %rbp,%rdi
    116b:	e8 c0 fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    1170:	48 83 c4 10          	add    $0x10,%rsp
    1174:	31 c0                	xor    %eax,%eax
    1176:	5d                   	pop    %rbp
    1177:	41 5c                	pop    %r12
    1179:	41 5d                	pop    %r13
    117b:	c3                   	retq   
  double d = 0.0;
    117c:	66 0f ef db          	pxor   %xmm3,%xmm3
    1180:	eb 9a                	jmp    111c <main+0x9c>
    1182:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1189:	00 00 00 
    118c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001190 <_start>:
    1190:	f3 0f 1e fa          	endbr64 
    1194:	31 ed                	xor    %ebp,%ebp
    1196:	49 89 d1             	mov    %rdx,%r9
    1199:	5e                   	pop    %rsi
    119a:	48 89 e2             	mov    %rsp,%rdx
    119d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11a1:	50                   	push   %rax
    11a2:	54                   	push   %rsp
    11a3:	4c 8d 05 26 02 00 00 	lea    0x226(%rip),%r8        # 13d0 <__libc_csu_fini>
    11aa:	48 8d 0d af 01 00 00 	lea    0x1af(%rip),%rcx        # 1360 <__libc_csu_init>
    11b1:	48 8d 3d c8 fe ff ff 	lea    -0x138(%rip),%rdi        # 1080 <main>
    11b8:	ff 15 22 2e 00 00    	callq  *0x2e22(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    11be:	f4                   	hlt    
    11bf:	90                   	nop

00000000000011c0 <deregister_tm_clones>:
    11c0:	48 8d 3d 89 2e 00 00 	lea    0x2e89(%rip),%rdi        # 4050 <__TMC_END__>
    11c7:	48 8d 05 82 2e 00 00 	lea    0x2e82(%rip),%rax        # 4050 <__TMC_END__>
    11ce:	48 39 f8             	cmp    %rdi,%rax
    11d1:	74 15                	je     11e8 <deregister_tm_clones+0x28>
    11d3:	48 8b 05 fe 2d 00 00 	mov    0x2dfe(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    11da:	48 85 c0             	test   %rax,%rax
    11dd:	74 09                	je     11e8 <deregister_tm_clones+0x28>
    11df:	ff e0                	jmpq   *%rax
    11e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11e8:	c3                   	retq   
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <register_tm_clones>:
    11f0:	48 8d 3d 59 2e 00 00 	lea    0x2e59(%rip),%rdi        # 4050 <__TMC_END__>
    11f7:	48 8d 35 52 2e 00 00 	lea    0x2e52(%rip),%rsi        # 4050 <__TMC_END__>
    11fe:	48 29 fe             	sub    %rdi,%rsi
    1201:	48 89 f0             	mov    %rsi,%rax
    1204:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1208:	48 c1 f8 03          	sar    $0x3,%rax
    120c:	48 01 c6             	add    %rax,%rsi
    120f:	48 d1 fe             	sar    %rsi
    1212:	74 14                	je     1228 <register_tm_clones+0x38>
    1214:	48 8b 05 d5 2d 00 00 	mov    0x2dd5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    121b:	48 85 c0             	test   %rax,%rax
    121e:	74 08                	je     1228 <register_tm_clones+0x38>
    1220:	ff e0                	jmpq   *%rax
    1222:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1228:	c3                   	retq   
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001230 <__do_global_dtors_aux>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	80 3d 15 2e 00 00 00 	cmpb   $0x0,0x2e15(%rip)        # 4050 <__TMC_END__>
    123b:	75 33                	jne    1270 <__do_global_dtors_aux+0x40>
    123d:	55                   	push   %rbp
    123e:	48 83 3d b2 2d 00 00 	cmpq   $0x0,0x2db2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1245:	00 
    1246:	48 89 e5             	mov    %rsp,%rbp
    1249:	74 0d                	je     1258 <__do_global_dtors_aux+0x28>
    124b:	48 8b 3d f6 2d 00 00 	mov    0x2df6(%rip),%rdi        # 4048 <__dso_handle>
    1252:	ff 15 a0 2d 00 00    	callq  *0x2da0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1258:	e8 63 ff ff ff       	callq  11c0 <deregister_tm_clones>
    125d:	c6 05 ec 2d 00 00 01 	movb   $0x1,0x2dec(%rip)        # 4050 <__TMC_END__>
    1264:	5d                   	pop    %rbp
    1265:	c3                   	retq   
    1266:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    126d:	00 00 00 
    1270:	c3                   	retq   
    1271:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1278:	00 00 00 00 
    127c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001280 <frame_dummy>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	e9 67 ff ff ff       	jmpq   11f0 <register_tm_clones>
    1289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001290 <parse_args>:
  if (argc != 2)
    1290:	83 ff 02             	cmp    $0x2,%edi
    1293:	75 10                	jne    12a5 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    1295:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1299:	ba 0a 00 00 00       	mov    $0xa,%edx
    129e:	31 f6                	xor    %esi,%esi
    12a0:	e9 ab fd ff ff       	jmpq   1050 <strtoll@plt>
{
    12a5:	50                   	push   %rax
    exit(ARGS);
    12a6:	bf 01 00 00 00       	mov    $0x1,%edi
    12ab:	e8 b0 fd ff ff       	callq  1060 <exit@plt>

00000000000012b0 <dotprod>:
  for (unsigned long long i = 0; i < n; ++i)
    12b0:	48 85 d2             	test   %rdx,%rdx
    12b3:	74 2b                	je     12e0 <dotprod+0x30>
    12b5:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    12b7:	66 0f ef c9          	pxor   %xmm1,%xmm1
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    12c0:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    12c5:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    12ca:	48 83 c0 01          	add    $0x1,%rax
    d += a[i] * b[i];
    12ce:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    12d2:	48 39 c2             	cmp    %rax,%rdx
    12d5:	75 e9                	jne    12c0 <dotprod+0x10>
}
    12d7:	66 0f 28 c1          	movapd %xmm1,%xmm0
    12db:	c3                   	retq   
    12dc:	0f 1f 40 00          	nopl   0x0(%rax)
  double d = 0.0;
    12e0:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    12e4:	66 0f 28 c1          	movapd %xmm1,%xmm0
    12e8:	c3                   	retq   
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012f0 <dotprod_2x>:
  for (unsigned long long i = 0; i < n; i += 2)
    12f0:	48 85 d2             	test   %rdx,%rdx
    12f3:	74 5b                	je     1350 <dotprod_2x+0x60>
  double d[2] = {0.0};
    12f5:	66 0f ef d2          	pxor   %xmm2,%xmm2
  for (unsigned long long i = 0; i < n; i += 2)
    12f9:	31 c0                	xor    %eax,%eax
  double d[2] = {0.0};
    12fb:	66 0f 28 ca          	movapd %xmm2,%xmm1
    12ff:	90                   	nop
      d[0] += a[i] * b[i];
    1300:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    1305:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    130a:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    130e:	f2 0f 10 44 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm0
    1314:	f2 0f 59 44 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm0
  for (unsigned long long i = 0; i < n; i += 2)
    131a:	48 83 c0 02          	add    $0x2,%rax
      d[1] += a[i + 1] * b[i + 1];
    131e:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; i += 2)
    1322:	48 39 c2             	cmp    %rax,%rdx
    1325:	77 d9                	ja     1300 <dotprod_2x+0x10>
    return d[0] + d[1] + a[n-1] * b[n-1];
    1327:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    132b:	66 0f 28 c1          	movapd %xmm1,%xmm0
  if (n & 1)
    132f:	f6 c2 01             	test   $0x1,%dl
    1332:	75 04                	jne    1338 <dotprod_2x+0x48>
}
    1334:	c3                   	retq   
    1335:	0f 1f 00             	nopl   (%rax)
    return d[0] + d[1] + a[n-1] * b[n-1];
    1338:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    133e:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    1344:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1348:	c3                   	retq   
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  for (unsigned long long i = 0; i < n; i += 2)
    1350:	66 0f ef c0          	pxor   %xmm0,%xmm0
}
    1354:	c3                   	retq   
    1355:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    135c:	00 00 00 
    135f:	90                   	nop

0000000000001360 <__libc_csu_init>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	41 57                	push   %r15
    1366:	4c 8d 3d 7b 2a 00 00 	lea    0x2a7b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    136d:	41 56                	push   %r14
    136f:	49 89 d6             	mov    %rdx,%r14
    1372:	41 55                	push   %r13
    1374:	49 89 f5             	mov    %rsi,%r13
    1377:	41 54                	push   %r12
    1379:	41 89 fc             	mov    %edi,%r12d
    137c:	55                   	push   %rbp
    137d:	48 8d 2d 6c 2a 00 00 	lea    0x2a6c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1384:	53                   	push   %rbx
    1385:	4c 29 fd             	sub    %r15,%rbp
    1388:	48 83 ec 08          	sub    $0x8,%rsp
    138c:	e8 6f fc ff ff       	callq  1000 <_init>
    1391:	48 c1 fd 03          	sar    $0x3,%rbp
    1395:	74 1f                	je     13b6 <__libc_csu_init+0x56>
    1397:	31 db                	xor    %ebx,%ebx
    1399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13a0:	4c 89 f2             	mov    %r14,%rdx
    13a3:	4c 89 ee             	mov    %r13,%rsi
    13a6:	44 89 e7             	mov    %r12d,%edi
    13a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    13ad:	48 83 c3 01          	add    $0x1,%rbx
    13b1:	48 39 dd             	cmp    %rbx,%rbp
    13b4:	75 ea                	jne    13a0 <__libc_csu_init+0x40>
    13b6:	48 83 c4 08          	add    $0x8,%rsp
    13ba:	5b                   	pop    %rbx
    13bb:	5d                   	pop    %rbp
    13bc:	41 5c                	pop    %r12
    13be:	41 5d                	pop    %r13
    13c0:	41 5e                	pop    %r14
    13c2:	41 5f                	pop    %r15
    13c4:	c3                   	retq   
    13c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    13cc:	00 00 00 00 

00000000000013d0 <__libc_csu_fini>:
    13d0:	f3 0f 1e fa          	endbr64 
    13d4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000013d8 <_fini>:
    13d8:	f3 0f 1e fa          	endbr64 
    13dc:	48 83 ec 08          	sub    $0x8,%rsp
    13e0:	48 83 c4 08          	add    $0x8,%rsp
    13e4:	c3                   	retq   
