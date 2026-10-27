-- // Dependencies

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sharedFolder = ReplicatedStorage:WaitForChild("Shared") :: Folder
local clientFolder = script:FindFirstAncestor("Client") :: Folder
local TestController = require(clientFolder.features.test.TestController)
local Test = require(sharedFolder.features.test.Test)

-- // Lifecycle

TestController.Init(Test)
TestController.Start()
