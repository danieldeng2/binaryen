	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/941021-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32, f64
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, glob_dbl
	i32.select	$push1=, $0, $0, $pop0
	f64.store	$discard=, 0($pop1), $1
	return  	$0
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %if.end
	i32.const	$0=, 0
	i64.const	$push0=, 4632951452917877965
	i64.store	$discard=, glob_dbl($0), $pop0
	call    	exit@FUNCTION, $0
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	glob_dbl                # @glob_dbl
	.type	glob_dbl,@object
	.section	.bss.glob_dbl,"aw",@nobits
	.globl	glob_dbl
	.align	3
glob_dbl:
	.int64	0                       # double 0
	.size	glob_dbl, 8


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
