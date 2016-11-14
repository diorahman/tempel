tempel: tempel.vala
	valac --pkg libsoup-2.4 --pkg gio-2.0 --thread tempel.vala

clean: 
	rm -f tempel
