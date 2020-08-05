up: build run

build:
	docker build -t jdcrooke/kali-nvim:dev .
run:
	docker run -it --hostname=kali-nvim --name kali-nvim jdcrooke/kali-nvim:dev

down:stop remove

stop:
	docker stop kali-nvim
remove:
	docker rm kali-nvim

reset:
	docker rmi jdcrooke/kali-nvim:dev
