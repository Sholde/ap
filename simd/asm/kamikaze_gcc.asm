
kamikaze_gcc:     format de fichier elf64-x86-64


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
    1080:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    1085:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1089:	41 ff 72 f8          	pushq  -0x8(%r10)
    108d:	55                   	push   %rbp
    108e:	48 89 e5             	mov    %rsp,%rbp
    1091:	41 56                	push   %r14
    1093:	41 55                	push   %r13
    1095:	41 54                	push   %r12
    1097:	41 52                	push   %r10
    1099:	53                   	push   %rbx
    109a:	48 83 ec 28          	sub    $0x28,%rsp
  if (argc != 2)
    109e:	83 ff 02             	cmp    $0x2,%edi
    10a1:	0f 85 2c 07 00 00    	jne    17d3 <main+0x753>
  return strtoll(argv[1], NULL, 10);
    10a7:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    10ab:	ba 0a 00 00 00       	mov    $0xa,%edx
    10b0:	31 f6                	xor    %esi,%esi
    10b2:	e8 99 ff ff ff       	callq  1050 <strtoll@plt>
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    10b7:	4c 8d 34 c5 00 00 00 	lea    0x0(,%rax,8),%r14
    10be:	00 
    10bf:	4c 89 f6             	mov    %r14,%rsi
    10c2:	bf 40 00 00 00       	mov    $0x40,%edi
  return strtoll(argv[1], NULL, 10);
    10c7:	48 89 c3             	mov    %rax,%rbx
  double *a = aligned_alloc(64, n * sizeof(double));
    10ca:	e8 a1 ff ff ff       	callq  1070 <aligned_alloc@plt>
  double *b = aligned_alloc(64, n * sizeof(double));
    10cf:	4c 89 f6             	mov    %r14,%rsi
    10d2:	bf 40 00 00 00       	mov    $0x40,%edi
  double *a = aligned_alloc(64, n * sizeof(double));
    10d7:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    10da:	e8 91 ff ff ff       	callq  1070 <aligned_alloc@plt>
    10df:	49 89 c5             	mov    %rax,%r13
  for (unsigned long long i = 0; i < n; i++)
    10e2:	48 85 db             	test   %rbx,%rbx
    10e5:	0f 84 7d 06 00 00    	je     1768 <main+0x6e8>
    10eb:	48 8d 4b ff          	lea    -0x1(%rbx),%rcx
    10ef:	48 83 f9 02          	cmp    $0x2,%rcx
    10f3:	0f 86 80 06 00 00    	jbe    1779 <main+0x6f9>
    10f9:	48 89 de             	mov    %rbx,%rsi
    10fc:	48 c1 ee 02          	shr    $0x2,%rsi
    1100:	48 c1 e6 05          	shl    $0x5,%rsi
    1104:	48 8d 56 e0          	lea    -0x20(%rsi),%rdx
    1108:	48 c1 ea 05          	shr    $0x5,%rdx
    110c:	48 ff c2             	inc    %rdx
    110f:	c5 fd 28 0d 09 0f 00 	vmovapd 0xf09(%rip),%ymm1        # 2020 <_IO_stdin_used+0x20>
    1116:	00 
    1117:	c5 fd 28 05 21 0f 00 	vmovapd 0xf21(%rip),%ymm0        # 2040 <_IO_stdin_used+0x40>
    111e:	00 
    111f:	31 ff                	xor    %edi,%edi
    1121:	83 e2 07             	and    $0x7,%edx
    1124:	0f 84 97 00 00 00    	je     11c1 <main+0x141>
    112a:	48 83 fa 01          	cmp    $0x1,%rdx
    112e:	74 77                	je     11a7 <main+0x127>
    1130:	48 83 fa 02          	cmp    $0x2,%rdx
    1134:	74 60                	je     1196 <main+0x116>
    1136:	48 83 fa 03          	cmp    $0x3,%rdx
    113a:	74 49                	je     1185 <main+0x105>
    113c:	48 83 fa 04          	cmp    $0x4,%rdx
    1140:	74 32                	je     1174 <main+0xf4>
    1142:	48 83 fa 05          	cmp    $0x5,%rdx
    1146:	74 1b                	je     1163 <main+0xe3>
    1148:	48 83 fa 06          	cmp    $0x6,%rdx
    114c:	0f 85 d4 05 00 00    	jne    1726 <main+0x6a6>
      a[i] = 0.1;
    1152:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    1158:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    115f:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1163:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    1169:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1170:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1174:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    117a:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1181:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1185:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    118b:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1192:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1196:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    119c:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    11a3:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    11a7:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    11ad:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    11b4:	48 83 c7 20          	add    $0x20,%rdi
    11b8:	48 39 f7             	cmp    %rsi,%rdi
    11bb:	0f 84 97 00 00 00    	je     1258 <main+0x1d8>
      a[i] = 0.1;
    11c1:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    11c7:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
      a[i] = 0.1;
    11ce:	c4 c1 7d 29 4c 3c 20 	vmovapd %ymm1,0x20(%r12,%rdi,1)
      b[i] = 0.001;
    11d5:	c4 c1 7d 29 44 3d 20 	vmovapd %ymm0,0x20(%r13,%rdi,1)
      a[i] = 0.1;
    11dc:	c4 c1 7d 29 4c 3c 40 	vmovapd %ymm1,0x40(%r12,%rdi,1)
      b[i] = 0.001;
    11e3:	c4 c1 7d 29 44 3d 40 	vmovapd %ymm0,0x40(%r13,%rdi,1)
      a[i] = 0.1;
    11ea:	c4 c1 7d 29 4c 3c 60 	vmovapd %ymm1,0x60(%r12,%rdi,1)
      b[i] = 0.001;
    11f1:	c4 c1 7d 29 44 3d 60 	vmovapd %ymm0,0x60(%r13,%rdi,1)
      a[i] = 0.1;
    11f8:	c4 c1 7d 29 8c 3c 80 	vmovapd %ymm1,0x80(%r12,%rdi,1)
    11ff:	00 00 00 
      b[i] = 0.001;
    1202:	c4 c1 7d 29 84 3d 80 	vmovapd %ymm0,0x80(%r13,%rdi,1)
    1209:	00 00 00 
      a[i] = 0.1;
    120c:	c4 c1 7d 29 8c 3c a0 	vmovapd %ymm1,0xa0(%r12,%rdi,1)
    1213:	00 00 00 
      b[i] = 0.001;
    1216:	c4 c1 7d 29 84 3d a0 	vmovapd %ymm0,0xa0(%r13,%rdi,1)
    121d:	00 00 00 
      a[i] = 0.1;
    1220:	c4 c1 7d 29 8c 3c c0 	vmovapd %ymm1,0xc0(%r12,%rdi,1)
    1227:	00 00 00 
      b[i] = 0.001;
    122a:	c4 c1 7d 29 84 3d c0 	vmovapd %ymm0,0xc0(%r13,%rdi,1)
    1231:	00 00 00 
      a[i] = 0.1;
    1234:	c4 c1 7d 29 8c 3c e0 	vmovapd %ymm1,0xe0(%r12,%rdi,1)
    123b:	00 00 00 
      b[i] = 0.001;
    123e:	c4 c1 7d 29 84 3d e0 	vmovapd %ymm0,0xe0(%r13,%rdi,1)
    1245:	00 00 00 
  for (unsigned long long i = 0; i < n; i++)
    1248:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    124f:	48 39 f7             	cmp    %rsi,%rdi
    1252:	0f 85 69 ff ff ff    	jne    11c1 <main+0x141>
    1258:	49 89 d8             	mov    %rbx,%r8
    125b:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
    125f:	f6 c3 03             	test   $0x3,%bl
    1262:	74 51                	je     12b5 <main+0x235>
      a[i] = 0.1;
    1264:	c5 fb 10 15 f4 0d 00 	vmovsd 0xdf4(%rip),%xmm2        # 2060 <_IO_stdin_used+0x60>
    126b:	00 
      b[i] = 0.001;
    126c:	c5 fb 10 1d f4 0d 00 	vmovsd 0xdf4(%rip),%xmm3        # 2068 <_IO_stdin_used+0x68>
    1273:	00 
      a[i] = 0.1;
    1274:	c4 81 7b 11 14 c4    	vmovsd %xmm2,(%r12,%r8,8)
      b[i] = 0.001;
    127a:	c4 81 7b 11 5c c5 00 	vmovsd %xmm3,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    1281:	49 ff c0             	inc    %r8
    1284:	4c 39 c3             	cmp    %r8,%rbx
    1287:	76 2c                	jbe    12b5 <main+0x235>
      a[i] = 0.1;
    1289:	c4 81 7b 11 14 c4    	vmovsd %xmm2,(%r12,%r8,8)
      b[i] = 0.001;
    128f:	c4 81 7b 11 5c c5 00 	vmovsd %xmm3,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    1296:	49 ff c0             	inc    %r8
    1299:	4c 39 c3             	cmp    %r8,%rbx
    129c:	76 0d                	jbe    12ab <main+0x22b>
      a[i] = 0.1;
    129e:	c4 81 7b 11 14 c4    	vmovsd %xmm2,(%r12,%r8,8)
      b[i] = 0.001;
    12a4:	c4 81 7b 11 5c c5 00 	vmovsd %xmm3,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    12ab:	48 83 f9 02          	cmp    $0x2,%rcx
    12af:	0f 86 08 05 00 00    	jbe    17bd <main+0x73d>
    12b5:	49 89 d9             	mov    %rbx,%r9
    12b8:	49 c1 e9 02          	shr    $0x2,%r9
    12bc:	49 c1 e1 05          	shl    $0x5,%r9
    12c0:	4d 8d 59 e0          	lea    -0x20(%r9),%r11
    12c4:	49 c1 eb 05          	shr    $0x5,%r11
    12c8:	49 ff c3             	inc    %r11
    12cb:	45 31 d2             	xor    %r10d,%r10d
    12ce:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    12d2:	41 83 e3 07          	and    $0x7,%r11d
    12d6:	0f 84 b7 00 00 00    	je     1393 <main+0x313>
    12dc:	49 83 fb 01          	cmp    $0x1,%r11
    12e0:	0f 84 8f 00 00 00    	je     1375 <main+0x2f5>
    12e6:	49 83 fb 02          	cmp    $0x2,%r11
    12ea:	74 73                	je     135f <main+0x2df>
    12ec:	49 83 fb 03          	cmp    $0x3,%r11
    12f0:	74 57                	je     1349 <main+0x2c9>
    12f2:	49 83 fb 04          	cmp    $0x4,%r11
    12f6:	74 3b                	je     1333 <main+0x2b3>
    12f8:	49 83 fb 05          	cmp    $0x5,%r11
    12fc:	74 1f                	je     131d <main+0x29d>
    12fe:	49 83 fb 06          	cmp    $0x6,%r11
    1302:	0f 85 32 04 00 00    	jne    173a <main+0x6ba>
    d += a[i] * b[i];
    1308:	c4 81 7d 28 2c 14    	vmovapd (%r12,%r10,1),%ymm5
    130e:	c4 81 55 59 74 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm5,%ymm6
    1315:	49 83 c2 20          	add    $0x20,%r10
    1319:	c5 fd 58 c6          	vaddpd %ymm6,%ymm0,%ymm0
    131d:	c4 01 7d 28 04 14    	vmovapd (%r12,%r10,1),%ymm8
    1323:	c4 01 3d 59 4c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm8,%ymm9
    132a:	49 83 c2 20          	add    $0x20,%r10
    132e:	c4 c1 7d 58 c1       	vaddpd %ymm9,%ymm0,%ymm0
    1333:	c4 01 7d 28 14 14    	vmovapd (%r12,%r10,1),%ymm10
    1339:	c4 01 2d 59 5c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm10,%ymm11
    1340:	49 83 c2 20          	add    $0x20,%r10
    1344:	c4 c1 7d 58 c3       	vaddpd %ymm11,%ymm0,%ymm0
    1349:	c4 01 7d 28 24 14    	vmovapd (%r12,%r10,1),%ymm12
    134f:	c4 01 1d 59 6c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm12,%ymm13
    1356:	49 83 c2 20          	add    $0x20,%r10
    135a:	c4 c1 7d 58 c5       	vaddpd %ymm13,%ymm0,%ymm0
    135f:	c4 01 7d 28 34 14    	vmovapd (%r12,%r10,1),%ymm14
    1365:	c4 01 0d 59 7c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm14,%ymm15
    136c:	49 83 c2 20          	add    $0x20,%r10
    1370:	c4 c1 7d 58 c7       	vaddpd %ymm15,%ymm0,%ymm0
    1375:	c4 81 7d 28 0c 14    	vmovapd (%r12,%r10,1),%ymm1
    137b:	c4 81 75 59 54 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm1,%ymm2
    1382:	49 83 c2 20          	add    $0x20,%r10
    1386:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  for (unsigned long long i = 0; i < n; ++i)
    138a:	4d 39 ca             	cmp    %r9,%r10
    138d:	0f 84 ba 00 00 00    	je     144d <main+0x3cd>
    d += a[i] * b[i];
    1393:	c4 81 7d 28 1c 14    	vmovapd (%r12,%r10,1),%ymm3
    1399:	c4 81 7d 28 6c 14 20 	vmovapd 0x20(%r12,%r10,1),%ymm5
    13a0:	c4 81 65 59 64 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm3,%ymm4
    13a7:	c4 81 55 59 74 15 20 	vmulpd 0x20(%r13,%r10,1),%ymm5,%ymm6
    13ae:	c4 01 7d 28 4c 14 40 	vmovapd 0x40(%r12,%r10,1),%ymm9
    13b5:	c4 01 7d 28 64 14 60 	vmovapd 0x60(%r12,%r10,1),%ymm12
    13bc:	c4 01 35 59 54 15 40 	vmulpd 0x40(%r13,%r10,1),%ymm9,%ymm10
    13c3:	c5 fd 58 fc          	vaddpd %ymm4,%ymm0,%ymm7
    13c7:	c4 01 1d 59 6c 15 60 	vmulpd 0x60(%r13,%r10,1),%ymm12,%ymm13
    13ce:	c4 01 7d 28 bc 14 80 	vmovapd 0x80(%r12,%r10,1),%ymm15
    13d5:	00 00 00 
    13d8:	c5 45 58 c6          	vaddpd %ymm6,%ymm7,%ymm8
    13dc:	c4 81 05 59 8c 15 80 	vmulpd 0x80(%r13,%r10,1),%ymm15,%ymm1
    13e3:	00 00 00 
    13e6:	c4 81 7d 28 84 14 a0 	vmovapd 0xa0(%r12,%r10,1),%ymm0
    13ed:	00 00 00 
    13f0:	c4 41 3d 58 da       	vaddpd %ymm10,%ymm8,%ymm11
    13f5:	c4 81 7d 59 9c 15 a0 	vmulpd 0xa0(%r13,%r10,1),%ymm0,%ymm3
    13fc:	00 00 00 
    13ff:	c4 81 7d 28 bc 14 c0 	vmovapd 0xc0(%r12,%r10,1),%ymm7
    1406:	00 00 00 
    1409:	c4 41 25 58 f5       	vaddpd %ymm13,%ymm11,%ymm14
    140e:	c4 81 45 59 ac 15 c0 	vmulpd 0xc0(%r13,%r10,1),%ymm7,%ymm5
    1415:	00 00 00 
    1418:	c4 01 7d 28 84 14 e0 	vmovapd 0xe0(%r12,%r10,1),%ymm8
    141f:	00 00 00 
    1422:	c5 8d 58 d1          	vaddpd %ymm1,%ymm14,%ymm2
    1426:	c4 01 3d 59 8c 15 e0 	vmulpd 0xe0(%r13,%r10,1),%ymm8,%ymm9
    142d:	00 00 00 
    1430:	49 81 c2 00 01 00 00 	add    $0x100,%r10
    1437:	c5 ed 58 e3          	vaddpd %ymm3,%ymm2,%ymm4
    143b:	c5 dd 58 f5          	vaddpd %ymm5,%ymm4,%ymm6
    143f:	c4 c1 4d 58 c1       	vaddpd %ymm9,%ymm6,%ymm0
  for (unsigned long long i = 0; i < n; ++i)
    1444:	4d 39 ca             	cmp    %r9,%r10
    1447:	0f 85 46 ff ff ff    	jne    1393 <main+0x313>
    144d:	c4 c3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm10
    1453:	c5 29 58 d8          	vaddpd %xmm0,%xmm10,%xmm11
    1457:	48 89 d8             	mov    %rbx,%rax
    145a:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    145e:	c4 41 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm12
    1463:	c4 c1 19 58 cb       	vaddpd %xmm11,%xmm12,%xmm1
    1468:	f6 c3 03             	test   $0x3,%bl
    146b:	0f 84 a9 02 00 00    	je     171a <main+0x69a>
    d += a[i] * b[i];
    1471:	c4 41 7b 10 6c c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm13
    1478:	c4 41 13 59 34 c4    	vmulsd (%r12,%rax,8),%xmm13,%xmm14
  for (unsigned long long i = 0; i < n; ++i)
    147e:	48 ff c0             	inc    %rax
    d += a[i] * b[i];
    1481:	c4 c1 73 58 ce       	vaddsd %xmm14,%xmm1,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    1486:	48 39 d8             	cmp    %rbx,%rax
    1489:	73 2a                	jae    14b5 <main+0x435>
    d += a[i] * b[i];
    148b:	c4 41 7b 10 3c c4    	vmovsd (%r12,%rax,8),%xmm15
    1491:	c4 c1 03 59 54 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm15,%xmm2
  for (unsigned long long i = 0; i < n; ++i)
    1498:	48 ff c0             	inc    %rax
    d += a[i] * b[i];
    149b:	c5 f3 58 ca          	vaddsd %xmm2,%xmm1,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    149f:	48 39 c3             	cmp    %rax,%rbx
    14a2:	76 11                	jbe    14b5 <main+0x435>
    d += a[i] * b[i];
    14a4:	c4 c1 7b 10 04 c4    	vmovsd (%r12,%rax,8),%xmm0
    14aa:	c4 c1 7b 59 5c c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm0,%xmm3
    14b1:	c5 f3 58 cb          	vaddsd %xmm3,%xmm1,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    14b5:	48 89 ce             	mov    %rcx,%rsi
    14b8:	48 d1 ee             	shr    %rsi
    14bb:	48 ff c6             	inc    %rsi
    14be:	48 83 f9 01          	cmp    $0x1,%rcx
    14c2:	0f 86 e6 02 00 00    	jbe    17ae <main+0x72e>
    14c8:	48 89 f7             	mov    %rsi,%rdi
    14cb:	48 d1 ef             	shr    %rdi
    14ce:	48 c1 e7 05          	shl    $0x5,%rdi
    14d2:	48 8d 57 e0          	lea    -0x20(%rdi),%rdx
    14d6:	48 c1 ea 05          	shr    $0x5,%rdx
    14da:	48 ff c2             	inc    %rdx
    14dd:	45 31 c0             	xor    %r8d,%r8d
    14e0:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    14e4:	83 e2 07             	and    $0x7,%edx
    14e7:	0f 84 b7 00 00 00    	je     15a4 <main+0x524>
    14ed:	48 83 fa 01          	cmp    $0x1,%rdx
    14f1:	0f 84 8f 00 00 00    	je     1586 <main+0x506>
    14f7:	48 83 fa 02          	cmp    $0x2,%rdx
    14fb:	74 73                	je     1570 <main+0x4f0>
    14fd:	48 83 fa 03          	cmp    $0x3,%rdx
    1501:	74 57                	je     155a <main+0x4da>
    1503:	48 83 fa 04          	cmp    $0x4,%rdx
    1507:	74 3b                	je     1544 <main+0x4c4>
    1509:	48 83 fa 05          	cmp    $0x5,%rdx
    150d:	74 1f                	je     152e <main+0x4ae>
    150f:	48 83 fa 06          	cmp    $0x6,%rdx
    1513:	0f 85 38 02 00 00    	jne    1751 <main+0x6d1>
      d[0] += a[i] * b[i];
    1519:	c4 81 7d 28 7c 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm7
    1520:	c4 81 45 59 2c 04    	vmulpd (%r12,%r8,1),%ymm7,%ymm5
    1526:	49 83 c0 20          	add    $0x20,%r8
    152a:	c5 fd 58 c5          	vaddpd %ymm5,%ymm0,%ymm0
    152e:	c4 81 7d 28 74 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm6
    1535:	c4 01 4d 59 04 04    	vmulpd (%r12,%r8,1),%ymm6,%ymm8
    153b:	49 83 c0 20          	add    $0x20,%r8
    153f:	c4 c1 7d 58 c0       	vaddpd %ymm8,%ymm0,%ymm0
    1544:	c4 01 7d 28 4c 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm9
    154b:	c4 01 35 59 14 04    	vmulpd (%r12,%r8,1),%ymm9,%ymm10
    1551:	49 83 c0 20          	add    $0x20,%r8
    1555:	c4 c1 7d 58 c2       	vaddpd %ymm10,%ymm0,%ymm0
    155a:	c4 01 7d 28 5c 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm11
    1561:	c4 01 25 59 24 04    	vmulpd (%r12,%r8,1),%ymm11,%ymm12
    1567:	49 83 c0 20          	add    $0x20,%r8
    156b:	c4 c1 7d 58 c4       	vaddpd %ymm12,%ymm0,%ymm0
    1570:	c4 01 7d 28 6c 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm13
    1577:	c4 01 15 59 34 04    	vmulpd (%r12,%r8,1),%ymm13,%ymm14
    157d:	49 83 c0 20          	add    $0x20,%r8
    1581:	c4 c1 7d 58 c6       	vaddpd %ymm14,%ymm0,%ymm0
    1586:	c4 01 7d 28 7c 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm15
    158d:	c4 81 05 59 14 04    	vmulpd (%r12,%r8,1),%ymm15,%ymm2
    1593:	49 83 c0 20          	add    $0x20,%r8
    1597:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  for (unsigned long long i = 0; i < n; i += 2)
    159b:	49 39 f8             	cmp    %rdi,%r8
    159e:	0f 84 ba 00 00 00    	je     165e <main+0x5de>
      d[0] += a[i] * b[i];
    15a4:	c4 81 7d 28 5c 05 00 	vmovapd 0x0(%r13,%r8,1),%ymm3
    15ab:	c4 81 7d 28 6c 05 20 	vmovapd 0x20(%r13,%r8,1),%ymm5
    15b2:	c4 81 65 59 24 04    	vmulpd (%r12,%r8,1),%ymm3,%ymm4
    15b8:	c4 81 55 59 74 04 20 	vmulpd 0x20(%r12,%r8,1),%ymm5,%ymm6
    15bf:	c4 01 7d 28 4c 05 40 	vmovapd 0x40(%r13,%r8,1),%ymm9
    15c6:	c4 01 7d 28 64 05 60 	vmovapd 0x60(%r13,%r8,1),%ymm12
    15cd:	c4 01 35 59 54 04 40 	vmulpd 0x40(%r12,%r8,1),%ymm9,%ymm10
    15d4:	c5 fd 58 fc          	vaddpd %ymm4,%ymm0,%ymm7
    15d8:	c4 01 1d 59 6c 04 60 	vmulpd 0x60(%r12,%r8,1),%ymm12,%ymm13
    15df:	c4 01 7d 28 bc 05 80 	vmovapd 0x80(%r13,%r8,1),%ymm15
    15e6:	00 00 00 
    15e9:	c5 45 58 c6          	vaddpd %ymm6,%ymm7,%ymm8
    15ed:	c4 81 05 59 94 04 80 	vmulpd 0x80(%r12,%r8,1),%ymm15,%ymm2
    15f4:	00 00 00 
    15f7:	c4 81 7d 28 9c 05 a0 	vmovapd 0xa0(%r13,%r8,1),%ymm3
    15fe:	00 00 00 
    1601:	c4 41 3d 58 da       	vaddpd %ymm10,%ymm8,%ymm11
    1606:	c4 81 65 59 a4 04 a0 	vmulpd 0xa0(%r12,%r8,1),%ymm3,%ymm4
    160d:	00 00 00 
    1610:	c4 81 7d 28 ac 05 c0 	vmovapd 0xc0(%r13,%r8,1),%ymm5
    1617:	00 00 00 
    161a:	c4 41 25 58 f5       	vaddpd %ymm13,%ymm11,%ymm14
    161f:	c4 81 55 59 b4 04 c0 	vmulpd 0xc0(%r12,%r8,1),%ymm5,%ymm6
    1626:	00 00 00 
    1629:	c4 01 7d 28 8c 05 e0 	vmovapd 0xe0(%r13,%r8,1),%ymm9
    1630:	00 00 00 
    1633:	c5 8d 58 c2          	vaddpd %ymm2,%ymm14,%ymm0
    1637:	c4 01 35 59 94 04 e0 	vmulpd 0xe0(%r12,%r8,1),%ymm9,%ymm10
    163e:	00 00 00 
    1641:	49 81 c0 00 01 00 00 	add    $0x100,%r8
    1648:	c5 fd 58 fc          	vaddpd %ymm4,%ymm0,%ymm7
    164c:	c5 45 58 c6          	vaddpd %ymm6,%ymm7,%ymm8
    1650:	c4 c1 3d 58 c2       	vaddpd %ymm10,%ymm8,%ymm0
  for (unsigned long long i = 0; i < n; i += 2)
    1655:	49 39 f8             	cmp    %rdi,%r8
    1658:	0f 85 46 ff ff ff    	jne    15a4 <main+0x524>
    165e:	c4 c3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm11
    1664:	c5 21 58 e0          	vaddpd %xmm0,%xmm11,%xmm12
    1668:	48 89 f0             	mov    %rsi,%rax
    166b:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    166f:	83 e6 01             	and    $0x1,%esi
    1672:	c5 1b 11 e2          	vmovsd %xmm12,%xmm12,%xmm2
    1676:	c4 c1 19 15 c4       	vunpckhpd %xmm12,%xmm12,%xmm0
    167b:	74 22                	je     169f <main+0x61f>
    167d:	48 c1 e0 04          	shl    $0x4,%rax
      d[0] += a[i] * b[i];
    1681:	c4 41 79 28 2c 04    	vmovapd (%r12,%rax,1),%xmm13
    1687:	c5 69 14 f8          	vunpcklpd %xmm0,%xmm2,%xmm15
    168b:	c4 41 11 59 74 05 00 	vmulpd 0x0(%r13,%rax,1),%xmm13,%xmm14
    1692:	c4 c1 09 58 c7       	vaddpd %xmm15,%xmm14,%xmm0
  for (unsigned long long i = 0; i < n; i += 2)
    1697:	c5 fb 10 d0          	vmovsd %xmm0,%xmm0,%xmm2
    169b:	c5 f9 15 c0          	vunpckhpd %xmm0,%xmm0,%xmm0
  if (n & 1)
    169f:	83 e3 01             	and    $0x1,%ebx
    16a2:	75 5b                	jne    16ff <main+0x67f>
    16a4:	c5 f8 77             	vzeroupper 
  return d[0] + d[1];
    16a7:	c5 eb 58 d0          	vaddsd %xmm0,%xmm2,%xmm2
  // Compute
  double res = dotprod(a, b, n);
  double res_2x = dotprod_2x(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    16ab:	c5 f3 10 c1          	vmovsd %xmm1,%xmm1,%xmm0
    16af:	48 8d 3d 4e 09 00 00 	lea    0x94e(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    16b6:	b8 01 00 00 00       	mov    $0x1,%eax
    16bb:	c5 fb 11 55 c8       	vmovsd %xmm2,-0x38(%rbp)
    16c0:	e8 7b f9 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    16c5:	c5 fb 10 45 c8       	vmovsd -0x38(%rbp),%xmm0
    16ca:	48 8d 3d 3e 09 00 00 	lea    0x93e(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    16d1:	b8 01 00 00 00       	mov    $0x1,%eax
    16d6:	e8 65 f9 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    16db:	4c 89 e7             	mov    %r12,%rdi
    16de:	e8 4d f9 ff ff       	callq  1030 <free@plt>
  free(b);
    16e3:	4c 89 ef             	mov    %r13,%rdi
    16e6:	e8 45 f9 ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    16eb:	48 83 c4 28          	add    $0x28,%rsp
    16ef:	5b                   	pop    %rbx
    16f0:	59                   	pop    %rcx
    16f1:	41 5c                	pop    %r12
    16f3:	41 5d                	pop    %r13
    16f5:	41 5e                	pop    %r14
    16f7:	31 c0                	xor    %eax,%eax
    16f9:	5d                   	pop    %rbp
    16fa:	48 8d 61 f8          	lea    -0x8(%rcx),%rsp
    16fe:	c3                   	retq   
    return d[0] + d[1] + a[n-1] * b[n-1];
    16ff:	c4 81 7b 10 5c 34 f8 	vmovsd -0x8(%r12,%r14,1),%xmm3
    1706:	c5 fb 58 d2          	vaddsd %xmm2,%xmm0,%xmm2
    170a:	c4 81 63 59 64 35 f8 	vmulsd -0x8(%r13,%r14,1),%xmm3,%xmm4
    1711:	c5 db 58 d2          	vaddsd %xmm2,%xmm4,%xmm2
    1715:	c5 f8 77             	vzeroupper 
    1718:	eb 91                	jmp    16ab <main+0x62b>
    171a:	48 d1 e9             	shr    %rcx
    171d:	48 8d 71 01          	lea    0x1(%rcx),%rsi
    1721:	e9 a2 fd ff ff       	jmpq   14c8 <main+0x448>
      a[i] = 0.1;
    1726:	c4 c1 7d 29 0c 24    	vmovapd %ymm1,(%r12)
      b[i] = 0.001;
    172c:	c5 fd 29 00          	vmovapd %ymm0,(%rax)
  for (unsigned long long i = 0; i < n; i++)
    1730:	bf 20 00 00 00       	mov    $0x20,%edi
    1735:	e9 18 fa ff ff       	jmpq   1152 <main+0xd2>
    d += a[i] * b[i];
    173a:	c4 c1 7d 28 3c 24    	vmovapd (%r12),%ymm7
    1740:	41 ba 20 00 00 00    	mov    $0x20,%r10d
    1746:	c4 c1 45 59 45 00    	vmulpd 0x0(%r13),%ymm7,%ymm0
  for (unsigned long long i = 0; i < n; ++i)
    174c:	e9 b7 fb ff ff       	jmpq   1308 <main+0x288>
      d[0] += a[i] * b[i];
    1751:	c4 c1 7d 28 65 00    	vmovapd 0x0(%r13),%ymm4
    1757:	41 b8 20 00 00 00    	mov    $0x20,%r8d
    175d:	c4 c1 5d 59 04 24    	vmulpd (%r12),%ymm4,%ymm0
  for (unsigned long long i = 0; i < n; i += 2)
    1763:	e9 b1 fd ff ff       	jmpq   1519 <main+0x499>
  double d[2] = {0.0};
    1768:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    176c:	c5 fb 10 d0          	vmovsd %xmm0,%xmm0,%xmm2
  double d = 0.0;
    1770:	c5 fb 10 c8          	vmovsd %xmm0,%xmm0,%xmm1
    1774:	e9 2e ff ff ff       	jmpq   16a7 <main+0x627>
      a[i] = 0.1;
    1779:	c5 fb 10 15 df 08 00 	vmovsd 0x8df(%rip),%xmm2        # 2060 <_IO_stdin_used+0x60>
    1780:	00 
      b[i] = 0.001;
    1781:	c5 fb 10 1d df 08 00 	vmovsd 0x8df(%rip),%xmm3        # 2068 <_IO_stdin_used+0x68>
    1788:	00 
      a[i] = 0.1;
    1789:	c4 c1 7b 11 14 24    	vmovsd %xmm2,(%r12)
      b[i] = 0.001;
    178f:	c5 fb 11 18          	vmovsd %xmm3,(%rax)
  for (unsigned long long i = 0; i < n; i++)
    1793:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    1799:	48 83 fb 01          	cmp    $0x1,%rbx
    179d:	0f 85 e6 fa ff ff    	jne    1289 <main+0x209>
    17a3:	c5 f1 57 c9          	vxorpd %xmm1,%xmm1,%xmm1
    17a7:	31 c0                	xor    %eax,%eax
    17a9:	e9 c3 fc ff ff       	jmpq   1471 <main+0x3f1>
  for (unsigned long long i = 0; i < n; ++i)
    17ae:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    17b2:	31 c0                	xor    %eax,%eax
    17b4:	c5 fb 10 d0          	vmovsd %xmm0,%xmm0,%xmm2
    17b8:	e9 c0 fe ff ff       	jmpq   167d <main+0x5fd>
    d += a[i] * b[i];
    17bd:	c4 c1 7b 10 65 00    	vmovsd 0x0(%r13),%xmm4
  for (unsigned long long i = 0; i < n; ++i)
    17c3:	b8 01 00 00 00       	mov    $0x1,%eax
    d += a[i] * b[i];
    17c8:	c4 c1 5b 59 0c 24    	vmulsd (%r12),%xmm4,%xmm1
  for (unsigned long long i = 0; i < n; ++i)
    17ce:	e9 b8 fc ff ff       	jmpq   148b <main+0x40b>
    exit(ARGS);
    17d3:	bf 01 00 00 00       	mov    $0x1,%edi
    17d8:	e8 83 f8 ff ff       	callq  1060 <exit@plt>
    17dd:	0f 1f 00             	nopl   (%rax)

00000000000017e0 <set_fast_math>:
    17e0:	f3 0f 1e fa          	endbr64 
    17e4:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    17e9:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    17f0:	00 
    17f1:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    17f6:	c3                   	retq   
    17f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    17fe:	00 00 

0000000000001800 <_start>:
    1800:	f3 0f 1e fa          	endbr64 
    1804:	31 ed                	xor    %ebp,%ebp
    1806:	49 89 d1             	mov    %rdx,%r9
    1809:	5e                   	pop    %rsi
    180a:	48 89 e2             	mov    %rsp,%rdx
    180d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1811:	50                   	push   %rax
    1812:	54                   	push   %rsp
    1813:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 1970 <__libc_csu_fini>
    181a:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 1900 <__libc_csu_init>
    1821:	48 8d 3d 58 f8 ff ff 	lea    -0x7a8(%rip),%rdi        # 1080 <main>
    1828:	ff 15 b2 27 00 00    	callq  *0x27b2(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    182e:	f4                   	hlt    
    182f:	90                   	nop

0000000000001830 <deregister_tm_clones>:
    1830:	48 8d 3d 19 28 00 00 	lea    0x2819(%rip),%rdi        # 4050 <__TMC_END__>
    1837:	48 8d 05 12 28 00 00 	lea    0x2812(%rip),%rax        # 4050 <__TMC_END__>
    183e:	48 39 f8             	cmp    %rdi,%rax
    1841:	74 15                	je     1858 <deregister_tm_clones+0x28>
    1843:	48 8b 05 8e 27 00 00 	mov    0x278e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    184a:	48 85 c0             	test   %rax,%rax
    184d:	74 09                	je     1858 <deregister_tm_clones+0x28>
    184f:	ff e0                	jmpq   *%rax
    1851:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1858:	c3                   	retq   
    1859:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001860 <register_tm_clones>:
    1860:	48 8d 3d e9 27 00 00 	lea    0x27e9(%rip),%rdi        # 4050 <__TMC_END__>
    1867:	48 8d 35 e2 27 00 00 	lea    0x27e2(%rip),%rsi        # 4050 <__TMC_END__>
    186e:	48 29 fe             	sub    %rdi,%rsi
    1871:	48 89 f0             	mov    %rsi,%rax
    1874:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1878:	48 c1 f8 03          	sar    $0x3,%rax
    187c:	48 01 c6             	add    %rax,%rsi
    187f:	48 d1 fe             	sar    %rsi
    1882:	74 14                	je     1898 <register_tm_clones+0x38>
    1884:	48 8b 05 65 27 00 00 	mov    0x2765(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    188b:	48 85 c0             	test   %rax,%rax
    188e:	74 08                	je     1898 <register_tm_clones+0x38>
    1890:	ff e0                	jmpq   *%rax
    1892:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1898:	c3                   	retq   
    1899:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000018a0 <__do_global_dtors_aux>:
    18a0:	f3 0f 1e fa          	endbr64 
    18a4:	80 3d a5 27 00 00 00 	cmpb   $0x0,0x27a5(%rip)        # 4050 <__TMC_END__>
    18ab:	75 33                	jne    18e0 <__do_global_dtors_aux+0x40>
    18ad:	55                   	push   %rbp
    18ae:	48 83 3d 42 27 00 00 	cmpq   $0x0,0x2742(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    18b5:	00 
    18b6:	48 89 e5             	mov    %rsp,%rbp
    18b9:	74 0d                	je     18c8 <__do_global_dtors_aux+0x28>
    18bb:	48 8b 3d 86 27 00 00 	mov    0x2786(%rip),%rdi        # 4048 <__dso_handle>
    18c2:	ff 15 30 27 00 00    	callq  *0x2730(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    18c8:	e8 63 ff ff ff       	callq  1830 <deregister_tm_clones>
    18cd:	c6 05 7c 27 00 00 01 	movb   $0x1,0x277c(%rip)        # 4050 <__TMC_END__>
    18d4:	5d                   	pop    %rbp
    18d5:	c3                   	retq   
    18d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    18dd:	00 00 00 
    18e0:	c3                   	retq   
    18e1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    18e8:	00 00 00 00 
    18ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000018f0 <frame_dummy>:
    18f0:	f3 0f 1e fa          	endbr64 
    18f4:	e9 67 ff ff ff       	jmpq   1860 <register_tm_clones>
    18f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001900 <__libc_csu_init>:
    1900:	f3 0f 1e fa          	endbr64 
    1904:	41 57                	push   %r15
    1906:	4c 8d 3d d3 24 00 00 	lea    0x24d3(%rip),%r15        # 3de0 <__frame_dummy_init_array_entry>
    190d:	41 56                	push   %r14
    190f:	49 89 d6             	mov    %rdx,%r14
    1912:	41 55                	push   %r13
    1914:	49 89 f5             	mov    %rsi,%r13
    1917:	41 54                	push   %r12
    1919:	41 89 fc             	mov    %edi,%r12d
    191c:	55                   	push   %rbp
    191d:	48 8d 2d cc 24 00 00 	lea    0x24cc(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1924:	53                   	push   %rbx
    1925:	4c 29 fd             	sub    %r15,%rbp
    1928:	48 83 ec 08          	sub    $0x8,%rsp
    192c:	e8 cf f6 ff ff       	callq  1000 <_init>
    1931:	48 c1 fd 03          	sar    $0x3,%rbp
    1935:	74 1f                	je     1956 <__libc_csu_init+0x56>
    1937:	31 db                	xor    %ebx,%ebx
    1939:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1940:	4c 89 f2             	mov    %r14,%rdx
    1943:	4c 89 ee             	mov    %r13,%rsi
    1946:	44 89 e7             	mov    %r12d,%edi
    1949:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    194d:	48 83 c3 01          	add    $0x1,%rbx
    1951:	48 39 dd             	cmp    %rbx,%rbp
    1954:	75 ea                	jne    1940 <__libc_csu_init+0x40>
    1956:	48 83 c4 08          	add    $0x8,%rsp
    195a:	5b                   	pop    %rbx
    195b:	5d                   	pop    %rbp
    195c:	41 5c                	pop    %r12
    195e:	41 5d                	pop    %r13
    1960:	41 5e                	pop    %r14
    1962:	41 5f                	pop    %r15
    1964:	c3                   	retq   
    1965:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    196c:	00 00 00 00 

0000000000001970 <__libc_csu_fini>:
    1970:	f3 0f 1e fa          	endbr64 
    1974:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001978 <_fini>:
    1978:	f3 0f 1e fa          	endbr64 
    197c:	48 83 ec 08          	sub    $0x8,%rsp
    1980:	48 83 c4 08          	add    $0x8,%rsp
    1984:	c3                   	retq   
