class Blelora < Formula
    version "0.1.1"
    desc "A command-line utility written in Rust that supports Device Firmware Updates (DFU) for nRF52 devices running Adafruit_nRF52_Bootloader."
    homepage "https://github.com/blelora/blelora-cli"

    if OS.mac?
      if Hardware::CPU.arm?
        url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_aarch64-apple-darwin.zip"
        sha256 "eb1c46419f79fc7ecbccdc4cadfccd3c7b424b982807d6a86d659a00588962d0" 
      else
        url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_x86_64-apple-darwin.zip"
        sha256 "d430bae945a1c0a47e01831f866498763dbbf6c59a1036efe9fa6853821ff786" 
      end
    end
  
    def install
      bin.install "blelora"
    end
  end