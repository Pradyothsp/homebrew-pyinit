class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.5/pyinit-darwin-amd64"
      sha256 "5a00b26d82d76fe562920715640631b10227b6cfe8f33ba3715e447245f028ac"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.5/pyinit-darwin-arm64"
      sha256 "cc7f8749941952c90c1a053f1b1123a7eb6333fe254c870c0fead221248bd0d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.5/pyinit-linux-amd64"
      sha256 "62dea32bce2a7143badaf48b5e74ad5ea162a99b0f18267b521deafa90c44bef"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
