/* This file is generated, do not edit! */
package tensorflow.python.dlpack.dlpack;
@:pythonImport("tensorflow.python.dlpack.dlpack") extern class Dlpack_Module {
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
		Returns the Tensorflow eager tensor.
		
		The returned tensor uses the memory shared by dlpack capsules from other
		framework.
		
		  ```python
		  a = tf.experimental.dlpack.from_dlpack(dlcapsule)
		  # `a` uses the memory shared by dlpack
		  ```
		
		Args:
		  dlcapsule: A PyCapsule named as dltensor
		
		Returns:
		  A Tensorflow eager tensor
	**/
	static public function from_dlpack(dlcapsule:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the dlpack capsule representing the tensor.
		
		This operation ensures the underlying data memory is ready when returns.
		
		  ```python
		  a = tf.tensor([1, 10])
		  dlcapsule = tf.experimental.dlpack.to_dlpack(a)
		  # dlcapsule represents the dlpack data structure
		  ```
		
		Args:
		  tf_tensor: Tensorflow eager tensor, to be converted to dlpack capsule.
		
		Returns:
		  A PyCapsule named as dltensor, which shares the underlying memory to other
		   framework. This PyCapsule can be consumed only once.
	**/
	static public function to_dlpack(tf_tensor:Dynamic):Dynamic;
}