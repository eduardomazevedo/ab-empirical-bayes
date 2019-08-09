This class collects MATLAB functions for empirical Bayes analysis of A/B tests. Written by: Eduardo Azevedo and Pepe Montiel-Olea.

Used for Azevedo, Deng, Montiel and Weyl:
"Empirical Bayes Estimation of Treatment Effects with Many A/B Tests: An Overview",
and "A/B Testing for Black Swans"

This class is helpful for (1) calculating the posterior mean of quality as a function of results of an experiment and a prior distribution of quality. And for (2) performing maximum likelihood estimates of the distribution
of quality from data from multiple A/B tests.

The core code is in `classes/AB.m`. `scripts/create_tpdf_gradient.m` creates MATLAB functions of the t distribution with mean, scale, and tail parameters, and of its derivatives. These functions improve maximum likelihood estimation with a t prior. See `scripts/example.m`.

This class was developed for research. We hope that it will be useful for other researchers, but the code is provided as is. We do not intend to implement new features nor support it.

The code was tested on MATLAB 2017a on OSX and on a UNIX cluster. Some of the functions use knitro. The bisection.m function is by Sky Sartorius as explained in the license.
