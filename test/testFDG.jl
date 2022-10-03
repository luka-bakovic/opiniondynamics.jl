# if you start at concensus, you should not move from concensus

a = rand(3)
model = OpinionDynamics.FrenchDeGroot(a*a')

x0 = OpinionDynamics.runDynamics!(model, ones(3), 100)
@test x0 ≈ ones(3)