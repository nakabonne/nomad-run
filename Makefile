
./bin/nomad:
	@mkdir -p bin
	cd bin && curl -o nomad.zip https://releases.hashicorp.com/nomad/1.2.5/nomad_1.2.5_linux_amd64.zip && unzip nomad.zip && rm nomad.zip

restart:
	docker-compose down
	docker-compose up --build -d

play:
	./bin/nomad run ./examples/play.nomad
	./bin/nomad status play

play-purge:
	./bin/nomad job stop --purge play
