class Blelora < Formula
    version "0.1.0"
    desc "A command-line utility written in Rust that supports Device Firmware Updates (DFU) for nRF52 devices running Adafruit_nRF52_Bootloader."
    homepage "https://github.com/blelora/blelora-cli"

    if OS.mac?
      if Hardware::CPU.arm?
        url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_aarch64-apple-darwin.zip"
        sha256 "364689241672873167059b98006938c86b8c001c5f7393bc7c0d4dcd7e117874" 
      else
        url "https://github.com/blelora/blelora-cli/releases/download/#{version}/blelora-cli_#{version}_x86_64-apple-darwin.zip"
        sha256 "f2bf1070e802350e3ab2bf8ca931d90df9bf8fe410112ff6532c1c14cf2cede7" 
      end
    end
  
    def install
      bin.install "blelora"
    end
  end