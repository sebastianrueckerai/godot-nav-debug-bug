# godot-nav-debug-bug

Minimal example of project causing bug with "NavigationAgent" being recognized as simple "Node" in Godot 3.5

# Steps to reproduce:

1. Open with Godot 3.5 (tested with Mono Version)
2. Debug from Visual Studio Code

Used VSC config:
`{ // Use IntelliSense to learn about possible attributes. // Hover to view descriptions of existing attributes. // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387 "version": "0.2.0", "configurations": [ { "name": "GDScript Godot", "type": "godot", "request": "launch", "project": "${workspaceFolder}", "port": 6007, "address": "127.0.0.1", "launch_game_instance": true, "launch_scene": false } ] }`

3. Get error: `Invalid call. Nonexistent function 'set_target_location' in base 'Node'.`
