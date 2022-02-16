/* This file is generated, do not edit! */
package tensorflow.python.ops.gradient_checker_v2;
@:pythonImport("tensorflow.python.ops.gradient_checker_v2") extern class Gradient_checker_v2_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Computes the theoretical and numerical jacobian.
	**/
	static public function _compute_gradient(f:Dynamic, y_shape:Dynamic, y_dtype:Dynamic, xs:Dynamic, param:Dynamic, delta:Dynamic):Dynamic;
	/**
		Compute gradients for a list of x values.
	**/
	static public function _compute_gradient_list(f:Dynamic, xs:Dynamic, delta:Dynamic):Dynamic;
	/**
		Computes the numeric Jacobian for f regarding xs[param].
		
		One can think of the relation among f, xs and y as y = f(xs).
		
		Args:
		  f: the function.
		  y_size: the number of elements of the result.
		  y_dtype: the dtype of the result.
		  xs: a list of tensors.
		  param: the index of the target parameter.
		  delta: the amount of perturbation we give to the input.
		
		Returns:
		  A 2-d numpy array representing the Jacobian. It has "y_size" rows
		  and "x_size" columns where "x_size" is the number of elements in xs[param]
		  and "y_size" is the number of elements in the result.
	**/
	static public function _compute_numeric_jacobian(f:Dynamic, y_size:Dynamic, y_dtype:Dynamic, xs:Dynamic, param:Dynamic, delta:Dynamic):Dynamic;
	/**
		Computes the theoretical Jacobian for f regarding xs[param].
		
		One can think of the relation among f, xs and y as y = f(xs).
		
		Args:
		  f: the function.
		  y_shape: the shape of the result.
		  y_dtype: the dtype of the result.
		  xs: a list of tensors.
		  param: the index of the target parameter.
		
		Returns:
		  A 2-d numpy array representing the Jacobian. It has "y_size" rows
		  and "x_size" columns where "x_size" is the number of elements in xs[param]
		  and "y_size" is the number of elements in the result.
		
		Raises:
		  ValueError: If result is empty but the gradient is nonzero.
	**/
	static public function _compute_theoretical_jacobian(f:Dynamic, y_shape:Dynamic, y_dtype:Dynamic, xs:Dynamic, param:Dynamic):Dynamic;
	/**
		Converts IndexedSlices to IndexedSlicesValue with numpy indices/values.
		
		When eager execution is enabled, converts IndexedSlices
		to IndexedSlicesValue with numpy indices/values.
		
		Args:
		  a: any value.
		
		Returns:
		  If a is IndexedSlices and eager execution is enabled, calls numpy() on a's
		  fields. Otherwise returns a unchanged.
	**/
	static public function _eval_indexed_slices(a:Dynamic):Dynamic;
	/**
		Return a function that executes 'f'.
		
		  In TF 2.x, this is the same as `f`.
		  In TF 1.x, returns a Python function that executes the graph defined by `f`
		  in a Session.
		
		Args:
		  f: the function.
		  xs_dtypes: dtypes of f's arguments.
		  xs_shapes: shapes of f's arguments.
		
		Returns:
	**/
	static public function _prepare(f:Dynamic, xs_dtypes:Dynamic, xs_shapes:Dynamic):Dynamic;
	static public function _product(t:Dynamic):Dynamic;
	/**
		Converts Tensors, EagerTensors, and IndexedSlicesValue to numpy arrays.
		
		Args:
		  a: any value.
		
		Returns:
		  If a is EagerTensor or Tensor, returns the evaluation of a by calling
		  numpy() or run(). If a is IndexedSlicesValue, constructs the corresponding
		  dense numpy array. Otherwise returns a unchanged.
	**/
	static public function _to_numpy(a:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Computes the theoretical and numeric Jacobian of `f`.
		
		With y = f(x), computes the theoretical and numeric Jacobian dy/dx.
		
		Args:
		  f: the function.
		  x: the arguments for the function as a list or tuple of values convertible
		    to a Tensor.
		  delta: (optional) perturbation used to compute numeric Jacobian.
		
		Returns:
		  A pair of lists, where the first is a list of 2-d numpy arrays representing
		  the theoretical Jacobians for each argument, and the second list is the
		  numerical ones. Each 2-d array has "y_size" rows
		  and "x_size" columns where "x_size" is the number of elements in the
		  corresponding argument and "y_size" is the number of elements in f(x).
		
		Raises:
		  ValueError: If result is empty but the gradient is nonzero.
		  ValueError: If x is not list, but any other type.
		
		Example:
		
		>>> @tf.function
		... def test_func(x):
		...   return x*x
		...
		>>>
		>>> class MyTest(tf.test.TestCase):
		...
		...   def test_gradient_of_test_func(self):
		...     theoretical, numerical = tf.test.compute_gradient(test_func, [1.0])
		...     # ((array([[2.]], dtype=float32),),
		...     #  (array([[2.000004]], dtype=float32),))
		...     self.assertAllClose(theoretical, numerical)
	**/
	static public function compute_gradient(f:Dynamic, x:Dynamic, ?delta:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes maximum elementwise gap.
		
		Computes the maximum elementwise gap between two lists of tensors of the same
		shape.
		
		Args:
		  grad1: a lists of tensors.
		  grad2: a lists of tensors with the same shape as grad1.
		
		Returns:
		  The maximum elementwise gap between the two.
	**/
	static public function max_error(grad1:Dynamic, grad2:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}