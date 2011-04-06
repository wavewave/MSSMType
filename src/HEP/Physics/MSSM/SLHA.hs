{-# LANGUAGE NamedFieldPuns, RecordWildCards #-}

module HEP.Physics.MSSM.SLHA where

import qualified Data.ByteString as B
import Crypto.Classes
import Data.Digest.Pure.MD5 

data SLHA = SLHA { 
    slhaContent :: B.ByteString 
  } deriving Show

slhaMD5 :: SLHA -> MD5Digest
slhaMD5 (SLHA bstr)  = hash' bstr


{-

import Text.StringTemplate.Helpers 

import HEP.Physics.MSSM.OutputPhys

render :: String -> [(String,String)] -> String
render = flip render1 

pp = show

outputPhysToSLHA :: String -> OutputPhys -> String 
outputPhysToSLHA tmpl OutputPhys {..} = 
  render tmpl [ ("mass_Mh"  , pp mass_Mh  )
              , ("mass_MHH" , pp mass_MHH )
              , ("mass_MH3" , pp mass_MH3 )
              , ("mass_MHc" , pp mass_MHc )
              , ("mass_MNE1", pp mass_MNE1)
              , ("mass_MNE2", pp mass_MNE2)
              , ("mass_MNE3", pp mass_MNE3)
              , ("mass_MNE4", pp mass_MNE4)
              , ("mass_MC1" , pp mass_MC1 )
              , ("mass_MC2" , pp mass_MC2 )
              , ("mass_MSG" , pp mass_MSG ) 
              , ("mass_MSuL", pp mass_MSuL)
              , ("mass_MSdL", pp mass_MSdL)
              , ("mass_MSeL", pp mass_MSeL)
              , ("mass_MSne", pp mass_MSne)
              , ("mass_MSuR", pp mass_MSuR)
              , ("mass_MSdR", pp mass_MSdR)
              , ("mass_MSeR", pp mass_MSeR)
              , ("mass_MScL", pp mass_MScL)
              , ("mass_MSsL", pp mass_MSsL)
              , ("mass_MSmL", pp mass_MSmL)
              , ("mass_MSnm", pp mass_MSnm) 
              , ("mass_MScR", pp mass_MScR)
              , ("mass_MSsR", pp mass_MSsR)
              , ("mass_MSmR", pp mass_MSmR)
              , ("mass_MSt1", pp mass_MSt1)
              , ("mass_MSb1", pp mass_MSb1)
              , ("mass_MSl1", pp mass_MSl1)
              , ("mass_MSn1", pp mass_MSn1)
              , ("mass_MSt2", pp mass_MSt2)
              , ("mass_MSb2", pp mass_MSb2)
              , ("mass_MSl2", pp mass_MSl2) ] -}