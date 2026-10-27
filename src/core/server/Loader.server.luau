-- // Dependencies

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sharedFolder = ReplicatedStorage:WaitForChild("Shared") :: Folder
local serverFolder = script:FindFirstAncestor("Server") :: Folder
local ExampleService = require(serverFolder.features.example.ExampleService)
local Example = require(sharedFolder.features.example.Example)

-- // Lifecycle

ExampleService.Init(Example)
ExampleService.Start()
