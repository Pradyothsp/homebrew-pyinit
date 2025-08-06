class Pyinit < Formula
  desc "Interactive Python project scaffolding tool"
  homepage "https://github.com/Pradyothsp/pyinit"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.6/pyinit-darwin-amd64"
      sha256 "1994186516e45d1a1a7f0ebef24fa619c40d5f6dcd495021c9b19ee2f0e3a5f9"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.6/pyinit-darwin-arm64"
      sha256 "483015d1d01440105b8410a29940105550f168e0868cb5d30befa7f80711e10d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Pradyothsp/pyinit/releases/download/v0.0.6/pyinit-linux-amd64"
      sha256 "0ce8b61002dce403bc3fd304616d2951030c9d8e60f93134ab5ae836c8745cdd"
    end
  end

  def install
    bin.install "pyinit-darwin-amd64" => "pyinit" if OS.mac? && Hardware::CPU.intel?
    bin.install "pyinit-darwin-arm64" => "pyinit" if OS.mac? && Hardware::CPU.arm?
    bin.install "pyinit-linux-amd64" => "pyinit" if OS.linux? && Hardware::CPU.intel?
  end
end
