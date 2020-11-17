
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
    1093:	4c 8d 05 46 02 00 00 	lea    0x246(%rip),%r8        # 12e0 <__libc_csu_fini>
    109a:	48 8d 0d cf 01 00 00 	lea    0x1cf(%rip),%rcx        # 1270 <__libc_csu_init>
    10a1:	48 8d 3d 2c 01 00 00 	lea    0x12c(%rip),%rdi        # 11d4 <main>
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
  
  for (unsigned long long i = 0; i < n; i++)
    11a4:	48 85 d2             	test   %rdx,%rdx
    11a7:	74 25                	je     11ce <dotprod+0x2a>
    11a9:	b8 00 00 00 00       	mov    $0x0,%eax
  double d = 0.0;
    11ae:	66 0f ef c9          	pxor   %xmm1,%xmm1
    d += a[i] * b[i];
    11b2:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    11b7:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
    11bc:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i++)
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

00000000000011d4 <main>:

int main(int argc, char **argv)
{
    11d4:	41 54                	push   %r12
    11d6:	55                   	push   %rbp
    11d7:	53                   	push   %rbx
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    11d8:	e8 9c ff ff ff       	callq  1179 <parse_args>
    11dd:	48 89 c3             	mov    %rax,%rbx

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    11e0:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    11e7:	00 
    11e8:	48 89 ee             	mov    %rbp,%rsi
    11eb:	bf 40 00 00 00       	mov    $0x40,%edi
    11f0:	e8 7b fe ff ff       	callq  1070 <aligned_alloc@plt>
    11f5:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    11f8:	48 89 ee             	mov    %rbp,%rsi
    11fb:	bf 40 00 00 00       	mov    $0x40,%edi
    1200:	e8 6b fe ff ff       	callq  1070 <aligned_alloc@plt>
    1205:	48 89 c5             	mov    %rax,%rbp
  for (unsigned long long i = 0; i < n; i++)
    1208:	48 85 db             	test   %rbx,%rbx
    120b:	74 2a                	je     1237 <main+0x63>
    120d:	b8 00 00 00 00       	mov    $0x0,%eax
      a[i] = 0.1;
    1212:	f2 0f 10 0d f6 0d 00 	movsd  0xdf6(%rip),%xmm1        # 2010 <_IO_stdin_used+0x10>
    1219:	00 
      b[i] = 0.001;
    121a:	f2 0f 10 05 f6 0d 00 	movsd  0xdf6(%rip),%xmm0        # 2018 <_IO_stdin_used+0x18>
    1221:	00 
      a[i] = 0.1;
    1222:	f2 41 0f 11 0c c4    	movsd  %xmm1,(%r12,%rax,8)
      b[i] = 0.001;
    1228:	f2 0f 11 44 c5 00    	movsd  %xmm0,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    122e:	48 83 c0 01          	add    $0x1,%rax
    1232:	48 39 c3             	cmp    %rax,%rbx
    1235:	75 eb                	jne    1222 <main+0x4e>

  // Init arrays
  init(a, b, n);

  // Compute
  double res = dotprod(a, b, n);
    1237:	48 89 da             	mov    %rbx,%rdx
    123a:	48 89 ee             	mov    %rbp,%rsi
    123d:	4c 89 e7             	mov    %r12,%rdi
    1240:	e8 5f ff ff ff       	callq  11a4 <dotprod>

  // Print result
  printf("res = %lf\n", res);
    1245:	48 8d 3d b8 0d 00 00 	lea    0xdb8(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    124c:	b8 01 00 00 00       	mov    $0x1,%eax
    1251:	e8 ea fd ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1256:	4c 89 e7             	mov    %r12,%rdi
    1259:	e8 d2 fd ff ff       	callq  1030 <free@plt>
  free(b);
    125e:	48 89 ef             	mov    %rbp,%rdi
    1261:	e8 ca fd ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    1266:	b8 00 00 00 00       	mov    $0x0,%eax
    126b:	5b                   	pop    %rbx
    126c:	5d                   	pop    %rbp
    126d:	41 5c                	pop    %r12
    126f:	c3                   	retq   

0000000000001270 <__libc_csu_init>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	41 57                	push   %r15
    1276:	4c 8d 3d 6b 2b 00 00 	lea    0x2b6b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    127d:	41 56                	push   %r14
    127f:	49 89 d6             	mov    %rdx,%r14
    1282:	41 55                	push   %r13
    1284:	49 89 f5             	mov    %rsi,%r13
    1287:	41 54                	push   %r12
    1289:	41 89 fc             	mov    %edi,%r12d
    128c:	55                   	push   %rbp
    128d:	48 8d 2d 5c 2b 00 00 	lea    0x2b5c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
    1294:	53                   	push   %rbx
    1295:	4c 29 fd             	sub    %r15,%rbp
    1298:	48 83 ec 08          	sub    $0x8,%rsp
    129c:	e8 5f fd ff ff       	callq  1000 <_init>
    12a1:	48 c1 fd 03          	sar    $0x3,%rbp
    12a5:	74 1f                	je     12c6 <__libc_csu_init+0x56>
    12a7:	31 db                	xor    %ebx,%ebx
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12b0:	4c 89 f2             	mov    %r14,%rdx
    12b3:	4c 89 ee             	mov    %r13,%rsi
    12b6:	44 89 e7             	mov    %r12d,%edi
    12b9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    12bd:	48 83 c3 01          	add    $0x1,%rbx
    12c1:	48 39 dd             	cmp    %rbx,%rbp
    12c4:	75 ea                	jne    12b0 <__libc_csu_init+0x40>
    12c6:	48 83 c4 08          	add    $0x8,%rsp
    12ca:	5b                   	pop    %rbx
    12cb:	5d                   	pop    %rbp
    12cc:	41 5c                	pop    %r12
    12ce:	41 5d                	pop    %r13
    12d0:	41 5e                	pop    %r14
    12d2:	41 5f                	pop    %r15
    12d4:	c3                   	retq   
    12d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12dc:	00 00 00 00 

00000000000012e0 <__libc_csu_fini>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	c3                   	retq   

Déassemblage de la section .fini :

00000000000012e8 <_fini>:
    12e8:	f3 0f 1e fa          	endbr64 
    12ec:	48 83 ec 08          	sub    $0x8,%rsp
    12f0:	48 83 c4 08          	add    $0x8,%rsp
    12f4:	c3                   	retq   
