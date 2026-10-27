-- // Dependencies

local Players = game:GetService("Players")

-- // Types

type Example = {
	greeting: (Player) -> string,
	featureName: () -> string,
}

-- // State

local ExampleController = {}
local shared: Example

-- // Lifecycle

function ExampleController.Init(exampleShared: Example)
	shared = exampleShared
end

function ExampleController.Start()
	local player = Players.LocalPlayer
	print(string.format("[%s] %s", shared.featureName(), shared.greeting(player)))
end

return ExampleController
