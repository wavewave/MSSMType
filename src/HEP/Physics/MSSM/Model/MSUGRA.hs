{-# LANGUAGE ScopedTypeVariables, RecordWildCards, GeneralizedNewtypeDeriving #-}

module HEP.Physics.MSSM.Model.MSUGRA where

import HEP.Physics.MSSM.Model.Common

-- | 
data MSUGRAInput = MSUGRAInput { mSUGRA_m0 :: Double
                               , mSUGRA_m12 :: Double
                               , mSUGRA_a0 :: Double
                               , mSUGRA_tanb :: Double 
                               , mSUGRA_sgnmu :: Sign }

