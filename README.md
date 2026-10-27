# Feature-based Workflow

A minimal Roblox feature-based project based on Ride and Slide Animals. It keeps the shared package set and Rogen layout while leaving gameplay-specific code behind.

## Setup

1. Install the toolchain with `rokit install`, `wally install`, and `npm install`.
2. Generate the project mapping with `npm run project`.
3. Run `npm run lint` to check the Luau source.
4. Open the generated `default.project.json` with your Argon/Rojo workflow.

## Feature layout

Each feature owns three optional realms under `src/features/<name>`:

- `shared/` contains code used by both server and client.
- `server/` contains the feature service.
- `client/` contains the feature controller.

The `example` feature is wired through the two bootstrap loaders and uses `Example` from both `ExampleService` and `ExampleController`.
