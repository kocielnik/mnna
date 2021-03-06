#!/usr/bin/env stack
-- stack --install-ghc --resolver lts-12.26 script

-- Source: http://www-cs-students.stanford.edu/~blynn/haskell/brain.html

import Codec.Compression.GZip (decompress)
import qualified Data.ByteString.Lazy as BS
import Data.Functor
import System.Random

render n = let s = " .:oO@" in s !! (fromIntegral n * length s `div` 256)

main = do
  s <- decompress <$> BS.readFile "train-images-idx3-ubyte.gz"
  l <- decompress <$> BS.readFile "train-labels-idx1-ubyte.gz"
  n <- (`mod` 60000) <$> randomIO
  putStr . unlines $
    [(render . BS.index s . (n*28^2 + 16 + r*28 +)) <$> [0..27] | r <- [0..27]]
  print $ BS.index l (n + 8)
