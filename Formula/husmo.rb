class Husmo < Formula
  desc "Local-first, git-backed document/link database with a Rust MCP server"
  homepage "https://github.com/frantufro/husmo"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.4/husmo-aarch64-apple-darwin.tar.gz"
      sha256 "d4ff2424e726b1a7133dd7dc937c7f1a5e9849b0f7d517bb998bd4d1c9d37da7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.4/husmo-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "646456742ab814660da75f81a6da4cb58a9e084f2c04152938a6e0a76c44f9d0"
    end
    on_arm do
      url "https://github.com/frantufro/husmo/releases/download/v0.1.4/husmo-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d2db4dad778a85511df64f40a3be6189a7992a8b2ae5a4dfe5ee0a81eae35d8c"
    end
  end

  def install
    bin.install "husmo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/husmo --version")
  end
end
