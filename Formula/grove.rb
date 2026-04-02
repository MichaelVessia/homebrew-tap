class Grove < Formula
  desc "Minimal workspace manager for AI coding agents"
  homepage "https://github.com/MichaelVessia/grove"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.5/grove-macos-arm64.tar.gz"
      sha256 "1d5002520bcdc9ee36798802fff912a9cf46c685d31fd018dc04ee767b632c1b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/grove/releases/download/grove-v0.1.5/grove-linux-x86_64.tar.gz"
      sha256 "694c1570d59e202f534ddf0725bf0592c7713858e15008039ed039c98f4872ff"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
