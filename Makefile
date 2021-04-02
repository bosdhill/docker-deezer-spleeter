SHELL = /bin/sh
current-dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

.PHONY:
run: pull ## Pull & Run spleeter with 2, 4, or 5 stems
	docker run \
		-v $(current-dir)input/:/input \
		-v $(current-dir)output/:/output \
		deezer/spleeter:3.6-5stems \
		separate -o /output -p spleeter:$(stems)stems /input/$(track)

.PHONY:
pull:
	docker pull deezer/spleeter:3.6-5stems
