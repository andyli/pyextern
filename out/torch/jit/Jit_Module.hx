/* This file is generated, do not edit! */
package torch.jit;
@:pythonImport("torch.jit") extern class Jit_Module {
	static public var COMPILATION_PENDING : Dynamic;
	static public var COMPILED : Dynamic;
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
	static public var _boolean_dispatched : Dynamic;
	static public var _builtin_table : Dynamic;
	static public function _check_trace(check_inputs:Dynamic, func:Dynamic, executor_options:Dynamic, module:Dynamic, check_tolerance:Dynamic, force_outplace:Dynamic):Dynamic;
	static public function _clone_inputs(args:Dynamic):Dynamic;
	static public var _compiled_methods_whitelist : Dynamic;
	static public var _compiled_weak_fns : Dynamic;
	static public var _constant_types : Dynamic;
	static public function _create_interpreter_name_lookup_fn(?frames_up:Dynamic):Dynamic;
	static public function _create_methods_from_stubs(self:Dynamic, stubs:Dynamic):Dynamic;
	static public function _dump_trace(trace_name:Dynamic, pass_name:Dynamic, input_key:Dynamic, trace:Dynamic):Dynamic;
	static public var _enabled : Dynamic;
	static public function _find_builtin(fn:Dynamic):Dynamic;
	/**
		_jit_flatten(arg0: handle) -> Tuple[List[torch::autograd::Variable], torch._C.IODescriptor]
	**/
	static public function _flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		fork(arg0: torch::jit::script::Module, *args) -> torch._C.Future
	**/
	static public function _fork(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _get_builtin_table():Dynamic;
	static public function _get_methods(cls:Dynamic):Dynamic;
	static public function _get_valid_constant(attr:Dynamic, v:Dynamic):Dynamic;
	/**
		Calls script_method for each method on the type of the object passed in and
		returns the generated ScriptMethodStubs
	**/
	static public function _get_weak_stubs(cls:Dynamic):Dynamic;
	/**
		Check if a type has been annotated with `weak_module`
	**/
	static public function _is_weak_type(cls:Dynamic):Dynamic;
	/**
		_jit_script_compile(arg0: torch._C.ScriptModule, arg1: torch._C._jit_tree_views.Def, arg2: Callable[[str], function], arg3: Dict[str, object]) -> torch._C.ScriptModule
	**/
	static public function _jit_script_compile(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _list_with_default(out_size:Dynamic, defaults:Dynamic):Dynamic;
	static public function _make_fail(name:Dynamic):Dynamic;
	/**
		Converts a weak module into a subclass of ScriptModule
	**/
	static public function _make_strong(mod:Dynamic):Dynamic;
	static public var _modules_containing_builtins : Dynamic;
	static public function _pair(x:Dynamic):Dynamic;
	static public function _parse_env(name:Dynamic, _default:Dynamic, true_message:Dynamic, false_message:Dynamic):Dynamic;
	static public function _quadruple(x:Dynamic):Dynamic;
	static public function _register_builtin(fn:Dynamic, op:Dynamic):Dynamic;
	static public function _single(x:Dynamic):Dynamic;
	static public function _time(trace_name:Dynamic, name:Dynamic, ?time:Dynamic):Dynamic;
	static public function _triple(x:Dynamic):Dynamic;
	static public function _try_compile_weak_script(fn:Dynamic):Dynamic;
	static public function _try_get_dispatched_fn(fn:Dynamic):Dynamic;
	/**
		Get the WeakScriptModuleProxy corresponding to mod if it exists
	**/
	static public function _try_get_weak_module(mod:Dynamic):Dynamic;
	/**
		_jit_unflatten(arg0: List[torch::autograd::Variable], arg1: torch._C.IODescriptor) -> object
	**/
	static public function _unflatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _unique_state_dict(module:Dynamic, ?keep_vars:Dynamic):Dynamic;
	static public function _unwrap_optional(x:Dynamic):Dynamic;
	static public function _verify_equal(xs:Dynamic, ys:Dynamic):Dynamic;
	/**
		wait(arg0: torch._C.Future) -> None
	**/
	static public function _wait(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _weak_modules : Dynamic;
	static public var _weak_script_methods : Dynamic;
	static public var _weak_types : Dynamic;
	static public function annotate(the_type:Dynamic, the_value:Dynamic):Dynamic;
	static public function batch(?batch_size:Dynamic, ?optimize:Dynamic, ?_frames_up:Dynamic):Dynamic;
	/**
		Creates a function which, given a string variable name,
		returns the value of the variable in the scope of the caller of
		the function which called createResolutionCallback (by default).
		
		This is used to enable access in-scope Python variables inside
		TorchScript fragments.
		
		frames_up is number of additional frames to go up on the stack.
		The default value is 0, which correspond to the frame of the caller
		of createResolutionCallback. Also for example, if frames_up is set
		to 1, then the frame of the caller's caller of createResolutionCallback
		will be taken.
		
		For example, the following program prints 2::
		
		    def bar():
		        cb = createResolutionCallback(1)
		        print(cb("foo"))
		
		    def baz():
		        foo = 2
		        bar()
		
		    baz()
	**/
	static public function createResolutionCallback(?frames_up:Dynamic):Dynamic;
	static public function get_default_args(fn:Dynamic):Dynamic;
	static public function get_function_from_type(cls:Dynamic, name:Dynamic):Dynamic;
	static public function get_jit_ast(fn:Dynamic, is_method:Dynamic):Dynamic;
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
	static public function get_trace_graph(f:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?_force_outplace:Dynamic):Dynamic;
	static public function indent(s:Dynamic):Dynamic;
	/**
		Load a ``ScriptModule`` previously saved with :func:`save <torch.jit.save>`
		
		All previously saved modules, no matter their device, are first loaded onto CPU,
		and then are moved to the devices they were saved from. If this fails (e.g. because
		the run time system doesn't have certain devices), an exception is raised.
		However, storages can be dynamically remapped to an alternative set of devices
		using the `map_location` argument. Comparing to :func:`torch.load`, `map_location`
		in this function is simplified, which only accepts a string (e.g., 'cpu', 'cuda:0'),
		or torch.device (e.g., torch.device('cpu'))
		
		Arguments:
		    f: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		    map_location: can a string (e.g., 'cpu', 'cuda:0'), a device (e.g.,
		        torch.device('cpu'))
		
		Returns:
		    A ``ScriptModule`` object.
		
		Example:
		    >>> torch.jit.load('scriptmodule.pt')
		    # Load ScriptModule from io.BytesIO object
		    >>> with open('scriptmodule.pt', 'rb') as f:
		            buffer = io.BytesIO(f.read())
		    # Load all tensors to the original device
		    >>> torch.jit.load(buffer)
		    # Load all tensors onto CPU, using a device
		    >>> torch.jit.load(buffer, map_location=torch.device('cpu'))
		    # Load all tensors onto CPU, using a string
		    >>> torch.jit.load(buffer, map_location='cpu')
	**/
	static public function load(f:Dynamic, ?map_location:Dynamic):Dynamic;
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
	/**
		Saves a ScriptModule to a file.
		
		Args:
		    m: a ScriptModule to save
		    f: a file-like object (has to implement write and flush) or a string
		       containing a file name
		
		.. warning::
		    If you are using Python 2, torch.save does NOT support StringIO.StringIO
		    as a valid file-like object. This is because the write method should return
		    the number of bytes written; StringIO.write() does not do this.
		
		    Please use something like io.BytesIO instead.
		
		Example:
		    >>> m = torch.jit.ScriptModule()
		    >>> # Save to file
		    >>> torch.jit.save(m, 'scriptmodule.pt')
		    >>> # Save to io.BytesIO buffer
		    >>> buffer = io.BytesIO()
		    >>> torch.jit.save(m, buffer)
	**/
	static public function save(m:Dynamic, f:Dynamic):Dynamic;
	static public function scope(scope_name:Dynamic):Dynamic;
	static public function script(fn:Dynamic, ?optimize:Dynamic, ?_frames_up:Dynamic, ?_rcb:Dynamic):Dynamic;
	static public function script_method(fn:Dynamic, ?_rcb:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
	/**
		Trace a function and return an executable trace that will be optimized
		using just-in-time compilation.
		
		.. warning::
		
		    Tracing only correctly records functions and modules which are not data
		    dependent (e.g., have conditionals on data in tensors) and do not have
		    any untracked external dependencies (e.g., perform input/output or
		    access global variables). If you trace such models, you may silently get
		    incorrect results on subsequent invocations of the model. The tracer
		    will try to emit warnings when doing something that may cause an
		    incorrect trace to be produced.
		
		Arguments:
		    func (callable or torch.nn.Module):  a python function or torch.nn.Module
		                                         that will be run with example_inputs.
		                                         arguments and returns to func must be Tensors
		                                         or (possibly nested) tuples that
		                                         contain tensors.
		    example_inputs (tuple):  a tuple of example inputs that will be passed to the function
		                             while tracing. The resulting trace can be run with
		                             inputs of different types and shapes assuming the traced operations
		                             support those types and shapes. example_inputs may also be a single
		                             Tensor in which case it is automatically wrapped in a tuple
		
		Keyword arguments:
		    optimize (bool, optional): whether or not to apply optimizations.  Default: ``True``.
		    check_trace (bool, optional): check if the same inputs run through
		                                  traced code produce the same outputs. Default: ``True``. You might want
		                                  to disable this if, for example, your network contains non-
		                                  deterministic ops or if you are sure that the network is correct despite
		                                  a checker failure.
		
		    check_inputs (list of tuples, optional): A list of tuples of input arguments that should be used
		                                             to check the trace against what is expected. Each tuple
		                                             is equivalent to a seet of input arguments that would
		                                             be specified in ``args``. For best results, pass in a
		                                             set of checking inputs representative of the space of
		                                             shapes and types of inputs you expect the network to see.
		                                             If not specified, the original ``args`` is used for checking
		    check_tolerance (float, optional): Floating-point comparison tolerance to use in the checker procedure.
		                                       This can be used to relax the checker strictness in the event that
		                                       results diverge numerically for a known reason, such as operator fusion.
		
		Returns:
		    A ``ScriptModule`` object with a single ``forward()`` method containing the traced code.
		    When func is a ``torch.nn.Module``, the returned ``ScriptModule`` will have the same set of
		    sub-modules and parameters as func.
		
		Example:
		   >>> def f(x):
		   ...     return x * 2
		   >>> traced_f = torch.jit.trace(f, torch.rand(1))
	**/
	static public function trace(func:Dynamic, example_inputs:Dynamic, ?optimize:Dynamic, ?check_trace:Dynamic, ?check_inputs:Dynamic, ?check_tolerance:Dynamic, ?_force_outplace:Dynamic):Dynamic;
	static public function validate_cuda_device(location:Dynamic):Dynamic;
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