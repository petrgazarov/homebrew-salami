# frozen_string_literal: true

# This file was generated by https://github.com/salami/salami/blob/master/.github/workflows/release_packages.yml
class Salami < Formula
  desc "Salami - Infrastructure as Natural Language"
  homepage "https://github.com/petrgazarov/salami"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-darwin-x64"
      sha256 "eea52754b13a0ad07bd3100b7d15d5d3795d9cb0eebf79dddef147b3e5463edb"
    end

    if Hardware::CPU.arm?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-darwin-arm64"
      sha256 "f4752fb38c2da12fbac6a154afab1253f3e2daa443cd9e6ef9f4c86f826b2f52"
    end

    def install
      if Hardware::CPU.intel?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-darwin-x64")
        bin.install filename => "salami"
      end

      if Hardware::CPU.arm?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-darwin-arm64")
        bin.install filename => "salami"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-linux-arm64"
      sha256 "eb79a78348408b18a98f4fab8c4bbdf1a5fcafc5f1a586ea446b3ebb78404c40"
    end

    if Hardware::CPU.intel?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-linux-x64"
      sha256 "0d3e2e5ffb978ed5d51c17dd648560c6d73b36caa71be00df283532e98d41080"
    end

    def install
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-linux-arm64")
        bin.install filename => "salami"
      end

      if Hardware::CPU.intel?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.2/salami-0.0.2-linux-x64")
        bin.install filename => "salami"
      end
    end
  end

  test do
    system "#{bin}/salami version"
  end
end