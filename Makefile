SHELL = /bin/sh
current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY:
run: build ## Pull & Run spleeter with 2, 4, or 5 stems
	docker run \
		-v $(current-dir)input/:/input \
		-v $(current-dir)output/:/output \
		-v $(current-dir)model/:/model \
		-e MODEL_PATH=/model \
		researchdeezer/spleeter:3.7-gpu \
		separate -o /output -p spleeter:$(stems)stems -i /input/$(track)

.PHONY:
build: 
	docker pull researchdeezer/spleeter:latest