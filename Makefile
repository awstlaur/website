site:
	make clean
	touch web/index.html
	touch web/resume.html
	touch web/math.html
	touch web/programming.html
	touch web/contact.html
	for f in web/*html ; do \
		cat pre-container >> $$f ; \
		tmp=$${f%\.html} ; \
		tmp2=$${tmp#web/} ; \
		con=$$tmp2"-container.html" ; \
		cat $$con >> $$f ; \
		cat post-container >> $$f ; \
	done

clean:
	rm -f web/*.html
