/* This file is generated, do not edit! */
package torch.distributions;
@:pythonImport("torch.distributions") extern class Distributions_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function biject_to(constraint:Dynamic):Dynamic;
	static public function identity_transform(x:Dynamic):Dynamic;
	/**
		Compute Kullback-Leibler divergence :math:`KL(p \| q)` between two distributions.
		
		.. math::
		
		    KL(p \| q) = \int p(x) \log\frac {p(x)} {q(x)} \,dx
		
		Args:
		    p (Distribution): A :class:`~torch.distributions.Distribution` object.
		    q (Distribution): A :class:`~torch.distributions.Distribution` object.
		
		Returns:
		    Tensor: A batch of KL divergences of shape `batch_shape`.
		
		Raises:
		    NotImplementedError: If the distribution types have not been registered via
		        :meth:`register_kl`.
	**/
	static public function kl_divergence(p:Dynamic, q:Dynamic):Dynamic;
	/**
		Decorator to register a pairwise function with :meth:`kl_divergence`.
		Usage::
		
		    @register_kl(Normal, Normal)
		    def kl_normal_normal(p, q):
		        # insert implementation here
		
		Lookup returns the most specific (type,type) match ordered by subclass. If
		the match is ambiguous, a `RuntimeWarning` is raised. For example to
		resolve the ambiguous situation::
		
		    @register_kl(BaseP, DerivedQ)
		    def kl_version1(p, q): ...
		    @register_kl(DerivedP, BaseQ)
		    def kl_version2(p, q): ...
		
		you should register a third most-specific implementation, e.g.::
		
		    register_kl(DerivedP, DerivedQ)(kl_version1)  # Break the tie.
		
		Args:
		    type_p (type): A subclass of :class:`~torch.distributions.Distribution`.
		    type_q (type): A subclass of :class:`~torch.distributions.Distribution`.
	**/
	static public function register_kl(type_p:Dynamic, type_q:Dynamic):Dynamic;
	static public function transform_to(constraint:Dynamic):Dynamic;
}