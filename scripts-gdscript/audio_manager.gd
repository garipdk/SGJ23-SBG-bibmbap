extends Node

var num_players = 8
var bus = "sfx"

var available = []  # The available players.

var queue = []  # The queue of sounds to play.


func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	# Create the pool of AudioStreamPlayer nodes.

	for i in num_players:
		var p = AudioStreamPlayer.new()
		add_child(p)
		available.append(p)
		p.connect("finished", self, "_on_stream_finished", [p])
		p.bus = bus

func _on_stream_finished(stream):
	# When finished playing a stream, make the player available again.
	available.append(stream)

func play(sound_path,min_pitch=1.0,max_pitch=1.0):
	var sound_pitch = rand_range(min_pitch,max_pitch)
	var sound_param = [sound_path,sound_pitch]
	queue.append(sound_param)

func _process(delta):
	# Play a queued sound if any players are available.
	if not queue.empty() and not available.empty():
		var sound_param = queue.pop_front()
		available[0].stream = load(sound_param[0])
		available[0].pitch_scale = sound_param[1]
		available[0].play()
		available.pop_front()
