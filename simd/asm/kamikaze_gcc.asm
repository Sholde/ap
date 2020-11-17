
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
  
  return d;
}

int main(int argc, char **argv)
{
    1080:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
    1085:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1089:	41 ff 72 f8          	pushq  -0x8(%r10)
    108d:	55                   	push   %rbp
    108e:	48 89 e5             	mov    %rsp,%rbp
    1091:	41 55                	push   %r13
    1093:	41 54                	push   %r12
    1095:	41 52                	push   %r10
    1097:	53                   	push   %rbx
    1098:	48 83 ec 10          	sub    $0x10,%rsp
  if (argc != 2)
    109c:	83 ff 02             	cmp    $0x2,%edi
    109f:	0f 85 c4 04 00 00    	jne    1569 <main+0x4e9>
  return strtoll(argv[1], NULL, 10);
    10a5:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    10a9:	ba 0a 00 00 00       	mov    $0xa,%edx
    10ae:	31 f6                	xor    %esi,%esi
    10b0:	e8 9b ff ff ff       	callq  1050 <strtoll@plt>
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    10b5:	4c 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%r13
    10bc:	00 
    10bd:	4c 89 ee             	mov    %r13,%rsi
    10c0:	bf 40 00 00 00       	mov    $0x40,%edi
  return strtoll(argv[1], NULL, 10);
    10c5:	48 89 c3             	mov    %rax,%rbx
  double *a = aligned_alloc(64, n * sizeof(double));
    10c8:	e8 a3 ff ff ff       	callq  1070 <aligned_alloc@plt>
  double *b = aligned_alloc(64, n * sizeof(double));
    10cd:	4c 89 ee             	mov    %r13,%rsi
    10d0:	bf 40 00 00 00       	mov    $0x40,%edi
  double *a = aligned_alloc(64, n * sizeof(double));
    10d5:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    10d8:	e8 93 ff ff ff       	callq  1070 <aligned_alloc@plt>
    10dd:	49 89 c5             	mov    %rax,%r13
  for (unsigned long long i = 0; i < n; i++)
    10e0:	48 85 db             	test   %rbx,%rbx
    10e3:	0f 84 2c 04 00 00    	je     1515 <main+0x495>
    10e9:	48 8d 73 ff          	lea    -0x1(%rbx),%rsi
    10ed:	48 83 fe 02          	cmp    $0x2,%rsi
    10f1:	0f 86 24 04 00 00    	jbe    151b <main+0x49b>
    10f7:	48 89 d9             	mov    %rbx,%rcx
    10fa:	48 c1 e9 02          	shr    $0x2,%rcx
    10fe:	48 c1 e1 05          	shl    $0x5,%rcx
    1102:	48 8d 51 e0          	lea    -0x20(%rcx),%rdx
    1106:	48 c1 ea 05          	shr    $0x5,%rdx
    110a:	48 ff c2             	inc    %rdx
    110d:	c5 fd 28 0d 0b 0f 00 	vmovapd 0xf0b(%rip),%ymm1        # 2020 <_IO_stdin_used+0x20>
    1114:	00 
    1115:	c5 fd 28 05 23 0f 00 	vmovapd 0xf23(%rip),%ymm0        # 2040 <_IO_stdin_used+0x40>
    111c:	00 
    111d:	31 ff                	xor    %edi,%edi
    111f:	83 e2 07             	and    $0x7,%edx
    1122:	0f 84 97 00 00 00    	je     11bf <main+0x13f>
    1128:	48 83 fa 01          	cmp    $0x1,%rdx
    112c:	74 77                	je     11a5 <main+0x125>
    112e:	48 83 fa 02          	cmp    $0x2,%rdx
    1132:	74 60                	je     1194 <main+0x114>
    1134:	48 83 fa 03          	cmp    $0x3,%rdx
    1138:	74 49                	je     1183 <main+0x103>
    113a:	48 83 fa 04          	cmp    $0x4,%rdx
    113e:	74 32                	je     1172 <main+0xf2>
    1140:	48 83 fa 05          	cmp    $0x5,%rdx
    1144:	74 1b                	je     1161 <main+0xe1>
    1146:	48 83 fa 06          	cmp    $0x6,%rdx
    114a:	0f 85 9a 03 00 00    	jne    14ea <main+0x46a>
      a[i] = 0.1;
    1150:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    1156:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    115d:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1161:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    1167:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    116e:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1172:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    1178:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    117f:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1183:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    1189:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    1190:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    1194:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    119a:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    11a1:	48 83 c7 20          	add    $0x20,%rdi
      a[i] = 0.1;
    11a5:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    11ab:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
  for (unsigned long long i = 0; i < n; i++)
    11b2:	48 83 c7 20          	add    $0x20,%rdi
    11b6:	48 39 cf             	cmp    %rcx,%rdi
    11b9:	0f 84 97 00 00 00    	je     1256 <main+0x1d6>
      a[i] = 0.1;
    11bf:	c4 c1 7d 29 0c 3c    	vmovapd %ymm1,(%r12,%rdi,1)
      b[i] = 0.001;
    11c5:	c4 c1 7d 29 44 3d 00 	vmovapd %ymm0,0x0(%r13,%rdi,1)
      a[i] = 0.1;
    11cc:	c4 c1 7d 29 4c 3c 20 	vmovapd %ymm1,0x20(%r12,%rdi,1)
      b[i] = 0.001;
    11d3:	c4 c1 7d 29 44 3d 20 	vmovapd %ymm0,0x20(%r13,%rdi,1)
      a[i] = 0.1;
    11da:	c4 c1 7d 29 4c 3c 40 	vmovapd %ymm1,0x40(%r12,%rdi,1)
      b[i] = 0.001;
    11e1:	c4 c1 7d 29 44 3d 40 	vmovapd %ymm0,0x40(%r13,%rdi,1)
      a[i] = 0.1;
    11e8:	c4 c1 7d 29 4c 3c 60 	vmovapd %ymm1,0x60(%r12,%rdi,1)
      b[i] = 0.001;
    11ef:	c4 c1 7d 29 44 3d 60 	vmovapd %ymm0,0x60(%r13,%rdi,1)
      a[i] = 0.1;
    11f6:	c4 c1 7d 29 8c 3c 80 	vmovapd %ymm1,0x80(%r12,%rdi,1)
    11fd:	00 00 00 
      b[i] = 0.001;
    1200:	c4 c1 7d 29 84 3d 80 	vmovapd %ymm0,0x80(%r13,%rdi,1)
    1207:	00 00 00 
      a[i] = 0.1;
    120a:	c4 c1 7d 29 8c 3c a0 	vmovapd %ymm1,0xa0(%r12,%rdi,1)
    1211:	00 00 00 
      b[i] = 0.001;
    1214:	c4 c1 7d 29 84 3d a0 	vmovapd %ymm0,0xa0(%r13,%rdi,1)
    121b:	00 00 00 
      a[i] = 0.1;
    121e:	c4 c1 7d 29 8c 3c c0 	vmovapd %ymm1,0xc0(%r12,%rdi,1)
    1225:	00 00 00 
      b[i] = 0.001;
    1228:	c4 c1 7d 29 84 3d c0 	vmovapd %ymm0,0xc0(%r13,%rdi,1)
    122f:	00 00 00 
      a[i] = 0.1;
    1232:	c4 c1 7d 29 8c 3c e0 	vmovapd %ymm1,0xe0(%r12,%rdi,1)
    1239:	00 00 00 
      b[i] = 0.001;
    123c:	c4 c1 7d 29 84 3d e0 	vmovapd %ymm0,0xe0(%r13,%rdi,1)
    1243:	00 00 00 
  for (unsigned long long i = 0; i < n; i++)
    1246:	48 81 c7 00 01 00 00 	add    $0x100,%rdi
    124d:	48 39 cf             	cmp    %rcx,%rdi
    1250:	0f 85 69 ff ff ff    	jne    11bf <main+0x13f>
    1256:	49 89 d8             	mov    %rbx,%r8
    1259:	49 83 e0 fc          	and    $0xfffffffffffffffc,%r8
    125d:	f6 c3 03             	test   $0x3,%bl
    1260:	74 51                	je     12b3 <main+0x233>
      a[i] = 0.1;
    1262:	c5 fb 10 15 f6 0d 00 	vmovsd 0xdf6(%rip),%xmm2        # 2060 <_IO_stdin_used+0x60>
    1269:	00 
      b[i] = 0.001;
    126a:	c5 fb 10 1d f6 0d 00 	vmovsd 0xdf6(%rip),%xmm3        # 2068 <_IO_stdin_used+0x68>
    1271:	00 
      a[i] = 0.1;
    1272:	c4 81 7b 11 14 c4    	vmovsd %xmm2,(%r12,%r8,8)
      b[i] = 0.001;
    1278:	c4 81 7b 11 5c c5 00 	vmovsd %xmm3,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    127f:	49 ff c0             	inc    %r8
    1282:	4c 39 c3             	cmp    %r8,%rbx
    1285:	76 2c                	jbe    12b3 <main+0x233>
      a[i] = 0.1;
    1287:	c4 81 7b 11 14 c4    	vmovsd %xmm2,(%r12,%r8,8)
      b[i] = 0.001;
    128d:	c4 81 7b 11 5c c5 00 	vmovsd %xmm3,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    1294:	49 ff c0             	inc    %r8
    1297:	4c 39 c3             	cmp    %r8,%rbx
    129a:	76 0d                	jbe    12a9 <main+0x229>
      a[i] = 0.1;
    129c:	c4 81 7b 11 14 c4    	vmovsd %xmm2,(%r12,%r8,8)
      b[i] = 0.001;
    12a2:	c4 81 7b 11 5c c5 00 	vmovsd %xmm3,0x0(%r13,%r8,8)
  for (unsigned long long i = 0; i < n; i++)
    12a9:	48 83 fe 02          	cmp    $0x2,%rsi
    12ad:	0f 86 9d 02 00 00    	jbe    1550 <main+0x4d0>
    12b3:	49 89 d9             	mov    %rbx,%r9
    12b6:	49 c1 e9 02          	shr    $0x2,%r9
    12ba:	49 c1 e1 05          	shl    $0x5,%r9
    12be:	4d 8d 59 e0          	lea    -0x20(%r9),%r11
    12c2:	49 c1 eb 05          	shr    $0x5,%r11
    12c6:	49 ff c3             	inc    %r11
    12c9:	45 31 d2             	xor    %r10d,%r10d
    12cc:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    12d0:	41 83 e3 07          	and    $0x7,%r11d
    12d4:	0f 84 b7 00 00 00    	je     1391 <main+0x311>
    12da:	49 83 fb 01          	cmp    $0x1,%r11
    12de:	0f 84 8f 00 00 00    	je     1373 <main+0x2f3>
    12e4:	49 83 fb 02          	cmp    $0x2,%r11
    12e8:	74 73                	je     135d <main+0x2dd>
    12ea:	49 83 fb 03          	cmp    $0x3,%r11
    12ee:	74 57                	je     1347 <main+0x2c7>
    12f0:	49 83 fb 04          	cmp    $0x4,%r11
    12f4:	74 3b                	je     1331 <main+0x2b1>
    12f6:	49 83 fb 05          	cmp    $0x5,%r11
    12fa:	74 1f                	je     131b <main+0x29b>
    12fc:	49 83 fb 06          	cmp    $0x6,%r11
    1300:	0f 85 f8 01 00 00    	jne    14fe <main+0x47e>
    d += a[i] * b[i];
    1306:	c4 81 7d 28 2c 14    	vmovapd (%r12,%r10,1),%ymm5
    130c:	c4 81 55 59 7c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm5,%ymm7
    1313:	49 83 c2 20          	add    $0x20,%r10
    1317:	c5 fd 58 c7          	vaddpd %ymm7,%ymm0,%ymm0
    131b:	c4 01 7d 28 04 14    	vmovapd (%r12,%r10,1),%ymm8
    1321:	c4 01 3d 59 4c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm8,%ymm9
    1328:	49 83 c2 20          	add    $0x20,%r10
    132c:	c4 c1 7d 58 c1       	vaddpd %ymm9,%ymm0,%ymm0
    1331:	c4 01 7d 28 14 14    	vmovapd (%r12,%r10,1),%ymm10
    1337:	c4 01 2d 59 5c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm10,%ymm11
    133e:	49 83 c2 20          	add    $0x20,%r10
    1342:	c4 c1 7d 58 c3       	vaddpd %ymm11,%ymm0,%ymm0
    1347:	c4 01 7d 28 24 14    	vmovapd (%r12,%r10,1),%ymm12
    134d:	c4 01 1d 59 6c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm12,%ymm13
    1354:	49 83 c2 20          	add    $0x20,%r10
    1358:	c4 c1 7d 58 c5       	vaddpd %ymm13,%ymm0,%ymm0
    135d:	c4 01 7d 28 34 14    	vmovapd (%r12,%r10,1),%ymm14
    1363:	c4 01 0d 59 7c 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm14,%ymm15
    136a:	49 83 c2 20          	add    $0x20,%r10
    136e:	c4 c1 7d 58 c7       	vaddpd %ymm15,%ymm0,%ymm0
    1373:	c4 81 7d 28 0c 14    	vmovapd (%r12,%r10,1),%ymm1
    1379:	c4 81 75 59 54 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm1,%ymm2
    1380:	49 83 c2 20          	add    $0x20,%r10
    1384:	c5 fd 58 c2          	vaddpd %ymm2,%ymm0,%ymm0
  for (unsigned long long i = 0; i < n; i++)
    1388:	4d 39 d1             	cmp    %r10,%r9
    138b:	0f 84 ba 00 00 00    	je     144b <main+0x3cb>
    d += a[i] * b[i];
    1391:	c4 81 7d 28 1c 14    	vmovapd (%r12,%r10,1),%ymm3
    1397:	c4 81 7d 28 6c 14 20 	vmovapd 0x20(%r12,%r10,1),%ymm5
    139e:	c4 81 65 59 64 15 00 	vmulpd 0x0(%r13,%r10,1),%ymm3,%ymm4
    13a5:	c4 81 55 59 7c 15 20 	vmulpd 0x20(%r13,%r10,1),%ymm5,%ymm7
    13ac:	c4 01 7d 28 4c 14 40 	vmovapd 0x40(%r12,%r10,1),%ymm9
    13b3:	c4 01 7d 28 64 14 60 	vmovapd 0x60(%r12,%r10,1),%ymm12
    13ba:	c4 01 35 59 54 15 40 	vmulpd 0x40(%r13,%r10,1),%ymm9,%ymm10
    13c1:	c5 fd 58 f4          	vaddpd %ymm4,%ymm0,%ymm6
    13c5:	c4 01 1d 59 6c 15 60 	vmulpd 0x60(%r13,%r10,1),%ymm12,%ymm13
    13cc:	c4 01 7d 28 bc 14 80 	vmovapd 0x80(%r12,%r10,1),%ymm15
    13d3:	00 00 00 
    13d6:	c5 4d 58 c7          	vaddpd %ymm7,%ymm6,%ymm8
    13da:	c4 81 05 59 8c 15 80 	vmulpd 0x80(%r13,%r10,1),%ymm15,%ymm1
    13e1:	00 00 00 
    13e4:	c4 81 7d 28 84 14 a0 	vmovapd 0xa0(%r12,%r10,1),%ymm0
    13eb:	00 00 00 
    13ee:	c4 41 3d 58 da       	vaddpd %ymm10,%ymm8,%ymm11
    13f3:	c4 81 7d 59 9c 15 a0 	vmulpd 0xa0(%r13,%r10,1),%ymm0,%ymm3
    13fa:	00 00 00 
    13fd:	c4 81 7d 28 b4 14 c0 	vmovapd 0xc0(%r12,%r10,1),%ymm6
    1404:	00 00 00 
    1407:	c4 41 25 58 f5       	vaddpd %ymm13,%ymm11,%ymm14
    140c:	c4 81 4d 59 ac 15 c0 	vmulpd 0xc0(%r13,%r10,1),%ymm6,%ymm5
    1413:	00 00 00 
    1416:	c4 81 7d 28 bc 14 e0 	vmovapd 0xe0(%r12,%r10,1),%ymm7
    141d:	00 00 00 
    1420:	c5 8d 58 d1          	vaddpd %ymm1,%ymm14,%ymm2
    1424:	c4 01 45 59 8c 15 e0 	vmulpd 0xe0(%r13,%r10,1),%ymm7,%ymm9
    142b:	00 00 00 
    142e:	49 81 c2 00 01 00 00 	add    $0x100,%r10
    1435:	c5 ed 58 e3          	vaddpd %ymm3,%ymm2,%ymm4
    1439:	c5 5d 58 c5          	vaddpd %ymm5,%ymm4,%ymm8
    143d:	c4 c1 3d 58 c1       	vaddpd %ymm9,%ymm8,%ymm0
  for (unsigned long long i = 0; i < n; i++)
    1442:	4d 39 d1             	cmp    %r10,%r9
    1445:	0f 85 46 ff ff ff    	jne    1391 <main+0x311>
    144b:	c4 c3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm10
    1451:	c5 29 58 d8          	vaddpd %xmm0,%xmm10,%xmm11
    1455:	48 89 d8             	mov    %rbx,%rax
    1458:	48 83 e0 fc          	and    $0xfffffffffffffffc,%rax
    145c:	c4 41 21 15 e3       	vunpckhpd %xmm11,%xmm11,%xmm12
    1461:	c4 c1 19 58 c3       	vaddpd %xmm11,%xmm12,%xmm0
    1466:	f6 c3 03             	test   $0x3,%bl
    1469:	74 7a                	je     14e5 <main+0x465>
    146b:	c5 f8 77             	vzeroupper 
    d += a[i] * b[i];
    146e:	c4 41 7b 10 2c c4    	vmovsd (%r12,%rax,8),%xmm13
    1474:	c4 41 13 59 74 c5 00 	vmulsd 0x0(%r13,%rax,8),%xmm13,%xmm14
  for (unsigned long long i = 0; i < n; i++)
    147b:	48 ff c0             	inc    %rax
    d += a[i] * b[i];
    147e:	c4 c1 7b 58 c6       	vaddsd %xmm14,%xmm0,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    1483:	48 39 d8             	cmp    %rbx,%rax
    1486:	73 2a                	jae    14b2 <main+0x432>
    d += a[i] * b[i];
    1488:	c4 41 7b 10 7c c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm15
    148f:	c4 c1 03 59 0c c4    	vmulsd (%r12,%rax,8),%xmm15,%xmm1
  for (unsigned long long i = 0; i < n; i++)
    1495:	48 ff c0             	inc    %rax
    d += a[i] * b[i];
    1498:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    149c:	48 39 d8             	cmp    %rbx,%rax
    149f:	73 11                	jae    14b2 <main+0x432>
    d += a[i] * b[i];
    14a1:	c4 c1 7b 10 54 c5 00 	vmovsd 0x0(%r13,%rax,8),%xmm2
    14a8:	c4 c1 6b 59 1c c4    	vmulsd (%r12,%rax,8),%xmm2,%xmm3
    14ae:	c5 fb 58 c3          	vaddsd %xmm3,%xmm0,%xmm0

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    14b2:	48 8d 3d 4b 0b 00 00 	lea    0xb4b(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    14b9:	b8 01 00 00 00       	mov    $0x1,%eax
    14be:	e8 7d fb ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    14c3:	4c 89 e7             	mov    %r12,%rdi
    14c6:	e8 65 fb ff ff       	callq  1030 <free@plt>
  free(b);
    14cb:	4c 89 ef             	mov    %r13,%rdi
    14ce:	e8 5d fb ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    14d3:	48 83 c4 10          	add    $0x10,%rsp
    14d7:	5b                   	pop    %rbx
    14d8:	5e                   	pop    %rsi
    14d9:	41 5c                	pop    %r12
    14db:	41 5d                	pop    %r13
    14dd:	31 c0                	xor    %eax,%eax
    14df:	5d                   	pop    %rbp
    14e0:	48 8d 66 f8          	lea    -0x8(%rsi),%rsp
    14e4:	c3                   	retq   
    14e5:	c5 f8 77             	vzeroupper 
    14e8:	eb c8                	jmp    14b2 <main+0x432>
      a[i] = 0.1;
    14ea:	c4 c1 7d 29 0c 24    	vmovapd %ymm1,(%r12)
      b[i] = 0.001;
    14f0:	c5 fd 29 00          	vmovapd %ymm0,(%rax)
  for (unsigned long long i = 0; i < n; i++)
    14f4:	bf 20 00 00 00       	mov    $0x20,%edi
    14f9:	e9 52 fc ff ff       	jmpq   1150 <main+0xd0>
    d += a[i] * b[i];
    14fe:	c4 c1 7d 28 34 24    	vmovapd (%r12),%ymm6
    1504:	41 ba 20 00 00 00    	mov    $0x20,%r10d
    150a:	c4 c1 4d 59 45 00    	vmulpd 0x0(%r13),%ymm6,%ymm0
  for (unsigned long long i = 0; i < n; i++)
    1510:	e9 f1 fd ff ff       	jmpq   1306 <main+0x286>
  double d = 0.0;
    1515:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1519:	eb 97                	jmp    14b2 <main+0x432>
      a[i] = 0.1;
    151b:	c5 fb 10 15 3d 0b 00 	vmovsd 0xb3d(%rip),%xmm2        # 2060 <_IO_stdin_used+0x60>
    1522:	00 
      b[i] = 0.001;
    1523:	c5 fb 10 1d 3d 0b 00 	vmovsd 0xb3d(%rip),%xmm3        # 2068 <_IO_stdin_used+0x68>
    152a:	00 
      a[i] = 0.1;
    152b:	c4 c1 7b 11 14 24    	vmovsd %xmm2,(%r12)
      b[i] = 0.001;
    1531:	c5 fb 11 18          	vmovsd %xmm3,(%rax)
  for (unsigned long long i = 0; i < n; i++)
    1535:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    153b:	48 83 fb 01          	cmp    $0x1,%rbx
    153f:	0f 85 42 fd ff ff    	jne    1287 <main+0x207>
    1545:	c5 f9 57 c0          	vxorpd %xmm0,%xmm0,%xmm0
    1549:	31 c0                	xor    %eax,%eax
    154b:	e9 1e ff ff ff       	jmpq   146e <main+0x3ee>
    d += a[i] * b[i];
    1550:	c4 c1 7b 10 65 00    	vmovsd 0x0(%r13),%xmm4
  for (unsigned long long i = 0; i < n; i++)
    1556:	b8 01 00 00 00       	mov    $0x1,%eax
    d += a[i] * b[i];
    155b:	c4 c1 5b 59 04 24    	vmulsd (%r12),%xmm4,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    1561:	c5 f8 77             	vzeroupper 
    1564:	e9 1f ff ff ff       	jmpq   1488 <main+0x408>
    exit(ARGS);
    1569:	bf 01 00 00 00       	mov    $0x1,%edi
    156e:	e8 ed fa ff ff       	callq  1060 <exit@plt>
    1573:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    157a:	00 00 00 
    157d:	0f 1f 00             	nopl   (%rax)

0000000000001580 <set_fast_math>:
    1580:	f3 0f 1e fa          	endbr64 
    1584:	0f ae 5c 24 fc       	stmxcsr -0x4(%rsp)
    1589:	81 4c 24 fc 40 80 00 	orl    $0x8040,-0x4(%rsp)
    1590:	00 
    1591:	0f ae 54 24 fc       	ldmxcsr -0x4(%rsp)
    1596:	c3                   	retq   
    1597:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    159e:	00 00 

00000000000015a0 <_start>:
    15a0:	f3 0f 1e fa          	endbr64 
    15a4:	31 ed                	xor    %ebp,%ebp
    15a6:	49 89 d1             	mov    %rdx,%r9
    15a9:	5e                   	pop    %rsi
    15aa:	48 89 e2             	mov    %rsp,%rdx
    15ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    15b1:	50                   	push   %rax
    15b2:	54                   	push   %rsp
    15b3:	4c 8d 05 56 01 00 00 	lea    0x156(%rip),%r8        # 1710 <__libc_csu_fini>
    15ba:	48 8d 0d df 00 00 00 	lea    0xdf(%rip),%rcx        # 16a0 <__libc_csu_init>
    15c1:	48 8d 3d b8 fa ff ff 	lea    -0x548(%rip),%rdi        # 1080 <main>
    15c8:	ff 15 12 2a 00 00    	callq  *0x2a12(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    15ce:	f4                   	hlt    
    15cf:	90                   	nop

00000000000015d0 <deregister_tm_clones>:
    15d0:	48 8d 3d 79 2a 00 00 	lea    0x2a79(%rip),%rdi        # 4050 <__TMC_END__>
    15d7:	48 8d 05 72 2a 00 00 	lea    0x2a72(%rip),%rax        # 4050 <__TMC_END__>
    15de:	48 39 f8             	cmp    %rdi,%rax
    15e1:	74 15                	je     15f8 <deregister_tm_clones+0x28>
    15e3:	48 8b 05 ee 29 00 00 	mov    0x29ee(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    15ea:	48 85 c0             	test   %rax,%rax
    15ed:	74 09                	je     15f8 <deregister_tm_clones+0x28>
    15ef:	ff e0                	jmpq   *%rax
    15f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15f8:	c3                   	retq   
    15f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001600 <register_tm_clones>:
    1600:	48 8d 3d 49 2a 00 00 	lea    0x2a49(%rip),%rdi        # 4050 <__TMC_END__>
    1607:	48 8d 35 42 2a 00 00 	lea    0x2a42(%rip),%rsi        # 4050 <__TMC_END__>
    160e:	48 29 fe             	sub    %rdi,%rsi
    1611:	48 89 f0             	mov    %rsi,%rax
    1614:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1618:	48 c1 f8 03          	sar    $0x3,%rax
    161c:	48 01 c6             	add    %rax,%rsi
    161f:	48 d1 fe             	sar    %rsi
    1622:	74 14                	je     1638 <register_tm_clones+0x38>
    1624:	48 8b 05 c5 29 00 00 	mov    0x29c5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    162b:	48 85 c0             	test   %rax,%rax
    162e:	74 08                	je     1638 <register_tm_clones+0x38>
    1630:	ff e0                	jmpq   *%rax
    1632:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1638:	c3                   	retq   
    1639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001640 <__do_global_dtors_aux>:
    1640:	f3 0f 1e fa          	endbr64 
    1644:	80 3d 05 2a 00 00 00 	cmpb   $0x0,0x2a05(%rip)        # 4050 <__TMC_END__>
    164b:	75 33                	jne    1680 <__do_global_dtors_aux+0x40>
    164d:	55                   	push   %rbp
    164e:	48 83 3d a2 29 00 00 	cmpq   $0x0,0x29a2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1655:	00 
    1656:	48 89 e5             	mov    %rsp,%rbp
    1659:	74 0d                	je     1668 <__do_global_dtors_aux+0x28>
    165b:	48 8b 3d e6 29 00 00 	mov    0x29e6(%rip),%rdi        # 4048 <__dso_handle>
    1662:	ff 15 90 29 00 00    	callq  *0x2990(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1668:	e8 63 ff ff ff       	callq  15d0 <deregister_tm_clones>
    166d:	c6 05 dc 29 00 00 01 	movb   $0x1,0x29dc(%rip)        # 4050 <__TMC_END__>
    1674:	5d                   	pop    %rbp
    1675:	c3                   	retq   
    1676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    167d:	00 00 00 
    1680:	c3                   	retq   
    1681:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1688:	00 00 00 00 
    168c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001690 <frame_dummy>:
    1690:	f3 0f 1e fa          	endbr64 
    1694:	e9 67 ff ff ff       	jmpq   1600 <register_tm_clones>
    1699:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000016a0 <__libc_csu_init>:
    16a0:	f3 0f 1e fa          	endbr64 
    16a4:	41 57                	push   %r15
    16a6:	4c 8d 3d 33 27 00 00 	lea    0x2733(%rip),%r15        # 3de0 <__frame_dummy_init_array_entry>
    16ad:	41 56                	push   %r14
    16af:	49 89 d6             	mov    %rdx,%r14
    16b2:	41 55                	push   %r13
    16b4:	49 89 f5             	mov    %rsi,%r13
    16b7:	41 54                	push   %r12
    16b9:	41 89 fc             	mov    %edi,%r12d
    16bc:	55                   	push   %rbp
    16bd:	48 8d 2d 2c 27 00 00 	lea    0x272c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
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
