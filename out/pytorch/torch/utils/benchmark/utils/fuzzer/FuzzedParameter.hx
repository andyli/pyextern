/* This file is generated, do not edit! */
package torch.utils.benchmark.utils.fuzzer;
@:pythonImport("torch.utils.benchmark.utils.fuzzer", "FuzzedParameter") extern class FuzzedParameter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Args:
		    name:
		        A string name with which to identify the parameter.
		        FuzzedTensors can reference this string in their
		        specifications.
		    minval:
		        The lower bound for the generated value. See the description
		        of `distribution` for type behavior.
		    maxval:
		        The upper bound for the generated value. Type behavior is
		        identical to `minval`.
		    distribution:
		        Specifies the distribution from which this parameter should
		        be drawn. There are three possibilities:
		            - "loguniform"
		                Samples between `minval` and `maxval` (inclusive) such
		                that the probabilities are uniform in log space. As a
		                concrete example, if minval=1 and maxval=100, a sample
		                is as likely to fall in [1, 10) as it is [10, 100].
		            - "uniform"
		                Samples are chosen with uniform probability between
		                `minval` and `maxval` (inclusive). If either `minval`
		                or `maxval` is a float then the distribution is the
		                continuous uniform distribution; otherwise samples
		                are constrained to the integers.
		            - dict:
		                If a dict is passed, the keys are taken to be choices
		                for the variables and the values are interpreted as
		                probabilities. (And must sum to one.)
		        If a dict is passed, `minval` and `maxval` must not be set.
		        Otherwise, they must be set.
		    strict:
		        If a parameter is strict, it will not be included in the
		        iterative resampling process which Fuzzer uses to find a
		        valid parameter configuration. This allows an author to
		        prevent skew from resampling for a given parameter (for
		        instance, a low size limit could inadvertently bias towards
		        Tensors with fewer dimensions) at the cost of more iterations
		        when generating parameters.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?distribution:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Args:
		    name:
		        A string name with which to identify the parameter.
		        FuzzedTensors can reference this string in their
		        specifications.
		    minval:
		        The lower bound for the generated value. See the description
		        of `distribution` for type behavior.
		    maxval:
		        The upper bound for the generated value. Type behavior is
		        identical to `minval`.
		    distribution:
		        Specifies the distribution from which this parameter should
		        be drawn. There are three possibilities:
		            - "loguniform"
		                Samples between `minval` and `maxval` (inclusive) such
		                that the probabilities are uniform in log space. As a
		                concrete example, if minval=1 and maxval=100, a sample
		                is as likely to fall in [1, 10) as it is [10, 100].
		            - "uniform"
		                Samples are chosen with uniform probability between
		                `minval` and `maxval` (inclusive). If either `minval`
		                or `maxval` is a float then the distribution is the
		                continuous uniform distribution; otherwise samples
		                are constrained to the integers.
		            - dict:
		                If a dict is passed, the keys are taken to be choices
		                for the variables and the values are interpreted as
		                probabilities. (And must sum to one.)
		        If a dict is passed, `minval` and `maxval` must not be set.
		        Otherwise, they must be set.
		    strict:
		        If a parameter is strict, it will not be included in the
		        iterative resampling process which Fuzzer uses to find a
		        valid parameter configuration. This allows an author to
		        prevent skew from resampling for a given parameter (for
		        instance, a low size limit could inadvertently bias towards
		        Tensors with fewer dimensions) at the cost of more iterations
		        when generating parameters.
	**/
	public function new(name:Dynamic, ?minval:Dynamic, ?maxval:Dynamic, ?distribution:Dynamic, ?strict:Dynamic):Void;
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
	public function _check_distribution(distribution:Dynamic):Dynamic;
	public function _custom_distribution(state:Dynamic):Dynamic;
	public function _loguniform(state:Dynamic):Dynamic;
	public function _uniform(state:Dynamic):Dynamic;
	public var name : Dynamic;
	public function sample(state:Dynamic):Dynamic;
}