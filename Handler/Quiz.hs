module Handler.Quiz (getQuizR) where

import Import

-- This is a handler function for the GET request method on the CoverR
-- resource pattern. All of your resource patterns are defined in
-- config/routes
--
-- The majority of the code you will write in Yesod lives in these handler
-- functions. You can spread them across multiple files if you are so
-- inclined, or create a single monolithic file.
getQuizR :: Handler Html
getQuizR = defaultLayout $ do
        setTitle "Funpaalaクイズ"
	let someList = ["hello", "darkness"] :: [String]
        $(widgetFile "quiz")
