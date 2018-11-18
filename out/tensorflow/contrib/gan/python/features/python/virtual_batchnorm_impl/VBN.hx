/* This file is generated, do not edit! */
package tensorflow.contrib.gan.python.features.python.virtual_batchnorm_impl;
@:pythonImport("tensorflow.contrib.gan.python.features.python.virtual_batchnorm_impl", "VBN") extern class VBN {
	/**
		Run virtual batch normalization on inputs.
		
		Args:
		  inputs: Tensor input.
		
		Returns:
		   A virtual batch normalized version of `inputs`.
		
		Raises:
		   ValueError: If `inputs` shape isn't compatible with the reference batch.
	**/
	public function __call__(inputs:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize virtual batch normalization object.
		
		We precompute the 'mean' and 'mean squared' of the reference batch, so that
		`__call__` is efficient. This means that the axis must be supplied when the
		object is created, not when it is called.
		
		We precompute 'square mean' instead of 'variance', because the square mean
		can be easily adjusted on a per-example basis.
		
		Args:
		  reference_batch: A minibatch tensors. This will form the reference data
		    from which the normalization statistics are calculated. See
		    https://arxiv.org/abs/1606.03498 for more details.
		  axis: Integer, the axis that should be normalized (typically the features
		    axis). For instance, after a `Convolution2D` layer with
		    `data_format="channels_first"`, set `axis=1` in `BatchNormalization`.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  center: If True, add offset of `beta` to normalized tensor. If False,
		    `beta` is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can
		    be disabled since the scaling can be done by the next layer.
		  beta_initializer: Initializer for the beta weight.
		  gamma_initializer: Initializer for the gamma weight.
		  beta_regularizer: Optional regularizer for the beta weight.
		  gamma_regularizer: Optional regularizer for the gamma weight.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  name: String, the name of the ops.
		  batch_axis: The axis of the batch dimension. This dimension is treated
		    differently in `virtual batch normalization` vs `batch normalization`.
		
		Raises:
		  ValueError: If `reference_batch` has unknown dimensions at graph
		    construction.
		  ValueError: If `batch_axis` is the same as `axis`.
	**/
	@:native("__init__")
	public function ___init__(reference_batch:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?batch_axis:Dynamic):Dynamic;
	/**
		Initialize virtual batch normalization object.
		
		We precompute the 'mean' and 'mean squared' of the reference batch, so that
		`__call__` is efficient. This means that the axis must be supplied when the
		object is created, not when it is called.
		
		We precompute 'square mean' instead of 'variance', because the square mean
		can be easily adjusted on a per-example basis.
		
		Args:
		  reference_batch: A minibatch tensors. This will form the reference data
		    from which the normalization statistics are calculated. See
		    https://arxiv.org/abs/1606.03498 for more details.
		  axis: Integer, the axis that should be normalized (typically the features
		    axis). For instance, after a `Convolution2D` layer with
		    `data_format="channels_first"`, set `axis=1` in `BatchNormalization`.
		  epsilon: Small float added to variance to avoid dividing by zero.
		  center: If True, add offset of `beta` to normalized tensor. If False,
		    `beta` is ignored.
		  scale: If True, multiply by `gamma`. If False, `gamma` is
		    not used. When the next layer is linear (also e.g. `nn.relu`), this can
		    be disabled since the scaling can be done by the next layer.
		  beta_initializer: Initializer for the beta weight.
		  gamma_initializer: Initializer for the gamma weight.
		  beta_regularizer: Optional regularizer for the beta weight.
		  gamma_regularizer: Optional regularizer for the gamma weight.
		  trainable: Boolean, if `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  name: String, the name of the ops.
		  batch_axis: The axis of the batch dimension. This dimension is treated
		    differently in `virtual batch normalization` vs `batch normalization`.
		
		Raises:
		  ValueError: If `reference_batch` has unknown dimensions at graph
		    construction.
		  ValueError: If `batch_axis` is the same as `axis`.
	**/
	public function new(reference_batch:Dynamic, ?axis:Dynamic, ?epsilon:Dynamic, ?center:Dynamic, ?scale:Dynamic, ?beta_initializer:Dynamic, ?gamma_initializer:Dynamic, ?beta_regularizer:Dynamic, ?gamma_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?batch_axis:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function _broadcast(v:Dynamic, ?broadcast_shape:Dynamic):Dynamic;
	/**
		Compute the statistics needed for virtual batch normalization.
	**/
	public function _virtual_statistics(inputs:Dynamic, reduction_axes:Dynamic):Dynamic;
	/**
		Return the reference batch, but batch normalized.
	**/
	public function reference_batch_normalization():Dynamic;
}