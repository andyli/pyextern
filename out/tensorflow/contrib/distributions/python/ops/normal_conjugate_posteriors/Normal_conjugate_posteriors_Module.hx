/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.normal_conjugate_posteriors;
@:pythonImport("tensorflow.contrib.distributions.python.ops.normal_conjugate_posteriors") extern class Normal_conjugate_posteriors_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Posterior predictive Normal distribution w. conjugate prior on the mean.
		
		This model assumes that `n` observations (with sum `s`) come from a
		Normal with unknown mean `mu` (described by the Normal `prior`)
		and known variance `sigma^2`.  The "known sigma predictive"
		is the distribution of new observations, conditioned on the existing
		observations and our prior.
		
		Accepts a prior Normal distribution object, having parameters
		`mu0` and `sigma0`, as well as known `sigma` values of the predictive
		distribution(s) (also assumed Normal),
		and statistical estimates `s` (the sum(s) of the observations) and
		`n` (the number(s) of observations).
		
		Calculates the Normal distribution(s) `p(x | sigma^2)`:
		
		```
		  p(x | sigma^2) = int N(x | mu, sigma^2) N(mu | prior.mu, prior.sigma^2) dmu
		                 = N(x | prior.mu, 1/(sigma^2 + prior.sigma^2))
		```
		
		Returns the predictive posterior distribution object, with parameters
		`(mu', sigma'^2)`, where:
		
		```
		sigma_n^2 = 1/(1/sigma0^2 + n/sigma^2),
		mu' = (mu0/sigma0^2 + s/sigma^2) * sigma_n^2.
		sigma'^2 = sigma_n^2 + sigma^2,
		```
		
		Distribution parameters from `prior`, as well as `sigma`, `s`, and `n`.
		will broadcast in the case of multidimensional sets of parameters.
		
		Args:
		  prior: `Normal` object of type `dtype`:
		    the prior distribution having parameters `(mu0, sigma0)`.
		  sigma: tensor of type `dtype`, taking values `sigma > 0`.
		    The known stddev parameter(s).
		  s: Tensor of type `dtype`.  The sum(s) of observations.
		  n: Tensor of type `int`.  The number(s) of observations.
		
		Returns:
		  A new Normal predictive distribution object.
		
		Raises:
		  TypeError: if dtype of `s` does not match `dtype`, or `prior` is not a
		    Normal object.
	**/
	static public function normal_congugates_known_sigma_predictive(prior:Dynamic, sigma:Dynamic, s:Dynamic, n:Dynamic):Dynamic;
	/**
		Posterior Normal distribution with conjugate prior on the mean.
		
		This model assumes that `n` observations (with sum `s`) come from a
		Normal with unknown mean `mu` (described by the Normal `prior`)
		and known variance `sigma^2`.  The "known sigma posterior" is
		the distribution of the unknown `mu`.
		
		Accepts a prior Normal distribution object, having parameters
		`mu0` and `sigma0`, as well as known `sigma` values of the predictive
		distribution(s) (also assumed Normal),
		and statistical estimates `s` (the sum(s) of the observations) and
		`n` (the number(s) of observations).
		
		Returns a posterior (also Normal) distribution object, with parameters
		`(mu', sigma'^2)`, where:
		
		```
		mu ~ N(mu', sigma'^2)
		sigma'^2 = 1/(1/sigma0^2 + n/sigma^2),
		mu' = (mu0/sigma0^2 + s/sigma^2) * sigma'^2.
		```
		
		Distribution parameters from `prior`, as well as `sigma`, `s`, and `n`.
		will broadcast in the case of multidimensional sets of parameters.
		
		Args:
		  prior: `Normal` object of type `dtype`:
		    the prior distribution having parameters `(mu0, sigma0)`.
		  sigma: tensor of type `dtype`, taking values `sigma > 0`.
		    The known stddev parameter(s).
		  s: Tensor of type `dtype`.  The sum(s) of observations.
		  n: Tensor of type `int`.  The number(s) of observations.
		
		Returns:
		  A new Normal posterior distribution object for the unknown observation
		  mean `mu`.
		
		Raises:
		  TypeError: if dtype of `s` does not match `dtype`, or `prior` is not a
		    Normal object.
	**/
	static public function normal_conjugates_known_sigma_posterior(prior:Dynamic, sigma:Dynamic, s:Dynamic, n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}