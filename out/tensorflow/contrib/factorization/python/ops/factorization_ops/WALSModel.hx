/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.factorization_ops;
@:pythonImport("tensorflow.contrib.factorization.python.ops.factorization_ops", "WALSModel") extern class WALSModel {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Creates model for WALS matrix factorization.
		
		Args:
		  input_rows: total number of rows for input matrix.
		  input_cols: total number of cols for input matrix.
		  n_components: number of dimensions to use for the factors.
		  unobserved_weight: weight given to unobserved entries of matrix.
		  regularization: weight of L2 regularization term. If None, no
		    regularization is done.
		  row_init: initializer for row factor. Can be a tensor or numpy constant.
		    If set to "random", the value is initialized randomly.
		  col_init: initializer for column factor. See row_init for details.
		  num_row_shards: number of shards to use for row factors.
		  num_col_shards: number of shards to use for column factors.
		  row_weights: Must be in one of the following three formats: None, a list
		    of lists of non-negative real numbers (or equivalent iterables) or a
		    single non-negative real number.
		    - When set to None, w_ij = unobserved_weight, which simplifies to ALS.
		    Note that col_weights must also be set to "None" in this case.
		    - If it is a list of lists of non-negative real numbers, it needs to be
		    in the form of [[w_0, w_1, ...], [w_k, ... ], [...]], with the number of
		    inner lists matching the number of row factor shards and the elements in
		    each inner list are the weights for the rows of the corresponding row
		    factor shard. In this case,  w_ij = unonbserved_weight +
		                                        row_weights[i] * col_weights[j].
		    - If this is a single non-negative real number, this value is used for
		    all row weights and w_ij = unobserved_weight + row_weights *
		                               col_weights[j].
		    Note that it is allowed to have row_weights as a list while col_weights
		    a single number or vice versa.
		  col_weights: See row_weights.
		  use_factors_weights_cache: When True, the factors and weights will be
		    cached on the workers before the updates start. Defaults to True.
		  use_gramian_cache: When True, the Gramians will be cached on the workers
		    before the updates start. Defaults to True.
	**/
	@:native("__init__")
	public function ___init__(input_rows:Dynamic, input_cols:Dynamic, n_components:Dynamic, ?unobserved_weight:Dynamic, ?regularization:Dynamic, ?row_init:Dynamic, ?col_init:Dynamic, ?num_row_shards:Dynamic, ?num_col_shards:Dynamic, ?row_weights:Dynamic, ?col_weights:Dynamic, ?use_factors_weights_cache:Dynamic, ?use_gramian_cache:Dynamic):Dynamic;
	/**
		Creates model for WALS matrix factorization.
		
		Args:
		  input_rows: total number of rows for input matrix.
		  input_cols: total number of cols for input matrix.
		  n_components: number of dimensions to use for the factors.
		  unobserved_weight: weight given to unobserved entries of matrix.
		  regularization: weight of L2 regularization term. If None, no
		    regularization is done.
		  row_init: initializer for row factor. Can be a tensor or numpy constant.
		    If set to "random", the value is initialized randomly.
		  col_init: initializer for column factor. See row_init for details.
		  num_row_shards: number of shards to use for row factors.
		  num_col_shards: number of shards to use for column factors.
		  row_weights: Must be in one of the following three formats: None, a list
		    of lists of non-negative real numbers (or equivalent iterables) or a
		    single non-negative real number.
		    - When set to None, w_ij = unobserved_weight, which simplifies to ALS.
		    Note that col_weights must also be set to "None" in this case.
		    - If it is a list of lists of non-negative real numbers, it needs to be
		    in the form of [[w_0, w_1, ...], [w_k, ... ], [...]], with the number of
		    inner lists matching the number of row factor shards and the elements in
		    each inner list are the weights for the rows of the corresponding row
		    factor shard. In this case,  w_ij = unonbserved_weight +
		                                        row_weights[i] * col_weights[j].
		    - If this is a single non-negative real number, this value is used for
		    all row weights and w_ij = unobserved_weight + row_weights *
		                               col_weights[j].
		    Note that it is allowed to have row_weights as a list while col_weights
		    a single number or vice versa.
		  col_weights: See row_weights.
		  use_factors_weights_cache: When True, the factors and weights will be
		    cached on the workers before the updates start. Defaults to True.
		  use_gramian_cache: When True, the Gramians will be cached on the workers
		    before the updates start. Defaults to True.
	**/
	public function new(input_rows:Dynamic, input_cols:Dynamic, n_components:Dynamic, ?unobserved_weight:Dynamic, ?regularization:Dynamic, ?row_init:Dynamic, ?col_init:Dynamic, ?num_row_shards:Dynamic, ?num_col_shards:Dynamic, ?row_weights:Dynamic, ?col_weights:Dynamic, ?use_factors_weights_cache:Dynamic, ?use_gramian_cache:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Helper function to create a worker cached copy of a Variable.
		
		This assigns the var (either a single Variable or a list of Variables) to
		local transient cache Variable(s). Note that if var is a list of Variables,
		the assignment is done sequentially to minimize the memory overheads.
		Also note that if pass_through is set to True, this does not create new
		Variables but simply return the input back.
		
		Args:
		  var: A Variable or a list of Variables to cache.
		  name: name of cached Variable.
		  pass_through: when set to True, this simply pass through the var back
		    through identity operator and does not actually creates a cache.
		
		Returns:
		  Tuple consisting of following three entries:
		  cache: the new transient Variable or list of transient Variables
		    corresponding one-to-one with var.
		  cache_init: op to initialize the Variable or the list of Variables.
		  cache_reset: op to reset the Variable or the list of Variables to some
		    default value.
	**/
	public function _cached_copy(_var:Dynamic, name:Dynamic, ?pass_through:Dynamic):Dynamic;
	/**
		Helper function to create row and column factors.
	**/
	static public function _create_factors(rows:Dynamic, cols:Dynamic, num_shards:Dynamic, init:Dynamic, name:Dynamic):Dynamic;
	/**
		Helper function to create the gramian variable.
		
		Args:
		  n_components: number of dimensions of the factors from which the gramian
		    will be calculated.
		  name: name for the new Variables.
		
		Returns:
		  A gramian Tensor with shape of [n_components, n_components].
	**/
	static public function _create_gramian(n_components:Dynamic, name:Dynamic):Dynamic;
	/**
		Creates local cache of factors, weights and gramian for rows and columns.
		
		Note that currently the caching strategy is as follows:
		When initiating a row (resp. column) update:
		  - The column (resp. row) gramian is computed.
		  - Optionally, if use_gramian_cache is True, the column (resp. row) Gramian
		    is cached, while the row (resp. column) gramian is reset.
		  - Optionally, if use_factors_weights_cache is True, the column (resp. row)
		    factors and weights are cached, while the row (resp. column) factors and
		    weights are reset.
	**/
	public function _create_transient_vars():Dynamic;
	/**
		Helper function to create sharded weight vector.
		
		Args:
		  wt_init: init value for the weight. If None, weights are not created. This
		    can be one of the None, a list of non-negative real numbers or a single
		    non-negative real number (or equivalent iterables).
		  num_wts: total size of all the weight shards
		  num_shards: number of shards for the weights
		  name: name for the new Variables.
		
		Returns:
		  A list of weight shard Tensors.
		
		Raises:
		  ValueError: If wt_init is not the right format.
	**/
	static public function _create_weights(wt_init:Dynamic, num_wts:Dynamic, num_shards:Dynamic, name:Dynamic):Dynamic;
	/**
		Create sharding function for scatter update.
	**/
	static public function _get_sharding_func(size:Dynamic, num_shards:Dynamic):Dynamic;
	/**
		Helper function to create ops to prepare/calculate gramian.
		
		Args:
		  factors: Variable or list of Variable representing (sharded) factors.
		    Used to compute the updated corresponding gramian value.
		  gramian: Variable storing the gramian calculated from the factors.
		
		Returns:
		  A op that updates the gramian with the calcuated value from the factors.
	**/
	public function _prepare_gramian(factors:Dynamic, gramian:Dynamic):Dynamic;
	/**
		Creates the graph for processing a sparse slice of input.
		
		Args:
		  update_row_factors: if True, update or project the row_factors, else
		    update or project the column factors.
		  sp_input: Please refer to comments for update_row_factors,
		    update_col_factors, project_row_factors, and project_col_factors for
		    restrictions.
		  transpose_input: If True, the input is logically transposed and then the
		    corresponding rows/columns of the transposed input are updated.
		  row_weights: If not None, this is the row/column weights to be used for
		    the update or projection. If None, use the corresponding weights from
		    the model. Note that the feature (column/row) weights will be
		    determined by the model. When not None, it can either be a scalar or
		    a rank-1 tensor with the same number of elements as the number of rows
		    of columns to be updated/projected.
		
		Returns:
		  A tuple consisting of the following three elements:
		  new_values: New values for the row/column factors.
		  update_op: An op that assigns the newly computed values to the row/column
		    factors.
		  loss: A tensor (scalar) that contains the normalized minibatch loss,
		    corresponding to sp_input.
	**/
	public function _process_input_helper(update_row_factors:Dynamic, ?sp_input:Dynamic, ?transpose_input:Dynamic, ?row_weights:Dynamic):Dynamic;
	/**
		Helper function to split dims values into num_shards.
	**/
	static public function _shard_sizes(dims:Dynamic, num_shards:Dynamic):Dynamic;
	/**
		Helper function to create a Variable.
	**/
	static public function _transient_var(name:Dynamic):Dynamic;
	/**
		Returns a list of tensors corresponding to column factor shards.
	**/
	public var col_factors : Dynamic;
	/**
		Op to form the gramian before starting col updates.
		
		Must be run before initialize_col_update_op and should only be run by one
		trainer (usually the chief) when doing distributed training.
	**/
	public var col_update_prep_gramian_op : Dynamic;
	/**
		Returns a list of tensors corresponding to col weight shards.
	**/
	public var col_weights : Dynamic;
	/**
		Op to initialize worker state before starting column updates.
	**/
	public var initialize_col_update_op : Dynamic;
	/**
		Returns an op for initializing tensorflow variables.
	**/
	public var initialize_op : Dynamic;
	/**
		Op to initialize worker state before starting row updates.
	**/
	public var initialize_row_update_op : Dynamic;
	/**
		Projects the column factors.
		
		This computes the column embedding v_j for an observed column a_j by solving
		one iteration of the update equations.
		
		Args:
		  sp_input: A SparseTensor representing a set of columns. Please note that
		    the row indices of this SparseTensor must match the model row feature
		    indexing while the column indices are ignored. The returned results will
		    be in the same ordering as the input columns.
		  transpose_input: If true, the input will be logically transposed and the
		    columns corresponding to the transposed input are projected.
		  projection_weights: The column weights to be used for the projection. If
		    None then 1.0 is used. This can be either a scaler or a rank-1 tensor
		    with the number of elements matching the number of columns to be
		    projected. Note that the row weights will be determined by the
		    underlying WALS model.
		
		Returns:
		  Projected column factors.
	**/
	public function project_col_factors(?sp_input:Dynamic, ?transpose_input:Dynamic, ?projection_weights:Dynamic):Dynamic;
	/**
		Projects the row factors.
		
		This computes the row embedding u_i for an observed row a_i by solving
		one iteration of the update equations.
		
		Args:
		  sp_input: A SparseTensor representing a set of rows. Please note that the
		    column indices of this SparseTensor must match the model column feature
		    indexing while the row indices are ignored. The returned results will be
		    in the same ordering as the input rows.
		  transpose_input: If true, the input will be logically transposed and the
		    rows corresponding to the transposed input are projected.
		  projection_weights: The row weights to be used for the projection. If None
		    then 1.0 is used. This can be either a scaler or a rank-1 tensor with
		    the number of elements matching the number of rows to be projected.
		    Note that the column weights will be determined by the underlying WALS
		    model.
		
		Returns:
		  Projected row factors.
	**/
	public function project_row_factors(?sp_input:Dynamic, ?transpose_input:Dynamic, ?projection_weights:Dynamic):Dynamic;
	/**
		Returns a list of tensors corresponding to row factor shards.
	**/
	public var row_factors : Dynamic;
	/**
		Op to form the gramian before starting row updates.
		
		Must be run before initialize_row_update_op and should only be run by one
		trainer (usually the chief) when doing distributed training.
	**/
	public var row_update_prep_gramian_op : Dynamic;
	/**
		Returns a list of tensors corresponding to row weight shards.
	**/
	public var row_weights : Dynamic;
	/**
		Helper function for doing sharded scatter update.
	**/
	static public function scatter_update(factor:Dynamic, indices:Dynamic, values:Dynamic, sharding_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Updates the column factors.
		
		Args:
		  sp_input: A SparseTensor representing a subset of columns of the full
		    input. Please refer to comments for update_row_factors for
		    restrictions.
		  transpose_input: If true, the input will be logically transposed and the
		    columns corresponding to the transposed input are updated.
		
		Returns:
		  A tuple consisting of the following two elements:
		  new_values: New values for the column factors.
		  update_op: An op that assigns the newly computed values to the column
		    factors.
		  loss: A tensor (scalar) that contains the normalized minibatch loss,
		    corresponding to sp_input.
		    If sp_input contains the columns {A_{:, j}, j \in J}, and the input
		    matrix A has m total columns, then loss is:
		    (\|\sqrt W_J \odot (A_J - U V_J^T)\|_F^2 + \lambda \|V_J\|_F^2) *
		    m / |J| + \lambda \|U\|_F^2.
	**/
	public function update_col_factors(?sp_input:Dynamic, ?transpose_input:Dynamic):Dynamic;
	/**
		Updates the row factors.
		
		Args:
		  sp_input: A SparseTensor representing a subset of rows of the full input
		    in any order. Please note that this SparseTensor must retain the
		    indexing as the original input.
		  transpose_input: If true, the input will be logically transposed and the
		    rows corresponding to the transposed input are updated.
		
		Returns:
		  A tuple consisting of the following elements:
		  new_values: New values for the row factors.
		  update_op: An op that assigns the newly computed values to the row
		    factors.
		  loss: A tensor (scalar) that contains the normalized minibatch loss,
		    corresponding to sp_input.
		    if sp_input contains the rows {A_{i, :}, i \in I}, and the input matrix
		    A has n total rows, then loss is:
		    (\|\sqrt W_I \odot (A_I - U_I V^T)\|_F^2 + \lambda \|U_I\|_F^2) *
		    n / |I| + \lambda \|V\|_F^2.
	**/
	public function update_row_factors(?sp_input:Dynamic, ?transpose_input:Dynamic):Dynamic;
	/**
		Op to initialize worker state once before starting any updates.
	**/
	public var worker_init : Dynamic;
}