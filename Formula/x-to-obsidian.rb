class XToObsidian < Formula
  desc "Scrape X bookmarks to Obsidian vault"
  homepage "https://github.com/MichaelVessia/x-to-obsidian"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/x-to-obsidian/releases/download/v0.1.0/x-to-obsidian-darwin-arm64"
      sha256 "e8e8137ba240f0e9a5ea233306b4ee5e915e2eb392698a0114a8374578a77b8b"
    end
    on_intel do
      url "https://github.com/MichaelVessia/x-to-obsidian/releases/download/v0.1.0/x-to-obsidian-darwin-x64"
      sha256 "319110e35c52be561ed85b73995f623b258785125108873be0cd67a6c6e0728d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/x-to-obsidian/releases/download/v0.1.0/x-to-obsidian-linux-x64"
      sha256 "229ff7976d5745594eee63824512fe38a49fba56d20f1c03f58f63c2d836c243"
    end
  end

  def install
    if OS.mac?
      bin.install "x-to-obsidian-darwin-#{Hardware::CPU.arm? ? "arm64" : "x64"}" => "x-to-obsidian"
    else
      bin.install "x-to-obsidian-linux-x64" => "x-to-obsidian"
    end
  end

  def caveats
    <<~EOS
      x-to-obsidian requires configuration. Set environment variables:

        export ANTHROPIC_API_KEY="your-api-key"
        export OBSIDIAN_VAULT_PATH="/path/to/vault"

      See https://github.com/MichaelVessia/x-to-obsidian for full setup.
    EOS
  end

  test do
    assert_match "x-to-obsidian", shell_output("#{bin}/x-to-obsidian --help")
  end
end
