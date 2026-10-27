-- // Dependencies

local Players = game:GetService("Players")

-- // Types

type Example = {
	greeting: (Player) -> string,
	featureName: () -> string,
}

-- // State

local ExampleService = {}
local shared: Example

-- // Lifecycle

function ExampleService.Init(exampleShared: Example)
	shared = exampleShared
end

function ExampleService.Start()
	Players.PlayerAdded:Connect(function(player)
		print(string.format("[%s] %s", shared.featureName(), shared.greeting(player)))
	end)
end

return ExampleService
