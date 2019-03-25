test:
	cd notebooks && jupyter nbconvert --to pdf *.ipynb
readme: README.md
	pandoc  -V mainfont='Palatino' \
			-V fontsize=12pt \
			-V geometry="margin=1in" \
			-s README.md -o readme.pdf
pack: readme
	rm -f pack.zip
	mkdir pack
	cd notebooks && jupyter nbconvert --to pdf *.ipynb
	mkdir pack/pdf
	mv notebooks/*.pdf pack/pdf/
	cd notebooks && rm -fR -- */
	mkdir pack/html
	cd notebooks && jupyter nbconvert --to html *.ipynb
	mv notebooks/*.html pack/html
	mkdir pack/notebooks
	cp notebooks/*.ipynb pack/notebooks
	cp -r data pack/data
	cp -r figs pack/figs
	cp readme.pdf pack/readme.pdf
	cp LICENSE pack/LICENSE
	zip -r pack_new.zip pack
	mv pack_new.zip pack.zip
	rm -r pack
	rm readme.pdf
run:
	jupyter nbconvert --to notebook False --execute notebooks/*.ipynb
	rm notebooks/*.nbconvert.ipynb
