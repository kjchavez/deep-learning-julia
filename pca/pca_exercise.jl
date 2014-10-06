include("../datautils.jl")
using DataUtils
using MAT

function loaddata()
        vars = matread("data/IMAGES_RAW.mat")
        data = sampleimages(vars["IMAGESr"],12,12,1000,scalevariance=false)
        # Plot a random subset of the patches
        #displaynetwork_plotly(data[:,rand(1:size(data,2),100)],"sample_images","kjchavez","dd16t6j7li")

        return data
end


using StatsBase
using MultivariateStats
data = loaddata()
model = fit(PCA,data; maxoutdim=size(data,1))
ydata = transform(model,data)
covariancematrix = scattermat(ydata)

# visualize covariance matrix
