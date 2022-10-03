# opiniondynamics.jl

[![codecov.io](https://img.shields.io/codecov/c/github/luka-bakovic/opiniondynamics.jl/master.svg?style=flat-square)](http://codecov.io/github/luka-bakovic/hits?branch=master)

~~Julia package for Opinion Dynamics~~
Julia package for computing a specific case of a specific model of Opinion Dynamics.
Enjoy playing with the French-DeGroot model!

$$ x_i(t+1) = \alpha x_i(t) + (1-\alpha) \sum_{j} P_{ij}x_j(t) $$

Being the simplest ODyn model, FDG is fully specified by a square opinion matrix $W_{ij}$. Instantiate the FrenchDeGroot class with a fitting matrix, and use the runDynamics! function to get the dynamics for as many steps as you want. All initial vectors $x_0$ should lead to opinion concensus!
