module Data.Time.PrettySpec where

import Data.Time
import Data.Time.Pretty
import Test.Hspec

spec :: Spec
spec = describe "System.Time.Pretty" $ do
    describe "renderDay" $ do
        it "renders a Day" $
            renderDay (fromGregorian 2012 1 5)
            `shouldBe` "January  5, 2012"
        it "renders a UTCTime" $
            renderDay
                (UTCTime
                    (fromGregorian 2012 1 5)
                    0)
            `shouldBe` "January  5, 2012"
    describe "renderTime12" $ do
        it "renders a TimeOfDay" $
            renderTime12 (TimeOfDay 15 23 0)
            `shouldBe` "03:23:00 PM"
    describe "renderTime24" $ do
        it "renders a TimeOfDay" $
            renderTime24 (TimeOfDay 15 23 0)
            `shouldBe` "15:23:00"
