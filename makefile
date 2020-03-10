readme:
	echo "# The Unix Workbench Project" > README.md
	echo "Updated at" >> README.md
	date -u >> README.md
	echo "" >> README.md
	echo "The bash file contains of" >> README.md
	cat guessinggame.sh | wc -w >> README.md
	echo "lines of code." >> README.md
