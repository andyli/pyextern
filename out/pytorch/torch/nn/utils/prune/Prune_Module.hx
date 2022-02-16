/* This file is generated, do not edit! */
package torch.nn.utils.prune;
@:pythonImport("torch.nn.utils.prune") extern class Prune_Module {
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Compute the L_n-norm across all entries in tensor `t` along all dimension
		except for the one identified by dim.
		Example: if `t` is of shape, say, 3x2x4 and dim=2 (the last dim),
		then norm will have Size [4], and each entry will represent the
		`L_n`-norm computed using the 3x2=6 entries for each of the 4 channels.
		
		Args:
		    t (torch.Tensor): tensor representing the parameter to prune
		    n (int, float, inf, -inf, 'fro', 'nuc'): See documentation of valid
		        entries for argument p in torch.norm
		    dim (int): dim identifying the channels to prune
		
		Returns:
		    norm (torch.Tensor): L_n norm computed across all dimensions except
		        for `dim`. By construction, `norm.shape = t.shape[-1]`.
	**/
	static public function _compute_norm(t:Dynamic, n:Dynamic, dim:Dynamic):Dynamic;
	/**
		Since amount can be expressed either in absolute value or as a
		percentage of the number of units/channels in a tensor, this utility
		function converts the percentage to absolute value to standardize
		the handling of pruning.
		
		Args:
		    amount (int or float): quantity of parameters to prune.
		        If float, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If int, it represents the
		        absolute number of parameters to prune.
		    tensor_size (int): absolute number of parameters in the tensor
		        to prune.
		
		Returns:
		    int: the number of units to prune in the tensor
	**/
	static public function _compute_nparams_toprune(amount:Dynamic, tensor_size:Dynamic):Dynamic;
	/**
		Validation helper to check that the amount of parameters to prune
		is meaningful wrt to the size of the data (`tensor_size`).
		
		Args:
		    amount (int or float): quantity of parameters to prune.
		        If float, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If int, it represents the
		        absolute number of parameters to prune.
		    tensor_size (int): absolute number of parameters in the tensor
		        to prune.
	**/
	static public function _validate_pruning_amount(amount:Dynamic, tensor_size:Dynamic):Dynamic;
	/**
		Validation helper to check the range of amount at init.
		
		Args:
		    amount (int or float): quantity of parameters to prune.
		        If float, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If int, it represents the
		        absolute number of parameters to prune.
		
		Raises:
		    ValueError: if amount is a float not in [0, 1], or if it's a negative
		        integer.
		    TypeError: if amount is neither a float nor an integer.
		
		Note:
		    This does not take into account the number of parameters in the
		    tensor to be pruned, which is known only at prune.
	**/
	static public function _validate_pruning_amount_init(amount:Dynamic):Dynamic;
	/**
		Args:
		    t (torch.Tensor): tensor representing the parameter to prune
		    dim (int): index of the dim along which we define channels to prune
	**/
	static public function _validate_pruning_dim(t:Dynamic, dim:Dynamic):Dynamic;
	/**
		Validation helper to check that the tensor to be pruned is multi-
		dimensional, such that the concept of "channels" is well-defined.
		
		Args:
		    t (torch.Tensor): tensor representing the parameter to prune
		
		Raises:
		    ValueError: if the tensor `t` is not at least 2D.
	**/
	static public function _validate_structured_pruning(t:Dynamic):Dynamic;
	/**
		A decorator indicating abstract methods.
		
		Requires that the metaclass is ABCMeta or derived from it.  A
		class that has a metaclass derived from ABCMeta cannot be
		instantiated unless all of its abstract methods are overridden.
		The abstract methods can be called using any of the normal
		'super' call mechanisms.  abstractmethod() may be used to declare
		abstract methods for properties and descriptors.
		
		Usage:
		
		    class C(metaclass=ABCMeta):
		        @abstractmethod
		        def my_abstract_method(self, ...):
		            ...
	**/
	static public function abstractmethod(funcobj:Dynamic):Dynamic;
	/**
		Prunes tensor corresponding to parameter called ``name`` in ``module``
		by applying the pre-computed mask in ``mask``.
		Modifies module in place (and also return the modified module)
		by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		        will act.
		    mask (Tensor): binary mask to be applied to the parameter.
		
		Returns:
		    module (nn.Module): modified (i.e. pruned) version of the input module
		
		Examples:
		    >>> m = prune.custom_from_mask(
		            nn.Linear(5, 3), name='bias', mask=torch.tensor([0, 1, 0])
		        )
		    >>> print(m.bias_mask)
		    tensor([0., 1., 0.])
	**/
	static public function custom_from_mask(module:Dynamic, name:Dynamic, mask:Dynamic):Dynamic;
	/**
		Globally prunes tensors corresponding to all parameters in ``parameters``
		by applying the specified ``pruning_method``.
		Modifies modules in place by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Args:
		    parameters (Iterable of (module, name) tuples): parameters of
		        the model to prune in a global fashion, i.e. by aggregating all
		        weights prior to deciding which ones to prune. module must be of
		        type :class:`nn.Module`, and name must be a string.
		    pruning_method (function): a valid pruning function from this module,
		        or a custom one implemented by the user that satisfies the
		        implementation guidelines and has ``PRUNING_TYPE='unstructured'``.
		    importance_scores (dict): a dictionary mapping (module, name) tuples to
		        the corresponding parameter's importance scores tensor. The tensor
		        should be the same shape as the parameter, and is used for computing
		        mask for pruning.
		        If unspecified or None, the parameter will be used in place of its
		        importance scores.
		    kwargs: other keyword arguments such as:
		        amount (int or float): quantity of parameters to prune across the
		        specified parameters.
		        If ``float``, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If ``int``, it represents the
		        absolute number of parameters to prune.
		
		Raises:
		    TypeError: if ``PRUNING_TYPE != 'unstructured'``
		
		Note:
		    Since global structured pruning doesn't make much sense unless the
		    norm is normalized by the size of the parameter, we now limit the
		    scope of global pruning to unstructured methods.
		
		Examples:
		    >>> net = nn.Sequential(OrderedDict([
		            ('first', nn.Linear(10, 4)),
		            ('second', nn.Linear(4, 1)),
		        ]))
		    >>> parameters_to_prune = (
		            (net.first, 'weight'),
		            (net.second, 'weight'),
		        )
		    >>> prune.global_unstructured(
		            parameters_to_prune,
		            pruning_method=prune.L1Unstructured,
		            amount=10,
		        )
		    >>> print(sum(torch.nn.utils.parameters_to_vector(net.buffers()) == 0))
		    tensor(10, dtype=torch.uint8)
	**/
	static public function global_unstructured(parameters:Dynamic, pruning_method:Dynamic, ?importance_scores:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Applies pruning reparametrization to the tensor corresponding to the
		parameter called ``name`` in ``module`` without actually pruning any
		units. Modifies module in place (and also return the modified module)
		by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Note:
		    The mask is a tensor of ones.
		
		Args:
		    module (nn.Module): module containing the tensor to prune.
		    name (str): parameter name within ``module`` on which pruning
		            will act.
		
		Returns:
		    module (nn.Module): modified (i.e. pruned) version of the input module
		
		Examples:
		    >>> m = prune.identity(nn.Linear(2, 3), 'bias')
		    >>> print(m.bias_mask)
		    tensor([1., 1., 1.])
	**/
	static public function identity(module:Dynamic, name:Dynamic):Dynamic;
	/**
		Check whether ``module`` is pruned by looking for
		``forward_pre_hooks`` in its modules that inherit from the
		:class:`BasePruningMethod`.
		
		Args:
		    module (nn.Module): object that is either pruned or unpruned
		
		Returns:
		    binary answer to whether ``module`` is pruned.
		
		Examples:
		    >>> m = nn.Linear(5, 7)
		    >>> print(prune.is_pruned(m))
		    False
		    >>> prune.random_unstructured(m, name='weight', amount=0.2)
		    >>> print(prune.is_pruned(m))
		    True
	**/
	static public function is_pruned(module:Dynamic):Dynamic;
	/**
		Prunes tensor corresponding to parameter called ``name`` in ``module``
		by removing the specified `amount` of (currently unpruned) units with the
		lowest L1-norm.
		Modifies module in place (and also return the modified module)
		by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		            will act.
		    amount (int or float): quantity of parameters to prune.
		        If ``float``, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If ``int``, it represents the
		        absolute number of parameters to prune.
		    importance_scores (torch.Tensor): tensor of importance scores (of same
		        shape as module parameter) used to compute mask for pruning.
		        The values in this tensor indicate the importance of the corresponding
		        elements in the parameter being pruned.
		        If unspecified or None, the module parameter will be used in its place.
		
		Returns:
		    module (nn.Module): modified (i.e. pruned) version of the input module
		
		Examples:
		    >>> m = prune.l1_unstructured(nn.Linear(2, 3), 'weight', amount=0.2)
		    >>> m.state_dict().keys()
		    odict_keys(['bias', 'weight_orig', 'weight_mask'])
	**/
	static public function l1_unstructured(module:Dynamic, name:Dynamic, amount:Dynamic, ?importance_scores:Dynamic):Dynamic;
	/**
		Prunes tensor corresponding to parameter called ``name`` in ``module``
		by removing the specified ``amount`` of (currently unpruned) channels
		along the specified ``dim`` with the lowest L\ ``n``-norm.
		Modifies module in place (and also return the modified module)
		by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		            will act.
		    amount (int or float): quantity of parameters to prune.
		        If ``float``, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If ``int``, it represents the
		        absolute number of parameters to prune.
		    n (int, float, inf, -inf, 'fro', 'nuc'): See documentation of valid
		        entries for argument ``p`` in :func:`torch.norm`.
		    dim (int): index of the dim along which we define channels to prune.
		    importance_scores (torch.Tensor): tensor of importance scores (of same
		        shape as module parameter) used to compute mask for pruning.
		        The values in this tensor indicate the importance of the corresponding
		        elements in the parameter being pruned.
		        If unspecified or None, the module parameter will be used in its place.
		
		Returns:
		    module (nn.Module): modified (i.e. pruned) version of the input module
		
		Examples:
		    >>> m = prune.ln_structured(
		           nn.Conv2d(5, 3, 2), 'weight', amount=0.3, dim=1, n=float('-inf')
		        )
	**/
	static public function ln_structured(module:Dynamic, name:Dynamic, amount:Dynamic, n:Dynamic, dim:Dynamic, ?importance_scores:Dynamic):Dynamic;
	/**
		Prunes tensor corresponding to parameter called ``name`` in ``module``
		by removing the specified ``amount`` of (currently unpruned) channels
		along the specified ``dim`` selected at random.
		Modifies module in place (and also return the modified module)
		by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		            will act.
		    amount (int or float): quantity of parameters to prune.
		        If ``float``, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If ``int``, it represents the
		        absolute number of parameters to prune.
		    dim (int): index of the dim along which we define channels to prune.
		
		Returns:
		    module (nn.Module): modified (i.e. pruned) version of the input module
		
		Examples:
		    >>> m = prune.random_structured(
		            nn.Linear(5, 3), 'weight', amount=3, dim=1
		        )
		    >>> columns_pruned = int(sum(torch.sum(m.weight, dim=0) == 0))
		    >>> print(columns_pruned)
		    3
	**/
	static public function random_structured(module:Dynamic, name:Dynamic, amount:Dynamic, dim:Dynamic):Dynamic;
	/**
		Prunes tensor corresponding to parameter called ``name`` in ``module``
		by removing the specified ``amount`` of (currently unpruned) units
		selected at random.
		Modifies module in place (and also return the modified module) by:
		
		1) adding a named buffer called ``name+'_mask'`` corresponding to the
		   binary mask applied to the parameter ``name`` by the pruning method.
		2) replacing the parameter ``name`` by its pruned version, while the
		   original (unpruned) parameter is stored in a new parameter named
		   ``name+'_orig'``.
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		            will act.
		    amount (int or float): quantity of parameters to prune.
		        If ``float``, should be between 0.0 and 1.0 and represent the
		        fraction of parameters to prune. If ``int``, it represents the
		        absolute number of parameters to prune.
		
		Returns:
		    module (nn.Module): modified (i.e. pruned) version of the input module
		
		Examples:
		    >>> m = prune.random_unstructured(nn.Linear(2, 3), 'weight', amount=1)
		    >>> torch.sum(m.weight_mask == 0)
		    tensor(1)
	**/
	static public function random_unstructured(module:Dynamic, name:Dynamic, amount:Dynamic):Dynamic;
	/**
		Removes the pruning reparameterization from a module and the
		pruning method from the forward hook. The pruned
		parameter named ``name`` remains permanently pruned, and the parameter
		named ``name+'_orig'`` is removed from the parameter list. Similarly,
		the buffer named ``name+'_mask'`` is removed from the buffers.
		
		Note:
		    Pruning itself is NOT undone or reversed!
		
		Args:
		    module (nn.Module): module containing the tensor to prune
		    name (str): parameter name within ``module`` on which pruning
		        will act.
		
		Examples:
		    >>> m = random_unstructured(nn.Linear(5, 7), name='weight', amount=0.2)
		    >>> m = remove(m, name='weight')
	**/
	static public function remove(module:Dynamic, name:Dynamic):Dynamic;
}