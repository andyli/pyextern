/* This file is generated, do not edit! */
package theano.tensor.inplace;
@:pythonImport("theano.tensor.inplace") extern class Inplace_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Replace a symbol definition with an elementwise version of the corresponding scalar Op
	**/
	static public function _scal_inplace(symbol:Dynamic):Dynamic;
	/**
		|`a`| (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function abs__inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		elementwise addition (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function add_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise a & b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function and__inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arccosine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arccos_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic arc cosine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arccosh_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arcsine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arcsin_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic arc sine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arcsinh_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arctangent of `a` / `b` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arctan2_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		arctangent of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arctan_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic arc tangent of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function arctanh_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		ceil of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function ceil_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		chi squared survival function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function chi2sf_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise conjugate (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function conj_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		cosine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function cos_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic cosine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function cosh_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		convert degree `a` to radian(inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function deg2rad_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		a == b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function eq_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		error function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function erf_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		complementary error function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function erfc_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		scaled complementary error function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function erfcx_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		2^`a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function exp2_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		e^`a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function exp_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		e^`a` - 1 (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function expm1_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill `a` with `b`
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function fill_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		floor of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function floor_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		gamma function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function gamma_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		log gamma function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function gammaln_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a >= b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function ge_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a > b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function gt_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind of order 0.
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function i0_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind of order 1.
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function i1_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise division (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function int_div_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		1.0/a (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function inv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise ~a (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function invert_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modified Bessel function of the first kind of order v (real).
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function iv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bessel function of the first kind of order 0.
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function j0_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bessel function of the first kind of order 1.
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function j1_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bessel function of the first kind of order v (real).
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function jv_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a <= b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function le_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		base 10 logarithm of a (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function log10_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		log(1+a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function log1p_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		base 2 logarithm of a (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function log2_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		base e logarithm of a (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function log_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a < b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function lt_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise addition (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function maximum_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise addition (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function minimum_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise modulo (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function mod_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise multiplication (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function mul_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		-a (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function neg_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		a != b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function neq_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise a | b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function or__inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise power (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function pow_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function pprint(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		derivative of log gamma function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function psi_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		convert radian `a` to degree(inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function rad2deg_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		round_half_away_from_zero_inplace(a) (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function round_half_away_from_zero_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		round_half_to_even_inplace(a) (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function round_half_to_even_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill `a` with `b`
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function second_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		sign of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function sgn_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		sine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function sin_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic sine of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function sinh_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		square of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function sqr_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		square root of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function sqrt_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise subtraction (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function sub_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		tangent of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function tan_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		hyperbolic tangent of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function tanh_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Perform a transpose on a tensor without copying the underlying storage
	**/
	static public function transpose_inplace(x:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		second derivative of the log gamma function
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function tri_gamma_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		elementwise division (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function true_div_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		trunc of `a` (inplace on `a`)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function trunc_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		bitwise a ^ b (inplace on a)
		
		Generalizes a scalar op to tensors.
		
		All the inputs must have the same number of dimensions. When the
		Op is performed, for each dimension, each input's size for that
		dimension must be the same. As a special case, it can also be 1
		but only if the input's broadcastable flag is True for that
		dimension. In that case, the tensor is (virtually) replicated
		along that dimension to match the size of the others.
		
		The dtypes of the outputs mirror those of the scalar Op that is
		being generalized to tensors. In particular, if the calculations
		for an output are done inplace on an input, the output type must
		be the same as the corresponding input type (see the doc of
		scalar.ScalarOp to get help about controlling the output type)
		
		Parameters
		----------
		scalar_op
		    An instance of a subclass of scalar.ScalarOp which works uniquely
		    on scalars.
		inplace_pattern
		    A dictionary that maps the index of an output to the
		    index of an input so the output is calculated inplace using
		    the input's storage. (Just like destroymap, but without the lists.)
		nfunc_spec
		    Either None or a tuple of three elements,
		    (nfunc_name, nin, nout) such that getattr(numpy, nfunc_name)
		    implements this operation, takes nin inputs and nout outputs.
		    Note that nin cannot always be inferred from the scalar op's
		    own nin field because that value is sometimes 0 (meaning a
		    variable number of inputs), whereas the numpy function may
		    not have varargs.
		
		Note
		----
		| Elemwise(add) represents + on tensors (x + y)
		| Elemwise(add, {0 : 0}) represents the += operation (x += y)
		| Elemwise(add, {0 : 1}) represents += on the second argument (y += x)
		| Elemwise(mul)(rand(10, 5), rand(1, 5)) the second input is completed along the first dimension to match the first input
		| Elemwise(true_div)(rand(10, 5), rand(10, 1)) same but along the second dimension
		| Elemwise(int_div)(rand(1, 5), rand(10, 1)) the output has size (10, 5)
		| Elemwise(log)(rand(3, 4, 5))
	**/
	static public function xor_inplace(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}