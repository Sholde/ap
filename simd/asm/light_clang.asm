
light_clang:     format de fichier elf64-x86-64


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
    1093:	4c 8d 05 66 05 00 00 	lea    0x566(%rip),%r8        # 1600 <__libc_csu_fini>
    109a:	48 8d 0d ef 04 00 00 	lea    0x4ef(%rip),%rcx        # 1590 <__libc_csu_init>
    10a1:	48 8d 3d 18 02 00 00 	lea    0x218(%rip),%rdi        # 12c0 <main>
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
    1184:	75 11                	jne    1197 <parse_args+0x17>
    exit(ARGS);

  return strtoll(argv[1], NULL, 10);
    1186:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    118a:	31 f6                	xor    %esi,%esi
    118c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1191:	58                   	pop    %rax
    1192:	e9 b9 fe ff ff       	jmpq   1050 <strtoll@plt>
    exit(ARGS);
    1197:	bf 01 00 00 00       	mov    $0x1,%edi
    119c:	e8 bf fe ff ff       	callq  1060 <exit@plt>
    11a1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11a8:	00 00 00 
    11ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011b0 <dotprod>:
// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; ++i)
    11b0:	48 85 d2             	test   %rdx,%rdx
    11b3:	74 17                	je     11cc <dotprod+0x1c>
    11b5:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
    11b9:	89 d0                	mov    %edx,%eax
    11bb:	83 e0 03             	and    $0x3,%eax
    11be:	48 83 f9 03          	cmp    $0x3,%rcx
    11c2:	73 0c                	jae    11d0 <dotprod+0x20>
    11c4:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11c8:	31 c9                	xor    %ecx,%ecx
    11ca:	eb 5b                	jmp    1227 <dotprod+0x77>
    11cc:	0f 57 c0             	xorps  %xmm0,%xmm0
    d += a[i] * b[i];
  
  return d;
    11cf:	c3                   	retq   
  for (unsigned long long i = 0; i < n; ++i)
    11d0:	48 29 c2             	sub    %rax,%rdx
    11d3:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11d7:	31 c9                	xor    %ecx,%ecx
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    d += a[i] * b[i];
    11e0:	f2 0f 10 0c cf       	movsd  (%rdi,%rcx,8),%xmm1
    11e5:	f2 0f 10 54 cf 08    	movsd  0x8(%rdi,%rcx,8),%xmm2
    11eb:	f2 0f 59 0c ce       	mulsd  (%rsi,%rcx,8),%xmm1
    11f0:	f2 0f 59 54 ce 08    	mulsd  0x8(%rsi,%rcx,8),%xmm2
    11f6:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    11fa:	f2 0f 10 5c cf 10    	movsd  0x10(%rdi,%rcx,8),%xmm3
    1200:	f2 0f 59 5c ce 10    	mulsd  0x10(%rsi,%rcx,8),%xmm3
    1206:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    120a:	f2 0f 10 44 cf 18    	movsd  0x18(%rdi,%rcx,8),%xmm0
    1210:	f2 0f 59 44 ce 18    	mulsd  0x18(%rsi,%rcx,8),%xmm0
    1216:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    121a:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    121e:	48 83 c1 04          	add    $0x4,%rcx
    1222:	48 39 ca             	cmp    %rcx,%rdx
    1225:	75 b9                	jne    11e0 <dotprod+0x30>
    1227:	48 85 c0             	test   %rax,%rax
    122a:	74 2b                	je     1257 <dotprod+0xa7>
    122c:	48 8d 14 ce          	lea    (%rsi,%rcx,8),%rdx
    1230:	48 8d 0c cf          	lea    (%rdi,%rcx,8),%rcx
    1234:	31 f6                	xor    %esi,%esi
    1236:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    123d:	00 00 00 
    d += a[i] * b[i];
    1240:	f2 0f 10 0c f1       	movsd  (%rcx,%rsi,8),%xmm1
    1245:	f2 0f 59 0c f2       	mulsd  (%rdx,%rsi,8),%xmm1
    124a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    124e:	48 83 c6 01          	add    $0x1,%rsi
    1252:	48 39 f0             	cmp    %rsi,%rax
    1255:	75 e9                	jne    1240 <dotprod+0x90>
  return d;
    1257:	c3                   	retq   
    1258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    125f:	00 

0000000000001260 <dotprod_2x>:
// vectors of 2 double
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  
  for (unsigned long long i = 0; i < n; i += 2)
    1260:	48 85 d2             	test   %rdx,%rdx
    1263:	74 48                	je     12ad <dotprod_2x+0x4d>
    1265:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1269:	31 c0                	xor    %eax,%eax
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    {
      d[0] += a[i] * b[i];
    1270:	66 0f 10 04 c7       	movupd (%rdi,%rax,8),%xmm0
    1275:	66 0f 10 14 c6       	movupd (%rsi,%rax,8),%xmm2
    127a:	66 0f 59 d0          	mulpd  %xmm0,%xmm2
    127e:	66 0f 58 ca          	addpd  %xmm2,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    1282:	48 83 c0 02          	add    $0x2,%rax
    1286:	48 39 d0             	cmp    %rdx,%rax
    1289:	72 e5                	jb     1270 <dotprod_2x+0x10>
    128b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    128f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1293:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    }

  if (n & 1)
    1297:	f6 c2 01             	test   $0x1,%dl
    129a:	74 10                	je     12ac <dotprod_2x+0x4c>
    return d[0] + d[1] + a[n-1] * b[n-1];
    129c:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    12a2:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    12a8:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  
  return d[0] + d[1];
}
    12ac:	c3                   	retq   
    12ad:	0f 57 c0             	xorps  %xmm0,%xmm0
    12b0:	c3                   	retq   
    12b1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12b8:	00 00 00 
    12bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012c0 <main>:

int main(int argc, char **argv)
{
    12c0:	41 57                	push   %r15
    12c2:	41 56                	push   %r14
    12c4:	53                   	push   %rbx
    12c5:	48 83 ec 10          	sub    $0x10,%rsp
  if (argc != 2)
    12c9:	83 ff 02             	cmp    $0x2,%edi
    12cc:	0f 85 af 02 00 00    	jne    1581 <main+0x2c1>
  return strtoll(argv[1], NULL, 10);
    12d2:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12d6:	31 f6                	xor    %esi,%esi
    12d8:	ba 0a 00 00 00       	mov    $0xa,%edx
    12dd:	e8 6e fd ff ff       	callq  1050 <strtoll@plt>
    12e2:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    12e5:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    12ec:	00 
    12ed:	bf 40 00 00 00       	mov    $0x40,%edi
    12f2:	48 89 de             	mov    %rbx,%rsi
    12f5:	e8 76 fd ff ff       	callq  1070 <aligned_alloc@plt>
    12fa:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    12fd:	bf 40 00 00 00       	mov    $0x40,%edi
    1302:	48 89 de             	mov    %rbx,%rsi
    1305:	e8 66 fd ff ff       	callq  1070 <aligned_alloc@plt>
    130a:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    130d:	4d 85 ff             	test   %r15,%r15
    1310:	74 0d                	je     131f <main+0x5f>
    1312:	49 83 ff 04          	cmp    $0x4,%r15
    1316:	73 19                	jae    1331 <main+0x71>
    1318:	31 c0                	xor    %eax,%eax
    131a:	e9 07 01 00 00       	jmpq   1426 <main+0x166>
    131f:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1323:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1327:	66 0f 29 0c 24       	movapd %xmm1,(%rsp)
    132c:	e9 14 02 00 00       	jmpq   1545 <main+0x285>
    1331:	4c 89 f8             	mov    %r15,%rax
    1334:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    1338:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    133c:	48 89 f2             	mov    %rsi,%rdx
    133f:	48 c1 ea 02          	shr    $0x2,%rdx
    1343:	48 83 c2 01          	add    $0x1,%rdx
    1347:	89 d1                	mov    %edx,%ecx
    1349:	83 e1 03             	and    $0x3,%ecx
    134c:	48 83 fe 0c          	cmp    $0xc,%rsi
    1350:	73 07                	jae    1359 <main+0x99>
    1352:	31 f6                	xor    %esi,%esi
    1354:	e9 87 00 00 00       	jmpq   13e0 <main+0x120>
    1359:	48 29 ca             	sub    %rcx,%rdx
    135c:	31 f6                	xor    %esi,%esi
    135e:	66 0f 28 05 aa 0c 00 	movapd 0xcaa(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1365:	00 
    1366:	66 0f 28 0d b2 0c 00 	movapd 0xcb2(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    136d:	00 
    136e:	66 90                	xchg   %ax,%ax
      a[i] = 0.1;
    1370:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    1376:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
      b[i] = 0.001;
    137d:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    1382:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
      a[i] = 0.1;
    1388:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    138f:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
      b[i] = 0.001;
    1396:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    139c:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
      a[i] = 0.1;
    13a2:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    13a9:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
      b[i] = 0.001;
    13b0:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    13b6:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
      a[i] = 0.1;
    13bc:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    13c3:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
      b[i] = 0.001;
    13ca:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    13d0:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
  for (unsigned long long i = 0; i < n; i++)
    13d6:	48 83 c6 10          	add    $0x10,%rsi
    13da:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    13de:	75 90                	jne    1370 <main+0xb0>
    13e0:	48 85 c9             	test   %rcx,%rcx
    13e3:	74 3c                	je     1421 <main+0x161>
    13e5:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    13ec:	00 
    13ed:	48 f7 d9             	neg    %rcx
    13f0:	66 0f 28 05 18 0c 00 	movapd 0xc18(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    13f7:	00 
    13f8:	66 0f 28 0d 20 0c 00 	movapd 0xc20(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    13ff:	00 
      a[i] = 0.1;
    1400:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    1407:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
      b[i] = 0.001;
    140d:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    1413:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    1418:	48 83 c2 20          	add    $0x20,%rdx
    141c:	48 ff c1             	inc    %rcx
    141f:	75 df                	jne    1400 <main+0x140>
    1421:	49 39 c7             	cmp    %rax,%r15
    1424:	74 2b                	je     1451 <main+0x191>
    1426:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    142d:	99 b9 3f 
    1430:	48 ba fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rdx
    1437:	62 50 3f 
    143a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1440:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 0.001;
    1444:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1448:	48 83 c0 01          	add    $0x1,%rax
    144c:	49 39 c7             	cmp    %rax,%r15
    144f:	75 ef                	jne    1440 <main+0x180>
  for (unsigned long long i = 0; i < n; ++i)
    1451:	49 8d 4f ff          	lea    -0x1(%r15),%rcx
    1455:	44 89 f8             	mov    %r15d,%eax
    1458:	83 e0 03             	and    $0x3,%eax
    145b:	48 83 f9 03          	cmp    $0x3,%rcx
    145f:	73 08                	jae    1469 <main+0x1a9>
    1461:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1465:	31 c9                	xor    %ecx,%ecx
    1467:	eb 62                	jmp    14cb <main+0x20b>
    1469:	4c 89 fa             	mov    %r15,%rdx
    146c:	48 29 c2             	sub    %rax,%rdx
    146f:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1473:	31 c9                	xor    %ecx,%ecx
    1475:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    147c:	00 00 00 
    147f:	90                   	nop
    d += a[i] * b[i];
    1480:	f2 41 0f 10 0c ce    	movsd  (%r14,%rcx,8),%xmm1
    1486:	f2 41 0f 10 54 ce 08 	movsd  0x8(%r14,%rcx,8),%xmm2
    148d:	f2 0f 59 0c cb       	mulsd  (%rbx,%rcx,8),%xmm1
    1492:	f2 0f 59 54 cb 08    	mulsd  0x8(%rbx,%rcx,8),%xmm2
    1498:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    149c:	f2 41 0f 10 5c ce 10 	movsd  0x10(%r14,%rcx,8),%xmm3
    14a3:	f2 0f 59 5c cb 10    	mulsd  0x10(%rbx,%rcx,8),%xmm3
    14a9:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    14ad:	f2 41 0f 10 44 ce 18 	movsd  0x18(%r14,%rcx,8),%xmm0
    14b4:	f2 0f 59 44 cb 18    	mulsd  0x18(%rbx,%rcx,8),%xmm0
    14ba:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    14be:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    14c2:	48 83 c1 04          	add    $0x4,%rcx
    14c6:	48 39 ca             	cmp    %rcx,%rdx
    14c9:	75 b5                	jne    1480 <main+0x1c0>
    14cb:	48 85 c0             	test   %rax,%rax
    14ce:	74 27                	je     14f7 <main+0x237>
    14d0:	48 8d 14 cb          	lea    (%rbx,%rcx,8),%rdx
    14d4:	49 8d 0c ce          	lea    (%r14,%rcx,8),%rcx
    14d8:	31 f6                	xor    %esi,%esi
    14da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    14e0:	f2 0f 10 0c f1       	movsd  (%rcx,%rsi,8),%xmm1
    14e5:	f2 0f 59 0c f2       	mulsd  (%rdx,%rsi,8),%xmm1
    14ea:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    14ee:	48 83 c6 01          	add    $0x1,%rsi
    14f2:	48 39 f0             	cmp    %rsi,%rax
    14f5:	75 e9                	jne    14e0 <main+0x220>
    14f7:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    14fb:	31 c0                	xor    %eax,%eax
    14fd:	0f 1f 00             	nopl   (%rax)
      d[0] += a[i] * b[i];
    1500:	66 41 0f 10 14 c6    	movupd (%r14,%rax,8),%xmm2
    1506:	66 0f 10 1c c3       	movupd (%rbx,%rax,8),%xmm3
    150b:	66 0f 59 da          	mulpd  %xmm2,%xmm3
    150f:	66 0f 58 cb          	addpd  %xmm3,%xmm1
  for (unsigned long long i = 0; i < n; i += 2)
    1513:	48 83 c0 02          	add    $0x2,%rax
    1517:	4c 39 f8             	cmp    %r15,%rax
    151a:	72 e4                	jb     1500 <main+0x240>
    151c:	66 0f 28 d1          	movapd %xmm1,%xmm2
    1520:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    1524:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
  if (n & 1)
    1528:	41 f6 c7 01          	test   $0x1,%r15b
    152c:	74 12                	je     1540 <main+0x280>
    return d[0] + d[1] + a[n-1] * b[n-1];
    152e:	f2 43 0f 10 4c fe f8 	movsd  -0x8(%r14,%r15,8),%xmm1
    1535:	f2 42 0f 59 4c fb f8 	mulsd  -0x8(%rbx,%r15,8),%xmm1
    153c:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1540:	66 0f 29 14 24       	movapd %xmm2,(%rsp)
  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    1545:	48 8d 3d e4 0a 00 00 	lea    0xae4(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    154c:	b0 01                	mov    $0x1,%al
    154e:	e8 ed fa ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1553:	48 8d 3d e1 0a 00 00 	lea    0xae1(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    155a:	0f 28 04 24          	movaps (%rsp),%xmm0
    155e:	b0 01                	mov    $0x1,%al
    1560:	e8 db fa ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1565:	4c 89 f7             	mov    %r14,%rdi
    1568:	e8 c3 fa ff ff       	callq  1030 <free@plt>
  free(b);
    156d:	48 89 df             	mov    %rbx,%rdi
    1570:	e8 bb fa ff ff       	callq  1030 <free@plt>
  
  return 0;
    1575:	31 c0                	xor    %eax,%eax
    1577:	48 83 c4 10          	add    $0x10,%rsp
    157b:	5b                   	pop    %rbx
    157c:	41 5e                	pop    %r14
    157e:	41 5f                	pop    %r15
    1580:	c3                   	retq   
    exit(ARGS);
    1581:	bf 01 00 00 00       	mov    $0x1,%edi
    1586:	e8 d5 fa ff ff       	callq  1060 <exit@plt>
    158b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001590 <__libc_csu_init>:
    1590:	f3 0f 1e fa          	endbr64 
    1594:	41 57                	push   %r15
    1596:	4c 8d 3d 3b 28 00 00 	lea    0x283b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    159d:	41 56                	push   %r14
    159f:	49 89 d6             	mov    %rdx,%r14
    15a2:	41 55                	push   %r13
    15a4:	49 89 f5             	mov    %rsi,%r13
    15a7:	41 54                	push   %r12
    15a9:	41 89 fc             	mov    %edi,%r12d
    15ac:	55                   	push   %rbp
    15ad:	48 8d 2d 2c 28 00 00 	lea    0x282c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    15b4:	53                   	push   %rbx
    15b5:	4c 29 fd             	sub    %r15,%rbp
    15b8:	48 83 ec 08          	sub    $0x8,%rsp
    15bc:	e8 3f fa ff ff       	callq  1000 <_init>
    15c1:	48 c1 fd 03          	sar    $0x3,%rbp
    15c5:	74 1f                	je     15e6 <__libc_csu_init+0x56>
    15c7:	31 db                	xor    %ebx,%ebx
    15c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15d0:	4c 89 f2             	mov    %r14,%rdx
    15d3:	4c 89 ee             	mov    %r13,%rsi
    15d6:	44 89 e7             	mov    %r12d,%edi
    15d9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    15dd:	48 83 c3 01          	add    $0x1,%rbx
    15e1:	48 39 dd             	cmp    %rbx,%rbp
    15e4:	75 ea                	jne    15d0 <__libc_csu_init+0x40>
    15e6:	48 83 c4 08          	add    $0x8,%rsp
    15ea:	5b                   	pop    %rbx
    15eb:	5d                   	pop    %rbp
    15ec:	41 5c                	pop    %r12
    15ee:	41 5d                	pop    %r13
    15f0:	41 5e                	pop    %r14
    15f2:	41 5f                	pop    %r15
    15f4:	c3                   	retq   
    15f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    15fc:	00 00 00 00 

0000000000001600 <__libc_csu_fini>:
    1600:	f3 0f 1e fa          	endbr64 
    1604:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001608 <_fini>:
    1608:	f3 0f 1e fa          	endbr64 
    160c:	48 83 ec 08          	sub    $0x8,%rsp
    1610:	48 83 c4 08          	add    $0x8,%rsp
    1614:	c3                   	retq   
