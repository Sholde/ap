
high_clang:     format de fichier elf64-x86-64


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
    10b3:	4c 8d 05 56 06 00 00 	lea    0x656(%rip),%r8        # 1710 <__libc_csu_fini>
    10ba:	48 8d 0d df 05 00 00 	lea    0x5df(%rip),%rcx        # 16a0 <__libc_csu_init>
    10c1:	48 8d 3d 88 02 00 00 	lea    0x288(%rip),%rdi        # 1350 <main>
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
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <parse_args>:

#define ARGS 1

// Parse arguments
unsigned long long parse_args(int argc, char **argv)
{
    11a0:	50                   	push   %rax
  if (argc != 2)
    11a1:	83 ff 02             	cmp    $0x2,%edi
    11a4:	75 11                	jne    11b7 <parse_args+0x17>
    exit(ARGS);

  return strtoll(argv[1], NULL, 10);
    11a6:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    11aa:	31 f6                	xor    %esi,%esi
    11ac:	ba 0a 00 00 00       	mov    $0xa,%edx
    11b1:	58                   	pop    %rax
    11b2:	e9 99 fe ff ff       	jmpq   1050 <strtoll@plt>
    exit(ARGS);
    11b7:	bf 01 00 00 00       	mov    $0x1,%edi
    11bc:	e8 9f fe ff ff       	callq  1060 <exit@plt>
    11c1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11c8:	00 00 00 
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <dotprod>:
// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; ++i)
    11d0:	48 85 d2             	test   %rdx,%rdx
    11d3:	74 11                	je     11e6 <dotprod+0x16>
    11d5:	48 83 fa 03          	cmp    $0x3,%rdx
    11d9:	77 0f                	ja     11ea <dotprod+0x1a>
    11db:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11df:	31 c0                	xor    %eax,%eax
    11e1:	e9 da 00 00 00       	jmpq   12c0 <dotprod+0xf0>
    11e6:	0f 57 c0             	xorps  %xmm0,%xmm0
    d += a[i] * b[i];
  
  return d;
    11e9:	c3                   	retq   
  for (unsigned long long i = 0; i < n; ++i)
    11ea:	48 89 d0             	mov    %rdx,%rax
    11ed:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    11f1:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
    11f5:	49 89 c9             	mov    %rcx,%r9
    11f8:	49 c1 e9 02          	shr    $0x2,%r9
    11fc:	49 83 c1 01          	add    $0x1,%r9
    1200:	45 89 c8             	mov    %r9d,%r8d
    1203:	41 83 e0 01          	and    $0x1,%r8d
    1207:	48 85 c9             	test   %rcx,%rcx
    120a:	0f 84 c8 00 00 00    	je     12d8 <dotprod+0x108>
    1210:	4d 29 c1             	sub    %r8,%r9
    1213:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1217:	31 c9                	xor    %ecx,%ecx
    1219:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    121d:	0f 1f 00             	nopl   (%rax)
    d += a[i] * b[i];
    1220:	66 0f 10 14 cf       	movupd (%rdi,%rcx,8),%xmm2
    1225:	66 0f 10 5c cf 10    	movupd 0x10(%rdi,%rcx,8),%xmm3
    122b:	66 0f 10 64 cf 20    	movupd 0x20(%rdi,%rcx,8),%xmm4
    1231:	66 0f 10 6c cf 30    	movupd 0x30(%rdi,%rcx,8),%xmm5
    1237:	66 0f 10 34 ce       	movupd (%rsi,%rcx,8),%xmm6
    123c:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    1240:	66 0f 58 f1          	addpd  %xmm1,%xmm6
    1244:	66 0f 10 54 ce 10    	movupd 0x10(%rsi,%rcx,8),%xmm2
    124a:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    124e:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    1252:	66 0f 10 4c ce 20    	movupd 0x20(%rsi,%rcx,8),%xmm1
    1258:	66 0f 59 cc          	mulpd  %xmm4,%xmm1
    125c:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1260:	66 0f 10 44 ce 30    	movupd 0x30(%rsi,%rcx,8),%xmm0
    1266:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
    126a:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    126e:	48 83 c1 08          	add    $0x8,%rcx
    1272:	49 83 c1 fe          	add    $0xfffffffffffffffe,%r9
    1276:	75 a8                	jne    1220 <dotprod+0x50>
    1278:	4d 85 c0             	test   %r8,%r8
    127b:	74 26                	je     12a3 <dotprod+0xd3>
    d += a[i] * b[i];
    127d:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    1282:	66 0f 10 5c ce 10    	movupd 0x10(%rsi,%rcx,8),%xmm3
    1288:	66 0f 10 24 cf       	movupd (%rdi,%rcx,8),%xmm4
    128d:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1291:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    1295:	66 0f 10 54 cf 10    	movupd 0x10(%rdi,%rcx,8),%xmm2
    129b:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    129f:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    12a3:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    12a7:	66 0f 28 c1          	movapd %xmm1,%xmm0
    12ab:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    12af:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    12b3:	48 39 d0             	cmp    %rdx,%rax
    12b6:	74 1f                	je     12d7 <dotprod+0x107>
    12b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12bf:	00 
    d += a[i] * b[i];
    12c0:	f2 0f 10 0c c6       	movsd  (%rsi,%rax,8),%xmm1
    12c5:	f2 0f 59 0c c7       	mulsd  (%rdi,%rax,8),%xmm1
    12ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    12ce:	48 83 c0 01          	add    $0x1,%rax
    12d2:	48 39 c2             	cmp    %rax,%rdx
    12d5:	75 e9                	jne    12c0 <dotprod+0xf0>
  return d;
    12d7:	c3                   	retq   
    12d8:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12dc:	31 c9                	xor    %ecx,%ecx
    12de:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    12e2:	4d 85 c0             	test   %r8,%r8
    12e5:	75 96                	jne    127d <dotprod+0xad>
    12e7:	eb ba                	jmp    12a3 <dotprod+0xd3>
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012f0 <dotprod_2x>:
// vectors of 2 double
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  
  for (unsigned long long i = 0; i < n; i += 2)
    12f0:	48 85 d2             	test   %rdx,%rdx
    12f3:	74 48                	je     133d <dotprod_2x+0x4d>
    12f5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12f9:	31 c0                	xor    %eax,%eax
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    {
      d[0] += a[i] * b[i];
    1300:	66 0f 10 04 c7       	movupd (%rdi,%rax,8),%xmm0
    1305:	66 0f 10 14 c6       	movupd (%rsi,%rax,8),%xmm2
    130a:	66 0f 59 d0          	mulpd  %xmm0,%xmm2
    130e:	66 0f 58 ca          	addpd  %xmm2,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    1312:	48 83 c0 02          	add    $0x2,%rax
    1316:	48 39 d0             	cmp    %rdx,%rax
    1319:	72 e5                	jb     1300 <dotprod_2x+0x10>
    131b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    131f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1323:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    }

  if (n & 1)
    1327:	f6 c2 01             	test   $0x1,%dl
    132a:	74 10                	je     133c <dotprod_2x+0x4c>
    return d[0] + d[1] + a[n-1] * b[n-1];
    132c:	f2 0f 10 4c d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm1
    1332:	f2 0f 59 4c d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm1
    1338:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  
  return d[0] + d[1];
}
    133c:	c3                   	retq   
    133d:	0f 57 c0             	xorps  %xmm0,%xmm0
    1340:	c3                   	retq   
    1341:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1348:	00 00 00 
    134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001350 <main>:

int main(int argc, char **argv)
{
    1350:	41 57                	push   %r15
    1352:	41 56                	push   %r14
    1354:	53                   	push   %rbx
    1355:	48 83 ec 10          	sub    $0x10,%rsp
  if (argc != 2)
    1359:	83 ff 02             	cmp    $0x2,%edi
    135c:	0f 85 7a 02 00 00    	jne    15dc <main+0x28c>
  return strtoll(argv[1], NULL, 10);
    1362:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1366:	31 f6                	xor    %esi,%esi
    1368:	ba 0a 00 00 00       	mov    $0xa,%edx
    136d:	e8 de fc ff ff       	callq  1050 <strtoll@plt>
    1372:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1375:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    137c:	00 
    137d:	bf 40 00 00 00       	mov    $0x40,%edi
    1382:	48 89 de             	mov    %rbx,%rsi
    1385:	e8 e6 fc ff ff       	callq  1070 <aligned_alloc@plt>
    138a:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    138d:	bf 40 00 00 00       	mov    $0x40,%edi
    1392:	48 89 de             	mov    %rbx,%rsi
    1395:	e8 d6 fc ff ff       	callq  1070 <aligned_alloc@plt>
    139a:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    139d:	4d 85 ff             	test   %r15,%r15
    13a0:	74 0d                	je     13af <main+0x5f>
    13a2:	49 83 ff 04          	cmp    $0x4,%r15
    13a6:	73 19                	jae    13c1 <main+0x71>
    13a8:	31 c0                	xor    %eax,%eax
    13aa:	e9 07 01 00 00       	jmpq   14b6 <main+0x166>
    13af:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    13b3:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    13b7:	66 0f 29 0c 24       	movapd %xmm1,(%rsp)
    13bc:	e9 94 02 00 00       	jmpq   1655 <main+0x305>
    13c1:	4c 89 f8             	mov    %r15,%rax
    13c4:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    13c8:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    13cc:	48 89 f2             	mov    %rsi,%rdx
    13cf:	48 c1 ea 02          	shr    $0x2,%rdx
    13d3:	48 83 c2 01          	add    $0x1,%rdx
    13d7:	89 d1                	mov    %edx,%ecx
    13d9:	83 e1 03             	and    $0x3,%ecx
    13dc:	48 83 fe 0c          	cmp    $0xc,%rsi
    13e0:	73 07                	jae    13e9 <main+0x99>
    13e2:	31 f6                	xor    %esi,%esi
    13e4:	e9 87 00 00 00       	jmpq   1470 <main+0x120>
    13e9:	48 29 ca             	sub    %rcx,%rdx
    13ec:	31 f6                	xor    %esi,%esi
    13ee:	66 0f 28 05 1a 0c 00 	movapd 0xc1a(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    13f5:	00 
    13f6:	66 0f 28 0d 22 0c 00 	movapd 0xc22(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    13fd:	00 
    13fe:	66 90                	xchg   %ax,%ax
      a[i] = 0.1;
    1400:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    1406:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
      b[i] = 0.001;
    140d:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    1412:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
      a[i] = 0.1;
    1418:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    141f:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
      b[i] = 0.001;
    1426:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    142c:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
      a[i] = 0.1;
    1432:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    1439:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
      b[i] = 0.001;
    1440:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    1446:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
      a[i] = 0.1;
    144c:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    1453:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
      b[i] = 0.001;
    145a:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1460:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
  for (unsigned long long i = 0; i < n; i++)
    1466:	48 83 c6 10          	add    $0x10,%rsi
    146a:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    146e:	75 90                	jne    1400 <main+0xb0>
    1470:	48 85 c9             	test   %rcx,%rcx
    1473:	74 3c                	je     14b1 <main+0x161>
    1475:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    147c:	00 
    147d:	48 f7 d9             	neg    %rcx
    1480:	66 0f 28 05 88 0b 00 	movapd 0xb88(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1487:	00 
    1488:	66 0f 28 0d 90 0b 00 	movapd 0xb90(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    148f:	00 
      a[i] = 0.1;
    1490:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    1497:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
      b[i] = 0.001;
    149d:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    14a3:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    14a8:	48 83 c2 20          	add    $0x20,%rdx
    14ac:	48 ff c1             	inc    %rcx
    14af:	75 df                	jne    1490 <main+0x140>
    14b1:	49 39 c7             	cmp    %rax,%r15
    14b4:	74 2b                	je     14e1 <main+0x191>
    14b6:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    14bd:	99 b9 3f 
    14c0:	48 ba fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rdx
    14c7:	62 50 3f 
    14ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      a[i] = 0.1;
    14d0:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 0.001;
    14d4:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    14d8:	48 83 c0 01          	add    $0x1,%rax
    14dc:	49 39 c7             	cmp    %rax,%r15
    14df:	75 ef                	jne    14d0 <main+0x180>
  for (unsigned long long i = 0; i < n; ++i)
    14e1:	49 83 ff 04          	cmp    $0x4,%r15
    14e5:	73 0b                	jae    14f2 <main+0x1a2>
    14e7:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    14eb:	31 c0                	xor    %eax,%eax
    14ed:	e9 f4 00 00 00       	jmpq   15e6 <main+0x296>
    14f2:	4c 89 f8             	mov    %r15,%rax
    14f5:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    14f9:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
    14fd:	48 89 ce             	mov    %rcx,%rsi
    1500:	48 c1 ee 02          	shr    $0x2,%rsi
    1504:	48 83 c6 01          	add    $0x1,%rsi
    1508:	89 f2                	mov    %esi,%edx
    150a:	83 e2 01             	and    $0x1,%edx
    150d:	48 85 c9             	test   %rcx,%rcx
    1510:	0f 84 b5 00 00 00    	je     15cb <main+0x27b>
    1516:	48 29 d6             	sub    %rdx,%rsi
    1519:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    151d:	31 c9                	xor    %ecx,%ecx
    151f:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1523:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    152a:	00 00 00 
    152d:	0f 1f 00             	nopl   (%rax)
    d += a[i] * b[i];
    1530:	66 41 0f 10 14 ce    	movupd (%r14,%rcx,8),%xmm2
    1536:	66 41 0f 10 5c ce 10 	movupd 0x10(%r14,%rcx,8),%xmm3
    153d:	66 41 0f 10 64 ce 20 	movupd 0x20(%r14,%rcx,8),%xmm4
    1544:	66 41 0f 10 6c ce 30 	movupd 0x30(%r14,%rcx,8),%xmm5
    154b:	66 0f 10 34 cb       	movupd (%rbx,%rcx,8),%xmm6
    1550:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    1554:	66 0f 58 f1          	addpd  %xmm1,%xmm6
    1558:	66 0f 10 54 cb 10    	movupd 0x10(%rbx,%rcx,8),%xmm2
    155e:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    1562:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    1566:	66 0f 10 4c cb 20    	movupd 0x20(%rbx,%rcx,8),%xmm1
    156c:	66 0f 59 cc          	mulpd  %xmm4,%xmm1
    1570:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1574:	66 0f 10 44 cb 30    	movupd 0x30(%rbx,%rcx,8),%xmm0
    157a:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
    157e:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    1582:	48 83 c1 08          	add    $0x8,%rcx
    1586:	48 83 c6 fe          	add    $0xfffffffffffffffe,%rsi
    158a:	75 a4                	jne    1530 <main+0x1e0>
    158c:	48 85 d2             	test   %rdx,%rdx
    158f:	74 28                	je     15b9 <main+0x269>
    d += a[i] * b[i];
    1591:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    1596:	66 0f 10 5c cb 10    	movupd 0x10(%rbx,%rcx,8),%xmm3
    159c:	66 41 0f 10 24 ce    	movupd (%r14,%rcx,8),%xmm4
    15a2:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    15a6:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    15aa:	66 41 0f 10 54 ce 10 	movupd 0x10(%r14,%rcx,8),%xmm2
    15b1:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    15b5:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    15b9:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    15bd:	66 0f 28 c1          	movapd %xmm1,%xmm0
    15c1:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    15c5:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    15c9:	eb 2e                	jmp    15f9 <main+0x2a9>
    15cb:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    15cf:	31 c9                	xor    %ecx,%ecx
    15d1:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    15d5:	48 85 d2             	test   %rdx,%rdx
    15d8:	75 b7                	jne    1591 <main+0x241>
    15da:	eb dd                	jmp    15b9 <main+0x269>
    exit(ARGS);
    15dc:	bf 01 00 00 00       	mov    $0x1,%edi
    15e1:	e8 7a fa ff ff       	callq  1060 <exit@plt>
    d += a[i] * b[i];
    15e6:	f2 0f 10 0c c3       	movsd  (%rbx,%rax,8),%xmm1
    15eb:	f2 41 0f 59 0c c6    	mulsd  (%r14,%rax,8),%xmm1
    15f1:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    15f5:	48 83 c0 01          	add    $0x1,%rax
    15f9:	49 39 c7             	cmp    %rax,%r15
    15fc:	75 e8                	jne    15e6 <main+0x296>
    15fe:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1602:	31 c0                	xor    %eax,%eax
    1604:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    160b:	00 00 00 
    160e:	66 90                	xchg   %ax,%ax
      d[0] += a[i] * b[i];
    1610:	66 41 0f 10 14 c6    	movupd (%r14,%rax,8),%xmm2
    1616:	66 0f 10 1c c3       	movupd (%rbx,%rax,8),%xmm3
    161b:	66 0f 59 da          	mulpd  %xmm2,%xmm3
    161f:	66 0f 58 cb          	addpd  %xmm3,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    1623:	48 83 c0 02          	add    $0x2,%rax
    1627:	4c 39 f8             	cmp    %r15,%rax
    162a:	72 e4                	jb     1610 <main+0x2c0>
    162c:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1630:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    1634:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
  if (n & 1)
    1638:	41 f6 c7 01          	test   $0x1,%r15b
    163c:	74 12                	je     1650 <main+0x300>
    return d[0] + d[1] + a[n-1] * b[n-1];
    163e:	f2 42 0f 10 4c fb f8 	movsd  -0x8(%rbx,%r15,8),%xmm1
    1645:	f2 43 0f 59 4c fe f8 	mulsd  -0x8(%r14,%r15,8),%xmm1
    164c:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1650:	66 0f 29 14 24       	movapd %xmm2,(%rsp)
  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    1655:	48 8d 3d d4 09 00 00 	lea    0x9d4(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    165c:	b0 01                	mov    $0x1,%al
    165e:	e8 dd f9 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1663:	48 8d 3d d1 09 00 00 	lea    0x9d1(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    166a:	0f 28 04 24          	movaps (%rsp),%xmm0
    166e:	b0 01                	mov    $0x1,%al
    1670:	e8 cb f9 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1675:	4c 89 f7             	mov    %r14,%rdi
    1678:	e8 b3 f9 ff ff       	callq  1030 <free@plt>
  free(b);
    167d:	48 89 df             	mov    %rbx,%rdi
    1680:	e8 ab f9 ff ff       	callq  1030 <free@plt>
  
  return 0;
    1685:	31 c0                	xor    %eax,%eax
    1687:	48 83 c4 10          	add    $0x10,%rsp
    168b:	5b                   	pop    %rbx
    168c:	41 5e                	pop    %r14
    168e:	41 5f                	pop    %r15
    1690:	c3                   	retq   
    1691:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1698:	00 00 00 
    169b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000016a0 <__libc_csu_init>:
    16a0:	f3 0f 1e fa          	endbr64 
    16a4:	41 57                	push   %r15
    16a6:	4c 8d 3d 23 27 00 00 	lea    0x2723(%rip),%r15        # 3dd0 <__frame_dummy_init_array_entry>
    16ad:	41 56                	push   %r14
    16af:	49 89 d6             	mov    %rdx,%r14
    16b2:	41 55                	push   %r13
    16b4:	49 89 f5             	mov    %rsi,%r13
    16b7:	41 54                	push   %r12
    16b9:	41 89 fc             	mov    %edi,%r12d
    16bc:	55                   	push   %rbp
    16bd:	48 8d 2d 1c 27 00 00 	lea    0x271c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    16c4:	53                   	push   %rbx
    16c5:	4c 29 fd             	sub    %r15,%rbp
    16c8:	48 83 ec 08          	sub    $0x8,%rsp
    16cc:	e8 2f f9 ff ff       	callq  1000 <_init>
    16d1:	48 c1 fd 03          	sar    $0x3,%rbp
    16d5:	74 1f                	je     16f6 <__libc_csu_init+0x56>
    16d7:	31 db                	xor    %ebx,%ebx
    16d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    16e0:	4c 89 f2             	mov    %r14,%rdx
    16e3:	4c 89 ee             	mov    %r13,%rsi
    16e6:	44 89 e7             	mov    %r12d,%edi
    16e9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    16ed:	48 83 c3 01          	add    $0x1,%rbx
    16f1:	48 39 dd             	cmp    %rbx,%rbp
    16f4:	75 ea                	jne    16e0 <__libc_csu_init+0x40>
    16f6:	48 83 c4 08          	add    $0x8,%rsp
    16fa:	5b                   	pop    %rbx
    16fb:	5d                   	pop    %rbp
    16fc:	41 5c                	pop    %r12
    16fe:	41 5d                	pop    %r13
    1700:	41 5e                	pop    %r14
    1702:	41 5f                	pop    %r15
    1704:	c3                   	retq   
    1705:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    170c:	00 00 00 00 

0000000000001710 <__libc_csu_fini>:
    1710:	f3 0f 1e fa          	endbr64 
    1714:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001718 <_fini>:
    1718:	f3 0f 1e fa          	endbr64 
    171c:	48 83 ec 08          	sub    $0x8,%rsp
    1720:	48 83 c4 08          	add    $0x8,%rsp
    1724:	c3                   	retq   
