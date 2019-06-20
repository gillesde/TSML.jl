module TSML


include("types.jl")
using .TSMLTypes

include("utils.jl")
using .Utils

include("transformers.jl")
using .TSMLTransformers


include("baseline.jl")
using .BaselineAlgos

include("decisiontree.jl")
using .DecisionTreeLearners

include("statifier.jl")
using .Statifiers

include("monotonicer.jl")
using .Monotonicers

include("cliwrapper.jl")
using .CLIWrappers
export tsmlrun

include("outliernicer.jl")
using .Outliernicers

include("argparse.jl")
using .ArgumentParsers


end # module
