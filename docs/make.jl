using DemoPackageCT
using Documenter

DocMeta.setdocmeta!(DemoPackageCT, :DocTestSetup, :(using DemoPackageCT); recursive=true)

makedocs(;
    modules=[DemoPackageCT],
    authors="Cindy Tu <cindyhfls@gmail.com> and contributors",
    repo="https://github.com/cindyhfls/DemoPackageCT.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageCT.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://cindyhfls.github.io/DemoPackageCT.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/cindyhfls/DemoPackageCT.jl",
    devbranch="main",
)
