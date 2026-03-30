class Grove < Formula
  desc "Minimal workspace manager for AI coding agents"
  homepage "https://github.com/MichaelVessia/grove"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.3/grove-macos-arm64.tar.gz"
      sha256 "e91ded8f8a4ab8f9a26595cbe26ed59c69db8ff0cf2f208f15e29ba66f210599"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.3/grove-linux-x86_64.tar.gz"
      sha256 "7adc07bb2fed6a3349bd3aa691f9155a1945fa310d43c786f12973f97ade6a0f"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
