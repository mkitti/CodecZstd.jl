module CodecZstd

export
    ZstdCompressor,
    ZstdCompressorStream,
    ZstdDecompressor,
    ZstdDecompressorStream,
    ZstdError

import TranscodingStreams:
    TranscodingStreams,
    TranscodingStream,
    Memory,
    Error,
    initialize,
    finalize,
    splitkwargs

using Zstd_jll

# Module containing directly wrapped ccalls generated by CLang.jl
include("LibZstd_clang.jl")
# Library functions that have a Julian interface. This file originally preceded the above module
include("libzstd.jl")
include("compression.jl")
include("decompression.jl")

end # module
