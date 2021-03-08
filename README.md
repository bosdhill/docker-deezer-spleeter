# Docker Deezer Spleeter
To run dockerized [Deezer Spleeter](https://github.com/deezer/spleeter/wiki/2.-Getting-started#using-docker-image). Adapted from [docker-facebook-demucs](https://github.com/xserrat/docker-facebook-demucs).

## Usage

### 1. Clone this repository
```bash
git clone https://github.com/xserrat/docker-deezer-spleeter.git spleeter
```

### 2. Split a music track
1. Copy the track you want to split into the `input` folder (i.e: `input/mysong.mp3`).
2. Execute Spleeter specifying the `track` for the name of the mp3 file and `stems` for 2, 4, or 5 stem models:
```bash
make run stems=5 track=mysong.mp3
```
## License
This repository is released under the MIT license as found in the [LICENSE](LICENSE) file.
