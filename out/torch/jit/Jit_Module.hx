/* This file is generated, do not edit! */
package torch.jit;
@:pythonImport("torch.jit") extern class Jit_Module {
	static public var _JIT_DISABLE : Dynamic;
	static public var _JIT_DUMP : Dynamic;
	static public var _JIT_STATS : Dynamic;
	static public var _JIT_TIME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _clone_inputs(args:Dynamic):Dynamic;
	static public var _compiled_methods_whitelist : Dynamic;
	static public var _constant_types : Dynamic;
	static public function _dump_trace(trace_name:Dynamic, pass_name:Dynamic, input_key:Dynamic, trace:Dynamic):Dynamic;
	/**
		_jit_flatten(arg0: handle) -> Tuple[List[torch::autograd::Variable], torch._C.IODescriptor]
	**/
	static public function _flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_methods(cls:Dynamic):Dynamic;
	static public function _get_valid_constant(v:Dynamic):Dynamic;
	/**
		_jit_script_compile(arg0: torch._C._jit_tree_views.Def, arg1: Callable[[str], function]) -> torch._C.Graph
	**/
	static public function _jit_script_compile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _make_fail(name:Dynamic):Dynamic;
	static public function _script_graph(fn:Dynamic, ?_frames_up:Dynamic):Dynamic;
	static public function _time(trace_name:Dynamic, name:Dynamic, ?time:Dynamic):Dynamic;
	static public var _tracing : Dynamic;
	/**
		_jit_unflatten(arg0: List[torch::autograd::Variable], arg1: torch._C.IODescriptor) -> object
	**/
	static public function _unflatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _unique_state_dict(module:Dynamic, ?keep_vars:Dynamic):Dynamic;
	static public function _verify_equal(xs:Dynamic, ys:Dynamic):Dynamic;
	static public function batch(?batch_size:Dynamic, ?optimize:Dynamic, ?_frames_up:Dynamic):Dynamic;
	/**
		Creates a function which, given a string variable name,
		returns the value of the variable in the scope of the caller of
		the function which called createResolutionCallback (by default).
		For example, the following program prints 2::
		
		    def bar():
		        cb = createResolutionCallback()
		        print(x("foo"))
		
		    def baz():
		        foo = 2
		        bar()
		
		    baz()
		
		This is used to enable access in-scope Python variables inside
		TorchScript fragments.
		
		frames_up is
	**/
	static public function createResolutionCallback(?frames_up:Dynamic):Dynamic;
	static public function get_jit_ast(fn:Dynamic):Dynamic;
	/**
		Trace a function or model, returning a tuple consisting of the both the
		*trace* of an execution, as well as the original return value.
		
		Tracing is guaranteed not to change the semantics of the function/module
		that is traced.
		
		Arguments:
		    f (torch.nn.Module or function): the function or module
		        to be traced.
		    args (tuple or Tensor): the positional arguments to pass to the
		        function/module to be traced.  A non-tuple is assumed to
		        be a single positional argument to be passed to the model.
		    kwargs (dict): the keyword arguments to pass to the function/module
		        to be traced.
		
		Example: Trace a cell.
		
		    >>> trace, out = jit.trace(nn.LSTMCell(), (input, hidden))
		    >>> print(trace)
	**/
	static public function get_trace_graph(f:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	static public function get_tracing_state(args:Dynamic):Dynamic;
	/**
		Sets gradients of all model parameters to zero.
	**/
	static public function method(self:Dynamic):Dynamic;
	static public var name : Dynamic;
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
	static public function raise_from(value:Dynamic, from_value:Dynamic):Dynamic;
	static public function scope(scope_name:Dynamic, ?vars:python.VarArgs<Dynamic>):Dynamic;
	static public function script(fn:Dynamic, ?optimize:Dynamic, ?_frames_up:Dynamic):Dynamic;
	static public function script_method(fn:Dynamic):Dynamic;
	/**
		Trace a function and return an executable trace that will be optimized
		using just-in-time compilation.
		
		.. warning::
		
		    Just-in-time compilation currently only works for functions/modules
		    which are not data dependent (e.g., have conditionals on data in
		    tensors) and do not have any untracked external dependencies (e.g.,
		    perform input/output or access global variables). If you trace such
		    models, you will silently get incorrect results on subsequent
		    invocations of the model.
		
		Arg:
		    *args - a list of example tensors that will be passed to the function
		            as inputs while tracing. The resulting trace can be run with
		            inputs of different types and shapes assuming the traced operations
		            support those types and shapes.
		
		Keyword arguments:
		    optimize (bool, optional): whether or not to apply optimizations.  Default: ``True``.
		
		    >>> @jit.trace(torch.rand(1))
		    ... def f(x):
		    ...     return x * 2
	**/
	static public function trace(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Verify that a JIT compiled model has the same behavior as its uncompiled
		version along with its backwards pass.  If your model returns multiple
		outputs, you must also specify a `loss_fn` to produce a loss for which
		the backwards will be computed.
		
		This function has side-effects (e.g., it executes your model / saves and loads
		parameters), so don't expect the model to come out exactly the same as what
		you passed in.
		
		Arguments:
		    model (compiled torch.nn.Module or function): the module/function to be
		        verified.  The module/function definition MUST have been decorated with
		        `@torch.jit.compile`.
		    args (tuple or Tensor): the positional arguments to pass to the
		        compiled function/module to be verified.  A non-tuple is assumed to
		        be a single positional argument to be passed to the model.
		    loss_fn (function, optional): the loss function to be applied to
		        the output of the model, before backwards is invoked.  By default,
		        we assume that a model returns a single result, and we :func:`torch.sum`
		        before calling backwards; if this is inappropriate, you can pass your
		        own loss function.  Note that if a model returns a tuple of results,
		        these are passed as separate positional arguments to `loss_fn`.
		    devices (iterable of device IDs, optional): the GPU devices which the
		        compiled module will be run on.  This determines the RNG state we
		        must save when running both compiled and uncompiled versions of the model.
	**/
	static public function verify(model:Dynamic, args:Dynamic, ?loss_fn:Dynamic, ?devices:Dynamic):Dynamic;
	/**
		Create a base class with a metaclass.
	**/
	static public function with_metaclass(meta:Dynamic, ?bases:python.VarArgs<Dynamic>):Dynamic;
}