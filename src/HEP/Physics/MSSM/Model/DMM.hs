module HEP.Physics.MSSM.Model.DMM where 

import HEP.Physics.MSSM.Model.Common

data DMMInput = DMMInput { dmm_alpham :: Double
                         , dmm_alphag :: Double
                         , dmm_M0     :: Double
                         , dmm_Mmess  :: Double 
                         , dmm_tanb   :: Double
                         , dmm_sgnMu  :: Sign
                         , dmm_N5pair :: Int
                         , dmm_N10pair :: Int
                         , dmm_N24    :: Int
                         , dmm_nHu    :: Double
                         , dmm_nHd    :: Double
                         , dmm_nQ     :: Double
                         , dmm_nU     :: Double
                         , dmm_nD     :: Double
                         , dmm_nL     :: Double
                         , dmm_nE     :: Double
                         } 
              deriving (Show, Eq, Ord)
              
           