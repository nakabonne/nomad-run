
./bin/nomad:
	@mkdir -p bin
	cd bin && curl -o nomad.zip https://releases.hashicorp.com/nomad/1.2.5/nomad_1.2.5_linux_amd64.zip && unzip nomad.zip && rm nomad.zip

restart:
	docker-compose down
	docker-compose up --build -d

job:
	#./bin/nomad job stop --purge play
	./bin/nomad run ./examples/play.nomad

