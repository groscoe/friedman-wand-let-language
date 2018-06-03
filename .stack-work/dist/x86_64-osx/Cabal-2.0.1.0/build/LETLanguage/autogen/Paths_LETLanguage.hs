{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_LETLanguage (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/groscoe/Documents/Box Sync/Projects/haskell/friedman_wand/LETLanguage/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/bin"
libdir     = "/Users/groscoe/Documents/Box Sync/Projects/haskell/friedman_wand/LETLanguage/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/lib/x86_64-osx-ghc-8.2.2/LETLanguage-0.1.0.0-HcrGvM1ab9bCkWUh1uHEee-LETLanguage"
dynlibdir  = "/Users/groscoe/Documents/Box Sync/Projects/haskell/friedman_wand/LETLanguage/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/lib/x86_64-osx-ghc-8.2.2"
datadir    = "/Users/groscoe/Documents/Box Sync/Projects/haskell/friedman_wand/LETLanguage/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/share/x86_64-osx-ghc-8.2.2/LETLanguage-0.1.0.0"
libexecdir = "/Users/groscoe/Documents/Box Sync/Projects/haskell/friedman_wand/LETLanguage/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/libexec/x86_64-osx-ghc-8.2.2/LETLanguage-0.1.0.0"
sysconfdir = "/Users/groscoe/Documents/Box Sync/Projects/haskell/friedman_wand/LETLanguage/.stack-work/install/x86_64-osx/lts-11.11/8.2.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "LETLanguage_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "LETLanguage_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "LETLanguage_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "LETLanguage_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "LETLanguage_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "LETLanguage_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
