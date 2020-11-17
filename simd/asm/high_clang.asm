
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
    10b3:	4c 8d 05 86 05 00 00 	lea    0x586(%rip),%r8        # 1640 <__libc_csu_fini>
    10ba:	48 8d 0d 0f 05 00 00 	lea    0x50f(%rip),%rcx        # 15d0 <__libc_csu_init>
    10c1:	48 8d 3d 28 02 00 00 	lea    0x228(%rip),%rdi        # 12f0 <main>
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
  
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
    12ce:	48 83 c0 01          	add    $0x1,%rax
    12d2:	48 39 c2             	cmp    %rax,%rdx
    12d5:	75 e9                	jne    12c0 <dotprod+0xf0>
  return d;
    12d7:	c3                   	retq   
    12d8:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12dc:	31 c9                	xor    %ecx,%ecx
    12de:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    12e2:	4d 85 c0             	test   %r8,%r8
    12e5:	75 96                	jne    127d <dotprod+0xad>
    12e7:	eb ba                	jmp    12a3 <dotprod+0xd3>
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012f0 <main>:
}

int main(int argc, char **argv)
{
    12f0:	41 57                	push   %r15
    12f2:	41 56                	push   %r14
    12f4:	53                   	push   %rbx
  if (argc != 2)
    12f5:	83 ff 02             	cmp    $0x2,%edi
    12f8:	0f 85 7e 02 00 00    	jne    157c <main+0x28c>
  return strtoll(argv[1], NULL, 10);
    12fe:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1302:	31 f6                	xor    %esi,%esi
    1304:	ba 0a 00 00 00       	mov    $0xa,%edx
    1309:	e8 42 fd ff ff       	callq  1050 <strtoll@plt>
    130e:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1311:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    1318:	00 
    1319:	bf 40 00 00 00       	mov    $0x40,%edi
    131e:	48 89 de             	mov    %rbx,%rsi
    1321:	e8 4a fd ff ff       	callq  1070 <aligned_alloc@plt>
    1326:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    1329:	bf 40 00 00 00       	mov    $0x40,%edi
    132e:	48 89 de             	mov    %rbx,%rsi
    1331:	e8 3a fd ff ff       	callq  1070 <aligned_alloc@plt>
    1336:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    1339:	4d 85 ff             	test   %r15,%r15
    133c:	74 0d                	je     134b <main+0x5b>
    133e:	49 83 ff 04          	cmp    $0x4,%r15
    1342:	73 10                	jae    1354 <main+0x64>
    1344:	31 c0                	xor    %eax,%eax
    1346:	e9 0b 01 00 00       	jmpq   1456 <main+0x166>
    134b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    134f:	e9 4a 02 00 00       	jmpq   159e <main+0x2ae>
    1354:	4c 89 f8             	mov    %r15,%rax
    1357:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    135b:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    135f:	48 89 f2             	mov    %rsi,%rdx
    1362:	48 c1 ea 02          	shr    $0x2,%rdx
    1366:	48 83 c2 01          	add    $0x1,%rdx
    136a:	89 d1                	mov    %edx,%ecx
    136c:	83 e1 03             	and    $0x3,%ecx
    136f:	48 83 fe 0c          	cmp    $0xc,%rsi
    1373:	73 07                	jae    137c <main+0x8c>
    1375:	31 f6                	xor    %esi,%esi
    1377:	e9 94 00 00 00       	jmpq   1410 <main+0x120>
    137c:	48 29 ca             	sub    %rcx,%rdx
    137f:	31 f6                	xor    %esi,%esi
    1381:	66 0f 28 05 87 0c 00 	movapd 0xc87(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1388:	00 
    1389:	66 0f 28 0d 8f 0c 00 	movapd 0xc8f(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1390:	00 
    1391:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1398:	00 00 00 
    139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    13a0:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    13a6:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
      b[i] = 0.001;
    13ad:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    13b2:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
      a[i] = 0.1;
    13b8:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    13bf:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
      b[i] = 0.001;
    13c6:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    13cc:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
      a[i] = 0.1;
    13d2:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    13d9:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
      b[i] = 0.001;
    13e0:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    13e6:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
      a[i] = 0.1;
    13ec:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    13f3:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
      b[i] = 0.001;
    13fa:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1400:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
  for (unsigned long long i = 0; i < n; i++)
    1406:	48 83 c6 10          	add    $0x10,%rsi
    140a:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    140e:	75 90                	jne    13a0 <main+0xb0>
    1410:	48 85 c9             	test   %rcx,%rcx
    1413:	74 3c                	je     1451 <main+0x161>
    1415:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    141c:	00 
    141d:	48 f7 d9             	neg    %rcx
    1420:	66 0f 28 05 e8 0b 00 	movapd 0xbe8(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1427:	00 
    1428:	66 0f 28 0d f0 0b 00 	movapd 0xbf0(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    142f:	00 
      a[i] = 0.1;
    1430:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    1437:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
      b[i] = 0.001;
    143d:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    1443:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    1448:	48 83 c2 20          	add    $0x20,%rdx
    144c:	48 ff c1             	inc    %rcx
    144f:	75 df                	jne    1430 <main+0x140>
    1451:	49 39 c7             	cmp    %rax,%r15
    1454:	74 2b                	je     1481 <main+0x191>
    1456:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    145d:	99 b9 3f 
    1460:	48 ba fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rdx
    1467:	62 50 3f 
    146a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1470:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 0.001;
    1474:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1478:	48 83 c0 01          	add    $0x1,%rax
    147c:	49 39 c7             	cmp    %rax,%r15
    147f:	75 ef                	jne    1470 <main+0x180>
  for (unsigned long long i = 0; i < n; i++)
    1481:	49 83 ff 04          	cmp    $0x4,%r15
    1485:	73 0b                	jae    1492 <main+0x1a2>
    1487:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    148b:	31 c0                	xor    %eax,%eax
    148d:	e9 f4 00 00 00       	jmpq   1586 <main+0x296>
    1492:	4c 89 f8             	mov    %r15,%rax
    1495:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    1499:	48 8d 48 fc          	lea    -0x4(%rax),%rcx
    149d:	48 89 ce             	mov    %rcx,%rsi
    14a0:	48 c1 ee 02          	shr    $0x2,%rsi
    14a4:	48 83 c6 01          	add    $0x1,%rsi
    14a8:	89 f2                	mov    %esi,%edx
    14aa:	83 e2 01             	and    $0x1,%edx
    14ad:	48 85 c9             	test   %rcx,%rcx
    14b0:	0f 84 b5 00 00 00    	je     156b <main+0x27b>
    14b6:	48 29 d6             	sub    %rdx,%rsi
    14b9:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    14bd:	31 c9                	xor    %ecx,%ecx
    14bf:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    14c3:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    14ca:	00 00 00 
    14cd:	0f 1f 00             	nopl   (%rax)
    d += a[i] * b[i];
    14d0:	66 41 0f 10 14 ce    	movupd (%r14,%rcx,8),%xmm2
    14d6:	66 41 0f 10 5c ce 10 	movupd 0x10(%r14,%rcx,8),%xmm3
    14dd:	66 41 0f 10 64 ce 20 	movupd 0x20(%r14,%rcx,8),%xmm4
    14e4:	66 41 0f 10 6c ce 30 	movupd 0x30(%r14,%rcx,8),%xmm5
    14eb:	66 0f 10 34 cb       	movupd (%rbx,%rcx,8),%xmm6
    14f0:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    14f4:	66 0f 58 f1          	addpd  %xmm1,%xmm6
    14f8:	66 0f 10 54 cb 10    	movupd 0x10(%rbx,%rcx,8),%xmm2
    14fe:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    1502:	66 0f 58 d0          	addpd  %xmm0,%xmm2
    1506:	66 0f 10 4c cb 20    	movupd 0x20(%rbx,%rcx,8),%xmm1
    150c:	66 0f 59 cc          	mulpd  %xmm4,%xmm1
    1510:	66 0f 58 ce          	addpd  %xmm6,%xmm1
    1514:	66 0f 10 44 cb 30    	movupd 0x30(%rbx,%rcx,8),%xmm0
    151a:	66 0f 59 c5          	mulpd  %xmm5,%xmm0
    151e:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    1522:	48 83 c1 08          	add    $0x8,%rcx
    1526:	48 83 c6 fe          	add    $0xfffffffffffffffe,%rsi
    152a:	75 a4                	jne    14d0 <main+0x1e0>
    152c:	48 85 d2             	test   %rdx,%rdx
    152f:	74 28                	je     1559 <main+0x269>
    d += a[i] * b[i];
    1531:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    1536:	66 0f 10 5c cb 10    	movupd 0x10(%rbx,%rcx,8),%xmm3
    153c:	66 41 0f 10 24 ce    	movupd (%r14,%rcx,8),%xmm4
    1542:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1546:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    154a:	66 41 0f 10 54 ce 10 	movupd 0x10(%r14,%rcx,8),%xmm2
    1551:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    1555:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    1559:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    155d:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1561:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1565:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1569:	eb 2e                	jmp    1599 <main+0x2a9>
    156b:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    156f:	31 c9                	xor    %ecx,%ecx
    1571:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1575:	48 85 d2             	test   %rdx,%rdx
    1578:	75 b7                	jne    1531 <main+0x241>
    157a:	eb dd                	jmp    1559 <main+0x269>
    exit(ARGS);
    157c:	bf 01 00 00 00       	mov    $0x1,%edi
    1581:	e8 da fa ff ff       	callq  1060 <exit@plt>
    d += a[i] * b[i];
    1586:	f2 0f 10 0c c3       	movsd  (%rbx,%rax,8),%xmm1
    158b:	f2 41 0f 59 0c c6    	mulsd  (%r14,%rax,8),%xmm1
    1591:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    1595:	48 83 c0 01          	add    $0x1,%rax
    1599:	49 39 c7             	cmp    %rax,%r15
    159c:	75 e8                	jne    1586 <main+0x296>

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    159e:	48 8d 3d 8b 0a 00 00 	lea    0xa8b(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    15a5:	b0 01                	mov    $0x1,%al
    15a7:	e8 94 fa ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    15ac:	4c 89 f7             	mov    %r14,%rdi
    15af:	e8 7c fa ff ff       	callq  1030 <free@plt>
  free(b);
    15b4:	48 89 df             	mov    %rbx,%rdi
    15b7:	e8 74 fa ff ff       	callq  1030 <free@plt>
  
  return 0;
    15bc:	31 c0                	xor    %eax,%eax
    15be:	5b                   	pop    %rbx
    15bf:	41 5e                	pop    %r14
    15c1:	41 5f                	pop    %r15
    15c3:	c3                   	retq   
    15c4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    15cb:	00 00 00 
    15ce:	66 90                	xchg   %ax,%ax

00000000000015d0 <__libc_csu_init>:
    15d0:	f3 0f 1e fa          	endbr64 
    15d4:	41 57                	push   %r15
    15d6:	4c 8d 3d f3 27 00 00 	lea    0x27f3(%rip),%r15        # 3dd0 <__frame_dummy_init_array_entry>
    15dd:	41 56                	push   %r14
    15df:	49 89 d6             	mov    %rdx,%r14
    15e2:	41 55                	push   %r13
    15e4:	49 89 f5             	mov    %rsi,%r13
    15e7:	41 54                	push   %r12
    15e9:	41 89 fc             	mov    %edi,%r12d
    15ec:	55                   	push   %rbp
    15ed:	48 8d 2d ec 27 00 00 	lea    0x27ec(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    15f4:	53                   	push   %rbx
    15f5:	4c 29 fd             	sub    %r15,%rbp
    15f8:	48 83 ec 08          	sub    $0x8,%rsp
    15fc:	e8 ff f9 ff ff       	callq  1000 <_init>
    1601:	48 c1 fd 03          	sar    $0x3,%rbp
    1605:	74 1f                	je     1626 <__libc_csu_init+0x56>
    1607:	31 db                	xor    %ebx,%ebx
    1609:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1610:	4c 89 f2             	mov    %r14,%rdx
    1613:	4c 89 ee             	mov    %r13,%rsi
    1616:	44 89 e7             	mov    %r12d,%edi
    1619:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    161d:	48 83 c3 01          	add    $0x1,%rbx
    1621:	48 39 dd             	cmp    %rbx,%rbp
    1624:	75 ea                	jne    1610 <__libc_csu_init+0x40>
    1626:	48 83 c4 08          	add    $0x8,%rsp
    162a:	5b                   	pop    %rbx
    162b:	5d                   	pop    %rbp
    162c:	41 5c                	pop    %r12
    162e:	41 5d                	pop    %r13
    1630:	41 5e                	pop    %r14
    1632:	41 5f                	pop    %r15
    1634:	c3                   	retq   
    1635:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    163c:	00 00 00 00 

0000000000001640 <__libc_csu_fini>:
    1640:	f3 0f 1e fa          	endbr64 
    1644:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001648 <_fini>:
    1648:	f3 0f 1e fa          	endbr64 
    164c:	48 83 ec 08          	sub    $0x8,%rsp
    1650:	48 83 c4 08          	add    $0x8,%rsp
    1654:	c3                   	retq   
