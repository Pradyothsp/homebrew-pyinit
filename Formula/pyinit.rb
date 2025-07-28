class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.02-alpha"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.02-alpha/pyinit-darwin-amd64"
      sha256 "23c96e112899d4704ba994b743ab3c20abae10d5a5baf0d1e107251a8699c555"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.02-alpha/pyinit-darwin-arm64"
      sha256 "e88fd996f071616de21847356d8e3651ea0cd1743fed3abe06458e7a9a59ad9b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.02-alpha/pyinit-linux-amd64"
      sha256 "6bc4fcba3159ab34547d3bce619878eaf0c697fea7eb6068b48fbd50f347364a"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
