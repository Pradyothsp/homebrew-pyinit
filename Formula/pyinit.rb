class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.4/pyinit-darwin-amd64"
      sha256 "7daeb57b2cf10b8c126e1579c94af45bff5a34ead398e8c96e3ea07e2dda4b53"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.4/pyinit-darwin-arm64"
      sha256 "b010a5efe668c8f3652ab37411a7728ee06b27c30bbec888c0eb7e261147386e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.4/pyinit-linux-amd64"
      sha256 "aa479cd2212556aa48943f855579a82be049c09d2033e6a6b9924d23f2f3773e"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
