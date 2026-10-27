-- // Dependencies

local ReplicatedStorage = game:GetService("ReplicatedStorage")

local sharedFolder = ReplicatedStorage:WaitForChild("Shared") :: Folder
local serverFolder = script:FindFirstAncestor("Server") :: Folder
local TestService = require(serverFolder.features.test.TestService)
local Test = require(sharedFolder.features.test.Test)

-- // Lifecycle

TestService.Init(Test)
TestService.Start()
