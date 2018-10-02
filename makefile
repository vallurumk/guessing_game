all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench Peer-graded Assignment" > README.md
	echo "*by Manoj Valluru on [coursera.org](https://www.coursera.org/learn/unix/home/welcome).*" >> README.md
	echo "\n**Description**: Create a program called *guessinggame.sh*. This program will continuously ask the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is high or low. Once the user guesses the correct number of files in the current directory they should be congratulated." >> README.md
	echo -n "\n**Date and Time**: " >> README.md
	date >> README.md
	echo -n "\n**Number of lines in guessinggame.sh:** " >> README.md
	grep -c '' guessinggame.sh >> README.md

clean:
	rm README.md