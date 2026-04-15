class Grove < Formula
  desc "Minimal workspace manager for AI coding agents"
  homepage "https://github.com/MichaelVessia/grove"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.6/grove-macos-arm64.tar.gz"
      sha256 "132ee7ccd6369b02f96ed61e9a20882c6c0ec8eb85ffae96a3d84e85f8c17644"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.6/grove-linux-x86_64.tar.gz"
      sha256 "d7531829c050146bb08c978cc01ac589c9487e84e4e64c261d4c03780f61cab1"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
