/* This file is generated, do not edit! */
package torch.jit;
@:pythonImport("torch.jit") extern class Jit_Module {
	static public function Final(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		_jit_flatten(arg0: handle) -> Tuple[List[at::Tensor], torch._C.IODescriptor]
	**/
	static public function _flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates an asynchronous task executing `func` and a reference to the value
		of the result of this execution. `fork` will return immediately,
		so the return value of `func` may not have been computed yet. To force completion
		of the task and access the return value invoke `torch.jit.wait` on the Future. `fork` invoked
		with a `func` which returns `T` is typed as `torch.jit.Future[T]`. `fork` calls can be arbitrarily
		nested, and may be invoked with positional and keyword arguments.
		Asynchronous execution will only occur when run in TorchScript. If run in pure python,
		`fork` will not execute in parallel. `fork` will also not execute in parallel when invoked
		while tracing, however the `fork` and `wait` calls will be captured in the exported IR Graph.
		
		.. warning::
		    `fork` tasks will execute non-deterministically. We recommend only spawning
		    parallel fork tasks for pure functions that do not modify their inputs,
		    module attributes, or global state.
		
		Args:
		    func (callable or torch.nn.Module):  A Python function or `torch.nn.Module`
		        that will be invoked. If executed in TorchScript, it will execute asynchronously,
		        otherwise it will not. Traced invocations of fork will be captured in the IR.
		    ``*args``, ``**kwargs``: arguments to invoke `func` with.
		Returns:
		    `torch.jit.Future[T]`: a reference to the execution of `func`. The value `T`
		    can only be accessed by forcing completion of `func` through `torch.jit.wait`.
		
		Example (fork a free function):
		
		.. code-block:: python
		
		    import torch
		    from torch import Tensor
		    def foo(a : Tensor, b : int) -> Tensor:
		        return a + b
		    def bar(a):
		        fut : torch.jit.Future[Tensor] = torch.jit.fork(foo, a, b=2)
		        return torch.jit.wait(fut)
		    script_bar = torch.jit.script(bar)
		    input = torch.tensor(2)
		    # only the scripted version executes asynchronously
		    assert script_bar(input) == bar(input)
		    # trace is not run asynchronously, but fork is captured in IR
		    graph = torch.jit.trace(bar, (input,)).graph
		    assert "fork" in str(graph)
		
		Example (fork a module method):
		
		.. code-block:: python
		
		    import torch
		    from torch import Tensor
		    class AddMod(torch.nn.Module):
		        def forward(self, a: Tensor, b : int):
		            return a + b
		    class Mod(torch.nn.Module):
		        def __init__(self):
		            super(self).__init__()
		            self.mod = AddMod()
		        def forward(self, input):
		            fut = torch.jit.fork(self.mod, a, b=2)
		            return torch.jit.wait(fut)
		    input = torch.tensor(2)
		    mod = Mod()
		    assert mod(input) == torch.jit.script(mod).forward(input)
	**/
	static public function _fork(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		.. warning::
		    This function is internal-only and should only be used by the ONNX
		    exporter. If you are trying to get a graph through tracing, please go
		    through the public API instead::
		
		        trace = torch.jit.trace(nn.LSTMCell(), (input, hidden))
		        trace_graph = trace.graph
		
		Trace a function or model, returning a tuple consisting of the both the
		*trace* of an execution, as well as the original return value. If return_inputs,
		also returns the trace inputs as part of the tuple
		
		Tracing is guaranteed not to change the semantics of the function/module
		that is traced.
		
		Args:
		    f (torch.nn.Module or function): the function or module
		        to be traced.
		    args (tuple or Tensor): the positional arguments to pass to the
		        function/module to be traced.  A non-tuple is assumed to
		        be a single positional argument to be passed to the model.
		    kwargs (dict): the keyword arguments to pass to the function/module
		        to be traced.
		
		Example (trace a cell):
		
		.. testcode::
		
		    trace = torch.jit.trace(nn.LSTMCell(), (input, hidden))
	**/
	static public function _get_trace_graph(f:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?strict:Dynamic, ?_force_outplace:Dynamic, ?return_inputs:Dynamic, ?_return_inputs_states:Dynamic):Dynamic;
	static public function _hide_source_ranges():Dynamic;
	static public function _isinstance(obj:Dynamic, target_type:Dynamic):Dynamic;
	static public function _overload(func:Dynamic):Dynamic;
	static public function _overload_method(func:Dynamic):Dynamic;
	static public function _script_if_tracing(fn:Dynamic):Dynamic;
	static public function _unique_state_dict(module:Dynamic, ?keep_vars:Dynamic):Dynamic;
	static public function _unwrap_optional(x:Dynamic):Dynamic;
	/**
		Forces completion of a `torch.jit.Future[T]` asynchronous task, returning the
		result of the task. See :func:`~fork` for docs and examples.
		Args:
		    func (torch.jit.Future[T]): an asynchronous task reference, created through `torch.jit.fork`
		Returns:
		    `T`: the return value of the the completed task
	**/
	static public function _wait(future:Dynamic):Dynamic;
	/**
		This method is a pass-through function that returns `the_value`, used to hint TorchScript
		compiler the type of `the_value`. It is a no-op when running outside of TorchScript.
		
		Though TorchScript can infer correct type for most Python expressions, there are some cases where
		type inference can be wrong, including:
		
		- Empty containers like `[]` and `{}`, which TorchScript assumes to be container of `Tensor`
		- Optional types like `Optional[T]` but assigned a valid value of type `T`, TorchScript would assume
		  it is type `T` rather than `Optional[T]`
		
		Note that `annotate()` does not help in `__init__` method of `torch.nn.Module` subclasses because it
		is executed in eager mode. To annotate types of `torch.nn.Module` attributes,
		use :meth:`~torch.jit.Annotate` instead.
		
		Example:
		
		.. testcode::
		
		    import torch
		    from typing import Dict
		
		    @torch.jit.script
		    def fn():
		        # Telling TorchScript that this empty dictionary is a (str -> int) dictionary
		        # instead of default dictionary type of (str -> Tensor).
		        d = torch.jit.annotate(Dict[str, int], {})
		
		        # Without `torch.jit.annotate` above, following statement would fail because of
		        # type mismatch.
		        d["name"] = 20
		
		.. testcleanup::
		
		    del fn
		
		Args:
		    the_type: Python type that should be passed to TorchScript compiler as type hint for `the_value`
		    the_value: Value or expression to hint type for.
		
		Returns:
		    `the_value` is passed back as return value.
	**/
	static public function annotate(the_type:Dynamic, the_value:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		This decorator indicates that a method on an ``nn.Module`` is used as an entry point into a
		:class:`ScriptModule` and should be compiled.
		
		``forward`` implicitly is assumed to be an entry point, so it does not need this decorator.
		Functions and methods called from ``forward`` are compiled as they are seen
		by the compiler, so they do not need this decorator either.
		
		Example (using ``@torch.jit.export`` on a method):
		
		.. testcode::
		
		    import torch
		    import torch.nn as nn
		
		    class MyModule(nn.Module):
		        def implicitly_compiled_method(self, x):
		            return x + 99
		
		        # `forward` is implicitly decorated with `@torch.jit.export`,
		        # so adding it here would have no effect
		        def forward(self, x):
		            return x + 10
		
		        @torch.jit.export
		        def another_forward(self, x):
		            # When the compiler sees this call, it will compile
		            # `implicitly_compiled_method`
		            return self.implicitly_compiled_method(x)
		
		        def unused_method(self, x):
		            return x - 20
		
		    # `m` will contain compiled methods:
		    #     `forward`
		    #     `another_forward`
		    #     `implicitly_compiled_method`
		    # `unused_method` will not be compiled since it was not called from
		    # any compiled methods and wasn't decorated with `@torch.jit.export`
		    m = torch.jit.script(MyModule())
	**/
	static public function export(fn:Dynamic):Dynamic;
	/**
		Generates new bytecode for a Script module and returns what the op list
		would be for a Script Module based off the current code base. If you
		have a LiteScriptModule and want to get the currently present
		list of ops call _export_operator_list instead.
	**/
	static public function export_opnames(m:Dynamic):Dynamic;
	/**
		Creates an asynchronous task executing `func` and a reference to the value
		of the result of this execution. `fork` will return immediately,
		so the return value of `func` may not have been computed yet. To force completion
		of the task and access the return value invoke `torch.jit.wait` on the Future. `fork` invoked
		with a `func` which returns `T` is typed as `torch.jit.Future[T]`. `fork` calls can be arbitrarily
		nested, and may be invoked with positional and keyword arguments.
		Asynchronous execution will only occur when run in TorchScript. If run in pure python,
		`fork` will not execute in parallel. `fork` will also not execute in parallel when invoked
		while tracing, however the `fork` and `wait` calls will be captured in the exported IR Graph.
		
		.. warning::
		    `fork` tasks will execute non-deterministically. We recommend only spawning
		    parallel fork tasks for pure functions that do not modify their inputs,
		    module attributes, or global state.
		
		Args:
		    func (callable or torch.nn.Module):  A Python function or `torch.nn.Module`
		        that will be invoked. If executed in TorchScript, it will execute asynchronously,
		        otherwise it will not. Traced invocations of fork will be captured in the IR.
		    ``*args``, ``**kwargs``: arguments to invoke `func` with.
		Returns:
		    `torch.jit.Future[T]`: a reference to the execution of `func`. The value `T`
		    can only be accessed by forcing completion of `func` through `torch.jit.wait`.
		
		Example (fork a free function):
		
		.. code-block:: python
		
		    import torch
		    from torch import Tensor
		    def foo(a : Tensor, b : int) -> Tensor:
		        return a + b
		    def bar(a):
		        fut : torch.jit.Future[Tensor] = torch.jit.fork(foo, a, b=2)
		        return torch.jit.wait(fut)
		    script_bar = torch.jit.script(bar)
		    input = torch.tensor(2)
		    # only the scripted version executes asynchronously
		    assert script_bar(input) == bar(input)
		    # trace is not run asynchronously, but fork is captured in IR
		    graph = torch.jit.trace(bar, (input,)).graph
		    assert "fork" in str(graph)
		
		Example (fork a module method):
		
		.. code-block:: python
		
		    import torch
		    from torch import Tensor
		    class AddMod(torch.nn.Module):
		        def forward(self, a: Tensor, b : int):
		            return a + b
		    class Mod(torch.nn.Module):
		        def __init__(self):
		            super(self).__init__()
		            self.mod = AddMod()
		        def forward(self, input):
		            fut = torch.jit.fork(self.mod, a, b=2)
		            return torch.jit.wait(fut)
		    input = torch.tensor(2)
		    mod = Mod()
		    assert mod(input) == torch.jit.script(mod).forward(input)
	**/
	static public function fork(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Freezing a :class:`ScriptModule` will clone it and attempt to inline the cloned
		module's submodules, parameters, and attributes as constants in the TorchScript IR Graph.
		By default, `forward` will be preserved, as well as attributes & methods specified in
		`preserved_attrs`. Additionally, any attribute that is modified within a preserved
		method will be preserved.
		
		Freezing currently only accepts ScriptModules that are in eval mode.
		
		Freezing applies generic optimization that will speed up your model regardless of machine.
		To further optimize using server-specific settings, run `optimize_for_inference` after
		freezing.
		
		Args:
		    mod (:class:`ScriptModule`): a module to be frozen
		
		    preserved_attrs (Optional[List[str]]): a list of attributes to preserve in addition to the forward method.
		    Attributes modified in preserved methods will also be preserved.
		
		    optimize_numerics (bool): If ``True``, a set of optimization passes will be run that does not strictly
		    preserve numerics. Full details of optimization can be found at `torch.jit.run_frozen_optimizations`.
		
		Returns:
		    Frozen :class:`ScriptModule`.
		
		Example (Freezing a simple module with a Parameter):
		
		.. testcode::
		    import torch
		    class MyModule(torch.nn.Module):
		        def __init__(self, N, M):
		            super(MyModule, self).__init__()
		            self.weight = torch.nn.Parameter(torch.rand(N, M))
		            self.linear = torch.nn.Linear(N, M)
		
		        def forward(self, input):
		            output = self.weight.mm(input)
		            output = self.linear(output)
		            return output
		
		    scripted_module = torch.jit.script(MyModule(2, 3).eval())
		    frozen_module = torch.jit.freeze(scripted_module)
		    # parameters have been removed and inlined into the Graph as constants
		    assert len(list(frozen_module.named_parameters())) == 0
		    # See the compiled graph as Python code
		    print(frozen_module.code)
		
		Example (Freezing a module with preserved attributes)
		
		.. testcode::
		    import torch
		    class MyModule2(torch.nn.Module):
		        def __init__(self):
		            super(MyModule2, self).__init__()
		            self.modified_tensor = torch.tensor(10.)
		            self.version = 1
		
		        def forward(self, input):
		            self.modified_tensor += 1
		            return input + self.modified_tensor
		
		    scripted_module = torch.jit.script(MyModule2().eval())
		    frozen_module = torch.jit.freeze(scripted_module, preserved_attrs=["version"])
		    # we've manually preserved `version`, so it still exists on the frozen module and can be modified
		    assert frozen_module.version == 1
		    frozen_module.version = 2
		    # `modified_tensor` is detected as being mutated in the forward, so freezing preserves
		    # it to retain model semantics
		    assert frozen_module(torch.tensor(1)) == torch.tensor(12)
		    # now that we've run it once, the next result will be incremented by one
		    assert frozen_module(torch.tensor(1)) == torch.tensor(13)
		
		Note:
		    If you're not sure why an attribute is not being inlined as a constant, you can run
		    `dump_alias_db` on frozen_module.forward.graph to see if freezing has detected the
		    attribute is being modified.
		
		Note:
		    Because freezing makes weights constants and removes module hierarchy, `to` and other
		    nn.Module methods to manipulate device or dtype no longer work. As a workaround,
		    You can remap devices by specifying `map_location` in `torch.jit.load`, however
		    device-specific logic may have been baked into the model.
	**/
	static public function freeze(mod:Dynamic, ?preserved_attrs:Dynamic, ?optimize_numerics:Dynamic):Dynamic;
	/**
		A context manager that facilitates switching between
		backend fusers.
		
		Valid names:
		* ``fuser0`` - enables only legacy fuser
		* ``fuser1`` - enables only NNC
		* ``fuser2`` - enables only nvFuser
	**/
	static public function fuser(name:Dynamic):Dynamic;
	/**
		This decorator indicates to the compiler that a function or method should
		be ignored and left as a Python function. This allows you to leave code in
		your model that is not yet TorchScript compatible. If called from TorchScript,
		ignored functions will dispatch the call to the Python interpreter. Models with ignored
		functions cannot be exported; use :func:`@torch.jit.unused <torch.jit.unused>` instead.
		
		Example (using ``@torch.jit.ignore`` on a method)::
		
		    import torch
		    import torch.nn as nn
		
		    class MyModule(nn.Module):
		        @torch.jit.ignore
		        def debugger(self, x):
		            import pdb
		            pdb.set_trace()
		
		        def forward(self, x):
		            x += 10
		            # The compiler would normally try to compile `debugger`,
		            # but since it is `@ignore`d, it will be left as a call
		            # to Python
		            self.debugger(x)
		            return x
		
		    m = torch.jit.script(MyModule())
		
		    # Error! The call `debugger` cannot be saved since it calls into Python
		    m.save("m.pt")
		
		Example (using ``@torch.jit.ignore(drop=True)`` on a method):
		
		.. testcode::
		
		    import torch
		    import torch.nn as nn
		
		    class MyModule(nn.Module):
		        @torch.jit.ignore(drop=True)
		        def training_method(self, x):
		            import pdb
		            pdb.set_trace()
		
		        def forward(self, x):
		            if self.training:
		                self.training_method(x)
		            return x
		
		    m = torch.jit.script(MyModule())
		
		    # This is OK since `training_method` is not saved, the call is replaced
		    # with a `raise`.
		    m.save("m.pt")
		
		.. testcleanup::
		
		    import os
		    os.remove('m.pt')
	**/
	static public function ignore(?drop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	@:native("interface")
	static public function _interface(obj:Dynamic):Dynamic;
	/**
		Function that returns True when in compilation and False otherwise. This
		is useful especially with the @unused decorator to leave code in your
		model that is not yet TorchScript compatible.
		.. testcode::
		
		    import torch
		
		    @torch.jit.unused
		    def unsupported_linear_op(x):
		        return x
		
		    def linear(x):
		       if torch.jit.is_scripting():
		          return torch.linear(x)
		       else:
		          return unsupported_linear_op(x)
	**/
	static public function is_scripting():Dynamic;
	/**
		Returns ``True`` in tracing (if a function is called during the tracing of
		code with ``torch.jit.trace``) and ``False`` otherwise.
	**/
	static public function is_tracing():Dynamic;
	/**
		This function provides for conatiner type refinement in TorchScript. It can refine
		parameterized containers of the List, Dict, Tuple, and Optional types. E.g. ``List[str]``,
		``Dict[str, List[torch.Tensor]]``, ``Optional[Tuple[int,str,int]]``. It can also
		refine basic types such as bools and ints that are available in TorchScript.
		
		Args:
		    obj: object to refine the type of
		    target_type: type to try to refine obj to
		Returns:
		    ``bool``: True if obj was successfully refined to the type of target_type,
		        False otherwise with no new type refinement
		
		
		Example (using ``torch.jit.isinstance`` for type refinement):
		.. testcode::
		
		    import torch
		    from typing import Any, Dict, List
		
		    class MyModule(torch.nn.Module):
		        def __init__(self):
		            super(MyModule, self).__init__()
		
		        def forward(self, input: Any): # note the Any type
		            if torch.jit.isinstance(input, List[torch.Tensor]):
		                for t in input:
		                    y = t.clamp(0, 0.5)
		            elif torch.jit.isinstance(input, Dict[str, str]):
		                for val in input.values():
		                    print(val)
		
		    m = torch.jit.script(MyModule())
		    x = [torch.rand(3,3), torch.rand(4,3)]
		    m(x)
		    y = {"key1":"val1","key2":"val2"}
		    m(y)
	**/
	static public function isinstance(obj:Dynamic, target_type:Dynamic):Dynamic;
	/**
		_last_executed_optimized_graph() -> torch._C.Graph
		
		Retrieve the optimized graph that was run the last time the graph executor ran on this thread
	**/
	static public function last_executed_optimized_graph(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Load a :class:`ScriptModule` or :class:`ScriptFunction` previously
		saved with :func:`torch.jit.save <torch.jit.save>`
		
		All previously saved modules, no matter their device, are first loaded onto CPU,
		and then are moved to the devices they were saved from. If this fails (e.g.
		because the run time system doesn't have certain devices), an exception is
		raised.
		
		Args:
		    f: a file-like object (has to implement read, readline, tell, and seek),
		        or a string containing a file name
		    map_location (string or torch.device): A simplified version of
		        ``map_location`` in `torch.jit.save` used to dynamically remap
		        storages to an alternative set of devices.
		    _extra_files (dictionary of filename to content): The extra
		        filenames given in the map would be loaded and their content
		        would be stored in the provided map.
		
		Returns:
		    A :class:`ScriptModule` object.
		
		Example:
		
		.. testcode::
		
		    import torch
		    import io
		
		    torch.jit.load('scriptmodule.pt')
		
		    # Load ScriptModule from io.BytesIO object
		    with open('scriptmodule.pt', 'rb') as f:
		        buffer = io.BytesIO(f.read())
		
		    # Load all tensors to the original device
		    torch.jit.load(buffer)
		
		    # Load all tensors onto CPU, using a device
		    buffer.seek(0)
		    torch.jit.load(buffer, map_location=torch.device('cpu'))
		
		    # Load all tensors onto CPU, using a string
		    buffer.seek(0)
		    torch.jit.load(buffer, map_location='cpu')
		
		    # Load with extra files.
		    extra_files = {'foo.txt': ''}  # values will be replaced with data
		    torch.jit.load('scriptmodule.pt', _extra_files=extra_files)
		    print(extra_files['foo.txt'])
		
		.. testoutput::
		    :hide:
		
		    ...
		
		.. testcleanup::
		
		    import os
		    os.remove("scriptmodule.pt")
	**/
	static public function load(f:Dynamic, ?map_location:Dynamic, ?_extra_files:Dynamic):Dynamic;
	/**
		Performs a set of optimization passes to optimize a model for the
		purposes of inference. If the model is not already frozen, optimize_for_inference
		will invoke `torch.jit.freeze` automatically.
		
		In addition to generic optimizations that should speed up your model regardless
		of environment, prepare for inference will also bake in build specific settings
		such as the presence of CUDNN or MKLDNN, and may in the future make transformations
		which speed things up on one machine but slow things down on another. Accordingly,
		serialization is not implemented following invoking `optimize_for_inference` and
		is not guaranteed.
		
		This is still in prototype, and may have the potential to slow down your model.
		Primary use cases that have been targeted so far have been vision models on cpu
		and gpu to a lesser extent.
		
		Example (optimizing a module with Conv->Batchnorm)::
		
		    import torch
		    in_channels, out_channels = 3, 32
		    conv = torch.nn.Conv2d(in_channels, out_channels, kernel_size=3, stride=2, bias=True)
		    bn = torch.nn.BatchNorm2d(out_channels, eps=.001)
		    mod = torch.nn.Sequential(conv, bn)
		    frozen_mod = torch.jit.optimize_for_inference(torch.jit.script(mod.eval()))
		    assert "batch_norm" not in str(frozen_mod.graph)
		    # if built with MKLDNN, convolution will be run with MKLDNN weights
		    assert "MKLDNN" in frozen_mod.graph
	**/
	static public function optimize_for_inference(mod:Dynamic):Dynamic;
	/**
		A context manager that controls whether the JIT's executor will run
		optimizations before executing a function.
	**/
	static public function optimized_execution(should_optimize:Dynamic):Dynamic;
	/**
		Runs a series of optimizations looking for patterns that occur in frozen graphs.
		The current set of optimizations is:
		    - Dropout Removal
		    - Conv -> Batchnorm folding
		    - Conv -> Add/Sub folding
		    - Conv -> Mul/Div folding
		
		Args:
		    mod (:class:`ScriptModule`): a frozen module to be optimized
		
		    optimize_numerics (bool): If ``True``, a set of optimization passes will be run that does not strictly
		    preserve numerics. These optimizations preserve default rtol and atol of `torch.testing.assert_allclose`
		    when applied on a single transformation, however in a module where many transformations are applied
		    the rtol or atol may no longer fall within the default `assert_allclose` tolerance. Conv -> Batchnorm folding,
		    Conv-Add/Sub, and Conv -> Mul/Div folding all may alter numerics.
		
		Returns:
		    None
		
		Note:
		    In rare occassions, this can result in slower execution.
		
		Example (Freezing a module with Conv->Batchnorm)
		.. code-block:: python
		    import torch
		    in_channels, out_channels = 3, 32
		    conv = torch.nn.Conv2d(in_channels, out_channels, kernel_size=3, stride=2, bias=True)
		    bn = torch.nn.BatchNorm2d(out_channels, eps=.001)
		    mod = torch.nn.Sequential(conv, bn)
		    # set optimize to False here, by default freezing runs run_frozen_optimizations
		    frozen_mod = torch.jit.freeze(torch.jit.script(mod.eval()), optimize=False)
		    # inspect frozen mod
		    assert "batch_norm" in str(frozen_mod.graph)
		    torch.jit.run_frozen_optimizations(frozen_mod)
		    assert "batch_norm" not in str(frozen_mod.graph)
	**/
	static public function run_frozen_optimizations(mod:Dynamic, ?optimize_numerics:Dynamic):Dynamic;
	/**
		Save an offline version of this module for use in a separate process. The
		saved module serializes all of the methods, submodules, parameters, and
		attributes of this module. It can be loaded into the C++ API using
		``torch::jit::load(filename)`` or into the Python API with
		:func:`torch.jit.load <torch.jit.load>`.
		
		To be able to save a module, it must not make any calls to native Python
		functions.  This means that all submodules must be subclasses of
		:class:`ScriptModule` as well.
		
		.. DANGER::
		    All modules, no matter their device, are always loaded onto the CPU
		    during loading.  This is different from :func:`torch.load`'s semantics
		    and may change in the future.
		
		Args:
		    m: A :class:`ScriptModule` to save.
		    f: A file-like object (has to implement write and flush) or a string
		       containing a file name.
		    _extra_files: Map from filename to contents which will be stored as part of `f`.
		
		.. note::
		    torch.jit.save attempts to preserve the behavior of some operators
		    across versions. For example, dividing two integer tensors in
		    PyTorch 1.5 performed floor division, and if the module
		    containing that code is saved in PyTorch 1.5 and loaded in PyTorch 1.6
		    its division behavior will be preserved. The same module saved in
		    PyTorch 1.6 will fail to load in PyTorch 1.5, however, since the
		    behavior of division changed in 1.6, and 1.5 does not know how to
		    replicate the 1.6 behavior.
		
		Example:
		
		.. testcode::
		
		    import torch
		    import io
		
		    class MyModule(torch.nn.Module):
		        def forward(self, x):
		            return x + 10
		
		    m = torch.jit.script(MyModule())
		
		    # Save to file
		    torch.jit.save(m, 'scriptmodule.pt')
		    # This line is equivalent to the previous
		    m.save("scriptmodule.pt")
		
		    # Save to io.BytesIO buffer
		    buffer = io.BytesIO()
		    torch.jit.save(m, buffer)
		
		    # Save with extra files
		    extra_files = {'foo.txt': b'bar'}
		    torch.jit.save(m, 'scriptmodule.pt', _extra_files=extra_files)
	**/
	static public function save(m:Dynamic, f:Dynamic, ?_extra_files:Dynamic):Dynamic;
	/**
		Scripting a function or ``nn.Module`` will inspect the source code, compile
		it as TorchScript code using the TorchScript compiler, and return a :class:`ScriptModule` or
		:class:`ScriptFunction`. TorchScript itself is a subset of the Python language, so not all
		features in Python work, but we provide enough functionality to compute on
		tensors and do control-dependent operations. For a complete guide, see the
		:ref:`language-reference`.
		
		Scripting a dictionary or list copies the data inside it into a TorchScript instance than can be
		subsequently passed by reference between Python and TorchScript with zero copy overhead.
		
		``torch.jit.script`` can be used as a function for modules, functions, dictionaries and lists
		 and as a decorator ``@torch.jit.script`` for :ref:`torchscript-classes` and functions.
		
		Args:
		    obj (callable, class, or ``nn.Module``):  The ``nn.Module``, function, class type,
		                                              dictionary, or list to compile.
		    example_inputs (Union[List[Tuple], Dict[Callable, List[Tuple]], None]): Provide example inputs
		        to annotate the arguments for a function or ``nn.Module``.
		
		Returns:
		    If ``obj`` is ``nn.Module``, ``script`` returns
		    a :class:`ScriptModule` object. The returned :class:`ScriptModule` will
		    have the same set of sub-modules and parameters as the
		    original ``nn.Module``. If ``obj`` is a standalone function,
		    a :class:`ScriptFunction` will be returned. If ``obj`` is a ``dict``, then
		    ``script`` returns an instance of `torch._C.ScriptDict`. If ``obj`` is a ``list``,
		    then ``script`` returns an instance of `torch._C.ScriptList`.
		
		**Scripting a function**
		    The ``@torch.jit.script`` decorator will construct a :class:`ScriptFunction`
		    by compiling the body of the function.
		
		    Example (scripting a function):
		
		    .. testcode::
		
		        import torch
		
		        @torch.jit.script
		        def foo(x, y):
		            if x.max() > y.max():
		                r = x
		            else:
		                r = y
		            return r
		
		        print(type(foo))  # torch.jit.ScriptFunction
		
		        # See the compiled graph as Python code
		        print(foo.code)
		
		        # Call the function using the TorchScript interpreter
		        foo(torch.ones(2, 2), torch.ones(2, 2))
		
		    .. testoutput::
		        :hide:
		
		        ...
		
		****Scripting a function using example_inputs**
		    Example inputs can be used to annotate a function arguments.
		
		    Example (annotating a function before scripting):
		
		    .. testcode::
		
		        import torch
		
		        def test_sum(a, b):
		            return a + b
		
		        # Annotate the arguments to be int
		        scripted_fn = torch.jit.script(test_sum, example_inputs=[(3, 4)])
		
		        print(type(scripted_fn))  # torch.jit.ScriptFunction
		
		        # See the compiled graph as Python code
		        print(scripted_fn.code)
		
		        # Call the function using the TorchScript interpreter
		        scripted_fn(20, 100)
		
		    .. testoutput::
		        :hide:
		
		        ...
		
		**Scripting an nn.Module**
		    Scripting an ``nn.Module`` by default will compile the ``forward`` method and recursively
		    compile any methods, submodules, and functions called by ``forward``. If a ``nn.Module`` only uses
		    features supported in TorchScript, no changes to the original module code should be necessary. ``script``
		    will construct :class:`ScriptModule` that has copies of the attributes, parameters, and methods of
		    the original module.
		
		    Example (scripting a simple module with a Parameter):
		
		    .. testcode::
		
		        import torch
		
		        class MyModule(torch.nn.Module):
		            def __init__(self, N, M):
		                super(MyModule, self).__init__()
		                # This parameter will be copied to the new ScriptModule
		                self.weight = torch.nn.Parameter(torch.rand(N, M))
		
		                # When this submodule is used, it will be compiled
		                self.linear = torch.nn.Linear(N, M)
		
		            def forward(self, input):
		                output = self.weight.mv(input)
		
		                # This calls the `forward` method of the `nn.Linear` module, which will
		                # cause the `self.linear` submodule to be compiled to a `ScriptModule` here
		                output = self.linear(output)
		                return output
		
		        scripted_module = torch.jit.script(MyModule(2, 3))
		
		    Example (scripting a module with traced submodules):
		
		    .. testcode::
		
		        import torch
		        import torch.nn as nn
		        import torch.nn.functional as F
		
		        class MyModule(nn.Module):
		            def __init__(self):
		                super(MyModule, self).__init__()
		                # torch.jit.trace produces a ScriptModule's conv1 and conv2
		                self.conv1 = torch.jit.trace(nn.Conv2d(1, 20, 5), torch.rand(1, 1, 16, 16))
		                self.conv2 = torch.jit.trace(nn.Conv2d(20, 20, 5), torch.rand(1, 20, 16, 16))
		
		            def forward(self, input):
		                input = F.relu(self.conv1(input))
		                input = F.relu(self.conv2(input))
		                return input
		
		        scripted_module = torch.jit.script(MyModule())
		
		    To compile a method other than ``forward`` (and recursively compile anything it calls), add
		    the :func:`@torch.jit.export <torch.jit.export>` decorator to the method. To opt out of compilation
		    use :func:`@torch.jit.ignore <torch.jit.ignore>` or :func:`@torch.jit.unused <torch.jit.unused>`.
		
		    Example (an exported and ignored method in a module)::
		
		        import torch
		        import torch.nn as nn
		
		        class MyModule(nn.Module):
		            def __init__(self):
		                super(MyModule, self).__init__()
		
		            @torch.jit.export
		            def some_entry_point(self, input):
		                return input + 10
		
		            @torch.jit.ignore
		            def python_only_fn(self, input):
		                # This function won't be compiled, so any
		                # Python APIs can be used
		                import pdb
		                pdb.set_trace()
		
		            def forward(self, input):
		                if self.training:
		                    self.python_only_fn(input)
		                return input * 99
		
		        scripted_module = torch.jit.script(MyModule())
		        print(scripted_module.some_entry_point(torch.randn(2, 2)))
		        print(scripted_module(torch.randn(2, 2)))
		
		    Example ( Annotating forward of nn.Module using example_inputs)::
		
		        import torch
		        import torch.nn as nn
		        from typing import NamedTuple
		
		        class MyModule(NamedTuple):
		        result: List[int]
		
		        class TestNNModule(torch.nn.Module):
		            def forward(self, a) -> MyModule:
		                result = MyModule(result=a)
		                return result
		
		        pdt_model = TestNNModule()
		
		        # Runs the pdt_model in eager model with the inputs provided and annotates the arguments of forward
		        scripted_model = torch.jit.script(pdt_model, example_inputs={pdt_model: [([10, 20, ], ), ], })
		
		        # Run the scripted_model with actual inputs
		        print(scripted_model([20]))
	**/
	static public function script(obj:Dynamic, ?optimize:Dynamic, ?_frames_up:Dynamic, ?_rcb:Dynamic, ?example_inputs:Dynamic):Dynamic;
	/**
		Compiles ``fn`` when it is first called during tracing. ``torch.jit.script``
		has a non-negligible start up time when it is first called due to
		lazy-initializations of many compiler builtins. Therefore you should not use
		it in library code. However, you may want to have parts of your library work
		in tracing even if they use control flow. In these cases, you should use
		``@torch.jit.script_if_tracing`` to substitute for
		``torch.jit.script``.
		
		Args:
		    fn: A function to compile.
		
		Returns:
		    If called during tracing, a :class:`ScriptFunction` created by `torch.jit.script` is returned.
		    Otherwise, the original function `fn` is returned.
	**/
	static public function script_if_tracing(fn:Dynamic):Dynamic;
	static public function script_method(fn:Dynamic):Dynamic;
	static public function set_module(obj:Dynamic, mod:Dynamic):Dynamic;
	/**
		Trace a function and return an executable  or :class:`ScriptFunction`
		that will be optimized using just-in-time compilation. Tracing is ideal for
		code that operates only on ``Tensor``\s and lists, dictionaries, and
		tuples of ``Tensor``\s.
		
		Using `torch.jit.trace` and `torch.jit.trace_module`, you can turn an
		existing module or Python function into a TorchScript
		:class:`ScriptFunction` or :class:`ScriptModule`. You must provide example
		inputs, and we run the function, recording the operations performed on all
		the tensors.
		
		* The resulting recording of a standalone function produces `ScriptFunction`.
		* The resulting recording of `nn.Module.forward` or `nn.Module` produces
		  `ScriptModule`.
		
		This module also contains any parameters that the original
		module had as well.
		
		Warning:
		    Tracing only correctly records functions and modules which are not data
		    dependent (e.g., do not have conditionals on data in tensors) and do not have
		    any untracked external dependencies (e.g., perform input/output or
		    access global variables). Tracing only records operations done when the given
		    function is run on the given tensors. Therefore, the returned
		    `ScriptModule` will always run the same traced graph on any input. This
		    has some important implications when your module is expected to run
		    different sets of operations, depending on the input and/or the module
		    state. For example,
		
		    * Tracing will not record any control-flow like if-statements or loops.
		      When this control-flow is constant across your module, this is fine
		      and it often inlines the control-flow decisions. But sometimes the
		      control-flow is actually part of the model itself. For instance, a
		      recurrent network is a loop over the (possibly dynamic) length of an
		      input sequence.
		    * In the returned :class:`ScriptModule`, operations that have different
		      behaviors in ``training`` and ``eval`` modes will always behave as if
		      it is in the mode it was in during tracing, no matter which mode the
		      `ScriptModule` is in.
		
		    In cases like these, tracing would not be appropriate and
		    :func:`scripting <torch.jit.script>` is a better choice. If you trace
		    such models, you may silently get incorrect results on subsequent
		    invocations of the model. The tracer will try to emit warnings when
		    doing something that may cause an incorrect trace to be produced.
		
		Args:
		    func (callable or torch.nn.Module):  A Python function or `torch.nn.Module`
		        that will be run with `example_inputs`. `func` arguments and return
		        values  must be tensors or (possibly nested) tuples that contain
		        tensors. When a module is passed `torch.jit.trace`, only the
		        ``forward`` method is run and traced (see :func:`torch.jit.trace
		        <torch.jit.trace_module>` for details).
		    example_inputs (tuple or torch.Tensor):  A tuple of example inputs that
		        will be passed to the function while tracing. The resulting trace
		        can be run with inputs of different types and shapes assuming the
		        traced operations support those types and shapes. `example_inputs`
		        may also be a single Tensor in which case it is automatically
		        wrapped in a tuple.
		
		Keyword arguments:
		    check_trace (``bool``, optional): Check if the same inputs run through
		        traced code produce the same outputs. Default: ``True``. You might want
		        to disable this if, for example, your network contains non-
		        deterministic ops or if you are sure that the network is correct despite
		        a checker failure.
		
		    check_inputs (list of tuples, optional): A list of tuples of input
		        arguments that should be used to check the trace against what is
		        expected. Each tuple is equivalent to a set of input arguments that
		        would be specified in ``example_inputs``. For best results, pass in
		        a set of checking inputs representative of the space of shapes and
		        types of inputs you expect the network to see.  If not specified,
		        the original ``example_inputs`` are used for checking
		    check_tolerance (float, optional): Floating-point comparison tolerance
		        to use in the checker procedure.  This can be used to relax the
		        checker strictness in the event that results diverge numerically
		        for a known reason, such as operator fusion.
		    strict (``bool``, optional): run the tracer in a strict mode or not
		        (default: ``True``). Only turn this off when you want the tracer to
		        record your mutable container types (currently ``list``/``dict``)
		        and you are sure that the container you are using in your
		        problem is a ``constant`` structure and does not get used as
		        control flow (if, for) conditions.
		
		Returns:
		    If `func` is `nn.Module` or ``forward`` of `nn.Module`, `trace` returns
		    a :class:`ScriptModule` object with a single ``forward`` method
		    containing the traced code.  The returned `ScriptModule` will
		    have the same set of sub-modules and parameters as the original
		    ``nn.Module``.  If ``func`` is a standalone function, ``trace``
		    returns `ScriptFunction`.
		
		Example (tracing a function):
		
		.. testcode::
		
		    import torch
		
		    def foo(x, y):
		        return 2 * x + y
		
		    # Run `foo` with the provided inputs and record the tensor operations
		    traced_foo = torch.jit.trace(foo, (torch.rand(3), torch.rand(3)))
		
		    # `traced_foo` can now be run with the TorchScript interpreter or saved
		    # and loaded in a Python-free environment
		
		Example (tracing an existing module)::
		
		    import torch
		    import torch.nn as nn
		
		    class Net(nn.Module):
		        def __init__(self):
		            super(Net, self).__init__()
		            self.conv = nn.Conv2d(1, 1, 3)
		
		        def forward(self, x):
		            return self.conv(x)
		
		    n = Net()
		    example_weight = torch.rand(1, 1, 3, 3)
		    example_forward_input = torch.rand(1, 1, 3, 3)
		
		    # Trace a specific method and construct `ScriptModule` with
		    # a single `forward` method
		    module = torch.jit.trace(n.forward, example_forward_input)
		
		    # Trace a module (implicitly traces `forward`) and construct a
		    # `ScriptModule` with a single `forward` method
		    module = torch.jit.trace(n, example_forward_input)
	**/
	static public function trace(func:Dynamic, example_inputs:Dynamic, ?optimize:Dynamic, ?check_trace:Dynamic, ?check_inputs:Dynamic, ?check_tolerance:Dynamic, ?strict:Dynamic, ?_force_outplace:Dynamic, ?_module_class:Dynamic, ?_compilation_unit:Dynamic):Dynamic;
	/**
		Trace a module and return an executable :class:`ScriptModule` that will be optimized
		using just-in-time compilation. When a module is passed to :func:`torch.jit.trace <torch.jit.trace>`, only
		the ``forward`` method is run and traced. With ``trace_module``, you can specify a dictionary of
		method names to example inputs to trace (see the ``inputs``) argument below.
		
		See :func:`torch.jit.trace <torch.jit.trace>` for more information on tracing.
		
		Args:
		    mod (torch.nn.Module):  A ``torch.nn.Module`` containing methods whose names are
		                            specified in ``inputs``. The given methods will be compiled
		                            as a part of a single `ScriptModule`.
		    inputs (dict):  A dict containing sample inputs indexed by method names in ``mod``.
		                            The inputs will be passed to methods whose names correspond to inputs'
		                            keys while tracing.
		                            ``{ 'forward' : example_forward_input, 'method2': example_method2_input}``
		Keyword arguments:
		    check_trace (``bool``, optional): Check if the same inputs run through
		                                  traced code produce the same outputs. Default: ``True``. You might want
		                                  to disable this if, for example, your network contains non-
		                                  deterministic ops or if you are sure that the network is correct despite
		                                  a checker failure.
		
		    check_inputs (list of dicts, optional): A list of dicts of input arguments that should be used
		                                             to check the trace against what is expected. Each tuple
		                                             is equivalent to a set of input arguments that would
		                                             be specified in ``inputs``. For best results, pass in a
		                                             set of checking inputs representative of the space of
		                                             shapes and types of inputs you expect the network to see.
		                                             If not specified, the original ``inputs`` are used for checking
		    check_tolerance (float, optional): Floating-point comparison tolerance to use in the checker procedure.
		                                       This can be used to relax the checker strictness in the event that
		                                       results diverge numerically for a known reason, such as operator fusion.
		
		Returns:
		    A :class:`ScriptModule` object with a single ``forward`` method containing the traced code.
		    When ``func`` is a ``torch.nn.Module``, the returned :class:`ScriptModule` will have the same set of
		    sub-modules and parameters as ``func``.
		
		Example (tracing a module with multiple methods)::
		
		    import torch
		    import torch.nn as nn
		
		    class Net(nn.Module):
		        def __init__(self):
		            super(Net, self).__init__()
		            self.conv = nn.Conv2d(1, 1, 3)
		
		        def forward(self, x):
		            return self.conv(x)
		
		        def weighted_kernel_sum(self, weight):
		            return weight * self.conv.weight
		
		
		    n = Net()
		    example_weight = torch.rand(1, 1, 3, 3)
		    example_forward_input = torch.rand(1, 1, 3, 3)
		
		    # Trace a specific method and construct `ScriptModule` with
		    # a single `forward` method
		    module = torch.jit.trace(n.forward, example_forward_input)
		
		    # Trace a module (implicitly traces `forward`) and construct a
		    # `ScriptModule` with a single `forward` method
		    module = torch.jit.trace(n, example_forward_input)
		
		    # Trace specific methods on a module (specified in `inputs`), constructs
		    # a `ScriptModule` with `forward` and `weighted_kernel_sum` methods
		    inputs = {'forward' : example_forward_input, 'weighted_kernel_sum' : example_weight}
		    module = torch.jit.trace_module(n, inputs)
	**/
	static public function trace_module(mod:Dynamic, inputs:Dynamic, ?optimize:Dynamic, ?check_trace:Dynamic, ?check_inputs:Dynamic, ?check_tolerance:Dynamic, ?strict:Dynamic, ?_force_outplace:Dynamic, ?_module_class:Dynamic, ?_compilation_unit:Dynamic):Dynamic;
	/**
		This decorator indicates to the compiler that a function or method should
		be ignored and replaced with the raising of an exception. This allows you
		to leave code in your model that is not yet TorchScript compatible and still
		export your model.
		
		    Example (using ``@torch.jit.unused`` on a method)::
		
		        import torch
		        import torch.nn as nn
		
		        class MyModule(nn.Module):
		            def __init__(self, use_memory_efficient):
		                super(MyModule, self).__init__()
		                self.use_memory_efficient = use_memory_efficient
		
		            @torch.jit.unused
		            def memory_efficient(self, x):
		                import pdb
		                pdb.set_trace()
		                return x + 10
		
		            def forward(self, x):
		                # Use not-yet-scriptable memory efficient mode
		                if self.use_memory_efficient:
		                    return self.memory_efficient(x)
		                else:
		                    return x + 10
		
		        m = torch.jit.script(MyModule(use_memory_efficient=False))
		        m.save("m.pt")
		
		        m = torch.jit.script(MyModule(use_memory_efficient=True))
		        # exception raised
		        m(torch.rand(100))
	**/
	static public function unused(fn:Dynamic):Dynamic;
	/**
		Forces completion of a `torch.jit.Future[T]` asynchronous task, returning the
		result of the task. See :func:`~fork` for docs and examples.
		Args:
		    func (torch.jit.Future[T]): an asynchronous task reference, created through `torch.jit.fork`
		Returns:
		    `T`: the return value of the the completed task
	**/
	static public function wait(future:Dynamic):Dynamic;
}