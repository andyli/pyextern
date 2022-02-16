/* This file is generated, do not edit! */
package torch.cuda.amp.autocast_mode;
@:pythonImport("torch.cuda.amp.autocast_mode") extern class Autocast_mode_Module {
	static public var HAS_NUMPY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _cast(value:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Helper decorator for backward methods of custom autograd functions (subclasses of
		:class:`torch.autograd.Function`).
		Ensures that ``backward`` executes with the same autocast state as ``forward``.
		See the :ref:`example page<amp-custom-examples>` for more detail.
	**/
	static public function custom_bwd(bwd:Dynamic):Dynamic;
	/**
		Helper decorator for ``forward`` methods of custom autograd functions (subclasses of
		:class:`torch.autograd.Function`).  See the :ref:`example page<amp-custom-examples>` for more detail.
		
		Args:
		    cast_inputs (:class:`torch.dtype` or None, optional, default=None):  If not ``None``,
		        when ``forward`` runs in an autocast-enabled region, casts incoming
		        floating-point CUDA Tensors to the target dtype (non-floating-point Tensors are not affected),
		        then executes ``forward`` with autocast disabled.
		        If ``None``, ``forward``'s internal ops execute with the current autocast state.
		
		.. note::
		    If the decorated ``forward`` is called outside an autocast-enabled region,
		    :func:`custom_fwd<custom_fwd>` is a no-op and ``cast_inputs`` has no effect.
	**/
	static public function custom_fwd(?fwd:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var string_classes : Dynamic;
}