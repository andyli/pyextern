/* This file is generated, do not edit! */
package tensorflow.python.keras.activations;
@:pythonImport("tensorflow.python.keras.activations") extern class Activations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function deserialize(name:Dynamic, ?custom_objects:Dynamic):Dynamic;
	static public function deserialize_keras_object(identifier:Dynamic, ?module_objects:Dynamic, ?custom_objects:Dynamic, ?printable_module_name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Exponential linear unit.
		
		Arguments:
		    x: Input tensor.
		    alpha: A scalar, slope of negative section.
		
		Returns:
		    The exponential linear activation: `x` if `x > 0` and
		      `alpha * (exp(x)-1)` if `x < 0`.
		
		Reference:
		    - [Fast and Accurate Deep Network Learning by Exponential
		      Linear Units (ELUs)](https://arxiv.org/abs/1511.07289)
	**/
	static public function elu(x:Dynamic, ?alpha:Dynamic):Dynamic;
	static public function get(identifier:Dynamic):Dynamic;
	/**
		Hard sigmoid activation function.
		
		Faster to compute than sigmoid activation.
		
		Arguments:
		    x: Input tensor.
		
		Returns:
		    Hard sigmoid activation:
		    - `0` if `x < -2.5`
		    - `1` if `x > 2.5`
		    - `0.2 * x + 0.5` if `-2.5 <= x <= 2.5`.
	**/
	static public function hard_sigmoid(x:Dynamic):Dynamic;
	static public function linear(x:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Rectified Linear Unit.
		
		With default values, it returns element-wise `max(x, 0)`.
		
		Otherwise, it follows:
		`f(x) = max_value` for `x >= max_value`,
		`f(x) = x` for `threshold <= x < max_value`,
		`f(x) = alpha * (x - threshold)` otherwise.
		
		Arguments:
		    x: A tensor or variable.
		    alpha: A scalar, slope of negative section (default=`0.`).
		    max_value: float. Saturation threshold.
		    threshold: float. Threshold value for thresholded activation.
		
		Returns:
		    A tensor.
	**/
	static public function relu(x:Dynamic, ?alpha:Dynamic, ?max_value:Dynamic, ?threshold:Dynamic):Dynamic;
	/**
		Scaled Exponential Linear Unit (SELU).
		
		SELU is equal to: `scale * elu(x, alpha)`, where alpha and scale
		are pre-defined constants. The values of `alpha` and `scale` are
		chosen so that the mean and variance of the inputs are preserved
		between two consecutive layers as long as the weights are initialized
		correctly (see `lecun_normal` initialization) and the number of inputs
		is "large enough" (see references for more information).
		
		Arguments:
		    x: A tensor or variable to compute the activation function for.
		
		Returns:
		    The scaled exponential unit activation: `scale * elu(x, alpha)`.
		
		# Note
		    - To be used together with the initialization "lecun_normal".
		    - To be used together with the dropout variant "AlphaDropout".
		
		References:
		    - [Self-Normalizing Neural Networks](https://arxiv.org/abs/1706.02515)
	**/
	static public function selu(x:Dynamic):Dynamic;
	static public function serialize(activation:Dynamic):Dynamic;
	static public function sigmoid(x:Dynamic):Dynamic;
	/**
		Softmax activation function.
		
		Arguments:
		    x : Input tensor.
		    axis: Integer, axis along which the softmax normalization is applied.
		
		Returns:
		    Tensor, output of softmax transformation.
		
		Raises:
		    ValueError: In case `dim(x) == 1`.
	**/
	static public function softmax(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Softplus activation function.
		
		Arguments:
		    x: Input tensor.
		
		Returns:
		    The softplus activation: `log(exp(x) + 1)`.
	**/
	static public function softplus(x:Dynamic):Dynamic;
	/**
		Softsign activation function.
		
		Arguments:
		    x: Input tensor.
		
		Returns:
		    The softplus activation: `x / (abs(x) + 1)`.
	**/
	static public function softsign(x:Dynamic):Dynamic;
	static public function tanh(x:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}