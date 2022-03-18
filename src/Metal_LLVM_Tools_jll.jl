# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Metal_LLVM_Tools_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("Metal_LLVM_Tools")
JLLWrappers.@generate_main_file("Metal_LLVM_Tools", UUID("0418c028-ff8c-56b8-a53e-0f9676ed36fc"))
end  # module Metal_LLVM_Tools_jll
