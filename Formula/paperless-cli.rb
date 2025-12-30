class PaperlessCli < Formula
  desc "CLI for Paperless-ngx document management"
  homepage "https://github.com/MichaelVessia/paperless-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/paperless-cli/releases/download/v0.1.0/paperless-cli-darwin-arm64"
      sha256 "500dbf9c8f6078208e99eea4ef685ea3bc63a74f1054b0c013dc2582754a467f"
    end
    on_intel do
      url "https://github.com/MichaelVessia/paperless-cli/releases/download/v0.1.0/paperless-cli-darwin-x64"
      sha256 "4cbba742942dfc1f4dcdeda45837a397451128773c4b1bf67babbdcc734c079f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/paperless-cli/releases/download/v0.1.0/paperless-cli-linux-x64"
      sha256 "2a4163771acebee4b70c2b5ea941e25860211671dace7855a4c0a3bda8ce5295"
    end
  end

  def install
    if OS.mac?
      bin.install "paperless-cli-darwin-#{Hardware::CPU.arm? ? "arm64" : "x64"}" => "paperless-cli"
    else
      bin.install "paperless-cli-linux-x64" => "paperless-cli"
    end
  end

  def caveats
    <<~EOS
      paperless-cli requires Paperless-ngx credentials. Set environment variables:

        export PAPERLESS_URL="https://your-paperless-instance.com"
        export PAPERLESS_TOKEN="your-api-token"

      Get an API token from your Paperless-ngx instance:
        Settings -> Users -> Edit user -> Generate token
    EOS
  end

  test do
    assert_match "paperless-cli", shell_output("#{bin}/paperless-cli --help")
  end
end
