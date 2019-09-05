extends Control
var story = "Your gender is %s \nYour best skill is %s \nYour inspiration is %s \nYou are %s"
var answers = []
var questions = []
var questions_number = 0

func _ready():
	
	questions.append("1. What gender of you ?")
	questions.append("2. What is your best skill ?")
	questions.append("3. Who is your inspiration ?")
	questions.append("4. Are ready ?")
	
	$DisplayText.text = questions[0] #คำถามที่ 1
	
func _on_Play_Button_pressed(): #แบบแยก
	if questions_number < len(questions)-1: 
		answers.append($PlayerInput.text)
		print(answers)
		$PlayerInput.text = ""
		$DisplayText.text = questions[questions_number + 1]
		questions_number = questions_number + 1 #เพิ่มค่า Questions ที่ละ 1

	elif questions_number == len(questions)-1: #คำถามที่ 4
		answers.append($PlayerInput.text)
		print(answers)
		$PlayerInput.text = ""
		
		$DisplayText.text = story % answers