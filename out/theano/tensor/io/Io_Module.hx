/* This file is generated, do not edit! */
package theano.tensor.io;
@:pythonImport("theano.tensor.io") extern class Io_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Non-blocking receive.
	**/
	static public function irecv(shape:Dynamic, dtype:Dynamic, source:Dynamic, tag:Dynamic):Dynamic;
	/**
		Non blocking send.
	**/
	static public function isend(_var:Dynamic, dest:Dynamic, tag:Dynamic):Dynamic;
	/**
		comparator function based on "key" function
	**/
	static public function key_to_cmp(key:Dynamic):Dynamic;
	/**
		Load an array from an .npy file.
		
		Parameters
		----------
		path
		    A Generic symbolic variable, that will contain a string
		dtype : data-type
		    The data type of the array to be read.
		broadcastable
		    The broadcastable pattern of the loaded array, for instance,
		    (False,) for a vector, (False, True) for a column,
		    (False, False) for a matrix.
		mmap_mode
		    How the file will be loaded. None means that the
		    data will be copied into an array in memory, 'c' means that the file
		    will be mapped into virtual memory, so only the parts that are
		    needed will be actually read from disk and put into memory.
		    Other modes supported by numpy.load ('r', 'r+', 'w+') cannot
		    be supported by Theano.
		
		Examples
		--------
		>>> from theano import *
		>>> path = Variable(Generic())
		>>> x = tensor.load(path, 'int64', (False,))
		>>> y = x*2
		>>> fn = function([path], y)
		>>> fn("stored-array.npy")  # doctest: +SKIP
		array([0, 2, 4, 6, 8], dtype=int64)
	**/
	static public function load(path:Dynamic, dtype:Dynamic, broadcastable:Dynamic, ?mmap_mode:Dynamic):Dynamic;
	static public var mpi_cmps : Dynamic;
	static public var mpi_enabled : Dynamic;
	static public var mpi_keys : Dynamic;
	static public function mpi_send_wait_cmp(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Wait as long as possible on Waits, Start Send/Recvs early.
	**/
	static public function mpi_send_wait_key(a:Dynamic):Dynamic;
	static public function mpi_tag_cmp(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Break MPI ties by using the variable tag - prefer lower tags first.
	**/
	static public function mpi_tag_key(a:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Blocking receive.
	**/
	static public function recv(shape:Dynamic, dtype:Dynamic, source:Dynamic, tag:Dynamic):Dynamic;
	/**
		Blocking send.
	**/
	static public function send(_var:Dynamic, dest:Dynamic, tag:Dynamic):Dynamic;
	static public function tensor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}