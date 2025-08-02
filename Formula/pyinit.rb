class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.02"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.02/pyinit-darwin-amd64"
      sha256 "dfdeb6d66d10cbd04b3b38ea57adbcddaf36be311d7e5e716d8a958e0320540b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.02/pyinit-darwin-arm64"
      sha256 "093d98e425e6188276dc7c4ea56c2ed105b9632fb3c9212023e185ec837b0c32"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.02/pyinit-linux-amd64"
      sha256 "1a85bacbd9af86a10e75217226ea6257d19cbda52f86de49380a93f7d7410645"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
