
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
    1093:	4c 8d 05 f6 08 00 00 	lea    0x8f6(%rip),%r8        # 1990 <__libc_csu_fini>
    109a:	48 8d 0d 7f 08 00 00 	lea    0x87f(%rip),%rcx        # 1920 <__libc_csu_init>
    10a1:	48 8d 3d 08 07 00 00 	lea    0x708(%rip),%rdi        # 17b0 <main>
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
  
  for (unsigned long long i = 0; i < n; ++i)
    11b4:	48 85 d2             	test   %rdx,%rdx
    11b7:	74 1e                	je     11d7 <dotprod+0x27>
    11b9:	31 c0                	xor    %eax,%eax
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    d += a[i] * b[i];
    11c0:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    11c5:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    11ca:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  for (unsigned long long i = 0; i < n; ++i)
    11ce:	48 83 c0 01          	add    $0x1,%rax
    11d2:	48 39 c2             	cmp    %rax,%rdx
    11d5:	75 e9                	jne    11c0 <dotprod+0x10>
  
  return d;
    11d7:	c3                   	retq   
    11d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    11df:	00 

00000000000011e0 <dotprod_2x>:
double dotprod_2x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[2] = {0.0};
  

  if (n & 1)
    11e0:	f6 c2 01             	test   $0x1,%dl
    11e3:	75 47                	jne    122c <dotprod_2x+0x4c>
      
      return d[0] + d[1] + a[n-1] * b[n-1];
    }
  else
    {
      for (unsigned long long i = 0; i < n; i += 2)
    11e5:	48 85 d2             	test   %rdx,%rdx
    11e8:	74 7f                	je     1269 <dotprod_2x+0x89>
    11ea:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    11ee:	31 c0                	xor    %eax,%eax
    11f0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    11f4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11fb:	00 00 00 
    11fe:	66 90                	xchg   %ax,%ax
	{
	  d[0] += a[i] * b[i];
    1200:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
	  d[1] += a[i + 1] * b[i + 1];
    1205:	f2 0f 10 5c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm3
	  d[0] += a[i] * b[i];
    120b:	f2 0f 59 14 c6       	mulsd  (%rsi,%rax,8),%xmm2
	  d[1] += a[i + 1] * b[i + 1];
    1210:	f2 0f 59 5c c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm3
	  d[0] += a[i] * b[i];
    1216:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
	  d[1] += a[i + 1] * b[i + 1];
    121a:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
      for (unsigned long long i = 0; i < n; i += 2)
    121e:	48 83 c0 02          	add    $0x2,%rax
    1222:	48 39 d0             	cmp    %rdx,%rax
    1225:	72 d9                	jb     1200 <dotprod_2x+0x20>
    1227:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
	}

      return d[0] + d[1];
    }
}
    122b:	c3                   	retq   
      for (unsigned long long i = 0; i < n_1; i += 2)
    122c:	48 89 d0             	mov    %rdx,%rax
    122f:	48 83 c0 ff          	add    $0xffffffffffffffff,%rax
    1233:	74 41                	je     1276 <dotprod_2x+0x96>
    1235:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1239:	31 c9                	xor    %ecx,%ecx
    123b:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    123f:	90                   	nop
	  d[0] += a[i] * b[i];
    1240:	f2 0f 10 14 cf       	movsd  (%rdi,%rcx,8),%xmm2
	  d[1] += a[i + 1] * b[i + 1];
    1245:	f2 0f 10 5c cf 08    	movsd  0x8(%rdi,%rcx,8),%xmm3
	  d[0] += a[i] * b[i];
    124b:	f2 0f 59 14 ce       	mulsd  (%rsi,%rcx,8),%xmm2
	  d[1] += a[i + 1] * b[i + 1];
    1250:	f2 0f 59 5c ce 08    	mulsd  0x8(%rsi,%rcx,8),%xmm3
	  d[0] += a[i] * b[i];
    1256:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
	  d[1] += a[i + 1] * b[i + 1];
    125a:	f2 0f 58 c3          	addsd  %xmm3,%xmm0
      for (unsigned long long i = 0; i < n_1; i += 2)
    125e:	48 83 c1 02          	add    $0x2,%rcx
    1262:	48 39 c1             	cmp    %rax,%rcx
    1265:	72 d9                	jb     1240 <dotprod_2x+0x60>
    1267:	eb 15                	jmp    127e <dotprod_2x+0x9e>
    1269:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    126d:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1271:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
}
    1275:	c3                   	retq   
    1276:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    127a:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
      return d[0] + d[1] + a[n-1] * b[n-1];
    127e:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
    1282:	f2 0f 10 44 d7 f8    	movsd  -0x8(%rdi,%rdx,8),%xmm0
    1288:	f2 0f 59 44 d6 f8    	mulsd  -0x8(%rsi,%rdx,8),%xmm0
    128e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
}
    1292:	c3                   	retq   
    1293:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    129a:	00 00 00 
    129d:	0f 1f 00             	nopl   (%rax)

00000000000012a0 <dotprod_4x>:
double dotprod_4x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[4] = {0.0};
  unsigned long long test = n % 4;
  
  for (unsigned long long i = 0; i < n; i += 4)
    12a0:	48 85 d2             	test   %rdx,%rdx
    12a3:	74 69                	je     130e <dotprod_4x+0x6e>
    12a5:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    12a9:	31 c0                	xor    %eax,%eax
    12ab:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    12af:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    12b3:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    12b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    12be:	00 00 
    {
      d[0] += a[i] * b[i];
    12c0:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    12c5:	f2 0f 10 6c c7 08    	movsd  0x8(%rdi,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    12cb:	f2 0f 59 24 c6       	mulsd  (%rsi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    12d0:	f2 0f 59 6c c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm5
      d[0] += a[i] * b[i];
    12d6:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
      d[2] += a[i + 2] * b[i + 2];
    12da:	f2 0f 10 64 c7 10    	movsd  0x10(%rdi,%rax,8),%xmm4
    12e0:	f2 0f 59 64 c6 10    	mulsd  0x10(%rsi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    12e6:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
      d[3] += a[i + 3] * b[i + 3];
    12ea:	f2 0f 10 6c c7 18    	movsd  0x18(%rdi,%rax,8),%xmm5
    12f0:	f2 0f 59 6c c6 18    	mulsd  0x18(%rsi,%rax,8),%xmm5
      d[2] += a[i + 2] * b[i + 2];
    12f6:	f2 0f 58 cc          	addsd  %xmm4,%xmm1
      d[3] += a[i + 3] * b[i + 3];
    12fa:	f2 0f 58 c5          	addsd  %xmm5,%xmm0
  for (unsigned long long i = 0; i < n; i += 4)
    12fe:	48 83 c0 04          	add    $0x4,%rax
    1302:	48 39 d0             	cmp    %rdx,%rax
    1305:	72 b9                	jb     12c0 <dotprod_4x+0x20>
    }
  
  if (! test)
    1307:	f6 c2 03             	test   $0x3,%dl
    130a:	74 17                	je     1323 <dotprod_4x+0x83>
    130c:	eb 39                	jmp    1347 <dotprod_4x+0xa7>
    130e:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    1312:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1316:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    131a:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    131e:	f6 c2 03             	test   $0x3,%dl
    1321:	75 24                	jne    1347 <dotprod_4x+0xa7>
    1323:	48 83 fa 02          	cmp    $0x2,%rdx
    1327:	76 1e                	jbe    1347 <dotprod_4x+0xa7>
    {
      unsigned long long n_4 = n - 4;

      for (unsigned long long i = n_4 + 1; i < n; ++i)
    1329:	48 8d 42 fd          	lea    -0x3(%rdx),%rax
    132d:	0f 1f 00             	nopl   (%rax)
	  d[0] += a[i] * b[i];
    1330:	f2 0f 10 24 c7       	movsd  (%rdi,%rax,8),%xmm4
    1335:	f2 0f 59 24 c6       	mulsd  (%rsi,%rax,8),%xmm4
    133a:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
      for (unsigned long long i = n_4 + 1; i < n; ++i)
    133e:	48 83 c0 01          	add    $0x1,%rax
    1342:	48 39 d0             	cmp    %rdx,%rax
    1345:	72 e9                	jb     1330 <dotprod_4x+0x90>
    }

  return d[0] + d[1] + d[2] + d[3];
    1347:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    134b:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
    134f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    1353:	c3                   	retq   
    1354:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    135b:	00 00 00 
    135e:	66 90                	xchg   %ax,%ax

0000000000001360 <dotprod_8x>:
double dotprod_8x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[8] = {0.0};
  unsigned long long test = n % 8;

  for (unsigned long long i = 0; i < n; i += 8)
    1360:	48 85 d2             	test   %rdx,%rdx
    1363:	0f 84 bb 00 00 00    	je     1424 <dotprod_8x+0xc4>
    1369:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    136d:	31 c0                	xor    %eax,%eax
    136f:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1373:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1377:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    137c:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1381:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1385:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    1389:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    138d:	0f 1f 00             	nopl   (%rax)
    {
      d[0] += a[i] * b[i];
    1390:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
      d[1] += a[i + 1] * b[i + 1];
    1395:	f2 0f 10 54 c7 08    	movsd  0x8(%rdi,%rax,8),%xmm2
      d[0] += a[i] * b[i];
    139b:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
      d[1] += a[i + 1] * b[i + 1];
    13a0:	f2 0f 59 54 c6 08    	mulsd  0x8(%rsi,%rax,8),%xmm2
      d[0] += a[i] * b[i];
    13a6:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
      d[2] += a[i + 2] * b[i + 2];
    13aa:	f2 0f 10 4c c7 10    	movsd  0x10(%rdi,%rax,8),%xmm1
    13b0:	f2 0f 59 4c c6 10    	mulsd  0x10(%rsi,%rax,8),%xmm1
      d[1] += a[i + 1] * b[i + 1];
    13b6:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
      d[3] += a[i + 3] * b[i + 3];
    13ba:	f2 0f 10 54 c7 18    	movsd  0x18(%rdi,%rax,8),%xmm2
    13c0:	f2 0f 59 54 c6 18    	mulsd  0x18(%rsi,%rax,8),%xmm2
      d[2] += a[i + 2] * b[i + 2];
    13c6:	f2 0f 58 e9          	addsd  %xmm1,%xmm5
      d[4] += a[i + 4] * b[i + 4];
    13ca:	f2 0f 10 4c c7 20    	movsd  0x20(%rdi,%rax,8),%xmm1
    13d0:	f2 0f 59 4c c6 20    	mulsd  0x20(%rsi,%rax,8),%xmm1
      d[3] += a[i + 3] * b[i + 3];
    13d6:	f2 0f 58 e2          	addsd  %xmm2,%xmm4
      d[5] += a[i + 5] * b[i + 5];
    13da:	f2 0f 10 54 c7 28    	movsd  0x28(%rdi,%rax,8),%xmm2
    13e0:	f2 0f 59 54 c6 28    	mulsd  0x28(%rsi,%rax,8),%xmm2
      d[4] += a[i + 4] * b[i + 4];
    13e6:	f2 0f 58 d9          	addsd  %xmm1,%xmm3
      d[6] += a[i + 6] * b[i + 6];
    13ea:	f2 0f 10 4c c7 30    	movsd  0x30(%rdi,%rax,8),%xmm1
    13f0:	f2 0f 59 4c c6 30    	mulsd  0x30(%rsi,%rax,8),%xmm1
      d[5] += a[i + 5] * b[i + 5];
    13f6:	f2 44 0f 58 ca       	addsd  %xmm2,%xmm9
      d[7] += a[i + 7] * b[i + 7];
    13fb:	f2 0f 10 54 c7 38    	movsd  0x38(%rdi,%rax,8),%xmm2
    1401:	f2 0f 59 54 c6 38    	mulsd  0x38(%rsi,%rax,8),%xmm2
      d[6] += a[i + 6] * b[i + 6];
    1407:	f2 44 0f 58 c1       	addsd  %xmm1,%xmm8
      d[7] += a[i + 7] * b[i + 7];
    140c:	f2 0f 58 c2          	addsd  %xmm2,%xmm0
  for (unsigned long long i = 0; i < n; i += 8)
    1410:	48 83 c0 08          	add    $0x8,%rax
    1414:	48 39 d0             	cmp    %rdx,%rax
    1417:	0f 82 73 ff ff ff    	jb     1390 <dotprod_8x+0x30>
    }

  if (! test)
    141d:	f6 c2 07             	test   $0x7,%dl
    1420:	74 29                	je     144b <dotprod_8x+0xeb>
    1422:	eb 53                	jmp    1477 <dotprod_8x+0x117>
    1424:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    1428:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    142c:	66 0f 57 db          	xorpd  %xmm3,%xmm3
    1430:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    1435:	66 45 0f 57 c0       	xorpd  %xmm8,%xmm8
    143a:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    143e:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    1442:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    1446:	f6 c2 07             	test   $0x7,%dl
    1449:	75 2c                	jne    1477 <dotprod_8x+0x117>
    144b:	48 83 fa 06          	cmp    $0x6,%rdx
    144f:	76 26                	jbe    1477 <dotprod_8x+0x117>
    {
      unsigned long long n_8 = n - 8;

      for (unsigned long long i = n_8 + 1; i < n; ++i)
    1451:	48 8d 42 f9          	lea    -0x7(%rdx),%rax
    1455:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    145c:	00 00 00 
    145f:	90                   	nop
	  d[0] += a[i] * b[i];
    1460:	f2 0f 10 0c c7       	movsd  (%rdi,%rax,8),%xmm1
    1465:	f2 0f 59 0c c6       	mulsd  (%rsi,%rax,8),%xmm1
    146a:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
      for (unsigned long long i = n_8 + 1; i < n; ++i)
    146e:	48 83 c0 01          	add    $0x1,%rax
    1472:	48 39 d0             	cmp    %rdx,%rax
    1475:	72 e9                	jb     1460 <dotprod_8x+0x100>
    }
  
  return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7];
    1477:	f2 0f 58 fe          	addsd  %xmm6,%xmm7
    147b:	f2 0f 58 ef          	addsd  %xmm7,%xmm5
    147f:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    1483:	f2 0f 58 dc          	addsd  %xmm4,%xmm3
    1487:	f2 44 0f 58 cb       	addsd  %xmm3,%xmm9
    148c:	f2 45 0f 58 c1       	addsd  %xmm9,%xmm8
    1491:	f2 41 0f 58 c0       	addsd  %xmm8,%xmm0
    1496:	c3                   	retq   
    1497:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    149e:	00 00 

00000000000014a0 <dotprod_16x>:
double dotprod_16x(double *restrict a, double *restrict b, unsigned long long n)
{
  double d[16] = {0.0};
  unsigned long long test = n % 16;

  for (unsigned long long i = 0; i < n; i += 16)
    14a0:	48 85 d2             	test   %rdx,%rdx
    14a3:	0f 84 d9 01 00 00    	je     1682 <dotprod_16x+0x1e2>
    14a9:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    14ad:	31 c0                	xor    %eax,%eax
    14af:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    14b4:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    14b8:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    14bc:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    14c0:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    14c4:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    14c8:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    14cd:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14d1:	f2 0f 11 54 24 e8    	movsd  %xmm2,-0x18(%rsp)
    14d7:	66 45 0f 57 f6       	xorpd  %xmm14,%xmm14
    14dc:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14e0:	f2 0f 11 54 24 e0    	movsd  %xmm2,-0x20(%rsp)
    14e6:	66 45 0f 57 ed       	xorpd  %xmm13,%xmm13
    14eb:	66 0f 57 d2          	xorpd  %xmm2,%xmm2
    14ef:	f2 0f 11 54 24 d8    	movsd  %xmm2,-0x28(%rsp)
    14f5:	66 45 0f 57 ff       	xorpd  %xmm15,%xmm15
    14fa:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    14ff:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    1504:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    150b:	00 00 00 
    150e:	66 90                	xchg   %ax,%ax
    {
      d[0] += a[i] * b[i];
    1510:	f2 44 0f 10 04 c7    	movsd  (%rdi,%rax,8),%xmm8
    1516:	66 41 0f 28 d1       	movapd %xmm9,%xmm2
      d[1] += a[i + 1] * b[i + 1];
    151b:	f2 44 0f 10 4c c7 08 	movsd  0x8(%rdi,%rax,8),%xmm9
      d[0] += a[i] * b[i];
    1522:	f2 44 0f 59 04 c6    	mulsd  (%rsi,%rax,8),%xmm8
      d[1] += a[i + 1] * b[i + 1];
    1528:	f2 44 0f 59 4c c6 08 	mulsd  0x8(%rsi,%rax,8),%xmm9
      d[0] += a[i] * b[i];
    152f:	f2 41 0f 58 f8       	addsd  %xmm8,%xmm7
    1534:	66 0f 28 d9          	movapd %xmm1,%xmm3
    1538:	66 0f 28 ce          	movapd %xmm6,%xmm1
    153c:	66 0f 28 f5          	movapd %xmm5,%xmm6
    1540:	66 0f 28 ec          	movapd %xmm4,%xmm5
      d[2] += a[i + 2] * b[i + 2];
    1544:	f2 0f 10 64 c7 10    	movsd  0x10(%rdi,%rax,8),%xmm4
    154a:	f2 0f 59 64 c6 10    	mulsd  0x10(%rsi,%rax,8),%xmm4
      d[1] += a[i + 1] * b[i + 1];
    1550:	f2 45 0f 58 e1       	addsd  %xmm9,%xmm12
    1555:	66 44 0f 28 ca       	movapd %xmm2,%xmm9
    155a:	66 44 0f 28 c0       	movapd %xmm0,%xmm8
      d[3] += a[i + 3] * b[i + 3];
    155f:	f2 0f 10 54 c7 18    	movsd  0x18(%rdi,%rax,8),%xmm2
    1565:	f2 0f 59 54 c6 18    	mulsd  0x18(%rsi,%rax,8),%xmm2
      d[2] += a[i + 2] * b[i + 2];
    156b:	f2 44 0f 58 dc       	addsd  %xmm4,%xmm11
    1570:	66 0f 28 e5          	movapd %xmm5,%xmm4
    1574:	66 0f 28 ee          	movapd %xmm6,%xmm5
    1578:	66 0f 28 f1          	movapd %xmm1,%xmm6
    157c:	66 0f 28 cb          	movapd %xmm3,%xmm1
      d[4] += a[i + 4] * b[i + 4];
    1580:	f2 0f 10 44 c7 20    	movsd  0x20(%rdi,%rax,8),%xmm0
    1586:	f2 0f 59 44 c6 20    	mulsd  0x20(%rsi,%rax,8),%xmm0
      d[3] += a[i + 3] * b[i + 3];
    158c:	f2 44 0f 58 d2       	addsd  %xmm2,%xmm10
      d[5] += a[i + 5] * b[i + 5];
    1591:	f2 0f 10 54 c7 28    	movsd  0x28(%rdi,%rax,8),%xmm2
    1597:	f2 0f 59 54 c6 28    	mulsd  0x28(%rsi,%rax,8),%xmm2
      d[4] += a[i + 4] * b[i + 4];
    159d:	f2 44 0f 58 f8       	addsd  %xmm0,%xmm15
      d[6] += a[i + 6] * b[i + 6];
    15a2:	f2 0f 10 44 c7 30    	movsd  0x30(%rdi,%rax,8),%xmm0
    15a8:	f2 0f 59 44 c6 30    	mulsd  0x30(%rsi,%rax,8),%xmm0
    15ae:	f2 0f 10 5c 24 d8    	movsd  -0x28(%rsp),%xmm3
      d[5] += a[i + 5] * b[i + 5];
    15b4:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    15b8:	f2 0f 11 5c 24 d8    	movsd  %xmm3,-0x28(%rsp)
      d[7] += a[i + 7] * b[i + 7];
    15be:	f2 0f 10 54 c7 38    	movsd  0x38(%rdi,%rax,8),%xmm2
    15c4:	f2 0f 59 54 c6 38    	mulsd  0x38(%rsi,%rax,8),%xmm2
      d[6] += a[i + 6] * b[i + 6];
    15ca:	f2 44 0f 58 e8       	addsd  %xmm0,%xmm13
      d[8] += a[i + 8] * b[i + 8];
    15cf:	f2 0f 10 44 c7 40    	movsd  0x40(%rdi,%rax,8),%xmm0
    15d5:	f2 0f 59 44 c6 40    	mulsd  0x40(%rsi,%rax,8),%xmm0
    15db:	f2 0f 10 5c 24 e0    	movsd  -0x20(%rsp),%xmm3
      d[7] += a[i + 7] * b[i + 7];
    15e1:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    15e5:	f2 0f 11 5c 24 e0    	movsd  %xmm3,-0x20(%rsp)
      d[9] += a[i + 9] * b[i + 9];
    15eb:	f2 0f 10 54 c7 48    	movsd  0x48(%rdi,%rax,8),%xmm2
    15f1:	f2 0f 59 54 c6 48    	mulsd  0x48(%rsi,%rax,8),%xmm2
      d[8] += a[i + 8] * b[i + 8];
    15f7:	f2 44 0f 58 f0       	addsd  %xmm0,%xmm14
      d[10] += a[i + 10] * b[i + 10];
    15fc:	f2 0f 10 44 c7 50    	movsd  0x50(%rdi,%rax,8),%xmm0
    1602:	f2 0f 59 44 c6 50    	mulsd  0x50(%rsi,%rax,8),%xmm0
    1608:	f2 0f 10 5c 24 e8    	movsd  -0x18(%rsp),%xmm3
      d[9] += a[i + 9] * b[i + 9];
    160e:	f2 0f 58 da          	addsd  %xmm2,%xmm3
    1612:	f2 0f 11 5c 24 e8    	movsd  %xmm3,-0x18(%rsp)
      d[11] += a[i + 11] * b[i + 11];
    1618:	f2 0f 10 54 c7 58    	movsd  0x58(%rdi,%rax,8),%xmm2
    161e:	f2 0f 59 54 c6 58    	mulsd  0x58(%rsi,%rax,8),%xmm2
      d[10] += a[i + 10] * b[i + 10];
    1624:	f2 44 0f 58 c8       	addsd  %xmm0,%xmm9
      d[12] += a[i + 12] * b[i + 12];
    1629:	f2 0f 10 44 c7 60    	movsd  0x60(%rdi,%rax,8),%xmm0
    162f:	f2 0f 59 44 c6 60    	mulsd  0x60(%rsi,%rax,8),%xmm0
      d[11] += a[i + 11] * b[i + 11];
    1635:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
      d[13] += a[i + 13] * b[i + 13];
    1639:	f2 0f 10 54 c7 68    	movsd  0x68(%rdi,%rax,8),%xmm2
    163f:	f2 0f 59 54 c6 68    	mulsd  0x68(%rsi,%rax,8),%xmm2
      d[12] += a[i + 12] * b[i + 12];
    1645:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
      d[14] += a[i + 14] * b[i + 14];
    1649:	f2 0f 10 44 c7 70    	movsd  0x70(%rdi,%rax,8),%xmm0
    164f:	f2 0f 59 44 c6 70    	mulsd  0x70(%rsi,%rax,8),%xmm0
      d[13] += a[i + 13] * b[i + 13];
    1655:	f2 0f 58 ea          	addsd  %xmm2,%xmm5
      d[15] += a[i + 15] * b[i + 15];
    1659:	f2 0f 10 54 c7 78    	movsd  0x78(%rdi,%rax,8),%xmm2
    165f:	f2 0f 59 54 c6 78    	mulsd  0x78(%rsi,%rax,8),%xmm2
      d[14] += a[i + 14] * b[i + 14];
    1665:	f2 0f 58 e0          	addsd  %xmm0,%xmm4
      d[15] += a[i + 15] * b[i + 15];
    1669:	f2 44 0f 58 c2       	addsd  %xmm2,%xmm8
    166e:	66 41 0f 28 c0       	movapd %xmm8,%xmm0
  for (unsigned long long i = 0; i < n; i += 16)
    1673:	48 83 c0 10          	add    $0x10,%rax
    1677:	48 39 d0             	cmp    %rdx,%rax
    167a:	0f 82 90 fe ff ff    	jb     1510 <dotprod_16x+0x70>
    1680:	eb 59                	jmp    16db <dotprod_16x+0x23b>
    1682:	66 45 0f 57 db       	xorpd  %xmm11,%xmm11
    1687:	66 45 0f 57 d2       	xorpd  %xmm10,%xmm10
    168c:	66 45 0f 57 ff       	xorpd  %xmm15,%xmm15
    1691:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    1695:	f2 0f 11 44 24 d8    	movsd  %xmm0,-0x28(%rsp)
    169b:	66 45 0f 57 ed       	xorpd  %xmm13,%xmm13
    16a0:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16a4:	f2 0f 11 44 24 e0    	movsd  %xmm0,-0x20(%rsp)
    16aa:	66 45 0f 57 f6       	xorpd  %xmm14,%xmm14
    16af:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16b3:	f2 0f 11 44 24 e8    	movsd  %xmm0,-0x18(%rsp)
    16b9:	66 45 0f 57 c9       	xorpd  %xmm9,%xmm9
    16be:	66 0f 57 c9          	xorpd  %xmm1,%xmm1
    16c2:	66 0f 57 f6          	xorpd  %xmm6,%xmm6
    16c6:	66 0f 57 ed          	xorpd  %xmm5,%xmm5
    16ca:	66 0f 57 e4          	xorpd  %xmm4,%xmm4
    16ce:	66 0f 57 c0          	xorpd  %xmm0,%xmm0
    16d2:	66 45 0f 57 e4       	xorpd  %xmm12,%xmm12
    16d7:	66 0f 57 ff          	xorpd  %xmm7,%xmm7
    16db:	f2 44 0f 11 64 24 f8 	movsd  %xmm12,-0x8(%rsp)
    16e2:	f2 44 0f 11 5c 24 f0 	movsd  %xmm11,-0x10(%rsp)
    16e9:	66 45 0f 28 e2       	movapd %xmm10,%xmm12
    16ee:	f2 0f 10 54 24 d8    	movsd  -0x28(%rsp),%xmm2
    16f4:	f2 44 0f 10 54 24 e0 	movsd  -0x20(%rsp),%xmm10
    16fb:	f2 0f 10 5c 24 e8    	movsd  -0x18(%rsp),%xmm3
    }

  if (! test)
    1701:	f6 c2 0f             	test   $0xf,%dl
    1704:	75 43                	jne    1749 <dotprod_16x+0x2a9>
    1706:	48 83 fa 0e          	cmp    $0xe,%rdx
    170a:	66 45 0f 28 c6       	movapd %xmm14,%xmm8
    170f:	76 3d                	jbe    174e <dotprod_16x+0x2ae>
    {
      unsigned long long n_16 = n - 16;

      for (unsigned long long i = n_16 + 1; i < n; ++i)
    1711:	48 8d 42 f1          	lea    -0xf(%rdx),%rax
    1715:	66 45 0f 28 dd       	movapd %xmm13,%xmm11
    171a:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    171f:	f2 44 0f 10 6c 24 f0 	movsd  -0x10(%rsp),%xmm13
    1726:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    172d:	00 00 00 
	  d[0] += a[i] * b[i];
    1730:	f2 0f 10 14 c7       	movsd  (%rdi,%rax,8),%xmm2
    1735:	f2 0f 59 14 c6       	mulsd  (%rsi,%rax,8),%xmm2
    173a:	f2 0f 58 fa          	addsd  %xmm2,%xmm7
      for (unsigned long long i = n_16 + 1; i < n; ++i)
    173e:	48 83 c0 01          	add    $0x1,%rax
    1742:	48 39 d0             	cmp    %rdx,%rax
    1745:	72 e9                	jb     1730 <dotprod_16x+0x290>
    1747:	eb 16                	jmp    175f <dotprod_16x+0x2bf>
    1749:	66 45 0f 28 c6       	movapd %xmm14,%xmm8
    174e:	66 45 0f 28 dd       	movapd %xmm13,%xmm11
    1753:	66 44 0f 28 f2       	movapd %xmm2,%xmm14
    1758:	f2 44 0f 10 6c 24 f0 	movsd  -0x10(%rsp),%xmm13
    175f:	f2 0f 10 54 24 f8    	movsd  -0x8(%rsp),%xmm2
    }
  
    return d[0] + d[1] + d[2] + d[3] + d[4] + d[5] + d[6] + d[7] + d[8] + d[9] + d[10] + d[11] + d[12] + d[13] + d[14] + d[15];
    1765:	f2 0f 58 d7          	addsd  %xmm7,%xmm2
    1769:	f2 44 0f 58 ea       	addsd  %xmm2,%xmm13
    176e:	f2 45 0f 58 e5       	addsd  %xmm13,%xmm12
    1773:	f2 45 0f 58 fc       	addsd  %xmm12,%xmm15
    1778:	f2 45 0f 58 f7       	addsd  %xmm15,%xmm14
    177d:	f2 45 0f 58 de       	addsd  %xmm14,%xmm11
    1782:	f2 45 0f 58 d3       	addsd  %xmm11,%xmm10
    1787:	f2 45 0f 58 c2       	addsd  %xmm10,%xmm8
    178c:	f2 41 0f 58 d8       	addsd  %xmm8,%xmm3
    1791:	f2 44 0f 58 cb       	addsd  %xmm3,%xmm9
    1796:	f2 41 0f 58 c9       	addsd  %xmm9,%xmm1
    179b:	f2 0f 58 f1          	addsd  %xmm1,%xmm6
    179f:	f2 0f 58 ee          	addsd  %xmm6,%xmm5
    17a3:	f2 0f 58 e5          	addsd  %xmm5,%xmm4
    17a7:	f2 0f 58 c4          	addsd  %xmm4,%xmm0
    17ab:	c3                   	retq   
    17ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000017b0 <main>:
}

int main(int argc, char **argv)
{
    17b0:	41 57                	push   %r15
    17b2:	41 56                	push   %r14
    17b4:	53                   	push   %rbx
    17b5:	48 83 ec 30          	sub    $0x30,%rsp
  // Parse arguments
  unsigned long long n = parse_args(argc, argv);
    17b9:	e8 c2 f9 ff ff       	callq  1180 <parse_args>
    17be:	48 89 c3             	mov    %rax,%rbx

  // Alloc the memory
  double *a = aligned_alloc(64, n * sizeof(double));
    17c1:	4c 8d 3c c5 00 00 00 	lea    0x0(,%rax,8),%r15
    17c8:	00 
    17c9:	bf 40 00 00 00       	mov    $0x40,%edi
    17ce:	4c 89 fe             	mov    %r15,%rsi
    17d1:	e8 9a f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17d6:	49 89 c6             	mov    %rax,%r14
  double *b = aligned_alloc(64, n * sizeof(double));
    17d9:	bf 40 00 00 00       	mov    $0x40,%edi
    17de:	4c 89 fe             	mov    %r15,%rsi
    17e1:	e8 8a f8 ff ff       	callq  1070 <aligned_alloc@plt>
    17e6:	49 89 c7             	mov    %rax,%r15

  // Init arrays
  init(a, b, n);
    17e9:	4c 89 f7             	mov    %r14,%rdi
    17ec:	48 89 c6             	mov    %rax,%rsi
    17ef:	48 89 da             	mov    %rbx,%rdx
    17f2:	e8 e9 00 00 00       	callq  18e0 <init>

  // Compute
  double res = dotprod(a, b, n);
    17f7:	4c 89 f7             	mov    %r14,%rdi
    17fa:	4c 89 fe             	mov    %r15,%rsi
    17fd:	48 89 da             	mov    %rbx,%rdx
    1800:	e8 ab f9 ff ff       	callq  11b0 <dotprod>
    1805:	f2 0f 11 44 24 28    	movsd  %xmm0,0x28(%rsp)
  double res_2x = dotprod_2x(a, b, n);
    180b:	4c 89 f7             	mov    %r14,%rdi
    180e:	4c 89 fe             	mov    %r15,%rsi
    1811:	48 89 da             	mov    %rbx,%rdx
    1814:	e8 c7 f9 ff ff       	callq  11e0 <dotprod_2x>
    1819:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
  double res_4x = dotprod_4x(a, b, n);
    181f:	4c 89 f7             	mov    %r14,%rdi
    1822:	4c 89 fe             	mov    %r15,%rsi
    1825:	48 89 da             	mov    %rbx,%rdx
    1828:	e8 73 fa ff ff       	callq  12a0 <dotprod_4x>
    182d:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
  double res_8x = dotprod_8x(a, b, n);
    1833:	4c 89 f7             	mov    %r14,%rdi
    1836:	4c 89 fe             	mov    %r15,%rsi
    1839:	48 89 da             	mov    %rbx,%rdx
    183c:	e8 1f fb ff ff       	callq  1360 <dotprod_8x>
    1841:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  double res_16x = dotprod_16x(a, b, n);
    1847:	4c 89 f7             	mov    %r14,%rdi
    184a:	4c 89 fe             	mov    %r15,%rsi
    184d:	48 89 da             	mov    %rbx,%rdx
    1850:	e8 4b fc ff ff       	callq  14a0 <dotprod_16x>
    1855:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)

  // Print result
  printf("res = %lf\n", res);
    185b:	48 8d 3d a2 07 00 00 	lea    0x7a2(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1862:	f2 0f 10 44 24 28    	movsd  0x28(%rsp),%xmm0
    1868:	b0 01                	mov    $0x1,%al
    186a:	e8 d1 f7 ff ff       	callq  1040 <printf@plt>
  printf("res_2x = %lf\n", res_2x);
    186f:	48 8d 3d 99 07 00 00 	lea    0x799(%rip),%rdi        # 200f <_IO_stdin_used+0xf>
    1876:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
    187c:	b0 01                	mov    $0x1,%al
    187e:	e8 bd f7 ff ff       	callq  1040 <printf@plt>
  printf("res_4x = %lf\n", res_4x);
    1883:	48 8d 3d 93 07 00 00 	lea    0x793(%rip),%rdi        # 201d <_IO_stdin_used+0x1d>
    188a:	f2 0f 10 44 24 18    	movsd  0x18(%rsp),%xmm0
    1890:	b0 01                	mov    $0x1,%al
    1892:	e8 a9 f7 ff ff       	callq  1040 <printf@plt>
  printf("res_8x = %lf\n", res_8x);
    1897:	48 8d 3d 8d 07 00 00 	lea    0x78d(%rip),%rdi        # 202b <_IO_stdin_used+0x2b>
    189e:	f2 0f 10 44 24 10    	movsd  0x10(%rsp),%xmm0
    18a4:	b0 01                	mov    $0x1,%al
    18a6:	e8 95 f7 ff ff       	callq  1040 <printf@plt>
  printf("res_16x = %lf\n", res_16x);
    18ab:	48 8d 3d 87 07 00 00 	lea    0x787(%rip),%rdi        # 2039 <_IO_stdin_used+0x39>
    18b2:	f2 0f 10 44 24 08    	movsd  0x8(%rsp),%xmm0
    18b8:	b0 01                	mov    $0x1,%al
    18ba:	e8 81 f7 ff ff       	callq  1040 <printf@plt>

  // Free memory
  free(a);
    18bf:	4c 89 f7             	mov    %r14,%rdi
    18c2:	e8 69 f7 ff ff       	callq  1030 <free@plt>
  free(b);
    18c7:	4c 89 ff             	mov    %r15,%rdi
    18ca:	e8 61 f7 ff ff       	callq  1030 <free@plt>
  
  return 0;
    18cf:	31 c0                	xor    %eax,%eax
    18d1:	48 83 c4 30          	add    $0x30,%rsp
    18d5:	5b                   	pop    %rbx
    18d6:	41 5e                	pop    %r14
    18d8:	41 5f                	pop    %r15
    18da:	c3                   	retq   
    18db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000018e0 <init>:
  for (unsigned long long i = 0; i < n; i++)
    18e0:	48 85 d2             	test   %rdx,%rdx
    18e3:	74 2c                	je     1911 <init+0x31>
    18e5:	31 c0                	xor    %eax,%eax
    18e7:	49 b8 9a 99 99 99 99 	movabs $0x3fb999999999999a,%r8
    18ee:	99 b9 3f 
    18f1:	48 b9 00 00 00 00 00 	movabs $0x3ff0000000000000,%rcx
    18f8:	00 f0 3f 
    18fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
      a[i] = 0.1;
    1900:	4c 89 04 c7          	mov    %r8,(%rdi,%rax,8)
      b[i] = 1.0;
    1904:	48 89 0c c6          	mov    %rcx,(%rsi,%rax,8)
  for (unsigned long long i = 0; i < n; i++)
    1908:	48 83 c0 01          	add    $0x1,%rax
    190c:	48 39 c2             	cmp    %rax,%rdx
    190f:	75 ef                	jne    1900 <init+0x20>
}
    1911:	c3                   	retq   
    1912:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    1919:	00 00 00 
    191c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001920 <__libc_csu_init>:
    1920:	f3 0f 1e fa          	endbr64 
    1924:	41 57                	push   %r15
    1926:	4c 8d 3d ab 24 00 00 	lea    0x24ab(%rip),%r15        # 3dd8 <__frame_dummy_init_array_entry>
    192d:	41 56                	push   %r14
    192f:	49 89 d6             	mov    %rdx,%r14
    1932:	41 55                	push   %r13
    1934:	49 89 f5             	mov    %rsi,%r13
    1937:	41 54                	push   %r12
    1939:	41 89 fc             	mov    %edi,%r12d
    193c:	55                   	push   %rbp
    193d:	48 8d 2d 9c 24 00 00 	lea    0x249c(%rip),%rbp        # 3de0 <__do_global_dtors_aux_fini_array_entry>
    1944:	53                   	push   %rbx
    1945:	4c 29 fd             	sub    %r15,%rbp
    1948:	48 83 ec 08          	sub    $0x8,%rsp
    194c:	e8 af f6 ff ff       	callq  1000 <_init>
    1951:	48 c1 fd 03          	sar    $0x3,%rbp
    1955:	74 1f                	je     1976 <__libc_csu_init+0x56>
    1957:	31 db                	xor    %ebx,%ebx
    1959:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1960:	4c 89 f2             	mov    %r14,%rdx
    1963:	4c 89 ee             	mov    %r13,%rsi
    1966:	44 89 e7             	mov    %r12d,%edi
    1969:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    196d:	48 83 c3 01          	add    $0x1,%rbx
    1971:	48 39 dd             	cmp    %rbx,%rbp
    1974:	75 ea                	jne    1960 <__libc_csu_init+0x40>
    1976:	48 83 c4 08          	add    $0x8,%rsp
    197a:	5b                   	pop    %rbx
    197b:	5d                   	pop    %rbp
    197c:	41 5c                	pop    %r12
    197e:	41 5d                	pop    %r13
    1980:	41 5e                	pop    %r14
    1982:	41 5f                	pop    %r15
    1984:	c3                   	retq   
    1985:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    198c:	00 00 00 00 

0000000000001990 <__libc_csu_fini>:
    1990:	f3 0f 1e fa          	endbr64 
    1994:	c3                   	retq   

Déassemblage de la section .fini :

0000000000001998 <_fini>:
    1998:	f3 0f 1e fa          	endbr64 
    199c:	48 83 ec 08          	sub    $0x8,%rsp
    19a0:	48 83 c4 08          	add    $0x8,%rsp
    19a4:	c3                   	retq   
