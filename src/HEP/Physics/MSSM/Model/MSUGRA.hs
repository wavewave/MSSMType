{-# LANGUAGE ScopedTypeVariables, RecordWildCards, GeneralizedNewtypeDeriving #-}

module HEP.Physics.MSSM.Model.MSUGRA where

newtype Sign = Sign Bool 
    deriving (Show,Eq,Ord,Enum)

-- | 
sgnplus :: Sign 
sgnplus = Sign True 

-- |
sgnminus :: Sign 
sgnminus = Sign False 

-- | 
toInt :: Sign -> Int 
toInt (Sign True) = 1 
toInt (Sign False) = -1

-- | 
data MSUGRAInput = MSUGRAInput { mSUGRA_m0 :: Double
                               , mSUGRA_m12 :: Double
                               , mSUGRA_a0 :: Double
                               , mSUGRA_tanb :: Double 
                               , mSUGRA_sgnmu :: Sign }

