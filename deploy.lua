---@diagnostic disable: undefined-global
local docker = import("docker@1.0")
local d = docker:new()
d:pull("ansurfen/gix:1.1"):exec({ debug = true, redirect = true })
d:run({
    port = "8080:8080",
    voulme = "/home/ubuntu/data:/data",
    d = true,
    name = "gix",
    image = "ansurfen/gix:1.1"
}):exec({ debug = true, redirect = true })
