class Blelora < Formula
    version "0.1.2"
    desc "A command-line utility written in Rust that supports Device Firmware Updates (DFU) for nRF52 devices running Adafruit_nRF52_Bootloader."
    homepage "https://github.com/blelora/blelora-cli"

    if OS.mac?
      if Hardware::CPU.arm?
        url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_aarch64-apple-darwin.zip"
        sha256 "cc29508802906d44990d6289df5625953c6480c59992993e140b1d6a1b4c84a1" 
      else
        url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_x86_64-apple-darwin.zip"
        sha256 "d3e478f43dd69ed04c8ed47ea3b42659324ccc7ab3c3d4876edd6e0f8219b6cc" 
      end
    end
  
    def install
      bin.install "blelora"
    end
  end