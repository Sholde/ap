
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
    10b3:	4c 8d 05 f6 0b 00 00 	lea    0xbf6(%rip),%r8        # 1cb0 <__libc_csu_fini>
    10ba:	48 8d 0d 7f 0b 00 00 	lea    0xb7f(%rip),%rcx        # 1c40 <__libc_csu_init>
    10c1:	48 8d 3d a8 06 00 00 	lea    0x6a8(%rip),%rdi        # 1770 <main>
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
#define SIZE 100

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
    11f5:	49 89 c8             	mov    %rcx,%r8
    11f8:	49 c1 e8 02          	shr    $0x2,%r8
    11fc:	49 83 c0 01          	add    $0x1,%r8
    1200:	48 85 c9             	test   %rcx,%rcx
    1203:	0f 84 cf 00 00 00    	je     12d8 <dotprod+0x108>
    1209:	4d 89 c1             	mov    %r8,%r9
    120c:	49 83 e1 fe          	and    $0xfffffffffffffffe,%r9
    1210:	49 f7 d9             	neg    %r9
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
    1272:	49 83 c1 02          	add    $0x2,%r9
    1276:	75 a8                	jne    1220 <dotprod+0x50>
    1278:	41 f6 c0 01          	test   $0x1,%r8b
    127c:	74 26                	je     12a4 <dotprod+0xd4>
    d += a[i] * b[i];
    127e:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    1283:	66 0f 10 5c ce 10    	movupd 0x10(%rsi,%rcx,8),%xmm3
    1289:	66 0f 10 24 cf       	movupd (%rdi,%rcx,8),%xmm4
    128e:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1292:	66 0f 58 cc          	addpd  %xmm4,%xmm1
    1296:	66 0f 10 54 cf 10    	movupd 0x10(%rdi,%rcx,8),%xmm2
    129c:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    12a0:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    12a4:	66 0f 58 c8          	addpd  %xmm0,%xmm1
    12a8:	66 0f 28 c1          	movapd %xmm1,%xmm0
    12ac:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    12b0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    12b4:	48 39 d0             	cmp    %rdx,%rax
    12b7:	74 1e                	je     12d7 <dotprod+0x107>
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
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
    12e2:	41 f6 c0 01          	test   $0x1,%r8b
    12e6:	75 96                	jne    127e <dotprod+0xae>
    12e8:	eb ba                	jmp    12a4 <dotprod+0xd4>
    12ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000012f0 <dotprod_2x>:
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  

  if (n & 1)
    12f0:	f6 c2 01             	test   $0x1,%dl
    12f3:	75 33                	jne    1328 <dotprod_2x+0x38>
    12f5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
      
      return d[0] + d[1] + a[n-1] * b[n-1];
    }
  else
    {
      for (unsigned long long i = 0; i < n; i += 2)
    12f9:	48 85 d2             	test   %rdx,%rdx
    12fc:	74 1d                	je     131b <dotprod_2x+0x2b>
    12fe:	31 c0                	xor    %eax,%eax
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
	  d[1] += a[i + 1] * b[i + 1];
	}

      return d[0] + d[1];
    131b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    131f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1323:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    }
}
    1327:	c3                   	retq   
      for (unsigned long long i = 0; i < n_1; i += 2)
    1328:	48 89 d0             	mov    %rdx,%rax
    132b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    132f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1333:	74 26                	je     135b <dotprod_2x+0x6b>
    1335:	31 c9                	xor    %ecx,%ecx
    1337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    133e:	00 00 
	  d[0] += a[i] * b[i];
    1340:	66 0f 10 0c cf       	movupd (%rdi,%rcx,8),%xmm1
    1345:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    134a:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    134e:	66 0f 58 c2          	addpd  %xmm2,%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    1352:	48 83 c1 02          	add    $0x2,%rcx
    1356:	48 39 c1             	cmp    %rax,%rcx
    1359:	72 e5                	jb     1340 <dotprod_2x+0x50>
      return d[0] + d[1] + a[n-1] * b[n-1];
    135b:	66 0f 28 c8          	movapd %xmm0,%xmm1
    135f:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1363:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1367:	f2 0f 10 44 d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm0
    136d:	f2 0f 59 44 d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm0
    1373:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
}
    1377:	c3                   	retq   
    1378:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    137f:	00 

0000000000001380 <dotprod_4x>:

// vectors of 4 double
double dotprod_4x(double *restrict a, double *restrict b, unsigned long long n)
{
    1380:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d[4] = {0.0};
  unsigned long long test = n % 4;
  
  for (unsigned long long i = 0; i < n; i += 4)
    1384:	48 85 d2             	test   %rdx,%rdx
    1387:	0f 84 9f 00 00 00    	je     142c <dotprod_4x+0xac>
    138d:	31 c0                	xor    %eax,%eax
    138f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1393:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    139a:	00 00 00 
    139d:	0f 1f 00             	nopl   (%rax)
    {
      d[0] += a[i] * b[i];
    13a0:	f2 0f 10 14 c6       	movsd  (%rsi,%rax,8),%xmm2
      d[1] += a[i + 1] * b[i + 1];
    13a5:	f2 0f 10 5c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm3
      d[0] += a[i] * b[i];
    13ab:	66 0f 16 54 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm2
    13b1:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    13b6:	f2 0f 10 6c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    13bc:	66 0f 16 64 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm4
    13c2:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    13c6:	66 0f 58 cc          	addpd  %xmm4,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    13ca:	66 0f 16 5c c6 18    	movhpd 0x18(%rsi,%rax,8),%xmm3
    13d0:	66 0f 16 6c c7 18    	movhpd 0x18(%rdi,%rax,8),%xmm5
    13d6:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    13da:	66 0f 58 c5          	addpd  %xmm5,%xmm0
  for (unsigned long long i = 0; i < n; i += 4)
    13de:	48 83 c0 04          	add    $0x4,%rax
    13e2:	48 39 d0             	cmp    %rdx,%rax
    13e5:	72 b9                	jb     13a0 <dotprod_4x+0x20>
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    }
  
  if (! test)
    13e7:	66 0f 28 d1          	movapd %xmm1,%xmm2
    13eb:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    13ef:	f6 c2 03             	test   $0x3,%dl
    13f2:	75 40                	jne    1434 <dotprod_4x+0xb4>
    {
      unsigned long long n_4 = n - 4;

      for (unsigned long long i = n_4 + 1; i < n; ++i)
    13f4:	48 83 fa 03          	cmp    $0x3,%rdx
    13f8:	72 3a                	jb     1434 <dotprod_4x+0xb4>
	  d[0] += a[i] * b[i];
    13fa:	f2 0f 10 5c d6 e8    	movsd  -0x18(%rsi,%rdx,8),%xmm3
    1400:	f2 0f 10 64 d6 f0    	movsd  -0x10(%rsi,%rdx,8),%xmm4
    1406:	f2 0f 59 5c d7 e8    	mulsd  -0x18(%rdi,%rdx,8),%xmm3
    140c:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1410:	f2 0f 59 64 d7 f0    	mulsd  -0x10(%rdi,%rdx,8),%xmm4
    1416:	f2 0f 10 4c d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm1
    141c:	f2 0f 59 4c d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm1
    1422:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1426:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    142a:	eb 08                	jmp    1434 <dotprod_4x+0xb4>
    142c:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
  double d[4] = {0.0};
    1430:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    }

  return d[0] + d[1] + d[2] + d[3];
    1434:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    1438:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    143c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1440:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1444:	c3                   	retq   
    1445:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    144c:	00 00 00 
    144f:	90                   	nop

0000000000001450 <dotprod_8x>:
}

// vectors of 8 double
double dotprod_8x(double *restrict a, double *restrict b, unsigned long long n)
{
    1450:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d[8] = {0.0};
  unsigned long long test = n % 8;

  for (unsigned long long i = 0; i < n; i += 8)
    1454:	48 85 d2             	test   %rdx,%rdx
    1457:	0f 84 0f 01 00 00    	je     156c <dotprod_8x+0x11c>
    145d:	31 c0                	xor    %eax,%eax
    145f:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1463:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    1467:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    {
      d[0] += a[i] * b[i];
    1470:	f2 0f 10 24 c6       	movsd  (%rsi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    1475:	f2 0f 10 6c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    147b:	66 0f 16 64 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm4
    1481:	f2 0f 10 34 c7       	movsd  (%rdi,%rax,8),%xmm6
      d[1] += a[i + 1] * b[i + 1];
    1486:	f2 0f 10 7c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm7
      d[0] += a[i] * b[i];
    148c:	66 0f 16 74 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm6
    1492:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    1496:	66 0f 58 de          	addpd  %xmm6,%xmm3
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    149a:	66 0f 10 64 c7 18    	movupd 0x18(%rdi,%rax,8),%xmm4
    14a0:	66 0f 10 74 c6 18    	movupd 0x18(%rsi,%rax,8),%xmm6
    14a6:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    14aa:	66 0f 58 d6          	addpd  %xmm6,%xmm2
      d[4] += a[i + 4] * b[i + 4];
      d[5] += a[i + 5] * b[i + 5];
    14ae:	66 0f 10 64 c7 28    	movupd 0x28(%rdi,%rax,8),%xmm4
    14b4:	66 0f 10 74 c6 28    	movupd 0x28(%rsi,%rax,8),%xmm6
    14ba:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    14be:	66 0f 58 ce          	addpd  %xmm6,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    14c2:	66 0f 16 6c c6 38    	movhpd 0x38(%rsi,%rax,8),%xmm5
    14c8:	66 0f 16 7c c7 38    	movhpd 0x38(%rdi,%rax,8),%xmm7
    14ce:	66 0f 59 fd          	mulpd  %xmm5,%xmm7
    14d2:	66 0f 58 c7          	addpd  %xmm7,%xmm0
  for (unsigned long long i = 0; i < n; i += 8)
    14d6:	48 83 c0 08          	add    $0x8,%rax
    14da:	48 39 d0             	cmp    %rdx,%rax
    14dd:	72 91                	jb     1470 <dotprod_8x+0x20>
      d[6] += a[i + 6] * b[i + 6];
      d[7] += a[i + 7] * b[i + 7];
    }

  if (! test)
    14df:	66 0f 28 e3          	movapd %xmm3,%xmm4
    14e3:	66 0f 15 e3          	unpckhpd %xmm3,%xmm4
    14e7:	f6 c2 07             	test   $0x7,%dl
    14ea:	0f 85 8c 00 00 00    	jne    157c <dotprod_8x+0x12c>
    {
      unsigned long long n_8 = n - 8;

      for (unsigned long long i = n_8 + 1; i < n; ++i)
    14f0:	48 83 fa 07          	cmp    $0x7,%rdx
    14f4:	0f 82 82 00 00 00    	jb     157c <dotprod_8x+0x12c>
	  d[0] += a[i] * b[i];
    14fa:	f2 0f 10 6c d6 c8    	movsd  -0x38(%rsi,%rdx,8),%xmm5
    1500:	f2 0f 10 74 d6 d0    	movsd  -0x30(%rsi,%rdx,8),%xmm6
    1506:	f2 0f 59 6c d7 c8    	mulsd  -0x38(%rdi,%rdx,8),%xmm5
    150c:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    1510:	f2 0f 59 74 d7 d0    	mulsd  -0x30(%rdi,%rdx,8),%xmm6
    1516:	f2 0f 10 5c d6 d8    	movsd  -0x28(%rsi,%rdx,8),%xmm3
    151c:	f2 0f 59 5c d7 d8    	mulsd  -0x28(%rdi,%rdx,8),%xmm3
    1522:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    1526:	f2 0f 10 74 d6 e0    	movsd  -0x20(%rsi,%rdx,8),%xmm6
    152c:	f2 0f 59 74 d7 e0    	mulsd  -0x20(%rdi,%rdx,8),%xmm6
    1532:	f2 0f 58 f3          	addsd  %xmm3,%xmm6
    1536:	f2 0f 58 f5          	addsd  %xmm5,%xmm6
    153a:	f2 0f 10 5c d6 e8    	movsd  -0x18(%rsi,%rdx,8),%xmm3
    1540:	f2 0f 59 5c d7 e8    	mulsd  -0x18(%rdi,%rdx,8),%xmm3
    1546:	f2 0f 10 6c d6 f0    	movsd  -0x10(%rsi,%rdx,8),%xmm5
    154c:	f2 0f 59 6c d7 f0    	mulsd  -0x10(%rdi,%rdx,8),%xmm5
    1552:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    1556:	f2 0f 10 5c d6 f8    	movsd  -0x8(%rsi,%rdx,8),%xmm3
    155c:	f2 0f 59 5c d7 f8    	mulsd  -0x8(%rdi,%rdx,8),%xmm3
    1562:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    1566:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    156a:	eb 10                	jmp    157c <dotprod_8x+0x12c>
    156c:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
  double d[8] = {0.0};
    1570:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1574:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1578:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    }
  
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    157c:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
    1580:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    1584:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1588:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    158c:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1590:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1594:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1598:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    159c:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    15a0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    15a4:	c3                   	retq   
    15a5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    15ac:	00 00 00 
    15af:	90                   	nop

00000000000015b0 <dotprod_16x>:
}

// vectors of 16 double
double dotprod_16x(double *restrict a, double *restrict b, unsigned long long n)
{
    15b0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d[16] = {0.0};
  unsigned long long test = n % 16;

  for (unsigned long long i = 0; i < n; i += 16)
    15b4:	48 85 d2             	test   %rdx,%rdx
    15b7:	0f 84 1c 01 00 00    	je     16d9 <dotprod_16x+0x129>
    15bd:	31 c0                	xor    %eax,%eax
    15bf:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    15c4:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    15c9:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    15ce:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    15d2:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    15d6:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    15db:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    15df:	90                   	nop
    {
      d[0] += a[i] * b[i];
    15e0:	f2 0f 10 2c c6       	movsd  (%rsi,%rax,8),%xmm5
      d[1] += a[i + 1] * b[i + 1];
    15e5:	f2 0f 10 4c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm1
      d[0] += a[i] * b[i];
    15eb:	66 0f 16 6c c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm5
    15f1:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    15f6:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
      d[0] += a[i] * b[i];
    15fc:	66 0f 16 64 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm4
    1602:	66 0f 59 e5          	mulpd  %xmm5,%xmm4
    1606:	66 0f 58 d4          	addpd  %xmm4,%xmm2
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    160a:	66 0f 10 64 c7 18    	movupd 0x18(%rdi,%rax,8),%xmm4
    1610:	66 0f 10 6c c6 18    	movupd 0x18(%rsi,%rax,8),%xmm5
    1616:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    161a:	66 44 0f 58 e5       	addpd  %xmm5,%xmm12
      d[4] += a[i + 4] * b[i + 4];
      d[5] += a[i + 5] * b[i + 5];
    161f:	66 0f 10 64 c7 28    	movupd 0x28(%rdi,%rax,8),%xmm4
    1625:	66 0f 10 6c c6 28    	movupd 0x28(%rsi,%rax,8),%xmm5
    162b:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    162f:	66 0f 58 fd          	addpd  %xmm5,%xmm7
      d[6] += a[i + 6] * b[i + 6];
      d[7] += a[i + 7] * b[i + 7];
    1633:	66 0f 10 64 c7 38    	movupd 0x38(%rdi,%rax,8),%xmm4
    1639:	66 0f 10 6c c6 38    	movupd 0x38(%rsi,%rax,8),%xmm5
    163f:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    1643:	66 0f 58 f5          	addpd  %xmm5,%xmm6
      d[8] += a[i + 8] * b[i + 8];
      d[9] += a[i + 9] * b[i + 9];
    1647:	66 0f 10 64 c7 48    	movupd 0x48(%rdi,%rax,8),%xmm4
    164d:	66 0f 10 6c c6 48    	movupd 0x48(%rsi,%rax,8),%xmm5
    1653:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    1657:	66 44 0f 58 dd       	addpd  %xmm5,%xmm11
      d[10] += a[i + 10] * b[i + 10];
      d[11] += a[i + 11] * b[i + 11];
    165c:	66 0f 10 64 c7 58    	movupd 0x58(%rdi,%rax,8),%xmm4
    1662:	66 0f 10 6c c6 58    	movupd 0x58(%rsi,%rax,8),%xmm5
    1668:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    166c:	66 44 0f 58 d5       	addpd  %xmm5,%xmm10
      d[12] += a[i + 12] * b[i + 12];
      d[13] += a[i + 13] * b[i + 13];
    1671:	66 0f 10 64 c7 68    	movupd 0x68(%rdi,%rax,8),%xmm4
    1677:	66 0f 10 6c c6 68    	movupd 0x68(%rsi,%rax,8),%xmm5
    167d:	66 0f 59 ec          	mulpd  %xmm4,%xmm5
    1681:	66 44 0f 58 cd       	addpd  %xmm5,%xmm9
      d[1] += a[i + 1] * b[i + 1];
    1686:	66 0f 16 4c c6 78    	movhpd 0x78(%rsi,%rax,8),%xmm1
    168c:	66 0f 16 5c c7 78    	movhpd 0x78(%rdi,%rax,8),%xmm3
    1692:	66 0f 59 d9          	mulpd  %xmm1,%xmm3
    1696:	66 0f 58 c3          	addpd  %xmm3,%xmm0
  for (unsigned long long i = 0; i < n; i += 16)
    169a:	48 83 c0 10          	add    $0x10,%rax
    169e:	48 39 d0             	cmp    %rdx,%rax
    16a1:	0f 82 39 ff ff ff    	jb     15e0 <dotprod_16x+0x30>
      d[14] += a[i + 14] * b[i + 14];
      d[15] += a[i + 15] * b[i + 15];
    }

  if (! test)
    16a7:	66 44 0f 28 c2       	movapd %xmm2,%xmm8
    16ac:	66 44 0f 15 c2       	unpckhpd %xmm2,%xmm8
    16b1:	f6 c2 0f             	test   $0xf,%dl
    16b4:	75 48                	jne    16fe <dotprod_16x+0x14e>
    16b6:	48 83 fa 0e          	cmp    $0xe,%rdx
    16ba:	76 42                	jbe    16fe <dotprod_16x+0x14e>
    {
      unsigned long long n_16 = n - 16;

      for (unsigned long long i = n_16 + 1; i < n; ++i)
    16bc:	48 8d 42 f1          	lea    -0xf(%rdx),%rax
	  d[0] += a[i] * b[i];
    16c0:	f2 0f 10 0c c6       	movsd  (%rsi,%rax,8),%xmm1
    16c5:	f2 0f 59 0c c7       	mulsd  (%rdi,%rax,8),%xmm1
    16ca:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    16ce:	48 83 c0 01          	add    $0x1,%rax
    16d2:	48 39 d0             	cmp    %rdx,%rax
    16d5:	72 e9                	jb     16c0 <dotprod_16x+0x110>
    16d7:	eb 25                	jmp    16fe <dotprod_16x+0x14e>
    16d9:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
  double d[16] = {0.0};
    16de:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    16e2:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    16e7:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    16ec:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    16f1:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    16f5:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    16f9:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    }
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    16fe:	f2 45 0f 58 c4       	addsd  %xmm12,%xmm8
    1703:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    1708:	f2 44 0f 58 e7       	addsd  %xmm7,%xmm12
    170d:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    1711:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1716:	f2 44 0f 58 e6       	addsd  %xmm6,%xmm12
    171b:	66 0f 15 f6          	unpckhpd %xmm6,%xmm6
    171f:	f2 0f 58 f7          	addsd  %xmm7,%xmm6
    1723:	f2 45 0f 58 e3       	addsd  %xmm11,%xmm12
    1728:	66 45 0f 15 db       	unpckhpd %xmm11,%xmm11
    172d:	f2 44 0f 58 de       	addsd  %xmm6,%xmm11
    1732:	f2 45 0f 58 e2       	addsd  %xmm10,%xmm12
    1737:	66 45 0f 15 d2       	unpckhpd %xmm10,%xmm10
    173c:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    1741:	f2 45 0f 58 e1       	addsd  %xmm9,%xmm12
    1746:	66 45 0f 15 c9       	unpckhpd %xmm9,%xmm9
    174b:	f2 45 0f 58 ca       	addsd  %xmm10,%xmm9
    1750:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
    1755:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1759:	f2 41 0f 58 c4       	addsd  %xmm12,%xmm0
    175e:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1762:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    1767:	c3                   	retq   
    1768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    176f:	00 

0000000000001770 <main>:
}

int main(int argc, char **argv)
{
    1770:	41 57                	push   %r15
    1772:	41 56                	push   %r14
    1774:	53                   	push   %rbx
    1775:	48 83 ec 40          	sub    $0x40,%rsp
  if (argc != 2)
    1779:	83 ff 02             	cmp    $0x2,%edi
    177c:	0f 85 8a 02 00 00    	jne    1a0c <main+0x29c>
  return strtoll(argv[1], NULL, 10);
    1782:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1786:	31 f6                	xor    %esi,%esi
    1788:	ba 0a 00 00 00       	mov    $0xa,%edx
    178d:	e8 be f8 ff ff       	callq  1050 <strtoll@plt>
    1792:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1795:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    179c:	00 
    179d:	bf 40 00 00 00       	mov    $0x40,%edi
    17a2:	48 89 de             	mov    %rbx,%rsi
    17a5:	e8 c6 f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17aa:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    17ad:	bf 40 00 00 00       	mov    $0x40,%edi
    17b2:	48 89 de             	mov    %rbx,%rsi
    17b5:	e8 b6 f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17ba:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    17bd:	4d 85 ff             	test   %r15,%r15
    17c0:	74 0d                	je     17cf <main+0x5f>
    17c2:	49 83 ff 04          	cmp    $0x4,%r15
    17c6:	73 1c                	jae    17e4 <main+0x74>
    17c8:	31 c0                	xor    %eax,%eax
    17ca:	e9 17 01 00 00       	jmpq   18e6 <main+0x176>
    17cf:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    17d3:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    17d7:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
      return d[0] + d[1];
    17db:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    17df:	e9 d6 02 00 00       	jmpq   1aba <main+0x34a>
  for (unsigned long long i = 0; i < n; i++)
    17e4:	4c 89 f8             	mov    %r15,%rax
    17e7:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    17eb:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    17ef:	48 89 f2             	mov    %rsi,%rdx
    17f2:	48 c1 ea 02          	shr    $0x2,%rdx
    17f6:	48 83 c2 01          	add    $0x1,%rdx
    17fa:	89 d1                	mov    %edx,%ecx
    17fc:	83 e1 03             	and    $0x3,%ecx
    17ff:	48 83 fe 0c          	cmp    $0xc,%rsi
    1803:	73 07                	jae    180c <main+0x9c>
    1805:	31 f6                	xor    %esi,%esi
    1807:	e9 94 00 00 00       	jmpq   18a0 <main+0x130>
    180c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1810:	48 f7 da             	neg    %rdx
    1813:	31 f6                	xor    %esi,%esi
    1815:	66 0f 28 05 f3 07 00 	movapd 0x7f3(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    181c:	00 
    181d:	66 0f 28 0d fb 07 00 	movapd 0x7fb(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1824:	00 
    1825:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    182c:	00 00 00 
    182f:	90                   	nop
      a[i] = 0.1;
    1830:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    1836:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
      b[i] = 1.0;
    183d:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    1842:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
      a[i] = 0.1;
    1848:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    184f:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
      b[i] = 1.0;
    1856:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    185c:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
      a[i] = 0.1;
    1862:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    1869:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
      b[i] = 1.0;
    1870:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    1876:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
      a[i] = 0.1;
    187c:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    1883:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
      b[i] = 1.0;
    188a:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1890:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
  for (unsigned long long i = 0; i < n; i++)
    1896:	48 83 c6 10          	add    $0x10,%rsi
    189a:	48 83 c2 04          	add    $0x4,%rdx
    189e:	75 90                	jne    1830 <main+0xc0>
    18a0:	48 85 c9             	test   %rcx,%rcx
    18a3:	74 3c                	je     18e1 <main+0x171>
    18a5:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    18ac:	00 
    18ad:	48 f7 d9             	neg    %rcx
    18b0:	66 0f 28 05 58 07 00 	movapd 0x758(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    18b7:	00 
    18b8:	66 0f 28 0d 60 07 00 	movapd 0x760(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    18bf:	00 
      a[i] = 0.1;
    18c0:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    18c7:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
      b[i] = 1.0;
    18cd:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    18d3:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    18d8:	48 83 c2 20          	add    $0x20,%rdx
    18dc:	48 ff c1             	inc    %rcx
    18df:	75 df                	jne    18c0 <main+0x150>
    18e1:	49 39 c7             	cmp    %rax,%r15
    18e4:	74 2b                	je     1911 <main+0x1a1>
    18e6:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    18ed:	99 b9 3f 
    18f0:	48 ba 00 00 00 00 00 	movabs $0x3ff0000000000000,%rdx
    18f7:	00 f0 3f 
    18fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1900:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 1.0;
    1904:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1908:	48 83 c0 01          	add    $0x1,%rax
    190c:	49 39 c7             	cmp    %rax,%r15
    190f:	75 ef                	jne    1900 <main+0x190>
  for (unsigned long long i = 0; i < n; ++i)
    1911:	49 83 ff 04          	cmp    $0x4,%r15
    1915:	73 0b                	jae    1922 <main+0x1b2>
    1917:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    191b:	31 c0                	xor    %eax,%eax
    191d:	e9 f4 00 00 00       	jmpq   1a16 <main+0x2a6>
    1922:	4c 89 f8             	mov    %r15,%rax
    1925:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    1929:	48 8d 50 fc          	lea    -0x4(%rax),%rdx
    192d:	48 89 d1             	mov    %rdx,%rcx
    1930:	48 c1 e9 02          	shr    $0x2,%rcx
    1934:	48 83 c1 01          	add    $0x1,%rcx
    1938:	48 85 d2             	test   %rdx,%rdx
    193b:	0f 84 ba 00 00 00    	je     19fb <main+0x28b>
    1941:	48 89 ce             	mov    %rcx,%rsi
    1944:	48 83 e6 fe          	and    $0xfffffffffffffffe,%rsi
    1948:	48 f7 de             	neg    %rsi
    194b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    194f:	31 d2                	xor    %edx,%edx
    1951:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1955:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    195c:	00 00 00 
    195f:	90                   	nop
    d += a[i] * b[i];
    1960:	66 41 0f 10 14 d6    	movupd (%r14,%rdx,8),%xmm2
    1966:	66 41 0f 10 5c d6 10 	movupd 0x10(%r14,%rdx,8),%xmm3
    196d:	66 41 0f 10 64 d6 20 	movupd 0x20(%r14,%rdx,8),%xmm4
    1974:	66 41 0f 10 6c d6 30 	movupd 0x30(%r14,%rdx,8),%xmm5
    197b:	66 0f 10 34 d3       	movupd (%rbx,%rdx,8),%xmm6
    1980:	66 0f 59 f2          	mulpd  %xmm2,%xmm6
    1984:	66 0f 58 f0          	addpd  %xmm0,%xmm6
    1988:	66 0f 10 54 d3 10    	movupd 0x10(%rbx,%rdx,8),%xmm2
    198e:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    1992:	66 0f 58 d1          	addpd  %xmm1,%xmm2
    1996:	66 0f 10 44 d3 20    	movupd 0x20(%rbx,%rdx,8),%xmm0
    199c:	66 0f 59 c4          	mulpd  %xmm4,%xmm0
    19a0:	66 0f 58 c6          	addpd  %xmm6,%xmm0
    19a4:	66 0f 10 4c d3 30    	movupd 0x30(%rbx,%rdx,8),%xmm1
    19aa:	66 0f 59 cd          	mulpd  %xmm5,%xmm1
    19ae:	66 0f 58 ca          	addpd  %xmm2,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    19b2:	48 83 c2 08          	add    $0x8,%rdx
    19b6:	48 83 c6 02          	add    $0x2,%rsi
    19ba:	75 a4                	jne    1960 <main+0x1f0>
    19bc:	f6 c1 01             	test   $0x1,%cl
    19bf:	74 28                	je     19e9 <main+0x279>
    d += a[i] * b[i];
    19c1:	66 0f 10 14 d3       	movupd (%rbx,%rdx,8),%xmm2
    19c6:	66 0f 10 5c d3 10    	movupd 0x10(%rbx,%rdx,8),%xmm3
    19cc:	66 41 0f 10 24 d6    	movupd (%r14,%rdx,8),%xmm4
    19d2:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    19d6:	66 0f 58 c4          	addpd  %xmm4,%xmm0
    19da:	66 41 0f 10 54 d6 10 	movupd 0x10(%r14,%rdx,8),%xmm2
    19e1:	66 0f 59 d3          	mulpd  %xmm3,%xmm2
    19e5:	66 0f 58 ca          	addpd  %xmm2,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    19e9:	66 0f 58 c1          	addpd  %xmm1,%xmm0
    19ed:	66 0f 28 f0          	movapd %xmm0,%xmm6
    19f1:	66 0f 15 f0          	unpckhpd %xmm0,%xmm6
    19f5:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    19f9:	eb 2e                	jmp    1a29 <main+0x2b9>
    19fb:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    19ff:	31 d2                	xor    %edx,%edx
    1a01:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1a05:	f6 c1 01             	test   $0x1,%cl
    1a08:	75 b7                	jne    19c1 <main+0x251>
    1a0a:	eb dd                	jmp    19e9 <main+0x279>
    exit(ARGS);
    1a0c:	bf 01 00 00 00       	mov    $0x1,%edi
    1a11:	e8 4a f6 ff ff       	callq  1060 <exit@plt>
    d += a[i] * b[i];
    1a16:	f2 0f 10 04 c3       	movsd  (%rbx,%rax,8),%xmm0
    1a1b:	f2 41 0f 59 04 c6    	mulsd  (%r14,%rax,8),%xmm0
    1a21:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
  for (unsigned long long i = 0; i < n; ++i)
    1a25:	48 83 c0 01          	add    $0x1,%rax
    1a29:	49 39 c7             	cmp    %rax,%r15
    1a2c:	75 e8                	jne    1a16 <main+0x2a6>
  if (n & 1)
    1a2e:	41 f6 c7 01          	test   $0x1,%r15b
    1a32:	75 36                	jne    1a6a <main+0x2fa>
    1a34:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1a38:	31 c0                	xor    %eax,%eax
    1a3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
	  d[0] += a[i] * b[i];
    1a40:	66 41 0f 10 04 c6    	movupd (%r14,%rax,8),%xmm0
    1a46:	66 0f 10 0c c3       	movupd (%rbx,%rax,8),%xmm1
    1a4b:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
    1a4f:	66 0f 58 f9          	addpd  %xmm1,%xmm7
      for (unsigned long long i = 0; i < n; i += 2)
    1a53:	48 83 c0 02          	add    $0x2,%rax
    1a57:	4c 39 f8             	cmp    %r15,%rax
    1a5a:	72 e4                	jb     1a40 <main+0x2d0>
    1a5c:	66 0f 28 c7          	movapd %xmm7,%xmm0
    1a60:	66 0f 15 c7          	unpckhpd %xmm7,%xmm0
      return d[0] + d[1];
    1a64:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1a68:	eb 50                	jmp    1aba <main+0x34a>
      for (unsigned long long i = 0; i < n_1; i += 2)
    1a6a:	4c 89 f8             	mov    %r15,%rax
    1a6d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1a71:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1a75:	74 25                	je     1a9c <main+0x32c>
    1a77:	31 c9                	xor    %ecx,%ecx
    1a79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  d[0] += a[i] * b[i];
    1a80:	66 41 0f 10 0c ce    	movupd (%r14,%rcx,8),%xmm1
    1a86:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    1a8b:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    1a8f:	66 0f 58 c2          	addpd  %xmm2,%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    1a93:	48 83 c1 02          	add    $0x2,%rcx
    1a97:	48 39 c1             	cmp    %rax,%rcx
    1a9a:	72 e4                	jb     1a80 <main+0x310>
      return d[0] + d[1] + a[n-1] * b[n-1];
    1a9c:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1aa0:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1aa4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1aa8:	f2 42 0f 10 7c fb f8 	movsd  -0x8(%rbx,%r15,8),%xmm7
    1aaf:	f2 43 0f 59 7c fe f8 	mulsd  -0x8(%r14,%r15,8),%xmm7
    1ab6:	f2 0f 58 f9          	addsd  %xmm1,%xmm7
  for (unsigned long long i = 0; i < n; i++)
    1aba:	4d 85 ff             	test   %r15,%r15
    1abd:	66 0f 29 74 24 30    	movapd %xmm6,0x30(%rsp)
    1ac3:	66 0f 29 7c 24 20    	movapd %xmm7,0x20(%rsp)
    1ac9:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  for (unsigned long long i = 0; i < n; i += 4)
    1acd:	0f 84 a4 00 00 00    	je     1b77 <main+0x407>
    1ad3:	31 c0                	xor    %eax,%eax
    1ad5:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      d[0] += a[i] * b[i];
    1ae0:	f2 0f 10 14 c3       	movsd  (%rbx,%rax,8),%xmm2
      d[1] += a[i + 1] * b[i + 1];
    1ae5:	f2 0f 10 5c c3 08    	movsd  0x8(%rbx,%rax,8),%xmm3
      d[0] += a[i] * b[i];
    1aeb:	66 0f 16 54 c3 10    	movhpd 0x10(%rbx,%rax,8),%xmm2
    1af1:	f2 41 0f 10 24 c6    	movsd  (%r14,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    1af7:	f2 41 0f 10 6c c6 08 	movsd  0x8(%r14,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    1afe:	66 41 0f 16 64 c6 10 	movhpd 0x10(%r14,%rax,8),%xmm4
    1b05:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1b09:	66 0f 58 cc          	addpd  %xmm4,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    1b0d:	66 0f 16 5c c3 18    	movhpd 0x18(%rbx,%rax,8),%xmm3
    1b13:	66 41 0f 16 6c c6 18 	movhpd 0x18(%r14,%rax,8),%xmm5
    1b1a:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    1b1e:	66 0f 58 c5          	addpd  %xmm5,%xmm0
  for (unsigned long long i = 0; i < n; i += 4)
    1b22:	48 83 c0 04          	add    $0x4,%rax
    1b26:	4c 39 f8             	cmp    %r15,%rax
    1b29:	72 b5                	jb     1ae0 <main+0x370>
  if (! test)
    1b2b:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1b2f:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    1b33:	41 f6 c7 03          	test   $0x3,%r15b
    1b37:	75 46                	jne    1b7f <main+0x40f>
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1b39:	49 83 ff 03          	cmp    $0x3,%r15
    1b3d:	72 40                	jb     1b7f <main+0x40f>
	  d[0] += a[i] * b[i];
    1b3f:	f2 42 0f 10 5c fb e8 	movsd  -0x18(%rbx,%r15,8),%xmm3
    1b46:	f2 42 0f 10 64 fb f0 	movsd  -0x10(%rbx,%r15,8),%xmm4
    1b4d:	f2 43 0f 59 5c fe e8 	mulsd  -0x18(%r14,%r15,8),%xmm3
    1b54:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1b58:	f2 43 0f 59 64 fe f0 	mulsd  -0x10(%r14,%r15,8),%xmm4
    1b5f:	f2 42 0f 10 4c fb f8 	movsd  -0x8(%rbx,%r15,8),%xmm1
    1b66:	f2 43 0f 59 4c fe f8 	mulsd  -0x8(%r14,%r15,8),%xmm1
    1b6d:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1b71:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1b75:	eb 08                	jmp    1b7f <main+0x40f>
    1b77:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
  double d[4] = {0.0};
    1b7b:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
  return d[0] + d[1] + d[2] + d[3];
    1b7f:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1b83:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1b87:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1b8b:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1b8f:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1b93:	66 0f 29 4c 24 10    	movapd %xmm1,0x10(%rsp)

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
  double res_4x = dotprod_4x(a, b, n);
  double res_8x = dotprod_8x(a, b, n);
    1b99:	4c 89 f7             	mov    %r14,%rdi
    1b9c:	48 89 de             	mov    %rbx,%rsi
    1b9f:	4c 89 fa             	mov    %r15,%rdx
    1ba2:	e8 a9 f8 ff ff       	callq  1450 <dotprod_8x>
    1ba7:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    1bad:	4c 89 f7             	mov    %r14,%rdi
    1bb0:	48 89 de             	mov    %rbx,%rsi
    1bb3:	4c 89 fa             	mov    %r15,%rdx
    1bb6:	e8 f5 f9 ff ff       	callq  15b0 <dotprod_16x>
    1bbb:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)

  // Print result
  printf("res = %lf\n", res);
    1bc0:	48 8d 3d 69 04 00 00 	lea    0x469(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    1bc7:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1bcc:	b0 01                	mov    $0x1,%al
    1bce:	e8 6d f4 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1bd3:	48 8d 3d 61 04 00 00 	lea    0x461(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1bda:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    1bdf:	b0 01                	mov    $0x1,%al
    1be1:	e8 5a f4 ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1be6:	48 8d 3d 5c 04 00 00 	lea    0x45c(%rip),%rdi        # 2049 <_IO_stdin_used+0x49>
    1bed:	0f 28 44 24 10       	movaps 0x10(%rsp),%xmm0
    1bf2:	b0 01                	mov    $0x1,%al
    1bf4:	e8 47 f4 ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    1bf9:	48 8d 3d 57 04 00 00 	lea    0x457(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1c00:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1c06:	b0 01                	mov    $0x1,%al
    1c08:	e8 33 f4 ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    1c0d:	48 8d 3d 51 04 00 00 	lea    0x451(%rip),%rdi        # 2065 <_IO_stdin_used+0x65>
    1c14:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
    1c19:	b0 01                	mov    $0x1,%al
    1c1b:	e8 20 f4 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1c20:	4c 89 f7             	mov    %r14,%rdi
    1c23:	e8 08 f4 ff ff       	callq  1030 <free@plt>
  free(b);
    1c28:	48 89 df             	mov    %rbx,%rdi
    1c2b:	e8 00 f4 ff ff       	callq  1030 <free@plt>
  
  return 0;
    1c30:	31 c0                	xor    %eax,%eax
    1c32:	48 83 c4 40          	add    $0x40,%rsp
    1c36:	5b                   	pop    %rbx
    1c37:	41 5e                	pop    %r14
    1c39:	41 5f                	pop    %r15
    1c3b:	c3                   	retq   
    1c3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001c40 <__libc_csu_init>:
    1c40:	f3 0f 1e fa          	endbr64 
    1c44:	41 57                	push   %r15
    1c46:	4c 8d 3d 83 21 00 00 	lea    0x2183(%rip),%r15        # 3dd0 <__frame_dummy_init_array_entry>
    1c4d:	41 56                	push   %r14
    1c4f:	49 89 d6             	mov    %rdx,%r14
    1c52:	41 55                	push   %r13
    1c54:	49 89 f5             	mov    %rsi,%r13
    1c57:	41 54                	push   %r12
    1c59:	41 89 fc             	mov    %edi,%r12d
    1c5c:	55                   	push   %rbp
    1c5d:	48 8d 2d 7c 21 00 00 	lea    0x217c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1c64:	53                   	push   %rbx
    1c65:	4c 29 fd             	sub    %r15,%rbp
    1c68:	48 83 ec 08          	sub    $0x8,%rsp
    1c6c:	e8 8f f3 ff ff       	callq  1000 <_init>
    1c71:	48 c1 fd 03          	sar    $0x3,%rbp
    1c75:	74 1f                	je     1c96 <__libc_csu_init+0x56>
    1c77:	31 db                	xor    %ebx,%ebx
    1c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1c80:	4c 89 f2             	mov    %r14,%rdx
    1c83:	4c 89 ee             	mov    %r13,%rsi
    1c86:	44 89 e7             	mov    %r12d,%edi
    1c89:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1c8d:	48 83 c3 01          	add    $0x1,%rbx
    1c91:	48 39 dd             	cmp    %rbx,%rbp
    1c94:	75 ea                	jne    1c80 <__libc_csu_init+0x40>
    1c96:	48 83 c4 08          	add    $0x8,%rsp
    1c9a:	5b                   	pop    %rbx
    1c9b:	5d                   	pop    %rbp
    1c9c:	41 5c                	pop    %r12
    1c9e:	41 5d                	pop    %r13
    1ca0:	41 5e                	pop    %r14
    1ca2:	41 5f                	pop    %r15
    1ca4:	c3                   	retq   
    1ca5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1cac:	00 00 00 00 

0000000000001cb0 <__libc_csu_fini>:
    1cb0:	f3 0f 1e fa          	endbr64 
    1cb4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001cb8 <_fini>:
    1cb8:	f3 0f 1e fa          	endbr64 
    1cbc:	48 83 ec 08          	sub    $0x8,%rsp
    1cc0:	48 83 c4 08          	add    $0x8,%rsp
    1cc4:	c3                   	retq   
