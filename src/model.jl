function summary(model::Fit)
    nobs = length(model.y)
    vcov = model.vcov
    estimates = model.modelfit.β

    printstyled("Observations: $(nobs)\n", color = :red)
    printstyled("vcov: $(vcov)\n", color = :green)
    printstyled("Estimates: $(estimates)", color = :blue)

end

function convert_to_matrix(x)
    if size(x, 2) == 1
        return Matrix(reshape(x, :, 1))
    else
        return Matrix(x)
    end
end
nobs(m::LinearModelFit) = m.N
r2(m::LinearModelFit) = "."
"""
    coef(model::Fit)
For now just returns β coefs.
"""
coef(model::Fit) = model.modelfit.β 

"""
    coef(model::Model)
For now just returns β coefs.
"""
coef(model::Model) = error("Fit model first by calling fit(model::Model)") 

"""
    fit(model::Model)
Fit model.
"""
fit(model::Model) = error("Fit undefined for $(typeof(model))")



"""
    dependentvariable(model::Model)
Dependent variable of the model.
"""
dependentvariable(model::Model) = error("dependentvariable undefined for $(typeof(model))")


"""
    designmatrix(model::Model)
Design matrix of the model.
"""
designmatrix(model::Model) = error("designmatrix undefined for $(typeof(model))")
