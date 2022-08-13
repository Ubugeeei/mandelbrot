run:
	make build
	make export
	make open

build:
	cargo build --release

export:
	./target/release/mandelbrot mandel.png 16000x12000 -1.20,0.35 -1.0,0.20

open:
	open mandel.png

perf:
	time make export