	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/960116-1.c"
	.section	.text.f,"ax",@progbits
	.hidden	f
	.globl	f
	.type	f,@function
f:                                      # @f
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 1
	block   	.LBB0_3
	block   	.LBB0_2
	i32.and 	$push0=, $0, $1
	br_if   	$pop0, .LBB0_2
# BB#1:                                 # %land.lhs.true
	i32.load	$push1=, 0($0)
	br_if   	$pop1, .LBB0_3
.LBB0_2:                                # %if.end
	i32.const	$1=, 0
.LBB0_3:                                # %return
	return  	$1
.Lfunc_end0:
	.size	f, .Lfunc_end0-f

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %if.end
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
