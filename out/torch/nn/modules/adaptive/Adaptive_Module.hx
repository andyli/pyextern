/* This file is generated, do not edit! */
package torch.nn.modules.adaptive;
@:pythonImport("torch.nn.modules.adaptive") extern class Adaptive_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Applies a softmax followed by a logarithm.
		
		While mathematically equivalent to log(softmax(x)), doing these two
		operations separately is slower, and numerically unstable. This function
		uses an alternative formulation to compute the output and gradient correctly.
		
		See :class:`~torch.nn.LogSoftmax` for more details.
		
		Arguments:
		    input (Tensor): input
		    dim (int): A dimension along which log_softmax will be computed.
		    dtype (:class:`torch.dtype`, optional): the desired data type of returned tensor.
		    If specified, the input tensor is casted to :attr:`dtype` before the operation
		    is performed. This is useful for preventing data type overflows. Default: None.
	**/
	static public function log_softmax(input:Dynamic, ?dim:Dynamic, ?_stacklevel:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
}