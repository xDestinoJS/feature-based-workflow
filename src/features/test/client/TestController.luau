-- // Dependencies

local Players = game:GetService("Players")

-- // Types

type Test = {
	greeting: (Player) -> string,
	featureName: () -> string,
}

-- // State

local TestController = {}
local shared: Test

-- // Lifecycle

function TestController.Init(testShared: Test)
	shared = testShared
end

function TestController.Start()
	local player = Players.LocalPlayer
	print(string.format("[%s] %s", shared.featureName(), shared.greeting(player)))
end

return TestController
