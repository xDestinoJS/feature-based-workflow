-- // Dependencies

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sharedFolder = ReplicatedStorage:WaitForChild("Shared") :: Folder
local clientFolder = script:FindFirstAncestor("Client") :: Folder
local ExampleController = require(clientFolder.features.example.ExampleController)
local Example = require(sharedFolder.features.example.Example)

-- // Lifecycle

ExampleController.Init(Example)
ExampleController.Start()
