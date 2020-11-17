
light_gcc:     format de fichier elf64-x86-64


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
    1080:	41 54                	push   %r12
    1082:	55                   	push   %rbp
    1083:	53                   	push   %rbx
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    1084:	e8 b7 01 00 00       	callq  1240 <parse_args>

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    1089:	bf 40 00 00 00       	mov    $0x40,%edi
    108e:	48 8d 2c c5 00 00 00 	lea    0x0(,%rax,8),%rbp
    1095:	00 
  unsigned long long n = parse_args(argc, argv);
    1096:	48 89 c3             	mov    %rax,%rbx
  double *a = aligned_alloc(64, n * sizeof(double));
    1099:	48 89 ee             	mov    %rbp,%rsi
    109c:	e8 cf ff ff ff       	callq  1070 <aligned_alloc@plt>
  double *b = aligned_alloc(64, n * sizeof(double));
    10a1:	48 89 ee             	mov    %rbp,%rsi
    10a4:	bf 40 00 00 00       	mov    $0x40,%edi
  double *a = aligned_alloc(64, n * sizeof(double));
    10a9:	49 89 c4             	mov    %rax,%r12
  double *b = aligned_alloc(64, n * sizeof(double));
    10ac:	e8 bf ff ff ff       	callq  1070 <aligned_alloc@plt>
    10b1:	48 89 c5             	mov    %rax,%rbp
  for (unsigned long long i = 0; i < n; i++)
    10b4:	48 85 db             	test   %rbx,%rbx
    10b7:	74 7f                	je     1138 <main+0xb8>
    10b9:	f2 0f 10 0d 4f 0f 00 	movsd  0xf4f(%rip),%xmm1        # 2010 <_IO_stdin_used+0x10>
    10c0:	00 
    10c1:	f2 0f 10 05 4f 0f 00 	movsd  0xf4f(%rip),%xmm0        # 2018 <_IO_stdin_used+0x18>
    10c8:	00 
    10c9:	31 c0                	xor    %eax,%eax
    10cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    10d0:	f2 41 0f 11 0c c4    	movsd  %xmm1,(%r12,%rax,8)
      b[i] = 0.001;
    10d6:	48 89 c2             	mov    %rax,%rdx
    10d9:	f2 0f 11 44 c5 00    	movsd  %xmm0,0x0(%rbp,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    10df:	48 8d 40 01          	lea    0x1(%rax),%rax
    10e3:	48 39 c3             	cmp    %rax,%rbx
    10e6:	75 e8                	jne    10d0 <main+0x50>
    10e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    10ec:	31 c0                	xor    %eax,%eax
    10ee:	66 90                	xchg   %ax,%ax
    d += a[i] * b[i];
    10f0:	f2 41 0f 10 04 c4    	movsd  (%r12,%rax,8),%xmm0
    10f6:	f2 0f 59 44 c5 00    	mulsd  0x0(%rbp,%rax,8),%xmm0
    10fc:	48 89 c1             	mov    %rax,%rcx
  for (unsigned long long i = 0; i < n; i++)
    10ff:	48 83 c0 01          	add    $0x1,%rax
    d += a[i] * b[i];
    1103:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i++)
    1107:	48 39 d1             	cmp    %rdx,%rcx
    110a:	75 e4                	jne    10f0 <main+0x70>

  // Compute
  double res = dotprod(a, b, n);

  // Print result
  printf("res = %lf\n", res);
    110c:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1110:	48 8d 3d ed 0e 00 00 	lea    0xeed(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1117:	b8 01 00 00 00       	mov    $0x1,%eax
    111c:	e8 1f ff ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    1121:	4c 89 e7             	mov    %r12,%rdi
    1124:	e8 07 ff ff ff       	callq  1030 <free@plt>
  free(b);
    1129:	48 89 ef             	mov    %rbp,%rdi
    112c:	e8 ff fe ff ff       	callq  1030 <free@plt>
  
  return 0;
}
    1131:	5b                   	pop    %rbx
    1132:	31 c0                	xor    %eax,%eax
    1134:	5d                   	pop    %rbp
    1135:	41 5c                	pop    %r12
    1137:	c3                   	retq   
  double d = 0.0;
    1138:	66 0f ef c9          	pxor   %xmm1,%xmm1
    113c:	eb ce                	jmp    110c <main+0x8c>
    113e:	66 90                	xchg   %ax,%ax

0000000000001140 <_start>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	31 ed                	xor    %ebp,%ebp
    1146:	49 89 d1             	mov    %rdx,%r9
    1149:	5e                   	pop    %rsi
    114a:	48 89 e2             	mov    %rsp,%rdx
    114d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1151:	50                   	push   %rax
    1152:	54                   	push   %rsp
    1153:	4c 8d 05 b6 01 00 00 	lea    0x1b6(%rip),%r8        # 1310 <__libc_csu_fini>
    115a:	48 8d 0d 3f 01 00 00 	lea    0x13f(%rip),%rcx        # 12a0 <__libc_csu_init>
    1161:	48 8d 3d 18 ff ff ff 	lea    -0xe8(%rip),%rdi        # 1080 <main>
    1168:	ff 15 72 2e 00 00    	callq  *0x2e72(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    116e:	f4                   	hlt    
    116f:	90                   	nop

0000000000001170 <deregister_tm_clones>:
    1170:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4050 <__TMC_END__>
    1177:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4050 <__TMC_END__>
    117e:	48 39 f8             	cmp    %rdi,%rax
    1181:	74 15                	je     1198 <deregister_tm_clones+0x28>
    1183:	48 8b 05 4e 2e 00 00 	mov    0x2e4e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    118a:	48 85 c0             	test   %rax,%rax
    118d:	74 09                	je     1198 <deregister_tm_clones+0x28>
    118f:	ff e0                	jmpq   *%rax
    1191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1198:	c3                   	retq   
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4050 <__TMC_END__>
    11a7:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4050 <__TMC_END__>
    11ae:	48 29 fe             	sub    %rdi,%rsi
    11b1:	48 89 f0             	mov    %rsi,%rax
    11b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11b8:	48 c1 f8 03          	sar    $0x3,%rax
    11bc:	48 01 c6             	add    %rax,%rsi
    11bf:	48 d1 fe             	sar    %rsi
    11c2:	74 14                	je     11d8 <register_tm_clones+0x38>
    11c4:	48 8b 05 25 2e 00 00 	mov    0x2e25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    11cb:	48 85 c0             	test   %rax,%rax
    11ce:	74 08                	je     11d8 <register_tm_clones+0x38>
    11d0:	ff e0                	jmpq   *%rax
    11d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11d8:	c3                   	retq   
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <__do_global_dtors_aux>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4050 <__TMC_END__>
    11eb:	75 33                	jne    1220 <__do_global_dtors_aux+0x40>
    11ed:	55                   	push   %rbp
    11ee:	48 83 3d 02 2e 00 00 	cmpq   $0x0,0x2e02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11f5:	00 
    11f6:	48 89 e5             	mov    %rsp,%rbp
    11f9:	74 0d                	je     1208 <__do_global_dtors_aux+0x28>
    11fb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4048 <__dso_handle>
    1202:	ff 15 f0 2d 00 00    	callq  *0x2df0(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1208:	e8 63 ff ff ff       	callq  1170 <deregister_tm_clones>
    120d:	c6 05 3c 2e 00 00 01 	movb   $0x1,0x2e3c(%rip)        # 4050 <__TMC_END__>
    1214:	5d                   	pop    %rbp
    1215:	c3                   	retq   
    1216:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    121d:	00 00 00 
    1220:	c3                   	retq   
    1221:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1228:	00 00 00 00 
    122c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001230 <frame_dummy>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	e9 67 ff ff ff       	jmpq   11a0 <register_tm_clones>
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <parse_args>:
  if (argc != 2)
    1240:	83 ff 02             	cmp    $0x2,%edi
    1243:	75 10                	jne    1255 <parse_args+0x15>
  return strtoll(argv[1], NULL, 10);
    1245:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1249:	ba 0a 00 00 00       	mov    $0xa,%edx
    124e:	31 f6                	xor    %esi,%esi
    1250:	e9 fb fd ff ff       	jmpq   1050 <strtoll@plt>
{
    1255:	50                   	push   %rax
    exit(ARGS);
    1256:	bf 01 00 00 00       	mov    $0x1,%edi
    125b:	e8 00 fe ff ff       	callq  1060 <exit@plt>

0000000000001260 <dotprod>:
  for (unsigned long long i = 0; i < n; i++)
    1260:	48 85 d2             	test   %rdx,%rdx
    1263:	74 2b                	je     1290 <dotprod+0x30>
    1265:	31 c0                	xor    %eax,%eax
  double d = 0.0;
    1267:	66 0f ef c9          	pxor   %xmm1,%xmm1
    126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    1270:	f2 0f 10 04 c7       	movsd  (%rdi,%rax,8),%xmm0
    1275:	f2 0f 59 04 c6       	mulsd  (%rsi,%rax,8),%xmm0
  for (unsigned long long i = 0; i < n; i++)
    127a:	48 83 c0 01          	add    $0x1,%rax
    d += a[i] * b[i];
    127e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  for (unsigned long long i = 0; i < n; i++)
    1282:	48 39 c2             	cmp    %rax,%rdx
    1285:	75 e9                	jne    1270 <dotprod+0x10>
}
    1287:	66 0f 28 c1          	movapd %xmm1,%xmm0
    128b:	c3                   	retq   
    128c:	0f 1f 40 00          	nopl   0x0(%rax)
  double d = 0.0;
    1290:	66 0f ef c9          	pxor   %xmm1,%xmm1
}
    1294:	66 0f 28 c1          	movapd %xmm1,%xmm0
    1298:	c3                   	retq   
    1299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012a0 <__libc_csu_init>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	41 57                	push   %r15
    12a6:	4c 8d 3d 3b 2b 00 00 	lea    0x2b3b(%rip),%r15        # 3de8 <__frame_dummy_init_array_entry>
    12ad:	41 56                	push   %r14
    12af:	49 89 d6             	mov    %rdx,%r14
    12b2:	41 55                	push   %r13
    12b4:	49 89 f5             	mov    %rsi,%r13
    12b7:	41 54                	push   %r12
    12b9:	41 89 fc             	mov    %edi,%r12d
    12bc:	55                   	push   %rbp
    12bd:	48 8d 2d 2c 2b 00 00 	lea    0x2b2c(%rip),%rbp        # 3df0 <__do_global_dtors_aux_fini_array_entry>
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
