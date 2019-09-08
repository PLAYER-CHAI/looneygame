extends Control
var story = "Your gender is %s \nYour best skill is %s \nYour inspiration is %s \nYou will graduate in %s"
var answers = []
var questions = []
var questions_number = 0

func _ready():
	
	questions.append("1. What gender of you ?")
	questions.append("2. What is your best skill ?")
	questions.append("3. Who is your inspiration ?")
	questions.append("4. When do you graduate ?")
	
	$DisplayText.text = questions[0]
	
func _on_Play_Button_pressed():
	if questions_number < len(questions)-1: 
		answers.append($PlayerInput.text)
		print(answers)
		$PlayerInput.text = ""
		$DisplayText.text = questions[questions_number + 1]
		questions_number = questions_number + 1

	elif questions_number == len(questions)-1:
		answers.append($PlayerInput.text)
		print(answers)
		$PlayerInput.text = ""
		
		$DisplayText.text = story % answers