class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.2/pyinit-darwin-amd64"
      sha256 "89f03ac7dfa17dcacd70edfcd07e957d5a6352785ba3d9960a5447167102ddd3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.2/pyinit-darwin-arm64"
      sha256 "32999025529bd2a008f5af681ef6be51f06600a00e01bdd97a1c51a269a4d5f6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.2/pyinit-linux-amd64"
      sha256 "e855b5b4c8ec83f1c39dfab26f0b9503d246572f5b62f5ffd45edf8ce4004682"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
