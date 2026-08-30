extends AnimatedSprite2D

@onready var rest_timer: Timer = $rest
@onready var twitch_timer: Timer = $twitch

func _ready() -> void:
	rest_timer.timeout.connect(restTimeout)
	twitch_timer.timeout.connect(twitchTimeout)
	restStart()

func restTimeout() -> void:
	frame = randi_range(1, 3)
	twitchStart()

func twitchTimeout() -> void:
	frame = 0
	restStart()

func restStart() -> void:
	rest_timer.wait_time = randf_range(0.3, 4.0)
	rest_timer.start()

func twitchStart() -> void:
	twitch_timer.wait_time = randf_range(0.02, 0.07)
	twitch_timer.start()
