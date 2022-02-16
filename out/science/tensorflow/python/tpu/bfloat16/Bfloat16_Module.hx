/* This file is generated, do not edit! */
package tensorflow.python.tpu.bfloat16;
@:pythonImport("tensorflow.python.tpu.bfloat16") extern class Bfloat16_Module {
	static public function Generator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a custom getter that this class's methods must be called under.
		
		All methods of this class must be called under a variable scope that was
		passed this custom getter. Example:
		
		```python
		network = ConvNetBuilder(...)
		with tf.compat.v1.variable_scope('cg',
		                                 custom_getter=network.get_custom_getter()):
		  network.conv(...)
		  # Call more methods of network here
		```
		
		Currently, this custom getter only does anything if self.use_tf_layers is
		True. In that case, it causes variables to be stored as dtype
		self.variable_type, then casted to the requested dtype, instead of directly
		storing the variable as the requested dtype.
	**/
	static public function _get_custom_getter():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Scope class for bfloat16 variables so that the model uses custom getter.
		
		This enables variables to be read as bfloat16 type when using get_variable.
		
		Arguments:
		  name: Name to use for scope.
		
		Yields:
		  a variable scope.
	**/
	static public function bfloat16_scope(?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}