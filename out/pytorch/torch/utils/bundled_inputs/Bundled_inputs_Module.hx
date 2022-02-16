/* This file is generated, do not edit! */
package torch.utils.bundled_inputs;
@:pythonImport("torch.utils.bundled_inputs") extern class Bundled_inputs_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var MAX_RAW_TENSOR_SIZE : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_bundled_inputs_attributes_and_methods(script_module:Dynamic):Dynamic;
	static public function _get_inflate_helper_fn_name(arg_idx:Dynamic, input_idx:Dynamic, function_name:Dynamic):Dynamic;
	static public function _inflate_expr(arg:Dynamic, ref:Dynamic, inflate_helper_fn_name:Dynamic, ?skip_size_check:Dynamic):Dynamic;
	/**
		Add bundled sample inputs to a model for an arbitrary list of public functions.
		
		Models with bundled inputs can be invoked in a uniform manner by
		benchmarking and code coverage tools.
		
		Augmented models will support the following methods:
		
		    `get_all_bundled_inputs_for_<function_name>() -> List[Tuple[Any, ...]]`
		        Returns a list of tuples suitable for passing to the model like
		        `for inp in model.get_all_bundled_inputs_for_foo(): model.foo(*inp)`
		
		    `get_bundled_inputs_functions_and_info() -> Dict[str, Dict[str: List[str]]]`
		        Returns a dictionary mapping function names to a metadata dictionary.
		        This nested dictionary maps preset strings like:
		            'get_inputs_function_name' -> the name of a function attribute in this model that can be
		                run to get back a list of inputs corresponding to that function.
		            'info' -> the user provided extra information about the bundled inputs
		
		If forward has bundled inputs then these following functions are also defined:
		
		    `get_all_bundled_inputs() -> List[Tuple[Any, ...]]`
		        Returns a list of tuples suitable for passing to the model like
		        `for inp in model.get_all_bundled_inputs(): model(*inp)`
		
		    `get_num_bundled_inputs() -> int`
		        Equivalent to `len(model.get_all_bundled_inputs())`,
		        but slightly easier to call from C++.
		
		Inputs can be specified in one of two ways:
		
		  - The model can define `_generate_bundled_inputs_for_<function_name>`.
		    If the user chooses this method inputs[<function>] should map to None
		
		  - The `inputs` argument to this function can be a dictionary mapping functions to a
		    list of inputs, of the same form that will be returned by get_all_bundled_inputs_for_<function_name>.
		    The type of the inputs is List[Tuple[Any, ...]]. The outer list corresponds with a
		    list of inputs, the inner tuple is the list of args that together make up one input.
		    For inputs of functions that take one arg, this will be a tuple of length one. The Any, ...
		    is the actual data that makes up the args, e.g. a tensor.
		
		Info is an optional parameter that maps functions to a list of strings providing extra information about that
		function's bundled inputs. This could be descriptions, expected outputs, etc.
		    - Ex: info={model.forward : ['man eating icecream', 'an airplane', 'a dog']}
		
		This function will attempt to optimize arguments so that (e.g.)
		arguments like `torch.zeros(1000)` will be represented compactly.
		Only top-level arguments will be optimized.
		Tensors in lists or tuples will not.
	**/
	static public function augment_many_model_functions_with_bundled_inputs(model:Dynamic, inputs:Dynamic, ?_receive_inflate_expr:Dynamic, ?info:Dynamic, ?skip_size_check:Dynamic):Dynamic;
	/**
		Add bundled sample inputs to a model for the forward function.
		
		Models with bundled inputs can be invoked in a uniform manner by
		benchmarking and code coverage tools.
		
		Augmented models will support the following methods:
		
		    `get_all_bundled_inputs() -> List[Tuple[Any, ...]]`
		        Returns a list of tuples suitable for passing to the model like
		        `for inp in model.get_all_bundled_inputs(): model(*inp)`
		
		    `get_num_bundled_inputs() -> int`
		        Equivalent to `len(model.get_all_bundled_inputs())`,
		        but slightly easier to call from C++.
		
		    `get_bundled_inputs_functions_and_info() -> Dict[str, Dict[str: List[str]]]`
		        Returns a dictionary mapping function names to a metadata dictionary.
		        This nested dictionary maps preset strings like:
		            'get_inputs_function_name' -> the name of a function attribute in this model that can be
		                run to get back a list of inputs corresponding to that function.
		            'info' -> the user provided extra information about the bundled inputs
		
		Inputs can be specified in one of two ways:
		
		  - The model can define `_generate_bundled_inputs_for_forward`.
		    If the user chooses this method inputs should be None
		
		  - `inputs` is a list of inputs of form List[Tuple[Any, ...]]. A list of tuples where the elements
		    of each tuple are the args that make up one input.
	**/
	static public function augment_model_with_bundled_inputs(model:Dynamic, ?inputs:Dynamic, ?_receive_inflate_expr:Dynamic, ?info:Dynamic, ?skip_size_check:Dynamic):Dynamic;
	/**
		Creates and returns a copy of the specified model with inputs attached. The original model is
		not mutated or changed in any way.
		
		Models with bundled inputs can be invoked in a uniform manner by
		benchmarking and code coverage tools.
		
		If inputs is passed in as a list then the inputs will be bundled for 'forward'.
		If inputs is instead passed in as a map then all the methods specified in the map
		will have their corresponding inputs bundled. Info should match watchever type is
		chosen for the inputs.
		
		The returned model will support the following methods:
		
		    `get_all_bundled_inputs_for_<function_name>() -> List[Tuple[Any, ...]]`
		        Returns a list of tuples suitable for passing to the model like
		        `for inp in model.get_all_bundled_inputs_for_foo(): model.foo(*inp)`
		
		    `get_bundled_inputs_functions_and_info() -> Dict[str, Dict[str: List[str]]]`
		        Returns a dictionary mapping function names to a metadata dictionary.
		        This nested dictionary maps preset strings like:
		            'get_inputs_function_name' -> the name of a function attribute in this model that can be
		                run to get back a list of inputs corresponding to that function.
		            'info' -> the user provided extra information about the bundled inputs
		
		If forward has bundled inputs then these following functions will also be defined on the returned module:
		
		    `get_all_bundled_inputs() -> List[Tuple[Any, ...]]`
		        Returns a list of tuples suitable for passing to the model like
		        `for inp in model.get_all_bundled_inputs(): model(*inp)`
		
		    `get_num_bundled_inputs() -> int`
		        Equivalent to `len(model.get_all_bundled_inputs())`,
		        but slightly easier to call from C++.
		
		Inputs can be specified in one of two ways:
		
		  - The model can define `_generate_bundled_inputs_for_<function_name>`.
		    If the user chooses this method inputs[<function>] should map to None
		
		  - The `inputs` argument to this function can be a dictionary mapping functions to a
		    list of inputs, of the same form that will be returned by get_all_bundled_inputs_for_<function_name>.
		    Alternatively if only bundling inputs for forward the map can be omitted and a singular list of inputs
		    can be provided instead.
		
		    The type of the inputs is List[Tuple[Any, ...]]. The outer list corresponds with a
		    list of inputs, the inner tuple is the list of args that together make up one input.
		    For inputs of functions that take one arg, this will be a tuple of length one. The Any, ...
		    is the actual data that makes up the args, e.g. a tensor.
		
		Info is an optional parameter that maps functions to a list of strings providing extra information about that
		function's bundled inputs. Alternatively if only bundling inputs for forward the map can be omitted and
		a singular list of information can be provided instead. This could be descriptions, expected outputs, etc.
		    - Ex: info={model.forward : ['man eating icecream', 'an airplane', 'a dog']}
		
		This function will attempt to optimize arguments so that (e.g.)
		arguments like `torch.zeros(1000)` will be represented compactly.
		Only top-level arguments will be optimized.
		Tensors in lists or tuples will not.
	**/
	static public function bundle_inputs(model:Dynamic, inputs:Dynamic, ?info:Dynamic, ?_receive_inflate_expr:Dynamic):Dynamic;
	/**
		Wrap a tensor to allow bundling regardless of size.
	**/
	static public function bundle_large_tensor(t:Dynamic):Dynamic;
	/**
		Generate a tensor that will be inflated with torch.randn.
	**/
	static public function bundle_randn(?size:python.VarArgs<Dynamic>, ?dtype:Dynamic):Dynamic;
	/**
		Wrap this torch._C.ScriptModule in a Python ScriptModule, recursively for all submodules
	**/
	static public function wrap_cpp_module(cpp_module:Dynamic):Dynamic;
}