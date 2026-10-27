-- // Shared feature code

local ExampleShared = {}

function ExampleShared.greeting(player: Player): string
	return string.format("Welcome, %s!", player.DisplayName)
end

function ExampleShared.featureName(): string
	return "example"
end

return ExampleShared
