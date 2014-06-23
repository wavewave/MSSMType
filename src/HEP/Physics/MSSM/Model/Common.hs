module HEP.Physics.MSSM.Model.Common where 

newtype Sign = Sign Bool 
    deriving (Show,Eq,Ord)

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
fromInt :: Int -> Sign
fromInt i = Sign (i >= 0) 
