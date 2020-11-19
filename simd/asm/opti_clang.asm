
opti_clang:     format de fichier elf64-x86-64


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
    1093:	4c 8d 05 26 0b 00 00 	lea    0xb26(%rip),%r8        # 1bc0 <__libc_csu_fini>
    109a:	48 8d 0d af 0a 00 00 	lea    0xaaf(%rip),%rcx        # 1b50 <__libc_csu_init>
    10a1:	48 8d 3d 38 06 00 00 	lea    0x638(%rip),%rdi        # 16e0 <main>
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
#define SIZE 100

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
    11d0:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    11d4:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11d8:	31 c9                	xor    %ecx,%ecx
    11da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
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
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  

  if (n & 1)
    1260:	f6 c2 01             	test   $0x1,%dl
    1263:	75 33                	jne    1298 <dotprod_2x+0x38>
    1265:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
      
      return d[0] + d[1] + a[n-1] * b[n-1];
    }
  else
    {
      for (unsigned long long i = 0; i < n; i += 2)
    1269:	48 85 d2             	test   %rdx,%rdx
    126c:	74 1d                	je     128b <dotprod_2x+0x2b>
    126e:	31 c0                	xor    %eax,%eax
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
	  d[1] += a[i + 1] * b[i + 1];
	}

      return d[0] + d[1];
    128b:	66 0f 28 c1          	movapd %xmm1,%xmm0
    128f:	66 0f 15 c1          	unpckhpd %xmm1,%xmm0
    1293:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    }
}
    1297:	c3                   	retq   
      for (unsigned long long i = 0; i < n_1; i += 2)
    1298:	48 89 d0             	mov    %rdx,%rax
    129b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    129f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    12a3:	74 26                	je     12cb <dotprod_2x+0x6b>
    12a5:	31 c9                	xor    %ecx,%ecx
    12a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12ae:	00 00 
	  d[0] += a[i] * b[i];
    12b0:	66 0f 10 0c cf       	movupd (%rdi,%rcx,8),%xmm1
    12b5:	66 0f 10 14 ce       	movupd (%rsi,%rcx,8),%xmm2
    12ba:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    12be:	66 0f 58 c2          	addpd  %xmm2,%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    12c2:	48 83 c1 02          	add    $0x2,%rcx
    12c6:	48 39 c1             	cmp    %rax,%rcx
    12c9:	72 e5                	jb     12b0 <dotprod_2x+0x50>
      return d[0] + d[1] + a[n-1] * b[n-1];
    12cb:	66 0f 28 c8          	movapd %xmm0,%xmm1
    12cf:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    12d3:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    12d7:	f2 0f 10 44 d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm0
    12dd:	f2 0f 59 44 d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm0
    12e3:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
}
    12e7:	c3                   	retq   
    12e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12ef:	00 

00000000000012f0 <dotprod_4x>:

// vectors of 4 double
double dotprod_4x(double *restrict a, double *restrict b, unsigned long long n)
{
    12f0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d[4] = {0.0};
  unsigned long long test = n % 4;
  
  for (unsigned long long i = 0; i < n; i += 4)
    12f4:	48 85 d2             	test   %rdx,%rdx
    12f7:	0f 84 9f 00 00 00    	je     139c <dotprod_4x+0xac>
    12fd:	31 c0                	xor    %eax,%eax
    12ff:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1303:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    130a:	00 00 00 
    130d:	0f 1f 00             	nopl   (%rax)
    {
      d[0] += a[i] * b[i];
    1310:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
      d[1] += a[i + 1] * b[i + 1];
    1315:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
      d[0] += a[i] * b[i];
    131b:	66 0f 16 54 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm2
    1321:	f2 0f 10 24 c6       	movsd  (%rsi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    1326:	f2 0f 10 6c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    132c:	66 0f 16 64 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm4
    1332:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1336:	66 0f 58 cc          	addpd  %xmm4,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    133a:	66 0f 16 5c c7 18    	movhpd 0x18(%rdi,%rax,8),%xmm3
    1340:	66 0f 16 6c c6 18    	movhpd 0x18(%rsi,%rax,8),%xmm5
    1346:	66 0f 59 eb          	mulpd  %xmm3,%xmm5
    134a:	66 0f 58 c5          	addpd  %xmm5,%xmm0
  for (unsigned long long i = 0; i < n; i += 4)
    134e:	48 83 c0 04          	add    $0x4,%rax
    1352:	48 39 d0             	cmp    %rdx,%rax
    1355:	72 b9                	jb     1310 <dotprod_4x+0x20>
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    }
  
  if (! test)
    1357:	66 0f 28 d1          	movapd %xmm1,%xmm2
    135b:	66 0f 15 d1          	unpckhpd %xmm1,%xmm2
    135f:	f6 c2 03             	test   $0x3,%dl
    1362:	75 40                	jne    13a4 <dotprod_4x+0xb4>
    {
      unsigned long long n_4 = n - 4;

      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1364:	48 83 fa 03          	cmp    $0x3,%rdx
    1368:	72 3a                	jb     13a4 <dotprod_4x+0xb4>
	  d[0] += a[i] * b[i];
    136a:	f2 0f 10 5c d7 e8    	movsd  -0x18(%rdi,%rdx,8),%xmm3
    1370:	f2 0f 10 64 d7 f0    	movsd  -0x10(%rdi,%rdx,8),%xmm4
    1376:	f2 0f 59 5c d6 e8    	mulsd  -0x18(%rsi,%rdx,8),%xmm3
    137c:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
    1380:	f2 0f 59 64 d6 f0    	mulsd  -0x10(%rsi,%rdx,8),%xmm4
    1386:	f2 0f 58 e3          	addsd  %xmm3,%xmm4
    138a:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    1390:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    1396:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    139a:	eb 08                	jmp    13a4 <dotprod_4x+0xb4>
    139c:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
  double d[4] = {0.0};
    13a0:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    }

  return d[0] + d[1] + d[2] + d[3];
    13a4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    13a8:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    13ac:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    13b0:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    13b4:	c3                   	retq   
    13b5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    13bc:	00 00 00 
    13bf:	90                   	nop

00000000000013c0 <dotprod_8x>:
}

// vectors of 8 double
double dotprod_8x(double *restrict a, double *restrict b, unsigned long long n)
{
    13c0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d[8] = {0.0};
  unsigned long long test = n % 8;

  for (unsigned long long i = 0; i < n; i += 8)
    13c4:	48 85 d2             	test   %rdx,%rdx
    13c7:	0f 84 0f 01 00 00    	je     14dc <dotprod_8x+0x11c>
    13cd:	31 c0                	xor    %eax,%eax
    13cf:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    13d3:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    13d7:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    13db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    {
      d[0] += a[i] * b[i];
    13e0:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    13e5:	f2 0f 10 6c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    13eb:	66 0f 16 64 c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm4
    13f1:	f2 0f 10 34 c6       	movsd  (%rsi,%rax,8),%xmm6
      d[1] += a[i + 1] * b[i + 1];
    13f6:	f2 0f 10 7c c6 08    	movsd  0x8(%rsi,%rax,8),%xmm7
      d[0] += a[i] * b[i];
    13fc:	66 0f 16 74 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm6
    1402:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    1406:	66 0f 58 de          	addpd  %xmm6,%xmm3
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    140a:	66 0f 10 64 c7 18    	movupd 0x18(%rdi,%rax,8),%xmm4
    1410:	66 0f 10 74 c6 18    	movupd 0x18(%rsi,%rax,8),%xmm6
    1416:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    141a:	66 0f 58 d6          	addpd  %xmm6,%xmm2
      d[4] += a[i + 4] * b[i + 4];
      d[5] += a[i + 5] * b[i + 5];
    141e:	66 0f 10 64 c7 28    	movupd 0x28(%rdi,%rax,8),%xmm4
    1424:	66 0f 10 74 c6 28    	movupd 0x28(%rsi,%rax,8),%xmm6
    142a:	66 0f 59 f4          	mulpd  %xmm4,%xmm6
    142e:	66 0f 58 ce          	addpd  %xmm6,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    1432:	66 0f 16 6c c7 38    	movhpd 0x38(%rdi,%rax,8),%xmm5
    1438:	66 0f 16 7c c6 38    	movhpd 0x38(%rsi,%rax,8),%xmm7
    143e:	66 0f 59 fd          	mulpd  %xmm5,%xmm7
    1442:	66 0f 58 c7          	addpd  %xmm7,%xmm0
  for (unsigned long long i = 0; i < n; i += 8)
    1446:	48 83 c0 08          	add    $0x8,%rax
    144a:	48 39 d0             	cmp    %rdx,%rax
    144d:	72 91                	jb     13e0 <dotprod_8x+0x20>
      d[6] += a[i + 6] * b[i + 6];
      d[7] += a[i + 7] * b[i + 7];
    }

  if (! test)
    144f:	66 0f 28 e3          	movapd %xmm3,%xmm4
    1453:	66 0f 15 e3          	unpckhpd %xmm3,%xmm4
    1457:	f6 c2 07             	test   $0x7,%dl
    145a:	0f 85 8c 00 00 00    	jne    14ec <dotprod_8x+0x12c>
    {
      unsigned long long n_8 = n - 8;

      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1460:	48 83 fa 07          	cmp    $0x7,%rdx
    1464:	0f 82 82 00 00 00    	jb     14ec <dotprod_8x+0x12c>
	  d[0] += a[i] * b[i];
    146a:	f2 0f 10 6c d7 c8    	movsd  -0x38(%rdi,%rdx,8),%xmm5
    1470:	f2 0f 10 74 d7 d0    	movsd  -0x30(%rdi,%rdx,8),%xmm6
    1476:	f2 0f 59 6c d6 c8    	mulsd  -0x38(%rsi,%rdx,8),%xmm5
    147c:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    1480:	f2 0f 59 74 d6 d0    	mulsd  -0x30(%rsi,%rdx,8),%xmm6
    1486:	f2 0f 58 f5          	addsd  %xmm5,%xmm6
    148a:	f2 0f 10 5c d7 d8    	movsd  -0x28(%rdi,%rdx,8),%xmm3
    1490:	f2 0f 59 5c d6 d8    	mulsd  -0x28(%rsi,%rdx,8),%xmm3
    1496:	f2 0f 58 de          	addsd  %xmm6,%xmm3
    149a:	f2 0f 10 6c d7 e0    	movsd  -0x20(%rdi,%rdx,8),%xmm5
    14a0:	f2 0f 59 6c d6 e0    	mulsd  -0x20(%rsi,%rdx,8),%xmm5
    14a6:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    14aa:	f2 0f 10 5c d7 e8    	movsd  -0x18(%rdi,%rdx,8),%xmm3
    14b0:	f2 0f 59 5c d6 e8    	mulsd  -0x18(%rsi,%rdx,8),%xmm3
    14b6:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    14ba:	f2 0f 10 6c d7 f0    	movsd  -0x10(%rdi,%rdx,8),%xmm5
    14c0:	f2 0f 59 6c d6 f0    	mulsd  -0x10(%rsi,%rdx,8),%xmm5
    14c6:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
    14ca:	f2 0f 10 5c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm3
    14d0:	f2 0f 59 5c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm3
    14d6:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
    14da:	eb 10                	jmp    14ec <dotprod_8x+0x12c>
    14dc:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
  double d[8] = {0.0};
    14e0:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    14e4:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    14e8:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    }
  
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    14ec:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
    14f0:	f2 0f 58 dc          	addsd  %xmm4,%xmm3
    14f4:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    14f8:	66 0f 15 d2          	unpckhpd %xmm2,%xmm2
    14fc:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
    1500:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    1504:	66 0f 15 c9          	unpckhpd %xmm1,%xmm1
    1508:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    150c:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    1510:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1514:	c3                   	retq   
    1515:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    151c:	00 00 00 
    151f:	90                   	nop

0000000000001520 <dotprod_16x>:
}

// vectors of 16 double
double dotprod_16x(double *restrict a, double *restrict b, unsigned long long n)
{
    1520:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d[16] = {0.0};
  unsigned long long test = n % 16;

  for (unsigned long long i = 0; i < n; i += 16)
    1524:	48 85 d2             	test   %rdx,%rdx
    1527:	0f 84 1c 01 00 00    	je     1649 <dotprod_16x+0x129>
    152d:	31 c0                	xor    %eax,%eax
    152f:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1534:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    1539:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    153e:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    1543:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1547:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    154b:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    154f:	90                   	nop
    {
      d[0] += a[i] * b[i];
    1550:	f2 0f 10 1c c7       	movsd  (%rdi,%rax,8),%xmm3
      d[1] += a[i + 1] * b[i + 1];
    1555:	f2 0f 10 4c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm1
      d[0] += a[i] * b[i];
    155b:	66 0f 16 5c c7 10    	movhpd 0x10(%rdi,%rax,8),%xmm3
    1561:	f2 0f 10 24 c6       	movsd  (%rsi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    1566:	f2 0f 10 54 c6 08    	movsd  0x8(%rsi,%rax,8),%xmm2
      d[0] += a[i] * b[i];
    156c:	66 0f 16 64 c6 10    	movhpd 0x10(%rsi,%rax,8),%xmm4
    1572:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    1576:	66 0f 58 f4          	addpd  %xmm4,%xmm6
      d[2] += a[i + 2] * b[i + 2];
      d[3] += a[i + 3] * b[i + 3];
    157a:	66 0f 10 5c c7 18    	movupd 0x18(%rdi,%rax,8),%xmm3
    1580:	66 0f 10 64 c6 18    	movupd 0x18(%rsi,%rax,8),%xmm4
    1586:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    158a:	66 0f 58 fc          	addpd  %xmm4,%xmm7
      d[4] += a[i + 4] * b[i + 4];
      d[5] += a[i + 5] * b[i + 5];
    158e:	66 0f 10 5c c7 28    	movupd 0x28(%rdi,%rax,8),%xmm3
    1594:	66 0f 10 64 c6 28    	movupd 0x28(%rsi,%rax,8),%xmm4
    159a:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    159e:	66 0f 58 ec          	addpd  %xmm4,%xmm5
      d[6] += a[i + 6] * b[i + 6];
      d[7] += a[i + 7] * b[i + 7];
    15a2:	66 0f 10 5c c7 38    	movupd 0x38(%rdi,%rax,8),%xmm3
    15a8:	66 0f 10 64 c6 38    	movupd 0x38(%rsi,%rax,8),%xmm4
    15ae:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15b2:	66 44 0f 58 e4       	addpd  %xmm4,%xmm12
      d[8] += a[i + 8] * b[i + 8];
      d[9] += a[i + 9] * b[i + 9];
    15b7:	66 0f 10 5c c7 48    	movupd 0x48(%rdi,%rax,8),%xmm3
    15bd:	66 0f 10 64 c6 48    	movupd 0x48(%rsi,%rax,8),%xmm4
    15c3:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15c7:	66 44 0f 58 dc       	addpd  %xmm4,%xmm11
      d[10] += a[i + 10] * b[i + 10];
      d[11] += a[i + 11] * b[i + 11];
    15cc:	66 0f 10 5c c7 58    	movupd 0x58(%rdi,%rax,8),%xmm3
    15d2:	66 0f 10 64 c6 58    	movupd 0x58(%rsi,%rax,8),%xmm4
    15d8:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15dc:	66 44 0f 58 d4       	addpd  %xmm4,%xmm10
      d[12] += a[i + 12] * b[i + 12];
      d[13] += a[i + 13] * b[i + 13];
    15e1:	66 0f 10 5c c7 68    	movupd 0x68(%rdi,%rax,8),%xmm3
    15e7:	66 0f 10 64 c6 68    	movupd 0x68(%rsi,%rax,8),%xmm4
    15ed:	66 0f 59 e3          	mulpd  %xmm3,%xmm4
    15f1:	66 44 0f 58 cc       	addpd  %xmm4,%xmm9
      d[1] += a[i + 1] * b[i + 1];
    15f6:	66 0f 16 4c c7 78    	movhpd 0x78(%rdi,%rax,8),%xmm1
    15fc:	66 0f 16 54 c6 78    	movhpd 0x78(%rsi,%rax,8),%xmm2
    1602:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    1606:	66 0f 58 c2          	addpd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; i += 16)
    160a:	48 83 c0 10          	add    $0x10,%rax
    160e:	48 39 d0             	cmp    %rdx,%rax
    1611:	0f 82 39 ff ff ff    	jb     1550 <dotprod_16x+0x30>
      d[14] += a[i + 14] * b[i + 14];
      d[15] += a[i + 15] * b[i + 15];
    }

  if (! test)
    1617:	66 44 0f 28 c6       	movapd %xmm6,%xmm8
    161c:	66 44 0f 15 c6       	unpckhpd %xmm6,%xmm8
    1621:	f6 c2 0f             	test   $0xf,%dl
    1624:	75 48                	jne    166e <dotprod_16x+0x14e>
    1626:	48 83 fa 0e          	cmp    $0xe,%rdx
    162a:	76 42                	jbe    166e <dotprod_16x+0x14e>
    {
      unsigned long long n_16 = n - 16;

      for (unsigned long long i = n_16 + 1; i < n; ++i)
    162c:	48 8d 42 f1          	lea    -0xf(%rdx),%rax
	  d[0] += a[i] * b[i];
    1630:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1635:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    163a:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    163e:	48 83 c0 01          	add    $0x1,%rax
    1642:	48 39 d0             	cmp    %rdx,%rax
    1645:	72 e9                	jb     1630 <dotprod_16x+0x110>
    1647:	eb 25                	jmp    166e <dotprod_16x+0x14e>
    1649:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
  double d[16] = {0.0};
    164e:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1652:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1657:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    165c:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    1661:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    1666:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    166a:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    }
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    166e:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1672:	f2 41 0f 58 f0       	addsd  %xmm8,%xmm6
    1677:	f2 0f 58 f7          	addsd  %xmm7,%xmm6
    167b:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    167f:	f2 0f 58 fe          	addsd  %xmm6,%xmm7
    1683:	f2 0f 58 fd          	addsd  %xmm5,%xmm7
    1687:	66 0f 15 ed          	unpckhpd %xmm5,%xmm5
    168b:	f2 0f 58 ef          	addsd  %xmm7,%xmm5
    168f:	f2 41 0f 58 ec       	addsd  %xmm12,%xmm5
    1694:	66 45 0f 15 e4       	unpckhpd %xmm12,%xmm12
    1699:	f2 44 0f 58 e5       	addsd  %xmm5,%xmm12
    169e:	f2 45 0f 58 e3       	addsd  %xmm11,%xmm12
    16a3:	66 45 0f 15 db       	unpckhpd %xmm11,%xmm11
    16a8:	f2 45 0f 58 dc       	addsd  %xmm12,%xmm11
    16ad:	f2 45 0f 58 da       	addsd  %xmm10,%xmm11
    16b2:	66 45 0f 15 d2       	unpckhpd %xmm10,%xmm10
    16b7:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    16bc:	f2 45 0f 58 d1       	addsd  %xmm9,%xmm10
    16c1:	66 45 0f 15 c9       	unpckhpd %xmm9,%xmm9
    16c6:	f2 45 0f 58 ca       	addsd  %xmm10,%xmm9
    16cb:	66 0f 15 c0          	unpckhpd %xmm0,%xmm0
    16cf:	f2 41 0f 58 c1       	addsd  %xmm9,%xmm0
    16d4:	c3                   	retq   
    16d5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16dc:	00 00 00 
    16df:	90                   	nop

00000000000016e0 <main>:
}

int main(int argc, char **argv)
{
    16e0:	41 57                	push   %r15
    16e2:	41 56                	push   %r14
    16e4:	53                   	push   %rbx
    16e5:	48 83 ec 40          	sub    $0x40,%rsp
  if (argc != 2)
    16e9:	83 ff 02             	cmp    $0x2,%edi
    16ec:	0f 85 49 04 00 00    	jne    1b3b <main+0x45b>
  return strtoll(argv[1], NULL, 10);
    16f2:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    16f6:	31 f6                	xor    %esi,%esi
    16f8:	ba 0a 00 00 00       	mov    $0xa,%edx
    16fd:	e8 4e f9 ff ff       	callq  1050 <strtoll@plt>
    1702:	49 89 c7             	mov    %rax,%r15
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1705:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    170c:	00 
    170d:	bf 40 00 00 00       	mov    $0x40,%edi
    1712:	48 89 de             	mov    %rbx,%rsi
    1715:	e8 56 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    171a:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    171d:	bf 40 00 00 00       	mov    $0x40,%edi
    1722:	48 89 de             	mov    %rbx,%rsi
    1725:	e8 46 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    172a:	48 89 c3             	mov    %rax,%rbx
  for (unsigned long long i = 0; i < n; i++)
    172d:	4d 85 ff             	test   %r15,%r15
    1730:	74 0d                	je     173f <main+0x5f>
    1732:	49 83 ff 04          	cmp    $0x4,%r15
    1736:	73 1c                	jae    1754 <main+0x74>
    1738:	31 c0                	xor    %eax,%eax
    173a:	e9 17 01 00 00       	jmpq   1856 <main+0x176>
    173f:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1743:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1747:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
      return d[0] + d[1];
    174b:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    174f:	e9 66 02 00 00       	jmpq   19ba <main+0x2da>
  for (unsigned long long i = 0; i < n; i++)
    1754:	4c 89 f8             	mov    %r15,%rax
    1757:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    175b:	48 8d 70 fc          	lea    -0x4(%rax),%rsi
    175f:	48 89 f2             	mov    %rsi,%rdx
    1762:	48 c1 ea 02          	shr    $0x2,%rdx
    1766:	48 83 c2 01          	add    $0x1,%rdx
    176a:	89 d1                	mov    %edx,%ecx
    176c:	83 e1 03             	and    $0x3,%ecx
    176f:	48 83 fe 0c          	cmp    $0xc,%rsi
    1773:	73 07                	jae    177c <main+0x9c>
    1775:	31 f6                	xor    %esi,%esi
    1777:	e9 94 00 00 00       	jmpq   1810 <main+0x130>
    177c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    1780:	48 f7 da             	neg    %rdx
    1783:	31 f6                	xor    %esi,%esi
    1785:	66 0f 28 05 83 08 00 	movapd 0x883(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    178c:	00 
    178d:	66 0f 28 0d 8b 08 00 	movapd 0x88b(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    1794:	00 
    1795:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    179c:	00 00 00 
    179f:	90                   	nop
      a[i] = 0.1;
    17a0:	66 41 0f 11 04 f6    	movupd %xmm0,(%r14,%rsi,8)
    17a6:	66 41 0f 11 44 f6 10 	movupd %xmm0,0x10(%r14,%rsi,8)
      b[i] = 1.0;
    17ad:	66 0f 11 0c f3       	movupd %xmm1,(%rbx,%rsi,8)
    17b2:	66 0f 11 4c f3 10    	movupd %xmm1,0x10(%rbx,%rsi,8)
      a[i] = 0.1;
    17b8:	66 41 0f 11 44 f6 20 	movupd %xmm0,0x20(%r14,%rsi,8)
    17bf:	66 41 0f 11 44 f6 30 	movupd %xmm0,0x30(%r14,%rsi,8)
      b[i] = 1.0;
    17c6:	66 0f 11 4c f3 20    	movupd %xmm1,0x20(%rbx,%rsi,8)
    17cc:	66 0f 11 4c f3 30    	movupd %xmm1,0x30(%rbx,%rsi,8)
      a[i] = 0.1;
    17d2:	66 41 0f 11 44 f6 40 	movupd %xmm0,0x40(%r14,%rsi,8)
    17d9:	66 41 0f 11 44 f6 50 	movupd %xmm0,0x50(%r14,%rsi,8)
      b[i] = 1.0;
    17e0:	66 0f 11 4c f3 40    	movupd %xmm1,0x40(%rbx,%rsi,8)
    17e6:	66 0f 11 4c f3 50    	movupd %xmm1,0x50(%rbx,%rsi,8)
      a[i] = 0.1;
    17ec:	66 41 0f 11 44 f6 60 	movupd %xmm0,0x60(%r14,%rsi,8)
    17f3:	66 41 0f 11 44 f6 70 	movupd %xmm0,0x70(%r14,%rsi,8)
      b[i] = 1.0;
    17fa:	66 0f 11 4c f3 60    	movupd %xmm1,0x60(%rbx,%rsi,8)
    1800:	66 0f 11 4c f3 70    	movupd %xmm1,0x70(%rbx,%rsi,8)
  for (unsigned long long i = 0; i < n; i++)
    1806:	48 83 c6 10          	add    $0x10,%rsi
    180a:	48 83 c2 04          	add    $0x4,%rdx
    180e:	75 90                	jne    17a0 <main+0xc0>
    1810:	48 85 c9             	test   %rcx,%rcx
    1813:	74 3c                	je     1851 <main+0x171>
    1815:	48 8d 14 f5 10 00 00 	lea    0x10(,%rsi,8),%rdx
    181c:	00 
    181d:	48 f7 d9             	neg    %rcx
    1820:	66 0f 28 05 e8 07 00 	movapd 0x7e8(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1827:	00 
    1828:	66 0f 28 0d f0 07 00 	movapd 0x7f0(%rip),%xmm1        # 2020 <_IO_stdin_used+0x20>
    182f:	00 
      a[i] = 0.1;
    1830:	66 41 0f 11 44 16 f0 	movupd %xmm0,-0x10(%r14,%rdx,1)
    1837:	66 41 0f 11 04 16    	movupd %xmm0,(%r14,%rdx,1)
      b[i] = 1.0;
    183d:	66 0f 11 4c 13 f0    	movupd %xmm1,-0x10(%rbx,%rdx,1)
    1843:	66 0f 11 0c 13       	movupd %xmm1,(%rbx,%rdx,1)
  for (unsigned long long i = 0; i < n; i++)
    1848:	48 83 c2 20          	add    $0x20,%rdx
    184c:	48 ff c1             	inc    %rcx
    184f:	75 df                	jne    1830 <main+0x150>
    1851:	49 39 c7             	cmp    %rax,%r15
    1854:	74 2b                	je     1881 <main+0x1a1>
    1856:	48 b9 9a 99 99 99 99 	movabs $0x3fb999999999999a,%rcx
    185d:	99 b9 3f 
    1860:	48 ba 00 00 00 00 00 	movabs $0x3ff0000000000000,%rdx
    1867:	00 f0 3f 
    186a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1870:	49 89 0c c6          	mov    %rcx,(%r14,%rax,8)
      b[i] = 1.0;
    1874:	48 89 14 c3          	mov    %rdx,(%rbx,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1878:	48 83 c0 01          	add    $0x1,%rax
    187c:	49 39 c7             	cmp    %rax,%r15
    187f:	75 ef                	jne    1870 <main+0x190>
  for (unsigned long long i = 0; i < n; ++i)
    1881:	49 8d 4f ff          	lea    -0x1(%r15),%rcx
    1885:	44 89 f8             	mov    %r15d,%eax
    1888:	83 e0 03             	and    $0x3,%eax
    188b:	48 83 f9 03          	cmp    $0x3,%rcx
    188f:	73 08                	jae    1899 <main+0x1b9>
    1891:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1895:	31 c9                	xor    %ecx,%ecx
    1897:	eb 62                	jmp    18fb <main+0x21b>
    1899:	4c 89 fa             	mov    %r15,%rdx
    189c:	48 83 e2 fc          	and    $0xfffffffffffffffc,%rdx
    18a0:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    18a4:	31 c9                	xor    %ecx,%ecx
    18a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    18ad:	00 00 00 
    d += a[i] * b[i];
    18b0:	f2 41 0f 10 04 ce    	movsd  (%r14,%rcx,8),%xmm0
    18b6:	f2 41 0f 10 4c ce 08 	movsd  0x8(%r14,%rcx,8),%xmm1
    18bd:	f2 0f 59 04 cb       	mulsd  (%rbx,%rcx,8),%xmm0
    18c2:	f2 0f 59 4c cb 08    	mulsd  0x8(%rbx,%rcx,8),%xmm1
    18c8:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    18cc:	f2 41 0f 10 54 ce 10 	movsd  0x10(%r14,%rcx,8),%xmm2
    18d3:	f2 0f 59 54 cb 10    	mulsd  0x10(%rbx,%rcx,8),%xmm2
    18d9:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    18dd:	f2 41 0f 10 6c ce 18 	movsd  0x18(%r14,%rcx,8),%xmm5
    18e4:	f2 0f 59 6c cb 18    	mulsd  0x18(%rbx,%rcx,8),%xmm5
    18ea:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
    18ee:	f2 0f 58 ea          	addsd  %xmm2,%xmm5
  for (unsigned long long i = 0; i < n; ++i)
    18f2:	48 83 c1 04          	add    $0x4,%rcx
    18f6:	48 39 ca             	cmp    %rcx,%rdx
    18f9:	75 b5                	jne    18b0 <main+0x1d0>
    18fb:	48 85 c0             	test   %rax,%rax
    18fe:	74 27                	je     1927 <main+0x247>
    1900:	48 8d 14 cb          	lea    (%rbx,%rcx,8),%rdx
    1904:	49 8d 0c ce          	lea    (%r14,%rcx,8),%rcx
    1908:	31 f6                	xor    %esi,%esi
    190a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1910:	f2 0f 10 04 f1       	movsd  (%rcx,%rsi,8),%xmm0
    1915:	f2 0f 59 04 f2       	mulsd  (%rdx,%rsi,8),%xmm0
    191a:	f2 0f 58 e8          	addsd  %xmm0,%xmm5
  for (unsigned long long i = 0; i < n; ++i)
    191e:	48 83 c6 01          	add    $0x1,%rsi
    1922:	48 39 f0             	cmp    %rsi,%rax
    1925:	75 e9                	jne    1910 <main+0x230>
  if (n & 1)
    1927:	41 f6 c7 01          	test   $0x1,%r15b
    192b:	75 3d                	jne    196a <main+0x28a>
    192d:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1931:	31 c0                	xor    %eax,%eax
    1933:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    193a:	00 00 00 
    193d:	0f 1f 00             	nopl   (%rax)
	  d[0] += a[i] * b[i];
    1940:	66 41 0f 10 04 c6    	movupd (%r14,%rax,8),%xmm0
    1946:	66 0f 10 0c c3       	movupd (%rbx,%rax,8),%xmm1
    194b:	66 0f 59 c8          	mulpd  %xmm0,%xmm1
    194f:	66 0f 58 f1          	addpd  %xmm1,%xmm6
      for (unsigned long long i = 0; i < n; i += 2)
    1953:	48 83 c0 02          	add    $0x2,%rax
    1957:	4c 39 f8             	cmp    %r15,%rax
    195a:	72 e4                	jb     1940 <main+0x260>
    195c:	66 0f 28 c6          	movapd %xmm6,%xmm0
    1960:	66 0f 15 c6          	unpckhpd %xmm6,%xmm0
      return d[0] + d[1];
    1964:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
    1968:	eb 50                	jmp    19ba <main+0x2da>
      for (unsigned long long i = 0; i < n_1; i += 2)
    196a:	4c 89 f8             	mov    %r15,%rax
    196d:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1971:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1975:	74 25                	je     199c <main+0x2bc>
    1977:	31 c9                	xor    %ecx,%ecx
    1979:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
	  d[0] += a[i] * b[i];
    1980:	66 41 0f 10 0c ce    	movupd (%r14,%rcx,8),%xmm1
    1986:	66 0f 10 14 cb       	movupd (%rbx,%rcx,8),%xmm2
    198b:	66 0f 59 d1          	mulpd  %xmm1,%xmm2
    198f:	66 0f 58 c2          	addpd  %xmm2,%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    1993:	48 83 c1 02          	add    $0x2,%rcx
    1997:	48 39 c1             	cmp    %rax,%rcx
    199a:	72 e4                	jb     1980 <main+0x2a0>
      return d[0] + d[1] + a[n-1] * b[n-1];
    199c:	66 0f 28 c8          	movapd %xmm0,%xmm1
    19a0:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    19a4:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    19a8:	f2 43 0f 10 74 fe f8 	movsd  -0x8(%r14,%r15,8),%xmm6
    19af:	f2 42 0f 59 74 fb f8 	mulsd  -0x8(%rbx,%r15,8),%xmm6
    19b6:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
  for (unsigned long long i = 0; i < n; i++)
    19ba:	4d 85 ff             	test   %r15,%r15
    19bd:	f2 0f 11 6c 24 18    	movsd  %xmm5,0x18(%rsp)
    19c3:	66 0f 29 74 24 30    	movapd %xmm6,0x30(%rsp)
    19c9:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
  for (unsigned long long i = 0; i < n; i += 4)
    19cd:	0f 84 a4 00 00 00    	je     1a77 <main+0x397>
    19d3:	31 c0                	xor    %eax,%eax
    19d5:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    19d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
      d[0] += a[i] * b[i];
    19e0:	f2 41 0f 10 0c c6    	movsd  (%r14,%rax,8),%xmm1
      d[1] += a[i + 1] * b[i + 1];
    19e6:	f2 41 0f 10 54 c6 08 	movsd  0x8(%r14,%rax,8),%xmm2
      d[0] += a[i] * b[i];
    19ed:	66 41 0f 16 4c c6 10 	movhpd 0x10(%r14,%rax,8),%xmm1
    19f4:	f2 0f 10 1c c3       	movsd  (%rbx,%rax,8),%xmm3
      d[1] += a[i + 1] * b[i + 1];
    19f9:	f2 0f 10 64 c3 08    	movsd  0x8(%rbx,%rax,8),%xmm4
      d[0] += a[i] * b[i];
    19ff:	66 0f 16 5c c3 10    	movhpd 0x10(%rbx,%rax,8),%xmm3
    1a05:	66 0f 59 d9          	mulpd  %xmm1,%xmm3
    1a09:	66 0f 58 c3          	addpd  %xmm3,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    1a0d:	66 41 0f 16 54 c6 18 	movhpd 0x18(%r14,%rax,8),%xmm2
    1a14:	66 0f 16 64 c3 18    	movhpd 0x18(%rbx,%rax,8),%xmm4
    1a1a:	66 0f 59 e2          	mulpd  %xmm2,%xmm4
    1a1e:	66 0f 58 fc          	addpd  %xmm4,%xmm7
  for (unsigned long long i = 0; i < n; i += 4)
    1a22:	48 83 c0 04          	add    $0x4,%rax
    1a26:	4c 39 f8             	cmp    %r15,%rax
    1a29:	72 b5                	jb     19e0 <main+0x300>
  if (! test)
    1a2b:	66 0f 28 c8          	movapd %xmm0,%xmm1
    1a2f:	66 0f 15 c8          	unpckhpd %xmm0,%xmm1
    1a33:	41 f6 c7 03          	test   $0x3,%r15b
    1a37:	75 46                	jne    1a7f <main+0x39f>
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1a39:	49 83 ff 03          	cmp    $0x3,%r15
    1a3d:	72 40                	jb     1a7f <main+0x39f>
	  d[0] += a[i] * b[i];
    1a3f:	f2 43 0f 10 54 fe e8 	movsd  -0x18(%r14,%r15,8),%xmm2
    1a46:	f2 43 0f 10 5c fe f0 	movsd  -0x10(%r14,%r15,8),%xmm3
    1a4d:	f2 42 0f 59 54 fb e8 	mulsd  -0x18(%rbx,%r15,8),%xmm2
    1a54:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    1a58:	f2 42 0f 59 5c fb f0 	mulsd  -0x10(%rbx,%r15,8),%xmm3
    1a5f:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    1a63:	f2 43 0f 10 44 fe f8 	movsd  -0x8(%r14,%r15,8),%xmm0
    1a6a:	f2 42 0f 59 44 fb f8 	mulsd  -0x8(%rbx,%r15,8),%xmm0
    1a71:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    1a75:	eb 08                	jmp    1a7f <main+0x39f>
    1a77:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
  double d[4] = {0.0};
    1a7b:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  return d[0] + d[1] + d[2] + d[3];
    1a7f:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    1a83:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1a87:	66 0f 15 ff          	unpckhpd %xmm7,%xmm7
    1a8b:	f2 0f 58 f8          	addsd  %xmm0,%xmm7
    1a8f:	66 0f 29 7c 24 20    	movapd %xmm7,0x20(%rsp)

  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);
  double res_4x = dotprod_4x(a, b, n);
  double res_8x = dotprod_8x(a, b, n);
    1a95:	4c 89 f7             	mov    %r14,%rdi
    1a98:	48 89 de             	mov    %rbx,%rsi
    1a9b:	4c 89 fa             	mov    %r15,%rdx
    1a9e:	e8 1d f9 ff ff       	callq  13c0 <dotprod_8x>
    1aa3:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    1aa9:	4c 89 f7             	mov    %r14,%rdi
    1aac:	48 89 de             	mov    %rbx,%rsi
    1aaf:	4c 89 fa             	mov    %r15,%rdx
    1ab2:	e8 69 fa ff ff       	callq  1520 <dotprod_16x>
    1ab7:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)

  // Print result
  printf("res = %lf\n", res);
    1abd:	48 8d 3d 6c 05 00 00 	lea    0x56c(%rip),%rdi        # 2030 <_IO_stdin_used+0x30>
    1ac4:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    1aca:	b0 01                	mov    $0x1,%al
    1acc:	e8 6f f5 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1ad1:	48 8d 3d 63 05 00 00 	lea    0x563(%rip),%rdi        # 203b <_IO_stdin_used+0x3b>
    1ad8:	0f 28 44 24 30       	movaps 0x30(%rsp),%xmm0
    1add:	b0 01                	mov    $0x1,%al
    1adf:	e8 5c f5 ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1ae4:	48 8d 3d 5e 05 00 00 	lea    0x55e(%rip),%rdi        # 2049 <_IO_stdin_used+0x49>
    1aeb:	0f 28 44 24 20       	movaps 0x20(%rsp),%xmm0
    1af0:	b0 01                	mov    $0x1,%al
    1af2:	e8 49 f5 ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    1af7:	48 8d 3d 59 05 00 00 	lea    0x559(%rip),%rdi        # 2057 <_IO_stdin_used+0x57>
    1afe:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    1b04:	b0 01                	mov    $0x1,%al
    1b06:	e8 35 f5 ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    1b0b:	48 8d 3d 53 05 00 00 	lea    0x553(%rip),%rdi        # 2065 <_IO_stdin_used+0x65>
    1b12:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    1b18:	b0 01                	mov    $0x1,%al
    1b1a:	e8 21 f5 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1b1f:	4c 89 f7             	mov    %r14,%rdi
    1b22:	e8 09 f5 ff ff       	callq  1030 <free@plt>
  free(b);
    1b27:	48 89 df             	mov    %rbx,%rdi
    1b2a:	e8 01 f5 ff ff       	callq  1030 <free@plt>
  
  return 0;
    1b2f:	31 c0                	xor    %eax,%eax
    1b31:	48 83 c4 40          	add    $0x40,%rsp
    1b35:	5b                   	pop    %rbx
    1b36:	41 5e                	pop    %r14
    1b38:	41 5f                	pop    %r15
    1b3a:	c3                   	retq   
    exit(ARGS);
    1b3b:	bf 01 00 00 00       	mov    $0x1,%edi
    1b40:	e8 1b f5 ff ff       	callq  1060 <exit@plt>
    1b45:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1b4c:	00 00 00 
    1b4f:	90                   	nop

0000000000001b50 <__libc_csu_init>:
    1b50:	f3 0f 1e fa          	endbr64 
    1b54:	41 57                	push   %r15
    1b56:	4c 8d 3d 7b 22 00 00 	lea    0x227b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    1b5d:	41 56                	push   %r14
    1b5f:	49 89 d6             	mov    %rdx,%r14
    1b62:	41 55                	push   %r13
    1b64:	49 89 f5             	mov    %rsi,%r13
    1b67:	41 54                	push   %r12
    1b69:	41 89 fc             	mov    %edi,%r12d
    1b6c:	55                   	push   %rbp
    1b6d:	48 8d 2d 6c 22 00 00 	lea    0x226c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1b74:	53                   	push   %rbx
    1b75:	4c 29 fd             	sub    %r15,%rbp
    1b78:	48 83 ec 08          	sub    $0x8,%rsp
    1b7c:	e8 7f f4 ff ff       	callq  1000 <_init>
    1b81:	48 c1 fd 03          	sar    $0x3,%rbp
    1b85:	74 1f                	je     1ba6 <__libc_csu_init+0x56>
    1b87:	31 db                	xor    %ebx,%ebx
    1b89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1b90:	4c 89 f2             	mov    %r14,%rdx
    1b93:	4c 89 ee             	mov    %r13,%rsi
    1b96:	44 89 e7             	mov    %r12d,%edi
    1b99:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    1b9d:	48 83 c3 01          	add    $0x1,%rbx
    1ba1:	48 39 dd             	cmp    %rbx,%rbp
    1ba4:	75 ea                	jne    1b90 <__libc_csu_init+0x40>
    1ba6:	48 83 c4 08          	add    $0x8,%rsp
    1baa:	5b                   	pop    %rbx
    1bab:	5d                   	pop    %rbp
    1bac:	41 5c                	pop    %r12
    1bae:	41 5d                	pop    %r13
    1bb0:	41 5e                	pop    %r14
    1bb2:	41 5f                	pop    %r15
    1bb4:	c3                   	retq   
    1bb5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1bbc:	00 00 00 00 

0000000000001bc0 <__libc_csu_fini>:
    1bc0:	f3 0f 1e fa          	endbr64 
    1bc4:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001bc8 <_fini>:
    1bc8:	f3 0f 1e fa          	endbr64 
    1bcc:	48 83 ec 08          	sub    $0x8,%rsp
    1bd0:	48 83 c4 08          	add    $0x8,%rsp
    1bd4:	c3                   	retq   
