-- // Dependencies

local Players = game:GetService("Players")

-- // Types

type Test = {
	greeting: (Player) -> string,
	featureName: () -> string,
}

-- // State

local TestService = {}
local shared: Test

-- // Lifecycle

function TestService.Init(testShared: Test)
	shared = testShared
end

function TestService.Start()
	Players.PlayerAdded:Connect(function(player)
		print(string.format("[%s] %s", shared.featureName(), shared.greeting(player)))
	end)
end

return TestService
