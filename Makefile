# TODO: switch feature over to wayland only when I move to pure wayland
alacritty-bin:
	# XXX: this kind of syntax does not work. see https://github.com/rust-lang/cargo/issues/5015
	# RUSTFLAGS="-Ctarget-cpu=native" cargo build --release --no-default-features --features x11
	# Until then, I'm manually patching the workspaces default features.
	RUSTFLAGS="-Ctarget-cpu=native" cargo build --release
	mv target/release/alacritty alacritty-bin
	strip alacritty-bin
