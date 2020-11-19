
kamikaze_gcc:     format de fichier elf64-x86-64


Déassemblage de la section .init :

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Déassemblage de la section .plt :

0000000000001020 <.plt>:
    1020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 5018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 5020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <strtoll@plt>:
    1050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 5028 <strtoll@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <exit@plt>:
    1060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 5030 <exit@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <aligned_alloc@plt>:
    1070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 5038 <aligned_alloc@GLIBC_2.16>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

Déassemblage de la section .text :

0000000000001080 <main>:
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
}

int main(int argc, char **argv)
{
    1080:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    1085:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1089:	41 ff 72 f8          	pushq  -0x8(%r10)
    108d:	55                   	push   %rbp
    108e:	48 89 e5             	mov    %rsp,%rbp
    1091:	41 57                	push   %r15
    1093:	41 56                	push   %r14
    1095:	41 55                	push   %r13
    1097:	41 54                	push   %r12
    1099:	41 52                	push   %r10
    109b:	53                   	push   %rbx
    109c:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  if (argc != 2)
    10a3:	83 ff 02             	cmp    $0x2,%edi
    10a6:	0f 85 04 15 00 00    	jne    25b0 <main+0x1530>
  return strtoll(argv[1], NULL, 10);
    10ac:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    10b0:	ba 0a 00 00 00       	mov    $0xa,%edx
    10b5:	31 f6                	xor    %esi,%esi
    10b7:	e8 94 ff ff ff       	callq  1050 <strtoll@plt>
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    10bc:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
    10c3:	00 
    10c4:	4c 89 f6             	mov    %r14,%rsi
    10c7:	bf 40 00 00 00       	mov    $0x40,%edi
  return strtoll(argv[1], NULL, 10);
    10cc:	48 89 c3             	mov    %rax,%rbx
  double *a = aligned_alloc(64, n * sizeof(double));
    10cf:	e8 9c ff ff ff       	callq  1070 <aligned_alloc@plt>
  double *b = aligned_alloc(64, n * sizeof(double));
    10d4:	4c 89 f6             	mov    %r14,%rsi
    10d7:	bf 40 00 00 00       	mov    $0x40,%edi
  double *a = aligned_alloc(64, n * sizeof(double));
    10dc:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    10df:	e8 8c ff ff ff       	callq  1070 <aligned_alloc@plt>
    10e4:	49 89 c5             	mov    %rax,%r13
  for (unsigned long long i = 0; i < n; i++)
    10e7:	48 85 db             	test   %rbx,%rbx
    10ea:	0f 84 0e 14 00 00    	je     24fe <main+0x147e>
    10f0:	48 8d 53 ff          	lea    -0x1(%rbx),%rdx
    10f4:	48 83 fa 02          	cmp    $0x2,%rdx
    10f8:	0f 86 21 14 00 00    	jbe    251f <main+0x149f>
    10fe:	48 89 de             	mov    %rbx,%rsi
    1101:	48 c1 ee 02          	shr    $0x2,%rsi
    1105:	48 c1 e6 05          	shl    $0x5,%rsi
    1109:	48 8d 4e e0          	lea    -0x20(%rsi),%rcx
    110d:	48 c1 e9 05          	shr    $0x5,%rcx
    1111:	48 ff c1             	inc    %rcx
    1114:	c5 fd 28 15 44 1f 00 	vmovapd 0x1f44(%rip),%ymm2        # 3060 <_IO_stdin_used+0x60>
    111b:	00 
    111c:	c5 fd 28 25 5c 1f 00 	vmovapd 0x1f5c(%rip),%ymm4        # 3080 <_IO_stdin_used+0x80>
    1123:	00 
    1124:	31 ff                	xor    %edi,%edi
    1126:	83 e1 07             	and    $0x7,%ecx
    1129:	0f 84 97 00 00 00    	je     11c6 <main+0x146>
    112f:	48 83 f9 01          	cmp    $0x1,%rcx
    1133:	74 77                	je     11ac <main+0x12c>
    1135:	48 83 f9 02          	cmp    $0x2,%rcx
    1139:	74 60                	je     119b <main+0x11b>
    113b:	48 83 f9 03          	cmp    $0x3,%rcx
    113f:	74 49                	je     118a <main+0x10a>
    1141:	48 83 f9 04          	cmp    $0x4,%rcx
    1145:	74 32                	je     1179 <main+0xf9>
    1147:	48 83 f9 05          	cmp    $0x5,%rcx
    114b:	74 1b                	je     1168 <main+0xe8>
    114d:	48 83 f9 06          	cmp    $0x6,%rcx
    1151:	0f 85 be 12 00 00    	jne    2415 <main+0x1395>
      a[i] = 0.1;
    1157:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    115d:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1164:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1168:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    116e:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1175:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1179:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    117f:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1186:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    118a:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    1190:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1197:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    119b:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    11a1:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    11a8:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    11ac:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    11b2:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    11b9:	48 83 c7 20          	add    $0x20,%rdi
    11bd:	48 39 f7             	cmp    %rsi,%rdi
    11c0:	0f 84 97 00 00 00    	je     125d <main+0x1dd>
      a[i] = 0.1;
    11c6:	c4 c1 7d 29 14 3c    	vmovapd %ymm2,(%r12,%rdi,1)
      b[i] = 1.0;
    11cc:	c4 c1 7d 29 64 3d 00 	vmovapd %ymm4,0x0(%r13,%rdi,1)
      a[i] = 0.1;
    11d3:	c4 c1 7d 29 54 3c 20 	vmovapd %ymm2,0x20(%r12,%rdi,1)
      b[i] = 1.0;
    11da:	c4 c1 7d 29 64 3d 20 	vmovapd %ymm4,0x20(%r13,%rdi,1)
      a[i] = 0.1;
    11e1:	c4 c1 7d 29 54 3c 40 	vmovapd %ymm2,0x40(%r12,%rdi,1)
      b[i] = 1.0;
    11e8:	c4 c1 7d 29 64 3d 40 	vmovapd %ymm4,0x40(%r13,%rdi,1)
      a[i] = 0.1;
    11ef:	c4 c1 7d 29 54 3c 60 	vmovapd %ymm2,0x60(%r12,%rdi,1)
      b[i] = 1.0;
    11f6:	c4 c1 7d 29 64 3d 60 	vmovapd %ymm4,0x60(%r13,%rdi,1)
      a[i] = 0.1;
    11fd:	c4 c1 7d 29 94 3c 80 	vmovapd %ymm2,0x80(%r12,%rdi,1)
    1204:	00 00 00 
      b[i] = 1.0;
    1207:	c4 c1 7d 29 a4 3d 80 	vmovapd %ymm4,0x80(%r13,%rdi,1)
    120e:	00 00 00 
      a[i] = 0.1;
    1211:	c4 c1 7d 29 94 3c a0 	vmovapd %ymm2,0xa0(%r12,%rdi,1)
    1218:	00 00 00 
      b[i] = 1.0;
    121b:	c4 c1 7d 29 a4 3d a0 	vmovapd %ymm4,0xa0(%r13,%rdi,1)
    1222:	00 00 00 
      a[i] = 0.1;
    1225:	c4 c1 7d 29 94 3c c0 	vmovapd %ymm2,0xc0(%r12,%rdi,1)
    122c:	00 00 00 
      b[i] = 1.0;
    122f:	c4 c1 7d 29 a4 3d c0 	vmovapd %ymm4,0xc0(%r13,%rdi,1)
    1236:	00 00 00 
      a[i] = 0.1;
    1239:	c4 c1 7d 29 94 3c e0 	vmovapd %ymm2,0xe0(%r12,%rdi,1)
    1240:	00 00 00 
      b[i] = 1.0;
    1243:	c4 c1 7d 29 a4 3d e0 	vmovapd %ymm4,0xe0(%r13,%rdi,1)
    124a:	00 00 00 
  for (unsigned long long i = 0; i < n; i++)
    124d:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    1254:	48 39 f7             	cmp    %rsi,%rdi
    1257:	0f 85 69 ff ff ff    	jne    11c6 <main+0x146>
    125d:	49 89 d8             	mov    %rbx,%r8
    1260:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
    1264:	f6 c3 03             	test   $0x3,%bl
    1267:	74 51                	je     12ba <main+0x23a>
      a[i] = 0.1;
    1269:	c5 fb 10 3d 2f 1e 00 	vmovsd 0x1e2f(%rip),%xmm7        # 30a0 <_IO_stdin_used+0xa0>
    1270:	00 
      b[i] = 1.0;
    1271:	c5 7b 10 05 2f 1e 00 	vmovsd 0x1e2f(%rip),%xmm8        # 30a8 <_IO_stdin_used+0xa8>
    1278:	00 
      a[i] = 0.1;
    1279:	c4 81 7b 11 3c c4    	vmovsd %xmm7,(%r12,%r8,8)
      b[i] = 1.0;
    127f:	c4 01 7b 11 44 c5 00 	vmovsd %xmm8,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    1286:	49 ff c0             	inc    %r8
    1289:	4c 39 c3             	cmp    %r8,%rbx
    128c:	76 2c                	jbe    12ba <main+0x23a>
      a[i] = 0.1;
    128e:	c4 81 7b 11 3c c4    	vmovsd %xmm7,(%r12,%r8,8)
      b[i] = 1.0;
    1294:	c4 01 7b 11 44 c5 00 	vmovsd %xmm8,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    129b:	49 ff c0             	inc    %r8
    129e:	4c 39 c3             	cmp    %r8,%rbx
    12a1:	76 0d                	jbe    12b0 <main+0x230>
      a[i] = 0.1;
    12a3:	c4 81 7b 11 3c c4    	vmovsd %xmm7,(%r12,%r8,8)
      b[i] = 1.0;
    12a9:	c4 01 7b 11 44 c5 00 	vmovsd %xmm8,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    12b0:	48 83 fa 02          	cmp    $0x2,%rdx
    12b4:	0f 86 9a 12 00 00    	jbe    2554 <main+0x14d4>
    12ba:	49 89 d9             	mov    %rbx,%r9
    12bd:	49 c1 e9 02          	shr    $0x2,%r9
    12c1:	49 c1 e1 05          	shl    $0x5,%r9
    12c5:	4d 8d 59 e0          	lea    -0x20(%r9),%r11
    12c9:	49 c1 eb 05          	shr    $0x5,%r11
    12cd:	49 ff c3             	inc    %r11
    12d0:	45 31 ff             	xor    %r15d,%r15d
    12d3:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    12d7:	41 83 e3 07          	and    $0x7,%r11d
    12db:	0f 84 b5 00 00 00    	je     1396 <main+0x316>
    12e1:	49 83 fb 01          	cmp    $0x1,%r11
    12e5:	0f 84 8d 00 00 00    	je     1378 <main+0x2f8>
    12eb:	49 83 fb 02          	cmp    $0x2,%r11
    12ef:	74 72                	je     1363 <main+0x2e3>
    12f1:	49 83 fb 03          	cmp    $0x3,%r11
    12f5:	74 57                	je     134e <main+0x2ce>
    12f7:	49 83 fb 04          	cmp    $0x4,%r11
    12fb:	74 3c                	je     1339 <main+0x2b9>
    12fd:	49 83 fb 05          	cmp    $0x5,%r11
    1301:	74 20                	je     1323 <main+0x2a3>
    1303:	49 83 fb 06          	cmp    $0x6,%r11
    1307:	0f 85 1c 11 00 00    	jne    2429 <main+0x13a9>
    d += a[i] * b[i];
    130d:	c4 01 7d 28 5c 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm11
    1314:	c4 01 25 59 24 3c    	vmulpd (%r12,%r15,1),%ymm11,%ymm12
    131a:	49 83 c7 20          	add    $0x20,%r15
    131e:	c4 c1 7d 58 c4       	vaddpd %ymm12,%ymm0,%ymm0
    1323:	c4 01 7d 28 6c 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm13
    132a:	c4 01 15 59 34 3c    	vmulpd (%r12,%r15,1),%ymm13,%ymm14
    1330:	49 83 c7 20          	add    $0x20,%r15
    1334:	c4 c1 7d 58 c6       	vaddpd %ymm14,%ymm0,%ymm0
    1339:	c4 01 7d 28 7c 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm15
    1340:	c4 81 05 59 0c 3c    	vmulpd (%r12,%r15,1),%ymm15,%ymm1
    1346:	49 83 c7 20          	add    $0x20,%r15
    134a:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    134e:	c4 81 7d 28 6c 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm5
    1355:	c4 81 55 59 1c 3c    	vmulpd (%r12,%r15,1),%ymm5,%ymm3
    135b:	49 83 c7 20          	add    $0x20,%r15
    135f:	c5 fd 58 c3          	vaddpd %ymm3,%ymm0,%ymm0
    1363:	c4 81 7d 28 74 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm6
    136a:	c4 81 4d 59 14 3c    	vmulpd (%r12,%r15,1),%ymm6,%ymm2
    1370:	49 83 c7 20          	add    $0x20,%r15
    1374:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
    1378:	c4 81 7d 28 64 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm4
    137f:	c4 81 5d 59 3c 3c    	vmulpd (%r12,%r15,1),%ymm4,%ymm7
    1385:	49 83 c7 20          	add    $0x20,%r15
    1389:	c5 fd 58 c7          	vaddpd %ymm7,%ymm0,%ymm0
  for (unsigned long long i = 0; i < n; ++i)
    138d:	4d 39 cf             	cmp    %r9,%r15
    1390:	0f 84 bd 00 00 00    	je     1453 <main+0x3d3>
    d += a[i] * b[i];
    1396:	c4 01 7d 28 44 3d 00 	vmovapd 0x0(%r13,%r15,1),%ymm8
    139d:	c4 01 7d 28 5c 3d 20 	vmovapd 0x20(%r13,%r15,1),%ymm11
    13a4:	c4 01 3d 59 0c 3c    	vmulpd (%r12,%r15,1),%ymm8,%ymm9
    13aa:	c4 01 25 59 64 3c 20 	vmulpd 0x20(%r12,%r15,1),%ymm11,%ymm12
    13b1:	c4 01 7d 28 74 3d 40 	vmovapd 0x40(%r13,%r15,1),%ymm14
    13b8:	c4 81 7d 28 4c 3d 60 	vmovapd 0x60(%r13,%r15,1),%ymm1
    13bf:	c4 01 0d 59 7c 3c 40 	vmulpd 0x40(%r12,%r15,1),%ymm14,%ymm15
    13c6:	c4 41 7d 58 d1       	vaddpd %ymm9,%ymm0,%ymm10
    13cb:	c4 81 75 59 5c 3c 60 	vmulpd 0x60(%r12,%r15,1),%ymm1,%ymm3
    13d2:	c4 81 7d 28 94 3d 80 	vmovapd 0x80(%r13,%r15,1),%ymm2
    13d9:	00 00 00 
    13dc:	c4 41 2d 58 ec       	vaddpd %ymm12,%ymm10,%ymm13
    13e1:	c4 81 6d 59 a4 3c 80 	vmulpd 0x80(%r12,%r15,1),%ymm2,%ymm4
    13e8:	00 00 00 
    13eb:	c4 81 7d 28 84 3d a0 	vmovapd 0xa0(%r13,%r15,1),%ymm0
    13f2:	00 00 00 
    13f5:	c4 c1 15 58 ef       	vaddpd %ymm15,%ymm13,%ymm5
    13fa:	c4 01 7d 59 84 3c a0 	vmulpd 0xa0(%r12,%r15,1),%ymm0,%ymm8
    1401:	00 00 00 
    1404:	c4 01 7d 28 94 3d c0 	vmovapd 0xc0(%r13,%r15,1),%ymm10
    140b:	00 00 00 
    140e:	c5 d5 58 f3          	vaddpd %ymm3,%ymm5,%ymm6
    1412:	c4 01 2d 59 9c 3c c0 	vmulpd 0xc0(%r12,%r15,1),%ymm10,%ymm11
    1419:	00 00 00 
    141c:	c4 01 7d 28 ac 3d e0 	vmovapd 0xe0(%r13,%r15,1),%ymm13
    1423:	00 00 00 
    1426:	c5 cd 58 fc          	vaddpd %ymm4,%ymm6,%ymm7
    142a:	c4 01 15 59 b4 3c e0 	vmulpd 0xe0(%r12,%r15,1),%ymm13,%ymm14
    1431:	00 00 00 
    1434:	49 81 c7 00 01 00 00 	add    $0x100,%r15
    143b:	c4 41 45 58 c8       	vaddpd %ymm8,%ymm7,%ymm9
    1440:	c4 41 35 58 e3       	vaddpd %ymm11,%ymm9,%ymm12
    1445:	c4 c1 1d 58 c6       	vaddpd %ymm14,%ymm12,%ymm0
  for (unsigned long long i = 0; i < n; ++i)
    144a:	4d 39 cf             	cmp    %r9,%r15
    144d:	0f 85 43 ff ff ff    	jne    1396 <main+0x316>
    1453:	c4 c3 7d 19 c7 01    	vextractf128 $0x1,%ymm0,%xmm15
    1459:	c5 81 58 e8          	vaddpd %xmm0,%xmm15,%xmm5
    145d:	48 89 d8             	mov    %rbx,%rax
    1460:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    1464:	c5 d1 15 cd          	vunpckhpd %xmm5,%xmm5,%xmm1
    1468:	c5 f1 58 f5          	vaddpd %xmm5,%xmm1,%xmm6
    146c:	f6 c3 03             	test   $0x3,%bl
    146f:	0f 84 27 0c 00 00    	je     209c <main+0x101c>
    d += a[i] * b[i];
    1475:	c4 c1 7b 10 1c c4    	vmovsd (%r12,%rax,8),%xmm3
    147b:	c4 c1 63 59 54 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm3,%xmm2
  for (unsigned long long i = 0; i < n; ++i)
    1482:	48 ff c0             	inc    %rax
    d += a[i] * b[i];
    1485:	c5 cb 58 f2          	vaddsd %xmm2,%xmm6,%xmm6
  for (unsigned long long i = 0; i < n; ++i)
    1489:	48 39 c3             	cmp    %rax,%rbx
    148c:	76 2b                	jbe    14b9 <main+0x439>
    d += a[i] * b[i];
    148e:	c4 c1 7b 10 24 c4    	vmovsd (%r12,%rax,8),%xmm4
    1494:	c4 c1 5b 59 7c c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm4,%xmm7
  for (unsigned long long i = 0; i < n; ++i)
    149b:	48 ff c0             	inc    %rax
    d += a[i] * b[i];
    149e:	c5 cb 58 f7          	vaddsd %xmm7,%xmm6,%xmm6
  for (unsigned long long i = 0; i < n; ++i)
    14a2:	48 39 c3             	cmp    %rax,%rbx
    14a5:	76 12                	jbe    14b9 <main+0x439>
    d += a[i] * b[i];
    14a7:	c4 c1 7b 10 44 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm0
    14ae:	c4 41 7b 59 04 c4    	vmulsd (%r12,%rax,8),%xmm0,%xmm8
    14b4:	c4 c1 4b 58 f0       	vaddsd %xmm8,%xmm6,%xmm6
  if (n & 1)
    14b9:	f6 c3 01             	test   $0x1,%bl
    14bc:	0f 84 e3 0b 00 00    	je     20a5 <main+0x1025>
      for (unsigned long long i = 0; i < n_1; i += 2)
    14c2:	48 85 d2             	test   %rdx,%rdx
    14c5:	0f 84 9f 10 00 00    	je     256a <main+0x14ea>
    14cb:	4c 8d 43 fe          	lea    -0x2(%rbx),%r8
    14cf:	4d 89 c1             	mov    %r8,%r9
    14d2:	49 d1 e9             	shr    %r9
    14d5:	49 ff c1             	inc    %r9
    14d8:	49 83 f8 01          	cmp    $0x1,%r8
    14dc:	0f 86 ad 10 00 00    	jbe    258f <main+0x150f>
    14e2:	4d 89 cf             	mov    %r9,%r15
    14e5:	49 d1 ef             	shr    %r15
    14e8:	49 c1 e7 05          	shl    $0x5,%r15
    14ec:	4d 8d 57 e0          	lea    -0x20(%r15),%r10
    14f0:	49 c1 ea 05          	shr    $0x5,%r10
    14f4:	49 ff c2             	inc    %r10
  for (unsigned long long i = 0; i < n; ++i)
    14f7:	31 c0                	xor    %eax,%eax
    14f9:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    14fd:	41 83 e2 07          	and    $0x7,%r10d
    1501:	0f 84 c3 00 00 00    	je     15ca <main+0x54a>
    1507:	49 83 fa 01          	cmp    $0x1,%r10
    150b:	0f 84 9a 00 00 00    	je     15ab <main+0x52b>
    1511:	49 83 fa 02          	cmp    $0x2,%r10
    1515:	74 7f                	je     1596 <main+0x516>
    1517:	49 83 fa 03          	cmp    $0x3,%r10
    151b:	74 64                	je     1581 <main+0x501>
    151d:	49 83 fa 04          	cmp    $0x4,%r10
    1521:	74 49                	je     156c <main+0x4ec>
    1523:	49 83 fa 05          	cmp    $0x5,%r10
    1527:	74 2d                	je     1556 <main+0x4d6>
    1529:	49 83 fa 06          	cmp    $0x6,%r10
    152d:	74 11                	je     1540 <main+0x4c0>
	  d[0] += a[i] * b[i];
    152f:	c4 41 7d 28 5d 00    	vmovapd 0x0(%r13),%ymm11
    1535:	b8 20 00 00 00       	mov    $0x20,%eax
    153a:	c4 c1 25 59 04 24    	vmulpd (%r12),%ymm11,%ymm0
    1540:	c4 41 7d 28 64 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm12
    1547:	c4 41 1d 59 2c 04    	vmulpd (%r12,%rax,1),%ymm12,%ymm13
    154d:	48 83 c0 20          	add    $0x20,%rax
    1551:	c4 c1 7d 58 c5       	vaddpd %ymm13,%ymm0,%ymm0
    1556:	c4 41 7d 28 74 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm14
    155d:	c4 41 0d 59 3c 04    	vmulpd (%r12,%rax,1),%ymm14,%ymm15
    1563:	48 83 c0 20          	add    $0x20,%rax
    1567:	c4 c1 7d 58 c7       	vaddpd %ymm15,%ymm0,%ymm0
    156c:	c4 c1 7d 28 6c 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm5
    1573:	c4 c1 55 59 0c 04    	vmulpd (%r12,%rax,1),%ymm5,%ymm1
    1579:	48 83 c0 20          	add    $0x20,%rax
    157d:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    1581:	c4 c1 7d 28 5c 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm3
    1588:	c4 c1 65 59 24 04    	vmulpd (%r12,%rax,1),%ymm3,%ymm4
    158e:	48 83 c0 20          	add    $0x20,%rax
    1592:	c5 fd 58 c4          	vaddpd %ymm4,%ymm0,%ymm0
    1596:	c4 c1 7d 28 54 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm2
    159d:	c4 c1 6d 59 3c 04    	vmulpd (%r12,%rax,1),%ymm2,%ymm7
    15a3:	48 83 c0 20          	add    $0x20,%rax
    15a7:	c5 fd 58 c7          	vaddpd %ymm7,%ymm0,%ymm0
    15ab:	c4 41 7d 28 44 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm8
    15b2:	c4 41 3d 59 0c 04    	vmulpd (%r12,%rax,1),%ymm8,%ymm9
    15b8:	48 83 c0 20          	add    $0x20,%rax
    15bc:	c4 c1 7d 58 c1       	vaddpd %ymm9,%ymm0,%ymm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    15c1:	4c 39 f8             	cmp    %r15,%rax
    15c4:	0f 84 bb 00 00 00    	je     1685 <main+0x605>
	  d[0] += a[i] * b[i];
    15ca:	c4 41 7d 28 54 05 00 	vmovapd 0x0(%r13,%rax,1),%ymm10
    15d1:	c4 41 7d 28 6c 05 20 	vmovapd 0x20(%r13,%rax,1),%ymm13
    15d8:	c4 41 2d 59 1c 04    	vmulpd (%r12,%rax,1),%ymm10,%ymm11
    15de:	c4 41 15 59 74 04 20 	vmulpd 0x20(%r12,%rax,1),%ymm13,%ymm14
    15e5:	c4 c1 7d 28 6c 05 40 	vmovapd 0x40(%r13,%rax,1),%ymm5
    15ec:	c4 c1 7d 28 64 05 60 	vmovapd 0x60(%r13,%rax,1),%ymm4
    15f3:	c4 c1 55 59 4c 04 40 	vmulpd 0x40(%r12,%rax,1),%ymm5,%ymm1
    15fa:	c4 41 7d 58 e3       	vaddpd %ymm11,%ymm0,%ymm12
    15ff:	c4 c1 5d 59 54 04 60 	vmulpd 0x60(%r12,%rax,1),%ymm4,%ymm2
    1606:	c4 41 7d 28 84 05 80 	vmovapd 0x80(%r13,%rax,1),%ymm8
    160d:	00 00 00 
    1610:	c4 41 1d 58 fe       	vaddpd %ymm14,%ymm12,%ymm15
    1615:	c4 41 3d 59 8c 04 80 	vmulpd 0x80(%r12,%rax,1),%ymm8,%ymm9
    161c:	00 00 00 
    161f:	c4 41 7d 28 94 05 a0 	vmovapd 0xa0(%r13,%rax,1),%ymm10
    1626:	00 00 00 
    1629:	c5 85 58 d9          	vaddpd %ymm1,%ymm15,%ymm3
    162d:	c4 41 2d 59 9c 04 a0 	vmulpd 0xa0(%r12,%rax,1),%ymm10,%ymm11
    1634:	00 00 00 
    1637:	c4 41 7d 28 ac 05 c0 	vmovapd 0xc0(%r13,%rax,1),%ymm13
    163e:	00 00 00 
    1641:	c5 e5 58 fa          	vaddpd %ymm2,%ymm3,%ymm7
    1645:	c4 41 15 59 b4 04 c0 	vmulpd 0xc0(%r12,%rax,1),%ymm13,%ymm14
    164c:	00 00 00 
    164f:	c4 c1 7d 28 ac 05 e0 	vmovapd 0xe0(%r13,%rax,1),%ymm5
    1656:	00 00 00 
    1659:	c4 c1 45 58 c1       	vaddpd %ymm9,%ymm7,%ymm0
    165e:	c4 c1 55 59 8c 04 e0 	vmulpd 0xe0(%r12,%rax,1),%ymm5,%ymm1
    1665:	00 00 00 
    1668:	48 05 00 01 00 00    	add    $0x100,%rax
    166e:	c4 41 7d 58 e3       	vaddpd %ymm11,%ymm0,%ymm12
    1673:	c4 41 1d 58 fe       	vaddpd %ymm14,%ymm12,%ymm15
    1678:	c5 85 58 c1          	vaddpd %ymm1,%ymm15,%ymm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    167c:	4c 39 f8             	cmp    %r15,%rax
    167f:	0f 85 45 ff ff ff    	jne    15ca <main+0x54a>
    1685:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
    168b:	c5 e1 58 e0          	vaddpd %xmm0,%xmm3,%xmm4
    168f:	4d 89 cb             	mov    %r9,%r11
    1692:	49 83 e3 fe          	and    $0xfffffffffffffffe,%r11
    1696:	41 80 e1 01          	and    $0x1,%r9b
    169a:	c5 5b 10 d4          	vmovsd %xmm4,%xmm4,%xmm10
    169e:	c5 59 15 cc          	vunpckhpd %xmm4,%xmm4,%xmm9
    16a2:	74 25                	je     16c9 <main+0x649>
    16a4:	49 c1 e3 04          	shl    $0x4,%r11
	  d[0] += a[i] * b[i];
    16a8:	c4 81 79 28 54 1d 00 	vmovapd 0x0(%r13,%r11,1),%xmm2
    16af:	c4 41 29 14 c1       	vunpcklpd %xmm9,%xmm10,%xmm8
    16b4:	c4 81 69 59 3c 1c    	vmulpd (%r12,%r11,1),%xmm2,%xmm7
    16ba:	c4 41 41 58 c8       	vaddpd %xmm8,%xmm7,%xmm9
      for (unsigned long long i = 0; i < n_1; i += 2)
    16bf:	c4 41 33 10 d1       	vmovsd %xmm9,%xmm9,%xmm10
    16c4:	c4 41 31 15 c9       	vunpckhpd %xmm9,%xmm9,%xmm9
      return d[0] + d[1] + a[n-1] * b[n-1];
    16c9:	c4 81 7b 10 44 34 f8 	vmovsd -0x8(%r12,%r14,1),%xmm0
    16d0:	c4 41 2b 58 d1       	vaddsd %xmm9,%xmm10,%xmm10
    16d5:	c4 01 7b 59 5c 35 f8 	vmulsd -0x8(%r13,%r14,1),%xmm0,%xmm11
  unsigned long long test = n % 4;
    16dc:	49 89 d8             	mov    %rbx,%r8
    16df:	41 83 e0 03          	and    $0x3,%r8d
      return d[0] + d[1] + a[n-1] * b[n-1];
    16e3:	c4 c1 23 58 d2       	vaddsd %xmm10,%xmm11,%xmm2
  for (unsigned long long i = 0; i < n; i += 4)
    16e8:	49 89 d6             	mov    %rdx,%r14
    16eb:	49 c1 ee 02          	shr    $0x2,%r14
    16ef:	49 ff c6             	inc    %r14
    16f2:	be 01 00 00 00       	mov    $0x1,%esi
    16f7:	48 85 db             	test   %rbx,%rbx
    16fa:	4c 0f 44 f6          	cmove  %rsi,%r14
      d[0] += a[i] * b[i];
    16fe:	c4 41 7d 28 65 00    	vmovapd 0x0(%r13),%ymm12
    1704:	49 8d 7e ff          	lea    -0x1(%r14),%rdi
  for (unsigned long long i = 0; i < n; i += 4)
    1708:	b9 01 00 00 00       	mov    $0x1,%ecx
      d[0] += a[i] * b[i];
    170d:	c4 c1 1d 59 04 24    	vmulpd (%r12),%ymm12,%ymm0
    1713:	83 e7 07             	and    $0x7,%edi
  for (unsigned long long i = 0; i < n; i += 4)
    1716:	41 b9 20 00 00 00    	mov    $0x20,%r9d
    171c:	4c 39 f1             	cmp    %r14,%rcx
    171f:	0f 83 90 01 00 00    	jae    18b5 <main+0x835>
    1725:	48 85 ff             	test   %rdi,%rdi
    1728:	0f 84 c8 00 00 00    	je     17f6 <main+0x776>
    172e:	48 83 ff 01          	cmp    $0x1,%rdi
    1732:	0f 84 9c 00 00 00    	je     17d4 <main+0x754>
    1738:	48 83 ff 02          	cmp    $0x2,%rdi
    173c:	74 7d                	je     17bb <main+0x73b>
    173e:	48 83 ff 03          	cmp    $0x3,%rdi
    1742:	74 5e                	je     17a2 <main+0x722>
    1744:	48 83 ff 04          	cmp    $0x4,%rdi
    1748:	74 40                	je     178a <main+0x70a>
    174a:	48 83 ff 05          	cmp    $0x5,%rdi
    174e:	74 22                	je     1772 <main+0x6f2>
    1750:	48 83 ff 06          	cmp    $0x6,%rdi
    1754:	0f 85 19 0d 00 00    	jne    2473 <main+0x13f3>
      d[0] += a[i] * b[i];
    175a:	c4 01 7d 28 7c 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm15
  for (unsigned long long i = 0; i < n; i += 4)
    1761:	48 ff c1             	inc    %rcx
      d[0] += a[i] * b[i];
    1764:	c4 81 05 59 2c 0c    	vmulpd (%r12,%r9,1),%ymm15,%ymm5
    176a:	49 83 c1 20          	add    $0x20,%r9
    176e:	c5 fd 58 c5          	vaddpd %ymm5,%ymm0,%ymm0
    1772:	c4 81 7d 28 4c 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm1
  for (unsigned long long i = 0; i < n; i += 4)
    1779:	48 ff c1             	inc    %rcx
      d[0] += a[i] * b[i];
    177c:	c4 81 75 59 1c 0c    	vmulpd (%r12,%r9,1),%ymm1,%ymm3
    1782:	49 83 c1 20          	add    $0x20,%r9
    1786:	c5 fd 58 c3          	vaddpd %ymm3,%ymm0,%ymm0
    178a:	c4 81 7d 28 64 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm4
  for (unsigned long long i = 0; i < n; i += 4)
    1791:	48 ff c1             	inc    %rcx
      d[0] += a[i] * b[i];
    1794:	c4 81 5d 59 3c 0c    	vmulpd (%r12,%r9,1),%ymm4,%ymm7
    179a:	49 83 c1 20          	add    $0x20,%r9
    179e:	c5 fd 58 c7          	vaddpd %ymm7,%ymm0,%ymm0
    17a2:	c4 01 7d 28 44 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm8
  for (unsigned long long i = 0; i < n; i += 4)
    17a9:	48 ff c1             	inc    %rcx
      d[0] += a[i] * b[i];
    17ac:	c4 01 3d 59 0c 0c    	vmulpd (%r12,%r9,1),%ymm8,%ymm9
    17b2:	49 83 c1 20          	add    $0x20,%r9
    17b6:	c4 c1 7d 58 c1       	vaddpd %ymm9,%ymm0,%ymm0
    17bb:	c4 01 7d 28 5c 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm11
  for (unsigned long long i = 0; i < n; i += 4)
    17c2:	48 ff c1             	inc    %rcx
      d[0] += a[i] * b[i];
    17c5:	c4 01 25 59 14 0c    	vmulpd (%r12,%r9,1),%ymm11,%ymm10
    17cb:	49 83 c1 20          	add    $0x20,%r9
    17cf:	c4 c1 7d 58 c2       	vaddpd %ymm10,%ymm0,%ymm0
    17d4:	c4 01 7d 28 64 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm12
  for (unsigned long long i = 0; i < n; i += 4)
    17db:	48 ff c1             	inc    %rcx
      d[0] += a[i] * b[i];
    17de:	c4 01 1d 59 2c 0c    	vmulpd (%r12,%r9,1),%ymm12,%ymm13
    17e4:	49 83 c1 20          	add    $0x20,%r9
    17e8:	c4 c1 7d 58 c5       	vaddpd %ymm13,%ymm0,%ymm0
  for (unsigned long long i = 0; i < n; i += 4)
    17ed:	4c 39 f1             	cmp    %r14,%rcx
    17f0:	0f 83 bf 00 00 00    	jae    18b5 <main+0x835>
      d[0] += a[i] * b[i];
    17f6:	c4 01 7d 28 74 0d 00 	vmovapd 0x0(%r13,%r9,1),%ymm14
    17fd:	c4 81 7d 28 4c 0d 20 	vmovapd 0x20(%r13,%r9,1),%ymm1
    1804:	c4 01 0d 59 3c 0c    	vmulpd (%r12,%r9,1),%ymm14,%ymm15
    180a:	c4 81 75 59 5c 0c 20 	vmulpd 0x20(%r12,%r9,1),%ymm1,%ymm3
    1811:	c4 81 7d 28 64 0d 40 	vmovapd 0x40(%r13,%r9,1),%ymm4
    1818:	c4 01 7d 28 5c 0d 60 	vmovapd 0x60(%r13,%r9,1),%ymm11
    181f:	c4 01 5d 59 44 0c 40 	vmulpd 0x40(%r12,%r9,1),%ymm4,%ymm8
    1826:	c4 c1 7d 58 ef       	vaddpd %ymm15,%ymm0,%ymm5
    182b:	c4 01 25 59 54 0c 60 	vmulpd 0x60(%r12,%r9,1),%ymm11,%ymm10
    1832:	c4 01 7d 28 ac 0d 80 	vmovapd 0x80(%r13,%r9,1),%ymm13
    1839:	00 00 00 
    183c:	c5 d5 58 fb          	vaddpd %ymm3,%ymm5,%ymm7
    1840:	c4 81 15 59 84 0c 80 	vmulpd 0x80(%r12,%r9,1),%ymm13,%ymm0
    1847:	00 00 00 
    184a:	c4 01 7d 28 bc 0d a0 	vmovapd 0xa0(%r13,%r9,1),%ymm15
    1851:	00 00 00 
    1854:	c4 41 45 58 c8       	vaddpd %ymm8,%ymm7,%ymm9
    1859:	c4 81 05 59 ac 0c a0 	vmulpd 0xa0(%r12,%r9,1),%ymm15,%ymm5
    1860:	00 00 00 
    1863:	c4 81 7d 28 8c 0d c0 	vmovapd 0xc0(%r13,%r9,1),%ymm1
    186a:	00 00 00 
    186d:	c4 41 35 58 e2       	vaddpd %ymm10,%ymm9,%ymm12
    1872:	c4 81 75 59 bc 0c c0 	vmulpd 0xc0(%r12,%r9,1),%ymm1,%ymm7
    1879:	00 00 00 
    187c:	c4 81 7d 28 a4 0d e0 	vmovapd 0xe0(%r13,%r9,1),%ymm4
    1883:	00 00 00 
    1886:	c5 1d 58 f0          	vaddpd %ymm0,%ymm12,%ymm14
    188a:	c4 01 5d 59 8c 0c e0 	vmulpd 0xe0(%r12,%r9,1),%ymm4,%ymm9
    1891:	00 00 00 
  for (unsigned long long i = 0; i < n; i += 4)
    1894:	48 83 c1 08          	add    $0x8,%rcx
      d[0] += a[i] * b[i];
    1898:	c5 8d 58 dd          	vaddpd %ymm5,%ymm14,%ymm3
      d[3] += a[i + 3] * b[i + 3];
    189c:	49 81 c1 00 01 00 00 	add    $0x100,%r9
      d[0] += a[i] * b[i];
    18a3:	c5 65 58 c7          	vaddpd %ymm7,%ymm3,%ymm8
    18a7:	c4 c1 3d 58 c1       	vaddpd %ymm9,%ymm8,%ymm0
  for (unsigned long long i = 0; i < n; i += 4)
    18ac:	4c 39 f1             	cmp    %r14,%rcx
    18af:	0f 82 41 ff ff ff    	jb     17f6 <main+0x776>
    18b5:	c4 c3 7d 19 c4 01    	vextractf128 $0x1,%ymm0,%xmm12
    18bb:	c5 79 7c d0          	vhaddpd %xmm0,%xmm0,%xmm10
    18bf:	c4 41 19 7c ec       	vhaddpd %xmm12,%xmm12,%xmm13
  if (! test)
    18c4:	4d 85 c0             	test   %r8,%r8
    18c7:	0f 84 f3 0a 00 00    	je     23c0 <main+0x1340>
  return d[0] + d[1] + d[2] + d[3];
    18cd:	c4 41 2b 58 f5       	vaddsd %xmm13,%xmm10,%xmm14
  unsigned long long test = n % 8;
    18d2:	49 89 db             	mov    %rbx,%r11
    18d5:	41 83 e3 07          	and    $0x7,%r11d
  for (unsigned long long i = 0; i < n; i += 8)
    18d9:	49 89 d6             	mov    %rdx,%r14
    18dc:	49 c1 ee 03          	shr    $0x3,%r14
    18e0:	49 ff c6             	inc    %r14
    18e3:	b8 01 00 00 00       	mov    $0x1,%eax
    18e8:	48 85 db             	test   %rbx,%rbx
    18eb:	4c 0f 44 f0          	cmove  %rax,%r14
      d[0] += a[i] * b[i];
    18ef:	c4 41 7d 28 4d 00    	vmovapd 0x0(%r13),%ymm9
    18f5:	c4 41 7d 28 5d 20    	vmovapd 0x20(%r13),%ymm11
    18fb:	49 8d 76 ff          	lea    -0x1(%r14),%rsi
    18ff:	bf 01 00 00 00       	mov    $0x1,%edi
    1904:	c4 c1 35 59 04 24    	vmulpd (%r12),%ymm9,%ymm0
    190a:	c4 c1 25 59 7c 24 20 	vmulpd 0x20(%r12),%ymm11,%ymm7
    1911:	83 e6 07             	and    $0x7,%esi
  for (unsigned long long i = 0; i < n; i += 8)
    1914:	b9 40 00 00 00       	mov    $0x40,%ecx
    1919:	4c 39 f7             	cmp    %r14,%rdi
    191c:	0f 83 cd 02 00 00    	jae    1bef <main+0xb6f>
    1922:	48 85 f6             	test   %rsi,%rsi
    1925:	0f 84 40 01 00 00    	je     1a6b <main+0x9eb>
    192b:	48 83 fe 01          	cmp    $0x1,%rsi
    192f:	0f 84 02 01 00 00    	je     1a37 <main+0x9b7>
    1935:	48 83 fe 02          	cmp    $0x2,%rsi
    1939:	0f 84 cc 00 00 00    	je     1a0b <main+0x98b>
    193f:	48 83 fe 03          	cmp    $0x3,%rsi
    1943:	0f 84 98 00 00 00    	je     19e1 <main+0x961>
    1949:	48 83 fe 04          	cmp    $0x4,%rsi
    194d:	74 67                	je     19b6 <main+0x936>
    194f:	48 83 fe 05          	cmp    $0x5,%rsi
    1953:	74 35                	je     198a <main+0x90a>
    1955:	48 83 fe 06          	cmp    $0x6,%rsi
    1959:	0f 85 e1 0a 00 00    	jne    2440 <main+0x13c0>
      d[0] += a[i] * b[i];
    195f:	c4 c1 7d 28 6c 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm5
    1966:	c4 c1 7d 28 5c 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm3
    196d:	c4 c1 55 59 0c 0c    	vmulpd (%r12,%rcx,1),%ymm5,%ymm1
    1973:	c4 41 65 59 44 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm3,%ymm8
    197a:	48 ff c7             	inc    %rdi
    197d:	48 83 c1 40          	add    $0x40,%rcx
    1981:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    1985:	c4 c1 45 58 f8       	vaddpd %ymm8,%ymm7,%ymm7
    198a:	c4 c1 7d 28 64 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm4
    1991:	c4 41 7d 28 5c 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm11
    1998:	c4 41 5d 59 0c 0c    	vmulpd (%r12,%rcx,1),%ymm4,%ymm9
    199e:	c4 41 25 59 54 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm11,%ymm10
    19a5:	48 ff c7             	inc    %rdi
    19a8:	48 83 c1 40          	add    $0x40,%rcx
    19ac:	c4 c1 7d 58 c1       	vaddpd %ymm9,%ymm0,%ymm0
    19b1:	c4 c1 45 58 fa       	vaddpd %ymm10,%ymm7,%ymm7
    19b6:	c4 41 7d 28 64 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm12
    19bd:	c4 41 7d 28 7c 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm15
    19c4:	c4 41 1d 59 2c 0c    	vmulpd (%r12,%rcx,1),%ymm12,%ymm13
    19ca:	c4 c1 05 59 6c 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm15,%ymm5
    19d1:	48 ff c7             	inc    %rdi
    19d4:	48 83 c1 40          	add    $0x40,%rcx
    19d8:	c4 c1 7d 58 c5       	vaddpd %ymm13,%ymm0,%ymm0
    19dd:	c5 c5 58 fd          	vaddpd %ymm5,%ymm7,%ymm7
    19e1:	c4 c1 7d 28 4c 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm1
    19e8:	c4 41 7d 28 44 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm8
    19ef:	c4 c1 75 59 1c 0c    	vmulpd (%r12,%rcx,1),%ymm1,%ymm3
    19f5:	c4 c1 3d 59 64 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm8,%ymm4
    19fc:	48 ff c7             	inc    %rdi
    19ff:	48 83 c1 40          	add    $0x40,%rcx
    1a03:	c5 fd 58 c3          	vaddpd %ymm3,%ymm0,%ymm0
    1a07:	c5 c5 58 fc          	vaddpd %ymm4,%ymm7,%ymm7
    1a0b:	c4 41 7d 28 4c 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm9
    1a12:	c4 41 7d 28 54 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm10
    1a19:	c4 41 35 59 1c 0c    	vmulpd (%r12,%rcx,1),%ymm9,%ymm11
    1a1f:	c4 41 2d 59 64 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm10,%ymm12
    1a26:	48 ff c7             	inc    %rdi
    1a29:	48 83 c1 40          	add    $0x40,%rcx
    1a2d:	c4 c1 7d 58 c3       	vaddpd %ymm11,%ymm0,%ymm0
    1a32:	c4 c1 45 58 fc       	vaddpd %ymm12,%ymm7,%ymm7
    1a37:	c4 41 7d 28 6c 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm13
    1a3e:	c4 c1 7d 28 6c 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm5
    1a45:	c4 41 15 59 3c 0c    	vmulpd (%r12,%rcx,1),%ymm13,%ymm15
    1a4b:	c4 c1 55 59 4c 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm5,%ymm1
    1a52:	48 ff c7             	inc    %rdi
    1a55:	48 83 c1 40          	add    $0x40,%rcx
    1a59:	c4 c1 7d 58 c7       	vaddpd %ymm15,%ymm0,%ymm0
    1a5e:	c5 c5 58 f9          	vaddpd %ymm1,%ymm7,%ymm7
  for (unsigned long long i = 0; i < n; i += 8)
    1a62:	4c 39 f7             	cmp    %r14,%rdi
    1a65:	0f 83 84 01 00 00    	jae    1bef <main+0xb6f>
      d[0] += a[i] * b[i];
    1a6b:	c4 c1 7d 28 5c 0d 00 	vmovapd 0x0(%r13,%rcx,1),%ymm3
    1a72:	c4 41 7d 28 4c 0d 20 	vmovapd 0x20(%r13,%rcx,1),%ymm9
    1a79:	c4 41 65 59 04 0c    	vmulpd (%r12,%rcx,1),%ymm3,%ymm8
    1a7f:	c4 41 35 59 5c 0c 20 	vmulpd 0x20(%r12,%rcx,1),%ymm9,%ymm11
    1a86:	c4 41 7d 28 64 0d 40 	vmovapd 0x40(%r13,%rcx,1),%ymm12
    1a8d:	48 83 c7 08          	add    $0x8,%rdi
    1a91:	c4 41 1d 59 6c 0c 40 	vmulpd 0x40(%r12,%rcx,1),%ymm12,%ymm13
    1a98:	c4 c1 7d 58 e0       	vaddpd %ymm8,%ymm0,%ymm4
    1a9d:	c4 41 45 58 d3       	vaddpd %ymm11,%ymm7,%ymm10
    1aa2:	c4 c1 7d 28 44 0d 60 	vmovapd 0x60(%r13,%rcx,1),%ymm0
    1aa9:	c4 c1 7d 28 bc 0d 80 	vmovapd 0x80(%r13,%rcx,1),%ymm7
    1ab0:	00 00 00 
    1ab3:	c4 c1 7d 59 6c 0c 60 	vmulpd 0x60(%r12,%rcx,1),%ymm0,%ymm5
    1aba:	c4 c1 45 59 9c 0c 80 	vmulpd 0x80(%r12,%rcx,1),%ymm7,%ymm3
    1ac1:	00 00 00 
    1ac4:	c4 41 5d 58 fd       	vaddpd %ymm13,%ymm4,%ymm15
    1ac9:	c4 c1 7d 28 a4 0d a0 	vmovapd 0xa0(%r13,%rcx,1),%ymm4
    1ad0:	00 00 00 
    1ad3:	c4 41 5d 59 8c 0c a0 	vmulpd 0xa0(%r12,%rcx,1),%ymm4,%ymm9
    1ada:	00 00 00 
    1add:	c5 ad 58 cd          	vaddpd %ymm5,%ymm10,%ymm1
    1ae1:	c5 05 58 c3          	vaddpd %ymm3,%ymm15,%ymm8
    1ae5:	c4 41 7d 28 94 0d c0 	vmovapd 0xc0(%r13,%rcx,1),%ymm10
    1aec:	00 00 00 
    1aef:	c4 41 7d 28 bc 0d e0 	vmovapd 0xe0(%r13,%rcx,1),%ymm15
    1af6:	00 00 00 
    1af9:	c4 41 2d 59 a4 0c c0 	vmulpd 0xc0(%r12,%rcx,1),%ymm10,%ymm12
    1b00:	00 00 00 
    1b03:	c4 c1 05 59 84 0c e0 	vmulpd 0xe0(%r12,%rcx,1),%ymm15,%ymm0
    1b0a:	00 00 00 
    1b0d:	c4 c1 7d 28 ac 0d 00 	vmovapd 0x100(%r13,%rcx,1),%ymm5
    1b14:	01 00 00 
    1b17:	c4 41 75 58 d9       	vaddpd %ymm9,%ymm1,%ymm11
    1b1c:	c4 c1 55 59 bc 0c 00 	vmulpd 0x100(%r12,%rcx,1),%ymm5,%ymm7
    1b23:	01 00 00 
    1b26:	c4 41 3d 58 ec       	vaddpd %ymm12,%ymm8,%ymm13
    1b2b:	c5 a5 58 c8          	vaddpd %ymm0,%ymm11,%ymm1
    1b2f:	c4 c1 7d 28 9c 0d 20 	vmovapd 0x120(%r13,%rcx,1),%ymm3
    1b36:	01 00 00 
    1b39:	c4 41 7d 28 9c 0d 40 	vmovapd 0x140(%r13,%rcx,1),%ymm11
    1b40:	01 00 00 
    1b43:	c4 c1 65 59 a4 0c 20 	vmulpd 0x120(%r12,%rcx,1),%ymm3,%ymm4
    1b4a:	01 00 00 
    1b4d:	c4 41 25 59 94 0c 40 	vmulpd 0x140(%r12,%rcx,1),%ymm11,%ymm10
    1b54:	01 00 00 
    1b57:	c5 15 58 c7          	vaddpd %ymm7,%ymm13,%ymm8
    1b5b:	c4 41 7d 28 ac 0d 60 	vmovapd 0x160(%r13,%rcx,1),%ymm13
    1b62:	01 00 00 
    1b65:	c4 c1 7d 28 84 0d 80 	vmovapd 0x180(%r13,%rcx,1),%ymm0
    1b6c:	01 00 00 
    1b6f:	c4 41 15 59 bc 0c 60 	vmulpd 0x160(%r12,%rcx,1),%ymm13,%ymm15
    1b76:	01 00 00 
    1b79:	c4 41 3d 58 e2       	vaddpd %ymm10,%ymm8,%ymm12
    1b7e:	c4 c1 7d 59 ac 0c 80 	vmulpd 0x180(%r12,%rcx,1),%ymm0,%ymm5
    1b85:	01 00 00 
    1b88:	c5 75 58 cc          	vaddpd %ymm4,%ymm1,%ymm9
    1b8c:	c4 41 7d 28 84 0d a0 	vmovapd 0x1a0(%r13,%rcx,1),%ymm8
    1b93:	01 00 00 
    1b96:	c4 41 7d 28 94 0d e0 	vmovapd 0x1e0(%r13,%rcx,1),%ymm10
    1b9d:	01 00 00 
    1ba0:	c4 c1 3d 59 9c 0c a0 	vmulpd 0x1a0(%r12,%rcx,1),%ymm8,%ymm3
    1ba7:	01 00 00 
    1baa:	c4 c1 35 58 cf       	vaddpd %ymm15,%ymm9,%ymm1
    1baf:	c4 41 7d 28 8c 0d c0 	vmovapd 0x1c0(%r13,%rcx,1),%ymm9
    1bb6:	01 00 00 
    1bb9:	c5 9d 58 fd          	vaddpd %ymm5,%ymm12,%ymm7
    1bbd:	c4 41 35 59 9c 0c c0 	vmulpd 0x1c0(%r12,%rcx,1),%ymm9,%ymm11
    1bc4:	01 00 00 
    1bc7:	c4 41 2d 59 a4 0c e0 	vmulpd 0x1e0(%r12,%rcx,1),%ymm10,%ymm12
    1bce:	01 00 00 
    1bd1:	c5 f5 58 e3          	vaddpd %ymm3,%ymm1,%ymm4
      d[7] += a[i + 7] * b[i + 7];
    1bd5:	48 81 c1 00 02 00 00 	add    $0x200,%rcx
      d[0] += a[i] * b[i];
    1bdc:	c4 c1 45 58 c3       	vaddpd %ymm11,%ymm7,%ymm0
    1be1:	c4 c1 5d 58 fc       	vaddpd %ymm12,%ymm4,%ymm7
  for (unsigned long long i = 0; i < n; i += 8)
    1be6:	4c 39 f7             	cmp    %r14,%rdi
    1be9:	0f 82 7c fe ff ff    	jb     1a6b <main+0x9eb>
    1bef:	c4 e3 7d 19 c1 01    	vextractf128 $0x1,%ymm0,%xmm1
    1bf5:	c4 c3 7d 19 fb 01    	vextractf128 $0x1,%ymm7,%xmm11
    1bfb:	c5 79 28 e8          	vmovapd %xmm0,%xmm13
    1bff:	c5 79 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm8
    1c03:	c5 f3 10 e1          	vmovsd %xmm1,%xmm1,%xmm4
    1c07:	c5 f1 15 c1          	vunpckhpd %xmm1,%xmm1,%xmm0
    1c0b:	c5 41 15 cf          	vunpckhpd %xmm7,%xmm7,%xmm9
    1c0f:	c4 41 21 15 d3       	vunpckhpd %xmm11,%xmm11,%xmm10
  if (! test)
    1c14:	c4 c1 2b 58 cb       	vaddsd %xmm11,%xmm10,%xmm1
    1c19:	c5 b3 58 ef          	vaddsd %xmm7,%xmm9,%xmm5
    1c1d:	c4 c1 3b 58 dd       	vaddsd %xmm13,%xmm8,%xmm3
    1c22:	c5 fb 58 c4          	vaddsd %xmm4,%xmm0,%xmm0
    1c26:	4d 85 db             	test   %r11,%r11
    1c29:	0f 84 0b 07 00 00    	je     233a <main+0x12ba>
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    1c2f:	c5 63 58 e8          	vaddsd %xmm0,%xmm3,%xmm13
    1c33:	c5 53 58 f9          	vaddsd %xmm1,%xmm5,%xmm15
  unsigned long long test = n % 16;
    1c37:	48 89 de             	mov    %rbx,%rsi
    1c3a:	83 e6 0f             	and    $0xf,%esi
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    1c3d:	c4 41 13 58 c7       	vaddsd %xmm15,%xmm13,%xmm8
    1c42:	c4 41 f9 7e c6       	vmovq  %xmm8,%r14
  for (unsigned long long i = 0; i < n; i += 16)
    1c47:	48 85 db             	test   %rbx,%rbx
    1c4a:	0f 84 45 08 00 00    	je     2495 <main+0x1415>
    1c50:	48 8d 53 ff          	lea    -0x1(%rbx),%rdx
    1c54:	48 c1 ea 04          	shr    $0x4,%rdx
    1c58:	4c 8d 5a 01          	lea    0x1(%rdx),%r11
    1c5c:	48 85 db             	test   %rbx,%rbx
    1c5f:	ba 01 00 00 00       	mov    $0x1,%edx
    1c64:	4c 0f 44 da          	cmove  %rdx,%r11
      d[0] += a[i] * b[i];
    1c68:	c4 41 7d 28 55 20    	vmovapd 0x20(%r13),%ymm10
    1c6e:	c4 c1 7d 28 7d 00    	vmovapd 0x0(%r13),%ymm7
    1c74:	c4 41 7d 28 6d 40    	vmovapd 0x40(%r13),%ymm13
    1c7a:	c4 41 7d 28 7d 60    	vmovapd 0x60(%r13),%ymm15
    1c80:	4d 8d 53 ff          	lea    -0x1(%r11),%r10
    1c84:	c4 41 2d 59 4c 24 20 	vmulpd 0x20(%r12),%ymm10,%ymm9
    1c8b:	c4 41 45 59 04 24    	vmulpd (%r12),%ymm7,%ymm8
    1c91:	c4 41 15 59 54 24 40 	vmulpd 0x40(%r12),%ymm13,%ymm10
    1c98:	c4 41 05 59 5c 24 60 	vmulpd 0x60(%r12),%ymm15,%ymm11
    1c9f:	41 83 e2 03          	and    $0x3,%r10d
  for (unsigned long long i = 0; i < n; i += 16)
    1ca3:	bf 01 00 00 00       	mov    $0x1,%edi
    1ca8:	49 8d 8d 80 00 00 00 	lea    0x80(%r13),%rcx
    1caf:	49 8d 84 24 80 00 00 	lea    0x80(%r12),%rax
    1cb6:	00 
    1cb7:	49 83 fb 01          	cmp    $0x1,%r11
    1cbb:	0f 86 2e 02 00 00    	jbe    1eef <main+0xe6f>
    1cc1:	4d 85 d2             	test   %r10,%r10
    1cc4:	0f 84 e9 00 00 00    	je     1db3 <main+0xd33>
    1cca:	49 83 fa 01          	cmp    $0x1,%r10
    1cce:	0f 84 93 00 00 00    	je     1d67 <main+0xce7>
    1cd4:	49 83 fa 02          	cmp    $0x2,%r10
    1cd8:	74 4c                	je     1d26 <main+0xca6>
      d[0] += a[i] * b[i];
    1cda:	c5 fd 28 19          	vmovapd (%rcx),%ymm3
    1cde:	c5 fd 28 49 20       	vmovapd 0x20(%rcx),%ymm1
    1ce3:	c5 fd 28 69 40       	vmovapd 0x40(%rcx),%ymm5
    1ce8:	c5 fd 28 79 60       	vmovapd 0x60(%rcx),%ymm7
    1ced:	c5 e5 59 20          	vmulpd (%rax),%ymm3,%ymm4
    1cf1:	c5 f5 59 40 20       	vmulpd 0x20(%rax),%ymm1,%ymm0
    1cf6:	c5 55 59 60 40       	vmulpd 0x40(%rax),%ymm5,%ymm12
    1cfb:	c5 45 59 68 60       	vmulpd 0x60(%rax),%ymm7,%ymm13
    1d00:	bf 02 00 00 00       	mov    $0x2,%edi
    1d05:	c5 3d 58 c4          	vaddpd %ymm4,%ymm8,%ymm8
    1d09:	c5 35 58 c8          	vaddpd %ymm0,%ymm9,%ymm9
    1d0d:	c4 41 2d 58 d4       	vaddpd %ymm12,%ymm10,%ymm10
    1d12:	c4 41 25 58 dd       	vaddpd %ymm13,%ymm11,%ymm11
  for (unsigned long long i = 0; i < n; i += 16)
    1d17:	49 8d 8d 00 01 00 00 	lea    0x100(%r13),%rcx
    1d1e:	49 8d 84 24 00 01 00 	lea    0x100(%r12),%rax
    1d25:	00 
      d[0] += a[i] * b[i];
    1d26:	c5 7d 28 39          	vmovapd (%rcx),%ymm15
    1d2a:	c5 fd 28 61 20       	vmovapd 0x20(%rcx),%ymm4
    1d2f:	c5 fd 28 41 40       	vmovapd 0x40(%rcx),%ymm0
    1d34:	c5 7d 28 61 60       	vmovapd 0x60(%rcx),%ymm12
    1d39:	c5 85 59 18          	vmulpd (%rax),%ymm15,%ymm3
    1d3d:	c5 dd 59 48 20       	vmulpd 0x20(%rax),%ymm4,%ymm1
    1d42:	c5 fd 59 68 40       	vmulpd 0x40(%rax),%ymm0,%ymm5
    1d47:	c5 9d 59 78 60       	vmulpd 0x60(%rax),%ymm12,%ymm7
    1d4c:	48 ff c7             	inc    %rdi
    1d4f:	c5 3d 58 c3          	vaddpd %ymm3,%ymm8,%ymm8
    1d53:	c5 35 58 c9          	vaddpd %ymm1,%ymm9,%ymm9
    1d57:	c5 2d 58 d5          	vaddpd %ymm5,%ymm10,%ymm10
    1d5b:	c5 25 58 df          	vaddpd %ymm7,%ymm11,%ymm11
  for (unsigned long long i = 0; i < n; i += 16)
    1d5f:	48 83 e9 80          	sub    $0xffffffffffffff80,%rcx
    1d63:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
      d[0] += a[i] * b[i];
    1d67:	c5 7d 28 29          	vmovapd (%rcx),%ymm13
    1d6b:	c5 fd 28 59 20       	vmovapd 0x20(%rcx),%ymm3
    1d70:	c5 fd 28 49 40       	vmovapd 0x40(%rcx),%ymm1
    1d75:	c5 fd 28 69 60       	vmovapd 0x60(%rcx),%ymm5
    1d7a:	c5 15 59 38          	vmulpd (%rax),%ymm13,%ymm15
    1d7e:	c5 e5 59 60 20       	vmulpd 0x20(%rax),%ymm3,%ymm4
    1d83:	c5 f5 59 40 40       	vmulpd 0x40(%rax),%ymm1,%ymm0
    1d88:	c5 55 59 60 60       	vmulpd 0x60(%rax),%ymm5,%ymm12
    1d8d:	48 ff c7             	inc    %rdi
    1d90:	c4 41 3d 58 c7       	vaddpd %ymm15,%ymm8,%ymm8
    1d95:	c5 35 58 cc          	vaddpd %ymm4,%ymm9,%ymm9
    1d99:	c5 2d 58 d0          	vaddpd %ymm0,%ymm10,%ymm10
    1d9d:	c4 41 25 58 dc       	vaddpd %ymm12,%ymm11,%ymm11
  for (unsigned long long i = 0; i < n; i += 16)
    1da2:	48 83 e9 80          	sub    $0xffffffffffffff80,%rcx
    1da6:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
    1daa:	49 39 fb             	cmp    %rdi,%r11
    1dad:	0f 86 3c 01 00 00    	jbe    1eef <main+0xe6f>
      d[0] += a[i] * b[i];
    1db3:	c5 fd 28 41 60       	vmovapd 0x60(%rcx),%ymm0
    1db8:	c5 fd 28 39          	vmovapd (%rcx),%ymm7
    1dbc:	c5 fd 59 68 60       	vmulpd 0x60(%rax),%ymm0,%ymm5
    1dc1:	c5 45 59 28          	vmulpd (%rax),%ymm7,%ymm13
    1dc5:	48 83 c7 04          	add    $0x4,%rdi
    1dc9:	48 81 c1 00 02 00 00 	add    $0x200,%rcx
    1dd0:	48 05 00 02 00 00    	add    $0x200,%rax
    1dd6:	c5 25 58 e5          	vaddpd %ymm5,%ymm11,%ymm12
    1dda:	c5 7d 28 99 80 fe ff 	vmovapd -0x180(%rcx),%ymm11
    1de1:	ff 
    1de2:	c4 41 3d 58 fd       	vaddpd %ymm13,%ymm8,%ymm15
    1de7:	c5 a5 59 b8 80 fe ff 	vmulpd -0x180(%rax),%ymm11,%ymm7
    1dee:	ff 
    1def:	c5 7d 28 81 20 fe ff 	vmovapd -0x1e0(%rcx),%ymm8
    1df6:	ff 
    1df7:	c5 fd 28 a9 00 ff ff 	vmovapd -0x100(%rcx),%ymm5
    1dfe:	ff 
    1dff:	c5 bd 59 98 20 fe ff 	vmulpd -0x1e0(%rax),%ymm8,%ymm3
    1e06:	ff 
    1e07:	c5 55 59 98 00 ff ff 	vmulpd -0x100(%rax),%ymm5,%ymm11
    1e0e:	ff 
    1e0f:	c5 05 58 ef          	vaddpd %ymm7,%ymm15,%ymm13
    1e13:	c5 7d 28 b9 a0 fe ff 	vmovapd -0x160(%rcx),%ymm15
    1e1a:	ff 
    1e1b:	c5 fd 28 b9 20 ff ff 	vmovapd -0xe0(%rcx),%ymm7
    1e22:	ff 
    1e23:	c5 05 59 80 a0 fe ff 	vmulpd -0x160(%rax),%ymm15,%ymm8
    1e2a:	ff 
    1e2b:	c5 b5 58 e3          	vaddpd %ymm3,%ymm9,%ymm4
    1e2f:	c5 7d 28 89 40 fe ff 	vmovapd -0x1c0(%rcx),%ymm9
    1e36:	ff 
    1e37:	c5 45 59 b8 20 ff ff 	vmulpd -0xe0(%rax),%ymm7,%ymm15
    1e3e:	ff 
    1e3f:	c5 b5 59 88 40 fe ff 	vmulpd -0x1c0(%rax),%ymm9,%ymm1
    1e46:	ff 
    1e47:	c4 c1 5d 58 d8       	vaddpd %ymm8,%ymm4,%ymm3
    1e4c:	c5 fd 28 a1 c0 fe ff 	vmovapd -0x140(%rcx),%ymm4
    1e53:	ff 
    1e54:	c4 41 15 58 eb       	vaddpd %ymm11,%ymm13,%ymm13
    1e59:	c5 5d 59 88 c0 fe ff 	vmulpd -0x140(%rax),%ymm4,%ymm9
    1e60:	ff 
    1e61:	c5 2d 58 d1          	vaddpd %ymm1,%ymm10,%ymm10
    1e65:	c5 7d 28 81 40 ff ff 	vmovapd -0xc0(%rcx),%ymm8
    1e6c:	ff 
    1e6d:	c5 7d 28 59 a0       	vmovapd -0x60(%rcx),%ymm11
    1e72:	c5 bd 59 a0 40 ff ff 	vmulpd -0xc0(%rax),%ymm8,%ymm4
    1e79:	ff 
    1e7a:	c4 c1 2d 58 c9       	vaddpd %ymm9,%ymm10,%ymm1
    1e7f:	c5 7d 28 91 e0 fe ff 	vmovapd -0x120(%rcx),%ymm10
    1e86:	ff 
    1e87:	c5 7d 28 89 60 ff ff 	vmovapd -0xa0(%rcx),%ymm9
    1e8e:	ff 
    1e8f:	c5 ad 59 80 e0 fe ff 	vmulpd -0x120(%rax),%ymm10,%ymm0
    1e96:	ff 
    1e97:	c5 35 59 90 60 ff ff 	vmulpd -0xa0(%rax),%ymm9,%ymm10
    1e9e:	ff 
    1e9f:	c4 c1 65 58 df       	vaddpd %ymm15,%ymm3,%ymm3
    1ea4:	c5 fd 28 79 c0       	vmovapd -0x40(%rcx),%ymm7
    1ea9:	c5 f5 58 cc          	vaddpd %ymm4,%ymm1,%ymm1
    1ead:	c5 1d 58 e0          	vaddpd %ymm0,%ymm12,%ymm12
    1eb1:	c5 45 59 78 c0       	vmulpd -0x40(%rax),%ymm7,%ymm15
    1eb6:	c4 c1 1d 58 c2       	vaddpd %ymm10,%ymm12,%ymm0
    1ebb:	c5 7d 28 61 80       	vmovapd -0x80(%rcx),%ymm12
    1ec0:	c5 9d 59 68 80       	vmulpd -0x80(%rax),%ymm12,%ymm5
    1ec5:	c4 41 75 58 d7       	vaddpd %ymm15,%ymm1,%ymm10
    1eca:	c5 15 58 c5          	vaddpd %ymm5,%ymm13,%ymm8
    1ece:	c5 25 59 68 a0       	vmulpd -0x60(%rax),%ymm11,%ymm13
    1ed3:	c4 41 65 58 cd       	vaddpd %ymm13,%ymm3,%ymm9
    1ed8:	c5 fd 28 59 e0       	vmovapd -0x20(%rcx),%ymm3
    1edd:	c5 e5 59 60 e0       	vmulpd -0x20(%rax),%ymm3,%ymm4
    1ee2:	c5 7d 58 dc          	vaddpd %ymm4,%ymm0,%ymm11
  for (unsigned long long i = 0; i < n; i += 16)
    1ee6:	49 39 fb             	cmp    %rdi,%r11
    1ee9:	0f 87 c4 fe ff ff    	ja     1db3 <main+0xd33>
    1eef:	c4 41 f9 7e c7       	vmovq  %xmm8,%r15
    1ef4:	c5 79 17 45 b0       	vmovhpd %xmm8,-0x50(%rbp)
    1ef9:	c5 79 13 4d 98       	vmovlpd %xmm9,-0x68(%rbp)
    1efe:	c4 43 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm8
    1f04:	c5 79 17 4d 90       	vmovhpd %xmm9,-0x70(%rbp)
    1f09:	c5 79 13 95 78 ff ff 	vmovlpd %xmm10,-0x88(%rbp)
    1f10:	ff 
    1f11:	c4 43 7d 19 c9 01    	vextractf128 $0x1,%ymm9,%xmm9
    1f17:	c5 79 17 95 70 ff ff 	vmovhpd %xmm10,-0x90(%rbp)
    1f1e:	ff 
    1f1f:	c5 79 13 9d 58 ff ff 	vmovlpd %xmm11,-0xa8(%rbp)
    1f26:	ff 
    1f27:	c4 43 7d 19 d2 01    	vextractf128 $0x1,%ymm10,%xmm10
    1f2d:	c5 79 17 9d 50 ff ff 	vmovhpd %xmm11,-0xb0(%rbp)
    1f34:	ff 
    1f35:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
    1f3b:	c5 79 13 45 a8       	vmovlpd %xmm8,-0x58(%rbp)
    1f40:	c5 79 17 45 a0       	vmovhpd %xmm8,-0x60(%rbp)
    1f45:	c5 79 13 4d 88       	vmovlpd %xmm9,-0x78(%rbp)
    1f4a:	c5 79 17 4d 80       	vmovhpd %xmm9,-0x80(%rbp)
    1f4f:	c5 79 13 95 68 ff ff 	vmovlpd %xmm10,-0x98(%rbp)
    1f56:	ff 
    1f57:	c5 79 17 95 60 ff ff 	vmovhpd %xmm10,-0xa0(%rbp)
    1f5e:	ff 
    1f5f:	c5 79 13 9d 48 ff ff 	vmovlpd %xmm11,-0xb8(%rbp)
    1f66:	ff 
    1f67:	c4 c1 21 15 cb       	vunpckhpd %xmm11,%xmm11,%xmm1
  if (! test)
    1f6c:	48 85 f6             	test   %rsi,%rsi
    1f6f:	0f 84 2b 03 00 00    	je     22a0 <main+0x1220>
  double res_4x = dotprod_4x(a, b, n);
  double res_8x = dotprod_8x(a, b, n);
  double res_16x = dotprod_16x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    1f75:	c5 cb 10 c6          	vmovsd %xmm6,%xmm6,%xmm0
    1f79:	48 8d 3d 84 10 00 00 	lea    0x1084(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    1f80:	b8 01 00 00 00       	mov    $0x1,%eax
    1f85:	c5 fb 11 4d b8       	vmovsd %xmm1,-0x48(%rbp)
    1f8a:	c5 fb 11 55 c0       	vmovsd %xmm2,-0x40(%rbp)
    1f8f:	c5 7b 11 75 c8       	vmovsd %xmm14,-0x38(%rbp)
    1f94:	c5 f8 77             	vzeroupper 
    1f97:	e8 a4 f0 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    1f9c:	c5 fb 10 45 c0       	vmovsd -0x40(%rbp),%xmm0
    1fa1:	48 8d 3d 67 10 00 00 	lea    0x1067(%rip),%rdi        # 300f <_IO_stdin_used+0xf>
    1fa8:	b8 01 00 00 00       	mov    $0x1,%eax
    1fad:	e8 8e f0 ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1fb2:	c5 fb 10 45 c8       	vmovsd -0x38(%rbp),%xmm0
    1fb7:	48 8d 3d 5f 10 00 00 	lea    0x105f(%rip),%rdi        # 301d <_IO_stdin_used+0x1d>
    1fbe:	b8 01 00 00 00       	mov    $0x1,%eax
    1fc3:	e8 78 f0 ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    1fc8:	c4 c1 f9 6e c6       	vmovq  %r14,%xmm0
    1fcd:	48 8d 3d 57 10 00 00 	lea    0x1057(%rip),%rdi        # 302b <_IO_stdin_used+0x2b>
    1fd4:	b8 01 00 00 00       	mov    $0x1,%eax
    1fd9:	e8 62 f0 ff ff       	callq  1040 <printf@plt>
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    1fde:	c5 7b 10 7d 88       	vmovsd -0x78(%rbp),%xmm15
    1fe3:	c5 fb 10 55 a8       	vmovsd -0x58(%rbp),%xmm2
    1fe8:	c5 7b 10 5d 98       	vmovsd -0x68(%rbp),%xmm11
    1fed:	c4 c1 f9 6e f7       	vmovq  %r15,%xmm6
    1ff2:	c5 a3 58 7d 90       	vaddsd -0x70(%rbp),%xmm11,%xmm7
    1ff7:	c5 4b 58 75 b0       	vaddsd -0x50(%rbp),%xmm6,%xmm14
    1ffc:	c5 eb 58 4d a0       	vaddsd -0x60(%rbp),%xmm2,%xmm1
    2001:	c5 83 58 5d 80       	vaddsd -0x80(%rbp),%xmm15,%xmm3
    2006:	c5 7b 10 a5 78 ff ff 	vmovsd -0x88(%rbp),%xmm12
    200d:	ff 
    200e:	c5 7b 10 95 68 ff ff 	vmovsd -0x98(%rbp),%xmm10
    2015:	ff 
    2016:	c5 1b 58 8d 70 ff ff 	vaddsd -0x90(%rbp),%xmm12,%xmm9
    201d:	ff 
    201e:	c5 2b 58 ad 60 ff ff 	vaddsd -0xa0(%rbp),%xmm10,%xmm13
    2025:	ff 
    2026:	c5 8b 58 e9          	vaddsd %xmm1,%xmm14,%xmm5
    202a:	c5 c3 58 e3          	vaddsd %xmm3,%xmm7,%xmm4
    202e:	c5 fb 10 b5 58 ff ff 	vmovsd -0xa8(%rbp),%xmm6
    2035:	ff 
    2036:	c5 fb 10 4d b8       	vmovsd -0x48(%rbp),%xmm1
    203b:	c5 53 58 c4          	vaddsd %xmm4,%xmm5,%xmm8
    203f:	c4 c1 33 58 c5       	vaddsd %xmm13,%xmm9,%xmm0
    2044:	c5 cb 58 95 50 ff ff 	vaddsd -0xb0(%rbp),%xmm6,%xmm2
    204b:	ff 
    204c:	c5 f3 58 ad 48 ff ff 	vaddsd -0xb8(%rbp),%xmm1,%xmm5
    2053:	ff 
    2054:	c5 3b 58 f0          	vaddsd %xmm0,%xmm8,%xmm14
  printf("res_16x = %lf\n", res_16x);
    2058:	48 8d 3d da 0f 00 00 	lea    0xfda(%rip),%rdi        # 3039 <_IO_stdin_used+0x39>
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    205f:	c5 6b 58 dd          	vaddsd %xmm5,%xmm2,%xmm11
  printf("res_16x = %lf\n", res_16x);
    2063:	b8 01 00 00 00       	mov    $0x1,%eax
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    2068:	c4 c1 0b 58 c3       	vaddsd %xmm11,%xmm14,%xmm0
  printf("res_16x = %lf\n", res_16x);
    206d:	e8 ce ef ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    2072:	4c 89 e7             	mov    %r12,%rdi
    2075:	e8 b6 ef ff ff       	callq  1030 <free@plt>
  free(b);
    207a:	4c 89 ef             	mov    %r13,%rdi
    207d:	e8 ae ef ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    2082:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
    2089:	5b                   	pop    %rbx
    208a:	41 5b                	pop    %r11
    208c:	41 5c                	pop    %r12
    208e:	41 5d                	pop    %r13
    2090:	41 5e                	pop    %r14
    2092:	41 5f                	pop    %r15
    2094:	31 c0                	xor    %eax,%eax
    2096:	5d                   	pop    %rbp
    2097:	49 8d 63 f8          	lea    -0x8(%r11),%rsp
    209b:	c3                   	retq   
  if (n & 1)
    209c:	f6 c3 01             	test   $0x1,%bl
    209f:	0f 85 26 f4 ff ff    	jne    14cb <main+0x44b>
    20a5:	49 89 d2             	mov    %rdx,%r10
    20a8:	49 d1 ea             	shr    %r10
    20ab:	49 ff c2             	inc    %r10
    20ae:	48 83 fa 01          	cmp    $0x1,%rdx
    20b2:	0f 86 e9 04 00 00    	jbe    25a1 <main+0x1521>
    20b8:	4c 89 d6             	mov    %r10,%rsi
    20bb:	48 d1 ee             	shr    %rsi
    20be:	48 c1 e6 05          	shl    $0x5,%rsi
    20c2:	48 8d 4e e0          	lea    -0x20(%rsi),%rcx
    20c6:	48 c1 e9 05          	shr    $0x5,%rcx
    20ca:	48 ff c1             	inc    %rcx
  double d[2] = {0.0};
    20cd:	31 ff                	xor    %edi,%edi
    20cf:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    20d3:	83 e1 07             	and    $0x7,%ecx
    20d6:	0f 84 b6 00 00 00    	je     2192 <main+0x1112>
    20dc:	48 83 f9 01          	cmp    $0x1,%rcx
    20e0:	0f 84 8e 00 00 00    	je     2174 <main+0x10f4>
    20e6:	48 83 f9 02          	cmp    $0x2,%rcx
    20ea:	74 73                	je     215f <main+0x10df>
    20ec:	48 83 f9 03          	cmp    $0x3,%rcx
    20f0:	74 58                	je     214a <main+0x10ca>
    20f2:	48 83 f9 04          	cmp    $0x4,%rcx
    20f6:	74 3c                	je     2134 <main+0x10b4>
    20f8:	48 83 f9 05          	cmp    $0x5,%rcx
    20fc:	74 20                	je     211e <main+0x109e>
    20fe:	48 83 f9 06          	cmp    $0x6,%rcx
    2102:	0f 85 71 04 00 00    	jne    2579 <main+0x14f9>
	  d[0] += a[i] * b[i];
    2108:	c4 41 7d 28 54 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm10
    210f:	c4 41 2d 59 1c 3c    	vmulpd (%r12,%rdi,1),%ymm10,%ymm11
    2115:	48 83 c7 20          	add    $0x20,%rdi
    2119:	c4 c1 7d 58 c3       	vaddpd %ymm11,%ymm0,%ymm0
    211e:	c4 41 7d 28 64 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm12
    2125:	c4 41 1d 59 2c 3c    	vmulpd (%r12,%rdi,1),%ymm12,%ymm13
    212b:	48 83 c7 20          	add    $0x20,%rdi
    212f:	c4 c1 7d 58 c5       	vaddpd %ymm13,%ymm0,%ymm0
    2134:	c4 41 7d 28 74 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm14
    213b:	c4 41 0d 59 3c 3c    	vmulpd (%r12,%rdi,1),%ymm14,%ymm15
    2141:	48 83 c7 20          	add    $0x20,%rdi
    2145:	c4 c1 7d 58 c7       	vaddpd %ymm15,%ymm0,%ymm0
    214a:	c4 c1 7d 28 6c 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm5
    2151:	c4 c1 55 59 0c 3c    	vmulpd (%r12,%rdi,1),%ymm5,%ymm1
    2157:	48 83 c7 20          	add    $0x20,%rdi
    215b:	c5 fd 58 c1          	vaddpd %ymm1,%ymm0,%ymm0
    215f:	c4 c1 7d 28 5c 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm3
    2166:	c4 c1 65 59 14 3c    	vmulpd (%r12,%rdi,1),%ymm3,%ymm2
    216c:	48 83 c7 20          	add    $0x20,%rdi
    2170:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
    2174:	c4 c1 7d 28 64 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm4
    217b:	c4 c1 5d 59 3c 3c    	vmulpd (%r12,%rdi,1),%ymm4,%ymm7
    2181:	48 83 c7 20          	add    $0x20,%rdi
    2185:	c5 fd 58 c7          	vaddpd %ymm7,%ymm0,%ymm0
      for (unsigned long long i = 0; i < n; i += 2)
    2189:	48 39 fe             	cmp    %rdi,%rsi
    218c:	0f 84 bd 00 00 00    	je     224f <main+0x11cf>
	  d[0] += a[i] * b[i];
    2192:	c4 41 7d 28 44 3d 00 	vmovapd 0x0(%r13,%rdi,1),%ymm8
    2199:	c4 41 7d 28 5c 3d 20 	vmovapd 0x20(%r13,%rdi,1),%ymm11
    21a0:	c4 41 3d 59 0c 3c    	vmulpd (%r12,%rdi,1),%ymm8,%ymm9
    21a6:	c4 41 25 59 64 3c 20 	vmulpd 0x20(%r12,%rdi,1),%ymm11,%ymm12
    21ad:	c4 41 7d 28 74 3d 40 	vmovapd 0x40(%r13,%rdi,1),%ymm14
    21b4:	c4 c1 7d 28 4c 3d 60 	vmovapd 0x60(%r13,%rdi,1),%ymm1
    21bb:	c4 41 0d 59 7c 3c 40 	vmulpd 0x40(%r12,%rdi,1),%ymm14,%ymm15
    21c2:	c4 41 7d 58 d1       	vaddpd %ymm9,%ymm0,%ymm10
    21c7:	c4 c1 75 59 5c 3c 60 	vmulpd 0x60(%r12,%rdi,1),%ymm1,%ymm3
    21ce:	c4 c1 7d 28 94 3d 80 	vmovapd 0x80(%r13,%rdi,1),%ymm2
    21d5:	00 00 00 
    21d8:	c4 41 2d 58 ec       	vaddpd %ymm12,%ymm10,%ymm13
    21dd:	c4 c1 6d 59 bc 3c 80 	vmulpd 0x80(%r12,%rdi,1),%ymm2,%ymm7
    21e4:	00 00 00 
    21e7:	c4 41 7d 28 84 3d a0 	vmovapd 0xa0(%r13,%rdi,1),%ymm8
    21ee:	00 00 00 
    21f1:	c4 c1 15 58 ef       	vaddpd %ymm15,%ymm13,%ymm5
    21f6:	c4 41 3d 59 8c 3c a0 	vmulpd 0xa0(%r12,%rdi,1),%ymm8,%ymm9
    21fd:	00 00 00 
    2200:	c4 41 7d 28 9c 3d c0 	vmovapd 0xc0(%r13,%rdi,1),%ymm11
    2207:	00 00 00 
    220a:	c5 d5 58 e3          	vaddpd %ymm3,%ymm5,%ymm4
    220e:	c4 41 25 59 a4 3c c0 	vmulpd 0xc0(%r12,%rdi,1),%ymm11,%ymm12
    2215:	00 00 00 
    2218:	c4 41 7d 28 b4 3d e0 	vmovapd 0xe0(%r13,%rdi,1),%ymm14
    221f:	00 00 00 
    2222:	c5 dd 58 c7          	vaddpd %ymm7,%ymm4,%ymm0
    2226:	c4 41 0d 59 bc 3c e0 	vmulpd 0xe0(%r12,%rdi,1),%ymm14,%ymm15
    222d:	00 00 00 
    2230:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    2237:	c4 41 7d 58 d1       	vaddpd %ymm9,%ymm0,%ymm10
    223c:	c4 41 2d 58 ec       	vaddpd %ymm12,%ymm10,%ymm13
    2241:	c4 c1 15 58 c7       	vaddpd %ymm15,%ymm13,%ymm0
      for (unsigned long long i = 0; i < n; i += 2)
    2246:	48 39 fe             	cmp    %rdi,%rsi
    2249:	0f 85 43 ff ff ff    	jne    2192 <main+0x1112>
    224f:	c4 e3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm5
    2255:	c5 d1 58 c8          	vaddpd %xmm0,%xmm5,%xmm1
    2259:	4c 89 d0             	mov    %r10,%rax
    225c:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    2260:	41 80 e2 01          	and    $0x1,%r10b
    2264:	c5 73 10 c1          	vmovsd %xmm1,%xmm1,%xmm8
    2268:	c5 f1 15 c1          	vunpckhpd %xmm1,%xmm1,%xmm0
    226c:	74 21                	je     228f <main+0x120f>
    226e:	48 c1 e0 04          	shl    $0x4,%rax
	  d[0] += a[i] * b[i];
    2272:	c4 c1 79 28 5c 05 00 	vmovapd 0x0(%r13,%rax,1),%xmm3
    2279:	c5 b9 14 d0          	vunpcklpd %xmm0,%xmm8,%xmm2
    227d:	c4 c1 61 59 24 04    	vmulpd (%r12,%rax,1),%xmm3,%xmm4
    2283:	c5 d9 58 fa          	vaddpd %xmm2,%xmm4,%xmm7
      for (unsigned long long i = 0; i < n; i += 2)
    2287:	c5 43 10 c7          	vmovsd %xmm7,%xmm7,%xmm8
    228b:	c5 c1 15 c7          	vunpckhpd %xmm7,%xmm7,%xmm0
  unsigned long long test = n % 4;
    228f:	49 89 d8             	mov    %rbx,%r8
      return d[0] + d[1];
    2292:	c4 c1 7b 58 d0       	vaddsd %xmm8,%xmm0,%xmm2
  unsigned long long test = n % 4;
    2297:	41 83 e0 03          	and    $0x3,%r8d
  for (unsigned long long i = 0; i < n; i += 4)
    229b:	e9 48 f4 ff ff       	jmpq   16e8 <main+0x668>
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    22a0:	48 83 c3 f1          	add    $0xfffffffffffffff1,%rbx
    22a4:	0f 83 cb fc ff ff    	jae    1f75 <main+0xef5>
    22aa:	48 c1 e3 03          	shl    $0x3,%rbx
    22ae:	4d 8d 0c 1c          	lea    (%r12,%rbx,1),%r9
    22b2:	4d 8d 44 1d 00       	lea    0x0(%r13,%rbx,1),%r8
	  d[0] += a[i] * b[i];
    22b7:	c4 c1 7d 10 79 20    	vmovupd 0x20(%r9),%ymm7
    22bd:	c4 c1 7d 10 18       	vmovupd (%r8),%ymm3
    22c2:	c4 41 45 59 78 20    	vmulpd 0x20(%r8),%ymm7,%ymm15
    22c8:	c4 c1 65 59 21       	vmulpd (%r9),%ymm3,%ymm4
    22cd:	c4 c1 7d 10 41 40    	vmovupd 0x40(%r9),%ymm0
    22d3:	c4 c1 79 10 7c 1d 60 	vmovupd 0x60(%r13,%rbx,1),%xmm7
    22da:	c4 41 7d 59 60 40    	vmulpd 0x40(%r8),%ymm0,%ymm12
    22e0:	c5 05 58 c4          	vaddpd %ymm4,%ymm15,%ymm8
    22e4:	c4 41 41 59 7c 1c 60 	vmulpd 0x60(%r12,%rbx,1),%xmm7,%xmm15
    22eb:	c4 41 1d 58 c8       	vaddpd %ymm8,%ymm12,%ymm9
    22f0:	c4 41 7b 10 44 1d 70 	vmovsd 0x70(%r13,%rbx,1),%xmm8
    22f7:	c4 41 f9 6e e7       	vmovq  %r15,%xmm12
    22fc:	c4 63 7d 19 cd 01    	vextractf128 $0x1,%ymm9,%xmm5
    2302:	c4 41 51 58 d1       	vaddpd %xmm9,%xmm5,%xmm10
    2307:	c4 c1 3b 59 44 1c 70 	vmulsd 0x70(%r12,%rbx,1),%xmm8,%xmm0
    230e:	c4 c1 01 15 df       	vunpckhpd %xmm15,%xmm15,%xmm3
    2313:	c4 41 29 15 ea       	vunpckhpd %xmm10,%xmm10,%xmm13
    2318:	c4 c1 11 58 ea       	vaddpd %xmm10,%xmm13,%xmm5
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    231d:	c4 c1 61 58 e7       	vaddpd %xmm15,%xmm3,%xmm4
	  d[0] += a[i] * b[i];
    2322:	c4 41 7b 58 cc       	vaddsd %xmm12,%xmm0,%xmm9
    2327:	c5 5b 58 d5          	vaddsd %xmm5,%xmm4,%xmm10
    232b:	c4 41 33 58 ea       	vaddsd %xmm10,%xmm9,%xmm13
    2330:	c4 41 f9 7e ef       	vmovq  %xmm13,%r15
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    2335:	e9 3b fc ff ff       	jmpq   1f75 <main+0xef5>
    233a:	49 89 d9             	mov    %rbx,%r9
    233d:	c5 63 58 e0          	vaddsd %xmm0,%xmm3,%xmm12
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    2341:	49 83 c1 f9          	add    $0xfffffffffffffff9,%r9
    2345:	0f 83 e4 f8 ff ff    	jae    1c2f <main+0xbaf>
	  d[0] += a[i] * b[i];
    234b:	c4 81 7d 10 64 cd 00 	vmovupd 0x0(%r13,%r9,8),%ymm4
    2352:	4e 8d 04 cd 00 00 00 	lea    0x0(,%r9,8),%r8
    2359:	00 
    235a:	c4 81 5d 59 1c cc    	vmulpd (%r12,%r9,8),%ymm4,%ymm3
    2360:	c4 01 79 10 6c 05 20 	vmovupd 0x20(%r13,%r8,1),%xmm13
  unsigned long long test = n % 16;
    2367:	48 89 de             	mov    %rbx,%rsi
	  d[0] += a[i] * b[i];
    236a:	c4 01 11 59 7c 04 20 	vmulpd 0x20(%r12,%r8,1),%xmm13,%xmm15
  unsigned long long test = n % 16;
    2371:	83 e6 0f             	and    $0xf,%esi
    2374:	c4 e3 7d 19 d8 01    	vextractf128 $0x1,%ymm3,%xmm0
    237a:	c5 79 58 cb          	vaddpd %xmm3,%xmm0,%xmm9
    237e:	c4 41 01 15 c7       	vunpckhpd %xmm15,%xmm15,%xmm8
    2383:	c4 41 31 15 d9       	vunpckhpd %xmm9,%xmm9,%xmm11
    2388:	c4 c1 21 58 f9       	vaddpd %xmm9,%xmm11,%xmm7
    238d:	c4 c1 39 58 df       	vaddpd %xmm15,%xmm8,%xmm3
    2392:	c5 73 58 d7          	vaddsd %xmm7,%xmm1,%xmm10
	  d[0] += a[i] * b[i];
    2396:	c4 81 7b 10 4c 05 30 	vmovsd 0x30(%r13,%r8,1),%xmm1
    239d:	c4 81 73 59 44 04 30 	vmulsd 0x30(%r12,%r8,1),%xmm1,%xmm0
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    23a4:	c5 fb 58 ed          	vaddsd %xmm5,%xmm0,%xmm5
    23a8:	c4 41 53 58 e4       	vaddsd %xmm12,%xmm5,%xmm12
    23ad:	c4 41 1b 58 ca       	vaddsd %xmm10,%xmm12,%xmm9
    23b2:	c5 33 58 db          	vaddsd %xmm3,%xmm9,%xmm11
    23b6:	c4 41 f9 7e de       	vmovq  %xmm11,%r14
  for (unsigned long long i = 0; i < n; i += 16)
    23bb:	e9 94 f8 ff ff       	jmpq   1c54 <main+0xbd4>
    23c0:	49 89 df             	mov    %rbx,%r15
    23c3:	45 31 d2             	xor    %r10d,%r10d
    23c6:	49 83 c7 fd          	add    $0xfffffffffffffffd,%r15
    23ca:	41 0f 92 c2          	setb   %r10b
  unsigned long long test = n % 8;
    23ce:	49 89 db             	mov    %rbx,%r11
    23d1:	c4 41 2b 58 f5       	vaddsd %xmm13,%xmm10,%xmm14
    23d6:	41 83 e3 07          	and    $0x7,%r11d
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    23da:	4d 85 d2             	test   %r10,%r10
    23dd:	0f 84 f6 f4 ff ff    	je     18d9 <main+0x859>
	  d[0] += a[i] * b[i];
    23e3:	c4 81 79 10 44 fd 00 	vmovupd 0x0(%r13,%r15,8),%xmm0
    23ea:	c4 81 7b 10 7c fd 10 	vmovsd 0x10(%r13,%r15,8),%xmm7
    23f1:	c4 01 79 59 3c fc    	vmulpd (%r12,%r15,8),%xmm0,%xmm15
    23f7:	c4 01 43 59 44 fc 10 	vmulsd 0x10(%r12,%r15,8),%xmm7,%xmm8
    23fe:	c4 c1 01 15 ef       	vunpckhpd %xmm15,%xmm15,%xmm5
    2403:	c4 c1 51 58 cf       	vaddpd %xmm15,%xmm5,%xmm1
  return d[0] + d[1] + d[2] + d[3];
    2408:	c5 bb 58 e1          	vaddsd %xmm1,%xmm8,%xmm4
    240c:	c5 0b 58 f4          	vaddsd %xmm4,%xmm14,%xmm14
  for (unsigned long long i = 0; i < n; i += 8)
    2410:	e9 c4 f4 ff ff       	jmpq   18d9 <main+0x859>
      a[i] = 0.1;
    2415:	c4 c1 7d 29 14 24    	vmovapd %ymm2,(%r12)
      b[i] = 1.0;
    241b:	c5 fd 29 20          	vmovapd %ymm4,(%rax)
  for (unsigned long long i = 0; i < n; i++)
    241f:	bf 20 00 00 00       	mov    $0x20,%edi
    2424:	e9 2e ed ff ff       	jmpq   1157 <main+0xd7>
    d += a[i] * b[i];
    2429:	c4 41 7d 28 55 00    	vmovapd 0x0(%r13),%ymm10
    242f:	41 bf 20 00 00 00    	mov    $0x20,%r15d
    2435:	c4 c1 2d 59 04 24    	vmulpd (%r12),%ymm10,%ymm0
  for (unsigned long long i = 0; i < n; ++i)
    243b:	e9 cd ee ff ff       	jmpq   130d <main+0x28d>
      d[0] += a[i] * b[i];
    2440:	c4 41 7d 28 55 40    	vmovapd 0x40(%r13),%ymm10
    2446:	c4 41 7d 28 6d 60    	vmovapd 0x60(%r13),%ymm13
    244c:	c4 41 2d 59 64 24 40 	vmulpd 0x40(%r12),%ymm10,%ymm12
    2453:	c4 41 15 59 7c 24 60 	vmulpd 0x60(%r12),%ymm13,%ymm15
    245a:	bf 02 00 00 00       	mov    $0x2,%edi
    245f:	b9 80 00 00 00       	mov    $0x80,%ecx
    2464:	c4 c1 7d 58 c4       	vaddpd %ymm12,%ymm0,%ymm0
    2469:	c4 c1 45 58 ff       	vaddpd %ymm15,%ymm7,%ymm7
  for (unsigned long long i = 0; i < n; i += 8)
    246e:	e9 ec f4 ff ff       	jmpq   195f <main+0x8df>
      d[0] += a[i] * b[i];
    2473:	c4 41 7d 28 6d 20    	vmovapd 0x20(%r13),%ymm13
  for (unsigned long long i = 0; i < n; i += 4)
    2479:	b9 02 00 00 00       	mov    $0x2,%ecx
      d[0] += a[i] * b[i];
    247e:	c4 41 15 59 74 24 20 	vmulpd 0x20(%r12),%ymm13,%ymm14
    2485:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    248b:	c4 c1 7d 58 c6       	vaddpd %ymm14,%ymm0,%ymm0
  for (unsigned long long i = 0; i < n; i += 4)
    2490:	e9 c5 f2 ff ff       	jmpq   175a <main+0x6da>
  double d[16] = {0.0};
    2495:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    2499:	c5 fb 11 8d 48 ff ff 	vmovsd %xmm1,-0xb8(%rbp)
    24a0:	ff 
    24a1:	c5 fb 11 8d 50 ff ff 	vmovsd %xmm1,-0xb0(%rbp)
    24a8:	ff 
    24a9:	c5 fb 11 8d 58 ff ff 	vmovsd %xmm1,-0xa8(%rbp)
    24b0:	ff 
    24b1:	c5 fb 11 8d 60 ff ff 	vmovsd %xmm1,-0xa0(%rbp)
    24b8:	ff 
    24b9:	c5 fb 11 8d 68 ff ff 	vmovsd %xmm1,-0x98(%rbp)
    24c0:	ff 
    24c1:	c5 fb 11 8d 70 ff ff 	vmovsd %xmm1,-0x90(%rbp)
    24c8:	ff 
    24c9:	c5 fb 11 8d 78 ff ff 	vmovsd %xmm1,-0x88(%rbp)
    24d0:	ff 
    24d1:	c5 fb 11 4d 80       	vmovsd %xmm1,-0x80(%rbp)
    24d6:	c5 fb 11 4d 88       	vmovsd %xmm1,-0x78(%rbp)
    24db:	c5 fb 11 4d 90       	vmovsd %xmm1,-0x70(%rbp)
    24e0:	c5 fb 11 4d 98       	vmovsd %xmm1,-0x68(%rbp)
    24e5:	c5 fb 11 4d a0       	vmovsd %xmm1,-0x60(%rbp)
    24ea:	c5 fb 11 4d a8       	vmovsd %xmm1,-0x58(%rbp)
    24ef:	c5 fb 11 4d b0       	vmovsd %xmm1,-0x50(%rbp)
    24f4:	c4 c1 f9 7e cf       	vmovq  %xmm1,%r15
    24f9:	e9 77 fa ff ff       	jmpq   1f75 <main+0xef5>
  double d[8] = {0.0};
    24fe:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
  for (unsigned long long i = 0; i < n; i++)
    2502:	c5 6b 10 f2          	vmovsd %xmm2,%xmm2,%xmm14
    2506:	c5 eb 10 f2          	vmovsd %xmm2,%xmm2,%xmm6
    250a:	c5 eb 10 ca          	vmovsd %xmm2,%xmm2,%xmm1
    250e:	c5 eb 10 ea          	vmovsd %xmm2,%xmm2,%xmm5
    2512:	c5 eb 10 da          	vmovsd %xmm2,%xmm2,%xmm3
    2516:	c5 eb 10 c2          	vmovsd %xmm2,%xmm2,%xmm0
    251a:	e9 10 f7 ff ff       	jmpq   1c2f <main+0xbaf>
      a[i] = 0.1;
    251f:	c5 fb 10 3d 79 0b 00 	vmovsd 0xb79(%rip),%xmm7        # 30a0 <_IO_stdin_used+0xa0>
    2526:	00 
      b[i] = 1.0;
    2527:	c5 7b 10 05 79 0b 00 	vmovsd 0xb79(%rip),%xmm8        # 30a8 <_IO_stdin_used+0xa8>
    252e:	00 
      a[i] = 0.1;
    252f:	c4 c1 7b 11 3c 24    	vmovsd %xmm7,(%r12)
      b[i] = 1.0;
    2535:	c5 7b 11 00          	vmovsd %xmm8,(%rax)
  for (unsigned long long i = 0; i < n; i++)
    2539:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    253f:	48 83 fb 01          	cmp    $0x1,%rbx
    2543:	0f 85 45 ed ff ff    	jne    128e <main+0x20e>
    2549:	c5 c9 57 f6          	vxorpd %xmm6,%xmm6,%xmm6
    254d:	31 c0                	xor    %eax,%eax
    254f:	e9 21 ef ff ff       	jmpq   1475 <main+0x3f5>
    d += a[i] * b[i];
    2554:	c4 41 7b 10 0c 24    	vmovsd (%r12),%xmm9
  for (unsigned long long i = 0; i < n; ++i)
    255a:	b8 01 00 00 00       	mov    $0x1,%eax
    d += a[i] * b[i];
    255f:	c4 c1 33 59 75 00    	vmulsd 0x0(%r13),%xmm9,%xmm6
  for (unsigned long long i = 0; i < n; ++i)
    2565:	e9 24 ef ff ff       	jmpq   148e <main+0x40e>
  double d[2] = {0.0};
    256a:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
    256f:	c4 41 33 10 d1       	vmovsd %xmm9,%xmm9,%xmm10
    2574:	e9 50 f1 ff ff       	jmpq   16c9 <main+0x649>
	  d[0] += a[i] * b[i];
    2579:	c4 41 7d 28 4d 00    	vmovapd 0x0(%r13),%ymm9
    257f:	bf 20 00 00 00       	mov    $0x20,%edi
    2584:	c4 c1 35 59 04 24    	vmulpd (%r12),%ymm9,%ymm0
      for (unsigned long long i = 0; i < n; i += 2)
    258a:	e9 79 fb ff ff       	jmpq   2108 <main+0x1088>
  double d[2] = {0.0};
    258f:	c4 41 31 57 c9       	vxorpd %xmm9,%xmm9,%xmm9
  for (unsigned long long i = 0; i < n; ++i)
    2594:	45 31 db             	xor    %r11d,%r11d
  double d[2] = {0.0};
    2597:	c4 41 33 10 d1       	vmovsd %xmm9,%xmm9,%xmm10
    259c:	e9 03 f1 ff ff       	jmpq   16a4 <main+0x624>
    25a1:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    25a5:	31 c0                	xor    %eax,%eax
    25a7:	c5 7b 10 c0          	vmovsd %xmm0,%xmm0,%xmm8
    25ab:	e9 be fc ff ff       	jmpq   226e <main+0x11ee>
    exit(ARGS);
    25b0:	bf 01 00 00 00       	mov    $0x1,%edi
    25b5:	e8 a6 ea ff ff       	callq  1060 <exit@plt>
    25ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000025c0 <set_fast_math>:
    25c0:	f3 0f 1e fa          	endbr64 
    25c4:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    25c9:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    25d0:	00 
    25d1:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    25d6:	c3                   	retq   
    25d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    25de:	00 00 

00000000000025e0 <_start>:
    25e0:	f3 0f 1e fa          	endbr64 
    25e4:	31 ed                	xor    %ebp,%ebp
    25e6:	49 89 d1             	mov    %rdx,%r9
    25e9:	5e                   	pop    %rsi
    25ea:	48 89 e2             	mov    %rsp,%rdx
    25ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    25f1:	50                   	push   %rax
    25f2:	54                   	push   %rsp
    25f3:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 2750 <__libc_csu_fini>
    25fa:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 26e0 <__libc_csu_init>
    2601:	48 8d 3d 78 ea ff ff 	lea    -0x1588(%rip),%rdi        # 1080 <main>
    2608:	ff 15 d2 29 00 00    	callq  *0x29d2(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    260e:	f4                   	hlt    
    260f:	90                   	nop

0000000000002610 <deregister_tm_clones>:
    2610:	48 8d 3d 39 2a 00 00 	lea    0x2a39(%rip),%rdi        # 5050 <__TMC_END__>
    2617:	48 8d 05 32 2a 00 00 	lea    0x2a32(%rip),%rax        # 5050 <__TMC_END__>
    261e:	48 39 f8             	cmp    %rdi,%rax
    2621:	74 15                	je     2638 <deregister_tm_clones+0x28>
    2623:	48 8b 05 ae 29 00 00 	mov    0x29ae(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    262a:	48 85 c0             	test   %rax,%rax
    262d:	74 09                	je     2638 <deregister_tm_clones+0x28>
    262f:	ff e0                	jmpq   *%rax
    2631:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2638:	c3                   	retq   
    2639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002640 <register_tm_clones>:
    2640:	48 8d 3d 09 2a 00 00 	lea    0x2a09(%rip),%rdi        # 5050 <__TMC_END__>
    2647:	48 8d 35 02 2a 00 00 	lea    0x2a02(%rip),%rsi        # 5050 <__TMC_END__>
    264e:	48 29 fe             	sub    %rdi,%rsi
    2651:	48 89 f0             	mov    %rsi,%rax
    2654:	48 c1 ee 3f          	shr    $0x3f,%rsi
    2658:	48 c1 f8 03          	sar    $0x3,%rax
    265c:	48 01 c6             	add    %rax,%rsi
    265f:	48 d1 fe             	sar    %rsi
    2662:	74 14                	je     2678 <register_tm_clones+0x38>
    2664:	48 8b 05 85 29 00 00 	mov    0x2985(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    266b:	48 85 c0             	test   %rax,%rax
    266e:	74 08                	je     2678 <register_tm_clones+0x38>
    2670:	ff e0                	jmpq   *%rax
    2672:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2678:	c3                   	retq   
    2679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000002680 <__do_global_dtors_aux>:
    2680:	f3 0f 1e fa          	endbr64 
    2684:	80 3d c5 29 00 00 00 	cmpb   $0x0,0x29c5(%rip)        # 5050 <__TMC_END__>
    268b:	75 33                	jne    26c0 <__do_global_dtors_aux+0x40>
    268d:	55                   	push   %rbp
    268e:	48 83 3d 62 29 00 00 	cmpq   $0x0,0x2962(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    2695:	00 
    2696:	48 89 e5             	mov    %rsp,%rbp
    2699:	74 0d                	je     26a8 <__do_global_dtors_aux+0x28>
    269b:	48 8b 3d a6 29 00 00 	mov    0x29a6(%rip),%rdi        # 5048 <__dso_handle>
    26a2:	ff 15 50 29 00 00    	callq  *0x2950(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    26a8:	e8 63 ff ff ff       	callq  2610 <deregister_tm_clones>
    26ad:	c6 05 9c 29 00 00 01 	movb   $0x1,0x299c(%rip)        # 5050 <__TMC_END__>
    26b4:	5d                   	pop    %rbp
    26b5:	c3                   	retq   
    26b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    26bd:	00 00 00 
    26c0:	c3                   	retq   
    26c1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    26c8:	00 00 00 00 
    26cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000026d0 <frame_dummy>:
    26d0:	f3 0f 1e fa          	endbr64 
    26d4:	e9 67 ff ff ff       	jmpq   2640 <register_tm_clones>
    26d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000026e0 <__libc_csu_init>:
    26e0:	f3 0f 1e fa          	endbr64 
    26e4:	41 57                	push   %r15
    26e6:	4c 8d 3d f3 26 00 00 	lea    0x26f3(%rip),%r15        # 4de0 <__frame_dummy_init_array_entry>
    26ed:	41 56                	push   %r14
    26ef:	49 89 d6             	mov    %rdx,%r14
    26f2:	41 55                	push   %r13
    26f4:	49 89 f5             	mov    %rsi,%r13
    26f7:	41 54                	push   %r12
    26f9:	41 89 fc             	mov    %edi,%r12d
    26fc:	55                   	push   %rbp
    26fd:	48 8d 2d ec 26 00 00 	lea    0x26ec(%rip),%rbp        # 4df0 <__do_global_dtors_aux_fini_array_entry>
    2704:	53                   	push   %rbx
    2705:	4c 29 fd             	sub    %r15,%rbp
    2708:	48 83 ec 08          	sub    $0x8,%rsp
    270c:	e8 ef e8 ff ff       	callq  1000 <_init>
    2711:	48 c1 fd 03          	sar    $0x3,%rbp
    2715:	74 1f                	je     2736 <__libc_csu_init+0x56>
    2717:	31 db                	xor    %ebx,%ebx
    2719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2720:	4c 89 f2             	mov    %r14,%rdx
    2723:	4c 89 ee             	mov    %r13,%rsi
    2726:	44 89 e7             	mov    %r12d,%edi
    2729:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    272d:	48 83 c3 01          	add    $0x1,%rbx
    2731:	48 39 dd             	cmp    %rbx,%rbp
    2734:	75 ea                	jne    2720 <__libc_csu_init+0x40>
    2736:	48 83 c4 08          	add    $0x8,%rsp
    273a:	5b                   	pop    %rbx
    273b:	5d                   	pop    %rbp
    273c:	41 5c                	pop    %r12
    273e:	41 5d                	pop    %r13
    2740:	41 5e                	pop    %r14
    2742:	41 5f                	pop    %r15
    2744:	c3                   	retq   
    2745:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    274c:	00 00 00 00 

0000000000002750 <__libc_csu_fini>:
    2750:	f3 0f 1e fa          	endbr64 
    2754:	c3                   	retq   

Déassemblage de la section .fini :

0000000000002758 <_fini>:
    2758:	f3 0f 1e fa          	endbr64 
    275c:	48 83 ec 08          	sub    $0x8,%rsp
    2760:	48 83 c4 08          	add    $0x8,%rsp
    2764:	c3                   	retq   
