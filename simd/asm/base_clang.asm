
base_clang:     format de fichier elf64-x86-64


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

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	4c 8d 05 16 03 00 00 	lea    0x316(%rip),%r8        # 13b0 <__libc_csu_fini>
    109a:	48 8d 0d 9f 02 00 00 	lea    0x29f(%rip),%rcx        # 1340 <__libc_csu_init>
    10a1:	48 8d 3d 98 01 00 00 	lea    0x198(%rip),%rdi        # 1240 <main>
    10a8:	ff 15 32 2f 00 00    	callq  *0x2f32(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ae:	f4                   	hlt    
    10af:	90                   	nop

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4050 <__TMC_END__>
    10b7:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4050 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 2f 00 00 	mov    0x2f0e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmpq   *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	retq   
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4050 <__TMC_END__>
    10e7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4050 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    0x2ee5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmpq   *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4050 <__TMC_END__>
    112b:	75 33                	jne    1160 <__do_global_dtors_aux+0x40>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 2e 00 00 	cmpq   $0x0,0x2ec2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0d                	je     1148 <__do_global_dtors_aux+0x28>
    113b:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4048 <__dso_handle>
    1142:	ff 15 b0 2e 00 00    	callq  *0x2eb0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	callq  10b0 <deregister_tm_clones>
    114d:	c6 05 fc 2e 00 00 01 	movb   $0x1,0x2efc(%rip)        # 4050 <__TMC_END__>
    1154:	5d                   	pop    %rbp
    1155:	c3                   	retq   
    1156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    115d:	00 00 00 
    1160:	c3                   	retq   
    1161:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001170 <frame_dummy>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	e9 67 ff ff ff       	jmpq   10e0 <register_tm_clones>
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <parse_args>:

#define ARGS 1

// Parse arguments
unsigned long long parse_args(int argc, char **argv)
{
    1180:	50                   	push   %rax
  if (argc != 2)
    1181:	83 ff 02             	cmp    $0x2,%edi
    1184:	75 12                	jne    1198 <parse_args+0x18>
    exit(ARGS);

  return strtoll(argv[1], NULL, 10);
    1186:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    118a:	31 f6                	xor    %esi,%esi
    118c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1191:	e8 ba fe ff ff       	callq  1050 <strtoll@plt>
    1196:	59                   	pop    %rcx
    1197:	c3                   	retq   
    exit(ARGS);
    1198:	bf 01 00 00 00       	mov    $0x1,%edi
    119d:	e8 be fe ff ff       	callq  1060 <exit@plt>
    11a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11a9:	00 00 00 
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011b0 <dotprod>:
    }
}

// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
    11b0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; ++i)
    11b4:	48 85 d2             	test   %rdx,%rdx
    11b7:	74 1e                	je     11d7 <dotprod+0x27>
    11b9:	31 c0                	xor    %eax,%eax
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    11c0:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    11c5:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    11ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    11ce:	48 83 c0 01          	add    $0x1,%rax
    11d2:	48 39 c2             	cmp    %rax,%rdx
    11d5:	75 e9                	jne    11c0 <dotprod+0x10>
  
  return d;
    11d7:	c3                   	retq   
    11d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11df:	00 

00000000000011e0 <dotprod_2x>:
// vectors of 2 double
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  
  for (unsigned long long i = 0; i < n; i += 2)
    11e0:	48 85 d2             	test   %rdx,%rdx
    11e3:	74 34                	je     1219 <dotprod_2x+0x39>
    11e5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    11e9:	31 c0                	xor    %eax,%eax
    11eb:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11ef:	90                   	nop
    {
      d[0] += a[i] * b[i];
    11f0:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
      d[1] += a[i + 1] * b[i + 1];
    11f5:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
      d[0] += a[i] * b[i];
    11fb:	f2 0f 59 14 c6       	mulsd  (%rsi,%rax,8),%xmm2
      d[1] += a[i + 1] * b[i + 1];
    1200:	f2 0f 59 5c c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm3
      d[0] += a[i] * b[i];
    1206:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    120a:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    120e:	48 83 c0 02          	add    $0x2,%rax
    1212:	48 39 d0             	cmp    %rdx,%rax
    1215:	72 d9                	jb     11f0 <dotprod_2x+0x10>
    1217:	eb 08                	jmp    1221 <dotprod_2x+0x41>
    1219:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    121d:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1221:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    }

  if (n & 1)
    1225:	f6 c2 01             	test   $0x1,%dl
    1228:	74 10                	je     123a <dotprod_2x+0x5a>
    return d[0] + d[1] + a[n-1] * b[n-1];
    122a:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    1230:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    1236:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  
  return d[0] + d[1];
}
    123a:	c3                   	retq   
    123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001240 <main>:

int main(int argc, char **argv)
{
    1240:	41 57                	push   %r15
    1242:	41 56                	push   %r14
    1244:	53                   	push   %rbx
    1245:	48 83 ec 10          	sub    $0x10,%rsp
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    1249:	e8 32 ff ff ff       	callq  1180 <parse_args>
    124e:	48 89 c3             	mov    %rax,%rbx

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1251:	4c 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%r15
    1258:	00 
    1259:	bf 40 00 00 00       	mov    $0x40,%edi
    125e:	4c 89 fe             	mov    %r15,%rsi
    1261:	e8 0a fe ff ff       	callq  1070 <aligned_alloc@plt>
    1266:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    1269:	bf 40 00 00 00       	mov    $0x40,%edi
    126e:	4c 89 fe             	mov    %r15,%rsi
    1271:	e8 fa fd ff ff       	callq  1070 <aligned_alloc@plt>
    1276:	49 89 c7             	mov    %rax,%r15

  // Init arrays
  init(a, b, n);
    1279:	4c 89 f7             	mov    %r14,%rdi
    127c:	48 89 c6             	mov    %rax,%rsi
    127f:	48 89 da             	mov    %rbx,%rdx
    1282:	e8 79 00 00 00       	callq  1300 <init>

  // Compute
  double res = dotprod(a, b, n);
    1287:	4c 89 f7             	mov    %r14,%rdi
    128a:	4c 89 fe             	mov    %r15,%rsi
    128d:	48 89 da             	mov    %rbx,%rdx
    1290:	e8 1b ff ff ff       	callq  11b0 <dotprod>
    1295:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  double res_2x = dotprod_2x(a, b, n);
    129b:	4c 89 f7             	mov    %r14,%rdi
    129e:	4c 89 fe             	mov    %r15,%rsi
    12a1:	48 89 da             	mov    %rbx,%rdx
    12a4:	e8 37 ff ff ff       	callq  11e0 <dotprod_2x>
    12a9:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)

  // Print result
  printf("res = %lf\n", res);
    12ae:	48 8d 3d 4f 0d 00 00 	lea    0xd4f(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    12b5:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    12bb:	b0 01                	mov    $0x1,%al
    12bd:	e8 7e fd ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    12c2:	48 8d 3d 46 0d 00 00 	lea    0xd46(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    12c9:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    12ce:	b0 01                	mov    $0x1,%al
    12d0:	e8 6b fd ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    12d5:	4c 89 f7             	mov    %r14,%rdi
    12d8:	e8 53 fd ff ff       	callq  1030 <free@plt>
  free(b);
    12dd:	4c 89 ff             	mov    %r15,%rdi
    12e0:	e8 4b fd ff ff       	callq  1030 <free@plt>
  
  return 0;
    12e5:	31 c0                	xor    %eax,%eax
    12e7:	48 83 c4 10          	add    $0x10,%rsp
    12eb:	5b                   	pop    %rbx
    12ec:	41 5e                	pop    %r14
    12ee:	41 5f                	pop    %r15
    12f0:	c3                   	retq   
    12f1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12f8:	00 00 00 
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <init>:
  for (unsigned long long i = 0; i < n; i++)
    1300:	48 85 d2             	test   %rdx,%rdx
    1303:	74 2c                	je     1331 <init+0x31>
    1305:	31 c0                	xor    %eax,%eax
    1307:	49 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%r8
    130e:	99 b9 3f 
    1311:	48 b9 fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rcx
    1318:	62 50 3f 
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1320:	4c 89 04 c7          	mov    %r8,(%rdi,%rax,8)
      b[i] = 0.001;
    1324:	48 89 0c c6          	mov    %rcx,(%rsi,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1328:	48 83 c0 01          	add    $0x1,%rax
    132c:	48 39 c2             	cmp    %rax,%rdx
    132f:	75 ef                	jne    1320 <init+0x20>
}
    1331:	c3                   	retq   
    1332:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1339:	00 00 00 
    133c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001340 <__libc_csu_init>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	41 57                	push   %r15
    1346:	4c 8d 3d 8b 2a 00 00 	lea    0x2a8b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    134d:	41 56                	push   %r14
    134f:	49 89 d6             	mov    %rdx,%r14
    1352:	41 55                	push   %r13
    1354:	49 89 f5             	mov    %rsi,%r13
    1357:	41 54                	push   %r12
    1359:	41 89 fc             	mov    %edi,%r12d
    135c:	55                   	push   %rbp
    135d:	48 8d 2d 7c 2a 00 00 	lea    0x2a7c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1364:	53                   	push   %rbx
    1365:	4c 29 fd             	sub    %r15,%rbp
    1368:	48 83 ec 08          	sub    $0x8,%rsp
    136c:	e8 8f fc ff ff       	callq  1000 <_init>
    1371:	48 c1 fd 03          	sar    $0x3,%rbp
    1375:	74 1f                	je     1396 <__libc_csu_init+0x56>
    1377:	31 db                	xor    %ebx,%ebx
    1379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1380:	4c 89 f2             	mov    %r14,%rdx
    1383:	4c 89 ee             	mov    %r13,%rsi
    1386:	44 89 e7             	mov    %r12d,%edi
    1389:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    138d:	48 83 c3 01          	add    $0x1,%rbx
    1391:	48 39 dd             	cmp    %rbx,%rbp
    1394:	75 ea                	jne    1380 <__libc_csu_init+0x40>
    1396:	48 83 c4 08          	add    $0x8,%rsp
    139a:	5b                   	pop    %rbx
    139b:	5d                   	pop    %rbp
    139c:	41 5c                	pop    %r12
    139e:	41 5d                	pop    %r13
    13a0:	41 5e                	pop    %r14
    13a2:	41 5f                	pop    %r15
    13a4:	c3                   	retq   
    13a5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    13ac:	00 00 00 00 

00000000000013b0 <__libc_csu_fini>:
    13b0:	f3 0f 1e fa          	endbr64 
    13b4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000013b8 <_fini>:
    13b8:	f3 0f 1e fa          	endbr64 
    13bc:	48 83 ec 08          	sub    $0x8,%rsp
    13c0:	48 83 c4 08          	add    $0x8,%rsp
    13c4:	c3                   	retq   
