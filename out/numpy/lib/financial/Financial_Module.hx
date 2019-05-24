/* This file is generated, do not edit! */
package numpy.lib.financial;
@:pythonImport("numpy.lib.financial") extern class Financial_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_when(when:Dynamic):Dynamic;
	static public function _fv_dispatcher(rate:Dynamic, nper:Dynamic, pmt:Dynamic, pv:Dynamic, ?when:Dynamic):Dynamic;
	static public function _g_div_gp(r:Dynamic, n:Dynamic, p:Dynamic, x:Dynamic, y:Dynamic, w:Dynamic):Dynamic;
	static public function _ipmt_dispatcher(rate:Dynamic, per:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public function _irr_dispatcher(values:Dynamic):Dynamic;
	static public function _mirr_dispatcher(values:Dynamic, finance_rate:Dynamic, reinvest_rate:Dynamic):Dynamic;
	static public function _nper_dispatcher(rate:Dynamic, pmt:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public function _npv_dispatcher(rate:Dynamic, values:Dynamic):Dynamic;
	static public function _pmt_dispatcher(rate:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public function _ppmt_dispatcher(rate:Dynamic, per:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public function _pv_dispatcher(rate:Dynamic, nper:Dynamic, pmt:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public function _rate_dispatcher(nper:Dynamic, pmt:Dynamic, pv:Dynamic, fv:Dynamic, ?when:Dynamic, ?guess:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		This function is here to simply have a different name for the 'fv'
		function to not interfere with the 'fv' keyword argument within the 'ipmt'
		function.  It is the 'remaining balance on loan' which might be useful as
		it's own function, but is easily calculated with the 'fv' function.
	**/
	static public function _rbl(rate:Dynamic, per:Dynamic, pmt:Dynamic, pv:Dynamic, when:Dynamic):Dynamic;
	static public var _when_to_num : Dynamic;
	static public var absolute_import : Dynamic;
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute the future value.
		
		Given:
		 * a present value, `pv`
		 * an interest `rate` compounded once per period, of which
		   there are
		 * `nper` total
		 * a (fixed) payment, `pmt`, paid either
		 * at the beginning (`when` = {'begin', 1}) or the end
		   (`when` = {'end', 0}) of each period
		
		Return:
		   the value at the end of the `nper` periods
		
		Parameters
		----------
		rate : scalar or array_like of shape(M, )
		    Rate of interest as decimal (not per cent) per period
		nper : scalar or array_like of shape(M, )
		    Number of compounding periods
		pmt : scalar or array_like of shape(M, )
		    Payment
		pv : scalar or array_like of shape(M, )
		    Present value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0)).
		    Defaults to {'end', 0}.
		
		Returns
		-------
		out : ndarray
		    Future values.  If all input is scalar, returns a scalar float.  If
		    any input is array_like, returns future values for each input element.
		    If multiple inputs are array_like, they all must have the same shape.
		
		Notes
		-----
		The future value is computed by solving the equation::
		
		 fv +
		 pv*(1+rate)**nper +
		 pmt*(1 + rate*when)/rate*((1 + rate)**nper - 1) == 0
		
		or, when ``rate == 0``::
		
		 fv + pv + pmt * nper == 0
		
		References
		----------
		.. [WRW] Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May).
		   Open Document Format for Office Applications (OpenDocument)v1.2,
		   Part 2: Recalculated Formula (OpenFormula) Format - Annotated Version,
		   Pre-Draft 12. Organization for the Advancement of Structured Information
		   Standards (OASIS). Billerica, MA, USA. [ODT Document].
		   Available:
		   http://www.oasis-open.org/committees/documents.php?wg_abbrev=office-formula
		   OpenDocument-formula-20090508.odt
		
		Examples
		--------
		What is the future value after 10 years of saving $100 now, with
		an additional monthly savings of $100.  Assume the interest rate is
		5% (annually) compounded monthly?
		
		>>> np.fv(0.05/12, 10*12, -100, -100)
		15692.928894335748
		
		By convention, the negative sign represents cash flow out (i.e. money not
		available today).  Thus, saving $100 a month at 5% annual interest leads
		to $15,692.93 available to spend in 10 years.
		
		If any input is array_like, returns an array of equal shape.  Let's
		compare different interest rates from the example above.
		
		>>> a = np.array((0.05, 0.06, 0.07))/12
		>>> np.fv(a, 10*12, -100, -100)
		array([ 15692.92889434,  16569.87435405,  17509.44688102])
	**/
	static public function fv(rate:Dynamic, nper:Dynamic, pmt:Dynamic, pv:Dynamic, ?when:Dynamic):numpy.Ndarray;
	/**
		Compute the interest portion of a payment.
		
		Parameters
		----------
		rate : scalar or array_like of shape(M, )
		    Rate of interest as decimal (not per cent) per period
		per : scalar or array_like of shape(M, )
		    Interest paid against the loan changes during the life or the loan.
		    The `per` is the payment period to calculate the interest amount.
		nper : scalar or array_like of shape(M, )
		    Number of compounding periods
		pv : scalar or array_like of shape(M, )
		    Present value
		fv : scalar or array_like of shape(M, ), optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0)).
		    Defaults to {'end', 0}.
		
		Returns
		-------
		out : ndarray
		    Interest portion of payment.  If all input is scalar, returns a scalar
		    float.  If any input is array_like, returns interest payment for each
		    input element. If multiple inputs are array_like, they all must have
		    the same shape.
		
		See Also
		--------
		ppmt, pmt, pv
		
		Notes
		-----
		The total payment is made up of payment against principal plus interest.
		
		``pmt = ppmt + ipmt``
		
		Examples
		--------
		What is the amortization schedule for a 1 year loan of $2500 at
		8.24% interest per year compounded monthly?
		
		>>> principal = 2500.00
		
		The 'per' variable represents the periods of the loan.  Remember that
		financial equations start the period count at 1!
		
		>>> per = np.arange(1*12) + 1
		>>> ipmt = np.ipmt(0.0824/12, per, 1*12, principal)
		>>> ppmt = np.ppmt(0.0824/12, per, 1*12, principal)
		
		Each element of the sum of the 'ipmt' and 'ppmt' arrays should equal
		'pmt'.
		
		>>> pmt = np.pmt(0.0824/12, 1*12, principal)
		>>> np.allclose(ipmt + ppmt, pmt)
		True
		
		>>> fmt = '{0:2d} {1:8.2f} {2:8.2f} {3:8.2f}'
		>>> for payment in per:
		...     index = payment - 1
		...     principal = principal + ppmt[index]
		...     print(fmt.format(payment, ppmt[index], ipmt[index], principal))
		 1  -200.58   -17.17  2299.42
		 2  -201.96   -15.79  2097.46
		 3  -203.35   -14.40  1894.11
		 4  -204.74   -13.01  1689.37
		 5  -206.15   -11.60  1483.22
		 6  -207.56   -10.18  1275.66
		 7  -208.99    -8.76  1066.67
		 8  -210.42    -7.32   856.25
		 9  -211.87    -5.88   644.38
		10  -213.32    -4.42   431.05
		11  -214.79    -2.96   216.26
		12  -216.26    -1.49    -0.00
		
		>>> interestpd = np.sum(ipmt)
		>>> np.round(interestpd, 2)
		-112.98
	**/
	static public function ipmt(rate:Dynamic, per:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):numpy.Ndarray;
	/**
		Return the Internal Rate of Return (IRR).
		
		This is the "average" periodically compounded rate of return
		that gives a net present value of 0.0; for a more complete explanation,
		see Notes below.
		
		:class:`decimal.Decimal` type is not supported.
		
		Parameters
		----------
		values : array_like, shape(N,)
		    Input cash flows per time period.  By convention, net "deposits"
		    are negative and net "withdrawals" are positive.  Thus, for
		    example, at least the first element of `values`, which represents
		    the initial investment, will typically be negative.
		
		Returns
		-------
		out : float
		    Internal Rate of Return for periodic input values.
		
		Notes
		-----
		The IRR is perhaps best understood through an example (illustrated
		using np.irr in the Examples section below).  Suppose one invests 100
		units and then makes the following withdrawals at regular (fixed)
		intervals: 39, 59, 55, 20.  Assuming the ending value is 0, one's 100
		unit investment yields 173 units; however, due to the combination of
		compounding and the periodic withdrawals, the "average" rate of return
		is neither simply 0.73/4 nor (1.73)^0.25-1.  Rather, it is the solution
		(for :math:`r`) of the equation:
		
		.. math:: -100 + \frac{39}{1+r} + \frac{59}{(1+r)^2}
		 + \frac{55}{(1+r)^3} + \frac{20}{(1+r)^4} = 0
		
		In general, for `values` :math:`= [v_0, v_1, ... v_M]`,
		irr is the solution of the equation: [G]_
		
		.. math:: \sum_{t=0}^M{\frac{v_t}{(1+irr)^{t}}} = 0
		
		References
		----------
		.. [G] L. J. Gitman, "Principles of Managerial Finance, Brief," 3rd ed.,
		   Addison-Wesley, 2003, pg. 348.
		
		Examples
		--------
		>>> round(irr([-100, 39, 59, 55, 20]), 5)
		0.28095
		>>> round(irr([-100, 0, 0, 74]), 5)
		-0.0955
		>>> round(irr([-100, 100, 0, -7]), 5)
		-0.0833
		>>> round(irr([-100, 100, 0, 7]), 5)
		0.06206
		>>> round(irr([-5, 10.5, 1, -8, 1]), 5)
		0.0886
		
		(Compare with the Example given for numpy.lib.financial.npv)
	**/
	static public function irr(values:Dynamic):Float;
	/**
		Modified internal rate of return.
		
		Parameters
		----------
		values : array_like
		    Cash flows (must contain at least one positive and one negative
		    value) or nan is returned.  The first value is considered a sunk
		    cost at time zero.
		finance_rate : scalar
		    Interest rate paid on the cash flows
		reinvest_rate : scalar
		    Interest rate received on the cash flows upon reinvestment
		
		Returns
		-------
		out : float
		    Modified internal rate of return
	**/
	static public function mirr(values:Dynamic, finance_rate:Dynamic, reinvest_rate:Dynamic):Float;
	/**
		Compute the number of periodic payments.
		
		:class:`decimal.Decimal` type is not supported.
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		pmt : array_like
		    Payment
		pv : array_like
		    Present value
		fv : array_like, optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0))
		
		Notes
		-----
		The number of periods ``nper`` is computed by solving the equation::
		
		 fv + pv*(1+rate)**nper + pmt*(1+rate*when)/rate*((1+rate)**nper-1) = 0
		
		but if ``rate = 0`` then::
		
		 fv + pv + pmt*nper = 0
		
		Examples
		--------
		If you only had $150/month to pay towards the loan, how long would it take
		to pay-off a loan of $8,000 at 7% annual interest?
		
		>>> print(round(np.nper(0.07/12, -150, 8000), 5))
		64.07335
		
		So, over 64 months would be required to pay off the loan.
		
		The same analysis could be done with several different interest rates
		and/or payments and/or total amounts to produce an entire table.
		
		>>> np.nper(*(np.ogrid[0.07/12: 0.08/12: 0.01/12,
		...                    -150   : -99     : 50    ,
		...                    8000   : 9001    : 1000]))
		array([[[  64.07334877,   74.06368256],
		        [ 108.07548412,  127.99022654]],
		       [[  66.12443902,   76.87897353],
		        [ 114.70165583,  137.90124779]]])
	**/
	static public function nper(rate:Dynamic, pmt:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	/**
		Returns the NPV (Net Present Value) of a cash flow series.
		
		Parameters
		----------
		rate : scalar
		    The discount rate.
		values : array_like, shape(M, )
		    The values of the time series of cash flows.  The (fixed) time
		    interval between cash flow "events" must be the same as that for
		    which `rate` is given (i.e., if `rate` is per year, then precisely
		    a year is understood to elapse between each cash flow event).  By
		    convention, investments or "deposits" are negative, income or
		    "withdrawals" are positive; `values` must begin with the initial
		    investment, thus `values[0]` will typically be negative.
		
		Returns
		-------
		out : float
		    The NPV of the input cash flow series `values` at the discount
		    `rate`.
		
		Notes
		-----
		Returns the result of: [G]_
		
		.. math :: \sum_{t=0}^{M-1}{\frac{values_t}{(1+rate)^{t}}}
		
		References
		----------
		.. [G] L. J. Gitman, "Principles of Managerial Finance, Brief," 3rd ed.,
		   Addison-Wesley, 2003, pg. 346.
		
		Examples
		--------
		>>> np.npv(0.281,[-100, 39, 59, 55, 20])
		-0.0084785916384548798
		
		(Compare with the Example given for numpy.lib.financial.irr)
	**/
	static public function npv(rate:Dynamic, values:Dynamic):Float;
	/**
		Compute the payment against loan principal plus interest.
		
		Given:
		 * a present value, `pv` (e.g., an amount borrowed)
		 * a future value, `fv` (e.g., 0)
		 * an interest `rate` compounded once per period, of which
		   there are
		 * `nper` total
		 * and (optional) specification of whether payment is made
		   at the beginning (`when` = {'begin', 1}) or the end
		   (`when` = {'end', 0}) of each period
		
		Return:
		   the (fixed) periodic payment.
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		nper : array_like
		    Number of compounding periods
		pv : array_like
		    Present value
		fv : array_like,  optional
		    Future value (default = 0)
		when : {{'begin', 1}, {'end', 0}}, {string, int}
		    When payments are due ('begin' (1) or 'end' (0))
		
		Returns
		-------
		out : ndarray
		    Payment against loan plus interest.  If all input is scalar, returns a
		    scalar float.  If any input is array_like, returns payment for each
		    input element. If multiple inputs are array_like, they all must have
		    the same shape.
		
		Notes
		-----
		The payment is computed by solving the equation::
		
		 fv +
		 pv*(1 + rate)**nper +
		 pmt*(1 + rate*when)/rate*((1 + rate)**nper - 1) == 0
		
		or, when ``rate == 0``::
		
		  fv + pv + pmt * nper == 0
		
		for ``pmt``.
		
		Note that computing a monthly mortgage payment is only
		one use for this function.  For example, pmt returns the
		periodic deposit one must make to achieve a specified
		future balance given an initial deposit, a fixed,
		periodically compounded interest rate, and the total
		number of periods.
		
		References
		----------
		.. [WRW] Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May).
		   Open Document Format for Office Applications (OpenDocument)v1.2,
		   Part 2: Recalculated Formula (OpenFormula) Format - Annotated Version,
		   Pre-Draft 12. Organization for the Advancement of Structured Information
		   Standards (OASIS). Billerica, MA, USA. [ODT Document].
		   Available:
		   http://www.oasis-open.org/committees/documents.php
		   ?wg_abbrev=office-formulaOpenDocument-formula-20090508.odt
		
		Examples
		--------
		What is the monthly payment needed to pay off a $200,000 loan in 15
		years at an annual interest rate of 7.5%?
		
		>>> np.pmt(0.075/12, 12*15, 200000)
		-1854.0247200054619
		
		In order to pay-off (i.e., have a future-value of 0) the $200,000 obtained
		today, a monthly payment of $1,854.02 would be required.  Note that this
		example illustrates usage of `fv` having a default value of 0.
	**/
	static public function pmt(rate:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):numpy.Ndarray;
	/**
		Compute the payment against loan principal.
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		per : array_like, int
		    Amount paid against the loan changes.  The `per` is the period of
		    interest.
		nper : array_like
		    Number of compounding periods
		pv : array_like
		    Present value
		fv : array_like, optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}
		    When payments are due ('begin' (1) or 'end' (0))
		
		See Also
		--------
		pmt, pv, ipmt
	**/
	static public function ppmt(rate:Dynamic, per:Dynamic, nper:Dynamic, pv:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the present value.
		
		Given:
		 * a future value, `fv`
		 * an interest `rate` compounded once per period, of which
		   there are
		 * `nper` total
		 * a (fixed) payment, `pmt`, paid either
		 * at the beginning (`when` = {'begin', 1}) or the end
		   (`when` = {'end', 0}) of each period
		
		Return:
		   the value now
		
		Parameters
		----------
		rate : array_like
		    Rate of interest (per period)
		nper : array_like
		    Number of compounding periods
		pmt : array_like
		    Payment
		fv : array_like, optional
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0))
		
		Returns
		-------
		out : ndarray, float
		    Present value of a series of payments or investments.
		
		Notes
		-----
		The present value is computed by solving the equation::
		
		 fv +
		 pv*(1 + rate)**nper +
		 pmt*(1 + rate*when)/rate*((1 + rate)**nper - 1) = 0
		
		or, when ``rate = 0``::
		
		 fv + pv + pmt * nper = 0
		
		for `pv`, which is then returned.
		
		References
		----------
		.. [WRW] Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May).
		   Open Document Format for Office Applications (OpenDocument)v1.2,
		   Part 2: Recalculated Formula (OpenFormula) Format - Annotated Version,
		   Pre-Draft 12. Organization for the Advancement of Structured Information
		   Standards (OASIS). Billerica, MA, USA. [ODT Document].
		   Available:
		   http://www.oasis-open.org/committees/documents.php?wg_abbrev=office-formula
		   OpenDocument-formula-20090508.odt
		
		Examples
		--------
		What is the present value (e.g., the initial investment)
		of an investment that needs to total $15692.93
		after 10 years of saving $100 every month?  Assume the
		interest rate is 5% (annually) compounded monthly.
		
		>>> np.pv(0.05/12, 10*12, -100, 15692.93)
		-100.00067131625819
		
		By convention, the negative sign represents cash flow out
		(i.e., money not available today).  Thus, to end up with
		$15,692.93 in 10 years saving $100 a month at 5% annual
		interest, one's initial deposit should also be $100.
		
		If any input is array_like, ``pv`` returns an array of equal shape.
		Let's compare different interest rates in the example above:
		
		>>> a = np.array((0.05, 0.04, 0.03))/12
		>>> np.pv(a, 10*12, -100, 15692.93)
		array([ -100.00067132,  -649.26771385, -1273.78633713])
		
		So, to end up with the same $15692.93 under the same $100 per month
		"savings plan," for annual interest rates of 4% and 3%, one would
		need initial investments of $649.27 and $1273.79, respectively.
	**/
	static public function pv(rate:Dynamic, nper:Dynamic, pmt:Dynamic, ?fv:Dynamic, ?when:Dynamic):Dynamic;
	/**
		Compute the rate of interest per period.
		
		Parameters
		----------
		nper : array_like
		    Number of compounding periods
		pmt : array_like
		    Payment
		pv : array_like
		    Present value
		fv : array_like
		    Future value
		when : {{'begin', 1}, {'end', 0}}, {string, int}, optional
		    When payments are due ('begin' (1) or 'end' (0))
		guess : Number, optional
		    Starting guess for solving the rate of interest, default 0.1
		tol : Number, optional
		    Required tolerance for the solution, default 1e-6
		maxiter : int, optional
		    Maximum iterations in finding the solution
		
		Notes
		-----
		The rate of interest is computed by iteratively solving the
		(non-linear) equation::
		
		 fv + pv*(1+rate)**nper + pmt*(1+rate*when)/rate * ((1+rate)**nper - 1) = 0
		
		for ``rate``.
		
		References
		----------
		Wheeler, D. A., E. Rathke, and R. Weir (Eds.) (2009, May). Open Document
		Format for Office Applications (OpenDocument)v1.2, Part 2: Recalculated
		Formula (OpenFormula) Format - Annotated Version, Pre-Draft 12.
		Organization for the Advancement of Structured Information Standards
		(OASIS). Billerica, MA, USA. [ODT Document]. Available:
		http://www.oasis-open.org/committees/documents.php?wg_abbrev=office-formula
		OpenDocument-formula-20090508.odt
	**/
	static public function rate(nper:Dynamic, pmt:Dynamic, pv:Dynamic, fv:Dynamic, ?when:Dynamic, ?guess:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic):Dynamic;
}