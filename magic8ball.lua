-- Something to while away some time

local answers = {
	"It is certain",
	"It is decidedly so",
	"Without a doubt",
	"Yes, definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy, try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful",
	"You seriously want an answer?",
}

while true do
	local key = math.random(21)
	io.write('Ask the magic 8 ball a question, "q" to quit": ')
	local do_quit = io.read()
	if do_quit == "q" then
		print("\nThe magic 8 ball has left!")
		break
	else
		print(answers[key])
	end
end
