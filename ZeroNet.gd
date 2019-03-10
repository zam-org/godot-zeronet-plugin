extends Node

var pid = null

func start():
	pid = OS.execute(get_python_bin(), ["./addons/ZeroNet/ZeroNet/zeronet.py"], false)
	
func get_python_bin():
	# Get OS name
	match OS.get_name():
		"Windows":
			return "./addons/ZeroNet/windows/Python/python.exe"
		"OSX":
			return "./addons/ZeroNet/macos/Python/python2.7"
		_:
			# Probably Linux or something else that runs X11
			# Check for 32/64bit
			if OS.has_feature("64"):
				return "./addons/ZeroNet/linux64/Python/python2.7"
			else:
				return "./addons/ZeroNet/linux32/Python/python2.7"
			
func stop():
	if pid:
		OS.kill(pid)