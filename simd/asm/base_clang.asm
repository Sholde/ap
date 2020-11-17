
base_clang:     format de fichier elf64-x86-64


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
    1093:	4c 8d 05 76 02 00 00 	lea    0x276(%rip),%r8        # 1310 <__libc_csu_fini>
    109a:	48 8d 0d ff 01 00 00 	lea    0x1ff(%rip),%rcx        # 12a0 <__libc_csu_init>
    10a1:	48 8d 3d 38 01 00 00 	lea    0x138(%rip),%rdi        # 11e0 <main>
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
    1184:	75 12                	jne    1198 <parse_args+0x18>
    exit(ARGS);

  return strtoll(argv[1], NULL, 10);
    1186:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    118a:	31 f6                	xor    %esi,%esi
    118c:	ba 0a 00 00 00       	mov    $0xa,%edx
    1191:	e8 ba fe ff ff       	callq  1050 <strtoll@plt>
    1196:	59                   	pop    %rcx
    1197:	c3                   	retq   
    exit(ARGS);
    1198:	bf 01 00 00 00       	mov    $0x1,%edi
    119d:	e8 be fe ff ff       	callq  1060 <exit@plt>
    11a2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11a9:	00 00 00 
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011b0 <dotprod>:
    }
}

// Baseline
double dotprod(double *restrict a, double *restrict b, unsigned long long n)
{
    11b0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
  double d = 0.0;
  
  for (unsigned long long i = 0; i < n; i++)
    11b4:	48 85 d2             	test   %rdx,%rdx
    11b7:	74 1e                	je     11d7 <dotprod+0x27>
    11b9:	31 c0                	xor    %eax,%eax
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    11c0:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    11c5:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    11ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; i++)
    11ce:	48 83 c0 01          	add    $0x1,%rax
    11d2:	48 39 c2             	cmp    %rax,%rdx
    11d5:	75 e9                	jne    11c0 <dotprod+0x10>
  
  return d;
    11d7:	c3                   	retq   
    11d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11df:	00 

00000000000011e0 <main>:
}

int main(int argc, char **argv)
{
    11e0:	41 57                	push   %r15
    11e2:	41 56                	push   %r14
    11e4:	53                   	push   %rbx
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    11e5:	e8 96 ff ff ff       	callq  1180 <parse_args>
    11ea:	49 89 c6             	mov    %rax,%r14

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    11ed:	48 8d 1c c5 00 00 00 	lea    0x0(,%rax,8),%rbx
    11f4:	00 
    11f5:	bf 40 00 00 00       	mov    $0x40,%edi
    11fa:	48 89 de             	mov    %rbx,%rsi
    11fd:	e8 6e fe ff ff       	callq  1070 <aligned_alloc@plt>
    1202:	49 89 c7             	mov    %rax,%r15
  double *b = aligned_alloc(64, n * sizeof(double));
    1205:	bf 40 00 00 00       	mov    $0x40,%edi
    120a:	48 89 de             	mov    %rbx,%rsi
    120d:	e8 5e fe ff ff       	callq  1070 <aligned_alloc@plt>
    1212:	48 89 c3             	mov    %rax,%rbx

  // Init arrays
  init(a, b, n);
    1215:	4c 89 ff             	mov    %r15,%rdi
    1218:	48 89 c6             	mov    %rax,%rsi
    121b:	4c 89 f2             	mov    %r14,%rdx
    121e:	e8 3d 00 00 00       	callq  1260 <init>

  // Compute
  double res = dotprod(a, b, n);
    1223:	4c 89 ff             	mov    %r15,%rdi
    1226:	48 89 de             	mov    %rbx,%rsi
    1229:	4c 89 f2             	mov    %r14,%rdx
    122c:	e8 7f ff ff ff       	callq  11b0 <dotprod>

  // Print result
  printf("res = %lf\n", res);
    1231:	48 8d 3d cc 0d 00 00 	lea    0xdcc(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1238:	b0 01                	mov    $0x1,%al
    123a:	e8 01 fe ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    123f:	4c 89 ff             	mov    %r15,%rdi
    1242:	e8 e9 fd ff ff       	callq  1030 <free@plt>
  free(b);
    1247:	48 89 df             	mov    %rbx,%rdi
    124a:	e8 e1 fd ff ff       	callq  1030 <free@plt>
  
  return 0;
    124f:	31 c0                	xor    %eax,%eax
    1251:	5b                   	pop    %rbx
    1252:	41 5e                	pop    %r14
    1254:	41 5f                	pop    %r15
    1256:	c3                   	retq   
    1257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    125e:	00 00 

0000000000001260 <init>:
  for (unsigned long long i = 0; i < n; i++)
    1260:	48 85 d2             	test   %rdx,%rdx
    1263:	74 2c                	je     1291 <init+0x31>
    1265:	31 c0                	xor    %eax,%eax
    1267:	49 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%r8
    126e:	99 b9 3f 
    1271:	48 b9 fc a9 f1 d2 4d 	movabs $0x3f50624dd2f1a9fc,%rcx
    1278:	62 50 3f 
    127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1280:	4c 89 04 c7          	mov    %r8,(%rdi,%rax,8)
      b[i] = 0.001;
    1284:	48 89 0c c6          	mov    %rcx,(%rsi,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1288:	48 83 c0 01          	add    $0x1,%rax
    128c:	48 39 c2             	cmp    %rax,%rdx
    128f:	75 ef                	jne    1280 <init+0x20>
}
    1291:	c3                   	retq   
    1292:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1299:	00 00 00 
    129c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012a0 <__libc_csu_init>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	41 57                	push   %r15
    12a6:	4c 8d 3d 2b 2b 00 00 	lea    0x2b2b(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    12ad:	41 56                	push   %r14
    12af:	49 89 d6             	mov    %rdx,%r14
    12b2:	41 55                	push   %r13
    12b4:	49 89 f5             	mov    %rsi,%r13
    12b7:	41 54                	push   %r12
    12b9:	41 89 fc             	mov    %edi,%r12d
    12bc:	55                   	push   %rbp
    12bd:	48 8d 2d 1c 2b 00 00 	lea    0x2b1c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    12c4:	53                   	push   %rbx
    12c5:	4c 29 fd             	sub    %r15,%rbp
    12c8:	48 83 ec 08          	sub    $0x8,%rsp
    12cc:	e8 2f fd ff ff       	callq  1000 <_init>
    12d1:	48 c1 fd 03          	sar    $0x3,%rbp
    12d5:	74 1f                	je     12f6 <__libc_csu_init+0x56>
    12d7:	31 db                	xor    %ebx,%ebx
    12d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12e0:	4c 89 f2             	mov    %r14,%rdx
    12e3:	4c 89 ee             	mov    %r13,%rsi
    12e6:	44 89 e7             	mov    %r12d,%edi
    12e9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    12ed:	48 83 c3 01          	add    $0x1,%rbx
    12f1:	48 39 dd             	cmp    %rbx,%rbp
    12f4:	75 ea                	jne    12e0 <__libc_csu_init+0x40>
    12f6:	48 83 c4 08          	add    $0x8,%rsp
    12fa:	5b                   	pop    %rbx
    12fb:	5d                   	pop    %rbp
    12fc:	41 5c                	pop    %r12
    12fe:	41 5d                	pop    %r13
    1300:	41 5e                	pop    %r14
    1302:	41 5f                	pop    %r15
    1304:	c3                   	retq   
    1305:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    130c:	00 00 00 00 

0000000000001310 <__libc_csu_fini>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001318 <_fini>:
    1318:	f3 0f 1e fa          	endbr64 
    131c:	48 83 ec 08          	sub    $0x8,%rsp
    1320:	48 83 c4 08          	add    $0x8,%rsp
    1324:	c3                   	retq   
