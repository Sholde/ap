
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
    1093:	4c 8d 05 a6 04 00 00 	lea    0x4a6(%rip),%r8        # 1540 <__libc_csu_fini>
    109a:	48 8d 0d 2f 04 00 00 	lea    0x42f(%rip),%rcx        # 14d0 <__libc_csu_init>
    10a1:	48 8d 3d b8 01 00 00 	lea    0x1b8(%rip),%rdi        # 1260 <main>
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
  
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
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
  for (unsigned long long i = 0; i < n; i++)
    124e:	48 83 c6 01          	add    $0x1,%rsi
    1252:	48 39 f0             	cmp    %rsi,%rax
    1255:	75 e9                	jne    1240 <dotprod+0x90>
  return d;
    1257:	c3                   	retq   
    1258:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    125f:	00 

0000000000001260 <main>:
}

int main(int argc, char **argv)
{
    1260:	41 57                	push   %r15
    1262:	41 56                	push   %r14
    1264:	53                   	push   %rbx
  if (argc != 2)
    1265:	83 ff 02             	cmp    $0x2,%edi
    1268:	0f 85 4f 02 00 00    	jne    14bd <main+0x25d>
  return strtoll(argv[1], NULL, 10);
    126e:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1272:	31 f6                	xor    %esi,%esi
    1274:	ba 0a 00 00 00       	mov    $0xa,%edx
    1279:	e8 d2 fd ff ff       	callq  1050 <strtoll@plt>
    127e:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1281:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    1288:	00 
    1289:	bf 40 00 00 00       	mov    $0x40,%edi
    128e:	48 89 de             	mov    %rbx,%rsi
    1291:	e8 da fd ff ff       	callq  1070 <aligned_alloc@plt>
    1296:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    1299:	bf 40 00 00 00       	mov    $0x40,%edi
    129e:	48 89 de             	mov    %rbx,%rsi
    12a1:	e8 ca fd ff ff       	callq  1070 <aligned_alloc@plt>
    12a6:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    12a9:	4d 85 ff             	test   %r15,%r15
    12ac:	74 0d                	je     12bb <main+0x5b>
    12ae:	49 83 ff 04          	cmp    $0x4,%r15
    12b2:	73 10                	jae    12c4 <main+0x64>
    12b4:	31 c0                	xor    %eax,%eax
    12b6:	e9 0b 01 00 00       	jmpq   13c6 <main+0x166>
    12bb:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12bf:	e9 d3 01 00 00       	jmpq   1497 <main+0x237>
    12c4:	4c 89 f8             	mov    %r15,%rax
    12c7:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    12cb:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    12cf:	48 89 f2             	mov    %rsi,%rdx
    12d2:	48 c1 ea 02          	shr    $0x2,%rdx
    12d6:	48 83 c2 01          	add    $0x1,%rdx
    12da:	89 d1                	mov    %edx,%ecx
    12dc:	83 e1 03             	and    $0x3,%ecx
    12df:	48 83 fe 0c          	cmp    $0xc,%rsi
    12e3:	73 07                	jae    12ec <main+0x8c>
    12e5:	31 f6                	xor    %esi,%esi
    12e7:	e9 94 00 00 00       	jmpq   1380 <main+0x120>
    12ec:	48 29 ca             	sub    %rcx,%rdx
    12ef:	31 f6                	xor    %esi,%esi
    12f1:	66 0f 28 05 17 0d 00 	movapd 0xd17(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    12f8:	00 
    12f9:	66 0f 28 0d 1f 0d 00 	movapd 0xd1f(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1300:	00 
    1301:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1308:	00 00 00 
    130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1310:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    1316:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
      b[i] = 0.001;
    131d:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    1322:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
      a[i] = 0.1;
    1328:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    132f:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
      b[i] = 0.001;
    1336:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    133c:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
      a[i] = 0.1;
    1342:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    1349:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
      b[i] = 0.001;
    1350:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    1356:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
      a[i] = 0.1;
    135c:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    1363:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
      b[i] = 0.001;
    136a:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1370:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
  for (unsigned long long i = 0; i < n; i++)
    1376:	48 83 c6 10          	add    $0x10,%rsi
    137a:	48 83 c2 fc          	add    $0xfffffffffffffffc,%rdx
    137e:	75 90                	jne    1310 <main+0xb0>
    1380:	48 85 c9             	test   %rcx,%rcx
    1383:	74 3c                	je     13c1 <main+0x161>
    1385:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    138c:	00 
    138d:	48 f7 d9             	neg    %rcx
    1390:	66 0f 28 05 78 0c 00 	movapd 0xc78(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1397:	00 
    1398:	66 0f 28 0d 80 0c 00 	movapd 0xc80(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    139f:	00 
      a[i] = 0.1;
    13a0:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    13a7:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
      b[i] = 0.001;
    13ad:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    13b3:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    13b8:	48 83 c2 20          	add    $0x20,%rdx
    13bc:	48 ff c1             	inc    %rcx
    13bf:	75 df                	jne    13a0 <main+0x140>
    13c1:	49 39 c7             	cmp    %rax,%r15
    13c4:	74 2b                	je     13f1 <main+0x191>
    13c6:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    13cd:	99 b9 3f 
    13d0:	48 ba fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rdx
    13d7:	62 50 3f 
    13da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      a[i] = 0.1;
    13e0:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 0.001;
    13e4:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    13e8:	48 83 c0 01          	add    $0x1,%rax
    13ec:	49 39 c7             	cmp    %rax,%r15
    13ef:	75 ef                	jne    13e0 <main+0x180>
  for (unsigned long long i = 0; i < n; i++)
    13f1:	49 8d 4f ff          	lea    -0x1(%r15),%rcx
    13f5:	44 89 f8             	mov    %r15d,%eax
    13f8:	83 e0 03             	and    $0x3,%eax
    13fb:	48 83 f9 03          	cmp    $0x3,%rcx
    13ff:	73 08                	jae    1409 <main+0x1a9>
    1401:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1405:	31 c9                	xor    %ecx,%ecx
    1407:	eb 62                	jmp    146b <main+0x20b>
    1409:	49 29 c7             	sub    %rax,%r15
    140c:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1410:	31 c9                	xor    %ecx,%ecx
    1412:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1419:	00 00 00 
    141c:	0f 1f 40 00          	nopl   0x0(%rax)
    d += a[i] * b[i];
    1420:	f2 41 0f 10 0c ce    	movsd  (%r14,%rcx,8),%xmm1
    1426:	f2 41 0f 10 54 ce 08 	movsd  0x8(%r14,%rcx,8),%xmm2
    142d:	f2 0f 59 0c cb       	mulsd  (%rbx,%rcx,8),%xmm1
    1432:	f2 0f 59 54 cb 08    	mulsd  0x8(%rbx,%rcx,8),%xmm2
    1438:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    143c:	f2 41 0f 10 5c ce 10 	movsd  0x10(%r14,%rcx,8),%xmm3
    1443:	f2 0f 59 5c cb 10    	mulsd  0x10(%rbx,%rcx,8),%xmm3
    1449:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    144d:	f2 41 0f 10 44 ce 18 	movsd  0x18(%r14,%rcx,8),%xmm0
    1454:	f2 0f 59 44 cb 18    	mulsd  0x18(%rbx,%rcx,8),%xmm0
    145a:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    145e:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    1462:	48 83 c1 04          	add    $0x4,%rcx
    1466:	49 39 cf             	cmp    %rcx,%r15
    1469:	75 b5                	jne    1420 <main+0x1c0>
    146b:	48 85 c0             	test   %rax,%rax
    146e:	74 27                	je     1497 <main+0x237>
    1470:	48 8d 14 cb          	lea    (%rbx,%rcx,8),%rdx
    1474:	49 8d 0c ce          	lea    (%r14,%rcx,8),%rcx
    1478:	31 f6                	xor    %esi,%esi
    147a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1480:	f2 0f 10 0c f1       	movsd  (%rcx,%rsi,8),%xmm1
    1485:	f2 0f 59 0c f2       	mulsd  (%rdx,%rsi,8),%xmm1
    148a:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    148e:	48 83 c6 01          	add    $0x1,%rsi
    1492:	48 39 f0             	cmp    %rsi,%rax
    1495:	75 e9                	jne    1480 <main+0x220>

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    1497:	48 8d 3d 92 0b 00 00 	lea    0xb92(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    149e:	b0 01                	mov    $0x1,%al
    14a0:	e8 9b fb ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    14a5:	4c 89 f7             	mov    %r14,%rdi
    14a8:	e8 83 fb ff ff       	callq  1030 <free@plt>
  free(b);
    14ad:	48 89 df             	mov    %rbx,%rdi
    14b0:	e8 7b fb ff ff       	callq  1030 <free@plt>
  
  return 0;
    14b5:	31 c0                	xor    %eax,%eax
    14b7:	5b                   	pop    %rbx
    14b8:	41 5e                	pop    %r14
    14ba:	41 5f                	pop    %r15
    14bc:	c3                   	retq   
    exit(ARGS);
    14bd:	bf 01 00 00 00       	mov    $0x1,%edi
    14c2:	e8 99 fb ff ff       	callq  1060 <exit@plt>
    14c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    14ce:	00 00 

00000000000014d0 <__libc_csu_init>:
    14d0:	f3 0f 1e fa          	endbr64 
    14d4:	41 57                	push   %r15
    14d6:	4c 8d 3d fb 28 00 00 	lea    0x28fb(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    14dd:	41 56                	push   %r14
    14df:	49 89 d6             	mov    %rdx,%r14
    14e2:	41 55                	push   %r13
    14e4:	49 89 f5             	mov    %rsi,%r13
    14e7:	41 54                	push   %r12
    14e9:	41 89 fc             	mov    %edi,%r12d
    14ec:	55                   	push   %rbp
    14ed:	48 8d 2d ec 28 00 00 	lea    0x28ec(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    14f4:	53                   	push   %rbx
    14f5:	4c 29 fd             	sub    %r15,%rbp
    14f8:	48 83 ec 08          	sub    $0x8,%rsp
    14fc:	e8 ff fa ff ff       	callq  1000 <_init>
    1501:	48 c1 fd 03          	sar    $0x3,%rbp
    1505:	74 1f                	je     1526 <__libc_csu_init+0x56>
    1507:	31 db                	xor    %ebx,%ebx
    1509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1510:	4c 89 f2             	mov    %r14,%rdx
    1513:	4c 89 ee             	mov    %r13,%rsi
    1516:	44 89 e7             	mov    %r12d,%edi
    1519:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    151d:	48 83 c3 01          	add    $0x1,%rbx
    1521:	48 39 dd             	cmp    %rbx,%rbp
    1524:	75 ea                	jne    1510 <__libc_csu_init+0x40>
    1526:	48 83 c4 08          	add    $0x8,%rsp
    152a:	5b                   	pop    %rbx
    152b:	5d                   	pop    %rbp
    152c:	41 5c                	pop    %r12
    152e:	41 5d                	pop    %r13
    1530:	41 5e                	pop    %r14
    1532:	41 5f                	pop    %r15
    1534:	c3                   	retq   
    1535:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    153c:	00 00 00 00 

0000000000001540 <__libc_csu_fini>:
    1540:	f3 0f 1e fa          	endbr64 
    1544:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001548 <_fini>:
    1548:	f3 0f 1e fa          	endbr64 
    154c:	48 83 ec 08          	sub    $0x8,%rsp
    1550:	48 83 c4 08          	add    $0x8,%rsp
    1554:	c3                   	retq   
