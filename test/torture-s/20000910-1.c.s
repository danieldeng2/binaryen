	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20000910-1.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
# BB#0:                                 # %entry
	return
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo

	.section	.text.bar,"ax",@progbits
	.hidden	bar
	.globl	bar
	.type	bar,@function
bar:                                    # @bar
	.param  	i32
# BB#0:                                 # %entry
	return
.Lfunc_end2:
	.size	bar, .Lfunc_end2-bar

	.section	.text.baz,"ax",@progbits
	.hidden	baz
	.globl	baz
	.type	baz,@function
baz:                                    # @baz
	.param  	i32, i32
# BB#0:                                 # %entry
	block   	.LBB3_2
	i32.ne  	$push0=, $0, $1
	br_if   	$pop0, .LBB3_2
# BB#1:                                 # %if.end
	return
.LBB3_2:                                # %if.then
	call    	abort@FUNCTION
	unreachable
.Lfunc_end3:
	.size	baz, .Lfunc_end3-baz


	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits
