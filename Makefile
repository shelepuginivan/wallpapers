change:
	echo -e "# wallpapers\n" > PREVIEW.md
	echo -e "> Last built on $$(date +%Y-%m-%d)\n" >> PREVIEW.md
	find -name "*.png" -exec .github/scripts/preview.sh {} \;
	git add -A
	git commit -m "wallpapers: commit $$(date +%Y-%m-%d\ %H-%M-%S)"
	git push
