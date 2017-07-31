/* This file is generated, do not edit! */
package tensorflow.contrib.bayesflow.python.ops.variational_inference_impl;
@:pythonImport("tensorflow.contrib.bayesflow.python.ops.variational_inference_impl") extern class Variational_inference_impl_Module {
	static public var VI_PRIORS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Internal implementation of ELBO. Users should use `elbo`.
		
		Args:
		  form: ELBOForms constant. Controls how the ELBO is computed.
		  log_likelihood: `Tensor` log p(x|Z).
		  log_joint: `Tensor` log p(x, Z).
		  variational_with_prior: `dict<StochasticTensor, Distribution>`, varational
		    distributions to prior distributions.
		  keep_batch_dim: bool. Whether to keep the batch dimension when reducing
		    the entropy/KL.
		
		Returns:
		  ELBO `Tensor` with same shape and dtype as `log_likelihood`/`log_joint`.
	**/
	static public function _elbo(form:Dynamic, log_likelihood:Dynamic, log_joint:Dynamic, variational_with_prior:Dynamic, keep_batch_dim:Dynamic):Dynamic;
	/**
		Find upstream StochasticTensors and match with registered priors.
	**/
	static public function _find_variational_and_priors(model:Dynamic, variational_with_prior:Dynamic, ?require_prior:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Evidence Lower BOund. `log p(x) >= ELBO`.
		
		Optimization objective for inference of hidden variables by variational
		inference.
		
		This function is meant to be used in conjunction with `StochasticTensor`.
		The user should build out the inference network, using `StochasticTensor`s
		as latent variables, and the generative network. `elbo` at minimum needs
		`p(x|Z)` and assumes that all `StochasticTensor`s upstream of `p(x|Z)` are
		the variational distributions. Use `register_prior` to register `Distribution`
		priors for each `StochasticTensor`. Alternatively, pass in
		`variational_with_prior` specifying all variational distributions and their
		priors.
		
		Mathematical details:
		
		```
		log p(x) =  log \int p(x, Z) dZ
		         =  log \int \frac {q(Z)p(x, Z)}{q(Z)} dZ
		         =  log E_q[\frac {p(x, Z)}{q(Z)}]
		         >= E_q[log \frac {p(x, Z)}{q(Z)}] = L[q; p, x]  # ELBO
		
		L[q; p, x] = E_q[log p(x|Z)p(Z)] - E_q[log q(Z)]
		           = E_q[log p(x|Z)p(Z)] + H[q]           (1)
		           = E_q[log p(x|Z)] - KL(q || p)         (2)
		
		H - Entropy
		KL - Kullback-Leibler divergence
		```
		
		See section 2.2 of Stochastic Variational Inference by Hoffman et al. for
		more, including the ELBO's equivalence to minimizing `KL(q(Z)||p(Z|x))`
		in the fully Bayesian setting. https://arxiv.org/pdf/1206.7051.pdf.
		
		`form` specifies which form of the ELBO is used. `form=ELBOForms.default`
		tries, in order of preference: analytic KL, analytic entropy, sampling.
		
		Multiple entries in the `variational_with_prior` dict implies a factorization.
		e.g. `q(Z) = q(z1)q(z2)q(z3)`.
		
		Args:
		  log_likelihood: `Tensor` log p(x|Z).
		  variational_with_prior: dict from `StochasticTensor` q(Z) to
		    `Distribution` p(Z). If `None`, defaults to all `StochasticTensor`
		    objects upstream of `log_likelihood` with priors registered with
		    `register_prior`.
		  keep_batch_dim: bool. Whether to keep the batch dimension when summing
		    entropy/KL term. When the sample is per data point, this should be True;
		    otherwise (e.g. in a Bayesian NN), this should be False.
		  form: ELBOForms constant. Controls how the ELBO is computed. Defaults to
		    ELBOForms.default.
		  name: name to prefix ops with.
		
		Returns:
		  `Tensor` ELBO of the same type and shape as `log_likelihood`.
		
		Raises:
		  TypeError: if variationals in `variational_with_prior` are not
		    `StochasticTensor`s or if priors are not `Distribution`s.
		  TypeError: if form is not a valid ELBOForms constant.
		  ValueError: if `variational_with_prior` is None and there are no
		    `StochasticTensor`s upstream of `log_likelihood`.
		  ValueError: if any variational does not have a prior passed or registered.
	**/
	static public function elbo(log_likelihood:Dynamic, ?variational_with_prior:Dynamic, ?keep_batch_dim:Dynamic, ?form:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Evidence Lower BOund. `log p(x) >= ELBO`.
		
		This method is for models that have computed `p(x,Z)` instead of `p(x|Z)`.
		See `elbo` for further details.
		
		Because only the joint is specified, analytic KL is not available.
		
		Args:
		  log_joint: `Tensor` log p(x, Z).
		  variational: list of `StochasticTensor` q(Z). If `None`, defaults to all
		    `StochasticTensor` objects upstream of `log_joint`.
		  keep_batch_dim: bool. Whether to keep the batch dimension when summing
		    entropy term. When the sample is per data point, this should be True;
		    otherwise (e.g. in a Bayesian NN), this should be False.
		  form: ELBOForms constant. Controls how the ELBO is computed. Defaults to
		    ELBOForms.default.
		  name: name to prefix ops with.
		
		Returns:
		  `Tensor` ELBO of the same type and shape as `log_joint`.
		
		Raises:
		  TypeError: if variationals in `variational` are not `StochasticTensor`s.
		  TypeError: if form is not a valid ELBOForms constant.
		  ValueError: if `variational` is None and there are no `StochasticTensor`s
		    upstream of `log_joint`.
		  ValueError: if form is ELBOForms.analytic_kl.
	**/
	static public function elbo_with_log_joint(log_joint:Dynamic, ?variational:Dynamic, ?keep_batch_dim:Dynamic, ?form:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Associate a variational `StochasticTensor` with a `Distribution` prior.
		
		This is a helper function used in conjunction with `elbo` that allows users
		to specify the mapping between variational distributions and their priors
		without having to pass in `variational_with_prior` explicitly.
		
		Args:
		  variational: `StochasticTensor` q(Z). Approximating distribution.
		  prior: `Distribution` p(Z). Prior distribution.
		
		Returns:
		  None
		
		Raises:
		  ValueError: if variational is not a `StochasticTensor` or `prior` is not
		    a `Distribution`.
	**/
	static public function register_prior(variational:Dynamic, prior:Dynamic):Dynamic;
}