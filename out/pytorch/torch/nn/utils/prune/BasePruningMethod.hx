/* This file is generated, do not edit! */
package torch.nn.utils.prune;
@:pythonImport("torch.nn.utils.prune", "BasePruningMethod") extern class BasePruningMethod {
	static public var __abstractmethods__ : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Multiplies the mask (stored in ``module[name + '_mask']``)
		into the original tensor (stored in ``module[name + '_orig']``)
		and stores the result into ``module[name]`` by using
		:meth:`apply_mask`.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    inputs: not used.
	**/
	public function __call__(module:Dynamic, inputs:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Adds the forward pre-hook that enables pruning on the fly and
		the reparametrization of a tensor in terms of the original tensor
		and the pruning mask.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		        will act.
		    args: arguments passed on to a subclass of
		        :class:`BasePruningMethod`
		    importance_scores (torch.Tensor): tensor of importance scores (of
		        same shape as module parameter) used to compute mask for pruning.
		        The values in this tensor indicate the importance of the
		        corresponding elements in the parameter being pruned.
		        If unspecified or None, the parameter will be used in its place.
		    kwargs: keyword arguments passed on to a subclass of a
		        :class:`BasePruningMethod`
	**/
	static public function apply(module:Dynamic, name:Dynamic, ?args:python.VarArgs<Dynamic>, ?importance_scores:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Simply handles the multiplication between the parameter being
		pruned and the generated mask.
		Fetches the mask and the original tensor from the module
		and returns the pruned version of the tensor.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		
		Returns:
		    pruned_tensor (torch.Tensor): pruned version of the input tensor
	**/
	public function apply_mask(module:Dynamic):Dynamic;
	/**
		Computes and returns a mask for the input tensor ``t``.
		Starting from a base ``default_mask`` (which should be a mask of ones
		if the tensor has not been pruned yet), generate a random mask to
		apply on top of the ``default_mask`` according to the specific pruning
		method recipe.
		
		Args:
		    t (torch.Tensor): tensor representing the importance scores of the
		    parameter to prune.
		    default_mask (torch.Tensor): Base mask from previous pruning
		    iterations, that need to be respected after the new mask is
		    applied. Same dims as ``t``.
		
		Returns:
		    mask (torch.Tensor): mask to apply to ``t``, of same dims as ``t``
	**/
	public function compute_mask(t:Dynamic, default_mask:Dynamic):Dynamic;
	/**
		Computes and returns a pruned version of input tensor ``t``
		according to the pruning rule specified in :meth:`compute_mask`.
		
		Args:
		    t (torch.Tensor): tensor to prune (of same dimensions as
		        ``default_mask``).
		    importance_scores (torch.Tensor): tensor of importance scores (of
		        same shape as ``t``) used to compute mask for pruning ``t``.
		        The values in this tensor indicate the importance of the
		        corresponding elements in the ``t`` that is being pruned.
		        If unspecified or None, the tensor ``t`` will be used in its place.
		    default_mask (torch.Tensor, optional): mask from previous pruning
		        iteration, if any. To be considered when determining what
		        portion of the tensor that pruning should act on. If None,
		        default to a mask of ones.
		
		Returns:
		    pruned version of tensor ``t``.
	**/
	public function prune(t:Dynamic, ?default_mask:Dynamic, ?importance_scores:Dynamic):Dynamic;
	/**
		Removes the pruning reparameterization from a module. The pruned
		parameter named ``name`` remains permanently pruned, and the parameter
		named ``name+'_orig'`` is removed from the parameter list. Similarly,
		the buffer named ``name+'_mask'`` is removed from the buffers.
		
		Note:
		    Pruning itself is NOT undone or reversed!
	**/
	public function remove(module:Dynamic):Dynamic;
}