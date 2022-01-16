class Blelora < Formula
    version "0.1.0"
    desc "A command-line utility written in Rust that supports Device Firmware Updates (DFU) for nRF52 devices running Adafruit_nRF52_Bootloader."
    homepage "https://github.com/blelora/blelora-cli"

    if OS.mac?
      url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_x86_64-apple-darwin.zip"
      sha256 "1aad79892e3e55761b21ea0d403e31e29b553366fc58c46d2fd02213ed85d445" 
    end
  
    def install
      bin.install "blelora"
    end
  end