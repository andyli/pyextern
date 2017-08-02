/* This file is generated, do not edit! */
package theano.sandbox.blocksparse;
@:pythonImport("theano.sandbox.blocksparse") extern class Blocksparse_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the dot product (plus bias) of the specified pieces of vectors
		and matrices. See SparseBlockGemv to get more information.
		
		The parameter types are actually their expected shapes relative to
		each other.
		
		Parameters
		----------
		W : iBlocks, oBlocks, iSize, oSize
		    weight matrix
		h : batch, iWin, iSize
		    input from lower layer (sparse)
		inputIdx : batch, iWin
		    indexes of the input blocks
		b : oBlocks, oSize
		    bias vector
		outputIdx : batch, oWin
		    indexes of the output blocks
		
		Returns
		-------
		(batch, oWin, oSize)
		    dot(W[i, j], h[i]) + b[j] but b[j] is only added once
		
		Notes
		-----
		- `batch` is the number of examples in a minibatch (batch size).
		- `iBlocks` is the total number of blocks in the input (from lower layer).
		- `iSize` is the size of each of these input blocks.
		- `iWin` is the number of blocks that will be used as inputs. Which blocks
		   will be used is specified in `inputIdx`.
		- `oBlocks` is the number or possible output blocks.
		- `oSize` is the size of each of these output blocks.
		- `oWin` is the number of output blocks that will actually be computed.
		   Which blocks will be computed is specified in `outputIdx`.
	**/
	static public function sparse_block_dot(W:Dynamic, h:Dynamic, inputIdx:Dynamic, b:Dynamic, outputIdx:Dynamic):Dynamic;
	static public function sparse_block_gemv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sparse_block_gemv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sparse_block_outer(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function sparse_block_outer_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}