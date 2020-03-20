alacritty-bin:
	RUSTFLAGS="-Ctarget-cpu=native" cargo build --release
	mv target/release/alacritty alacritty-bin
	strip alacritty-bin
