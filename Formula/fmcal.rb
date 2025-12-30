class Fmcal < Formula
  desc "CLI for Fastmail calendars via CalDAV"
  homepage "https://github.com/MichaelVessia/fmcal"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/MichaelVessia/fmcal/releases/download/v0.1.1/fmcal-darwin-arm64"
      sha256 "b566acb8d6435bf8339624a77f956f23774d95efce84c2aaa5f5222e41571822"
    end
    on_intel do
      url "https://github.com/MichaelVessia/fmcal/releases/download/v0.1.1/fmcal-darwin-x64"
      sha256 "6655adf0fe1b49e559b519c56e03dfa5c330a753b46a3f841166cd19b32f956c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/MichaelVessia/fmcal/releases/download/v0.1.1/fmcal-linux-x64"
      sha256 "891956c5d2ab04a74ae5a2f04196a61f798d2043869795afe92cdac8c76ac107"
    end
  end

  def install
    if OS.mac?
      bin.install "fmcal-darwin-#{Hardware::CPU.arm? ? "arm64" : "x64"}" => "fmcal"
    else
      bin.install "fmcal-linux-x64" => "fmcal"
    end
  end

  def caveats
    <<~EOS
      fmcal requires Fastmail credentials. Set environment variables:

        export FMCAL_USERNAME="user@fastmail.com"
        export FMCAL_PASSWORD="app-specific-password"

      Get an app password:
        Fastmail → Settings → Privacy & Security → Integrations → New app password
    EOS
  end

  test do
    assert_match "fmcal", shell_output("#{bin}/fmcal --help")
  end
end
