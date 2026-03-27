class Grove < Formula
  desc "Minimal workspace manager for AI coding agents"
  homepage "https://github.com/MichaelVessia/grove"
  version "master"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/grove/releases/download/vmaster/grove-macos-arm64.tar.gz"
      sha256 "0f2c10406b1d7d477a16bb0ac3135c19bbd92ce28e436ba109e6d96da115ddd7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/grove/releases/download/vmaster/grove-linux-x86_64.tar.gz"
      sha256 "44aca1a687d84b8a04e76b85355e039f7fd6efbaf64eb3ee9963d11e31e5bf0d"
    end
  end

  def install
    bin.install "grove"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/grove --version")
  end
end
