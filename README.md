## tempel

Simple. Works. Vala. <3.

## roadmap

- [x] simple stdin upload `$ echo 'hihi' | ./tempel`
- [x] multiline stdin upload `$ cat README.md | ./tempel`
- [ ] version check
- [ ] language option
- [ ] put link in clipboard
- [ ] automatically open the browser option
- [ ] fetch raw content
- [ ] render content with text highlighting
- [ ] owned tempel list

## build and run

```
$ sudo apt-get install valac
$ git clone git@github.com:diorahman/tempel.git
$ cd tempel
$ make
$ echo 'hahaha' | ./tempel
$ ./tempel
hahaha
hihi
he
Ctrl+D

```

## license

MIT
