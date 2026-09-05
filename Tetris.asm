
/home/coderlava/Documents/marvel-chatgpt/Tetris.out:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400318 <.interp>:
  400318:	2f                   	(bad)
  400319:	6c                   	insb   (%dx),%es:(%rdi)
  40031a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400326:	78 2d                	js     400355 <__abi_tag-0x47>
  400328:	78 38                	js     400362 <__abi_tag-0x3a>
  40032a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400330:	6f                   	outsl  %ds:(%rsi),(%dx)
  400331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000400338 <.note.gnu.property>:
  400338:	04 00                	add    $0x0,%al
  40033a:	00 00                	add    %al,(%rax)
  40033c:	30 00                	xor    %al,(%rax)
  40033e:	00 00                	add    %al,(%rax)
  400340:	05 00 00 00 47       	add    $0x47000000,%eax
  400345:	4e 55                	rex.WRX push %rbp
  400347:	00 02                	add    %al,(%rdx)
  400349:	80 00 c0             	addb   $0xc0,(%rax)
  40034c:	04 00                	add    $0x0,%al
  40034e:	00 00                	add    %al,(%rax)
  400350:	01 00                	add    %eax,(%rax)
  400352:	00 00                	add    %al,(%rax)
  400354:	00 00                	add    %al,(%rax)
  400356:	00 00                	add    %al,(%rax)
  400358:	01 00                	add    %eax,(%rax)
  40035a:	01 c0                	add    %eax,%eax
  40035c:	04 00                	add    $0x0,%al
  40035e:	00 00                	add    %al,(%rax)
  400360:	01 00                	add    %eax,(%rax)
  400362:	00 00                	add    %al,(%rax)
  400364:	00 00                	add    %al,(%rax)
  400366:	00 00                	add    %al,(%rax)
  400368:	02 00                	add    (%rax),%al
  40036a:	01 c0                	add    %eax,%eax
  40036c:	04 00                	add    $0x0,%al
	...

Disassembly of section .note.gnu.build-id:

0000000000400378 <.note.gnu.build-id>:
  400378:	04 00                	add    $0x0,%al
  40037a:	00 00                	add    %al,(%rax)
  40037c:	14 00                	adc    $0x0,%al
  40037e:	00 00                	add    %al,(%rax)
  400380:	03 00                	add    (%rax),%eax
  400382:	00 00                	add    %al,(%rax)
  400384:	47                   	rex.RXB
  400385:	4e 55                	rex.WRX push %rbp
  400387:	00 ef                	add    %ch,%bh
  400389:	51                   	push   %rcx
  40038a:	45 97                	rex.RB xchg %eax,%r15d
  40038c:	3f                   	(bad)
  40038d:	e8 1a 0a ff 02       	call   33f0dac <_end+0x2feb984>
  400392:	eb 1a                	jmp    4003ae <__abi_tag+0x12>
  400394:	7d 27                	jge    4003bd <__abi_tag+0x21>
  400396:	8a dd                	mov    %ch,%bl
  400398:	56                   	push   %rsi
  400399:	6e                   	outsb  %ds:(%rsi),(%dx)
  40039a:	8c                   	.byte 0x8c
  40039b:	93                   	xchg   %eax,%ebx

Disassembly of section .note.ABI-tag:

000000000040039c <__abi_tag>:
  40039c:	04 00                	add    $0x0,%al
  40039e:	00 00                	add    %al,(%rax)
  4003a0:	10 00                	adc    %al,(%rax)
  4003a2:	00 00                	add    %al,(%rax)
  4003a4:	01 00                	add    %eax,(%rax)
  4003a6:	00 00                	add    %al,(%rax)
  4003a8:	47                   	rex.RXB
  4003a9:	4e 55                	rex.WRX push %rbp
  4003ab:	00 00                	add    %al,(%rax)
  4003ad:	00 00                	add    %al,(%rax)
  4003af:	00 03                	add    %al,(%rbx)
  4003b1:	00 00                	add    %al,(%rax)
  4003b3:	00 02                	add    %al,(%rdx)
  4003b5:	00 00                	add    %al,(%rax)
  4003b7:	00 00                	add    %al,(%rax)
  4003b9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000004003c0 <.gnu.hash>:
  4003c0:	02 00                	add    (%rax),%al
  4003c2:	00 00                	add    %al,(%rax)
  4003c4:	19 00                	sbb    %eax,(%rax)
  4003c6:	00 00                	add    %al,(%rax)
  4003c8:	01 00                	add    %eax,(%rax)
  4003ca:	00 00                	add    %al,(%rax)
  4003cc:	06                   	(bad)
  4003cd:	00 00                	add    %al,(%rax)
  4003cf:	00 00                	add    %al,(%rax)
  4003d1:	00 00                	add    %al,(%rax)
  4003d3:	01 00                	add    %eax,(%rax)
  4003d5:	80 00 00             	addb   $0x0,(%rax)
  4003d8:	19 00                	sbb    %eax,(%rax)
  4003da:	00 00                	add    %al,(%rax)
  4003dc:	00 00                	add    %al,(%rax)
  4003de:	00 00                	add    %al,(%rax)
  4003e0:	d9 2b                	fldcw  (%rbx)
  4003e2:	8c                   	.byte 0x8c
  4003e3:	1c                   	.byte 0x1c

Disassembly of section .dynsym:

00000000004003e8 <.dynsym>:
	...
  400400:	b1 00                	mov    $0x0,%cl
  400402:	00 00                	add    %al,(%rax)
  400404:	12 00                	adc    (%rax),%al
	...
  400416:	00 00                	add    %al,(%rax)
  400418:	1e                   	(bad)
  400419:	00 00                	add    %al,(%rax)
  40041b:	00 12                	add    %dl,(%rdx)
	...
  40042d:	00 00                	add    %al,(%rax)
  40042f:	00 37                	add    %dh,(%rdi)
  400431:	00 00                	add    %al,(%rax)
  400433:	00 12                	add    %dl,(%rdx)
	...
  400445:	00 00                	add    %al,(%rax)
  400447:	00 81 00 00 00 12    	add    %al,0x12000000(%rcx)
	...
  40045d:	00 00                	add    %al,(%rax)
  40045f:	00 a6 00 00 00 12    	add    %ah,0x12000000(%rsi)
	...
  400475:	00 00                	add    %al,(%rax)
  400477:	00 63 00             	add    %ah,0x0(%rbx)
  40047a:	00 00                	add    %al,(%rax)
  40047c:	12 00                	adc    (%rax),%al
	...
  40048e:	00 00                	add    %al,(%rax)
  400490:	53                   	push   %rbx
  400491:	00 00                	add    %al,(%rax)
  400493:	00 12                	add    %dl,(%rdx)
	...
  4004a5:	00 00                	add    %al,(%rax)
  4004a7:	00 96 00 00 00 12    	add    %dl,0x12000000(%rsi)
	...
  4004bd:	00 00                	add    %al,(%rax)
  4004bf:	00 6d 00             	add    %ch,0x0(%rbp)
  4004c2:	00 00                	add    %al,(%rax)
  4004c4:	12 00                	adc    (%rax),%al
	...
  4004d6:	00 00                	add    %al,(%rax)
  4004d8:	75 00                	jne    4004da <__abi_tag+0x13e>
  4004da:	00 00                	add    %al,(%rax)
  4004dc:	12 00                	adc    (%rax),%al
	...
  4004ee:	00 00                	add    %al,(%rax)
  4004f0:	49 00 00             	rex.WB add %al,(%r8)
  4004f3:	00 12                	add    %dl,(%rdx)
	...
  400505:	00 00                	add    %al,(%rax)
  400507:	00 c3                	add    %al,%bl
  400509:	00 00                	add    %al,(%rax)
  40050b:	00 12                	add    %dl,(%rdx)
	...
  40051d:	00 00                	add    %al,(%rax)
  40051f:	00 01                	add    %al,(%rcx)
  400521:	00 00                	add    %al,(%rax)
  400523:	00 20                	add    %ah,(%rax)
	...
  400535:	00 00                	add    %al,(%rax)
  400537:	00 29                	add    %ch,(%rcx)
  400539:	00 00                	add    %al,(%rax)
  40053b:	00 12                	add    %dl,(%rdx)
	...
  40054d:	00 00                	add    %al,(%rax)
  40054f:	00 ac 00 00 00 12 00 	add    %ch,0x120000(%rax,%rax,1)
	...
  400566:	00 00                	add    %al,(%rax)
  400568:	8e 00                	mov    (%rax),%es
  40056a:	00 00                	add    %al,(%rax)
  40056c:	12 00                	adc    (%rax),%al
	...
  40057e:	00 00                	add    %al,(%rax)
  400580:	42 00 00             	rex.X add %al,(%rax)
  400583:	00 12                	add    %dl,(%rdx)
	...
  400595:	00 00                	add    %al,(%rax)
  400597:	00 30                	add    %dh,(%rax)
  400599:	00 00                	add    %al,(%rax)
  40059b:	00 12                	add    %dl,(%rdx)
	...
  4005ad:	00 00                	add    %al,(%rax)
  4005af:	00 5c 00 00          	add    %bl,0x0(%rax,%rax,1)
  4005b3:	00 12                	add    %dl,(%rdx)
	...
  4005c5:	00 00                	add    %al,(%rax)
  4005c7:	00 17                	add    %dl,(%rdi)
  4005c9:	00 00                	add    %al,(%rax)
  4005cb:	00 12                	add    %dl,(%rdx)
	...
  4005dd:	00 00                	add    %al,(%rax)
  4005df:	00 88 00 00 00 12    	add    %cl,0x12000000(%rax)
	...
  4005f5:	00 00                	add    %al,(%rax)
  4005f7:	00 9d 00 00 00 12    	add    %bl,0x12000000(%rbp)
	...
  40060d:	00 00                	add    %al,(%rax)
  40060f:	00 27                	add    %ah,(%rdi)
  400611:	00 00                	add    %al,(%rax)
  400613:	00 12                	add    %dl,(%rdx)
	...
  400625:	00 00                	add    %al,(%rax)
  400627:	00 c4                	add    %al,%ah
  400629:	00 00                	add    %al,(%rax)
  40062b:	00 12                	add    %dl,(%rdx)
	...
  40063d:	00 00                	add    %al,(%rax)
  40063f:	00 10                	add    %dl,(%rax)
  400641:	00 00                	add    %al,(%rax)
  400643:	00 11                	add    %dl,(%rcx)
  400645:	00 19                	add    %bl,(%rcx)
  400647:	00 c0                	add    %al,%al
  400649:	50                   	push   %rax
  40064a:	40 00 00             	rex add %al,(%rax)
  40064d:	00 00                	add    %al,(%rax)
  40064f:	00 08                	add    %cl,(%rax)
  400651:	00 00                	add    %al,(%rax)
  400653:	00 00                	add    %al,(%rax)
  400655:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400658 <.dynstr>:
  400658:	00 5f 5f             	add    %bl,0x5f(%rdi)
  40065b:	67 6d                	insl   (%dx),%es:(%edi)
  40065d:	6f                   	outsl  %ds:(%rsi),(%dx)
  40065e:	6e                   	outsb  %ds:(%rsi),(%dx)
  40065f:	5f                   	pop    %rdi
  400660:	73 74                	jae    4006d6 <__abi_tag+0x33a>
  400662:	61                   	(bad)
  400663:	72 74                	jb     4006d9 <__abi_tag+0x33d>
  400665:	5f                   	pop    %rdi
  400666:	5f                   	pop    %rdi
  400667:	00 73 74             	add    %dh,0x74(%rbx)
  40066a:	64 73 63             	fs jae 4006d0 <__abi_tag+0x334>
  40066d:	72 00                	jb     40066f <__abi_tag+0x2d3>
  40066f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400670:	6f                   	outsl  %ds:(%rsi),(%dx)
  400671:	65 63 68 6f          	movsxd %gs:0x6f(%rax),%ebp
  400675:	00 77 61             	add    %dh,0x61(%rdi)
  400678:	74 74                	je     4006ee <__abi_tag+0x352>
  40067a:	72 5f                	jb     4006db <__abi_tag+0x33f>
  40067c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40067d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40067e:	00 6d 76             	add    %ch,0x76(%rbp)
  400681:	70 72                	jo     4006f5 <__abi_tag+0x359>
  400683:	69 6e 74 77 00 77 67 	imul   $0x67770077,0x74(%rsi),%ebp
  40068a:	65 74 63             	gs je  4006f0 <__abi_tag+0x354>
  40068d:	68 00 68 61 73       	push   $0x73616800
  400692:	5f                   	pop    %rdi
  400693:	63 6f 6c             	movsxd 0x6c(%rdi),%ebp
  400696:	6f                   	outsl  %ds:(%rsi),(%dx)
  400697:	72 73                	jb     40070c <__abi_tag+0x370>
  400699:	00 65 6e             	add    %ah,0x6e(%rbp)
  40069c:	64 77 69             	fs ja  400708 <__abi_tag+0x36c>
  40069f:	6e                   	outsb  %ds:(%rsi),(%dx)
  4006a0:	00 77 61             	add    %dh,0x61(%rdi)
  4006a3:	74 74                	je     400719 <__abi_tag+0x37d>
  4006a5:	72 5f                	jb     400706 <__abi_tag+0x36a>
  4006a7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006a8:	66 66 00 77 72       	data16 data16 add %dh,0x72(%rdi)
  4006ad:	65 66 72 65          	gs data16 jb 400716 <__abi_tag+0x37a>
  4006b1:	73 68                	jae    40071b <__abi_tag+0x37f>
  4006b3:	00 77 63             	add    %dh,0x63(%rdi)
  4006b6:	6c                   	insb   (%dx),%es:(%rdi)
  4006b7:	65 61                	gs (bad)
  4006b9:	72 00                	jb     4006bb <__abi_tag+0x31f>
  4006bb:	69 6e 69 74 5f 70 61 	imul   $0x61705f74,0x69(%rsi),%ebp
  4006c2:	69 72 00 69 6e 69 74 	imul   $0x74696e69,0x0(%rdx),%esi
  4006c9:	73 63                	jae    40072e <__abi_tag+0x392>
  4006cb:	72 00                	jb     4006cd <__abi_tag+0x331>
  4006cd:	73 74                	jae    400743 <__abi_tag+0x3a7>
  4006cf:	61                   	(bad)
  4006d0:	72 74                	jb     400746 <__abi_tag+0x3aa>
  4006d2:	5f                   	pop    %rdi
  4006d3:	63 6f 6c             	movsxd 0x6c(%rdi),%ebp
  4006d6:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006d7:	72 00                	jb     4006d9 <__abi_tag+0x33d>
  4006d9:	63 62 72             	movsxd 0x72(%rdx),%esp
  4006dc:	65 61                	gs (bad)
  4006de:	6b 00 6e             	imul   $0x6e,(%rax),%eax
  4006e1:	61                   	(bad)
  4006e2:	70 6d                	jo     400751 <__abi_tag+0x3b5>
  4006e4:	73 00                	jae    4006e6 <__abi_tag+0x34a>
  4006e6:	6e                   	outsb  %ds:(%rsi),(%dx)
  4006e7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4006e8:	64 65 6c             	fs gs insb (%dx),%es:(%rdi)
  4006eb:	61                   	(bad)
  4006ec:	79 00                	jns    4006ee <__abi_tag+0x352>
  4006ee:	6b 65 79 70          	imul   $0x70,0x79(%rbp),%esp
  4006f2:	61                   	(bad)
  4006f3:	64 00 63 75          	add    %ah,%fs:0x75(%rbx)
  4006f7:	72 73                	jb     40076c <__abi_tag+0x3d0>
  4006f9:	5f                   	pop    %rdi
  4006fa:	73 65                	jae    400761 <__abi_tag+0x3c5>
  4006fc:	74 00                	je     4006fe <__abi_tag+0x362>
  4006fe:	63 6c 6f 63          	movsxd 0x63(%rdi,%rbp,2),%ebp
  400702:	6b 00 74             	imul   $0x74,(%rax),%eax
  400705:	69 6d 65 00 5f 5f 6c 	imul   $0x6c5f5f00,0x65(%rbp),%ebp
  40070c:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400713:	72 74                	jb     400789 <__abi_tag+0x3ed>
  400715:	5f                   	pop    %rdi
  400716:	6d                   	insl   (%dx),%es:(%rdi)
  400717:	61                   	(bad)
  400718:	69 6e 00 73 72 61 6e 	imul   $0x6e617273,0x0(%rsi),%ebp
  40071f:	64 00 6c 69 62       	add    %ch,%fs:0x62(%rcx,%rbp,2)
  400724:	6e                   	outsb  %ds:(%rsi),(%dx)
  400725:	63 75 72             	movsxd 0x72(%rbp),%esi
  400728:	73 65                	jae    40078f <__abi_tag+0x3f3>
  40072a:	73 2e                	jae    40075a <__abi_tag+0x3be>
  40072c:	73 6f                	jae    40079d <__abi_tag+0x401>
  40072e:	2e 36 00 6c 69 62    	cs ss add %ch,0x62(%rcx,%rbp,2)
  400734:	74 69                	je     40079f <__abi_tag+0x403>
  400736:	6e                   	outsb  %ds:(%rsi),(%dx)
  400737:	66 6f                	outsw  %ds:(%rsi),(%dx)
  400739:	2e 73 6f             	jae,pn 4007ab <__abi_tag+0x40f>
  40073c:	2e 36 00 6c 69 62    	cs ss add %ch,0x62(%rcx,%rbp,2)
  400742:	63 2e                	movsxd (%rsi),%ebp
  400744:	73 6f                	jae    4007b5 <__abi_tag+0x419>
  400746:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
  40074b:	49                   	rex.WB
  40074c:	42                   	rex.X
  40074d:	43 5f                	rex.XB pop %r15
  40074f:	32 2e                	xor    (%rsi),%ch
  400751:	32 2e                	xor    (%rsi),%ch
  400753:	35 00 47 4c 49       	xor    $0x494c4700,%eax
  400758:	42                   	rex.X
  400759:	43 5f                	rex.XB pop %r15
  40075b:	32 2e                	xor    (%rsi),%ch
  40075d:	33 34 00             	xor    (%rax,%rax,1),%esi

Disassembly of section .gnu.version:

0000000000400760 <.gnu.version>:
  400760:	00 00                	add    %al,(%rax)
  400762:	02 00                	add    (%rax),%al
  400764:	01 00                	add    %eax,(%rax)
  400766:	01 00                	add    %eax,(%rax)
  400768:	01 00                	add    %eax,(%rax)
  40076a:	03 00                	add    (%rax),%eax
  40076c:	01 00                	add    %eax,(%rax)
  40076e:	01 00                	add    %eax,(%rax)
  400770:	01 00                	add    %eax,(%rax)
  400772:	01 00                	add    %eax,(%rax)
  400774:	01 00                	add    %eax,(%rax)
  400776:	01 00                	add    %eax,(%rax)
  400778:	03 00                	add    (%rax),%eax
  40077a:	01 00                	add    %eax,(%rax)
  40077c:	01 00                	add    %eax,(%rax)
  40077e:	03 00                	add    (%rax),%eax
  400780:	01 00                	add    %eax,(%rax)
  400782:	01 00                	add    %eax,(%rax)
  400784:	01 00                	add    %eax,(%rax)
  400786:	01 00                	add    %eax,(%rax)
  400788:	01 00                	add    %eax,(%rax)
  40078a:	01 00                	add    %eax,(%rax)
  40078c:	01 00                	add    %eax,(%rax)
  40078e:	01 00                	add    %eax,(%rax)
  400790:	03 00                	add    (%rax),%eax
  400792:	01 00                	add    %eax,(%rax)

Disassembly of section .gnu.version_r:

0000000000400798 <.gnu.version_r>:
  400798:	01 00                	add    %eax,(%rax)
  40079a:	02 00                	add    (%rax),%al
  40079c:	e7 00                	out    %eax,$0x0
  40079e:	00 00                	add    %al,(%rax)
  4007a0:	10 00                	adc    %al,(%rax)
  4007a2:	00 00                	add    %al,(%rax)
  4007a4:	00 00                	add    %al,(%rax)
  4007a6:	00 00                	add    %al,(%rax)
  4007a8:	75 1a                	jne    4007c4 <__abi_tag+0x428>
  4007aa:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  4007b0:	f1                   	int1
  4007b1:	00 00                	add    %al,(%rax)
  4007b3:	00 10                	add    %dl,(%rax)
  4007b5:	00 00                	add    %al,(%rax)
  4007b7:	00 b4 91 96 06 00 00 	add    %dh,0x696(%rcx,%rdx,4)
  4007be:	02 00                	add    (%rax),%al
  4007c0:	fd                   	std
  4007c1:	00 00                	add    %al,(%rax)
  4007c3:	00 00                	add    %al,(%rax)
  4007c5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000004007c8 <.rela.dyn>:
  4007c8:	d8 4f 40             	fmuls  0x40(%rdi)
  4007cb:	00 00                	add    %al,(%rax)
  4007cd:	00 00                	add    %al,(%rax)
  4007cf:	00 06                	add    %al,(%rsi)
  4007d1:	00 00                	add    %al,(%rax)
  4007d3:	00 01                	add    %al,(%rcx)
	...
  4007dd:	00 00                	add    %al,(%rax)
  4007df:	00 e0                	add    %ah,%al
  4007e1:	4f                   	rex.WRXB
  4007e2:	40 00 00             	rex add %al,(%rax)
  4007e5:	00 00                	add    %al,(%rax)
  4007e7:	00 06                	add    %al,(%rsi)
  4007e9:	00 00                	add    %al,(%rax)
  4007eb:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 4007f1 <__abi_tag+0x455>
  4007f1:	00 00                	add    %al,(%rax)
  4007f3:	00 00                	add    %al,(%rax)
  4007f5:	00 00                	add    %al,(%rax)
  4007f7:	00 c0                	add    %al,%al
  4007f9:	50                   	push   %rax
  4007fa:	40 00 00             	rex add %al,(%rax)
  4007fd:	00 00                	add    %al,(%rax)
  4007ff:	00 05 00 00 00 19    	add    %al,0x19000000(%rip)        # 19400805 <_end+0x18ffb3dd>
	...

Disassembly of section .rela.plt:

0000000000400810 <.rela.plt>:
  400810:	00 50 40             	add    %dl,0x40(%rax)
  400813:	00 00                	add    %al,(%rax)
  400815:	00 00                	add    %al,(%rax)
  400817:	00 07                	add    %al,(%rdi)
  400819:	00 00                	add    %al,(%rax)
  40081b:	00 02                	add    %al,(%rdx)
	...
  400825:	00 00                	add    %al,(%rax)
  400827:	00 08                	add    %cl,(%rax)
  400829:	50                   	push   %rax
  40082a:	40 00 00             	rex add %al,(%rax)
  40082d:	00 00                	add    %al,(%rax)
  40082f:	00 07                	add    %al,(%rdi)
  400831:	00 00                	add    %al,(%rax)
  400833:	00 03                	add    %al,(%rbx)
	...
  40083d:	00 00                	add    %al,(%rax)
  40083f:	00 10                	add    %dl,(%rax)
  400841:	50                   	push   %rax
  400842:	40 00 00             	rex add %al,(%rax)
  400845:	00 00                	add    %al,(%rax)
  400847:	00 07                	add    %al,(%rdi)
  400849:	00 00                	add    %al,(%rax)
  40084b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400856:	00 00                	add    %al,(%rax)
  400858:	18 50 40             	sbb    %dl,0x40(%rax)
  40085b:	00 00                	add    %al,(%rax)
  40085d:	00 00                	add    %al,(%rax)
  40085f:	00 07                	add    %al,(%rdi)
  400861:	00 00                	add    %al,(%rax)
  400863:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400869 <__abi_tag+0x4cd>
  400869:	00 00                	add    %al,(%rax)
  40086b:	00 00                	add    %al,(%rax)
  40086d:	00 00                	add    %al,(%rax)
  40086f:	00 20                	add    %ah,(%rax)
  400871:	50                   	push   %rax
  400872:	40 00 00             	rex add %al,(%rax)
  400875:	00 00                	add    %al,(%rax)
  400877:	00 07                	add    %al,(%rdi)
  400879:	00 00                	add    %al,(%rax)
  40087b:	00 06                	add    %al,(%rsi)
	...
  400885:	00 00                	add    %al,(%rax)
  400887:	00 28                	add    %ch,(%rax)
  400889:	50                   	push   %rax
  40088a:	40 00 00             	rex add %al,(%rax)
  40088d:	00 00                	add    %al,(%rax)
  40088f:	00 07                	add    %al,(%rdi)
  400891:	00 00                	add    %al,(%rax)
  400893:	00 07                	add    %al,(%rdi)
	...
  40089d:	00 00                	add    %al,(%rax)
  40089f:	00 30                	add    %dh,(%rax)
  4008a1:	50                   	push   %rax
  4008a2:	40 00 00             	rex add %al,(%rax)
  4008a5:	00 00                	add    %al,(%rax)
  4008a7:	00 07                	add    %al,(%rdi)
  4008a9:	00 00                	add    %al,(%rax)
  4008ab:	00 08                	add    %cl,(%rax)
	...
  4008b5:	00 00                	add    %al,(%rax)
  4008b7:	00 38                	add    %bh,(%rax)
  4008b9:	50                   	push   %rax
  4008ba:	40 00 00             	rex add %al,(%rax)
  4008bd:	00 00                	add    %al,(%rax)
  4008bf:	00 07                	add    %al,(%rdi)
  4008c1:	00 00                	add    %al,(%rax)
  4008c3:	00 09                	add    %cl,(%rcx)
	...
  4008cd:	00 00                	add    %al,(%rax)
  4008cf:	00 40 50             	add    %al,0x50(%rax)
  4008d2:	40 00 00             	rex add %al,(%rax)
  4008d5:	00 00                	add    %al,(%rax)
  4008d7:	00 07                	add    %al,(%rdi)
  4008d9:	00 00                	add    %al,(%rax)
  4008db:	00 0a                	add    %cl,(%rdx)
	...
  4008e5:	00 00                	add    %al,(%rax)
  4008e7:	00 48 50             	add    %cl,0x50(%rax)
  4008ea:	40 00 00             	rex add %al,(%rax)
  4008ed:	00 00                	add    %al,(%rax)
  4008ef:	00 07                	add    %al,(%rdi)
  4008f1:	00 00                	add    %al,(%rax)
  4008f3:	00 0b                	add    %cl,(%rbx)
	...
  4008fd:	00 00                	add    %al,(%rax)
  4008ff:	00 50 50             	add    %dl,0x50(%rax)
  400902:	40 00 00             	rex add %al,(%rax)
  400905:	00 00                	add    %al,(%rax)
  400907:	00 07                	add    %al,(%rdi)
  400909:	00 00                	add    %al,(%rax)
  40090b:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  400916:	00 00                	add    %al,(%rax)
  400918:	58                   	pop    %rax
  400919:	50                   	push   %rax
  40091a:	40 00 00             	rex add %al,(%rax)
  40091d:	00 00                	add    %al,(%rax)
  40091f:	00 07                	add    %al,(%rdi)
  400921:	00 00                	add    %al,(%rax)
  400923:	00 0e                	add    %cl,(%rsi)
	...
  40092d:	00 00                	add    %al,(%rax)
  40092f:	00 60 50             	add    %ah,0x50(%rax)
  400932:	40 00 00             	rex add %al,(%rax)
  400935:	00 00                	add    %al,(%rax)
  400937:	00 07                	add    %al,(%rdi)
  400939:	00 00                	add    %al,(%rax)
  40093b:	00 0f                	add    %cl,(%rdi)
	...
  400945:	00 00                	add    %al,(%rax)
  400947:	00 68 50             	add    %ch,0x50(%rax)
  40094a:	40 00 00             	rex add %al,(%rax)
  40094d:	00 00                	add    %al,(%rax)
  40094f:	00 07                	add    %al,(%rdi)
  400951:	00 00                	add    %al,(%rax)
  400953:	00 10                	add    %dl,(%rax)
	...
  40095d:	00 00                	add    %al,(%rax)
  40095f:	00 70 50             	add    %dh,0x50(%rax)
  400962:	40 00 00             	rex add %al,(%rax)
  400965:	00 00                	add    %al,(%rax)
  400967:	00 07                	add    %al,(%rdi)
  400969:	00 00                	add    %al,(%rax)
  40096b:	00 11                	add    %dl,(%rcx)
	...
  400975:	00 00                	add    %al,(%rax)
  400977:	00 78 50             	add    %bh,0x50(%rax)
  40097a:	40 00 00             	rex add %al,(%rax)
  40097d:	00 00                	add    %al,(%rax)
  40097f:	00 07                	add    %al,(%rdi)
  400981:	00 00                	add    %al,(%rax)
  400983:	00 12                	add    %dl,(%rdx)
	...
  40098d:	00 00                	add    %al,(%rax)
  40098f:	00 80 50 40 00 00    	add    %al,0x4050(%rax)
  400995:	00 00                	add    %al,(%rax)
  400997:	00 07                	add    %al,(%rdi)
  400999:	00 00                	add    %al,(%rax)
  40099b:	00 13                	add    %dl,(%rbx)
	...
  4009a5:	00 00                	add    %al,(%rax)
  4009a7:	00 88 50 40 00 00    	add    %cl,0x4050(%rax)
  4009ad:	00 00                	add    %al,(%rax)
  4009af:	00 07                	add    %al,(%rdi)
  4009b1:	00 00                	add    %al,(%rax)
  4009b3:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
  4009be:	00 00                	add    %al,(%rax)
  4009c0:	90                   	nop
  4009c1:	50                   	push   %rax
  4009c2:	40 00 00             	rex add %al,(%rax)
  4009c5:	00 00                	add    %al,(%rax)
  4009c7:	00 07                	add    %al,(%rdi)
  4009c9:	00 00                	add    %al,(%rax)
  4009cb:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 4009d1 <__abi_tag+0x635>
  4009d1:	00 00                	add    %al,(%rax)
  4009d3:	00 00                	add    %al,(%rax)
  4009d5:	00 00                	add    %al,(%rax)
  4009d7:	00 98 50 40 00 00    	add    %bl,0x4050(%rax)
  4009dd:	00 00                	add    %al,(%rax)
  4009df:	00 07                	add    %al,(%rdi)
  4009e1:	00 00                	add    %al,(%rax)
  4009e3:	00 16                	add    %dl,(%rsi)
	...
  4009ed:	00 00                	add    %al,(%rax)
  4009ef:	00 a0 50 40 00 00    	add    %ah,0x4050(%rax)
  4009f5:	00 00                	add    %al,(%rax)
  4009f7:	00 07                	add    %al,(%rdi)
  4009f9:	00 00                	add    %al,(%rax)
  4009fb:	00 17                	add    %dl,(%rdi)
	...
  400a05:	00 00                	add    %al,(%rax)
  400a07:	00 a8 50 40 00 00    	add    %ch,0x4050(%rax)
  400a0d:	00 00                	add    %al,(%rax)
  400a0f:	00 07                	add    %al,(%rdi)
  400a11:	00 00                	add    %al,(%rax)
  400a13:	00 18                	add    %bl,(%rax)
	...

Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 d1 3f 00 00 	mov    0x3fd1(%rip),%rax        # 404fe0 <__gmon_start__@Base>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	call   *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	ret

Disassembly of section .plt:

0000000000401020 <wattr_on@plt-0x10>:
  401020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 404ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 404ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <wattr_on@plt>:
  401030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 405000 <wattr_on@Base>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401040 <has_colors@plt>:
  401040:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 405008 <has_colors@Base>
  401046:	68 01 00 00 00       	push   $0x1
  40104b:	e9 d0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401050 <cbreak@plt>:
  401050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 405010 <cbreak@Base>
  401056:	68 02 00 00 00       	push   $0x2
  40105b:	e9 c0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401060 <clock@plt>:
  401060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 405018 <clock@GLIBC_2.2.5>
  401066:	68 03 00 00 00       	push   $0x3
  40106b:	e9 b0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401070 <init_pair@plt>:
  401070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 405020 <init_pair@Base>
  401076:	68 04 00 00 00       	push   $0x4
  40107b:	e9 a0 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401080 <wrefresh@plt>:
  401080:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 405028 <wrefresh@Base>
  401086:	68 05 00 00 00       	push   $0x5
  40108b:	e9 90 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401090 <keypad@plt>:
  401090:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 405030 <keypad@Base>
  401096:	68 06 00 00 00       	push   $0x6
  40109b:	e9 80 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010a0 <initscr@plt>:
  4010a0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 405038 <initscr@Base>
  4010a6:	68 07 00 00 00       	push   $0x7
  4010ab:	e9 70 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010b0 <start_color@plt>:
  4010b0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 405040 <start_color@Base>
  4010b6:	68 08 00 00 00       	push   $0x8
  4010bb:	e9 60 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010c0 <wattr_off@plt>:
  4010c0:	ff 25 82 3f 00 00    	jmp    *0x3f82(%rip)        # 405048 <wattr_off@Base>
  4010c6:	68 09 00 00 00       	push   $0x9
  4010cb:	e9 50 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010d0 <srand@plt>:
  4010d0:	ff 25 7a 3f 00 00    	jmp    *0x3f7a(%rip)        # 405050 <srand@GLIBC_2.2.5>
  4010d6:	68 0a 00 00 00       	push   $0xa
  4010db:	e9 40 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010e0 <printw@plt>:
  4010e0:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 405058 <printw@Base>
  4010e6:	68 0b 00 00 00       	push   $0xb
  4010eb:	e9 30 ff ff ff       	jmp    401020 <_init+0x20>

00000000004010f0 <time@plt>:
  4010f0:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 405060 <time@GLIBC_2.2.5>
  4010f6:	68 0c 00 00 00       	push   $0xc
  4010fb:	e9 20 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401100 <nodelay@plt>:
  401100:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 405068 <nodelay@Base>
  401106:	68 0d 00 00 00       	push   $0xd
  40110b:	e9 10 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401110 <endwin@plt>:
  401110:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 405070 <endwin@Base>
  401116:	68 0e 00 00 00       	push   $0xe
  40111b:	e9 00 ff ff ff       	jmp    401020 <_init+0x20>

0000000000401120 <wgetch@plt>:
  401120:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 405078 <wgetch@Base>
  401126:	68 0f 00 00 00       	push   $0xf
  40112b:	e9 f0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401130 <wclear@plt>:
  401130:	ff 25 4a 3f 00 00    	jmp    *0x3f4a(%rip)        # 405080 <wclear@Base>
  401136:	68 10 00 00 00       	push   $0x10
  40113b:	e9 e0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401140 <noecho@plt>:
  401140:	ff 25 42 3f 00 00    	jmp    *0x3f42(%rip)        # 405088 <noecho@Base>
  401146:	68 11 00 00 00       	push   $0x11
  40114b:	e9 d0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401150 <napms@plt>:
  401150:	ff 25 3a 3f 00 00    	jmp    *0x3f3a(%rip)        # 405090 <napms@Base>
  401156:	68 12 00 00 00       	push   $0x12
  40115b:	e9 c0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401160 <curs_set@plt>:
  401160:	ff 25 32 3f 00 00    	jmp    *0x3f32(%rip)        # 405098 <curs_set@Base>
  401166:	68 13 00 00 00       	push   $0x13
  40116b:	e9 b0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401170 <mvprintw@plt>:
  401170:	ff 25 2a 3f 00 00    	jmp    *0x3f2a(%rip)        # 4050a0 <mvprintw@Base>
  401176:	68 14 00 00 00       	push   $0x14
  40117b:	e9 a0 fe ff ff       	jmp    401020 <_init+0x20>

0000000000401180 <rand@plt>:
  401180:	ff 25 22 3f 00 00    	jmp    *0x3f22(%rip)        # 4050a8 <rand@GLIBC_2.2.5>
  401186:	68 15 00 00 00       	push   $0x15
  40118b:	e9 90 fe ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401190 <_start>:
  401190:	f3 0f 1e fa          	endbr64
  401194:	31 ed                	xor    %ebp,%ebp
  401196:	49 89 d1             	mov    %rdx,%r9
  401199:	5e                   	pop    %rsi
  40119a:	48 89 e2             	mov    %rsp,%rdx
  40119d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4011a1:	50                   	push   %rax
  4011a2:	54                   	push   %rsp
  4011a3:	45 31 c0             	xor    %r8d,%r8d
  4011a6:	31 c9                	xor    %ecx,%ecx
  4011a8:	48 c7 c7 4b 1d 40 00 	mov    $0x401d4b,%rdi
  4011af:	ff 15 23 3e 00 00    	call   *0x3e23(%rip)        # 404fd8 <__libc_start_main@GLIBC_2.34>
  4011b5:	f4                   	hlt
  4011b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4011bd:	00 00 00 

00000000004011c0 <_dl_relocate_static_pie>:
  4011c0:	f3 0f 1e fa          	endbr64
  4011c4:	c3                   	ret
  4011c5:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4011cc:	00 00 00 
  4011cf:	90                   	nop

00000000004011d0 <deregister_tm_clones>:
  4011d0:	b8 b8 50 40 00       	mov    $0x4050b8,%eax
  4011d5:	48 3d b8 50 40 00    	cmp    $0x4050b8,%rax
  4011db:	74 13                	je     4011f0 <deregister_tm_clones+0x20>
  4011dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4011e2:	48 85 c0             	test   %rax,%rax
  4011e5:	74 09                	je     4011f0 <deregister_tm_clones+0x20>
  4011e7:	bf b8 50 40 00       	mov    $0x4050b8,%edi
  4011ec:	ff e0                	jmp    *%rax
  4011ee:	66 90                	xchg   %ax,%ax
  4011f0:	c3                   	ret
  4011f1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4011f8:	00 00 00 00 
  4011fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401200 <register_tm_clones>:
  401200:	be b8 50 40 00       	mov    $0x4050b8,%esi
  401205:	48 81 ee b8 50 40 00 	sub    $0x4050b8,%rsi
  40120c:	48 89 f0             	mov    %rsi,%rax
  40120f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401213:	48 c1 f8 03          	sar    $0x3,%rax
  401217:	48 01 c6             	add    %rax,%rsi
  40121a:	48 d1 fe             	sar    $1,%rsi
  40121d:	74 11                	je     401230 <register_tm_clones+0x30>
  40121f:	b8 00 00 00 00       	mov    $0x0,%eax
  401224:	48 85 c0             	test   %rax,%rax
  401227:	74 07                	je     401230 <register_tm_clones+0x30>
  401229:	bf b8 50 40 00       	mov    $0x4050b8,%edi
  40122e:	ff e0                	jmp    *%rax
  401230:	c3                   	ret
  401231:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401238:	00 00 00 00 
  40123c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401240 <__do_global_dtors_aux>:
  401240:	f3 0f 1e fa          	endbr64
  401244:	80 3d 7d 3e 00 00 00 	cmpb   $0x0,0x3e7d(%rip)        # 4050c8 <completed.0>
  40124b:	75 13                	jne    401260 <__do_global_dtors_aux+0x20>
  40124d:	55                   	push   %rbp
  40124e:	48 89 e5             	mov    %rsp,%rbp
  401251:	e8 7a ff ff ff       	call   4011d0 <deregister_tm_clones>
  401256:	c6 05 6b 3e 00 00 01 	movb   $0x1,0x3e6b(%rip)        # 4050c8 <completed.0>
  40125d:	5d                   	pop    %rbp
  40125e:	c3                   	ret
  40125f:	90                   	nop
  401260:	c3                   	ret
  401261:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401268:	00 00 00 00 
  40126c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401270 <frame_dummy>:
  401270:	f3 0f 1e fa          	endbr64
  401274:	eb 8a                	jmp    401200 <register_tm_clones>

0000000000401276 <initializeBoard>:
  401276:	55                   	push   %rbp
  401277:	48 89 e5             	mov    %rsp,%rbp
  40127a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401281:	eb 3e                	jmp    4012c1 <initializeBoard+0x4b>
  401283:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40128a:	eb 2b                	jmp    4012b7 <initializeBoard+0x41>
  40128c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40128f:	48 63 c8             	movslq %eax,%rcx
  401292:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401295:	48 63 d0             	movslq %eax,%rdx
  401298:	48 89 d0             	mov    %rdx,%rax
  40129b:	48 c1 e0 02          	shl    $0x2,%rax
  40129f:	48 01 d0             	add    %rdx,%rax
  4012a2:	48 01 c0             	add    %rax,%rax
  4012a5:	48 01 c8             	add    %rcx,%rax
  4012a8:	c7 04 85 e0 50 40 00 	movl   $0x0,0x4050e0(,%rax,4)
  4012af:	00 00 00 00 
  4012b3:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  4012b7:	83 7d f8 09          	cmpl   $0x9,-0x8(%rbp)
  4012bb:	7e cf                	jle    40128c <initializeBoard+0x16>
  4012bd:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4012c1:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
  4012c5:	7e bc                	jle    401283 <initializeBoard+0xd>
  4012c7:	90                   	nop
  4012c8:	90                   	nop
  4012c9:	5d                   	pop    %rbp
  4012ca:	c3                   	ret

00000000004012cb <createPiece>:
  4012cb:	55                   	push   %rbp
  4012cc:	48 89 e5             	mov    %rsp,%rbp
  4012cf:	89 7d ec             	mov    %edi,-0x14(%rbp)
  4012d2:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4012d5:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4012d8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4012df:	c7 45 f8 03 00 00 00 	movl   $0x3,-0x8(%rbp)
  4012e6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4012ed:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012f1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4012f5:	5d                   	pop    %rbp
  4012f6:	c3                   	ret

00000000004012f7 <collision>:
  4012f7:	55                   	push   %rbp
  4012f8:	48 89 e5             	mov    %rsp,%rbp
  4012fb:	48 89 f8             	mov    %rdi,%rax
  4012fe:	48 89 f1             	mov    %rsi,%rcx
  401301:	48 89 c0             	mov    %rax,%rax
  401304:	ba 00 00 00 00       	mov    $0x0,%edx
  401309:	48 89 ca             	mov    %rcx,%rdx
  40130c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401310:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401314:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  40131b:	e9 b4 00 00 00       	jmp    4013d4 <collision+0xdd>
  401320:	8b 55 ec             	mov    -0x14(%rbp),%edx
  401323:	8b 75 e0             	mov    -0x20(%rbp),%esi
  401326:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  401329:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40132c:	48 98                	cltq
  40132e:	48 63 f6             	movslq %esi,%rsi
  401331:	48 63 c9             	movslq %ecx,%rcx
  401334:	48 c1 e6 02          	shl    $0x2,%rsi
  401338:	48 01 f1             	add    %rsi,%rcx
  40133b:	48 c1 e1 02          	shl    $0x2,%rcx
  40133f:	48 01 c8             	add    %rcx,%rax
  401342:	8b 04 c5 20 30 40 00 	mov    0x403020(,%rax,8),%eax
  401349:	01 d0                	add    %edx,%eax
  40134b:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40134e:	8b 55 e8             	mov    -0x18(%rbp),%edx
  401351:	8b 75 e0             	mov    -0x20(%rbp),%esi
  401354:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  401357:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40135a:	48 98                	cltq
  40135c:	48 63 f6             	movslq %esi,%rsi
  40135f:	48 63 c9             	movslq %ecx,%rcx
  401362:	48 c1 e6 02          	shl    $0x2,%rsi
  401366:	48 01 f1             	add    %rsi,%rcx
  401369:	48 c1 e1 02          	shl    $0x2,%rcx
  40136d:	48 01 c8             	add    %rcx,%rax
  401370:	8b 04 c5 24 30 40 00 	mov    0x403024(,%rax,8),%eax
  401377:	01 d0                	add    %edx,%eax
  401379:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40137c:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401380:	78 06                	js     401388 <collision+0x91>
  401382:	83 7d f4 09          	cmpl   $0x9,-0xc(%rbp)
  401386:	7e 07                	jle    40138f <collision+0x98>
  401388:	b8 01 00 00 00       	mov    $0x1,%eax
  40138d:	eb 54                	jmp    4013e3 <collision+0xec>
  40138f:	83 7d f8 13          	cmpl   $0x13,-0x8(%rbp)
  401393:	7e 07                	jle    40139c <collision+0xa5>
  401395:	b8 01 00 00 00       	mov    $0x1,%eax
  40139a:	eb 47                	jmp    4013e3 <collision+0xec>
  40139c:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  4013a0:	78 2e                	js     4013d0 <collision+0xd9>
  4013a2:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013a5:	48 63 c8             	movslq %eax,%rcx
  4013a8:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4013ab:	48 63 d0             	movslq %eax,%rdx
  4013ae:	48 89 d0             	mov    %rdx,%rax
  4013b1:	48 c1 e0 02          	shl    $0x2,%rax
  4013b5:	48 01 d0             	add    %rdx,%rax
  4013b8:	48 01 c0             	add    %rax,%rax
  4013bb:	48 01 c8             	add    %rcx,%rax
  4013be:	8b 04 85 e0 50 40 00 	mov    0x4050e0(,%rax,4),%eax
  4013c5:	85 c0                	test   %eax,%eax
  4013c7:	74 07                	je     4013d0 <collision+0xd9>
  4013c9:	b8 01 00 00 00       	mov    $0x1,%eax
  4013ce:	eb 13                	jmp    4013e3 <collision+0xec>
  4013d0:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4013d4:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  4013d8:	0f 8e 42 ff ff ff    	jle    401320 <collision+0x29>
  4013de:	b8 00 00 00 00       	mov    $0x0,%eax
  4013e3:	5d                   	pop    %rbp
  4013e4:	c3                   	ret

00000000004013e5 <placePiece>:
  4013e5:	55                   	push   %rbp
  4013e6:	48 89 e5             	mov    %rsp,%rbp
  4013e9:	48 89 f8             	mov    %rdi,%rax
  4013ec:	48 89 f1             	mov    %rsi,%rcx
  4013ef:	48 89 c0             	mov    %rax,%rax
  4013f2:	ba 00 00 00 00       	mov    $0x0,%edx
  4013f7:	48 89 ca             	mov    %rcx,%rdx
  4013fa:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4013fe:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  401402:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401409:	e9 a1 00 00 00       	jmp    4014af <placePiece+0xca>
  40140e:	8b 55 ec             	mov    -0x14(%rbp),%edx
  401411:	8b 75 e0             	mov    -0x20(%rbp),%esi
  401414:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  401417:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40141a:	48 98                	cltq
  40141c:	48 63 f6             	movslq %esi,%rsi
  40141f:	48 63 c9             	movslq %ecx,%rcx
  401422:	48 c1 e6 02          	shl    $0x2,%rsi
  401426:	48 01 f1             	add    %rsi,%rcx
  401429:	48 c1 e1 02          	shl    $0x2,%rcx
  40142d:	48 01 c8             	add    %rcx,%rax
  401430:	8b 04 c5 20 30 40 00 	mov    0x403020(,%rax,8),%eax
  401437:	01 d0                	add    %edx,%eax
  401439:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40143c:	8b 55 e8             	mov    -0x18(%rbp),%edx
  40143f:	8b 75 e0             	mov    -0x20(%rbp),%esi
  401442:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  401445:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401448:	48 98                	cltq
  40144a:	48 63 f6             	movslq %esi,%rsi
  40144d:	48 63 c9             	movslq %ecx,%rcx
  401450:	48 c1 e6 02          	shl    $0x2,%rsi
  401454:	48 01 f1             	add    %rsi,%rcx
  401457:	48 c1 e1 02          	shl    $0x2,%rcx
  40145b:	48 01 c8             	add    %rcx,%rax
  40145e:	8b 04 c5 24 30 40 00 	mov    0x403024(,%rax,8),%eax
  401465:	01 d0                	add    %edx,%eax
  401467:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40146a:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  40146e:	78 3b                	js     4014ab <placePiece+0xc6>
  401470:	83 7d f8 13          	cmpl   $0x13,-0x8(%rbp)
  401474:	7f 35                	jg     4014ab <placePiece+0xc6>
  401476:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40147a:	78 2f                	js     4014ab <placePiece+0xc6>
  40147c:	83 7d f4 09          	cmpl   $0x9,-0xc(%rbp)
  401480:	7f 29                	jg     4014ab <placePiece+0xc6>
  401482:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401485:	8d 48 01             	lea    0x1(%rax),%ecx
  401488:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40148b:	48 63 f0             	movslq %eax,%rsi
  40148e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401491:	48 63 d0             	movslq %eax,%rdx
  401494:	48 89 d0             	mov    %rdx,%rax
  401497:	48 c1 e0 02          	shl    $0x2,%rax
  40149b:	48 01 d0             	add    %rdx,%rax
  40149e:	48 01 c0             	add    %rax,%rax
  4014a1:	48 01 f0             	add    %rsi,%rax
  4014a4:	89 0c 85 e0 50 40 00 	mov    %ecx,0x4050e0(,%rax,4)
  4014ab:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4014af:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  4014b3:	0f 8e 55 ff ff ff    	jle    40140e <placePiece+0x29>
  4014b9:	90                   	nop
  4014ba:	90                   	nop
  4014bb:	5d                   	pop    %rbp
  4014bc:	c3                   	ret

00000000004014bd <clearLines>:
  4014bd:	55                   	push   %rbp
  4014be:	48 89 e5             	mov    %rsp,%rbp
  4014c1:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4014c8:	c7 45 f8 13 00 00 00 	movl   $0x13,-0x8(%rbp)
  4014cf:	e9 f1 00 00 00       	jmp    4015c5 <clearLines+0x108>
  4014d4:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  4014db:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  4014e2:	eb 34                	jmp    401518 <clearLines+0x5b>
  4014e4:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4014e7:	48 63 c8             	movslq %eax,%rcx
  4014ea:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4014ed:	48 63 d0             	movslq %eax,%rdx
  4014f0:	48 89 d0             	mov    %rdx,%rax
  4014f3:	48 c1 e0 02          	shl    $0x2,%rax
  4014f7:	48 01 d0             	add    %rdx,%rax
  4014fa:	48 01 c0             	add    %rax,%rax
  4014fd:	48 01 c8             	add    %rcx,%rax
  401500:	8b 04 85 e0 50 40 00 	mov    0x4050e0(,%rax,4),%eax
  401507:	85 c0                	test   %eax,%eax
  401509:	75 09                	jne    401514 <clearLines+0x57>
  40150b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401512:	eb 0a                	jmp    40151e <clearLines+0x61>
  401514:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
  401518:	83 7d f0 09          	cmpl   $0x9,-0x10(%rbp)
  40151c:	7e c6                	jle    4014e4 <clearLines+0x27>
  40151e:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401522:	0f 84 99 00 00 00    	je     4015c1 <clearLines+0x104>
  401528:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40152c:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40152f:	89 45 ec             	mov    %eax,-0x14(%rbp)
  401532:	eb 60                	jmp    401594 <clearLines+0xd7>
  401534:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  40153b:	eb 4d                	jmp    40158a <clearLines+0xcd>
  40153d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401540:	8d 50 ff             	lea    -0x1(%rax),%edx
  401543:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401546:	48 63 c8             	movslq %eax,%rcx
  401549:	48 63 d2             	movslq %edx,%rdx
  40154c:	48 89 d0             	mov    %rdx,%rax
  40154f:	48 c1 e0 02          	shl    $0x2,%rax
  401553:	48 01 d0             	add    %rdx,%rax
  401556:	48 01 c0             	add    %rax,%rax
  401559:	48 01 c8             	add    %rcx,%rax
  40155c:	8b 0c 85 e0 50 40 00 	mov    0x4050e0(,%rax,4),%ecx
  401563:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401566:	48 63 f0             	movslq %eax,%rsi
  401569:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40156c:	48 63 d0             	movslq %eax,%rdx
  40156f:	48 89 d0             	mov    %rdx,%rax
  401572:	48 c1 e0 02          	shl    $0x2,%rax
  401576:	48 01 d0             	add    %rdx,%rax
  401579:	48 01 c0             	add    %rax,%rax
  40157c:	48 01 f0             	add    %rsi,%rax
  40157f:	89 0c 85 e0 50 40 00 	mov    %ecx,0x4050e0(,%rax,4)
  401586:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
  40158a:	83 7d e8 09          	cmpl   $0x9,-0x18(%rbp)
  40158e:	7e ad                	jle    40153d <clearLines+0x80>
  401590:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
  401594:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  401598:	7f 9a                	jg     401534 <clearLines+0x77>
  40159a:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
  4015a1:	eb 14                	jmp    4015b7 <clearLines+0xfa>
  4015a3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4015a6:	48 98                	cltq
  4015a8:	c7 04 85 e0 50 40 00 	movl   $0x0,0x4050e0(,%rax,4)
  4015af:	00 00 00 00 
  4015b3:	83 45 e4 01          	addl   $0x1,-0x1c(%rbp)
  4015b7:	83 7d e4 09          	cmpl   $0x9,-0x1c(%rbp)
  4015bb:	7e e6                	jle    4015a3 <clearLines+0xe6>
  4015bd:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  4015c1:	83 6d f8 01          	subl   $0x1,-0x8(%rbp)
  4015c5:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  4015c9:	0f 89 05 ff ff ff    	jns    4014d4 <clearLines+0x17>
  4015cf:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  4015d3:	0f 8e cc 00 00 00    	jle    4016a5 <clearLines+0x1e8>
  4015d9:	8b 15 25 3e 00 00    	mov    0x3e25(%rip),%edx        # 405404 <lines>
  4015df:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4015e2:	01 d0                	add    %edx,%eax
  4015e4:	89 05 1a 3e 00 00    	mov    %eax,0x3e1a(%rip)        # 405404 <lines>
  4015ea:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
  4015ee:	74 75                	je     401665 <clearLines+0x1a8>
  4015f0:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
  4015f4:	0f 8f 86 00 00 00    	jg     401680 <clearLines+0x1c3>
  4015fa:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  4015fe:	74 49                	je     401649 <clearLines+0x18c>
  401600:	83 7d fc 03          	cmpl   $0x3,-0x4(%rbp)
  401604:	7f 7a                	jg     401680 <clearLines+0x1c3>
  401606:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  40160a:	74 08                	je     401614 <clearLines+0x157>
  40160c:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
  401610:	74 1b                	je     40162d <clearLines+0x170>
  401612:	eb 6c                	jmp    401680 <clearLines+0x1c3>
  401614:	8b 05 9a 3a 00 00    	mov    0x3a9a(%rip),%eax        # 4050b4 <level>
  40161a:	6b d0 64             	imul   $0x64,%eax,%edx
  40161d:	8b 05 dd 3d 00 00    	mov    0x3ddd(%rip),%eax        # 405400 <score>
  401623:	01 d0                	add    %edx,%eax
  401625:	89 05 d5 3d 00 00    	mov    %eax,0x3dd5(%rip)        # 405400 <score>
  40162b:	eb 53                	jmp    401680 <clearLines+0x1c3>
  40162d:	8b 05 81 3a 00 00    	mov    0x3a81(%rip),%eax        # 4050b4 <level>
  401633:	69 d0 2c 01 00 00    	imul   $0x12c,%eax,%edx
  401639:	8b 05 c1 3d 00 00    	mov    0x3dc1(%rip),%eax        # 405400 <score>
  40163f:	01 d0                	add    %edx,%eax
  401641:	89 05 b9 3d 00 00    	mov    %eax,0x3db9(%rip)        # 405400 <score>
  401647:	eb 37                	jmp    401680 <clearLines+0x1c3>
  401649:	8b 05 65 3a 00 00    	mov    0x3a65(%rip),%eax        # 4050b4 <level>
  40164f:	69 d0 f4 01 00 00    	imul   $0x1f4,%eax,%edx
  401655:	8b 05 a5 3d 00 00    	mov    0x3da5(%rip),%eax        # 405400 <score>
  40165b:	01 d0                	add    %edx,%eax
  40165d:	89 05 9d 3d 00 00    	mov    %eax,0x3d9d(%rip)        # 405400 <score>
  401663:	eb 1b                	jmp    401680 <clearLines+0x1c3>
  401665:	8b 05 49 3a 00 00    	mov    0x3a49(%rip),%eax        # 4050b4 <level>
  40166b:	69 d0 20 03 00 00    	imul   $0x320,%eax,%edx
  401671:	8b 05 89 3d 00 00    	mov    0x3d89(%rip),%eax        # 405400 <score>
  401677:	01 d0                	add    %edx,%eax
  401679:	89 05 81 3d 00 00    	mov    %eax,0x3d81(%rip)        # 405400 <score>
  40167f:	90                   	nop
  401680:	8b 05 7e 3d 00 00    	mov    0x3d7e(%rip),%eax        # 405404 <lines>
  401686:	48 63 d0             	movslq %eax,%rdx
  401689:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
  401690:	48 c1 ea 20          	shr    $0x20,%rdx
  401694:	c1 fa 02             	sar    $0x2,%edx
  401697:	c1 f8 1f             	sar    $0x1f,%eax
  40169a:	29 c2                	sub    %eax,%edx
  40169c:	8d 42 01             	lea    0x1(%rdx),%eax
  40169f:	89 05 0f 3a 00 00    	mov    %eax,0x3a0f(%rip)        # 4050b4 <level>
  4016a5:	90                   	nop
  4016a6:	5d                   	pop    %rbp
  4016a7:	c3                   	ret

00000000004016a8 <drawBlock>:
  4016a8:	55                   	push   %rbp
  4016a9:	48 89 e5             	mov    %rsp,%rbp
  4016ac:	48 83 ec 10          	sub    $0x10,%rsp
  4016b0:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4016b3:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4016b6:	89 55 f4             	mov    %edx,-0xc(%rbp)
  4016b9:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  4016bd:	7e 5f                	jle    40171e <drawBlock+0x76>
  4016bf:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4016c2:	c1 e0 08             	shl    $0x8,%eax
  4016c5:	0f b7 c8             	movzwl %ax,%ecx
  4016c8:	48 8b 05 f1 39 00 00 	mov    0x39f1(%rip),%rax        # 4050c0 <stdscr@@Base>
  4016cf:	ba 00 00 00 00       	mov    $0x0,%edx
  4016d4:	89 ce                	mov    %ecx,%esi
  4016d6:	48 89 c7             	mov    %rax,%rdi
  4016d9:	e8 52 f9 ff ff       	call   401030 <wattr_on@plt>
  4016de:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4016e1:	83 c0 01             	add    $0x1,%eax
  4016e4:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
  4016e7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4016ea:	ba a0 33 40 00       	mov    $0x4033a0,%edx
  4016ef:	89 ce                	mov    %ecx,%esi
  4016f1:	89 c7                	mov    %eax,%edi
  4016f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4016f8:	e8 73 fa ff ff       	call   401170 <mvprintw@plt>
  4016fd:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401700:	c1 e0 08             	shl    $0x8,%eax
  401703:	0f b7 c8             	movzwl %ax,%ecx
  401706:	48 8b 05 b3 39 00 00 	mov    0x39b3(%rip),%rax        # 4050c0 <stdscr@@Base>
  40170d:	ba 00 00 00 00       	mov    $0x0,%edx
  401712:	89 ce                	mov    %ecx,%esi
  401714:	48 89 c7             	mov    %rax,%rdi
  401717:	e8 a4 f9 ff ff       	call   4010c0 <wattr_off@plt>
  40171c:	eb 01                	jmp    40171f <drawBlock+0x77>
  40171e:	90                   	nop
  40171f:	c9                   	leave
  401720:	c3                   	ret

0000000000401721 <drawBoard>:
  401721:	55                   	push   %rbp
  401722:	48 89 e5             	mov    %rsp,%rbp
  401725:	48 83 ec 20          	sub    $0x20,%rsp
  401729:	48 8b 05 90 39 00 00 	mov    0x3990(%rip),%rax        # 4050c0 <stdscr@@Base>
  401730:	48 89 c7             	mov    %rax,%rdi
  401733:	e8 f8 f9 ff ff       	call   401130 <wclear@plt>
  401738:	ba a3 33 40 00       	mov    $0x4033a3,%edx
  40173d:	be 00 00 00 00       	mov    $0x0,%esi
  401742:	bf 00 00 00 00       	mov    $0x0,%edi
  401747:	b8 00 00 00 00       	mov    $0x0,%eax
  40174c:	e8 1f fa ff ff       	call   401170 <mvprintw@plt>
  401751:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401758:	eb 13                	jmp    40176d <drawBoard+0x4c>
  40175a:	bf a5 33 40 00       	mov    $0x4033a5,%edi
  40175f:	b8 00 00 00 00       	mov    $0x0,%eax
  401764:	e8 77 f9 ff ff       	call   4010e0 <printw@plt>
  401769:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40176d:	83 7d fc 13          	cmpl   $0x13,-0x4(%rbp)
  401771:	7e e7                	jle    40175a <drawBoard+0x39>
  401773:	bf a3 33 40 00       	mov    $0x4033a3,%edi
  401778:	b8 00 00 00 00       	mov    $0x0,%eax
  40177d:	e8 5e f9 ff ff       	call   4010e0 <printw@plt>
  401782:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401789:	e9 d6 00 00 00       	jmp    401864 <drawBoard+0x143>
  40178e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401791:	83 c0 01             	add    $0x1,%eax
  401794:	ba a7 33 40 00       	mov    $0x4033a7,%edx
  401799:	be 00 00 00 00       	mov    $0x0,%esi
  40179e:	89 c7                	mov    %eax,%edi
  4017a0:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a5:	e8 c6 f9 ff ff       	call   401170 <mvprintw@plt>
  4017aa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4017b1:	e9 84 00 00 00       	jmp    40183a <drawBoard+0x119>
  4017b6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4017b9:	48 63 c8             	movslq %eax,%rcx
  4017bc:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4017bf:	48 63 d0             	movslq %eax,%rdx
  4017c2:	48 89 d0             	mov    %rdx,%rax
  4017c5:	48 c1 e0 02          	shl    $0x2,%rax
  4017c9:	48 01 d0             	add    %rdx,%rax
  4017cc:	48 01 c0             	add    %rax,%rax
  4017cf:	48 01 c8             	add    %rcx,%rax
  4017d2:	8b 04 85 e0 50 40 00 	mov    0x4050e0(,%rax,4),%eax
  4017d9:	85 c0                	test   %eax,%eax
  4017db:	74 37                	je     401814 <drawBoard+0xf3>
  4017dd:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4017e0:	48 63 c8             	movslq %eax,%rcx
  4017e3:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4017e6:	48 63 d0             	movslq %eax,%rdx
  4017e9:	48 89 d0             	mov    %rdx,%rax
  4017ec:	48 c1 e0 02          	shl    $0x2,%rax
  4017f0:	48 01 d0             	add    %rdx,%rax
  4017f3:	48 01 c0             	add    %rax,%rax
  4017f6:	48 01 c8             	add    %rcx,%rax
  4017f9:	8b 14 85 e0 50 40 00 	mov    0x4050e0(,%rax,4),%edx
  401800:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401803:	8d 48 01             	lea    0x1(%rax),%ecx
  401806:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401809:	89 c6                	mov    %eax,%esi
  40180b:	89 cf                	mov    %ecx,%edi
  40180d:	e8 96 fe ff ff       	call   4016a8 <drawBlock>
  401812:	eb 22                	jmp    401836 <drawBoard+0x115>
  401814:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401817:	83 c0 01             	add    $0x1,%eax
  40181a:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
  40181d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401820:	83 c0 01             	add    $0x1,%eax
  401823:	ba a9 33 40 00       	mov    $0x4033a9,%edx
  401828:	89 ce                	mov    %ecx,%esi
  40182a:	89 c7                	mov    %eax,%edi
  40182c:	b8 00 00 00 00       	mov    $0x0,%eax
  401831:	e8 3a f9 ff ff       	call   401170 <mvprintw@plt>
  401836:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
  40183a:	83 7d f4 09          	cmpl   $0x9,-0xc(%rbp)
  40183e:	0f 8e 72 ff ff ff    	jle    4017b6 <drawBoard+0x95>
  401844:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401847:	83 c0 01             	add    $0x1,%eax
  40184a:	ba a7 33 40 00       	mov    $0x4033a7,%edx
  40184f:	be 16 00 00 00       	mov    $0x16,%esi
  401854:	89 c7                	mov    %eax,%edi
  401856:	b8 00 00 00 00       	mov    $0x0,%eax
  40185b:	e8 10 f9 ff ff       	call   401170 <mvprintw@plt>
  401860:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  401864:	83 7d f8 13          	cmpl   $0x13,-0x8(%rbp)
  401868:	0f 8e 20 ff ff ff    	jle    40178e <drawBoard+0x6d>
  40186e:	ba a3 33 40 00       	mov    $0x4033a3,%edx
  401873:	be 00 00 00 00       	mov    $0x0,%esi
  401878:	bf 15 00 00 00       	mov    $0x15,%edi
  40187d:	b8 00 00 00 00       	mov    $0x0,%eax
  401882:	e8 e9 f8 ff ff       	call   401170 <mvprintw@plt>
  401887:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40188e:	eb 13                	jmp    4018a3 <drawBoard+0x182>
  401890:	bf a5 33 40 00       	mov    $0x4033a5,%edi
  401895:	b8 00 00 00 00       	mov    $0x0,%eax
  40189a:	e8 41 f8 ff ff       	call   4010e0 <printw@plt>
  40189f:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
  4018a3:	83 7d f0 13          	cmpl   $0x13,-0x10(%rbp)
  4018a7:	7e e7                	jle    401890 <drawBoard+0x16f>
  4018a9:	bf a3 33 40 00       	mov    $0x4033a3,%edi
  4018ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b3:	e8 28 f8 ff ff       	call   4010e0 <printw@plt>
  4018b8:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  4018bf:	e9 a5 00 00 00       	jmp    401969 <drawBoard+0x248>
  4018c4:	8b 15 52 3b 00 00    	mov    0x3b52(%rip),%edx        # 40541c <current+0xc>
  4018ca:	8b 35 40 3b 00 00    	mov    0x3b40(%rip),%esi        # 405410 <current>
  4018d0:	8b 0d 3e 3b 00 00    	mov    0x3b3e(%rip),%ecx        # 405414 <current+0x4>
  4018d6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4018d9:	48 98                	cltq
  4018db:	48 63 f6             	movslq %esi,%rsi
  4018de:	48 63 c9             	movslq %ecx,%rcx
  4018e1:	48 c1 e6 02          	shl    $0x2,%rsi
  4018e5:	48 01 f1             	add    %rsi,%rcx
  4018e8:	48 c1 e1 02          	shl    $0x2,%rcx
  4018ec:	48 01 c8             	add    %rcx,%rax
  4018ef:	8b 04 c5 20 30 40 00 	mov    0x403020(,%rax,8),%eax
  4018f6:	01 d0                	add    %edx,%eax
  4018f8:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4018fb:	8b 15 17 3b 00 00    	mov    0x3b17(%rip),%edx        # 405418 <current+0x8>
  401901:	8b 35 09 3b 00 00    	mov    0x3b09(%rip),%esi        # 405410 <current>
  401907:	8b 0d 07 3b 00 00    	mov    0x3b07(%rip),%ecx        # 405414 <current+0x4>
  40190d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401910:	48 98                	cltq
  401912:	48 63 f6             	movslq %esi,%rsi
  401915:	48 63 c9             	movslq %ecx,%rcx
  401918:	48 c1 e6 02          	shl    $0x2,%rsi
  40191c:	48 01 f1             	add    %rsi,%rcx
  40191f:	48 c1 e1 02          	shl    $0x2,%rcx
  401923:	48 01 c8             	add    %rcx,%rax
  401926:	8b 04 c5 24 30 40 00 	mov    0x403024(,%rax,8),%eax
  40192d:	01 d0                	add    %edx,%eax
  40192f:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401932:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  401936:	78 2d                	js     401965 <drawBoard+0x244>
  401938:	83 7d e4 13          	cmpl   $0x13,-0x1c(%rbp)
  40193c:	7f 27                	jg     401965 <drawBoard+0x244>
  40193e:	83 7d e0 00          	cmpl   $0x0,-0x20(%rbp)
  401942:	78 21                	js     401965 <drawBoard+0x244>
  401944:	83 7d e0 09          	cmpl   $0x9,-0x20(%rbp)
  401948:	7f 1b                	jg     401965 <drawBoard+0x244>
  40194a:	8b 05 c0 3a 00 00    	mov    0x3ac0(%rip),%eax        # 405410 <current>
  401950:	8d 50 01             	lea    0x1(%rax),%edx
  401953:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401956:	8d 48 01             	lea    0x1(%rax),%ecx
  401959:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40195c:	89 c6                	mov    %eax,%esi
  40195e:	89 cf                	mov    %ecx,%edi
  401960:	e8 43 fd ff ff       	call   4016a8 <drawBlock>
  401965:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  401969:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
  40196d:	0f 8e 51 ff ff ff    	jle    4018c4 <drawBoard+0x1a3>
  401973:	c7 45 e8 19 00 00 00 	movl   $0x19,-0x18(%rbp)
  40197a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40197d:	ba ac 33 40 00       	mov    $0x4033ac,%edx
  401982:	89 c6                	mov    %eax,%esi
  401984:	bf 02 00 00 00       	mov    $0x2,%edi
  401989:	b8 00 00 00 00       	mov    $0x0,%eax
  40198e:	e8 dd f7 ff ff       	call   401170 <mvprintw@plt>
  401993:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401996:	ba b3 33 40 00       	mov    $0x4033b3,%edx
  40199b:	89 c6                	mov    %eax,%esi
  40199d:	bf 05 00 00 00       	mov    $0x5,%edi
  4019a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a7:	e8 c4 f7 ff ff       	call   401170 <mvprintw@plt>
  4019ac:	8b 15 4e 3a 00 00    	mov    0x3a4e(%rip),%edx        # 405400 <score>
  4019b2:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4019b5:	89 d1                	mov    %edx,%ecx
  4019b7:	ba ba 33 40 00       	mov    $0x4033ba,%edx
  4019bc:	89 c6                	mov    %eax,%esi
  4019be:	bf 06 00 00 00       	mov    $0x6,%edi
  4019c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c8:	e8 a3 f7 ff ff       	call   401170 <mvprintw@plt>
  4019cd:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4019d0:	ba bd 33 40 00       	mov    $0x4033bd,%edx
  4019d5:	89 c6                	mov    %eax,%esi
  4019d7:	bf 08 00 00 00       	mov    $0x8,%edi
  4019dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4019e1:	e8 8a f7 ff ff       	call   401170 <mvprintw@plt>
  4019e6:	8b 15 18 3a 00 00    	mov    0x3a18(%rip),%edx        # 405404 <lines>
  4019ec:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4019ef:	89 d1                	mov    %edx,%ecx
  4019f1:	ba ba 33 40 00       	mov    $0x4033ba,%edx
  4019f6:	89 c6                	mov    %eax,%esi
  4019f8:	bf 09 00 00 00       	mov    $0x9,%edi
  4019fd:	b8 00 00 00 00       	mov    $0x0,%eax
  401a02:	e8 69 f7 ff ff       	call   401170 <mvprintw@plt>
  401a07:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401a0a:	ba c4 33 40 00       	mov    $0x4033c4,%edx
  401a0f:	89 c6                	mov    %eax,%esi
  401a11:	bf 0b 00 00 00       	mov    $0xb,%edi
  401a16:	b8 00 00 00 00       	mov    $0x0,%eax
  401a1b:	e8 50 f7 ff ff       	call   401170 <mvprintw@plt>
  401a20:	8b 15 8e 36 00 00    	mov    0x368e(%rip),%edx        # 4050b4 <level>
  401a26:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401a29:	89 d1                	mov    %edx,%ecx
  401a2b:	ba ba 33 40 00       	mov    $0x4033ba,%edx
  401a30:	89 c6                	mov    %eax,%esi
  401a32:	bf 0c 00 00 00       	mov    $0xc,%edi
  401a37:	b8 00 00 00 00       	mov    $0x0,%eax
  401a3c:	e8 2f f7 ff ff       	call   401170 <mvprintw@plt>
  401a41:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401a44:	ba cb 33 40 00       	mov    $0x4033cb,%edx
  401a49:	89 c6                	mov    %eax,%esi
  401a4b:	bf 0f 00 00 00       	mov    $0xf,%edi
  401a50:	b8 00 00 00 00       	mov    $0x0,%eax
  401a55:	e8 16 f7 ff ff       	call   401170 <mvprintw@plt>
  401a5a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401a5d:	ba d4 33 40 00       	mov    $0x4033d4,%edx
  401a62:	89 c6                	mov    %eax,%esi
  401a64:	bf 10 00 00 00       	mov    $0x10,%edi
  401a69:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6e:	e8 fd f6 ff ff       	call   401170 <mvprintw@plt>
  401a73:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401a76:	ba de 33 40 00       	mov    $0x4033de,%edx
  401a7b:	89 c6                	mov    %eax,%esi
  401a7d:	bf 11 00 00 00       	mov    $0x11,%edi
  401a82:	b8 00 00 00 00       	mov    $0x0,%eax
  401a87:	e8 e4 f6 ff ff       	call   401170 <mvprintw@plt>
  401a8c:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401a8f:	ba ea 33 40 00       	mov    $0x4033ea,%edx
  401a94:	89 c6                	mov    %eax,%esi
  401a96:	bf 12 00 00 00       	mov    $0x12,%edi
  401a9b:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa0:	e8 cb f6 ff ff       	call   401170 <mvprintw@plt>
  401aa5:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401aa8:	ba f9 33 40 00       	mov    $0x4033f9,%edx
  401aad:	89 c6                	mov    %eax,%esi
  401aaf:	bf 13 00 00 00       	mov    $0x13,%edi
  401ab4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ab9:	e8 b2 f6 ff ff       	call   401170 <mvprintw@plt>
  401abe:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401ac1:	ba 09 34 40 00       	mov    $0x403409,%edx
  401ac6:	89 c6                	mov    %eax,%esi
  401ac8:	bf 14 00 00 00       	mov    $0x14,%edi
  401acd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad2:	e8 99 f6 ff ff       	call   401170 <mvprintw@plt>
  401ad7:	48 8b 05 e2 35 00 00 	mov    0x35e2(%rip),%rax        # 4050c0 <stdscr@@Base>
  401ade:	48 89 c7             	mov    %rax,%rdi
  401ae1:	e8 9a f5 ff ff       	call   401080 <wrefresh@plt>
  401ae6:	90                   	nop
  401ae7:	c9                   	leave
  401ae8:	c3                   	ret

0000000000401ae9 <movePiece>:
  401ae9:	55                   	push   %rbp
  401aea:	48 89 e5             	mov    %rsp,%rbp
  401aed:	48 83 ec 20          	sub    $0x20,%rsp
  401af1:	89 7d ec             	mov    %edi,-0x14(%rbp)
  401af4:	89 75 e8             	mov    %esi,-0x18(%rbp)
  401af7:	48 8b 05 12 39 00 00 	mov    0x3912(%rip),%rax        # 405410 <current>
  401afe:	48 8b 15 13 39 00 00 	mov    0x3913(%rip),%rdx        # 405418 <current+0x8>
  401b05:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401b09:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  401b0d:	8b 55 f8             	mov    -0x8(%rbp),%edx
  401b10:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401b13:	01 d0                	add    %edx,%eax
  401b15:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401b18:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401b1b:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401b1e:	01 d0                	add    %edx,%eax
  401b20:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401b23:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401b27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b2b:	48 89 d7             	mov    %rdx,%rdi
  401b2e:	48 89 c6             	mov    %rax,%rsi
  401b31:	e8 c1 f7 ff ff       	call   4012f7 <collision>
  401b36:	85 c0                	test   %eax,%eax
  401b38:	75 16                	jne    401b50 <movePiece+0x67>
  401b3a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401b3e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401b42:	48 89 05 c7 38 00 00 	mov    %rax,0x38c7(%rip)        # 405410 <current>
  401b49:	48 89 15 c8 38 00 00 	mov    %rdx,0x38c8(%rip)        # 405418 <current+0x8>
  401b50:	90                   	nop
  401b51:	c9                   	leave
  401b52:	c3                   	ret

0000000000401b53 <rotatePiece>:
  401b53:	55                   	push   %rbp
  401b54:	48 89 e5             	mov    %rsp,%rbp
  401b57:	48 83 ec 10          	sub    $0x10,%rsp
  401b5b:	48 8b 05 ae 38 00 00 	mov    0x38ae(%rip),%rax        # 405410 <current>
  401b62:	48 8b 15 af 38 00 00 	mov    0x38af(%rip),%rdx        # 405418 <current+0x8>
  401b69:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401b6d:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
  401b71:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401b74:	8d 50 01             	lea    0x1(%rax),%edx
  401b77:	89 d0                	mov    %edx,%eax
  401b79:	c1 f8 1f             	sar    $0x1f,%eax
  401b7c:	c1 e8 1e             	shr    $0x1e,%eax
  401b7f:	01 c2                	add    %eax,%edx
  401b81:	83 e2 03             	and    $0x3,%edx
  401b84:	29 c2                	sub    %eax,%edx
  401b86:	89 d0                	mov    %edx,%eax
  401b88:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401b8b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401b8f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b93:	48 89 d7             	mov    %rdx,%rdi
  401b96:	48 89 c6             	mov    %rax,%rsi
  401b99:	e8 59 f7 ff ff       	call   4012f7 <collision>
  401b9e:	85 c0                	test   %eax,%eax
  401ba0:	75 18                	jne    401bba <rotatePiece+0x67>
  401ba2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ba6:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401baa:	48 89 05 5f 38 00 00 	mov    %rax,0x385f(%rip)        # 405410 <current>
  401bb1:	48 89 15 60 38 00 00 	mov    %rdx,0x3860(%rip)        # 405418 <current+0x8>
  401bb8:	eb 6f                	jmp    401c29 <rotatePiece+0xd6>
  401bba:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401bbd:	83 c0 01             	add    $0x1,%eax
  401bc0:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401bc3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401bc7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401bcb:	48 89 d7             	mov    %rdx,%rdi
  401bce:	48 89 c6             	mov    %rax,%rsi
  401bd1:	e8 21 f7 ff ff       	call   4012f7 <collision>
  401bd6:	85 c0                	test   %eax,%eax
  401bd8:	75 18                	jne    401bf2 <rotatePiece+0x9f>
  401bda:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401bde:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401be2:	48 89 05 27 38 00 00 	mov    %rax,0x3827(%rip)        # 405410 <current>
  401be9:	48 89 15 28 38 00 00 	mov    %rdx,0x3828(%rip)        # 405418 <current+0x8>
  401bf0:	eb 37                	jmp    401c29 <rotatePiece+0xd6>
  401bf2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401bf5:	83 e8 02             	sub    $0x2,%eax
  401bf8:	89 45 f8             	mov    %eax,-0x8(%rbp)
  401bfb:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401bff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c03:	48 89 d7             	mov    %rdx,%rdi
  401c06:	48 89 c6             	mov    %rax,%rsi
  401c09:	e8 e9 f6 ff ff       	call   4012f7 <collision>
  401c0e:	85 c0                	test   %eax,%eax
  401c10:	75 17                	jne    401c29 <rotatePiece+0xd6>
  401c12:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401c16:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401c1a:	48 89 05 ef 37 00 00 	mov    %rax,0x37ef(%rip)        # 405410 <current>
  401c21:	48 89 15 f0 37 00 00 	mov    %rdx,0x37f0(%rip)        # 405418 <current+0x8>
  401c28:	90                   	nop
  401c29:	c9                   	leave
  401c2a:	c3                   	ret

0000000000401c2b <hardDrop>:
  401c2b:	55                   	push   %rbp
  401c2c:	48 89 e5             	mov    %rsp,%rbp
  401c2f:	41 55                	push   %r13
  401c31:	41 54                	push   %r12
  401c33:	eb 0f                	jmp    401c44 <hardDrop+0x19>
  401c35:	8b 05 e1 37 00 00    	mov    0x37e1(%rip),%eax        # 40541c <current+0xc>
  401c3b:	83 c0 01             	add    $0x1,%eax
  401c3e:	89 05 d8 37 00 00    	mov    %eax,0x37d8(%rip)        # 40541c <current+0xc>
  401c44:	8b 05 c6 37 00 00    	mov    0x37c6(%rip),%eax        # 405410 <current>
  401c4a:	89 c2                	mov    %eax,%edx
  401c4c:	4c 89 e1             	mov    %r12,%rcx
  401c4f:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  401c56:	ff ff ff 
  401c59:	48 21 c8             	and    %rcx,%rax
  401c5c:	48 09 d0             	or     %rdx,%rax
  401c5f:	49 89 c4             	mov    %rax,%r12
  401c62:	8b 05 ac 37 00 00    	mov    0x37ac(%rip),%eax        # 405414 <current+0x4>
  401c68:	89 c0                	mov    %eax,%eax
  401c6a:	48 c1 e0 20          	shl    $0x20,%rax
  401c6e:	4c 89 e2             	mov    %r12,%rdx
  401c71:	89 d2                	mov    %edx,%edx
  401c73:	48 09 d0             	or     %rdx,%rax
  401c76:	49 89 c4             	mov    %rax,%r12
  401c79:	8b 05 99 37 00 00    	mov    0x3799(%rip),%eax        # 405418 <current+0x8>
  401c7f:	89 c2                	mov    %eax,%edx
  401c81:	4c 89 e9             	mov    %r13,%rcx
  401c84:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
  401c8b:	ff ff ff 
  401c8e:	48 21 c8             	and    %rcx,%rax
  401c91:	48 09 d0             	or     %rdx,%rax
  401c94:	49 89 c5             	mov    %rax,%r13
  401c97:	8b 05 7f 37 00 00    	mov    0x377f(%rip),%eax        # 40541c <current+0xc>
  401c9d:	83 c0 01             	add    $0x1,%eax
  401ca0:	89 c0                	mov    %eax,%eax
  401ca2:	48 c1 e0 20          	shl    $0x20,%rax
  401ca6:	4c 89 ea             	mov    %r13,%rdx
  401ca9:	89 d2                	mov    %edx,%edx
  401cab:	48 09 d0             	or     %rdx,%rax
  401cae:	49 89 c5             	mov    %rax,%r13
  401cb1:	4c 89 e2             	mov    %r12,%rdx
  401cb4:	4c 89 e8             	mov    %r13,%rax
  401cb7:	48 89 d7             	mov    %rdx,%rdi
  401cba:	48 89 c6             	mov    %rax,%rsi
  401cbd:	e8 35 f6 ff ff       	call   4012f7 <collision>
  401cc2:	85 c0                	test   %eax,%eax
  401cc4:	0f 84 6b ff ff ff    	je     401c35 <hardDrop+0xa>
  401cca:	90                   	nop
  401ccb:	41 5c                	pop    %r12
  401ccd:	41 5d                	pop    %r13
  401ccf:	5d                   	pop    %rbp
  401cd0:	c3                   	ret

0000000000401cd1 <spawnPiece>:
  401cd1:	55                   	push   %rbp
  401cd2:	48 89 e5             	mov    %rsp,%rbp
  401cd5:	8b 05 45 37 00 00    	mov    0x3745(%rip),%eax        # 405420 <nextPiece>
  401cdb:	89 c7                	mov    %eax,%edi
  401cdd:	e8 e9 f5 ff ff       	call   4012cb <createPiece>
  401ce2:	48 89 05 27 37 00 00 	mov    %rax,0x3727(%rip)        # 405410 <current>
  401ce9:	48 89 15 28 37 00 00 	mov    %rdx,0x3728(%rip)        # 405418 <current+0x8>
  401cf0:	e8 8b f4 ff ff       	call   401180 <rand@plt>
  401cf5:	48 63 d0             	movslq %eax,%rdx
  401cf8:	48 69 d2 93 24 49 92 	imul   $0xffffffff92492493,%rdx,%rdx
  401cff:	48 c1 ea 20          	shr    $0x20,%rdx
  401d03:	01 c2                	add    %eax,%edx
  401d05:	c1 fa 02             	sar    $0x2,%edx
  401d08:	89 c1                	mov    %eax,%ecx
  401d0a:	c1 f9 1f             	sar    $0x1f,%ecx
  401d0d:	29 ca                	sub    %ecx,%edx
  401d0f:	89 d1                	mov    %edx,%ecx
  401d11:	c1 e1 03             	shl    $0x3,%ecx
  401d14:	29 d1                	sub    %edx,%ecx
  401d16:	29 c8                	sub    %ecx,%eax
  401d18:	89 c2                	mov    %eax,%edx
  401d1a:	89 15 00 37 00 00    	mov    %edx,0x3700(%rip)        # 405420 <nextPiece>
  401d20:	48 8b 15 e9 36 00 00 	mov    0x36e9(%rip),%rdx        # 405410 <current>
  401d27:	48 8b 05 ea 36 00 00 	mov    0x36ea(%rip),%rax        # 405418 <current+0x8>
  401d2e:	48 89 d7             	mov    %rdx,%rdi
  401d31:	48 89 c6             	mov    %rax,%rsi
  401d34:	e8 be f5 ff ff       	call   4012f7 <collision>
  401d39:	85 c0                	test   %eax,%eax
  401d3b:	74 07                	je     401d44 <spawnPiece+0x73>
  401d3d:	b8 00 00 00 00       	mov    $0x0,%eax
  401d42:	eb 05                	jmp    401d49 <spawnPiece+0x78>
  401d44:	b8 01 00 00 00       	mov    $0x1,%eax
  401d49:	5d                   	pop    %rbp
  401d4a:	c3                   	ret

0000000000401d4b <main>:
  401d4b:	55                   	push   %rbp
  401d4c:	48 89 e5             	mov    %rsp,%rbp
  401d4f:	48 83 ec 40          	sub    $0x40,%rsp
  401d53:	bf 00 00 00 00       	mov    $0x0,%edi
  401d58:	e8 93 f3 ff ff       	call   4010f0 <time@plt>
  401d5d:	89 c7                	mov    %eax,%edi
  401d5f:	e8 6c f3 ff ff       	call   4010d0 <srand@plt>
  401d64:	e8 37 f3 ff ff       	call   4010a0 <initscr@plt>
  401d69:	e8 d2 f3 ff ff       	call   401140 <noecho@plt>
  401d6e:	e8 dd f2 ff ff       	call   401050 <cbreak@plt>
  401d73:	bf 00 00 00 00       	mov    $0x0,%edi
  401d78:	e8 e3 f3 ff ff       	call   401160 <curs_set@plt>
  401d7d:	48 8b 05 3c 33 00 00 	mov    0x333c(%rip),%rax        # 4050c0 <stdscr@@Base>
  401d84:	be 01 00 00 00       	mov    $0x1,%esi
  401d89:	48 89 c7             	mov    %rax,%rdi
  401d8c:	e8 6f f3 ff ff       	call   401100 <nodelay@plt>
  401d91:	48 8b 05 28 33 00 00 	mov    0x3328(%rip),%rax        # 4050c0 <stdscr@@Base>
  401d98:	be 01 00 00 00       	mov    $0x1,%esi
  401d9d:	48 89 c7             	mov    %rax,%rdi
  401da0:	e8 eb f2 ff ff       	call   401090 <keypad@plt>
  401da5:	e8 96 f2 ff ff       	call   401040 <has_colors@plt>
  401daa:	84 c0                	test   %al,%al
  401dac:	0f 84 91 00 00 00    	je     401e43 <main+0xf8>
  401db2:	e8 f9 f2 ff ff       	call   4010b0 <start_color@plt>
  401db7:	ba 00 00 00 00       	mov    $0x0,%edx
  401dbc:	be 06 00 00 00       	mov    $0x6,%esi
  401dc1:	bf 01 00 00 00       	mov    $0x1,%edi
  401dc6:	e8 a5 f2 ff ff       	call   401070 <init_pair@plt>
  401dcb:	ba 00 00 00 00       	mov    $0x0,%edx
  401dd0:	be 03 00 00 00       	mov    $0x3,%esi
  401dd5:	bf 02 00 00 00       	mov    $0x2,%edi
  401dda:	e8 91 f2 ff ff       	call   401070 <init_pair@plt>
  401ddf:	ba 00 00 00 00       	mov    $0x0,%edx
  401de4:	be 05 00 00 00       	mov    $0x5,%esi
  401de9:	bf 03 00 00 00       	mov    $0x3,%edi
  401dee:	e8 7d f2 ff ff       	call   401070 <init_pair@plt>
  401df3:	ba 00 00 00 00       	mov    $0x0,%edx
  401df8:	be 02 00 00 00       	mov    $0x2,%esi
  401dfd:	bf 04 00 00 00       	mov    $0x4,%edi
  401e02:	e8 69 f2 ff ff       	call   401070 <init_pair@plt>
  401e07:	ba 00 00 00 00       	mov    $0x0,%edx
  401e0c:	be 01 00 00 00       	mov    $0x1,%esi
  401e11:	bf 05 00 00 00       	mov    $0x5,%edi
  401e16:	e8 55 f2 ff ff       	call   401070 <init_pair@plt>
  401e1b:	ba 00 00 00 00       	mov    $0x0,%edx
  401e20:	be 04 00 00 00       	mov    $0x4,%esi
  401e25:	bf 06 00 00 00       	mov    $0x6,%edi
  401e2a:	e8 41 f2 ff ff       	call   401070 <init_pair@plt>
  401e2f:	ba 00 00 00 00       	mov    $0x0,%edx
  401e34:	be 07 00 00 00       	mov    $0x7,%esi
  401e39:	bf 07 00 00 00       	mov    $0x7,%edi
  401e3e:	e8 2d f2 ff ff       	call   401070 <init_pair@plt>
  401e43:	e8 2e f4 ff ff       	call   401276 <initializeBoard>
  401e48:	e8 33 f3 ff ff       	call   401180 <rand@plt>
  401e4d:	48 63 d0             	movslq %eax,%rdx
  401e50:	48 69 d2 93 24 49 92 	imul   $0xffffffff92492493,%rdx,%rdx
  401e57:	48 c1 ea 20          	shr    $0x20,%rdx
  401e5b:	01 c2                	add    %eax,%edx
  401e5d:	c1 fa 02             	sar    $0x2,%edx
  401e60:	89 c1                	mov    %eax,%ecx
  401e62:	c1 f9 1f             	sar    $0x1f,%ecx
  401e65:	29 ca                	sub    %ecx,%edx
  401e67:	89 d1                	mov    %edx,%ecx
  401e69:	c1 e1 03             	shl    $0x3,%ecx
  401e6c:	29 d1                	sub    %edx,%ecx
  401e6e:	29 c8                	sub    %ecx,%eax
  401e70:	89 c2                	mov    %eax,%edx
  401e72:	89 15 a8 35 00 00    	mov    %edx,0x35a8(%rip)        # 405420 <nextPiece>
  401e78:	e8 54 fe ff ff       	call   401cd1 <spawnPiece>
  401e7d:	85 c0                	test   %eax,%eax
  401e7f:	75 0f                	jne    401e90 <main+0x145>
  401e81:	e8 8a f2 ff ff       	call   401110 <endwin@plt>
  401e86:	b8 00 00 00 00       	mov    $0x0,%eax
  401e8b:	e9 88 02 00 00       	jmp    402118 <main+0x3cd>
  401e90:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401e97:	00 
  401e98:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401e9f:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
  401ea6:	e9 bd 01 00 00       	jmp    402068 <main+0x31d>
  401eab:	48 8b 05 0e 32 00 00 	mov    0x320e(%rip),%rax        # 4050c0 <stdscr@@Base>
  401eb2:	48 89 c7             	mov    %rax,%rdi
  401eb5:	e8 66 f2 ff ff       	call   401120 <wgetch@plt>
  401eba:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401ebd:	81 7d e8 05 01 00 00 	cmpl   $0x105,-0x18(%rbp)
  401ec4:	74 79                	je     401f3f <main+0x1f4>
  401ec6:	81 7d e8 05 01 00 00 	cmpl   $0x105,-0x18(%rbp)
  401ecd:	0f 8f 9b 00 00 00    	jg     401f6e <main+0x223>
  401ed3:	81 7d e8 04 01 00 00 	cmpl   $0x104,-0x18(%rbp)
  401eda:	74 52                	je     401f2e <main+0x1e3>
  401edc:	81 7d e8 04 01 00 00 	cmpl   $0x104,-0x18(%rbp)
  401ee3:	0f 8f 85 00 00 00    	jg     401f6e <main+0x223>
  401ee9:	81 7d e8 03 01 00 00 	cmpl   $0x103,-0x18(%rbp)
  401ef0:	74 6f                	je     401f61 <main+0x216>
  401ef2:	81 7d e8 03 01 00 00 	cmpl   $0x103,-0x18(%rbp)
  401ef9:	7f 73                	jg     401f6e <main+0x223>
  401efb:	81 7d e8 02 01 00 00 	cmpl   $0x102,-0x18(%rbp)
  401f02:	74 4c                	je     401f50 <main+0x205>
  401f04:	81 7d e8 02 01 00 00 	cmpl   $0x102,-0x18(%rbp)
  401f0b:	7f 61                	jg     401f6e <main+0x223>
  401f0d:	83 7d e8 71          	cmpl   $0x71,-0x18(%rbp)
  401f11:	74 12                	je     401f25 <main+0x1da>
  401f13:	83 7d e8 71          	cmpl   $0x71,-0x18(%rbp)
  401f17:	7f 55                	jg     401f6e <main+0x223>
  401f19:	83 7d e8 20          	cmpl   $0x20,-0x18(%rbp)
  401f1d:	74 49                	je     401f68 <main+0x21d>
  401f1f:	83 7d e8 51          	cmpl   $0x51,-0x18(%rbp)
  401f23:	75 49                	jne    401f6e <main+0x223>
  401f25:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  401f2c:	eb 40                	jmp    401f6e <main+0x223>
  401f2e:	be 00 00 00 00       	mov    $0x0,%esi
  401f33:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  401f38:	e8 ac fb ff ff       	call   401ae9 <movePiece>
  401f3d:	eb 2f                	jmp    401f6e <main+0x223>
  401f3f:	be 00 00 00 00       	mov    $0x0,%esi
  401f44:	bf 01 00 00 00       	mov    $0x1,%edi
  401f49:	e8 9b fb ff ff       	call   401ae9 <movePiece>
  401f4e:	eb 1e                	jmp    401f6e <main+0x223>
  401f50:	be 01 00 00 00       	mov    $0x1,%esi
  401f55:	bf 00 00 00 00       	mov    $0x0,%edi
  401f5a:	e8 8a fb ff ff       	call   401ae9 <movePiece>
  401f5f:	eb 0d                	jmp    401f6e <main+0x223>
  401f61:	e8 ed fb ff ff       	call   401b53 <rotatePiece>
  401f66:	eb 06                	jmp    401f6e <main+0x223>
  401f68:	e8 be fc ff ff       	call   401c2b <hardDrop>
  401f6d:	90                   	nop
  401f6e:	e8 ed f0 ff ff       	call   401060 <clock@plt>
  401f73:	48 89 c1             	mov    %rax,%rcx
  401f76:	48 ba cf f7 53 e3 a5 	movabs $0x20c49ba5e353f7cf,%rdx
  401f7d:	9b c4 20 
  401f80:	48 89 c8             	mov    %rcx,%rax
  401f83:	48 f7 ea             	imul   %rdx
  401f86:	48 89 d0             	mov    %rdx,%rax
  401f89:	48 c1 f8 07          	sar    $0x7,%rax
  401f8d:	48 c1 f9 3f          	sar    $0x3f,%rcx
  401f91:	48 89 ca             	mov    %rcx,%rdx
  401f94:	48 29 d0             	sub    %rdx,%rax
  401f97:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401f9b:	8b 05 13 31 00 00    	mov    0x3113(%rip),%eax        # 4050b4 <level>
  401fa1:	83 e8 01             	sub    $0x1,%eax
  401fa4:	6b c0 ce             	imul   $0xffffffce,%eax,%eax
  401fa7:	05 58 02 00 00       	add    $0x258,%eax
  401fac:	89 45 ec             	mov    %eax,-0x14(%rbp)
  401faf:	83 7d ec 4f          	cmpl   $0x4f,-0x14(%rbp)
  401fb3:	7f 07                	jg     401fbc <main+0x271>
  401fb5:	c7 45 ec 50 00 00 00 	movl   $0x50,-0x14(%rbp)
  401fbc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401fc0:	48 2b 45 f8          	sub    -0x8(%rbp),%rax
  401fc4:	48 89 c2             	mov    %rax,%rdx
  401fc7:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401fca:	48 98                	cltq
  401fcc:	48 39 c2             	cmp    %rax,%rdx
  401fcf:	0f 8c 84 00 00 00    	jl     402059 <main+0x30e>
  401fd5:	48 8b 05 34 34 00 00 	mov    0x3434(%rip),%rax        # 405410 <current>
  401fdc:	48 8b 15 35 34 00 00 	mov    0x3435(%rip),%rdx        # 405418 <current+0x8>
  401fe3:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  401fe7:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  401feb:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401fee:	83 c0 01             	add    $0x1,%eax
  401ff1:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401ff4:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  401ff8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  401ffc:	48 89 d7             	mov    %rdx,%rdi
  401fff:	48 89 c6             	mov    %rax,%rsi
  402002:	e8 f0 f2 ff ff       	call   4012f7 <collision>
  402007:	85 c0                	test   %eax,%eax
  402009:	75 18                	jne    402023 <main+0x2d8>
  40200b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40200f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  402013:	48 89 05 f6 33 00 00 	mov    %rax,0x33f6(%rip)        # 405410 <current>
  40201a:	48 89 15 f7 33 00 00 	mov    %rdx,0x33f7(%rip)        # 405418 <current+0x8>
  402021:	eb 2e                	jmp    402051 <main+0x306>
  402023:	48 8b 15 e6 33 00 00 	mov    0x33e6(%rip),%rdx        # 405410 <current>
  40202a:	48 8b 05 e7 33 00 00 	mov    0x33e7(%rip),%rax        # 405418 <current+0x8>
  402031:	48 89 d7             	mov    %rdx,%rdi
  402034:	48 89 c6             	mov    %rax,%rsi
  402037:	e8 a9 f3 ff ff       	call   4013e5 <placePiece>
  40203c:	e8 7c f4 ff ff       	call   4014bd <clearLines>
  402041:	e8 8b fc ff ff       	call   401cd1 <spawnPiece>
  402046:	85 c0                	test   %eax,%eax
  402048:	75 07                	jne    402051 <main+0x306>
  40204a:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
  402051:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402055:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402059:	e8 c3 f6 ff ff       	call   401721 <drawBoard>
  40205e:	bf 0a 00 00 00       	mov    $0xa,%edi
  402063:	e8 e8 f0 ff ff       	call   401150 <napms@plt>
  402068:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
  40206c:	74 0a                	je     402078 <main+0x32d>
  40206e:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  402072:	0f 84 33 fe ff ff    	je     401eab <main+0x160>
  402078:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  40207c:	0f 84 8c 00 00 00    	je     40210e <main+0x3c3>
  402082:	48 8b 05 37 30 00 00 	mov    0x3037(%rip),%rax        # 4050c0 <stdscr@@Base>
  402089:	be 00 00 00 00       	mov    $0x0,%esi
  40208e:	48 89 c7             	mov    %rax,%rdi
  402091:	e8 6a f0 ff ff       	call   401100 <nodelay@plt>
  402096:	c7 45 dc 05 00 00 00 	movl   $0x5,-0x24(%rbp)
  40209d:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4020a0:	ba 13 34 40 00       	mov    $0x403413,%edx
  4020a5:	89 c6                	mov    %eax,%esi
  4020a7:	bf 0a 00 00 00       	mov    $0xa,%edi
  4020ac:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b1:	e8 ba f0 ff ff       	call   401170 <mvprintw@plt>
  4020b6:	8b 15 44 33 00 00    	mov    0x3344(%rip),%edx        # 405400 <score>
  4020bc:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4020bf:	89 d1                	mov    %edx,%ecx
  4020c1:	ba 1e 34 40 00       	mov    $0x40341e,%edx
  4020c6:	89 c6                	mov    %eax,%esi
  4020c8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4020cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d2:	e8 99 f0 ff ff       	call   401170 <mvprintw@plt>
  4020d7:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4020da:	ba 28 34 40 00       	mov    $0x403428,%edx
  4020df:	89 c6                	mov    %eax,%esi
  4020e1:	bf 0c 00 00 00       	mov    $0xc,%edi
  4020e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020eb:	e8 80 f0 ff ff       	call   401170 <mvprintw@plt>
  4020f0:	48 8b 05 c9 2f 00 00 	mov    0x2fc9(%rip),%rax        # 4050c0 <stdscr@@Base>
  4020f7:	48 89 c7             	mov    %rax,%rdi
  4020fa:	e8 81 ef ff ff       	call   401080 <wrefresh@plt>
  4020ff:	48 8b 05 ba 2f 00 00 	mov    0x2fba(%rip),%rax        # 4050c0 <stdscr@@Base>
  402106:	48 89 c7             	mov    %rax,%rdi
  402109:	e8 12 f0 ff ff       	call   401120 <wgetch@plt>
  40210e:	e8 fd ef ff ff       	call   401110 <endwin@plt>
  402113:	b8 00 00 00 00       	mov    $0x0,%eax
  402118:	c9                   	leave
  402119:	c3                   	ret

Disassembly of section .fini:

000000000040211c <_fini>:
  40211c:	f3 0f 1e fa          	endbr64
  402120:	48 83 ec 08          	sub    $0x8,%rsp
  402124:	48 83 c4 08          	add    $0x8,%rsp
  402128:	c3                   	ret

Disassembly of section .rodata:

0000000000403000 <_IO_stdin_used>:
  403000:	01 00                	add    %eax,(%rax)
  403002:	02 00                	add    (%rax),%al
  403004:	00 00                	add    %al,(%rax)
	...

0000000000403008 <__dso_handle>:
	...

0000000000403020 <PIECES>:
  403020:	01 00                	add    %eax,(%rax)
  403022:	00 00                	add    %al,(%rax)
  403024:	00 00                	add    %al,(%rax)
  403026:	00 00                	add    %al,(%rax)
  403028:	01 00                	add    %eax,(%rax)
  40302a:	00 00                	add    %al,(%rax)
  40302c:	01 00                	add    %eax,(%rax)
  40302e:	00 00                	add    %al,(%rax)
  403030:	01 00                	add    %eax,(%rax)
  403032:	00 00                	add    %al,(%rax)
  403034:	02 00                	add    (%rax),%al
  403036:	00 00                	add    %al,(%rax)
  403038:	01 00                	add    %eax,(%rax)
  40303a:	00 00                	add    %al,(%rax)
  40303c:	03 00                	add    (%rax),%eax
  40303e:	00 00                	add    %al,(%rax)
  403040:	00 00                	add    %al,(%rax)
  403042:	00 00                	add    %al,(%rax)
  403044:	02 00                	add    (%rax),%al
  403046:	00 00                	add    %al,(%rax)
  403048:	01 00                	add    %eax,(%rax)
  40304a:	00 00                	add    %al,(%rax)
  40304c:	02 00                	add    (%rax),%al
  40304e:	00 00                	add    %al,(%rax)
  403050:	02 00                	add    (%rax),%al
  403052:	00 00                	add    %al,(%rax)
  403054:	02 00                	add    (%rax),%al
  403056:	00 00                	add    %al,(%rax)
  403058:	03 00                	add    (%rax),%eax
  40305a:	00 00                	add    %al,(%rax)
  40305c:	02 00                	add    (%rax),%al
  40305e:	00 00                	add    %al,(%rax)
  403060:	02 00                	add    (%rax),%al
  403062:	00 00                	add    %al,(%rax)
  403064:	00 00                	add    %al,(%rax)
  403066:	00 00                	add    %al,(%rax)
  403068:	02 00                	add    (%rax),%al
  40306a:	00 00                	add    %al,(%rax)
  40306c:	01 00                	add    %eax,(%rax)
  40306e:	00 00                	add    %al,(%rax)
  403070:	02 00                	add    (%rax),%al
  403072:	00 00                	add    %al,(%rax)
  403074:	02 00                	add    (%rax),%al
  403076:	00 00                	add    %al,(%rax)
  403078:	02 00                	add    (%rax),%al
  40307a:	00 00                	add    %al,(%rax)
  40307c:	03 00                	add    (%rax),%eax
  40307e:	00 00                	add    %al,(%rax)
  403080:	00 00                	add    %al,(%rax)
  403082:	00 00                	add    %al,(%rax)
  403084:	01 00                	add    %eax,(%rax)
  403086:	00 00                	add    %al,(%rax)
  403088:	01 00                	add    %eax,(%rax)
  40308a:	00 00                	add    %al,(%rax)
  40308c:	01 00                	add    %eax,(%rax)
  40308e:	00 00                	add    %al,(%rax)
  403090:	02 00                	add    (%rax),%al
  403092:	00 00                	add    %al,(%rax)
  403094:	01 00                	add    %eax,(%rax)
  403096:	00 00                	add    %al,(%rax)
  403098:	03 00                	add    (%rax),%eax
  40309a:	00 00                	add    %al,(%rax)
  40309c:	01 00                	add    %eax,(%rax)
  40309e:	00 00                	add    %al,(%rax)
  4030a0:	00 00                	add    %al,(%rax)
  4030a2:	00 00                	add    %al,(%rax)
  4030a4:	01 00                	add    %eax,(%rax)
  4030a6:	00 00                	add    %al,(%rax)
  4030a8:	00 00                	add    %al,(%rax)
  4030aa:	00 00                	add    %al,(%rax)
  4030ac:	02 00                	add    (%rax),%al
  4030ae:	00 00                	add    %al,(%rax)
  4030b0:	01 00                	add    %eax,(%rax)
  4030b2:	00 00                	add    %al,(%rax)
  4030b4:	01 00                	add    %eax,(%rax)
  4030b6:	00 00                	add    %al,(%rax)
  4030b8:	01 00                	add    %eax,(%rax)
  4030ba:	00 00                	add    %al,(%rax)
  4030bc:	02 00                	add    (%rax),%al
  4030be:	00 00                	add    %al,(%rax)
  4030c0:	00 00                	add    %al,(%rax)
  4030c2:	00 00                	add    %al,(%rax)
  4030c4:	01 00                	add    %eax,(%rax)
  4030c6:	00 00                	add    %al,(%rax)
  4030c8:	00 00                	add    %al,(%rax)
  4030ca:	00 00                	add    %al,(%rax)
  4030cc:	02 00                	add    (%rax),%al
  4030ce:	00 00                	add    %al,(%rax)
  4030d0:	01 00                	add    %eax,(%rax)
  4030d2:	00 00                	add    %al,(%rax)
  4030d4:	01 00                	add    %eax,(%rax)
  4030d6:	00 00                	add    %al,(%rax)
  4030d8:	01 00                	add    %eax,(%rax)
  4030da:	00 00                	add    %al,(%rax)
  4030dc:	02 00                	add    (%rax),%al
  4030de:	00 00                	add    %al,(%rax)
  4030e0:	00 00                	add    %al,(%rax)
  4030e2:	00 00                	add    %al,(%rax)
  4030e4:	01 00                	add    %eax,(%rax)
  4030e6:	00 00                	add    %al,(%rax)
  4030e8:	00 00                	add    %al,(%rax)
  4030ea:	00 00                	add    %al,(%rax)
  4030ec:	02 00                	add    (%rax),%al
  4030ee:	00 00                	add    %al,(%rax)
  4030f0:	01 00                	add    %eax,(%rax)
  4030f2:	00 00                	add    %al,(%rax)
  4030f4:	01 00                	add    %eax,(%rax)
  4030f6:	00 00                	add    %al,(%rax)
  4030f8:	01 00                	add    %eax,(%rax)
  4030fa:	00 00                	add    %al,(%rax)
  4030fc:	02 00                	add    (%rax),%al
  4030fe:	00 00                	add    %al,(%rax)
  403100:	00 00                	add    %al,(%rax)
  403102:	00 00                	add    %al,(%rax)
  403104:	01 00                	add    %eax,(%rax)
  403106:	00 00                	add    %al,(%rax)
  403108:	00 00                	add    %al,(%rax)
  40310a:	00 00                	add    %al,(%rax)
  40310c:	02 00                	add    (%rax),%al
  40310e:	00 00                	add    %al,(%rax)
  403110:	01 00                	add    %eax,(%rax)
  403112:	00 00                	add    %al,(%rax)
  403114:	01 00                	add    %eax,(%rax)
  403116:	00 00                	add    %al,(%rax)
  403118:	01 00                	add    %eax,(%rax)
  40311a:	00 00                	add    %al,(%rax)
  40311c:	02 00                	add    (%rax),%al
  40311e:	00 00                	add    %al,(%rax)
  403120:	00 00                	add    %al,(%rax)
  403122:	00 00                	add    %al,(%rax)
  403124:	01 00                	add    %eax,(%rax)
  403126:	00 00                	add    %al,(%rax)
  403128:	01 00                	add    %eax,(%rax)
  40312a:	00 00                	add    %al,(%rax)
  40312c:	00 00                	add    %al,(%rax)
  40312e:	00 00                	add    %al,(%rax)
  403130:	01 00                	add    %eax,(%rax)
  403132:	00 00                	add    %al,(%rax)
  403134:	01 00                	add    %eax,(%rax)
  403136:	00 00                	add    %al,(%rax)
  403138:	01 00                	add    %eax,(%rax)
  40313a:	00 00                	add    %al,(%rax)
  40313c:	02 00                	add    (%rax),%al
  40313e:	00 00                	add    %al,(%rax)
  403140:	00 00                	add    %al,(%rax)
  403142:	00 00                	add    %al,(%rax)
  403144:	01 00                	add    %eax,(%rax)
  403146:	00 00                	add    %al,(%rax)
  403148:	01 00                	add    %eax,(%rax)
  40314a:	00 00                	add    %al,(%rax)
  40314c:	01 00                	add    %eax,(%rax)
  40314e:	00 00                	add    %al,(%rax)
  403150:	01 00                	add    %eax,(%rax)
  403152:	00 00                	add    %al,(%rax)
  403154:	02 00                	add    (%rax),%al
  403156:	00 00                	add    %al,(%rax)
  403158:	02 00                	add    (%rax),%al
  40315a:	00 00                	add    %al,(%rax)
  40315c:	01 00                	add    %eax,(%rax)
  40315e:	00 00                	add    %al,(%rax)
  403160:	01 00                	add    %eax,(%rax)
  403162:	00 00                	add    %al,(%rax)
  403164:	00 00                	add    %al,(%rax)
  403166:	00 00                	add    %al,(%rax)
  403168:	01 00                	add    %eax,(%rax)
  40316a:	00 00                	add    %al,(%rax)
  40316c:	01 00                	add    %eax,(%rax)
  40316e:	00 00                	add    %al,(%rax)
  403170:	01 00                	add    %eax,(%rax)
  403172:	00 00                	add    %al,(%rax)
  403174:	02 00                	add    (%rax),%al
  403176:	00 00                	add    %al,(%rax)
  403178:	02 00                	add    (%rax),%al
  40317a:	00 00                	add    %al,(%rax)
  40317c:	01 00                	add    %eax,(%rax)
  40317e:	00 00                	add    %al,(%rax)
  403180:	00 00                	add    %al,(%rax)
  403182:	00 00                	add    %al,(%rax)
  403184:	01 00                	add    %eax,(%rax)
  403186:	00 00                	add    %al,(%rax)
  403188:	01 00                	add    %eax,(%rax)
  40318a:	00 00                	add    %al,(%rax)
  40318c:	00 00                	add    %al,(%rax)
  40318e:	00 00                	add    %al,(%rax)
  403190:	01 00                	add    %eax,(%rax)
  403192:	00 00                	add    %al,(%rax)
  403194:	01 00                	add    %eax,(%rax)
  403196:	00 00                	add    %al,(%rax)
  403198:	02 00                	add    (%rax),%al
  40319a:	00 00                	add    %al,(%rax)
  40319c:	01 00                	add    %eax,(%rax)
  40319e:	00 00                	add    %al,(%rax)
  4031a0:	00 00                	add    %al,(%rax)
  4031a2:	00 00                	add    %al,(%rax)
  4031a4:	01 00                	add    %eax,(%rax)
  4031a6:	00 00                	add    %al,(%rax)
  4031a8:	00 00                	add    %al,(%rax)
  4031aa:	00 00                	add    %al,(%rax)
  4031ac:	02 00                	add    (%rax),%al
  4031ae:	00 00                	add    %al,(%rax)
  4031b0:	01 00                	add    %eax,(%rax)
  4031b2:	00 00                	add    %al,(%rax)
  4031b4:	00 00                	add    %al,(%rax)
  4031b6:	00 00                	add    %al,(%rax)
  4031b8:	01 00                	add    %eax,(%rax)
  4031ba:	00 00                	add    %al,(%rax)
  4031bc:	01 00                	add    %eax,(%rax)
  4031be:	00 00                	add    %al,(%rax)
  4031c0:	00 00                	add    %al,(%rax)
  4031c2:	00 00                	add    %al,(%rax)
  4031c4:	01 00                	add    %eax,(%rax)
  4031c6:	00 00                	add    %al,(%rax)
  4031c8:	01 00                	add    %eax,(%rax)
  4031ca:	00 00                	add    %al,(%rax)
  4031cc:	01 00                	add    %eax,(%rax)
  4031ce:	00 00                	add    %al,(%rax)
  4031d0:	01 00                	add    %eax,(%rax)
  4031d2:	00 00                	add    %al,(%rax)
  4031d4:	02 00                	add    (%rax),%al
  4031d6:	00 00                	add    %al,(%rax)
  4031d8:	02 00                	add    (%rax),%al
  4031da:	00 00                	add    %al,(%rax)
  4031dc:	02 00                	add    (%rax),%al
  4031de:	00 00                	add    %al,(%rax)
  4031e0:	01 00                	add    %eax,(%rax)
  4031e2:	00 00                	add    %al,(%rax)
  4031e4:	01 00                	add    %eax,(%rax)
  4031e6:	00 00                	add    %al,(%rax)
  4031e8:	01 00                	add    %eax,(%rax)
  4031ea:	00 00                	add    %al,(%rax)
  4031ec:	02 00                	add    (%rax),%al
  4031ee:	00 00                	add    %al,(%rax)
  4031f0:	02 00                	add    (%rax),%al
  4031f2:	00 00                	add    %al,(%rax)
  4031f4:	00 00                	add    %al,(%rax)
  4031f6:	00 00                	add    %al,(%rax)
  4031f8:	02 00                	add    (%rax),%al
  4031fa:	00 00                	add    %al,(%rax)
  4031fc:	01 00                	add    %eax,(%rax)
	...
  403206:	00 00                	add    %al,(%rax)
  403208:	01 00                	add    %eax,(%rax)
  40320a:	00 00                	add    %al,(%rax)
  40320c:	00 00                	add    %al,(%rax)
  40320e:	00 00                	add    %al,(%rax)
  403210:	01 00                	add    %eax,(%rax)
  403212:	00 00                	add    %al,(%rax)
  403214:	01 00                	add    %eax,(%rax)
  403216:	00 00                	add    %al,(%rax)
  403218:	02 00                	add    (%rax),%al
  40321a:	00 00                	add    %al,(%rax)
  40321c:	01 00                	add    %eax,(%rax)
	...
  40322a:	00 00                	add    %al,(%rax)
  40322c:	01 00                	add    %eax,(%rax)
  40322e:	00 00                	add    %al,(%rax)
  403230:	01 00                	add    %eax,(%rax)
  403232:	00 00                	add    %al,(%rax)
  403234:	01 00                	add    %eax,(%rax)
  403236:	00 00                	add    %al,(%rax)
  403238:	01 00                	add    %eax,(%rax)
  40323a:	00 00                	add    %al,(%rax)
  40323c:	02 00                	add    (%rax),%al
  40323e:	00 00                	add    %al,(%rax)
  403240:	00 00                	add    %al,(%rax)
  403242:	00 00                	add    %al,(%rax)
  403244:	02 00                	add    (%rax),%al
  403246:	00 00                	add    %al,(%rax)
  403248:	01 00                	add    %eax,(%rax)
  40324a:	00 00                	add    %al,(%rax)
  40324c:	01 00                	add    %eax,(%rax)
  40324e:	00 00                	add    %al,(%rax)
  403250:	01 00                	add    %eax,(%rax)
  403252:	00 00                	add    %al,(%rax)
  403254:	02 00                	add    (%rax),%al
  403256:	00 00                	add    %al,(%rax)
  403258:	02 00                	add    (%rax),%al
  40325a:	00 00                	add    %al,(%rax)
  40325c:	01 00                	add    %eax,(%rax)
  40325e:	00 00                	add    %al,(%rax)
  403260:	01 00                	add    %eax,(%rax)
  403262:	00 00                	add    %al,(%rax)
  403264:	00 00                	add    %al,(%rax)
  403266:	00 00                	add    %al,(%rax)
  403268:	01 00                	add    %eax,(%rax)
  40326a:	00 00                	add    %al,(%rax)
  40326c:	01 00                	add    %eax,(%rax)
  40326e:	00 00                	add    %al,(%rax)
  403270:	02 00                	add    (%rax),%al
  403272:	00 00                	add    %al,(%rax)
  403274:	01 00                	add    %eax,(%rax)
  403276:	00 00                	add    %al,(%rax)
  403278:	02 00                	add    (%rax),%al
  40327a:	00 00                	add    %al,(%rax)
  40327c:	02 00                	add    (%rax),%al
  40327e:	00 00                	add    %al,(%rax)
  403280:	00 00                	add    %al,(%rax)
  403282:	00 00                	add    %al,(%rax)
  403284:	01 00                	add    %eax,(%rax)
  403286:	00 00                	add    %al,(%rax)
  403288:	01 00                	add    %eax,(%rax)
  40328a:	00 00                	add    %al,(%rax)
  40328c:	00 00                	add    %al,(%rax)
  40328e:	00 00                	add    %al,(%rax)
  403290:	01 00                	add    %eax,(%rax)
  403292:	00 00                	add    %al,(%rax)
  403294:	01 00                	add    %eax,(%rax)
  403296:	00 00                	add    %al,(%rax)
  403298:	02 00                	add    (%rax),%al
	...
  4032a6:	00 00                	add    %al,(%rax)
  4032a8:	01 00                	add    %eax,(%rax)
  4032aa:	00 00                	add    %al,(%rax)
  4032ac:	00 00                	add    %al,(%rax)
  4032ae:	00 00                	add    %al,(%rax)
  4032b0:	01 00                	add    %eax,(%rax)
  4032b2:	00 00                	add    %al,(%rax)
  4032b4:	01 00                	add    %eax,(%rax)
  4032b6:	00 00                	add    %al,(%rax)
  4032b8:	01 00                	add    %eax,(%rax)
  4032ba:	00 00                	add    %al,(%rax)
  4032bc:	02 00                	add    (%rax),%al
  4032be:	00 00                	add    %al,(%rax)
  4032c0:	00 00                	add    %al,(%rax)
  4032c2:	00 00                	add    %al,(%rax)
  4032c4:	01 00                	add    %eax,(%rax)
  4032c6:	00 00                	add    %al,(%rax)
  4032c8:	00 00                	add    %al,(%rax)
  4032ca:	00 00                	add    %al,(%rax)
  4032cc:	02 00                	add    (%rax),%al
  4032ce:	00 00                	add    %al,(%rax)
  4032d0:	01 00                	add    %eax,(%rax)
  4032d2:	00 00                	add    %al,(%rax)
  4032d4:	01 00                	add    %eax,(%rax)
  4032d6:	00 00                	add    %al,(%rax)
  4032d8:	02 00                	add    (%rax),%al
  4032da:	00 00                	add    %al,(%rax)
  4032dc:	01 00                	add    %eax,(%rax)
  4032de:	00 00                	add    %al,(%rax)
  4032e0:	01 00                	add    %eax,(%rax)
  4032e2:	00 00                	add    %al,(%rax)
  4032e4:	00 00                	add    %al,(%rax)
  4032e6:	00 00                	add    %al,(%rax)
  4032e8:	01 00                	add    %eax,(%rax)
  4032ea:	00 00                	add    %al,(%rax)
  4032ec:	01 00                	add    %eax,(%rax)
  4032ee:	00 00                	add    %al,(%rax)
  4032f0:	01 00                	add    %eax,(%rax)
  4032f2:	00 00                	add    %al,(%rax)
  4032f4:	02 00                	add    (%rax),%al
  4032f6:	00 00                	add    %al,(%rax)
  4032f8:	02 00                	add    (%rax),%al
  4032fa:	00 00                	add    %al,(%rax)
  4032fc:	02 00                	add    (%rax),%al
  4032fe:	00 00                	add    %al,(%rax)
  403300:	00 00                	add    %al,(%rax)
  403302:	00 00                	add    %al,(%rax)
  403304:	01 00                	add    %eax,(%rax)
  403306:	00 00                	add    %al,(%rax)
  403308:	01 00                	add    %eax,(%rax)
  40330a:	00 00                	add    %al,(%rax)
  40330c:	01 00                	add    %eax,(%rax)
  40330e:	00 00                	add    %al,(%rax)
  403310:	02 00                	add    (%rax),%al
  403312:	00 00                	add    %al,(%rax)
  403314:	00 00                	add    %al,(%rax)
  403316:	00 00                	add    %al,(%rax)
  403318:	02 00                	add    (%rax),%al
  40331a:	00 00                	add    %al,(%rax)
  40331c:	01 00                	add    %eax,(%rax)
  40331e:	00 00                	add    %al,(%rax)
  403320:	00 00                	add    %al,(%rax)
  403322:	00 00                	add    %al,(%rax)
  403324:	02 00                	add    (%rax),%al
  403326:	00 00                	add    %al,(%rax)
  403328:	01 00                	add    %eax,(%rax)
  40332a:	00 00                	add    %al,(%rax)
  40332c:	00 00                	add    %al,(%rax)
  40332e:	00 00                	add    %al,(%rax)
  403330:	01 00                	add    %eax,(%rax)
  403332:	00 00                	add    %al,(%rax)
  403334:	01 00                	add    %eax,(%rax)
  403336:	00 00                	add    %al,(%rax)
  403338:	01 00                	add    %eax,(%rax)
  40333a:	00 00                	add    %al,(%rax)
  40333c:	02 00                	add    (%rax),%al
  40333e:	00 00                	add    %al,(%rax)
  403340:	00 00                	add    %al,(%rax)
  403342:	00 00                	add    %al,(%rax)
  403344:	01 00                	add    %eax,(%rax)
  403346:	00 00                	add    %al,(%rax)
  403348:	01 00                	add    %eax,(%rax)
  40334a:	00 00                	add    %al,(%rax)
  40334c:	01 00                	add    %eax,(%rax)
  40334e:	00 00                	add    %al,(%rax)
  403350:	02 00                	add    (%rax),%al
  403352:	00 00                	add    %al,(%rax)
  403354:	01 00                	add    %eax,(%rax)
  403356:	00 00                	add    %al,(%rax)
  403358:	02 00                	add    (%rax),%al
  40335a:	00 00                	add    %al,(%rax)
  40335c:	02 00                	add    (%rax),%al
  40335e:	00 00                	add    %al,(%rax)
  403360:	01 00                	add    %eax,(%rax)
  403362:	00 00                	add    %al,(%rax)
  403364:	00 00                	add    %al,(%rax)
  403366:	00 00                	add    %al,(%rax)
  403368:	01 00                	add    %eax,(%rax)
  40336a:	00 00                	add    %al,(%rax)
  40336c:	01 00                	add    %eax,(%rax)
  40336e:	00 00                	add    %al,(%rax)
  403370:	01 00                	add    %eax,(%rax)
  403372:	00 00                	add    %al,(%rax)
  403374:	02 00                	add    (%rax),%al
  403376:	00 00                	add    %al,(%rax)
  403378:	02 00                	add    (%rax),%al
	...
  40338a:	00 00                	add    %al,(%rax)
  40338c:	01 00                	add    %eax,(%rax)
  40338e:	00 00                	add    %al,(%rax)
  403390:	01 00                	add    %eax,(%rax)
  403392:	00 00                	add    %al,(%rax)
  403394:	01 00                	add    %eax,(%rax)
  403396:	00 00                	add    %al,(%rax)
  403398:	02 00                	add    (%rax),%al
  40339a:	00 00                	add    %al,(%rax)
  40339c:	01 00                	add    %eax,(%rax)
  40339e:	00 00                	add    %al,(%rax)
  4033a0:	5b                   	pop    %rbx
  4033a1:	5d                   	pop    %rbp
  4033a2:	00 2b                	add    %ch,(%rbx)
  4033a4:	00 2d 00 7c 00 20    	add    %ch,0x20007c00(%rip)        # 2040afaa <_end+0x20005b82>
  4033aa:	20 00                	and    %al,(%rax)
  4033ac:	54                   	push   %rsp
  4033ad:	45 54                	rex.RB push %r12
  4033af:	52                   	push   %rdx
  4033b0:	49 53                	rex.WB push %r11
  4033b2:	00 53 63             	add    %dl,0x63(%rbx)
  4033b5:	6f                   	outsl  %ds:(%rsi),(%dx)
  4033b6:	72 65                	jb     40341d <PIECES+0x3fd>
  4033b8:	3a 00                	cmp    (%rax),%al
  4033ba:	25 64 00 4c 69       	and    $0x694c0064,%eax
  4033bf:	6e                   	outsb  %ds:(%rsi),(%dx)
  4033c0:	65 73 3a             	gs jae 4033fd <PIECES+0x3dd>
  4033c3:	00 4c 65 76          	add    %cl,0x76(%rbp,%riz,2)
  4033c7:	65 6c                	gs insb (%dx),%es:(%rdi)
  4033c9:	3a 00                	cmp    (%rax),%al
  4033cb:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
  4033cd:	6e                   	outsb  %ds:(%rsi),(%dx)
  4033ce:	74 72                	je     403442 <__GNU_EH_FRAME_HDR+0x6>
  4033d0:	6f                   	outsl  %ds:(%rsi),(%dx)
  4033d1:	6c                   	insb   (%dx),%es:(%rdi)
  4033d2:	73 00                	jae    4033d4 <PIECES+0x3b4>
  4033d4:	3c 20                	cmp    $0x20,%al
  4033d6:	3e 20 20             	ds and %ah,(%rax)
  4033d9:	4d 6f                	rex.WRB outsl %ds:(%rsi),(%dx)
  4033db:	76 65                	jbe    403442 <__GNU_EH_FRAME_HDR+0x6>
  4033dd:	00 5e 20             	add    %bl,0x20(%rsi)
  4033e0:	20 20                	and    %ah,(%rax)
  4033e2:	20 52 6f             	and    %dl,0x6f(%rdx)
  4033e5:	74 61                	je     403448 <__GNU_EH_FRAME_HDR+0xc>
  4033e7:	74 65                	je     40344e <__GNU_EH_FRAME_HDR+0x12>
  4033e9:	00 76 20             	add    %dh,0x20(%rsi)
  4033ec:	20 20                	and    %ah,(%rax)
  4033ee:	20 53 6f             	and    %dl,0x6f(%rbx)
  4033f1:	66 74 20             	data16 je 403414 <PIECES+0x3f4>
  4033f4:	64 72 6f             	fs jb  403466 <__GNU_EH_FRAME_HDR+0x2a>
  4033f7:	70 00                	jo     4033f9 <PIECES+0x3d9>
  4033f9:	53                   	push   %rbx
  4033fa:	70 61                	jo     40345d <__GNU_EH_FRAME_HDR+0x21>
  4033fc:	63 65 20             	movsxd 0x20(%rbp),%esp
  4033ff:	48 61                	rex.W (bad)
  403401:	72 64                	jb     403467 <__GNU_EH_FRAME_HDR+0x2b>
  403403:	20 64 72 6f          	and    %ah,0x6f(%rdx,%rsi,2)
  403407:	70 00                	jo     403409 <PIECES+0x3e9>
  403409:	51                   	push   %rcx
  40340a:	20 20                	and    %ah,(%rax)
  40340c:	20 20                	and    %ah,(%rax)
  40340e:	51                   	push   %rcx
  40340f:	75 69                	jne    40347a <__GNU_EH_FRAME_HDR+0x3e>
  403411:	74 00                	je     403413 <PIECES+0x3f3>
  403413:	47                   	rex.RXB
  403414:	41                   	rex.B
  403415:	4d                   	rex.WRB
  403416:	45 20 4f 56          	and    %r9b,0x56(%r15)
  40341a:	45 52                	rex.RB push %r10
  40341c:	21 00                	and    %eax,(%rax)
  40341e:	53                   	push   %rbx
  40341f:	63 6f 72             	movsxd 0x72(%rdi),%ebp
  403422:	65 3a 20             	cmp    %gs:(%rax),%ah
  403425:	25 64 00 50 72       	and    $0x72500064,%eax
  40342a:	65 73 73             	gs jae 4034a0 <__GNU_EH_FRAME_HDR+0x64>
  40342d:	20 61 6e             	and    %ah,0x6e(%rcx)
  403430:	79 20                	jns    403452 <__GNU_EH_FRAME_HDR+0x16>
  403432:	6b 65 79 2e          	imul   $0x2e,0x79(%rbp),%esp
  403436:	2e                   	cs
  403437:	2e                   	cs
	...

Disassembly of section .eh_frame_hdr:

000000000040343c <__GNU_EH_FRAME_HDR>:
  40343c:	01 1b                	add    %ebx,(%rbx)
  40343e:	03 3b                	add    (%rbx),%edi
  403440:	80 00 00             	addb   $0x0,(%rax)
  403443:	00 0f                	add    %cl,(%rdi)
  403445:	00 00                	add    %al,(%rax)
  403447:	00 e4                	add    %ah,%ah
  403449:	db ff                	(bad)
  40344b:	ff c4                	inc    %esp
  40344d:	00 00                	add    %al,(%rax)
  40344f:	00 54 dd ff          	add    %dl,-0x1(%rbp,%rbx,8)
  403453:	ff 9c 00 00 00 84 dd 	lcall  *-0x227c0000(%rax,%rax,1)
  40345a:	ff                   	(bad)
  40345b:	ff b0 00 00 00 3a    	push   0x3a000000(%rax)
  403461:	de ff                	fdivrp %st,%st(7)
  403463:	ff                   	ljmp   (bad)
  403464:	ec                   	in     (%dx),%al
  403465:	00 00                	add    %al,(%rax)
  403467:	00 8f de ff ff 0c    	add    %cl,0xcffffde(%rdi)
  40346d:	01 00                	add    %eax,(%rax)
  40346f:	00 bb de ff ff 2c    	add    %bh,0x2cffffde(%rbx)
  403475:	01 00                	add    %eax,(%rax)
  403477:	00 a9 df ff ff 4c    	add    %ch,0x4cffffdf(%rcx)
  40347d:	01 00                	add    %eax,(%rax)
  40347f:	00 81 e0 ff ff 6c    	add    %al,0x6cffffe0(%rcx)
  403485:	01 00                	add    %eax,(%rax)
  403487:	00 6c e2 ff          	add    %ch,-0x1(%rdx,%riz,8)
  40348b:	ff 8c 01 00 00 e5 e2 	decl   -0x1d1b0000(%rcx,%rax,1)
  403492:	ff                   	(bad)
  403493:	ff ac 01 00 00 ad e6 	ljmp   *-0x19530000(%rcx,%rax,1)
  40349a:	ff                   	(bad)
  40349b:	ff cc                	dec    %esp
  40349d:	01 00                	add    %eax,(%rax)
  40349f:	00 17                	add    %dl,(%rdi)
  4034a1:	e7 ff                	out    %eax,$0xff
  4034a3:	ff                   	ljmp   (bad)
  4034a4:	ec                   	in     (%dx),%al
  4034a5:	01 00                	add    %eax,(%rax)
  4034a7:	00 ef                	add    %ch,%bh
  4034a9:	e7 ff                	out    %eax,$0xff
  4034ab:	ff 0c 02             	decl   (%rdx,%rax,1)
  4034ae:	00 00                	add    %al,(%rax)
  4034b0:	95                   	xchg   %eax,%ebp
  4034b1:	e8 ff ff 30 02       	call   27134b5 <_end+0x230e08d>
  4034b6:	00 00                	add    %al,(%rax)
  4034b8:	0f e9 ff             	psubsw %mm7,%mm7
  4034bb:	ff 50 02             	call   *0x2(%rax)
	...

Disassembly of section .eh_frame:

00000000004034c0 <__FRAME_END__-0x1ec>:
  4034c0:	14 00                	adc    $0x0,%al
  4034c2:	00 00                	add    %al,(%rax)
  4034c4:	00 00                	add    %al,(%rax)
  4034c6:	00 00                	add    %al,(%rax)
  4034c8:	01 7a 52             	add    %edi,0x52(%rdx)
  4034cb:	00 01                	add    %al,(%rcx)
  4034cd:	78 10                	js     4034df <__GNU_EH_FRAME_HDR+0xa3>
  4034cf:	01 1b                	add    %ebx,(%rbx)
  4034d1:	0c 07                	or     $0x7,%al
  4034d3:	08 90 01 00 00 10    	or     %dl,0x10000001(%rax)
  4034d9:	00 00                	add    %al,(%rax)
  4034db:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4034de:	00 00                	add    %al,(%rax)
  4034e0:	b0 dc                	mov    $0xdc,%al
  4034e2:	ff                   	(bad)
  4034e3:	ff 26                	jmp    *(%rsi)
  4034e5:	00 00                	add    %al,(%rax)
  4034e7:	00 00                	add    %al,(%rax)
  4034e9:	44 07                	rex.R (bad)
  4034eb:	10 10                	adc    %dl,(%rax)
  4034ed:	00 00                	add    %al,(%rax)
  4034ef:	00 30                	add    %dh,(%rax)
  4034f1:	00 00                	add    %al,(%rax)
  4034f3:	00 cc                	add    %cl,%ah
  4034f5:	dc ff                	fdivr  %st,%st(7)
  4034f7:	ff 05 00 00 00 00    	incl   0x0(%rip)        # 4034fd <__GNU_EH_FRAME_HDR+0xc1>
  4034fd:	00 00                	add    %al,(%rax)
  4034ff:	00 24 00             	add    %ah,(%rax,%rax,1)
  403502:	00 00                	add    %al,(%rax)
  403504:	44 00 00             	add    %r8b,(%rax)
  403507:	00 18                	add    %bl,(%rax)
  403509:	db ff                	(bad)
  40350b:	ff 70 01             	push   0x1(%rax)
  40350e:	00 00                	add    %al,(%rax)
  403510:	00 0e                	add    %cl,(%rsi)
  403512:	10 46 0e             	adc    %al,0xe(%rsi)
  403515:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  403518:	0b 77 08             	or     0x8(%rdi),%esi
  40351b:	80 00 3f             	addb   $0x3f,(%rax)
  40351e:	1a 3b                	sbb    (%rbx),%bh
  403520:	2a 33                	sub    (%rbx),%dh
  403522:	24 22                	and    $0x22,%al
  403524:	00 00                	add    %al,(%rax)
  403526:	00 00                	add    %al,(%rax)
  403528:	1c 00                	sbb    $0x0,%al
  40352a:	00 00                	add    %al,(%rax)
  40352c:	6c                   	insb   (%dx),%es:(%rdi)
  40352d:	00 00                	add    %al,(%rax)
  40352f:	00 46 dd             	add    %al,-0x23(%rsi)
  403532:	ff                   	(bad)
  403533:	ff 55 00             	call   *0x0(%rbp)
  403536:	00 00                	add    %al,(%rax)
  403538:	00 41 0e             	add    %al,0xe(%rcx)
  40353b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403541:	02 50 0c             	add    0xc(%rax),%dl
  403544:	07                   	(bad)
  403545:	08 00                	or     %al,(%rax)
  403547:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40354a:	00 00                	add    %al,(%rax)
  40354c:	8c 00                	mov    %es,(%rax)
  40354e:	00 00                	add    %al,(%rax)
  403550:	7b dd                	jnp    40352f <__GNU_EH_FRAME_HDR+0xf3>
  403552:	ff                   	(bad)
  403553:	ff 2c 00             	ljmp   *(%rax,%rax,1)
  403556:	00 00                	add    %al,(%rax)
  403558:	00 41 0e             	add    %al,0xe(%rcx)
  40355b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403561:	67 0c 07             	addr32 or $0x7,%al
  403564:	08 00                	or     %al,(%rax)
  403566:	00 00                	add    %al,(%rax)
  403568:	1c 00                	sbb    $0x0,%al
  40356a:	00 00                	add    %al,(%rax)
  40356c:	ac                   	lods   %ds:(%rsi),%al
  40356d:	00 00                	add    %al,(%rax)
  40356f:	00 87 dd ff ff ee    	add    %al,-0x11000023(%rdi)
  403575:	00 00                	add    %al,(%rax)
  403577:	00 00                	add    %al,(%rax)
  403579:	41 0e                	rex.B (bad)
  40357b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403581:	02 e9                	add    %cl,%ch
  403583:	0c 07                	or     $0x7,%al
  403585:	08 00                	or     %al,(%rax)
  403587:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40358a:	00 00                	add    %al,(%rax)
  40358c:	cc                   	int3
  40358d:	00 00                	add    %al,(%rax)
  40358f:	00 55 de             	add    %dl,-0x22(%rbp)
  403592:	ff                   	(bad)
  403593:	ff                   	lcall  (bad)
  403594:	d8 00                	fadds  (%rax)
  403596:	00 00                	add    %al,(%rax)
  403598:	00 41 0e             	add    %al,0xe(%rcx)
  40359b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4035a1:	02 d3                	add    %bl,%dl
  4035a3:	0c 07                	or     $0x7,%al
  4035a5:	08 00                	or     %al,(%rax)
  4035a7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4035aa:	00 00                	add    %al,(%rax)
  4035ac:	ec                   	in     (%dx),%al
  4035ad:	00 00                	add    %al,(%rax)
  4035af:	00 0d df ff ff eb    	add    %cl,-0x14000021(%rip)        # ffffffffec403594 <_end+0xffffffffebffe16c>
  4035b5:	01 00                	add    %eax,(%rax)
  4035b7:	00 00                	add    %al,(%rax)
  4035b9:	41 0e                	rex.B (bad)
  4035bb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4035c1:	03 e6                	add    %esi,%esp
  4035c3:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
  4035c6:	08 00                	or     %al,(%rax)
  4035c8:	1c 00                	sbb    $0x0,%al
  4035ca:	00 00                	add    %al,(%rax)
  4035cc:	0c 01                	or     $0x1,%al
  4035ce:	00 00                	add    %al,(%rax)
  4035d0:	d8 e0                	fsub   %st(0),%st
  4035d2:	ff                   	(bad)
  4035d3:	ff                   	(bad)
  4035d4:	79 00                	jns    4035d6 <__GNU_EH_FRAME_HDR+0x19a>
  4035d6:	00 00                	add    %al,(%rax)
  4035d8:	00 41 0e             	add    %al,0xe(%rcx)
  4035db:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4035e1:	02 74 0c 07          	add    0x7(%rsp,%rcx,1),%dh
  4035e5:	08 00                	or     %al,(%rax)
  4035e7:	00 1c 00             	add    %bl,(%rax,%rax,1)
  4035ea:	00 00                	add    %al,(%rax)
  4035ec:	2c 01                	sub    $0x1,%al
  4035ee:	00 00                	add    %al,(%rax)
  4035f0:	31 e1                	xor    %esp,%ecx
  4035f2:	ff                   	(bad)
  4035f3:	ff c8                	dec    %eax
  4035f5:	03 00                	add    (%rax),%eax
  4035f7:	00 00                	add    %al,(%rax)
  4035f9:	41 0e                	rex.B (bad)
  4035fb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403601:	03 c3                	add    %ebx,%eax
  403603:	03 0c 07             	add    (%rdi,%rax,1),%ecx
  403606:	08 00                	or     %al,(%rax)
  403608:	1c 00                	sbb    $0x0,%al
  40360a:	00 00                	add    %al,(%rax)
  40360c:	4c 01 00             	add    %r8,(%rax)
  40360f:	00 d9                	add    %bl,%cl
  403611:	e4 ff                	in     $0xff,%al
  403613:	ff 6a 00             	ljmp   *0x0(%rdx)
  403616:	00 00                	add    %al,(%rax)
  403618:	00 41 0e             	add    %al,0xe(%rcx)
  40361b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403621:	02 65 0c             	add    0xc(%rbp),%ah
  403624:	07                   	(bad)
  403625:	08 00                	or     %al,(%rax)
  403627:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40362a:	00 00                	add    %al,(%rax)
  40362c:	6c                   	insb   (%dx),%es:(%rdi)
  40362d:	01 00                	add    %eax,(%rax)
  40362f:	00 23                	add    %ah,(%rbx)
  403631:	e5 ff                	in     $0xff,%eax
  403633:	ff                   	lcall  (bad)
  403634:	d8 00                	fadds  (%rax)
  403636:	00 00                	add    %al,(%rax)
  403638:	00 41 0e             	add    %al,0xe(%rcx)
  40363b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403641:	02 d3                	add    %bl,%dl
  403643:	0c 07                	or     $0x7,%al
  403645:	08 00                	or     %al,(%rax)
  403647:	00 20                	add    %ah,(%rax)
  403649:	00 00                	add    %al,(%rax)
  40364b:	00 8c 01 00 00 db e5 	add    %cl,-0x1a250000(%rcx,%rax,1)
  403652:	ff                   	(bad)
  403653:	ff a6 00 00 00 00    	jmp    *0x0(%rsi)
  403659:	41 0e                	rex.B (bad)
  40365b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403661:	44 8d 03             	lea    (%rbx),%r8d
  403664:	8c 04 02             	mov    %es,(%rdx,%rax,1)
  403667:	9d                   	popf
  403668:	0c 07                	or     $0x7,%al
  40366a:	08 00                	or     %al,(%rax)
  40366c:	1c 00                	sbb    $0x0,%al
  40366e:	00 00                	add    %al,(%rax)
  403670:	b0 01                	mov    $0x1,%al
  403672:	00 00                	add    %al,(%rax)
  403674:	5d                   	pop    %rbp
  403675:	e6 ff                	out    %al,$0xff
  403677:	ff                   	(bad)
  403678:	7a 00                	jp     40367a <__GNU_EH_FRAME_HDR+0x23e>
  40367a:	00 00                	add    %al,(%rax)
  40367c:	00 41 0e             	add    %al,0xe(%rcx)
  40367f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  403685:	02 75 0c             	add    0xc(%rbp),%dh
  403688:	07                   	(bad)
  403689:	08 00                	or     %al,(%rax)
  40368b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  40368e:	00 00                	add    %al,(%rax)
  403690:	d0 01                	rolb   $1,(%rcx)
  403692:	00 00                	add    %al,(%rax)
  403694:	b7 e6                	mov    $0xe6,%bh
  403696:	ff                   	(bad)
  403697:	ff cf                	dec    %edi
  403699:	03 00                	add    (%rax),%eax
  40369b:	00 00                	add    %al,(%rax)
  40369d:	41 0e                	rex.B (bad)
  40369f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  4036a5:	03 ca                	add    %edx,%ecx
  4036a7:	03 0c 07             	add    (%rdi,%rax,1),%ecx
  4036aa:	08 00                	or     %al,(%rax)

00000000004036ac <__FRAME_END__>:
  4036ac:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000404dd8 <__frame_dummy_init_array_entry>:
  404dd8:	70 12                	jo     404dec <_DYNAMIC+0x4>
  404dda:	40 00 00             	rex add %al,(%rax)
  404ddd:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000404de0 <__do_global_dtors_aux_fini_array_entry>:
  404de0:	40 12 40 00          	rex adc 0x0(%rax),%al
  404de4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000404de8 <_DYNAMIC>:
  404de8:	01 00                	add    %eax,(%rax)
  404dea:	00 00                	add    %al,(%rax)
  404dec:	00 00                	add    %al,(%rax)
  404dee:	00 00                	add    %al,(%rax)
  404df0:	c9                   	leave
  404df1:	00 00                	add    %al,(%rax)
  404df3:	00 00                	add    %al,(%rax)
  404df5:	00 00                	add    %al,(%rax)
  404df7:	00 01                	add    %al,(%rcx)
  404df9:	00 00                	add    %al,(%rax)
  404dfb:	00 00                	add    %al,(%rax)
  404dfd:	00 00                	add    %al,(%rax)
  404dff:	00 d9                	add    %bl,%cl
  404e01:	00 00                	add    %al,(%rax)
  404e03:	00 00                	add    %al,(%rax)
  404e05:	00 00                	add    %al,(%rax)
  404e07:	00 01                	add    %al,(%rcx)
  404e09:	00 00                	add    %al,(%rax)
  404e0b:	00 00                	add    %al,(%rax)
  404e0d:	00 00                	add    %al,(%rax)
  404e0f:	00 e7                	add    %ah,%bh
  404e11:	00 00                	add    %al,(%rax)
  404e13:	00 00                	add    %al,(%rax)
  404e15:	00 00                	add    %al,(%rax)
  404e17:	00 0c 00             	add    %cl,(%rax,%rax,1)
  404e1a:	00 00                	add    %al,(%rax)
  404e1c:	00 00                	add    %al,(%rax)
  404e1e:	00 00                	add    %al,(%rax)
  404e20:	00 10                	add    %dl,(%rax)
  404e22:	40 00 00             	rex add %al,(%rax)
  404e25:	00 00                	add    %al,(%rax)
  404e27:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 404e2d <_DYNAMIC+0x45>
  404e2d:	00 00                	add    %al,(%rax)
  404e2f:	00 1c 21             	add    %bl,(%rcx,%riz,1)
  404e32:	40 00 00             	rex add %al,(%rax)
  404e35:	00 00                	add    %al,(%rax)
  404e37:	00 19                	add    %bl,(%rcx)
  404e39:	00 00                	add    %al,(%rax)
  404e3b:	00 00                	add    %al,(%rax)
  404e3d:	00 00                	add    %al,(%rax)
  404e3f:	00 d8                	add    %bl,%al
  404e41:	4d                   	rex.WRB
  404e42:	40 00 00             	rex add %al,(%rax)
  404e45:	00 00                	add    %al,(%rax)
  404e47:	00 1b                	add    %bl,(%rbx)
  404e49:	00 00                	add    %al,(%rax)
  404e4b:	00 00                	add    %al,(%rax)
  404e4d:	00 00                	add    %al,(%rax)
  404e4f:	00 08                	add    %cl,(%rax)
  404e51:	00 00                	add    %al,(%rax)
  404e53:	00 00                	add    %al,(%rax)
  404e55:	00 00                	add    %al,(%rax)
  404e57:	00 1a                	add    %bl,(%rdx)
  404e59:	00 00                	add    %al,(%rax)
  404e5b:	00 00                	add    %al,(%rax)
  404e5d:	00 00                	add    %al,(%rax)
  404e5f:	00 e0                	add    %ah,%al
  404e61:	4d                   	rex.WRB
  404e62:	40 00 00             	rex add %al,(%rax)
  404e65:	00 00                	add    %al,(%rax)
  404e67:	00 1c 00             	add    %bl,(%rax,%rax,1)
  404e6a:	00 00                	add    %al,(%rax)
  404e6c:	00 00                	add    %al,(%rax)
  404e6e:	00 00                	add    %al,(%rax)
  404e70:	08 00                	or     %al,(%rax)
  404e72:	00 00                	add    %al,(%rax)
  404e74:	00 00                	add    %al,(%rax)
  404e76:	00 00                	add    %al,(%rax)
  404e78:	f5                   	cmc
  404e79:	fe                   	(bad)
  404e7a:	ff 6f 00             	ljmp   *0x0(%rdi)
  404e7d:	00 00                	add    %al,(%rax)
  404e7f:	00 c0                	add    %al,%al
  404e81:	03 40 00             	add    0x0(%rax),%eax
  404e84:	00 00                	add    %al,(%rax)
  404e86:	00 00                	add    %al,(%rax)
  404e88:	05 00 00 00 00       	add    $0x0,%eax
  404e8d:	00 00                	add    %al,(%rax)
  404e8f:	00 58 06             	add    %bl,0x6(%rax)
  404e92:	40 00 00             	rex add %al,(%rax)
  404e95:	00 00                	add    %al,(%rax)
  404e97:	00 06                	add    %al,(%rsi)
  404e99:	00 00                	add    %al,(%rax)
  404e9b:	00 00                	add    %al,(%rax)
  404e9d:	00 00                	add    %al,(%rax)
  404e9f:	00 e8                	add    %ch,%al
  404ea1:	03 40 00             	add    0x0(%rax),%eax
  404ea4:	00 00                	add    %al,(%rax)
  404ea6:	00 00                	add    %al,(%rax)
  404ea8:	0a 00                	or     (%rax),%al
  404eaa:	00 00                	add    %al,(%rax)
  404eac:	00 00                	add    %al,(%rax)
  404eae:	00 00                	add    %al,(%rax)
  404eb0:	08 01                	or     %al,(%rcx)
  404eb2:	00 00                	add    %al,(%rax)
  404eb4:	00 00                	add    %al,(%rax)
  404eb6:	00 00                	add    %al,(%rax)
  404eb8:	0b 00                	or     (%rax),%eax
  404eba:	00 00                	add    %al,(%rax)
  404ebc:	00 00                	add    %al,(%rax)
  404ebe:	00 00                	add    %al,(%rax)
  404ec0:	18 00                	sbb    %al,(%rax)
  404ec2:	00 00                	add    %al,(%rax)
  404ec4:	00 00                	add    %al,(%rax)
  404ec6:	00 00                	add    %al,(%rax)
  404ec8:	15 00 00 00 00       	adc    $0x0,%eax
	...
  404ed5:	00 00                	add    %al,(%rax)
  404ed7:	00 03                	add    %al,(%rbx)
  404ed9:	00 00                	add    %al,(%rax)
  404edb:	00 00                	add    %al,(%rax)
  404edd:	00 00                	add    %al,(%rax)
  404edf:	00 e8                	add    %ch,%al
  404ee1:	4f                   	rex.WRXB
  404ee2:	40 00 00             	rex add %al,(%rax)
  404ee5:	00 00                	add    %al,(%rax)
  404ee7:	00 02                	add    %al,(%rdx)
  404ee9:	00 00                	add    %al,(%rax)
  404eeb:	00 00                	add    %al,(%rax)
  404eed:	00 00                	add    %al,(%rax)
  404eef:	00 10                	add    %dl,(%rax)
  404ef1:	02 00                	add    (%rax),%al
  404ef3:	00 00                	add    %al,(%rax)
  404ef5:	00 00                	add    %al,(%rax)
  404ef7:	00 14 00             	add    %dl,(%rax,%rax,1)
  404efa:	00 00                	add    %al,(%rax)
  404efc:	00 00                	add    %al,(%rax)
  404efe:	00 00                	add    %al,(%rax)
  404f00:	07                   	(bad)
  404f01:	00 00                	add    %al,(%rax)
  404f03:	00 00                	add    %al,(%rax)
  404f05:	00 00                	add    %al,(%rax)
  404f07:	00 17                	add    %dl,(%rdi)
  404f09:	00 00                	add    %al,(%rax)
  404f0b:	00 00                	add    %al,(%rax)
  404f0d:	00 00                	add    %al,(%rax)
  404f0f:	00 10                	add    %dl,(%rax)
  404f11:	08 40 00             	or     %al,0x0(%rax)
  404f14:	00 00                	add    %al,(%rax)
  404f16:	00 00                	add    %al,(%rax)
  404f18:	07                   	(bad)
  404f19:	00 00                	add    %al,(%rax)
  404f1b:	00 00                	add    %al,(%rax)
  404f1d:	00 00                	add    %al,(%rax)
  404f1f:	00 c8                	add    %cl,%al
  404f21:	07                   	(bad)
  404f22:	40 00 00             	rex add %al,(%rax)
  404f25:	00 00                	add    %al,(%rax)
  404f27:	00 08                	add    %cl,(%rax)
  404f29:	00 00                	add    %al,(%rax)
  404f2b:	00 00                	add    %al,(%rax)
  404f2d:	00 00                	add    %al,(%rax)
  404f2f:	00 48 00             	add    %cl,0x0(%rax)
  404f32:	00 00                	add    %al,(%rax)
  404f34:	00 00                	add    %al,(%rax)
  404f36:	00 00                	add    %al,(%rax)
  404f38:	09 00                	or     %eax,(%rax)
  404f3a:	00 00                	add    %al,(%rax)
  404f3c:	00 00                	add    %al,(%rax)
  404f3e:	00 00                	add    %al,(%rax)
  404f40:	18 00                	sbb    %al,(%rax)
  404f42:	00 00                	add    %al,(%rax)
  404f44:	00 00                	add    %al,(%rax)
  404f46:	00 00                	add    %al,(%rax)
  404f48:	fe                   	(bad)
  404f49:	ff                   	(bad)
  404f4a:	ff 6f 00             	ljmp   *0x0(%rdi)
  404f4d:	00 00                	add    %al,(%rax)
  404f4f:	00 98 07 40 00 00    	add    %bl,0x4007(%rax)
  404f55:	00 00                	add    %al,(%rax)
  404f57:	00 ff                	add    %bh,%bh
  404f59:	ff                   	(bad)
  404f5a:	ff 6f 00             	ljmp   *0x0(%rdi)
  404f5d:	00 00                	add    %al,(%rax)
  404f5f:	00 01                	add    %al,(%rcx)
  404f61:	00 00                	add    %al,(%rax)
  404f63:	00 00                	add    %al,(%rax)
  404f65:	00 00                	add    %al,(%rax)
  404f67:	00 f0                	add    %dh,%al
  404f69:	ff                   	(bad)
  404f6a:	ff 6f 00             	ljmp   *0x0(%rdi)
  404f6d:	00 00                	add    %al,(%rax)
  404f6f:	00 60 07             	add    %ah,0x7(%rax)
  404f72:	40 00 00             	rex add %al,(%rax)
	...

Disassembly of section .got:

0000000000404fd8 <.got>:
	...

Disassembly of section .got.plt:

0000000000404fe8 <_GLOBAL_OFFSET_TABLE_>:
  404fe8:	e8 4d 40 00 00       	call   40903a <_end+0x3c12>
	...
  404ffd:	00 00                	add    %al,(%rax)
  404fff:	00 36                	add    %dh,(%rsi)
  405001:	10 40 00             	adc    %al,0x0(%rax)
  405004:	00 00                	add    %al,(%rax)
  405006:	00 00                	add    %al,(%rax)
  405008:	46 10 40 00          	rex.RX adc %r8b,0x0(%rax)
  40500c:	00 00                	add    %al,(%rax)
  40500e:	00 00                	add    %al,(%rax)
  405010:	56                   	push   %rsi
  405011:	10 40 00             	adc    %al,0x0(%rax)
  405014:	00 00                	add    %al,(%rax)
  405016:	00 00                	add    %al,(%rax)
  405018:	66 10 40 00          	data16 adc %al,0x0(%rax)
  40501c:	00 00                	add    %al,(%rax)
  40501e:	00 00                	add    %al,(%rax)
  405020:	76 10                	jbe    405032 <_GLOBAL_OFFSET_TABLE_+0x4a>
  405022:	40 00 00             	rex add %al,(%rax)
  405025:	00 00                	add    %al,(%rax)
  405027:	00 86 10 40 00 00    	add    %al,0x4010(%rsi)
  40502d:	00 00                	add    %al,(%rax)
  40502f:	00 96 10 40 00 00    	add    %dl,0x4010(%rsi)
  405035:	00 00                	add    %al,(%rax)
  405037:	00 a6 10 40 00 00    	add    %ah,0x4010(%rsi)
  40503d:	00 00                	add    %al,(%rax)
  40503f:	00 b6 10 40 00 00    	add    %dh,0x4010(%rsi)
  405045:	00 00                	add    %al,(%rax)
  405047:	00 c6                	add    %al,%dh
  405049:	10 40 00             	adc    %al,0x0(%rax)
  40504c:	00 00                	add    %al,(%rax)
  40504e:	00 00                	add    %al,(%rax)
  405050:	d6                   	(bad)
  405051:	10 40 00             	adc    %al,0x0(%rax)
  405054:	00 00                	add    %al,(%rax)
  405056:	00 00                	add    %al,(%rax)
  405058:	e6 10                	out    %al,$0x10
  40505a:	40 00 00             	rex add %al,(%rax)
  40505d:	00 00                	add    %al,(%rax)
  40505f:	00 f6                	add    %dh,%dh
  405061:	10 40 00             	adc    %al,0x0(%rax)
  405064:	00 00                	add    %al,(%rax)
  405066:	00 00                	add    %al,(%rax)
  405068:	06                   	(bad)
  405069:	11 40 00             	adc    %eax,0x0(%rax)
  40506c:	00 00                	add    %al,(%rax)
  40506e:	00 00                	add    %al,(%rax)
  405070:	16                   	(bad)
  405071:	11 40 00             	adc    %eax,0x0(%rax)
  405074:	00 00                	add    %al,(%rax)
  405076:	00 00                	add    %al,(%rax)
  405078:	26 11 40 00          	es adc %eax,0x0(%rax)
  40507c:	00 00                	add    %al,(%rax)
  40507e:	00 00                	add    %al,(%rax)
  405080:	36 11 40 00          	ss adc %eax,0x0(%rax)
  405084:	00 00                	add    %al,(%rax)
  405086:	00 00                	add    %al,(%rax)
  405088:	46 11 40 00          	rex.RX adc %r8d,0x0(%rax)
  40508c:	00 00                	add    %al,(%rax)
  40508e:	00 00                	add    %al,(%rax)
  405090:	56                   	push   %rsi
  405091:	11 40 00             	adc    %eax,0x0(%rax)
  405094:	00 00                	add    %al,(%rax)
  405096:	00 00                	add    %al,(%rax)
  405098:	66 11 40 00          	adc    %ax,0x0(%rax)
  40509c:	00 00                	add    %al,(%rax)
  40509e:	00 00                	add    %al,(%rax)
  4050a0:	76 11                	jbe    4050b3 <__data_start+0x3>
  4050a2:	40 00 00             	rex add %al,(%rax)
  4050a5:	00 00                	add    %al,(%rax)
  4050a7:	00 86 11 40 00 00    	add    %al,0x4011(%rsi)
  4050ad:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

00000000004050b0 <__data_start>:
  4050b0:	00 00                	add    %al,(%rax)
	...

00000000004050b4 <level>:
  4050b4:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
   e:	30 2e                	xor    %ch,(%rsi)
  10:	31 20                	xor    %esp,(%rax)
  12:	32 30                	xor    (%rax),%dh
  14:	32 34 30             	xor    (%rax,%rsi,1),%dh
  17:	33 31                	xor    (%rcx),%esi
  19:	36 20 28             	ss and %ch,(%rax)
  1c:	52                   	push   %rdx
  1d:	65 64 20 48 61       	gs and %cl,%fs:0x61(%rax)
  22:	74 20                	je     44 <__abi_tag-0x400358>
  24:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
  27:	30 2e                	xor    %ch,(%rsi)
  29:	31 2d 30 29 00 47    	xor    %ebp,0x47002930(%rip)        # 4700295f <_end+0x46bfd537>
  2f:	43                   	rex.XB
  30:	43 3a 20             	rex.XB cmp (%r8),%spl
  33:	28 47 4e             	sub    %al,0x4e(%rdi)
  36:	55                   	push   %rbp
  37:	29 20                	sub    %esp,(%rax)
  39:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
  3c:	32 2e                	xor    (%rsi),%ch
  3e:	31 20                	xor    %esp,(%rax)
  40:	32 30                	xor    (%rax),%dh
  42:	32 34 30             	xor    (%rax,%rsi,1),%dh
  45:	39 31                	cmp    %esi,(%rcx)
  47:	32 20                	xor    (%rax),%ah
  49:	28 52 65             	sub    %dl,0x65(%rdx)
  4c:	64 20 48 61          	and    %cl,%fs:0x61(%rax)
  50:	74 20                	je     72 <__abi_tag-0x40032a>
  52:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
  55:	32 2e                	xor    (%rsi),%ch
  57:	31                   	.byte 0x31
  58:	2d                   	.byte 0x2d
  59:	33 29                	xor    (%rcx),%ebp
	...

Disassembly of section .annobin.notes:

0000000000000000 <.annobin.notes>:
   0:	41 56                	push   %r14
   2:	3a 34 70             	cmp    (%rax,%rsi,2),%dh
   5:	31 32                	xor    %esi,(%rdx)
   7:	34 30                	xor    $0x30,%al
   9:	00 52 56             	add    %dl,0x56(%rdx)
   c:	3a 72 75             	cmp    0x75(%rdx),%dh
   f:	6e                   	outsb  %ds:(%rsi),(%dx)
  10:	6e                   	outsb  %ds:(%rsi),(%dx)
  11:	69 6e 67 20 67 63 63 	imul   $0x63636720,0x67(%rsi),%ebp
  18:	20 31                	and    %dh,(%rcx)
  1a:	34 2e                	xor    $0x2e,%al
  1c:	30 2e                	xor    %ch,(%rsi)
  1e:	31 20                	xor    %esp,(%rax)
  20:	32 30                	xor    (%rax),%dh
  22:	32 34 30             	xor    (%rax,%rsi,1),%dh
  25:	33 31                	xor    (%rcx),%esi
  27:	36 00 42 56          	ss add %al,0x56(%rdx)
  2b:	3a 61 6e             	cmp    0x6e(%rcx),%ah
  2e:	6e                   	outsb  %ds:(%rsi),(%dx)
  2f:	6f                   	outsl  %ds:(%rsi),(%dx)
  30:	62 69 6e 20 67       	(bad)
  35:	63 63 20             	movsxd 0x20(%rbx),%esp
  38:	31 34 2e             	xor    %esi,(%rsi,%rbp,1)
  3b:	30 2e                	xor    %ch,(%rsi)
  3d:	31 20                	xor    %esp,(%rax)
  3f:	32 30                	xor    (%rax),%dh
  41:	32 34 30             	xor    (%rax,%rsi,1),%dh
  44:	33 31                	xor    (%rcx),%esi
  46:	36 00 47 57          	ss add %al,0x57(%rdi)
  4a:	3a 30                	cmp    (%rax),%dh
  4c:	78 37                	js     85 <__abi_tag-0x400317>
  4e:	64 36 30 35 36 32 20 	fs xor %dh,%fs:0x2e203236(%rip)        # 2e20328c <_end+0x2ddfde64>
  55:	2e 
  56:	2e 2f                	cs (bad)
  58:	73 79                	jae    d3 <__abi_tag-0x4002c9>
  5a:	73 64                	jae    c0 <__abi_tag-0x4002dc>
  5c:	65 70 73             	gs jo  d2 <__abi_tag-0x4002ca>
  5f:	2f                   	(bad)
  60:	78 38                	js     9a <__abi_tag-0x400302>
  62:	36 2f                	ss (bad)
  64:	61                   	(bad)
  65:	62 69 2d 6e 6f       	(bad)
  6a:	74 65                	je     d1 <__abi_tag-0x4002cb>
  6c:	2e 63 00             	cs movsxd (%rax),%eax
  6f:	53                   	push   %rbx
  70:	50                   	push   %rax
  71:	3a 33                	cmp    (%rbx),%dh
  73:	00 53 43             	add    %dl,0x43(%rbx)
  76:	3a 2d 31 20 2e 2e    	cmp    0x2e2e2031(%rip),%ch        # 2e2e20ad <_end+0x2dedcc85>
  7c:	2f                   	(bad)
  7d:	73 79                	jae    f8 <__abi_tag-0x4002a4>
  7f:	73 64                	jae    e5 <__abi_tag-0x4002b7>
  81:	65 70 73             	gs jo  f7 <__abi_tag-0x4002a5>
  84:	2f                   	(bad)
  85:	78 38                	js     bf <__abi_tag-0x4002dd>
  87:	36 2f                	ss (bad)
  89:	61                   	(bad)
  8a:	62 69 2d 6e 6f       	(bad)
  8f:	74 65                	je     f6 <__abi_tag-0x4002a6>
  91:	2e 63 00             	cs movsxd (%rax),%eax
  94:	43                   	rex.XB
  95:	46 3a 38             	rex.RX cmp (%rax),%r15b
  98:	20 2e                	and    %ch,(%rsi)
  9a:	2e 2f                	cs (bad)
  9c:	73 79                	jae    117 <__abi_tag-0x400285>
  9e:	73 64                	jae    104 <__abi_tag-0x400298>
  a0:	65 70 73             	gs jo  116 <__abi_tag-0x400286>
  a3:	2f                   	(bad)
  a4:	78 38                	js     de <__abi_tag-0x4002be>
  a6:	36 2f                	ss (bad)
  a8:	61                   	(bad)
  a9:	62 69 2d 6e 6f       	(bad)
  ae:	74 65                	je     115 <__abi_tag-0x400287>
  b0:	2e 63 00             	cs movsxd (%rax),%eax
  b3:	46                   	rex.RX
  b4:	4c 3a 30             	rex.WR cmp (%rax),%r14b
  b7:	20 2e                	and    %ch,(%rsi)
  b9:	2e 2f                	cs (bad)
  bb:	73 79                	jae    136 <__abi_tag-0x400266>
  bd:	73 64                	jae    123 <__abi_tag-0x400279>
  bf:	65 70 73             	gs jo  135 <__abi_tag-0x400267>
  c2:	2f                   	(bad)
  c3:	78 38                	js     fd <__abi_tag-0x40029f>
  c5:	36 2f                	ss (bad)
  c7:	61                   	(bad)
  c8:	62 69 2d 6e 6f       	(bad)
  cd:	74 65                	je     134 <__abi_tag-0x400268>
  cf:	2e 63 00             	cs movsxd (%rax),%eax
  d2:	47                   	rex.RXB
  d3:	41 3a 31             	cmp    (%r9),%sil
  d6:	00 50 49             	add    %dl,0x49(%rax)
  d9:	3a 34 00             	cmp    (%rax,%rax,1),%dh
  dc:	53                   	push   %rbx
  dd:	45 3a 30             	cmp    (%r8),%r14b
  e0:	00 69 53             	add    %ch,0x53(%rcx)
  e3:	3a 30                	cmp    (%rax),%dh
  e5:	00 47 57             	add    %al,0x57(%rdi)
  e8:	3a 30                	cmp    (%rax),%dh
  ea:	78 37                	js     123 <__abi_tag-0x400279>
  ec:	64 36 30 35 36 32 20 	fs xor %dh,%fs:0x69203236(%rip)        # 6920332a <_end+0x68dfdf02>
  f3:	69 
  f4:	6e                   	outsb  %ds:(%rsi),(%dx)
  f5:	69 74 2e 63 00 53 43 	imul   $0x3a435300,0x63(%rsi,%rbp,1),%esi
  fc:	3a 
  fd:	2d 31 20 69 6e       	sub    $0x6e692031,%eax
 102:	69 74 2e 63 00 43 46 	imul   $0x3a464300,0x63(%rsi,%rbp,1),%esi
 109:	3a 
 10a:	38 20                	cmp    %ah,(%rax)
 10c:	69 6e 69 74 2e 63 00 	imul   $0x632e74,0x69(%rsi),%ebp
 113:	46                   	rex.RX
 114:	4c 3a 30             	rex.WR cmp (%rax),%r14b
 117:	20 69 6e             	and    %ch,0x6e(%rcx)
 11a:	69 74 2e 63 00 47 57 	imul   $0x3a574700,0x63(%rsi,%rbp,1),%esi
 121:	3a 
 122:	30 78 37             	xor    %bh,0x37(%rax)
 125:	64 36 30 35 36 32 20 	fs xor %dh,%fs:0x73203236(%rip)        # 73203363 <_end+0x72dfdf3b>
 12c:	73 
 12d:	74 61                	je     190 <__abi_tag-0x40020c>
 12f:	74 69                	je     19a <__abi_tag-0x400202>
 131:	63 2d 72 65 6c 6f    	movsxd 0x6f6c6572(%rip),%ebp        # 6f6c66a9 <_end+0x6f2c1281>
 137:	63 2e                	movsxd (%rsi),%ebp
 139:	63 00                	movsxd (%rax),%eax
 13b:	53                   	push   %rbx
 13c:	50                   	push   %rax
 13d:	3a 30                	cmp    (%rax),%dh
 13f:	20 73 74             	and    %dh,0x74(%rbx)
 142:	61                   	(bad)
 143:	74 69                	je     1ae <__abi_tag-0x4001ee>
 145:	63 2d 72 65 6c 6f    	movsxd 0x6f6c6572(%rip),%ebp        # 6f6c66bd <_end+0x6f2c1295>
 14b:	63 2e                	movsxd (%rsi),%ebp
 14d:	63 00                	movsxd (%rax),%eax
 14f:	53                   	push   %rbx
 150:	43 3a 2d 31 20 73 74 	rex.XB cmp 0x74732031(%rip),%bpl        # 74732188 <_end+0x7432cd60>
 157:	61                   	(bad)
 158:	74 69                	je     1c3 <__abi_tag-0x4001d9>
 15a:	63 2d 72 65 6c 6f    	movsxd 0x6f6c6572(%rip),%ebp        # 6f6c66d2 <_end+0x6f2c12aa>
 160:	63 2e                	movsxd (%rsi),%ebp
 162:	63 00                	movsxd (%rax),%eax
 164:	43                   	rex.XB
 165:	46 3a 38             	rex.RX cmp (%rax),%r15b
 168:	20 73 74             	and    %dh,0x74(%rbx)
 16b:	61                   	(bad)
 16c:	74 69                	je     1d7 <__abi_tag-0x4001c5>
 16e:	63 2d 72 65 6c 6f    	movsxd 0x6f6c6572(%rip),%ebp        # 6f6c66e6 <_end+0x6f2c12be>
 174:	63 2e                	movsxd (%rsi),%ebp
 176:	63 00                	movsxd (%rax),%eax
 178:	46                   	rex.RX
 179:	4c 3a 30             	rex.WR cmp (%rax),%r14b
 17c:	20 73 74             	and    %dh,0x74(%rbx)
 17f:	61                   	(bad)
 180:	74 69                	je     1eb <__abi_tag-0x4001b1>
 182:	63 2d 72 65 6c 6f    	movsxd 0x6f6c6572(%rip),%ebp        # 6f6c66fa <_end+0x6f2c12d2>
 188:	63 2e                	movsxd (%rsi),%ebp
 18a:	63 00                	movsxd (%rax),%eax

Disassembly of section .gnu.build.attributes:

0000000000407428 <.gnu.build.attributes>:
  407428:	08 00                	or     %al,(%rax)
  40742a:	00 00                	add    %al,(%rax)
  40742c:	10 00                	adc    %al,(%rax)
  40742e:	00 00                	add    %al,(%rax)
  407430:	00 01                	add    %al,(%rcx)
  407432:	00 00                	add    %al,(%rax)
  407434:	47                   	rex.RXB
  407435:	41 24 01             	rex.B and $0x1,%al
  407438:	33 61 31             	xor    0x31(%rcx),%esp
  40743b:	00 90 11 40 00 00    	add    %dl,0x4011(%rax)
  407441:	00 00                	add    %al,(%rax)
  407443:	00 b6 11 40 00 00    	add    %dh,0x4011(%rsi)
  407449:	00 00                	add    %al,(%rax)
  40744b:	00 08                	add    %cl,(%rax)
  40744d:	00 00                	add    %al,(%rax)
  40744f:	00 10                	add    %dl,(%rax)
  407451:	00 00                	add    %al,(%rax)
  407453:	00 00                	add    %al,(%rax)
  407455:	01 00                	add    %eax,(%rax)
  407457:	00 47 41             	add    %al,0x41(%rdi)
  40745a:	24 01                	and    $0x1,%al
  40745c:	33 61 31             	xor    0x31(%rcx),%esp
  40745f:	00 c5                	add    %al,%ch
  407461:	11 40 00             	adc    %eax,0x0(%rax)
  407464:	00 00                	add    %al,(%rax)
  407466:	00 00                	add    %al,(%rax)
  407468:	c5 11 40             	(bad)
  40746b:	00 00                	add    %al,(%rax)
  40746d:	00 00                	add    %al,(%rax)
  40746f:	00 08                	add    %cl,(%rax)
  407471:	00 00                	add    %al,(%rax)
  407473:	00 10                	add    %dl,(%rax)
  407475:	00 00                	add    %al,(%rax)
  407477:	00 00                	add    %al,(%rax)
  407479:	01 00                	add    %eax,(%rax)
  40747b:	00 47 41             	add    %al,0x41(%rdi)
  40747e:	24 01                	and    $0x1,%al
  407480:	33 61 31             	xor    0x31(%rcx),%esp
  407483:	00 00                	add    %al,(%rax)
  407485:	10 40 00             	adc    %al,0x0(%rax)
  407488:	00 00                	add    %al,(%rax)
  40748a:	00 00                	add    %al,(%rax)
  40748c:	16                   	(bad)
  40748d:	10 40 00             	adc    %al,0x0(%rax)
  407490:	00 00                	add    %al,(%rax)
  407492:	00 00                	add    %al,(%rax)
  407494:	08 00                	or     %al,(%rax)
  407496:	00 00                	add    %al,(%rax)
  407498:	10 00                	adc    %al,(%rax)
  40749a:	00 00                	add    %al,(%rax)
  40749c:	00 01                	add    %al,(%rcx)
  40749e:	00 00                	add    %al,(%rax)
  4074a0:	47                   	rex.RXB
  4074a1:	41 24 01             	rex.B and $0x1,%al
  4074a4:	33 61 31             	xor    0x31(%rcx),%esp
  4074a7:	00 1c 21             	add    %bl,(%rcx,%riz,1)
  4074aa:	40 00 00             	rex add %al,(%rax)
  4074ad:	00 00                	add    %al,(%rax)
  4074af:	00 24 21             	add    %ah,(%rcx,%riz,1)
  4074b2:	40 00 00             	rex add %al,(%rax)
  4074b5:	00 00                	add    %al,(%rax)
  4074b7:	00 08                	add    %cl,(%rax)
  4074b9:	00 00                	add    %al,(%rax)
  4074bb:	00 10                	add    %dl,(%rax)
  4074bd:	00 00                	add    %al,(%rax)
  4074bf:	00 00                	add    %al,(%rax)
  4074c1:	01 00                	add    %eax,(%rax)
  4074c3:	00 47 41             	add    %al,0x41(%rdi)
  4074c6:	24 01                	and    $0x1,%al
  4074c8:	33 61 31             	xor    0x31(%rcx),%esp
  4074cb:	00 d0                	add    %dl,%al
  4074cd:	11 40 00             	adc    %eax,0x0(%rax)
  4074d0:	00 00                	add    %al,(%rax)
  4074d2:	00 00                	add    %al,(%rax)
  4074d4:	76 12                	jbe    4074e8 <_end+0x20c0>
  4074d6:	40 00 00             	rex add %al,(%rax)
  4074d9:	00 00                	add    %al,(%rax)
  4074db:	00 08                	add    %cl,(%rax)
  4074dd:	00 00                	add    %al,(%rax)
  4074df:	00 10                	add    %dl,(%rax)
  4074e1:	00 00                	add    %al,(%rax)
  4074e3:	00 00                	add    %al,(%rax)
  4074e5:	01 00                	add    %eax,(%rax)
  4074e7:	00 47 41             	add    %al,0x41(%rdi)
  4074ea:	24 01                	and    $0x1,%al
  4074ec:	33 61 31             	xor    0x31(%rcx),%esp
  4074ef:	00 1a                	add    %bl,(%rdx)
  4074f1:	21 40 00             	and    %eax,0x0(%rax)
  4074f4:	00 00                	add    %al,(%rax)
  4074f6:	00 00                	add    %al,(%rax)
  4074f8:	1a 21                	sbb    (%rcx),%ah
  4074fa:	40 00 00             	rex add %al,(%rax)
  4074fd:	00 00                	add    %al,(%rax)
  4074ff:	00 08                	add    %cl,(%rax)
  407501:	00 00                	add    %al,(%rax)
  407503:	00 10                	add    %dl,(%rax)
  407505:	00 00                	add    %al,(%rax)
  407507:	00 00                	add    %al,(%rax)
  407509:	01 00                	add    %eax,(%rax)
  40750b:	00 47 41             	add    %al,0x41(%rdi)
  40750e:	24 01                	and    $0x1,%al
  407510:	33 61 31             	xor    0x31(%rcx),%esp
  407513:	00 1a                	add    %bl,(%rdx)
  407515:	21 40 00             	and    %eax,0x0(%rax)
  407518:	00 00                	add    %al,(%rax)
  40751a:	00 00                	add    %al,(%rax)
  40751c:	1a 21                	sbb    (%rcx),%ah
  40751e:	40 00 00             	rex add %al,(%rax)
  407521:	00 00                	add    %al,(%rax)
  407523:	00 08                	add    %cl,(%rax)
  407525:	00 00                	add    %al,(%rax)
  407527:	00 10                	add    %dl,(%rax)
  407529:	00 00                	add    %al,(%rax)
  40752b:	00 00                	add    %al,(%rax)
  40752d:	01 00                	add    %eax,(%rax)
  40752f:	00 47 41             	add    %al,0x41(%rdi)
  407532:	24 01                	and    $0x1,%al
  407534:	33 61 31             	xor    0x31(%rcx),%esp
  407537:	00 16                	add    %dl,(%rsi)
  407539:	10 40 00             	adc    %al,0x0(%rax)
  40753c:	00 00                	add    %al,(%rax)
  40753e:	00 00                	add    %al,(%rax)
  407540:	1b 10                	sbb    (%rax),%edx
  407542:	40 00 00             	rex add %al,(%rax)
  407545:	00 00                	add    %al,(%rax)
  407547:	00 08                	add    %cl,(%rax)
  407549:	00 00                	add    %al,(%rax)
  40754b:	00 10                	add    %dl,(%rax)
  40754d:	00 00                	add    %al,(%rax)
  40754f:	00 00                	add    %al,(%rax)
  407551:	01 00                	add    %eax,(%rax)
  407553:	00 47 41             	add    %al,0x41(%rdi)
  407556:	24 01                	and    $0x1,%al
  407558:	33 61 31             	xor    0x31(%rcx),%esp
  40755b:	00 24 21             	add    %ah,(%rcx,%riz,1)
  40755e:	40 00 00             	rex add %al,(%rax)
  407561:	00 00                	add    %al,(%rax)
  407563:	00 29                	add    %ch,(%rcx)
  407565:	21 40 00             	and    %eax,0x0(%rax)
  407568:	00 00                	add    %al,(%rax)
	...
