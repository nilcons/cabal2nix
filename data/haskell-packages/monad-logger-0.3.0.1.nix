{ cabal, conduit, fast-logger, monad-control, mtl, resourcet, text
, transformers, transformers-base
}:

cabal.mkDerivation (self: {
  pname = "monad-logger";
  version = "0.3.0.1";
  sha256 = "05pwccs2f5qn22cwvzaiw6bflyxl3avrl89y737rjcsw6755r5sr";
  buildDepends = [
    conduit fast-logger monad-control mtl resourcet text transformers
    transformers-base
  ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/kazu-yamamoto/logger";
    description = "A class of monads which can log messages";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
