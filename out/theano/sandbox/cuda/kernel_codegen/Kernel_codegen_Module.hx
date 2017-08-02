/* This file is generated, do not edit! */
package theano.sandbox.cuda.kernel_codegen;
@:pythonImport("theano.sandbox.cuda.kernel_codegen") extern class Kernel_codegen_Module {
	static public var UNVERSIONED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator to support version-based cache mechanism.
	**/
	static public function code_version(version:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return C++ code for a function that reduces a contiguous buffer.
		
		Parameters
		----------
		N
		    Length of the buffer.
		buf
		    Buffer pointer.
		pos
		    Index of executing thread.
		count
		    Number of executing threads.
		manner_fn
		    A function that accepts strings of arguments a
		    and b, and returns c code for their reduction. (Example:
		    return "%(a)s + %(b)s" for a sum reduction).
		
		:postcondition:
		This function leaves the answer in position 0 of the buffer. The
		rest of the buffer is trashed by this function.
		
		Notes
		-----
		buf should be in gpu shared memory, we access it many times.
	**/
	static public function inline_reduce(N:Dynamic, buf:Dynamic, pos:Dynamic, count:Dynamic, manner_fn:Dynamic):Dynamic;
	/**
		Return C++ code for a function that reduces a contiguous buffer.
		
		Parameters
		----------
		N
		    Length of the buffer.
		buf
		    Buffer pointer of size warpSize * sizeof(float).
		pos
		    Index of executing thread.
		count
		    Number of executing threads.
		b
		    Optional, pointer to the bias.
		stride_b
		    Optional, the stride of b if b is provided.
		manner_fn
		    A function that accepts strings of arguments a
		    and b, and returns c code for their reduction. (Example:
		    return "%(a)s + %(b)s" for a sum reduction).
		manner_init
		    A function that accepts strings of arguments a
		    and return c code for its initialization.
		
		:postcondition:
		This function leaves the answer in position 0 of the buffer. The
		rest of the buffer is trashed by this function.
		
		Notes
		-----
		buf should be in gpu shared memory, we access it many times.
	**/
	static public function inline_reduce_fixed_shared(N:Dynamic, buf:Dynamic, x:Dynamic, stride_x:Dynamic, pos:Dynamic, count:Dynamic, manner_fn:Dynamic, manner_init:Dynamic, ?b:Dynamic, ?stride_b:Dynamic):Dynamic;
	static public function inline_reduce_fixed_shared_max(N:Dynamic, buf:Dynamic, x:Dynamic, stride_x:Dynamic, pos:Dynamic, count:Dynamic, ?b:Dynamic, ?stride_b:Dynamic):Dynamic;
	static public function inline_reduce_max(N:Dynamic, buf:Dynamic, pos:Dynamic, count:Dynamic):Dynamic;
	static public function inline_reduce_min(N:Dynamic, buf:Dynamic, pos:Dynamic, count:Dynamic):Dynamic;
	static public function inline_reduce_prod(N:Dynamic, buf:Dynamic, pos:Dynamic, count:Dynamic):Dynamic;
	static public function inline_reduce_sum(N:Dynamic, buf:Dynamic, pos:Dynamic, count:Dynamic):Dynamic;
	/**
		Parameters
		----------
		N
		    Length of the buffer.
		threadPos
		    Index of executing thread.
		threadCount
		    Number of executing threads.
		
		:Precondition: buf and buf2 contain two identical copies of the input
		    to softmax
		:Postcondition: buf contains the softmax, buf2 contains un-normalized
		    softmax
		
		Notes
		-----
		buf and buf2 should be in gpu shared memory, we access it many times.
		
		We use __i as an int variable in a loop.
	**/
	static public function inline_softmax(N:Dynamic, buf:Dynamic, buf2:Dynamic, threadPos:Dynamic, threadCount:Dynamic):Dynamic;
	/**
		Parameters
		----------
		N
		    Length of the buffer, atleast waprSize(32).
		buf
		    A shared memory buffer of size warpSize * sizeof(float).
		x
		    A ptr to the gpu memory where the row is stored.
		stride_x
		    The stride between each element in x.
		sm
		    A ptr to the gpu memory to store the result.
		sm_stride
		    The stride between each sm element.
		threadPos
		    Index of executing thread.
		threadCount
		    Number of executing threads.
		b
		    Optional, pointer to the bias.
		stride_b
		    Optional, the stride of b if b is provided.
		
		:Precondition: buf is empty
		:Postcondition: buf[0] contains the softmax,
		    buf2 contains un-normalized softmax
		
		Notes
		-----
		buf should be in gpu shared memory, we access it many times.
		
		We use tx as an int variable in a loop.
	**/
	static public function inline_softmax_fixed_shared(N:Dynamic, buf:Dynamic, x:Dynamic, stride_x:Dynamic, sm:Dynamic, sm_stride:Dynamic, threadPos:Dynamic, threadCount:Dynamic, ?b:Dynamic, ?stride_b:Dynamic):Dynamic;
	/**
		Return the c code of a kernel function.
		
		Parameters
		----------
		params
		    The parameters to the function as one or more strings.
		body
		    The [nested] list of statements for the body of the
		    function. These will be separated by ';' characters.
	**/
	static public function nvcc_kernel(name:Dynamic, params:Dynamic, body:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}