change:
	echo -e "# wallpapers\n" > PREVIEW.md
	echo -e "> Last built on $$(date +%Y-%m-%d)\n" >> PREVIEW.md
	find -name "*.png" -exec sh -c 'echo "![{}]({})" | sed -e "s/ /%20/g"' >> PREVIEW.md \;
	git add -A
	git commit -m "wallpapers: commit $$(date +%Y-%m-%d\ %H-%M-%S)"
	git push
