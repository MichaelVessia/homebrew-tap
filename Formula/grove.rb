class Grove < Formula
  desc "Minimal workspace manager for AI coding agents"
  homepage "https://github.com/MichaelVessia/grove"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.4/grove-macos-arm64.tar.gz"
      sha256 "b23662f915aad8d659b2756801b2f560c7f025f0900bb047686fa40c7c67d7ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.4/grove-linux-x86_64.tar.gz"
      sha256 "8599147504aee065d75c941967a916fa0e6ff422f3ae03e9062de39111ed119b"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
