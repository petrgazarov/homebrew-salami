# frozen_string_literal: true

# This file was generated by https://github.com/salami/salami/blob/master/.github/scripts/generate-homebrew-tap
class Salami < Formula
  desc "Salami - Infrastructure as Natural Language"
  homepage "https://github.com/petrgazarov/salami"
  version "0.0.1-rc.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-darwin-x64"
      sha256 "2f27141c42e2f32dd060625f52207a17b52d98dcd2240938de2a9e322d9543be"
    end

    if Hardware::CPU.arm?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-darwin-arm64"
      sha256 "00166c849b35b0817eeabee2d172de00772af9113c75ec4cfa916cf8f25637e4"
    end

    def install
      if Hardware::CPU.intel?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-darwin-x64")
        bin.install filename => "salami"
      end

      if Hardware::CPU.arm?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-darwin-arm64")
        bin.install filename => "salami"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-linux-arm64"
      sha256 "20758a7c42f313d0a6c0487cf15ab85a3d0ff1efb5c1fe6635a7ae96ced1734a"
    end

    if Hardware::CPU.intel?
      url "https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-linux-x64"
      sha256 "ef114b2996c99c5cb9af132117fb6c4cbd92ee0b60c4d7f373ffddd24e2640a5"
    end

    def install
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-linux-arm64")
        bin.install filename => "salami"
      end

      if Hardware::CPU.intel?
        filename = File.basename("https://github.com/petrgazarov/salami/releases/download/0.0.1-rc.1/salami-0.0.1-rc.1-linux-x64")
        bin.install filename => "salami"
      end
    end
  end

  test do
    system "#{bin}/salami version"
  end
end