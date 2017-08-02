/* This file is generated, do not edit! */
package theano.sandbox.cuda.nnet;
@:pythonImport("theano.sandbox.cuda.nnet") extern class Nnet_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function as_cuda_ndarray_variable(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function gpu_crossentropy_softmax_1hot_with_bias_dx(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_crossentropy_softmax_argmax_1hot_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function gpu_softmax_with_bias(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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