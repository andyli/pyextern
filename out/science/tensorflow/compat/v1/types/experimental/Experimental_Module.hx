/* This file is generated, do not edit! */
package tensorflow.compat.v1.types.experimental;
@:pythonImport("tensorflow.compat.v1.types.experimental") extern class Experimental_Module {
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
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
}