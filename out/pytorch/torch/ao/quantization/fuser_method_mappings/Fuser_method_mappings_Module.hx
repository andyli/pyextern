/* This file is generated, do not edit! */
package torch.ao.quantization.fuser_method_mappings;
@:pythonImport("torch.ao.quantization.fuser_method_mappings") extern class Fuser_method_mappings_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var DEFAULT_OP_LIST_TO_FUSER_METHOD : Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A special construct usable to annotate class objects.
		
		For example, suppose we have the following classes::
		
		  class User: ...  # Abstract base for User classes
		  class BasicUser(User): ...
		  class ProUser(User): ...
		  class TeamUser(User): ...
		
		And a function that takes a class argument that's a subclass of
		User and returns an instance of the corresponding class::
		
		  U = TypeVar('U', bound=User)
		  def new_user(user_class: Type[U]) -> U:
		      user = user_class()
		      # (Here we could write the user object to a database)
		      return user
		
		  joe = new_user(BasicUser)
		
		At this point the type checker knows that joe has type BasicUser.
	**/
	static public function Type(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given the conv and bn modules, fuses them and returns the fused module
		
		Args:
		    conv: Module instance of type conv2d/conv3d
		    bn: Spatial BN instance that needs to be fused with the conv
		
		Examples::
		
		    >>> m1 = nn.Conv2d(10, 20, 3)
		    >>> b1 = nn.BatchNorm2d(20)
		    >>> m2 = fuse_conv_bn(m1, b1)
	**/
	static public function fuse_conv_bn(conv:Dynamic, bn:Dynamic):Dynamic;
	/**
		Given the conv and bn modules, fuses them and returns the fused module
		
		Args:
		    conv: Module instance of type conv2d/conv3d
		    bn: Spatial BN instance that needs to be fused with the conv
		
		Examples::
		
		    >>> m1 = nn.Conv2d(10, 20, 3)
		    >>> b1 = nn.BatchNorm2d(20)
		    >>> r1 = nn.ReLU(inplace=False)
		    >>> m2 = fuse_conv_bn_relu(m1, b1, r1)
	**/
	static public function fuse_conv_bn_relu(conv:Dynamic, bn:Dynamic, relu:Dynamic):Dynamic;
	/**
		Given the linear and bn modules, fuses them and returns the fused module
		
		Args:
		    linear: Module instance of type Linear
		    bn: BatchNorm1d instance that needs to be fused with the linear layer
		
		Examples::
		
		    >>> m1 = nn.Linear(20, 10)
		    >>> b1 = nn.BatchNorm1d(10)
		    >>> m2 = fuse_linear_bn(m1, b1)
	**/
	static public function fuse_linear_bn(linear:Dynamic, bn:Dynamic):Dynamic;
	static public function get_combined_dict(default_dict:Dynamic, additional_dict:Dynamic):Dynamic;
	/**
		Get fuser method for the given list of module types,
		return None if fuser method does not exist
	**/
	static public function get_fuser_method(op_list:Dynamic, ?additional_fuser_method_mapping:Dynamic):Dynamic;
}