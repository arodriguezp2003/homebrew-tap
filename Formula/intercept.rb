class Intercept < Formula
  desc "HTTP reverse proxy with real-time traffic inspection and response mocking"
  homepage "https://intercepthq.com"
  version "1.0.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-arm64.tar.gz"
      sha256 "8f3d3aa9bf5daad52b1c983bdd04117271423601afe955dbfb4ff67048772172"

      def install
        bin.install "intercept-darwin-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-darwin-amd64.tar.gz"
      sha256 "8872fa48514ac5be6f33cc613f03e023cd5046a669e09f12a40ef000a24d89d0"

      def install
        bin.install "intercept-darwin-amd64" => "intercept"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-arm64.tar.gz"
      sha256 "a9318fa4cdb665a52dd6942667183e7aef40a4a9aea4d17d4c05d5ae30915034"

      def install
        bin.install "intercept-linux-arm64" => "intercept"
      end
    else
      url "https://github.com/arodriguezp2003/intercepthq/releases/download/v1.0.0/intercept-1.0.0-linux-amd64.tar.gz"
      sha256 "d215a49a435791eeb26450f242d7974fcbe2468a31bbe3589849069b59b8aeef"

      def install
        bin.install "intercept-linux-amd64" => "intercept"
      end
    end
  end

  test do
    assert_match "intercept", shell_output("#{bin}/intercept --version")
  end
end
