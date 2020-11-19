
base_gcc:     format de fichier elf64-x86-64


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
    1093:	4c 8d 05 06 08 00 00 	lea    0x806(%rip),%r8        # 18a0 <__libc_csu_fini>
    109a:	48 8d 0d 8f 07 00 00 	lea    0x78f(%rip),%rcx        # 1830 <__libc_csu_init>
    10a1:	48 8d 3d 1b 06 00 00 	lea    0x61b(%rip),%rdi        # 16c3 <main>
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

0000000000001179 <parse_args>:
#define ARGS 1
#define SIZE 100

// Parse arguments
unsigned long long parse_args(int argc, char **argv)
{
    1179:	48 83 ec 08          	sub    $0x8,%rsp
  if (argc != 2)
    117d:	83 ff 02             	cmp    $0x2,%edi
    1180:	75 18                	jne    119a <parse_args+0x21>
    exit(ARGS);

  return strtoll(argv[1], NULL, 10);
    1182:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1186:	ba 0a 00 00 00       	mov    $0xa,%edx
    118b:	be 00 00 00 00       	mov    $0x0,%esi
    1190:	e8 bb fe ff ff       	callq  1050 <strtoll@plt>
}
    1195:	48 83 c4 08          	add    $0x8,%rsp
    1199:	c3                   	retq   
    exit(ARGS);
    119a:	bf 01 00 00 00       	mov    $0x1,%edi
    119f:	e8 bc fe ff ff       	callq  1060 <exit@plt>

00000000000011a4 <dotprod>:
// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; ++i)
    11a4:	48 85 d2             	test   %rdx,%rdx
    11a7:	74 25                	je     11ce <dotprod+0x2a>
    11a9:	b8 00 00 00 00       	mov    $0x0,%eax
  double d = 0.0;
    11ae:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d += a[i] * b[i];
    11b2:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    11b7:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    11bc:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    11c0:	48 83 c0 01          	add    $0x1,%rax
    11c4:	48 39 c2             	cmp    %rax,%rdx
    11c7:	75 e9                	jne    11b2 <dotprod+0xe>
  
  return d;
}
    11c9:	66 0f 28 c1          	movapd %xmm1,%xmm0
    11cd:	c3                   	retq   
  double d = 0.0;
    11ce:	66 0f ef c9          	pxor   %xmm1,%xmm1
  return d;
    11d2:	eb f5                	jmp    11c9 <dotprod+0x25>

00000000000011d4 <dotprod_2x>:
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  

  if (n & 1)
    11d4:	48 89 d0             	mov    %rdx,%rax
    11d7:	83 e0 01             	and    $0x1,%eax
    11da:	75 3d                	jne    1219 <dotprod_2x+0x45>
  double d[2] = {0.0};
    11dc:	66 0f ef d2          	pxor   %xmm2,%xmm2
    11e0:	66 0f 28 ca          	movapd %xmm2,%xmm1
      
      return d[0] + d[1] + a[n-1] * b[n-1];
    }
  else
    {
      for (unsigned long long i = 0; i < n; i += 2)
    11e4:	48 85 d2             	test   %rdx,%rdx
    11e7:	74 27                	je     1210 <dotprod_2x+0x3c>
	{
	  d[0] += a[i] * b[i];
    11e9:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    11ee:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    11f3:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
	  d[1] += a[i + 1] * b[i + 1];
    11f7:	f2 0f 10 44 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm0
    11fd:	f2 0f 59 44 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm0
    1203:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
      for (unsigned long long i = 0; i < n; i += 2)
    1207:	48 83 c0 02          	add    $0x2,%rax
    120b:	48 39 c2             	cmp    %rax,%rdx
    120e:	77 d9                	ja     11e9 <dotprod_2x+0x15>
	}

      return d[0] + d[1];
    1210:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    1214:	66 0f 28 c1          	movapd %xmm1,%xmm0
    }
}
    1218:	c3                   	retq   
      for (unsigned long long i = 0; i < n_1; i += 2)
    1219:	48 89 d1             	mov    %rdx,%rcx
    121c:	48 83 e9 01          	sub    $0x1,%rcx
    1220:	74 4d                	je     126f <dotprod_2x+0x9b>
  double d[2] = {0.0};
    1222:	66 0f ef db          	pxor   %xmm3,%xmm3
    1226:	66 0f 28 d3          	movapd %xmm3,%xmm2
      for (unsigned long long i = 0; i < n_1; i += 2)
    122a:	b8 00 00 00 00       	mov    $0x0,%eax
	  d[0] += a[i] * b[i];
    122f:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    1234:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    1239:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
	  d[1] += a[i + 1] * b[i + 1];
    123d:	f2 0f 10 44 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm0
    1243:	f2 0f 59 44 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm0
    1249:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
      for (unsigned long long i = 0; i < n_1; i += 2)
    124d:	48 83 c0 02          	add    $0x2,%rax
    1251:	48 39 c1             	cmp    %rax,%rcx
    1254:	77 d9                	ja     122f <dotprod_2x+0x5b>
      return d[0] + d[1] + a[n-1] * b[n-1];
    1256:	f2 0f 10 4c d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm1
    125c:	f2 0f 59 4c d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm1
    1262:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
    1266:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    126a:	66 0f 28 c1          	movapd %xmm1,%xmm0
    126e:	c3                   	retq   
  double d[2] = {0.0};
    126f:	66 0f ef db          	pxor   %xmm3,%xmm3
    1273:	66 0f 28 d3          	movapd %xmm3,%xmm2
    1277:	eb dd                	jmp    1256 <dotprod_2x+0x82>

0000000000001279 <dotprod_4x>:

// vectors of 4 double
double dotprod_4x(double *restrict a, double *restrict b, unsigned long long n)
{
    1279:	49 89 f0             	mov    %rsi,%r8
    127c:	48 89 d6             	mov    %rdx,%rsi
  double d[4] = {0.0};
  unsigned long long test = n % 4;
    127f:	49 89 d1             	mov    %rdx,%r9
    1282:	41 83 e1 03          	and    $0x3,%r9d
  
  for (unsigned long long i = 0; i < n; i += 4)
    1286:	48 85 d2             	test   %rdx,%rdx
    1289:	0f 84 a4 00 00 00    	je     1333 <dotprod_4x+0xba>
    128f:	48 89 f8             	mov    %rdi,%rax
    1292:	4c 89 c2             	mov    %r8,%rdx
    1295:	48 8d 0c f5 f8 ff ff 	lea    -0x8(,%rsi,8),%rcx
    129c:	ff 
    129d:	48 83 e1 e0          	and    $0xffffffffffffffe0,%rcx
    12a1:	48 8d 4c 0f 20       	lea    0x20(%rdi,%rcx,1),%rcx
  double d[4] = {0.0};
    12a6:	66 0f ef d2          	pxor   %xmm2,%xmm2
    12aa:	66 0f 28 da          	movapd %xmm2,%xmm3
    12ae:	66 0f 28 e2          	movapd %xmm2,%xmm4
    12b2:	66 0f 28 ca          	movapd %xmm2,%xmm1
    {
      d[0] += a[i] * b[i];
    12b6:	f2 0f 10 00          	movsd  (%rax),%xmm0
    12ba:	f2 0f 59 02          	mulsd  (%rdx),%xmm0
    12be:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      d[1] += a[i + 1] * b[i + 1];
    12c2:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    12c7:	f2 0f 59 42 08       	mulsd  0x8(%rdx),%xmm0
    12cc:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
      d[2] += a[i + 2] * b[i + 2];
    12d0:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    12d5:	f2 0f 59 42 10       	mulsd  0x10(%rdx),%xmm0
    12da:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
      d[3] += a[i + 3] * b[i + 3];
    12de:	f2 0f 10 40 18       	movsd  0x18(%rax),%xmm0
    12e3:	f2 0f 59 42 18       	mulsd  0x18(%rdx),%xmm0
    12e8:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
  for (unsigned long long i = 0; i < n; i += 4)
    12ec:	48 83 c0 20          	add    $0x20,%rax
    12f0:	48 83 c2 20          	add    $0x20,%rdx
    12f4:	48 39 c8             	cmp    %rcx,%rax
    12f7:	75 bd                	jne    12b6 <dotprod_4x+0x3d>
    }
  
  if (! test)
    12f9:	4d 85 c9             	test   %r9,%r9
    12fc:	74 11                	je     130f <dotprod_4x+0x96>

      for (unsigned long long i = n_4 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }

  return d[0] + d[1] + d[2] + d[3];
    12fe:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
    1302:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    1306:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    130a:	66 0f 28 c1          	movapd %xmm1,%xmm0
}
    130e:	c3                   	retq   
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    130f:	48 8d 46 fd          	lea    -0x3(%rsi),%rax
    1313:	48 83 fe 02          	cmp    $0x2,%rsi
    1317:	76 e5                	jbe    12fe <dotprod_4x+0x85>
	  d[0] += a[i] * b[i];
    1319:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    131e:	f2 41 0f 59 04 c0    	mulsd  (%r8,%rax,8),%xmm0
    1324:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1328:	48 83 c0 01          	add    $0x1,%rax
    132c:	48 39 c6             	cmp    %rax,%rsi
    132f:	75 e8                	jne    1319 <dotprod_4x+0xa0>
    1331:	eb cb                	jmp    12fe <dotprod_4x+0x85>
  double d[4] = {0.0};
    1333:	66 0f ef d2          	pxor   %xmm2,%xmm2
    1337:	66 0f 28 da          	movapd %xmm2,%xmm3
    133b:	66 0f 28 e2          	movapd %xmm2,%xmm4
    133f:	66 0f 28 ca          	movapd %xmm2,%xmm1
    1343:	eb b9                	jmp    12fe <dotprod_4x+0x85>

0000000000001345 <dotprod_8x>:

// vectors of 8 double
double dotprod_8x(double *restrict a, double *restrict b, unsigned long long n)
{
    1345:	49 89 f0             	mov    %rsi,%r8
    1348:	48 89 d1             	mov    %rdx,%rcx
  double d[8] = {0.0};
  unsigned long long test = n % 8;
    134b:	49 89 d1             	mov    %rdx,%r9
    134e:	41 83 e1 07          	and    $0x7,%r9d

  for (unsigned long long i = 0; i < n; i += 8)
    1352:	48 85 d2             	test   %rdx,%rdx
    1355:	0f 84 02 01 00 00    	je     145d <dotprod_8x+0x118>
    135b:	48 89 f8             	mov    %rdi,%rax
    135e:	48 89 f2             	mov    %rsi,%rdx
    1361:	48 8d 34 cd f8 ff ff 	lea    -0x8(,%rcx,8),%rsi
    1368:	ff 
    1369:	48 83 e6 c0          	and    $0xffffffffffffffc0,%rsi
    136d:	48 8d 74 37 40       	lea    0x40(%rdi,%rsi,1),%rsi
  double d[8] = {0.0};
    1372:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    1377:	66 41 0f 28 d0       	movapd %xmm8,%xmm2
    137c:	66 41 0f 28 d8       	movapd %xmm8,%xmm3
    1381:	66 41 0f 28 e0       	movapd %xmm8,%xmm4
    1386:	66 41 0f 28 e8       	movapd %xmm8,%xmm5
    138b:	66 41 0f 28 f0       	movapd %xmm8,%xmm6
    1390:	66 41 0f 28 f8       	movapd %xmm8,%xmm7
    1395:	66 41 0f 28 c0       	movapd %xmm8,%xmm0
    {
      d[0] += a[i] * b[i];
    139a:	f2 0f 10 08          	movsd  (%rax),%xmm1
    139e:	f2 0f 59 0a          	mulsd  (%rdx),%xmm1
    13a2:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    13a6:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    13ab:	f2 0f 59 4a 08       	mulsd  0x8(%rdx),%xmm1
    13b0:	f2 0f 58 f9          	addsd  %xmm1,%xmm7
      d[2] += a[i + 2] * b[i + 2];
    13b4:	f2 0f 10 48 10       	movsd  0x10(%rax),%xmm1
    13b9:	f2 0f 59 4a 10       	mulsd  0x10(%rdx),%xmm1
    13be:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
      d[3] += a[i + 3] * b[i + 3];
    13c2:	f2 0f 10 48 18       	movsd  0x18(%rax),%xmm1
    13c7:	f2 0f 59 4a 18       	mulsd  0x18(%rdx),%xmm1
    13cc:	f2 0f 58 e9          	addsd  %xmm1,%xmm5
      d[4] += a[i + 4] * b[i + 4];
    13d0:	f2 0f 10 48 20       	movsd  0x20(%rax),%xmm1
    13d5:	f2 0f 59 4a 20       	mulsd  0x20(%rdx),%xmm1
    13da:	f2 0f 58 e1          	addsd  %xmm1,%xmm4
      d[5] += a[i + 5] * b[i + 5];
    13de:	f2 0f 10 48 28       	movsd  0x28(%rax),%xmm1
    13e3:	f2 0f 59 4a 28       	mulsd  0x28(%rdx),%xmm1
    13e8:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
      d[6] += a[i + 6] * b[i + 6];
    13ec:	f2 0f 10 48 30       	movsd  0x30(%rax),%xmm1
    13f1:	f2 0f 59 4a 30       	mulsd  0x30(%rdx),%xmm1
    13f6:	f2 0f 58 d1          	addsd  %xmm1,%xmm2
      d[7] += a[i + 7] * b[i + 7];
    13fa:	f2 0f 10 48 38       	movsd  0x38(%rax),%xmm1
    13ff:	f2 0f 59 4a 38       	mulsd  0x38(%rdx),%xmm1
    1404:	f2 44 0f 58 c1       	addsd  %xmm1,%xmm8
  for (unsigned long long i = 0; i < n; i += 8)
    1409:	48 83 c0 40          	add    $0x40,%rax
    140d:	48 83 c2 40          	add    $0x40,%rdx
    1411:	48 39 f0             	cmp    %rsi,%rax
    1414:	75 84                	jne    139a <dotprod_8x+0x55>
    }

  if (! test)
    1416:	4d 85 c9             	test   %r9,%r9
    1419:	74 1e                	je     1439 <dotprod_8x+0xf4>

      for (unsigned long long i = n_8 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }
  
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    141b:	f2 0f 58 c7          	addsd  %xmm7,%xmm0
    141f:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
    1423:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    1427:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    142b:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
    142f:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
    1433:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
}
    1438:	c3                   	retq   
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1439:	48 8d 41 f9          	lea    -0x7(%rcx),%rax
    143d:	48 83 f9 06          	cmp    $0x6,%rcx
    1441:	76 d8                	jbe    141b <dotprod_8x+0xd6>
	  d[0] += a[i] * b[i];
    1443:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1448:	f2 41 0f 59 0c c0    	mulsd  (%r8,%rax,8),%xmm1
    144e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1452:	48 83 c0 01          	add    $0x1,%rax
    1456:	48 39 c1             	cmp    %rax,%rcx
    1459:	75 e8                	jne    1443 <dotprod_8x+0xfe>
    145b:	eb be                	jmp    141b <dotprod_8x+0xd6>
  double d[8] = {0.0};
    145d:	66 45 0f ef c0       	pxor   %xmm8,%xmm8
    1462:	66 41 0f 28 d0       	movapd %xmm8,%xmm2
    1467:	66 41 0f 28 d8       	movapd %xmm8,%xmm3
    146c:	66 41 0f 28 e0       	movapd %xmm8,%xmm4
    1471:	66 41 0f 28 e8       	movapd %xmm8,%xmm5
    1476:	66 41 0f 28 f0       	movapd %xmm8,%xmm6
    147b:	66 41 0f 28 f8       	movapd %xmm8,%xmm7
    1480:	66 41 0f 28 c0       	movapd %xmm8,%xmm0
    1485:	eb 94                	jmp    141b <dotprod_8x+0xd6>

0000000000001487 <dotprod_16x>:

// vectors of 16 double
double dotprod_16x(double *restrict a, double *restrict b, unsigned long long n)
{
    1487:	49 89 f0             	mov    %rsi,%r8
    148a:	48 89 d6             	mov    %rdx,%rsi
  double d[16] = {0.0};
  unsigned long long test = n % 16;
    148d:	49 89 d2             	mov    %rdx,%r10
    1490:	41 83 e2 0f          	and    $0xf,%r10d

  for (unsigned long long i = 0; i < n; i += 16)
    1494:	48 85 d2             	test   %rdx,%rdx
    1497:	0f 84 d7 01 00 00    	je     1674 <dotprod_16x+0x1ed>
    149d:	48 89 f8             	mov    %rdi,%rax
    14a0:	4c 89 c2             	mov    %r8,%rdx
    14a3:	48 8d 0c f5 f8 ff ff 	lea    -0x8(,%rsi,8),%rcx
    14aa:	ff 
    14ab:	48 83 e1 80          	and    $0xffffffffffffff80,%rcx
    14af:	4c 8d 8c 0f 80 00 00 	lea    0x80(%rdi,%rcx,1),%r9
    14b6:	00 
  double d[16] = {0.0};
    14b7:	66 0f ef e4          	pxor   %xmm4,%xmm4
    14bb:	f2 0f 11 64 24 f8    	movsd  %xmm4,-0x8(%rsp)
    14c1:	66 0f 28 ec          	movapd %xmm4,%xmm5
    14c5:	66 0f 28 f4          	movapd %xmm4,%xmm6
    14c9:	66 0f 28 fc          	movapd %xmm4,%xmm7
    14cd:	66 44 0f 28 c4       	movapd %xmm4,%xmm8
    14d2:	66 44 0f 28 cc       	movapd %xmm4,%xmm9
    14d7:	66 44 0f 28 d4       	movapd %xmm4,%xmm10
    14dc:	66 44 0f 28 dc       	movapd %xmm4,%xmm11
    14e1:	66 44 0f 28 e4       	movapd %xmm4,%xmm12
    14e6:	66 0f 28 cc          	movapd %xmm4,%xmm1
    14ea:	66 44 0f 28 ec       	movapd %xmm4,%xmm13
    14ef:	66 44 0f 28 f4       	movapd %xmm4,%xmm14
    14f4:	66 44 0f 28 fc       	movapd %xmm4,%xmm15
    14f9:	66 0f 28 d4          	movapd %xmm4,%xmm2
    14fd:	66 0f 28 c4          	movapd %xmm4,%xmm0
    {
      d[0] += a[i] * b[i];
    1501:	f2 0f 10 18          	movsd  (%rax),%xmm3
    1505:	f2 0f 59 1a          	mulsd  (%rdx),%xmm3
    1509:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
      d[1] += a[i + 1] * b[i + 1];
    150d:	f2 0f 10 58 08       	movsd  0x8(%rax),%xmm3
    1512:	f2 0f 59 5a 08       	mulsd  0x8(%rdx),%xmm3
    1517:	f2 0f 58 d3          	addsd  %xmm3,%xmm2
      d[2] += a[i + 2] * b[i + 2];
    151b:	f2 0f 10 58 10       	movsd  0x10(%rax),%xmm3
    1520:	f2 0f 59 5a 10       	mulsd  0x10(%rdx),%xmm3
    1525:	f2 44 0f 58 fb       	addsd  %xmm3,%xmm15
      d[3] += a[i + 3] * b[i + 3];
    152a:	f2 0f 10 58 18       	movsd  0x18(%rax),%xmm3
    152f:	f2 0f 59 5a 18       	mulsd  0x18(%rdx),%xmm3
    1534:	f2 44 0f 58 f3       	addsd  %xmm3,%xmm14
      d[4] += a[i + 4] * b[i + 4];
    1539:	f2 0f 10 58 20       	movsd  0x20(%rax),%xmm3
    153e:	f2 0f 59 5a 20       	mulsd  0x20(%rdx),%xmm3
    1543:	f2 44 0f 58 eb       	addsd  %xmm3,%xmm13
      d[5] += a[i + 5] * b[i + 5];
    1548:	f2 0f 10 58 28       	movsd  0x28(%rax),%xmm3
    154d:	f2 0f 59 5a 28       	mulsd  0x28(%rdx),%xmm3
    1552:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
      d[6] += a[i + 6] * b[i + 6];
    1556:	f2 0f 10 58 30       	movsd  0x30(%rax),%xmm3
    155b:	f2 0f 59 5a 30       	mulsd  0x30(%rdx),%xmm3
    1560:	f2 44 0f 58 e3       	addsd  %xmm3,%xmm12
      d[7] += a[i + 7] * b[i + 7];
    1565:	f2 0f 10 58 38       	movsd  0x38(%rax),%xmm3
    156a:	f2 0f 59 5a 38       	mulsd  0x38(%rdx),%xmm3
    156f:	f2 44 0f 58 db       	addsd  %xmm3,%xmm11
      d[8] += a[i + 8] * b[i + 8];
    1574:	f2 0f 10 58 40       	movsd  0x40(%rax),%xmm3
    1579:	f2 0f 59 5a 40       	mulsd  0x40(%rdx),%xmm3
    157e:	f2 44 0f 58 d3       	addsd  %xmm3,%xmm10
      d[9] += a[i + 9] * b[i + 9];
    1583:	f2 0f 10 58 48       	movsd  0x48(%rax),%xmm3
    1588:	f2 0f 59 5a 48       	mulsd  0x48(%rdx),%xmm3
    158d:	f2 44 0f 58 cb       	addsd  %xmm3,%xmm9
      d[10] += a[i + 10] * b[i + 10];
    1592:	f2 0f 10 58 50       	movsd  0x50(%rax),%xmm3
    1597:	f2 0f 59 5a 50       	mulsd  0x50(%rdx),%xmm3
    159c:	f2 44 0f 58 c3       	addsd  %xmm3,%xmm8
      d[11] += a[i + 11] * b[i + 11];
    15a1:	f2 0f 10 58 58       	movsd  0x58(%rax),%xmm3
    15a6:	f2 0f 59 5a 58       	mulsd  0x58(%rdx),%xmm3
    15ab:	f2 0f 58 fb          	addsd  %xmm3,%xmm7
      d[12] += a[i + 12] * b[i + 12];
    15af:	f2 0f 10 58 60       	movsd  0x60(%rax),%xmm3
    15b4:	f2 0f 59 5a 60       	mulsd  0x60(%rdx),%xmm3
    15b9:	f2 0f 58 f3          	addsd  %xmm3,%xmm6
      d[13] += a[i + 13] * b[i + 13];
    15bd:	f2 0f 10 58 68       	movsd  0x68(%rax),%xmm3
    15c2:	f2 0f 59 5a 68       	mulsd  0x68(%rdx),%xmm3
    15c7:	f2 0f 58 eb          	addsd  %xmm3,%xmm5
      d[14] += a[i + 14] * b[i + 14];
    15cb:	f2 0f 10 58 70       	movsd  0x70(%rax),%xmm3
    15d0:	f2 0f 59 5a 70       	mulsd  0x70(%rdx),%xmm3
    15d5:	f2 0f 58 5c 24 f8    	addsd  -0x8(%rsp),%xmm3
    15db:	f2 0f 11 5c 24 f8    	movsd  %xmm3,-0x8(%rsp)
      d[15] += a[i + 15] * b[i + 15];
    15e1:	f2 0f 10 58 78       	movsd  0x78(%rax),%xmm3
    15e6:	f2 0f 59 5a 78       	mulsd  0x78(%rdx),%xmm3
    15eb:	f2 0f 58 e3          	addsd  %xmm3,%xmm4
  for (unsigned long long i = 0; i < n; i += 16)
    15ef:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    15f3:	48 83 ea 80          	sub    $0xffffffffffffff80,%rdx
    15f7:	4c 39 c8             	cmp    %r9,%rax
    15fa:	0f 85 01 ff ff ff    	jne    1501 <dotprod_16x+0x7a>
    }

  if (! test)
    1600:	4d 85 d2             	test   %r10,%r10
    1603:	74 4b                	je     1650 <dotprod_16x+0x1c9>

      for (unsigned long long i = n_16 + 1; i < n; ++i)
	  d[0] += a[i] * b[i];
    }
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    1605:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
    1609:	f2 41 0f 58 d7       	addsd  %xmm15,%xmm2
    160e:	f2 41 0f 58 d6       	addsd  %xmm14,%xmm2
    1613:	f2 41 0f 58 d5       	addsd  %xmm13,%xmm2
    1618:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
    161c:	f2 41 0f 58 cc       	addsd  %xmm12,%xmm1
    1621:	f2 41 0f 58 cb       	addsd  %xmm11,%xmm1
    1626:	f2 41 0f 58 ca       	addsd  %xmm10,%xmm1
    162b:	f2 41 0f 58 c9       	addsd  %xmm9,%xmm1
    1630:	f2 41 0f 58 c8       	addsd  %xmm8,%xmm1
    1635:	f2 0f 58 cf          	addsd  %xmm7,%xmm1
    1639:	66 0f 28 c1          	movapd %xmm1,%xmm0
    163d:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
    1641:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
    1645:	f2 0f 58 44 24 f8    	addsd  -0x8(%rsp),%xmm0
    164b:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
}
    164f:	c3                   	retq   
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1650:	48 8d 46 f1          	lea    -0xf(%rsi),%rax
    1654:	48 83 fe 0e          	cmp    $0xe,%rsi
    1658:	76 ab                	jbe    1605 <dotprod_16x+0x17e>
	  d[0] += a[i] * b[i];
    165a:	f2 0f 10 1c c7       	movsd  (%rdi,%rax,8),%xmm3
    165f:	f2 41 0f 59 1c c0    	mulsd  (%r8,%rax,8),%xmm3
    1665:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1669:	48 83 c0 01          	add    $0x1,%rax
    166d:	48 39 c6             	cmp    %rax,%rsi
    1670:	75 e8                	jne    165a <dotprod_16x+0x1d3>
    1672:	eb 91                	jmp    1605 <dotprod_16x+0x17e>
  double d[16] = {0.0};
    1674:	66 0f ef e4          	pxor   %xmm4,%xmm4
    1678:	f2 0f 11 64 24 f8    	movsd  %xmm4,-0x8(%rsp)
    167e:	66 0f 28 ec          	movapd %xmm4,%xmm5
    1682:	66 0f 28 f4          	movapd %xmm4,%xmm6
    1686:	66 0f 28 fc          	movapd %xmm4,%xmm7
    168a:	66 44 0f 28 c4       	movapd %xmm4,%xmm8
    168f:	66 44 0f 28 cc       	movapd %xmm4,%xmm9
    1694:	66 44 0f 28 d4       	movapd %xmm4,%xmm10
    1699:	66 44 0f 28 dc       	movapd %xmm4,%xmm11
    169e:	66 44 0f 28 e4       	movapd %xmm4,%xmm12
    16a3:	66 0f 28 cc          	movapd %xmm4,%xmm1
    16a7:	66 44 0f 28 ec       	movapd %xmm4,%xmm13
    16ac:	66 44 0f 28 f4       	movapd %xmm4,%xmm14
    16b1:	66 44 0f 28 fc       	movapd %xmm4,%xmm15
    16b6:	66 0f 28 d4          	movapd %xmm4,%xmm2
    16ba:	66 0f 28 c4          	movapd %xmm4,%xmm0
    16be:	e9 42 ff ff ff       	jmpq   1605 <dotprod_16x+0x17e>

00000000000016c3 <main>:

int main(int argc, char **argv)
{
    16c3:	41 57                	push   %r15
    16c5:	41 56                	push   %r14
    16c7:	41 55                	push   %r13
    16c9:	41 54                	push   %r12
    16cb:	55                   	push   %rbp
    16cc:	53                   	push   %rbx
    16cd:	48 83 ec 18          	sub    $0x18,%rsp
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    16d1:	e8 a3 fa ff ff       	callq  1179 <parse_args>
    16d6:	48 89 c3             	mov    %rax,%rbx

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    16d9:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    16e0:	00 
    16e1:	48 89 ee             	mov    %rbp,%rsi
    16e4:	bf 40 00 00 00       	mov    $0x40,%edi
    16e9:	e8 82 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    16ee:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    16f1:	48 89 ee             	mov    %rbp,%rsi
    16f4:	bf 40 00 00 00       	mov    $0x40,%edi
    16f9:	e8 72 f9 ff ff       	callq  1070 <aligned_alloc@plt>
    16fe:	48 89 c5             	mov    %rax,%rbp
  for (unsigned long long i = 0; i < n; i++)
    1701:	48 85 db             	test   %rbx,%rbx
    1704:	74 2a                	je     1730 <main+0x6d>
    1706:	b8 00 00 00 00       	mov    $0x0,%eax
      a[i] = 0.1;
    170b:	f2 0f 10 0d 35 09 00 	movsd  0x935(%rip),%xmm1        # 2048 <_IO_stdin_used+0x48>
    1712:	00 
      b[i] = 1.0;
    1713:	f2 0f 10 05 35 09 00 	movsd  0x935(%rip),%xmm0        # 2050 <_IO_stdin_used+0x50>
    171a:	00 
      a[i] = 0.1;
    171b:	f2 41 0f 11 0c c4    	movsd  %xmm1,(%r12,%rax,8)
      b[i] = 1.0;
    1721:	f2 0f 11 44 c5 00    	movsd  %xmm0,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1727:	48 83 c0 01          	add    $0x1,%rax
    172b:	48 39 c3             	cmp    %rax,%rbx
    172e:	75 eb                	jne    171b <main+0x58>

  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
    1730:	48 89 da             	mov    %rbx,%rdx
    1733:	48 89 ee             	mov    %rbp,%rsi
    1736:	4c 89 e7             	mov    %r12,%rdi
    1739:	e8 66 fa ff ff       	callq  11a4 <dotprod>
    173e:	66 49 0f 7e c7       	movq   %xmm0,%r15
  double res_2x = dotprod_2x(a, b, n);
    1743:	48 89 da             	mov    %rbx,%rdx
    1746:	48 89 ee             	mov    %rbp,%rsi
    1749:	4c 89 e7             	mov    %r12,%rdi
    174c:	e8 83 fa ff ff       	callq  11d4 <dotprod_2x>
    1751:	66 49 0f 7e c6       	movq   %xmm0,%r14
  double res_4x = dotprod_4x(a, b, n);
    1756:	48 89 da             	mov    %rbx,%rdx
    1759:	48 89 ee             	mov    %rbp,%rsi
    175c:	4c 89 e7             	mov    %r12,%rdi
    175f:	e8 15 fb ff ff       	callq  1279 <dotprod_4x>
    1764:	66 49 0f 7e c5       	movq   %xmm0,%r13
  double res_8x = dotprod_8x(a, b, n);
    1769:	48 89 da             	mov    %rbx,%rdx
    176c:	48 89 ee             	mov    %rbp,%rsi
    176f:	4c 89 e7             	mov    %r12,%rdi
    1772:	e8 ce fb ff ff       	callq  1345 <dotprod_8x>
    1777:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    177d:	48 89 da             	mov    %rbx,%rdx
    1780:	48 89 ee             	mov    %rbp,%rsi
    1783:	4c 89 e7             	mov    %r12,%rdi
    1786:	e8 fc fc ff ff       	callq  1487 <dotprod_16x>
    178b:	66 48 0f 7e c3       	movq   %xmm0,%rbx

  // Print result
  printf("res = %lf\n", res);
    1790:	66 49 0f 6e c7       	movq   %r15,%xmm0
    1795:	48 8d 3d 68 08 00 00 	lea    0x868(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    179c:	b8 01 00 00 00       	mov    $0x1,%eax
    17a1:	e8 9a f8 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    17a6:	66 49 0f 6e c6       	movq   %r14,%xmm0
    17ab:	48 8d 3d 5d 08 00 00 	lea    0x85d(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    17b2:	b8 01 00 00 00       	mov    $0x1,%eax
    17b7:	e8 84 f8 ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    17bc:	66 49 0f 6e c5       	movq   %r13,%xmm0
    17c1:	48 8d 3d 55 08 00 00 	lea    0x855(%rip),%rdi        # 201d <_IO_stdin_used+0x1d>
    17c8:	b8 01 00 00 00       	mov    $0x1,%eax
    17cd:	e8 6e f8 ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    17d2:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    17d8:	48 8d 3d 4c 08 00 00 	lea    0x84c(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    17df:	b8 01 00 00 00       	mov    $0x1,%eax
    17e4:	e8 57 f8 ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    17e9:	66 48 0f 6e c3       	movq   %rbx,%xmm0
    17ee:	48 8d 3d 44 08 00 00 	lea    0x844(%rip),%rdi        # 2039 <_IO_stdin_used+0x39>
    17f5:	b8 01 00 00 00       	mov    $0x1,%eax
    17fa:	e8 41 f8 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    17ff:	4c 89 e7             	mov    %r12,%rdi
    1802:	e8 29 f8 ff ff       	callq  1030 <free@plt>
  free(b);
    1807:	48 89 ef             	mov    %rbp,%rdi
    180a:	e8 21 f8 ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    180f:	b8 00 00 00 00       	mov    $0x0,%eax
    1814:	48 83 c4 18          	add    $0x18,%rsp
    1818:	5b                   	pop    %rbx
    1819:	5d                   	pop    %rbp
    181a:	41 5c                	pop    %r12
    181c:	41 5d                	pop    %r13
    181e:	41 5e                	pop    %r14
    1820:	41 5f                	pop    %r15
    1822:	c3                   	retq   
    1823:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    182a:	00 00 00 
    182d:	0f 1f 00             	nopl   (%rax)

0000000000001830 <__libc_csu_init>:
    1830:	f3 0f 1e fa          	endbr64 
    1834:	41 57                	push   %r15
    1836:	4c 8d 3d ab 25 00 00 	lea    0x25ab(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    183d:	41 56                	push   %r14
    183f:	49 89 d6             	mov    %rdx,%r14
    1842:	41 55                	push   %r13
    1844:	49 89 f5             	mov    %rsi,%r13
    1847:	41 54                	push   %r12
    1849:	41 89 fc             	mov    %edi,%r12d
    184c:	55                   	push   %rbp
    184d:	48 8d 2d 9c 25 00 00 	lea    0x259c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1854:	53                   	push   %rbx
    1855:	4c 29 fd             	sub    %r15,%rbp
    1858:	48 83 ec 08          	sub    $0x8,%rsp
    185c:	e8 9f f7 ff ff       	callq  1000 <_init>
    1861:	48 c1 fd 03          	sar    $0x3,%rbp
    1865:	74 1f                	je     1886 <__libc_csu_init+0x56>
    1867:	31 db                	xor    %ebx,%ebx
    1869:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1870:	4c 89 f2             	mov    %r14,%rdx
    1873:	4c 89 ee             	mov    %r13,%rsi
    1876:	44 89 e7             	mov    %r12d,%edi
    1879:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    187d:	48 83 c3 01          	add    $0x1,%rbx
    1881:	48 39 dd             	cmp    %rbx,%rbp
    1884:	75 ea                	jne    1870 <__libc_csu_init+0x40>
    1886:	48 83 c4 08          	add    $0x8,%rsp
    188a:	5b                   	pop    %rbx
    188b:	5d                   	pop    %rbp
    188c:	41 5c                	pop    %r12
    188e:	41 5d                	pop    %r13
    1890:	41 5e                	pop    %r14
    1892:	41 5f                	pop    %r15
    1894:	c3                   	retq   
    1895:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    189c:	00 00 00 00 

00000000000018a0 <__libc_csu_fini>:
    18a0:	f3 0f 1e fa          	endbr64 
    18a4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000018a8 <_fini>:
    18a8:	f3 0f 1e fa          	endbr64 
    18ac:	48 83 ec 08          	sub    $0x8,%rsp
    18b0:	48 83 c4 08          	add    $0x8,%rsp
    18b4:	c3                   	retq   
