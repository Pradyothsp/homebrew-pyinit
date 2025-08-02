class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.3/pyinit-darwin-amd64"
      sha256 "7097cd171ee81a44ea8e616066a1743eaf689eac1e9754f4415a8b5780f2b94e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.3/pyinit-darwin-arm64"
      sha256 "fc433c0ad5c32abbc208cc16c6271bced835a3a0aba8237776514d5d0d5b5dab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.3/pyinit-linux-amd64"
      sha256 "ad5995ce99a0ed7e243f388c94a0e7a1754f88c17652f4bb51abb3a07c862a78"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
