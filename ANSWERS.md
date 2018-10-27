# Q0: Why are these two errors being thrown?
	The first error is thrown because we haven't created a migration. The second error is because there is no Pokemon class 
	or variable.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	The same three starter pokemon are appearing, and don't have a pokemon. They are appearing through the Pokemon Index thingy.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

# Question 3: What would you name your own Pokemon?
Minion

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
We pass into redirect_to the trainer_path with the specific id of our current_trainer. It needed the id of our current trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It shows error messages on the form because it is the default for rendering any page. That way, when there's an error, it would just put it in there and we extract it to be put into a sentence.

# Give us feedback on the project and decal below!

https://github.com/evan1997123/pokePortal

# Extra credit: Link your Heroku deployed apps
