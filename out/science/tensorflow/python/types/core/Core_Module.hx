/* This file is generated, do not edit! */
package tensorflow.python.types.core;
@:pythonImport("tensorflow.python.types.core") extern class Core_Module {
	/**
		Union of all types that can be converted to a `tf.Tensor` by `tf.convert_to_tensor`.
		
		This definition may be used in user code. Additional types may be added
		in the future as more input types are supported.
		
		Example:
		
		```
		def foo(x: TensorLike):
		  pass
		```
		
		This definition passes static type verification for:
		
		```
		foo(tf.constant([1, 2, 3]))
		foo([1, 2, 3])
		foo(np.array([1, 2, 3]))
		```
	**/
	static public function TensorLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Mark a protocol class as a runtime protocol.
		
		Such protocol can be used with isinstance() and issubclass().
		Raise TypeError if applied to a non-protocol class.
		This allows a simple-minded structural check very similar to
		one trick ponies in collections.abc such as Iterable.
		For example::
		
		    @runtime_checkable
		    class Closable(Protocol):
		        def close(self): ...
		
		    assert isinstance(open('/some/file'), Closable)
		
		Warning: this will check only the presence of the required methods,
		not their type signatures!
	**/
	static public function runtime_checkable(cls:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}