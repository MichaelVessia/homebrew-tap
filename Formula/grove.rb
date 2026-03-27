class Grove < Formula
  desc "Minimal workspace manager for AI coding agents"
  homepage "https://github.com/MichaelVessia/grove"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.2/grove-macos-arm64.tar.gz"
      sha256 "4f9c82ac55155bdb9c69229cf3db60d0726e25b9adc1f207748048dc3f2ede7b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.2/grove-linux-x86_64.tar.gz"
      sha256 "bd859c89c78c33cf672789f1dd2b0b46d8a2ed2795f53721c4d39b176d23985f"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
