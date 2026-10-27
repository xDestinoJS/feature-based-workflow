-- // Shared feature code

local Test = {}

function Test.greeting(player: Player): string
	return string.format("Welcome, %s!", player.DisplayName)
end

function Test.featureName(): string
	return "test"
end

return Test
