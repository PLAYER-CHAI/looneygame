extends Control
var questions = []
var ans
func _ready():
	questions.append("1. What gender of you ?")
	questions.append("2. What is your best skill ?")
	print(questions[0])
	$DisplayText.text = questions[0]
func _on_Play_Button_pressed():
	ans = $PlayerInput.text
	print(ans)
	print(questions[1])
	$DisplayText.text = questions[1]