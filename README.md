# ZeroNet in Godot

Run an embedded copy of ZeroNet in your Godot game.

## Install

ZeroNet Godot can be installed directly from Godot using Godot Asset Library. Find ZeroNet Godot on the Asset Library [here](https://godotengine.org/asset-library/asset/327).

Otherwise, ZeroNet Godot can be installed manually by downloading this repo and placing the files in `addons/ZeroNet` in your game files.

## Start ZeroNet

To start a running copy of ZeroNet, use:

```
ZeroNet.start()
```

You may also specify an optional port:

```
ZeroNet.start(12345)
```

The default port is `43110`.

## Stop ZeroNet

To stop the currently running copy of ZeroNet, use:

```
ZeroNet.stop()
```

If ZeroNet is not currently running, or if an instance of ZeroNet is running that wasn't started by this plugin, this is a no-op.

If you want to ensure that ZeroNet does not continue running when your game is quit, add the following to a node that exists in the scene tree (or a Singleton):

```
func _exit_tree():
    ZeroNet.stop()
```
