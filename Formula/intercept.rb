class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.1/intercept-1.0.1-darwin-arm64.tar.gz"
      sha256 "6c0d0f50c5c461f81cb59364b21b625305fe466783fb5f10a5d09b6409cbddc2"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.1/intercept-1.0.1-darwin-amd64.tar.gz"
      sha256 "bf6a9af60de936253087773e01bb7b1af9e19d53eaaea10dcdca3bcd35e407bc"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.1/intercept-1.0.1-linux-arm64.tar.gz"
      sha256 "abda05b308509c401430a211d2909103fbac3077ace47658f9a0ff1d144327d5"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.1/intercept-1.0.1-linux-amd64.tar.gz"
      sha256 "fb3cc06fe944820c09dd875e6d1a5a8c709790dda24b5ded83557abe7732d2b4"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
