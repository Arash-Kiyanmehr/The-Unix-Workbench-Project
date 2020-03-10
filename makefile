readme:
	echo "# The Unix Workbench Project" > README.md
	echo "## Updated at $(date)" >> README.md
	echo "The bash file contains $(cat guessinggame.sh | wc -l) lines of code" >> README.md
