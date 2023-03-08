--Poker Table V 15
--[[
--function saveButtonAttributes()
--   saveLoButtonAttributes = UI.getAttributes("FunctionPicker_Wh_Lo")
--   saveLoButtonAttributes = UI.getAttributes("FunctionPicker_Wh_hi")
--   saveLoButtonAttributes = UI.getAttributes("FunctionPicker_Wh_Both")
--   saveLoButtonAttributes = UI.getAttributes("FunctionPicker_Wh_In")
--   saveLoButtonAttributes = UI.getAttributes("FunctionPicker_Wh_Out")
--end

function updateTransactionLog(playerColor, table, transaction, value)
--  print(playerColor, table, transaction, value)
--  transactionLog.insert = {playerColor, table, transaction, value}
--  print("Log")
--  printTable(transactionLog)

--   file = io.output("TransactionLog.lua", "w+")
--   io.write("-- End of the test.lua file")
--   io.close(file)
end

local function main(event)
   local audit = db:table('audit')
   local chg
   if event.new ~= nil then
       chg = event.new
   end
   if chg == nil then
       chg = {}
   end
   if event.old ~= nil then
       for k, v in pairs(event.old) do
           chg['old_'..k] = v
       end
   end
   chg.type = event.type
   chg.tbl = event.name
   chg.logtime = db:now()
   return audit:insert(chg)
   print("A: ", audit)
end
--]]

testingModeIsActive = false
makeObjectsVisible  = false

--   pokerCube.AssetBundle.playTriggerEffect(0) -- Jeopardy
--   pokerCube.AssetBundle.playTriggerEffect(1) -- Chime
--   pokerCube.AssetBundle.playTriggerEffect(2) -- One Chip
--   pokerCube.AssetBundle.playTriggerEffect(3) -- Chips 1
--   pokerCube.AssetBundle.playTriggerEffect(4) -- Chips 2
--   pokerCube.AssetBundle.playTriggerEffect(5) -- Chips 3
--   pokerCube.AssetBundle.playTriggerEffect(6) -- Reject 1
--   pokerCube.AssetBundle.playTriggerEffect(7) -- Reject 2
--   pokerCube.AssetBundle.playTriggerEffect(8) -- Alert
--   pokerCube.AssetBundle.playTriggerEffect(9) -- Chime Downpail
--   pokerCube.AssetBundle.playTriggerEffect(10) -- Applause
--   pokerCube.AssetBundle.playTriggerEffect(11) -- Button Push
--   pokerCube.AssetBundle.playTriggerEffect(12) -- Select

noteText = "Start of Game Log"


WhiteCards = { --used for sorting player's hands.
      name = "White",    --players color name

      upCard1Used = false,
      upCard2Used = false,
      upCard3Used = false,
      upCard4Used = false,
      upCard1 = {01.8, 0.97, -24.0},
      upCard2 = {04.7, 0.97, -24.0},
      upCard3 = {07.6, 0.97, -24.0},
      upCard4 = {10.5, 0.97, -24.0},
      upCard5 = {13.4, 0.97, -24.0},
      upCard6 = {16.8, 0.97, -24.0},
      upCard7 = {19.7, 0.97, -24.0},
      handCard1 = {01.8, 3.0, -24.0},
      handCard2 = {04.7, 3.0, -24.0},
      handCard3 = {07.6, 3.0, -24.0},
      handCard4 = {10.5, 3.0, -24.0},
      handCard5 = {13.4, 3.0, -24.0},
      handCard6 = {16.3, 3.0, -24.0},
      handCard7 = {19.2, 3.0, -24.0},
      rotation = {0, 180, 0},
      target = {1.8, 0, -17}
     }
RedCards = { --used for sorting player's hands.
    name = "Red",    --players color name
    upCard1Used = false,
    upCard2Used = false,
    upCard3Used = false,
    upCard4Used = false,
    upCard1 = {-19.7, 0.97, -24.0},
    upCard2 = {-16.8, 0.97, -24.0},
    upCard3 = {-13.9, 0.97, -24.0},
    upCard4 = {-11.0, 0.97, -24.0},
    upCard5 = {-08.1, 0.97, -24.0},
    upCard6 = {-04.7, 0.97, -24.0},
    upCard7 = {-01.8, 0.97, -24.0},
    handCard1 = {-19.2, 3.0, -28.0},
    handCard2 = {-16.3, 3.0, -28.0},
    handCard3 = {-13.4, 3.0, -28.0},
    handCard4 = {-10.5, 3.0, -28.0},
    handCard5 = {-07.6, 3.0, -28.0},
    handCard6 = {-04.7, 3.0, -28.0},
    handCard7 = {-01.8, 3.0, -28.0},
    rotation = {0, 180, 0},
    target = {-19.7, 0, -17}
    }
OrangeCards = { --used for sorting player's hands.
       name = "Orange",    --players color name
       upCard1Used = false,
       upCard2Used = false,
       upCard3Used = false,
       upCard4Used = false,
       upCard1 = {-24.0, 0.97, -01.8},
       upCard2 = {-24.0, 0.97, -04.7},
       upCard3 = {-24.0, 0.97, -07.6},
       upCard4 = {-24.0, 0.97, -10.5},
       upCard5 = {-24.0, 0.97, -13.4},
       upCard6 = {-24.0, 0.97, -16.8},
       upCard7 = {-24.0, 0.97, -19.8},
       handCard1 = {-28.0, 3.0, -01.8},
       handCard2 = {-28.0, 3.0, -04.7},
       handCard3 = {-28.0, 3.0, -07.6},
       handCard4 = {-28.0, 3.0, -10.5},
       handCard5 = {-28.0, 3.0, -13.4},
       handCard6 = {-28.0, 3.0, -16.3},
       handCard7 = {-28.0, 3.0, -19.2},
       rotation = {0, 270, 0},
       target = {-17, 0, -01.8}

     }
YellowCards = { --used for sorting player's hands.
       name = "Yellow",    --players color name
       upCard1Used = false,
       upCard2Used = false,
       upCard3Used = false,
       upCard4Used = false,
       upCard1 = {-24.0, 0.97, 19.8},
       upCard2 = {-24.0, 0.97, 16.9},
       upCard3 = {-24.0, 0.97, 14.0},
       upCard4 = {-24.0, 0.97, 11.1},
       upCard5 = {-24.0, 0.97, 08.2},
       upCard6 = {-24.0, 0.97, 04.8},
       upCard7 = {-24.0, 0.97, 01.8},
       handCard1 = {-28.0, 3.0, 19.2},
       handCard2 = {-28.0, 3.0, 16.3},
       handCard3 = {-28.0, 3.0, 13.4},
       handCard4 = {-28.0, 3.0, 10.5},
       handCard5 = {-28.0, 3.0, 07.6},
       handCard6 = {-28.0, 3.0, 04.8},
       handCard7 = {-28.0, 3.0, 01.8},
       rotation = {0, 270, 0},
       target = {-17, 0, 19.8}
      }
BlueCards = { --used for sorting player's hands.
     name = "Blue",    --players color name
     upCard1Used = false,
     upCard2Used = false,
     upCard3Used = false,
     upCard4Used = false,
     upCard1 = {19.7, 0.97, 24.0},
     upCard2 = {16.8, 0.97, 24.0},
     upCard3 = {13.9, 0.97, 24.0},
     upCard4 = {11.0, 0.97, 24.0},
     upCard5 = {08.1, 0.97, 24.0},
     upCard6 = {04.7, 0.97, 24.0},
     upCard7 = {01.8, 0.97, 24.0},
     handCard1 = {19.2, 3.0, 28.0},
     handCard2 = {16.3, 3.0, 28.0},
     handCard3 = {13.4, 3.0, 28.0},
     handCard4 = {10.5, 3.0, 28.0},
     handCard5 = {07.6, 3.0, 28.0},
     handCard6 = {04.7, 3.0, 28.0},
     handCard7 = {01.8, 3.0, 28.0},
     rotation = {0, 0, 0},
     target = {19.7, 0, 17}

    }
PurpleCards = { --used for sorting player's hands.
     name = "Purple",    --players color name
     upCard1Used = false,
     upCard2Used = false,
     upCard3Used = false,
     upCard4Used = false,
     upCard1 = {24.0, 0.97, 01.8},
     upCard2 = {24.0, 0.97, 04.7},
     upCard3 = {24.0, 0.97, 07.6},
     upCard4 = {24.0, 0.97, 10.5},
     upCard5 = {24.0, 0.97, 13.4},
     upCard6 = {24.0, 0.97, 16.8},
     upCard7 = {24.0, 0.97, 19.8},
     handCard1 = {28.0, 3.0, 01.8},
     handCard2 = {28.0, 3.0, 04.7},
     handCard3 = {28.0, 3.0, 07.6},
     handCard4 = {28.0, 3.0, 10.5},
     handCard5 = {28.0, 3.0, 13.4},
     handCard6 = {28.0, 3.0, 16.3},
     handCard7 = {28.0, 3.0, 19.2},
     rotation = {0, 90, 0},
     target = {17, 0, 01.8}

    }
PinkCards = { --used for sorting player's hands.
     name = "Pink",    --players color name
     upCard1Used = false,
     upCard2Used = false,
     upCard3Used = false,
     upCard4Used = false,
     upCard1 = {24.0, 0.97, -19.7},
     upCard2 = {24.0, 0.97, -16.8},
     upCard3 = {24.0, 0.97, -13.9},
     upCard4 = {24.0, 0.97, -11.0},
     upCard5 = {24.0, 0.97, -08.1},
     upCard6 = {24.0, 0.97, -04.7},
     upCard7 = {24.0, 0.97, -01.8},
     handCard1 = {28.0, 3.0, -19.2},
     handCard2 = {28.0, 3.0, -16.3},
     handCard3 = {28.0, 3.0, -13.4},
     handCard4 = {28.0, 3.0, -10.5},
     handCard5 = {28.0, 3.0, -07.6},
     handCard6 = {28.0, 3.0, -04.7},
     handCard7 = {28.0, 3.0, -01.8},
     rotation = {0, 90, 0},
     target = {17, 0, -08.1}

    }

playernamelabels = {White  = "ce0690", -- labels for Player Names
                    Red    = "e10db7",
                    Orange = "b4b2d0",
                    Yellow = "17f43e",
                    Blue   = "054863",
                    Purple = "bbb6c8",
                    Pink   = "1a2645"}

betlabels = {White  = "ae5636", -- labels for betting values
             Red    = "855f0d",
             Orange = "62c72e",
             Yellow = "02e386",
             Blue   = "7908bc",
             Purple = "37cbdd",
             Pink   = "aad5ec"}

buylabels = {White  = "14a11e", -- labels for betting values
             Red    = "8ce780",
             Orange = "c15db2",
             Yellow = "ca78eb",
             Blue   = "0e0ce0",
             Purple = "969c6d",
             Pink   = "155862"}

wonlabels = {White  = "dc2d43", -- labels for betting values
             Red    = "09146b",
             Orange = "669dab",
             Yellow = "8cdfd7",
             Blue   = "e91d30",
             Purple = "2cab0c",
             Pink   = "377ae9"}


balancelabels = {White  = "e8d7f7", -- labels for Balance Values
                Red    = "017eb8",
                Orange = "4dff05",
                Yellow = "98173a",
                Blue   = "95fa9b",
                Purple = "d3bcd5",
                Pink   = "a7b4c5"}

threeFiveSevenStatuslabels = {White  = "e7ecca", -- labels for 357 Active values
                              Red    = "b1afcf",
                              Orange = "dd5b77",
                              Yellow = "373b13",
                              Blue   = "891109",
                              Purple = "9108ca",
                              Pink   = "007de9"}

declareStatusLabels = {White = "e39dac",
                      Red    = "639850",
                      Orange = "bed7e7",
                      Yellow = "ac0fa7",
                      Blue   = "264c91",
                      Purple = "ebf0f6",
                      Pink   = "37ba75"}

muck = "f4ae7e" --Zones for cards
deck = "0d7969"
--xToken1 = "b9a3dc"
--xToken2 = "5669f6"
--x-Token3 = "2e96c1"
--xToken4 = "9c41ae"
--xToken5 = "77730a"

playerCardZone  = {White  = "b8c133",
                  Red    = "e211ff",
                  Orange = "d5a559",
                  Yellow = "90e4f7",
                  Blue   = "67c2cf",
                  Purple = "62f539",
                  Pink   = "53cf22"}

-- Indicator Buttons
firstCardPosition       =   {-8.5, .97, 4.5}
secondCardPosition      =   {-5.6, .97, 4.5}
thirdCardPosition       =   {-2.7, .97, 4.5}
fourthCardPosition      =   { 0.2, .97, 4.5}
fifthCardPosition       =   { 3.1, .97, 4.5}
sixthCardPosition       =   { 6.0, .97, 4.5}
seventhCardPosition     =   { 8.9, .97, 4.5}
sixthCardPositionPlus   =   {11.8, .97, 4.5}
seventhCardPositionPlus =   {14.7, .97, 4.5}

dealerDisc = "8b5e4d"

seatColors = {"White", "Red", "Orange", "Yellow", "Blue", "Purple", "Pink"} --list of all colors, in order

-- The scripting hotkey (i.e. Numpad #) this tools is binding to.
scriptHotKey = 1

-- This is the reference order of card values and suits (as you want them to appear from left to right).
-- Values are labeled in the card Name, suits are labeled in the card Description.
-- NOTE:  Several example sort orders are shown below.
-- Only enable ONE set (whether from the included examples, or a custom one of your own).
-- If you have no suit names (i.e. Description field), just leave this as-is and set groupSuitMode = 0

-- New-Deck Order
refCardOrder = {"Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"}
refSuitOrder = {"Spades", "Hearts", "Diamonds", "Clubs"}


-- Reverse Index of refCardOrder
-- Used as a high performance method (i.e. no iteration) to find the index of a given value, such as:
-- return refCardOrderIndex["Seven"]
local refCardOrderIndex={}
for k,v in pairs(refCardOrder) do
 refCardOrderIndex[v]=k
end

-- Reverse Index of refSuitOrder
-- Used as a high performance method (i.e. no iteration) to find the index of a given value, such as:
-- return refSuitOrderIndex["Diamond"]
local refSuitOrderIndex={}
for k,v in pairs(refSuitOrder) do
 refSuitOrderIndex[v]=k
end
--					Sort Hand Tool Configuration End

function onLoad()
   print("New Load")
   updateClock()
   if  testingModeIsActive == true then print("Testing Mode Active") end

   UI.hide("ThreeFiveSevenPointsPanel")
   UI.hide("EndOfGamePaymentsPanel")
   -- XML = UI.GetXml()
   --print(XML)

   --A infinite bag which hold decks
   deckBag   = getObjectFromGUID("0d7969")
   xBag      = getObjectFromGUID("0a37ee")
   noBag     = getObjectFromGUID("ce9976")
   pokerCube = getObjectFromGUID("11fe91")

   if makeObjectsVisible == false then
      deckBag.setInvisibleTo({"White","Red","Orange","Yellow","Blue","Purple","Pink"})
      xBag.setInvisibleTo({"White","Red","Orange","Yellow","Blue","Purple","Pink"})
      noBag.setInvisibleTo({"White","Red","Orange","Yellow","Blue","Purple","Pink"})
      pokerCube.setInvisibleTo({"White","Red","Orange","Yellow","Blue","Purple","Pink"})
   end

   --A zone where the deck is placed.
   deckZone = getObjectFromGUID("945790")
   initializeVariables()
   initializeTablesAndLabels()
   clearDeck()
   obtainDeck()
   checkForDeck()
   updateMessage("Select A Game")
end
--function onSave()
--   log("onSave triggered")
--end

function updateClock()
   function updateClockCoroutine()
       while true do
           coroutine.yield(0)
           UI.setAttribute("Clock",  "text", os.date("%X"))
       end
   return 1
   end
   startLuaCoroutine(Global,"updateClockCoroutine")
end

function testingMode(_,value,_)
  if    value == "True" then
        testingModeIsActive = true
        attributeTable = {text = "✓ Testing Mode", textColor = "White"}
        UI.setAttributes("TestingMode", attributeTable)
        UI.setAttribute("ColorsPanel",  "visibility", "White|Red|Orange|Yellow|Blue|Purple|Pink")
   else testingModeIsActive = false
        attributeTable = {text = "Testing Mode", textColor = "White"}
        UI.setAttributes("TestingMode", attributeTable)
        UI.setAttribute("ColorsPanel",  "visibility", " ")

   end
end--function

function runBiffelSimulation(player, value, id)
   if      value == "True" then
           simulationIsActive = true
           simulationCount = 1
           simulationRepeatCount = 1
           goalAchieved = false
           biffelSimulation(player, _, id)
           attributeTable = {text = "✓ Run Biffel Simulation", textColor = "White"}
           UI.setAttributes("RunBiffelSimulation", attributeTable)
   else    simulationIsActive = false
           attributeTable = {text = "Run Biffel Simulation", textColor = "White"}
           UI.setAttributes("RunBiffelSimulation", attributeTable)
end

end


function biffelSimulation(player, _, id)
    function biffelSimulationCoroutine()
   while simulationRepeatCount < 101 and
         simulationIsActive == true   do
       simulationCount = 1
       goalAchieved = false
       while goalAchieved == false do
           for i=1, 40  do coroutine.yield(0) end
           takeEntirePot(player, _, id)
           for i=1, 40  do coroutine.yield(0) end
           foldAllPlayers(player,_,id)
           for i=1, 40  do coroutine.yield(0) end
           resetDeck(player,_,id)
           for i=1, 40  do coroutine.yield(0) end
           dealBurnTheBiffel(player)
           for i=1, 40  do coroutine.yield(0) end
           dealBurnTheBiffel(player)
           for i=1, 40  do coroutine.yield(0) end
           dealBurnTheBiffel(player)
           for i=1, 40  do coroutine.yield(0) end
           dealBurnTheBiffel(player)
           for i=1, 40  do coroutine.yield(0) end
           dealBurnTheBiffel(player)
           for i=1, 40  do coroutine.yield(0) end
           dealBurnTheBiffel(player)
           for _,playerColor in ipairs(newSeatedPlayers) do
                handZone = #Player[playerColor].getHandObjects()
                if (handZone == 0) then
                    print(playerColor .. " is an empty hand")
                    goalAchieved = true
               end--if
           end--for
           simulationCount = simulationCount + 1
       end--while
       print("simulationCount: ", simulationCount," simulationRepeatCount: ", simulationRepeatCount)
       simulationRepeatCount = simulationRepeatCount + 1
   end--while
return 1
end
startLuaCoroutine(Global,"biffelSimulationCoroutine")
end

function convertColorToPlayerName(color)
   playerName = playerNameTable[color]
   return playerName
end--function

function startJeopardyTimer()
  print("startJeopardyTimer")
   if  jeopardyMusicActive == true then
       timerCountTime    = 0
       timerCurrentCount = 0
       timeString(timerCountTime - timerCurrentCount)
       timerRunning = Wait.time(timerCount,1)
   end
end

function stopJeopardyTimer()
  print("stopJeopardyTimer")
   jeopardyTimerStop = true
   if  jeopardyMusicPlaying == true then
       jeopardyMusicPlaying = false
       pokerCube.AssetBundle.playTriggerEffect(10) -- applause
   end
end

function jeopardyMusic(player,value,_)
  if    value == "True" then
        jeopardyMusicActive = true
        attributeTable = {text = "✓ Jeopardy Music", textColor = "White"}
        UI.setAttributes("JeopardyMusic", attributeTable)
   else jeopardyMusicActive = false
        attributeTable = {text = "Jeopardy Music", textColor = "White"}
        UI.setAttributes("JeopardyMusic", attributeTable)
        stopJeopardyTimer()
   end
end

function timerCount()
print("timerCount")
   timerCurrentCount = timerCurrentCount + 1
   local delta = timerCountTime + timerCurrentCount
   print("LDelta", delta)
   timeString(delta)
   print("Delta: ", delta)
   if delta > 29 then
      attributeTable = {visibility = "White|Red|Orange|Yellow|Blue|Purple|Pink"}
      UI.setAttributes("TimerDisplayPanel", attributeTable)
   end

   if jeopardyTimerStop == true then
      attributeTable = {visibility = " "}
      UI.setAttributes("TimerDisplayPanel", attributeTable)
      return
      end

   if delta ~= 0 then
      timerRunning = Wait.time(timerCount,1)
   end
   if delta == 30  or
      delta == 60  or
      delta == 90  or
      delta == 120 or
      delta == 150 or
      delta == 180 or
      delta == 210 or
      delta == 240 or
      delta == 270 or
      delta == 300 then
      pokerCube.AssetBundle.playTriggerEffect(0) -- Jeopardy Music
      jeopardyMusicPlaying = true
    end
end

function timeString(sec)
    local m = math.floor(sec/60)
    local s = sec%60
    attributeTable = {visibility = "White|Red|Orange|Yellow|Blue|Purple|Pink",
                      fontSize = "150",
                      text = string.format("%d:%02d",m,s)}
    UI.setAttributes("TimerDisplay", attributeTable)
end

function initializeVariables()
  displayPanel = {White   = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"},
                  Red     = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"},
                  Orange  = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"},
                  Yellow  = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"},
                  Blue    = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"},
                  Purple  = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"},
                  Pink    = {ActivePlayers = "True", Adjustment = "True", Betting = "True", Declare = "True", Games = "True", Hand = "True", Payment = "True", ShowAllHands = "True", Winning = "True"}}


  replaceCard = {White  = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""},
                Red     = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""},
                Orange  = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""},
                Yellow  = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""},
                Blue    = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""},
                Purple  = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""},
                Pink    = {Confirm = "", Name = "", Suit = "", Position = "", Location = "", GUID = ""}}
  mainDeck = {}
  mainDeck_GUID = nil

  newSeatedPlayers = {} -- table of seated players used for dealing cards and actions

  declareIndicators = {}

  pointsFor357 = {White  = 0.0,
                 Red     = 0.0,
                 Orange  = 0.0,
                 Yellow  = 0.0,
                 Blue    = 0.0,
                 Purple  = 0.0,
                 Pink    = 0.0}
    jeopardyMusicActive                  = true
    jeopardyMusicPlaying                 = false
    aGameIsActive                        = false
    amount                               = 0
    boxesAndCornersIsActive              = false
    bundlesIsActive                      = false
    burnTheBiffelIsActive                = false
    cincinnatiIsActive                   = false
    continueToNextRound                  = false
    dealingIsFinished                    = false
    declareIndicatorsAreFrozen           = false
    declareStatus                        = " "
    declaringIsFinished                  = false
    findTheFirstAceIsActive              = false
    gameRound                            = 0
    hiMaHasWon                           = false
    hiMaIsActive                         = false
    hiMaLosersPay                        = 0
    hiMaRound                            = 0
    deathWheelIsActive                   = false
    ironCrossIsActive                    = false
    jacksOrBetterIsActive                = false
    jacksOrBetterRound                   = 0
    lockout                              = false
    loMaHasWon                           = false
    loMaIsActive                         = false
    loMaLosersPay                        = 0
    loMaRound                            = 0
    omahaIsActive                        = false
    playerIsSeated                       = false
    replaceCardIndicatorsAreFrozen       = false
    replaceStatus                        = " "
    rowsAndColumnsWithASpitIsActive      = false
    slideIsActive                        = false
    sevenCardStudIsActive                = false
    sevenCardStudSpitReplaceSpitIsActive = false
    sevenXTwoIsActive                    = false
    slideIsActive                        = false
    threeFiveSevenStatus                 = " "
    threeFiveSevenIsActive               = false
    threeFiveSevenLosersPay              = 0
    threeFiveSevenRound                  = 0
    timeToDeclare                        = false
    timeToReplaceCard                    = false
    simulationIsActive                   = false
end--functionName


function initializeTablesAndLabels()
  playerNameTable = {White  = "Paul", -- These are the default names. They can be updated by the player in the game or on the Balamces Panel.
                     Red    = "MarkF",
                     Orange = "Susan",
                     Yellow = "Mitchell",
                     Blue   = "MarkH",
                     Purple = "Herb",
                     Pink   = "Marvin"}

--Initializes Balance Panel Names
UI.setAttribute("BalancesPanelPlayerNameWhite",  "text", playerNameTable["White"])
UI.setAttribute("BalancesPanelPlayerNameRed",    "text", playerNameTable["Red"])
UI.setAttribute("BalancesPanelPlayerNameOrange", "text", playerNameTable["Orange"])
UI.setAttribute("BalancesPanelPlayerNameYellow", "text", playerNameTable["Yellow"])
UI.setAttribute("BalancesPanelPlayerNameBlue",   "text", playerNameTable["Blue"])
UI.setAttribute("BalancesPanelPlayerNamePurple", "text", playerNameTable["Purple"])
UI.setAttribute("BalancesPanelPlayerNamePink",   "text", playerNameTable["Pink"])


 activePlayerTable = {White  = false, -- Indicates which player is still in a game
                      Red    = false,
                      Orange = false,
                      Yellow = false,
                      Blue   = false,
                      Purple = false,
                      Pink   = false}

  balanceTable = {White  = 0.00, -- Default player balances
                  Red    = 0.00,
                  Orange = 0.00,
                  Yellow = 0.00,
                  Blue   = 0.00,
                  Purple = 0.00,
                  Pink   = 0.00}

  betTable = {White  = 0.00, --The players total Bet
              Red    = 0.00,
              Orange = 0.00,
              Yellow = 0.00,
              Blue   = 0.00,
              Purple = 0.00,
              Pink   = 0.00}

  buyTable = {White  = 0.00, --The players total Buy
              Red    = 0.00,
              Orange = 0.00,
              Yellow = 0.00,
              Blue   = 0.00,
              Purple = 0.00,
              Pink   = 0.00}

   wonTable = {White  = 0.00, --The players total Won
               Red    = 0.00,
               Orange = 0.00,
               Yellow = 0.00,
               Blue   = 0.00,
               Purple = 0.00,
               Pink   = 0.00}
-- The fixed Bet Amounts
  betAmount = {White  = 0.00, -- The amount the player is betting
               Red    = 0.00,
               Orange = 0.00,
               Yellow = 0.00,
               Blue   = 0.00,
               Purple = 0.00,
               Pink   = 0.00}

  buyAmount = {White  = 0.00, -- The amount the play is buying
               Red    = 0.00,
               Orange = 0.00,
               Yellow = 0.00,
               Blue   = 0.00,
               Purple = 0.00,
               Pink   = 0.00}

-- The Input Amount
  inputAmount = {White  = 0.00,
                 Red    = 0.00,
                 Orange = 0.00,
                 Yellow = 0.00,
                 Blue   = 0.00,
                 Purple = 0.00,
                 Pink   = 0.00}

  loButtonActive = {White  = false,
                    Red    = false,
                    Orange = false,
                    Yellow = false,
                    Blue   = false,
                    Purple = false,
                    Pink   = false}

  hiButtonActive = {White  = false,
                    Red    = false,
                    Orange = false,
                    Yellow = false,
                    Blue   = false,
                    Purple = false,
                    Pink   = false}

  bothButtonActive = {White  = false,
                      Red    = false,
                      Orange = false,
                      Yellow = false,
                      Blue   = false,
                      Purple = false,
                      Pink   = false}

  inButtonActive = {White  = false,
                    Red    = false,
                    Orange = false,
                    Yellow = false,
                    Blue   = false,
                    Purple = false,
                    Pink   = false}

  outButtonActive = {White  = false,
                     Red    = false,
                     Orange = false,
                     Yellow = false,
                     Blue   = false,
                     Purple = false,
                     Pink   = false}

   confirmReplaceCardButtonActive = {White  = false,
                                     Red    = false,
                                     Orange = false,
                                     Yellow = false,
                                     Blue   = false,
                                     Purple = false,
                                     Pink   = false}

   playerHasAntied = {White  = false,
                      Red    = false,
                      Orange = false,
                      Yellow = false,
                      Blue   = false,
                      Purple = false,
                      Pink   = false}

--paymentTable = {White  = 0.00,
--               Red    = 0.00,
--               Orange = 0.00,
--               Yellow = 0.00,
--               Blue   = 0.00,
--               Purple = 0.00,
--               Pink   = 0.00}


   potAmount = 0
   updatePotDisplay(potAmount)
   for _,playerColor in ipairs(seatColors) do
       updateBalanceDisplay(playerColor, balanceTable[playerColor])
       updateBetDisplay(playerColor, betTable[playerColor])
       updateBuyDisplay(playerColor, buyTable[playerColor])

   end--if

  giveToColor = { }
end--function

function collapsePanel(player, value, id) -- Function to minimize the panel
  saveOffsetXY = UI.getAttribute("DisplayPanelsPanel_"..player.color, "offsetXY")
  print(saveOffsetXY)
  attributeTable = {height = "25"}
  UI.setAttributes("DisplayPanelsPanel_"..player.color, attributeTable )
end--function

function expandPanel(player, value, id) -- Function to minimize the panel
  attributeTable = {height = "400"}
  UI.setAttributes("DisplayPanelsPanel_"..player.color, attributeTable )
end--function


function displayAdminPanelPicker(player, value, panel)
   panelName = string.sub(panel, string.len("DisplayAdminPanelPicker_") + 1) -- Get panel name
   if     value == "False" then -- Panels are not displayed
          attributeTable = {text = "✓ "..panelName,  textcolor = "White"}
          UI.setAttributes("DisplayAdminPanelPicker_"..panelName, attributeTable )
          attributeTable = {visibility = " "}
          UI.setAttributes(panelName.."Panel", attributeTable )
   elseif value == "True" then -- Panels are displayed
          attributeTable = {text = panelName,  textcolor = "White"}
          UI.setAttributes("DisplayAdminPanelPicker_"..panelName, attributeTable )
          attributeTable = {visibility = "Admin"}
          UI.setAttributes(panelName.."Panel", attributeTable )
   end--if
end

function displayPanelPicker(player, value, panel)
   startOfPanelName = string.find (panel, "_")
   startOfPanelName = startOfPanelName + 1
   endOfPanelName   = string.find (panel, "_", startOfPanelName)
   endOfPanelName = endOfPanelName - 1
   panelName = string.sub(panel, startOfPanelName, endOfPanelName) -- Get panel name

   if     panelName == "None"  and
          value     == "False" then -- Panels are not displayed
          UI.setAttribute("DisplayPanelPicker_None".."_"..player.color, "text", "All")
          attributeTable = {text = "✓ Active Players", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_ActivePlayers".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Adjustment", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Adjustment".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Betting", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Betting".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Declare", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Declare".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Games", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Games".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Hand", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Hand".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Payment", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Payment".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Show All Hands", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_ShowAllHands".."_"..player.color, attributeTable)
          attributeTable = {text = "✓ Winning", textColor = "White", isOn = "false"}
          UI.setAttributes("DisplayPanelPicker_Winning".."_"..player.color, attributeTable)
   elseif panelName == "None" and
          value     == "True" then -- Panels are displayed
          UI.setAttribute("DisplayPanelPicker_None".."_"..player.color, "text", "None")
          attributeTable = {text = "Active Players", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_ActivePlayers".."_"..player.color, attributeTable)
          attributeTable = {text = "Adjustment", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Adjustment".."_"..player.color, attributeTable)
          attributeTable = {text = "Betting", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Betting".."_"..player.color, attributeTable)
          attributeTable = {text = "Declare", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Declare".."_"..player.color, attributeTable)
          attributeTable = {text = "Games", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Games".."_"..player.color, attributeTable)
          attributeTable = {text = "Hand", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Hand".."_"..player.color, attributeTable)
          attributeTable = {text = "Payment", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Payment".."_"..player.color, attributeTable)
          attributeTable = {text = "Show All Hands", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_ShowAllHands".."_"..player.color, attributeTable)
          attributeTable = {text = "Winning", textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_Winning".."_"..player.color, attributeTable)
   elseif value == "False" then -- Panels are not displayed
          attributeTable = {text = "✓ "..panelName, textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_"..panelName.."_"..player.color, attributeTable )
   elseif value == "True" then -- Panels are displayed
          attributeTable = {text = panelName, textColor = "White"}
          UI.setAttributes("DisplayPanelPicker_"..panelName.."_"..player.color, attributeTable )
   end--if

   if   panelName == "None" then
        displayPanel[player.color].ActivePlayers = value --save visibility setting for this player
        displayPanel[player.color].Adjustment    = value --save visibility setting for this player
        displayPanel[player.color].Betting       = value --save visibility setting for this player
        displayPanel[player.color].Declare       = value --save visibility setting for this player
        displayPanel[player.color].Games         = value --save visibility setting for this player
        displayPanel[player.color].Hand          = value --save visibility setting for this player
        displayPanel[player.color].Payment       = value --save visibility setting for this player
        displayPanel[player.color].ShowAllHands  = value --save visibility setting for this player
        displayPanel[player.color].Winning       = value --save visibility setting for this player
   else displayPanel[player.color][panelName]    = value --save visibility setting for this player
   end--if

   activePlayersPanelVisibility = ""
   adjustmentPanelVisibility    = ""
   bettingPanelVisibility       = ""
   declarePanelVisibility       = ""
   gamesPanelVisibility         = ""
   handPanelVisibility          = ""
   paymentPanelVisibility       = ""
   showAllHandsPanelVisibility  = ""
   winningPanelVisibility       = ""

   for color, _ in pairs(displayPanel) do -- create visibility parameters
       if displayPanel[color].ActivePlayers == "True" then activePlayersPanelVisibility = activePlayersPanelVisibility..color.."|" end
       if displayPanel[color].Adjustment    == "True" then adjustmentPanelVisibility    = adjustmentPanelVisibility..color.."|"    end
       if displayPanel[color].Betting       == "True" then bettingPanelVisibility       = bettingPanelVisibility..color.."|"       end
       if displayPanel[color].Declare       == "True" then declarePanelVisibility       = declarePanelVisibility..color.."|"       end
       if displayPanel[color].Games         == "True" then gamesPanelVisibility         = gamesPanelVisibility..color.."|"         end
       if displayPanel[color].Hand          == "True" then handPanelVisibility          = handPanelVisibility..color.."|"          end
       if displayPanel[color].Payment       == "True" then paymentPanelVisibility       = paymentPanelVisibility..color.."|"       end
       if displayPanel[color].ShowAllHands  == "True" then showAllHandsPanelVisibility  = showAllHandsPanelVisibility..color.."|"  end
       if displayPanel[color].Winning       == "True" then winningPanelVisibility       = winningPanelVisibility..color.."|"       end
   end--for

   activePlayersPanelVisibility = string.sub(activePlayersPanelVisibility, 1, -2) -- removes the last "|"
   adjustmentPanelVisibility    = string.sub(adjustmentPanelVisibility, 1, -2) -- removes the last "|"
   bettingPanelVisibility       = string.sub(bettingPanelVisibility, 1, -2) -- removes the last "|"
   declarePanelVisibility       = string.sub(declarePanelVisibility, 1, -2) -- removes the last "|"
   gamesPanelVisibility         = string.sub(gamesPanelVisibility, 1, -2) -- removes the last "|"
   handPanelVisibility          = string.sub(handPanelVisibility, 1, -2) -- removes the last "|"
   paymentPanelVisibility       = string.sub(paymentPanelVisibility, 1, -2) -- removes the last "|"
   showAllHandsPanelVisibility  = string.sub(showAllHandsPanelVisibility, 1, -2) -- removes the last "|"
   winningPanelVisibility       = string.sub(winningPanelVisibility, 1, -2) -- removes the last "|"

--   noPanels = ""
--   allPanels = "White|Red|Orange|Yellow|Blue|Purple|Pink"

   if panelName == "ActivePlayers" or panelName == "None" then UI.setAttribute("ActivePlayersPanel", "visibility", activePlayersPanelVisibility) end
   if panelName == "Adjustment"    or panelName == "None" then UI.setAttribute("AdjustmentPanel", "visibility", adjustmentPanelVisibility)       end
   if panelName == "Betting"       or panelName == "None" then UI.setAttribute("BettingPanel", "visibility", bettingPanelVisibility)             end
   if panelName == "Declare"       or panelName == "None" then UI.setAttribute("DeclarePanel", "visibility", declarePanelVisibility)             end
   if panelName == "Games"         or panelName == "None" then UI.setAttribute("GamesPanel", "visibility", gamesPanelVisibility)                 end
   if panelName == "Hand"          or panelName == "None" then UI.setAttribute("HandPanel", "visibility", handPanelVisibility)                   end
   if panelName == "Payment"       or panelName == "None" then UI.setAttribute("PaymentPanel", "visibility", paymentPanelVisibility)             end
   if panelName == "ShowAllHands"  or panelName == "None" then UI.setAttribute("ShowAllHandsPanel", "visibility", showAllHandsPanelVisibility)   end
   if panelName == "Winning"       or panelName == "None" then UI.setAttribute("WinningPanel", "visibility", winningPanelVisibility)             end
   displayActivePlayers()
end--function



function dealFirstAce(player,_,_)
  findTheFirstAceIsActive = true
--   clearDeck()
--   obtainDeck()
   newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
   startLuaCoroutine(Global,"dealTheCardsCoroutine")
 end

function dealTheCardsCoroutine()
   repeat
       for _,playerColor in ipairs(newSeatedPlayers) do
           deltCard = mainDeck.dealToColorWithOffset(fourthCardPosition, true, playerColor)
           for i=1, 60  do coroutine.yield(0) end
           cardName = deltCard.getName()
           if cardName == "Ace" then return 1 end
           removeTheCard(playerColor)
       end--for
   until( cardName == "Ace" )
end

function removeTheCard(playerColor)
   local cardZone = playerCardZone[playerColor]
   objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()
   for _, card in ipairs(objectsInPlayerCardZone) do
       muckCard(card)
   end--for
end--function

function assignPlayerName(player, value, id) -- Value is the player color
     if value == "Who Are You?" then
        return
     end--if
     -- check that name was not alreday assigned
     for color, _ in pairs(playerNameTable) do -- Search thru all players
         if value == playerNameTable[color] then return end
     end--For
   playerNameTable[player.color] = value
   updatePlayerNameLabel(player.color, playerNameTable[player.color])
end--function

function foldHand(player,_,_) -- The player variable will contain player info if comming from a button press or the player color if called internally
   function foldHandCoroutine() -- fold a players hand Coroutine
-- Prevent players from folding during 3-5-7. Allow players to folds only at the end.
       if  threeFiveSevenIsActive == true  and
           dealingIsFinished      == false and
           potAmount > 0                   then
           return 1
       end--if
-- Prevent players from folding during LoMa. Allow players to folds only at the end.
        if  loMaIsActive  == true  and
            potAmount > 0          then
            return 1
        end--if

       if      player.color == "White"   or player == "White"  then playerColor = "White"
       elseif  player.color == "Red"     or player == "Red"    then playerColor = "Red"
       elseif  player.color == "Orange"  or player == "Orange" then playerColor = "Orange"
       elseif  player.color == "Yellow"  or player == "Yellow" then playerColor = "Yellow"
       elseif  player.color == "Blue"    or player == "Blue"   then playerColor = "Blue"
       elseif  player.color == "Purple"  or player == "Purple" then playerColor = "Purple"
       elseif  player.color == "Pink"    or player == "Pink"   then playerColor = "Pink"
       end--if
   -- check to see if player has any cards in hand
--   for _, color in ipairs(getSeatedPlayers()) do
--       if  color == playerColor then
--           hand = Player[color].getHandObjects()
--       end
--   end
  -- Discard Hand
       hand = Player[playerColor].getHandObjects()
       local folded = false
       -- Discard  hand Cards
       if  #hand > 0 then
           folded = true
           for _, card in ipairs(hand) do
               muckCard(card)
          end--for
       end--if

       -- check to see if player has any  upCards
       local cardZone = playerCardZone[playerColor]
       objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()
       -- Discard  upCards
       if  #objectsInPlayerCardZone > 0 then
           folded = true
           for _, card in ipairs(objectsInPlayerCardZone) do
               muckCard(card)
           end--for
       end--if
       if folded == true then
          for i, color in ipairs(newSeatedPlayers) do
               if color == playerColor then
                  table.remove(newSeatedPlayers, i)
               end--if
           end--for
           betTable[playerColor]  = 0
           betAmount[playerColor] = 0
           updateBetDisplay(playerColor, betTable[playerColor])
           buyTable[playerColor]  = 0
           buyAmount[playerColor] = 0
           updateBuyDisplay(playerColor, buyTable[playerColor])

           if  threeFiveSevenIsActive == true then
               clearView357Cards()
           end--if
           if simulationIsActive == false then
             printToAll(convertColorToPlayerName(playerColor)..' folds their hand')
           end
               --reset declare status for folded players
           declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
           declareStatus.setValue(" ")
       end--if

       displayActivePlayers()

       if findTheFirstAceIsActive == true then
          findTheFirstAceIsActive = false
          clearDeck()
          obtainDeck()
       end--if
       for c=1, 40 do coroutine.yield(0) end
       return 1
   end--Coroutine function
   startLuaCoroutine(Global, "foldHandCoroutine")
end--function

function muckCard(card)
   function muckCardCoroutine()
       local muck = getObjectFromGUID(muck)
       if  muck == nil then
           print("No muck zone defined, aborting fold")
           return 1
       end
       local muck_pos = muck.getPosition()
       card.setPosition(muck_pos)
       card.setRotation(Vector(0, 0, 180))
       return 1
   end--function
   startLuaCoroutine(Global, "muckCardCoroutine")
end--function


function foldAllPlayers(player,_,_) -- Show all players hands
seatColors = {"White", "Red", "Orange", "Yellow", "Blue", "Purple", "Pink"} --I still do not know why this is needed.

   for k, seatColor in ipairs(seatColors) do -- Search thru all seated players
       foldHand(seatColor)
   end--for
end--function

function checkForDeck()
   local objectsInZone = deckZone.getObjects()
   for i, deck in ipairs(objectsInZone) do
       if deck.type == "Deck" then
          mainDeck = deck
          break
       end
   end
end

function clearDeck()
   local allObjects = getAllObjects()
   for _, object in ipairs(allObjects) do
       if object.type      == 'Card' or
          object.type      == 'Deck' or
          object.getName() == "X"    or
          object.getName() == "No"    then
          object.destruct()
       end
   end
end

--Reds a deck in tool's logic as "mainDeck", which is the deck dealt from
function onObjectEnterScriptingZone(zone, object)
   if zone        == deckZone and
      object.type == "Deck"   then
      mainDeck = object
   end
end

--pulls out a deck from a bag
function obtainDeck()
   deckBag.takeObject({position=deckZone.getPosition(), rotation={0,0,180},
   callback="shuffleNewDeck", callback_owner=Global})
end

function shuffleNewDeck()
   mainDeck.shuffle()
end

function onObjectSpawn(obj)
   obj.shuffle()
end

-- Displays Game Messages
function updateMessage(messageText, type)
   if  type == "Log" then
       UI.setAttribute("Message",  "text", messageText)
       print(messageText)
--       setNotes(messageText)
   else
       UI.setAttribute("Message",  "text", messageText)
   end
end

--moves card you hover over to muck when key is pressed.
function onScriptingButtonDown(index, playerColor)
   if   index == 1 then
        if Player[playerColor].getHoverObject().type == "Card" then
           local muck = getObjectFromGUID(muck)
           local muck_pos = muck.getPosition()
           local card=Player[playerColor].getHoverObject()
           card.setPosition(muck_pos)
           card.setRotation(Vector(0, 0, 180))
       end
   end
end

function betAmountPicker(player, _, id)
   pokerCube.AssetBundle.playTriggerEffect(4)
   betAmount[player.color] = string.sub(id, string.len("BetAmountPicker_") + 1)
   betAmount[player.color] = tonumber(betAmount[player.color])
   balanceTable[player.color] = balanceTable[player.color] -  betAmount[player.color]
   updateBalanceDisplay(player.color, balanceTable[player.color])
 --       updateTransactionLog(player.color, "balanceTable", "debit", betAmount[player.color])
   betTable[player.color] = betTable[player.color] +  betAmount[player.color]
   updateBetDisplay(player.color, betTable[player.color])
--       updateTransactionLog(player.color, "betTable", "credit", betAmount[player.color])
      --UpdateTransactionLog(player.color, "balanceTable", "Subtract", betAmount[player.color])
   potAmount = potAmount +  betAmount[player.color]
   if     loMaIsActive      == true and
          dealingIsFinished == true then
          loMaLosersPay = loMaLosersPay + betAmount[player.color]
          loMaHasWon = true
   elseif hiMaIsActive      == true and
          dealingIsFinished == true then
          hiMaLosersPay = hiMaLosersPay + betAmount[player.color]
          hiMaHasWon = true
   end
   updatePotDisplay(potAmount)
   betAmount[player.color] = 0
end

function buyAmountPicker(player, _, id)
   pokerCube.AssetBundle.playTriggerEffect(4)
   buyAmount[player.color] = string.sub(id, string.len("BuyAmountPicker_") + 1)
   buyAmount[player.color] = tonumber(buyAmount[player.color])
   balanceTable[player.color] = balanceTable[player.color] -  buyAmount[player.color]
   updateBalanceDisplay(player.color, balanceTable[player.color])
 --       updateTransactionLog(player.color, "balanceTable", "debit", buyAmount[player.color])
   buyTable[player.color] = buyTable[player.color] +  buyAmount[player.color]
   updateBuyDisplay(player.color, buyTable[player.color])
--       updateTransactionLog(player.color, "BuyTable", "credit", BuyAmount[player.color])
       --UpdateTransactionLog(player.color, "balanceTable", "Subtract", BuyAmount[player.color])
   potAmount = potAmount +  buyAmount[player.color]
   updatePotDisplay(potAmount)
   buyAmount[player.color] = 0
end

function autoAnte(playerColor)
   balanceTable[playerColor] = balanceTable[playerColor] - 2.00
   updateBalanceDisplay(playerColor, balanceTable[playerColor])
   potAmount = potAmount + 2.00
   updatePotDisplay(potAmount)
end

--[[
functionName(player, value, id)
player: A direct Player reference to the person that triggered the input.
value: The value sent by the input. A numeric value or a string, generally. This is not used by buttons~
id: This is only passed if the element was given an Id attribute in the XML.]]

function getInputAmount(player, value, id)
   inputAmount[player.color] = tonumber(value)
end

--function takeAmountFromPot(player, _, id)
--  if   potIsLocked then -- Locks Pot. To prevent simultanious updating.
--       return
--  else potIsLocked = true
--  end--

--   if     inputAmount[player.color] == nil or
--          inputAmount[player.color] == 0   then
--          potIsLocked = false
--          return
--   elseif inputAmount[player.color] <= potAmount then
--          potAmount = potAmount - inputAmount[player.color]
--          updateTransactionLog(player.color, "potAmount", "debit", inputAmount[player.color])
--          wonTable[player.color] = wonTable[player.color] + inputAmount[player.color]
--          updateTransactionLog(player.color, "betTable", "credit", inputAmount[player.color])
--          updatePotDisplay(potAmount)
--          updateWonDisplay(player.color, wonTable[player.color])
--          resetInputAmount(player.color)
--   elseif inputAmount[player.color] > potAmount then
--          resetInputAmount(player.color)
--   end
--   potIsLocked = false
--end
function takeEntirePot(player, _, id)
--   if dealingIsFinished      or
--      threeFiveSevenIsActive then
     wonTable[player.color] = wonTable[player.color] + potAmount
     updateWonDisplay(player.color, wonTable[player.color])
     updateMessage(convertColorToPlayerName(player.color).." took $"..potAmount.." from the Pot", "Log")
--   updateTransactionLog(player.color, "wonTable", "credit", potAmount)
     potAmount = 0
     updatePotDisplay(potAmount)
--   end
end

function takeHalfOfThePot(player, _, id)
   if   potIsLocked == true then -- Locks Pot. To prevent simultanious updating.
        return
   else potIsLocked = true
   end
   local remainingInPot = potAmount - round(potAmount/2, 2)
   local takeFromPot    = round(potAmount/2, 2)
   if     remainingInPot > takeFromPot then
          wonTable[player.color] = wonTable[player.color] + takeFromPot
          potAmount = takeFromPot
   elseif remainingInPot < takeFromPot then
          wonTable[player.color] = wonTable[player.color] + remainingInPot
          potAmount = remainingInPot
   elseif remainingInPot == takeFromPot then
          wonTable[player.color] = wonTable[player.color] + takeFromPot
          potAmount = takeFromPot
   end

   updateWonDisplay(player.color, wonTable[player.color])
   updateMessage(convertColorToPlayerName(player.color).." took $"..takeFromPot.." from the Pot", "Log")
   updatePotDisplay(potAmount)
   potIsLocked = false
end

function round(num, numDecimalPlaces)
  if numDecimalPlaces and numDecimalPlaces > 0 then
    local mult = 10^numDecimalPlaces
    return math.floor(num * mult + 0.5) / mult
  end
  return math.floor(num + 0.5)
end

function getRoyalties(player,_,_)
   if dealingIsFinished then
       pokerCube.AssetBundle.playTriggerEffect(4)
       for _,playerColor in ipairs(newSeatedPlayers) do
           if  player.color ~= playerColor then
               wonTable[player.color] = wonTable[player.color] + 1.00
               updateWonDisplay(player.color, wonTable[player.color])
               balanceTable[playerColor] = balanceTable[playerColor] - 1.00
               updateBalanceDisplay(playerColor, balanceTable[playerColor])
               updateMessage(convertColorToPlayerName(player.color).." received $1 Royalties from All Players", "Log")
           end
       end
   end
end

function takeFiftyCentsFromBet(player, _, id)

   if  betTable[player.color] >= 0.5 and
       potAmount >= 0.5               then --make sure the  pot has money to make the adjustment
       betTable[player.color] = betTable[player.color] - 0.50
       updateBetDisplay(player.color, betTable[player.color])
       balanceTable[player.color] = balanceTable[player.color] + 0.50
       updateBalanceDisplay(player.color, balanceTable[player.color])
       potAmount = potAmount - 0.50
       if     loMaIsActive      == true and
              dealingIsFinished == true then
              loMaLosersPay = loMaLosersPay - 0.50
       elseif hiMaIsActive      == true and
              dealingIsFinished == true then
              hiMaLosersPay = hiMaLosersPay - 0.50
       end
       updatePotDisplay(potAmount)
   end
end

function takeOneDollarFromBet(player, _, id)
   if  betTable[player.color] >= 1.0 and
       potAmount >= 1.0              then --make sure the  pot has money to make the adjustment
       betTable[player.color] = betTable[player.color] - 1.0
       updateBetDisplay(player.color, betTable[player.color])
       balanceTable[player.color] = balanceTable[player.color] + 1.00
       updateBalanceDisplay(player.color, balanceTable[player.color])
       potAmount = potAmount - 1.00
       if     loMaIsActive      == true and
              dealingIsFinished == true then
              loMaLosersPay = loMaLosersPay - 1.00
       elseif hiMaIsActive      == true and
              dealingIsFinished == true then
              hiMaLosersPay = hiMaLosersPay - 1.00
       end
       updatePotDisplay(potAmount)
   end
end

function takeFiftyCentsFromBuy(player, _, id)
   if  buyTable[player.color] >= 0.5 and
       potAmount > 0.5               then --make sure the  pot has money to make the adjustment
       buyTable[player.color] = buyTable[player.color] - 0.50
       updateBuyDisplay(player.color, buyTable[player.color])
       balanceTable[player.color] = balanceTable[player.color] + 0.50
       updateBalanceDisplay(player.color, balanceTable[player.color])
       potAmount = potAmount - 0.50
       updatePotDisplay(potAmount)
   end
end

function takeOneDollarFromBuy(player, _, id)
   if  buyTable[player.color] >= 1.0 and
       potAmount > 1.0               then --make sure the  pot has money to make the adjustment
       buyTable[player.color] = buyTable[player.color] - 1.0
       updateBuyDisplay(player.color, buyTable[player.color])
       balanceTable[player.color] = balanceTable[player.color] + 1.00
       updateBalanceDisplay(player.color, balanceTable[player.color])
       potAmount = potAmount - 1.00
       updatePotDisplay(potAmount)
   end
end

function resetInputAmount(color)
   inputAmount[color] = 0
   UI.setAttribute("InputAmount_"..color,     "text", "00.00")
   UI.setAttribute("GiveToSelection",  "value", "Select Player")
end

function takeAllWon(player, _, id)
   balanceTable[player.color] = balanceTable[player.color] + wonTable[player.color]
   updateBalanceDisplay(player.color, balanceTable[player.color])
--      updateTransactionLog(player.color, "balanceTable", "credit",  betTable[player.color])
   wonTable[player.color] = 0
   updateWonDisplay(player.color, wonTable[player.color])
end

function giveTo(player, _, id)
   if     inputAmount[player.color] == nil then
          return
   elseif inputAmount[player.color] > 100 then
          inputAmount[player.color] = 0
          resetInputAmount(player.color)
          return
   end--if
--Make sure giveToColor is seated

   playerIsSeated = false --You can only give money to a seated player
   for _,seatedColor in ipairs(getSeatedPlayers()) do
       if giveToColor[player.color] == seatedColor then
          playerIsSeated = true
       end--if
   end--for

   if  playerIsSeated == true           and
       inputAmount[player.color] > 0    then
       pokerCube.AssetBundle.playTriggerEffect(4)
       balanceTable[player.color] = balanceTable[player.color] - inputAmount[player.color]
       updateBalanceDisplay(player.color, balanceTable[player.color])
       wonTable[giveToColor[player.color]] = wonTable[giveToColor[player.color]] + inputAmount[player.color]
       updateWonDisplay(giveToColor[player.color], wonTable[giveToColor[player.color]])
       updateMessage(convertColorToPlayerName(player.color).." gave $"..tonumber(inputAmount[player.color]).." to "..convertColorToPlayerName(giveToColor[player.color]), "Log")
       resetInputAmount(player.color)

   end--if
end--function

function giveToSelection(player, value, _) -- Value is the player color
   if     value == "Paul"    then
          giveToColor[player.color] = "White"
   elseif value == "MarkF"     then
          giveToColor[player.color] = "Red"
   elseif value == "Susan"      then
          giveToColor[player.color] = "Orange"
   elseif value == "Mitchell" then
          giveToColor[player.color] = "Yellow"
   elseif value == "MarkH"      then
          giveToColor[player.color] = "Blue"
   elseif value == "Herb"     then
          giveToColor[player.color] = "Purple"
   elseif value == "Marvin"   then
          giveToColor[player.color] = "Pink"
   end--if
end--function


-- Updates the UI Balance Panel
function updateBalancesPanel(playerColor, field, update)
   if     field == "PlayerName" then
          UI.setAttribute("BalancesPanelPlayerName"..playerColor, "text", update)
   elseif field == "Balance" then
          UI.setAttribute("BalancesPanelBalance"..playerColor,    "text", update)
          UI.setAttribute("WinningPanelBalance"..playerColor,     "text", update)
   elseif field == "Bet" then
          UI.setAttribute("BalancesPanelBet"..playerColor,        "text", update)
   elseif field == "Buy" then
          UI.setAttribute("BalancesPanelBuy"..playerColor,        "text", update)
   elseif field == "Won" then
          UI.setAttribute("BalancesPanelWon"..playerColor,        "text", update)
   elseif field == "Pot" then
          UI.setAttribute("BalancesPanelPot",                     "text", update)
   end--if
   displayActivePlayers()
end--function

function updatePlayerName(_, value, id) --from Balances Panel Input button
   if value == nil or
      value == "" then
      return
   end--if
   local playerColor = ""
   if     id == "BalancesPanelPlayerNameWhite"  then playerColor = "White"
   elseif id == "BalancesPanelPlayerNameRed"    then playerColor = "Red"
   elseif id == "BalancesPanelPlayerNameOrange" then playerColor = "Orange"
   elseif id == "BalancesPanelPlayerNameYellow" then playerColor = "Yellow"
   elseif id == "BalancesPanelPlayerNameBlue"   then playerColor = "Blue"
   elseif id == "BalancesPanelPlayerNamePurple" then playerColor = "Purple"
   elseif id == "BalancesPanelPlayerNamePink"   then playerColor = "Pink"
   else   return
   end--if
   playerNameTable[playerColor] =  value
   updatePlayerNameLabel(playerColor, playerNameTable[playerColor])
end--function


function updatePlayerNameLabel(playerColor, playerName)
  playerNameLabel = getObjectFromGUID(playernamelabels[playerColor])
  if  playerNameLabel ~= nil and
     playerNameLabel ~= " " then
     playerNameLabel.setValue(playerName)
     updateBalancesPanel(playerColor, "PlayerName", playerName)
     totalEverything()
  end--if
end--function

function updateBalance(_, value, id) --from button
   if value == nil or
      value == "" then
      return
   end--if
   local playerColor = ""
   if     id == "BalancesPanelBalanceWhite"  then playerColor = "White"
   elseif id == "BalancesPanelBalanceRed"    then playerColor = "Red"
   elseif id == "BalancesPanelBalanceOrange" then playerColor = "Orange"
   elseif id == "BalancesPanelBalanceYellow" then playerColor = "Yellow"
   elseif id == "BalancesPanelBalanceBlue"   then playerColor = "Blue"
   elseif id == "BalancesPanelBalancePurple" then playerColor = "Purple"
   elseif id == "BalancesPanelBalancePink"   then playerColor = "Pink"
   else   return
   end--if
  balanceTable[playerColor] =  tonumber(value)
  updateBalanceDisplay(playerColor, balanceTable[playerColor])
end--function

function updateBalanceDisplay(playerColor, balance)
   if balance ~= 0 then
      balance = round(tonumber(balance), 2)
   end--if
   balanceLabel = getObjectFromGUID(balancelabels[playerColor])
   if  balanceLabel ~= nil and
       balanceLabel ~= " " then
       balanceLabel.setValue("$"..balance)
       updateBalancesPanel(playerColor, "Balance", balance)
       totalEverything()
   end--if
end


function updateBet(_, value, id) --from button
   if value == nil or
      value == "" then
      return
   end--if
   playerColor = ""
   if     id == "BalancesPanelBetWhite"  then playerColor = "White"
   elseif id == "BalancesPanelBetRed"    then playerColor = "Red"
   elseif id == "BalancesPanelBetOrange" then playerColor = "Orange"
   elseif id == "BalancesPanelBetYellow" then playerColor = "Yellow"
   elseif id == "BalancesPanelBetBlue"   then playerColor = "Blue"
   elseif id == "BalancesPanelBetPurple" then playerColor = "Purple"
   elseif id == "BalancesPanelBetPink"   then playerColor = "Pink"
   else   return
   end---if
   betTable[playerColor] =  tonumber(value)
   updateBetDisplay(playerColor, betTable[playerColor])
end--function

function updateBetDisplay(playerColor, amount)
   if amount ~= 0 then
      amount = round(tonumber(amount), 2)
   end
   betLabel = getObjectFromGUID(betlabels[playerColor])
   if betLabel ~= nil and
      betLabel ~= " " then
      betLabel.setValue("$"..amount)
      updateBalancesPanel(playerColor, "Bet", amount)
      totalEverything()
   end
end

function updateBuy(_, value, id) --from button
   if value == nil or
      value == "" then
      return
   end--if

   local playerColor = ""

   if     id == "BalancesPanelBuyWhite"  then playerColor = "White"
   elseif id == "BalancesPanelBuyRed"    then playerColor = "Red"
   elseif id == "BalancesPanelBuyOrange" then playerColor = "Orange"
   elseif id == "BalancesPanelBuyYellow" then playerColor = "Yellow"
   elseif id == "BalancesPanelBuyBlue"   then playerColor = "Blue"
   elseif id == "BalancesPanelBuyPurple" then playerColor = "Purple"
   elseif id == "BalancesPanelBuyPink"   then playerColor = "Pink"
   else   return
   end--if

   buyTable[playerColor] =  tonumber(value)
   updateBuyDisplay(playerColor, buyTable[playerColor])
end--function

function updateBuyDisplay(playerColor, amount)
   if amount ~= 0 then
      amount = round(tonumber(amount), 2)
   end
   buyLabel = getObjectFromGUID(buylabels[playerColor])
   if  buyLabel ~= nil and
       buyLabel ~= " " then
       buyLabel.setValue("$"..amount)
       updateBalancesPanel(playerColor, "Buy", amount)
       totalEverything()
   end
end

function updateWon(_, value, id) --from button
   if value == nil or
      value == "" then
      return
   end--if

   local playerColor = ""
   if     id == "BalancesPanelWonWhite"  then playerColor = "White"
   elseif id == "BalancesPanelWonRed"    then playerColor = "Red"
   elseif id == "BalancesPanelWonOrange" then playerColor = "Orange"
   elseif id == "BalancesPanelWonYellow" then playerColor = "Yellow"
   elseif id == "BalancesPanelWonBlue"   then playerColor = "Blue"
   elseif id == "BalancesPanelWonPurple" then playerColor = "Purple"
   elseif id == "BalancesPanelWonPink"   then playerColor = "Pink"
   else   return
   end--if

   wonTable[playerColor] =  tonumber(value)
   updateWonDisplay(playerColor, wonTable[playerColor])
end--function

function updateWonDisplay(playerColor, amount)
   if amount ~= 0 then
      amount = round(tonumber(amount), 2)
   end
   wonLabel = getObjectFromGUID(wonlabels[playerColor])
   if  wonLabel ~= nil and
       wonLabel ~= " " then
       wonLabel.setValue("$"..amount)
       updateBalancesPanel(playerColor, "Won", amount)
       totalEverything()
   end
end

function updatePotAmount(_, value, id) --from button
   if value == nil then
      return
   end--if
   potAmount =  tonumber(value)

   updatePotDisplay(potAmount)
end--function

function updatePotDisplay(potAmount)
   potAmount = round(tonumber(potAmount), 2)
   updateBalancesPanel(playerColor, "Pot", potAmount)
   UI.setAttribute("Pot",  "text", "POT = $"..potAmount)
   totalEverything()
end

function totalEverything()
   variance = 0
   for _,playerColor in ipairs(seatColors) do
      variance = variance
               + balanceTable[playerColor]
               + wonTable[playerColor]
   end--for

  variance = round(tonumber(variance), 2) + potAmount

  UI.setAttribute("BalancesPanelVariance",  "text", variance)
end--function

function onChangeGame(player, _, game)
   if  lockout == false then
       game = string.sub(game, string.len("GamePicker_") + 1)
       if     game == "3-5-7"                     then deal357(player)
       elseif game == "7CardStud"                 then deal7CardStud(player)
       elseif game == "7CardStudSpitReplaceSpit"  then deal7CardStudSpitReplaceSpit(player)
       elseif game == "7x2"                       then deal7x2(player)
       elseif game == "BoxesAndCorners"           then dealBoxesAndCorners(player)
       elseif game == "Bundles"                   then dealBundles(player)
       elseif game == "BurnTheBiffel"             then dealBurnTheBiffel(player)
       elseif game == "Cincinnati"                then dealCincinnati(player)
       elseif game == "DeathWheel"                then dealDeathWheel(player)
       elseif game == "IronCross"                 then dealIronCross(player)
       elseif game == "JacksOrBetter"             then dealJacksOrBetter(player)
       elseif game == "LoMa"                      then dealLoMa(player)
       elseif game == "HiMa"                      then dealHiMa(player)
       elseif game == "Omaha"                     then dealOmaha(player)
       elseif game == "RowsAndColumnsWithASpit"   then dealRowsAndColumnsWithASpit(player)
       elseif game == "Slide"                     then dealSlide(player)
       end--if
       lockout = true --locks out the button
       startLockoutTimer() --Star
   end--if
end--function

function declareFunction(player, _, declare) --Called when any declare button is pressed
   outCount, inCount, hiCount, loCount, bothCount = 0, 0, 0, 0, 0

   if  declareIndicatorsAreFrozen == false and --Usually called after all the cards are delt but there are exceptons
       timeToDeclare              == true  then
       declareIndicators[player.color] =  string.sub(declare, string.len("FunctionPicker_") + 4) --Update declare Table
       declareAFunction = declareIndicators[player.color].."ButtonPressed"
        _G[declareAFunction](player.color)
           -- Indicate which players have pressed a declare button
       local declareCount = 0
       for playerColor, _ in pairs(declareIndicators) do -- Search thru all players
           if   loButtonActive[playerColor]   == true  or
                hiButtonActive[playerColor]   == true  or
                bothButtonActive[playerColor] == true  or
                inButtonActive[playerColor]   == true  or
                outButtonActive[playerColor]  == true then
                declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
                declareStatus.TextTool.setFontColor(playerColor)
                declareStatus.TextTool.setFontSize(300)
                declareStatus.setValue("☺") --display Happy Face
                UI.setAttribute("ActivePlayersPanelDeclare"..playerColor,    "text", "☺")
                declareCount = declareCount + 1
                print(playerColor.." has declared")
           else declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
                declareStatus.TextTool.setFontColor("White")
                declareStatus.setValue(" ")
                UI.setAttribute("ActivePlayersPanelDeclare"..playerColor,    "text", " ")
                declareCount = declareCount - 1
                print(playerColor.." removes declare")
           end --if
       end --for

       if declareCount == 1  then
          startJeopardyTimer()
       end

       activePlayerCount = 0

       for _,active in ipairs(newSeatedPlayers) do -- Search thru all players
           handZone = #Player[active].getHandObjects()
           if (handZone > 0) then --If player has cards then they are an active player
               activePlayerCount = activePlayerCount + 1
           end --if
       end --for
       print("APC: ", activePlayerCount, " DC: ", declareCount)
       if  activePlayerCount == declareCount then  -- All players have declared so lets display the result
           updateMessage("Final Betting Round")
           stopJeopardyTimer()
           declaringIsFinished        = true
           declareIndicatorsAreFrozen = true
           if sevenCardStudIsActive                == true or
              sevenCardStudSpitReplaceSpitIsActive == true or
              sevenXTwoIsActive                    == true or
              boxesAndCornersIsActive              == true or
              bundlesIsActive                      == true or
              burnTheBiffelIsActive                == true or
              cincinnatiIsActive                   == true or
              deathWheelIsActive                   == true or
              ironCrossIsActive                    == true or
              omahaIsActive                        == true or
              rowsAndColumnsWithASpitIsActive      == true or
              slideIsActive                        == true then
              dealingIsFinished = true
           end

           printToAll("Declare Indicators are Locked")
           -- first let's only get counts for the indicators. We need the counts later.
           local inPlayerList = ""
           local loPlayerList = ""
           local hiPlayerList = ""
           local bothPlayerList = ""
           for playerColor, indicator in pairs(declareIndicators) do -- Search thru all players to display indicator
               if     indicator == "in" then
                      inCount = inCount + 1
                      if inCount == 1 then inPlayerList = playerNameTable[playerColor] end
                      if inCount  > 1 then inPlayerList = playerNameTable[playerColor]..", "..inPlayerList end
               elseif indicator == "out" then
                      outCount  = outCount  + 1
                      if outCount == 1 then outPlayerList = playerNameTable[playerColor] end
                      if outCount  > 1 then outPlayerList = playerNameTable[playerColor]..", "..outPlayerList end
               elseif indicator == "hi" then
                      hiCount   = hiCount   + 1
                      if hiCount == 1 then hiPlayerList = playerNameTable[playerColor] end
                      if hiCount  > 1 then hiPlayerList = playerNameTable[playerColor]..", "..hiPlayerList end
               elseif indicator == "lo" then
                      loCount   = loCount   + 1
                      if loCount == 1 then loPlayerList = playerNameTable[playerColor] end
                      if loCount  > 1 then loPlayerList = playerNameTable[playerColor]..", "..loPlayerList end
              elseif indicator == "both" then
                     bothCount = bothCount + 1
                     if bothCount == 1 then bothPlayerList = playerNameTable[playerColor] end
                     if bothCount  > 1 then bothPlayerList = playerNameTable[playerColor]..", "..bothPlayerList end
               end--if
           end--for

           for playerColor, indicator in pairs(declareIndicators) do -- Search thru all players to display indicator
               declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
               if     indicator == "in" then
                      declareStatus.TextTool.setFontColor(playerColor)
                      declareStatus.TextTool.setFontSize(300)
                      UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", "In")
               elseif indicator == "out" then
                      declareStatus.TextTool.setFontColor("Black")
                      declareStatus.TextTool.setFontSize(150)
                      attributeTable = {text="Out"}
                      if threeFiveSevenIsActive == true then attributeTable = {text = "Out", textColor="Black"} end  -- do not display "Out" on Active Players
                      UI.setAttributes("ActivePlayersPanelDeclare"..playerColor, attributeTable)
               elseif indicator == "hi" then
                      declareStatus.TextTool.setFontColor(playerColor)
                      declareStatus.TextTool.setFontSize(300)
                      UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", "Hi")
               elseif indicator == "lo" then
                      declareStatus.TextTool.setFontColor(playerColor)
                      declareStatus.TextTool.setFontSize(300)
                      UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", "Lo")
               elseif indicator == "both" then
                      declareStatus.TextTool.setFontColor(playerColor)
                      declareStatus.TextTool.setFontSize(300)
                      UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", "Both")
               end--if

               declareStatus.setValue(string.upper(indicator))

               if     indicator == "out"     and --automatically folds Ma for "Out".
                      (loMaIsActive == true  or
                       hiMaIsActive == true) then
                      foldHand(playerColor)
               elseif indicator == "in"     and --automatically shows Ma hand for "In".
                      (loMaIsActive == true or
                      hiMaIsActive == true) then
                      showHand(playerColor)
               elseif indicator == "out"             and --automatically folds 3-5-7 Hands Out on the last round.
                      threeFiveSevenIsActive == true and
                      dealingIsFinished      == true then
                      foldHand(playerColor)
               elseif indicator == "in"              and --automatically shows 3-5-7 Hands "In" on the last round unless only 1 player is "In".
                      threeFiveSevenIsActive == true and
                      inCount > 1                    and
                      dealingIsFinished      == true then
                      showHand(playerColor)
               end--if
           end--for
           if  threeFiveSevenIsActive == true then
               if     inCount == 0 then updateMessage("No Players are IN")
               elseif inCount == 1 then updateMessage(inPlayerList.." is IN")
               elseif inCount > 1  then
                      updateMessage(inPlayerList.." are IN")
                      printToAll("357 View Activated")
                      activateView357Cards()
               end--if
           end--if
       end--if
   end--if
   displayActivePlayers()
end--function

function loButtonPressed(playerColor)
  if  hiLoBothGameIsActive then
      buttonId = "FunctionPicker_"..string.sub(playerColor,1,2).."_"
      if  loButtonActive[playerColor]  then -- Button was in ACTIVE mode. Return to INACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="Lo",textColor="White"}
          UI.setAttributes(buttonId.."Lo", attributeTable)
          loButtonActive[playerColor] =  false
      else -- Button was pressed. Put in ACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="✓ Lo",textColor="White"}
          UI.setAttributes(buttonId.."Lo", attributeTable)
          attributeTable = {text="Hi",textColor="White"}
          UI.setAttributes(buttonId.."Hi", attributeTable)
          attributeTable = {text="Both",textColor="White"}
          UI.setAttributes(buttonId.."Both", attributeTable)
          loButtonActive[playerColor]    = true
          hiButtonActive[playerColor]    = false
          bothButtonActive[playerColor]  = false
      end
  end
end

function hiButtonPressed(playerColor)
  if hiLoBothGameIsActive then
     buttonId = "FunctionPicker_"..string.sub(playerColor,1,2).."_"
     if  hiButtonActive[playerColor]  then -- Button was in ACTIVE mode. Return to INACTIVE mode.
         pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
         attributeTable = {text="Hi",textColor="White"}
         UI.setAttributes(buttonId.."Hi", attributeTable)
         hiButtonActive[playerColor] =  false
     else -- Button was pressed. Put in ACTIVE mode.
         pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
         attributeTable = {text="Lo",textColor="White"}
         UI.setAttributes(buttonId.."Lo", attributeTable)
         attributeTable = {text="✓ Hi",textColor="White"}
         UI.setAttributes(buttonId.."Hi", attributeTable)
         attributeTable = {text="Both",textColor="White"}
         UI.setAttributes(buttonId.."Both", attributeTable)
         loButtonActive[playerColor]   = false
         hiButtonActive[playerColor]    = true
         bothButtonActive[playerColor]  = false
      end
  end
end

function bothButtonPressed(playerColor)
  if  hiLoBothGameIsActive then
      buttonId = "FunctionPicker_"..string.sub(playerColor,1,2).."_"
      if  bothButtonActive[playerColor] == true then -- Button was in ACTIVE mode. Return to INACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="Both",textColor="White"}
          UI.setAttributes(buttonId.."Both", attributeTable)
          bothButtonActive[playerColor] =  false
      else -- Button was pressed. Put in ACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="Lo",textColor="White"}
          UI.setAttributes(buttonId.."Lo", attributeTable)
          attributeTable = {text="Hi",textColor="White"}
          UI.setAttributes(buttonId.."Hi", attributeTable)
          attributeTable = {text="✓ Both",textColor="White"}
          UI.setAttributes(buttonId.."Both", attributeTable)
          loButtonActive[playerColor]    = false
          hiButtonActive[playerColor]    = false
          bothButtonActive[playerColor]  = true
      end
  end
end

function inButtonPressed(playerColor)
  if  inOutGameIsActive then
      buttonId = "FunctionPicker_"..string.sub(playerColor,1,2).."_"
      if  inButtonActive[playerColor] == true then -- Button was in ACTIVE mode. Return to INACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="In",textColor="White"}
          UI.setAttributes(buttonId.."In", attributeTable)
          inButtonActive[playerColor] =  false
      else -- Button was pressed. Put in ACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="✓ In",textColor="White"}
          UI.setAttributes(buttonId.."In", attributeTable)
          attributeTable = {text="Out",textColor="White"}
          UI.setAttributes(buttonId.."Out", attributeTable)
          inButtonActive[playerColor]    = true
          outButtonActive[playerColor]   = false
      end
  end
end

function outButtonPressed(playerColor)
  if  inOutGameIsActive then
      buttonId = "FunctionPicker_"..string.sub(playerColor,1,2).."_"
      if  outButtonActive[playerColor] == true then -- Button was in ACTIVE mode. Return to INACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="Out",textColor="White"}
          UI.setAttributes(buttonId.."Out", attributeTable)
          outButtonActive[playerColor] =  false
      else -- Button was pressed. Put in ACTIVE mode.
          pokerCube.AssetBundle.playTriggerEffect(11) -- Chime
          attributeTable = {text="In",textColor="White"}
          UI.setAttributes(buttonId.."In", attributeTable)
          attributeTable = {text="✓ Out",textColor="White"}
          UI.setAttributes(buttonId.."Out", attributeTable)
          inButtonActive[playerColor]    = false
          outButtonActive[playerColor]   = true
      end
  end
end


function addHalfPoint(player, _, declare)
  pokerCube.AssetBundle.playTriggerEffect(11) -- Select

  if  threeFiveSevenIsActive == true then --add points for player
      if  pointsFor357[player.color] ~=nil then
          pointsFor357[player.color] = pointsFor357[player.color] + 0.5
      else
          pointsFor357[player.color] = 0.0
      end
      if  pointsFor357[player.color] == 3.5 then

          pointsFor357[player.color] = 0.0
      end--if
      list = {}
      for playerColor,value in pairs(pointsFor357) do
          list[#list+1] = playerColor
      end--for
      function sortByValue(a,b) return pointsFor357[a] > pointsFor357[b]  end
      table.sort(list,sortByValue)
      line1A = " "
      line1B = " "

      for k=1, #list do
          color = list[k]
          if pointsFor357[list[k]] ~= 0 then
             line1A = line1A..playerNameTable[list[k]].."\n"
             line1B = line1B..pointsFor357[list[k]].."\n"
          end--if
      end--for
  end--if
  UI.setAttribute("ThreeFiveSevenPointsName",  "text", line1A)
  UI.setAttribute("ThreeFiveSevenPointsValue", "text", line1B)
end

function startLockoutTimer()
   Timer.create({identifier=self.getGUID(), function_name='unlockLockout', delay=1.0})
end

--Unlocks button
function unlockLockout()
   lockout = false
end

--Ends the timer if the object is destroyed before the timer ends, to prevent an error
function onDestroy()
   Timer.destroy(self.getGUID())
end

function changeDealer(playerColor)
   if  testingModeIsActive == true then
       newSeatedPlayers = seatColors
   else
       newSeatedPlayers = {}
       local seatedPlayers = getSeatedPlayers() -- list of seated players, in some Random order
         for i, v in ipairs (seatColors) do   --sort the seatedplayers into newSeatedPlayers list
           for j, w in ipairs (seatedPlayers) do
               if  v == w then
                   newSeatedPlayers[#newSeatedPlayers + 1] = w
                   break
               end--if
           end--for
       end--for
          --rotate the list so the dealer is the last entry
       while newSeatedPlayers[#newSeatedPlayers] ~=playerColor do
             newSeatedPlayers[#newSeatedPlayers+1] = newSeatedPlayers[1] -- copy first entry to end of table
             table.remove(newSeatedPlayers, 1) -- then remove first entry
       end--while
   end--if
   dealer = playerColor -- Sets dealer for a game
   return newSeatedPlayers
end

function arrayCompress(t) --Removes entries marked for deletion
  local j, n = 1, #t;
  for i=1, n do
      if (t[i] ~= "deleteme") then
         -- Move i's kept value to j's position, if it's not already there.
          if (i ~= j) then
              t[j] = t[i];
              t[i] = nil;
          end--if
           j = j + 1; -- Increment position of where we'll place the next kept value.
      else
           t[i] = nil;
      end--if
end--for
  return t;
end

function activateView357Cards() -- If more than one person is "In" then view is activated
  for _,playerColor in ipairs(newSeatedPlayers) do --
      if declareIndicators[playerColor] == "in" then
         Player[playerColor].team = "Hearts"
         threeFiveSevenStatus = getObjectFromGUID(threeFiveSevenStatuslabels[playerColor])
         threeFiveSevenStatus.setValue("3-5-7 View is Active")
      end
  end
end

function clearView357Cards()
  for _,playerColor in ipairs(newSeatedPlayers) do --
      Player[playerColor].team = "None"
      threeFiveSevenStatus = getObjectFromGUID(threeFiveSevenStatuslabels[playerColor])
      threeFiveSevenStatus.setValue(" ")
  end
end


function buttonClicked(pos) --Flips the cards
   cardZoneSpawn = {position = pos
              , scale = { 1, 1, 1 }
              , type = 'ScriptingTrigger'
              , callback = 'cardZoneCallback'
              , callback_owner = self
              , rotation = {0, 0, 0}}
   spawnObject(cardZoneSpawn)
end

function cardZoneCallback(cardZone)
   for _,o in ipairs(cardZone.getObjects()) do

       o.Flip()
   end
   cardZone.destruct() --destroy the zone when you're done with it.
end

function adjustCardCoordinates(playerColor, x1, z1)
  if playerColor== "White" or
     playerColor== "Red"   then
     return
  elseif playerColor== "Orange" or --270 degree Rotation
         playerColor== "Yellow" then
         xhold = x1
         x = z1
         z = -xhold
         r = 90
  elseif playerColor== "Blue" then --180 degree Rotation
         x = -x1
         z = -z1
  elseif playerColor== "Purple" or -- 90 degree Rotation
         playerColor== "Pink"   then
         xhold = x1
         x = -z1
         z = xhold
         r = 90
  end
  return x, z, r
end

function adjustZoneCoordinates(playerColor)
  if playerColor== "White" or
     playerColor== "Red"   then
     return
  elseif playerColor== "Orange" or --270 degree Rotation
         playerColor== "Yellow" then
         xhold = cardPosition.x
         cardPosition.x = cardPosition.z
         cardPosition.z = -xhold
         cardRotation.y = 90
  elseif playerColor== "Blue" then --180 degree Rotation
         cardPosition.x = -cardPosition.x
         cardPosition.z= -cardPosition.z
  elseif playerColor== "Purple" or -- 90 degree Rotation
         playerColor== "Pink"   then
         xhold = cardPosition.x
         cardPosition.x = -cardPosition.z
         cardPosition.z = xhold
         cardRotation.y = 90
  end
  return
end

function displayActivePlayers()
   function displayActivePlayersCoroutine()
       for i=1, 40  do coroutine.yield(0) end
    --  Check to see which players are still active in a game
       activePlayerCount = 0
       for _,playerColor in ipairs(getSeatedPlayers()) do -- Keep GetSeatedPlayers because players are removed when they fold
           handZone = #Player[playerColor].getHandObjects()
           if  handZone > 0               or       --If player has cards then they are an active player
               betTable[playerColor] > 0  then
               activePlayerCount = activePlayerCount + 1
               activePlayerTable[playerColor] = true -- this is an active player
               UI.setAttribute("ActivePlayersPanelPlayerName"..playerColor, "text", playerNameTable[playerColor])
               UI.setAttribute("ActivePlayersPanelPlayerName"..playerColor, "textColor", playerColor)
               UI.setAttribute("ActivePlayersPanelBet"..playerColor, "text", "$"..betTable[playerColor])
               UI.setAttribute("ActivePlayersPanelBet"..playerColor, "textColor", playerColor)
               if  UI.getAttribute("ActivePlayersPanelDeclare"..playerColor, "text") == nil then
                   UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", " ")
               end--if
               UI.setAttribute("ActivePlayersPanelDeclare"..playerColor,    "textColor", playerColor)
           else
               activePlayerTable[playerColor] = false -- this is an inactive player
               UI.setAttribute("ActivePlayersPanelPlayerName"..playerColor, "textColor", "Black")
               UI.setAttribute("ActivePlayersPanelBet"..playerColor,        "textColor", "Black")
               UI.setAttribute("ActivePlayersPanelDeclare"..playerColor,    "textColor", "Black")
           end--if
       end--for
   attributeTable={text = activePlayerCount.." ACTIVE PLAYERS", textColor = "White"}
   UI.setAttributes("ActivePlayersPanelHeading", attributeTable)
   return 1
   end--Coroutine
   startLuaCoroutine(Global,"displayActivePlayersCoroutine")
end

function playerAutoAnte()
   numberOfActivePlayers      = 0
   for _,playerColor in ipairs(newSeatedPlayers) do
       numberOfActivePlayers = numberOfActivePlayers + 1
       betTable[playerColor] = betTable[playerColor] + 1.00
       updateBetDisplay(playerColor, betTable[playerColor])
       balanceTable[playerColor] = balanceTable[playerColor] - 1.00
       updateBalanceDisplay(playerColor, balanceTable[playerColor])
       potAmount = potAmount + 1.00
       updatePotDisplay(potAmount)
   end
   return numberOfActivePlayers
end

-- Sort the calling player's hand.
function sortMyHand(player, value, id)
  if     id == "Sort Hand Ace to King with No Pairs" then
         sortAceToKingWithNoPairs = true
         sortAceToKingWithPairs   = false

  elseif id == "Sort Hand Ace to King with Pairs"    then
         sortAceToKingWithPairs   = true
         sortAceToKingWithNoPairs = false
  end

   local cards = {} -- Table to store the sortable list of cards present in the hand.
   local cardPositions = {} -- Table to store the list of card positions in the hand.
   -- Grab the list of cards in the hand.  We'll use this to populate our tables.
   local handObjects   = Player[player.color].getHandObjects()
   local numberOfCards = #Player[player.color].getHandObjects()

   for i, j in pairs(handObjects) do  -- Populate both tables. j is the card
       local cardName     = j.getName()
       local cardSuit     = j.getDescription()
       local cardPosition = j.getPosition()
       table.insert(cards, {j, cardName})
       table.insert(cardPositions, cardPosition)
   end--for

  table.sort(cards, sortLogic)  -- Sort the list of cards.
   if  sortAceToKingWithNoPairs then --Unpairs duplicates
       arrangeCardsWithoutPairs(cards)
   end--if

   for  i, j in ipairs(cards) do   --  apply the list of card positions in order to physically rearrange them.
        j[1].setPosition(cardPositions[i])
   end--for
end--function

function arrangeCardsWithoutPairs(cards)
      card2IsADuplicate = false
      card3IsADuplicate = false
      card4IsADuplicate = false
      card5IsADuplicate = false
      card6IsADuplicate = false
      card7IsADuplicate = false
      saveCard2 = nil
      saveCard3 = nil
      saveCard4 = nil
      saveCard5 = nil
      saveCard6 = nil
      saveCard7 = nil
      for i, j in ipairs(cards) do -- loop thru the hand moving duplicates to the end
           index = i
           if     i == 1 then -- the first card cannot be a dup so we save it to compare to the next card.
                  holdCard = j[1]
           elseif i > 1 and j[1].getName() == holdCard.getName() then
                  cardIsADuplicate = "card"..tostring(_G.index).."IsADuplicate"
                  _G[cardIsADuplicate] = true -- set duplicate indicator to true
                  saveCard = "saveCard"..tostring(_G.index)
                  _G[saveCard] = cards[i] --save duplicate card
                  cards[i] = "deleteme" -- delete duplicate card
           elseif i > 1 and j[1].getName() ~= holdCard.getName() then
                 holdCard = j[1] -- if this card is not a duplicate then save it to compare to the next card
           end--if
      end--for
      if  card2IsADuplicate == true or
          card3IsADuplicate == true or
          card4IsADuplicate == true or
          card5IsADuplicate == true or
          card6IsADuplicate == true or
          card7IsADuplicate == true then
          arrayCompress(cards)
          putDupsBack(cards)
      end--if
end--function


function putDupsBack(cards) -- move dups to the end
   nextOpenSlot = #cards + 1 -- this is the first empty slot
   for i = 2, 7 do
       index = i -- needed for the Global variable
       cardIsADuplicate = "card"..tostring(_G.index).."IsADuplicate"
       saveCard = "saveCard"..tostring(_G.index)
       if  _G[cardIsADuplicate] == true then
           cards[nextOpenSlot] = _G[saveCard]
           nextOpenSlot = nextOpenSlot + 1
       end--if
   end--do
end--function

-- Comparison function used by table.sort()
-- The parameters supplied by table.sort() are tables, where parameter[1] is the object reference,
-- and parameter[2] is the object Name.
function sortLogic(card1, card2)
 -- This is the way suits (i.e. values in the cards' Description field) are grouped
 -- 0:  Ignore suits
 -- 1:  All suits are together
 -- 2:  All card numbers are together
--   groupSuitMode = 2
   -- Grab the relevant information for both cards.
  card1Number = card1[1].getName()
  card1NumberIndex = refCardOrderIndex[card1Number]
  card1Suit = card1[1].getDescription()
  card1SuitIndex = refSuitOrderIndex[card1Suit]

  card2Number = card2[1].getName()
  card2NumberIndex = refCardOrderIndex[card2Number]
  card2Suit = card2[1].getDescription()
  card2SuitIndex = refSuitOrderIndex[card2Suit]

   -- 0: Ignore all suits.
   if sortAceToKingWithPairs    or
      sortAceToKingWithNoPairs  then
      return card1NumberIndex < card2NumberIndex
   end--if

   -- 1: All suits are together
--   if groupSuitMode == 1 then
--       if  card1Suit == card2Suit then
--           return card1NumberIndex < card2NumberIndex
--       else
--           return card1SuitIndex < card2SuitIndex
--       end--if
--   end--if--

   -- 2: All card numbers are together
--   if groupSuitMode == 2 then
--       if  card1Number == card2Number then
--           return card1SuitIndex < card2SuitIndex
--       else
--           return card1NumberIndex < card2NumberIndex
--       end--if
--   end--if
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * Games Games Games Games Games Games Games Games Games Games Games Games * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * **
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * *  Begin 3-5-7  * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function deal357(player) -- Deal the game of 3-5-7
   if      gameRound == 0 and
           (aGameIsActive          == false or
            threeFiveSevenIsActive == true) then -- new game or continuation of existing case
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           playerAutoAnte()
           attributeTable = {text="✓ 3-5-7",textColor="White"}
           UI.setAttributes("GamePicker_3-5-7", attributeTable)

           threeFiveSevenRound = threeFiveSevenRound + 1
           if threeFiveSevenRound == 1 then
              autoAnte(player.color)
           end--if

           threeFiveSevenIsActive = true
           inOutGameIsActive      = true
           aGameIsActive          = true

           UI.show("ThreeFiveSevenPointsPanel")

           if     threeFiveSevenRound == 1 or
                  threeFiveSevenRound == 2 then
                  threeFiveSevenLosersPay = 2 + numberOfActivePlayers
                  broadcastToAll("Dealing 3-5-7")
           elseif threeFiveSevenRound > 2 then
                  threeFiveSevenLosersPay = 2 + (numberOfActivePlayers * 2)
           end--if

           updateMessage("Round "..threeFiveSevenRound..": Losers Pay $"..threeFiveSevenLosersPay)
   elseif gameRound > 0                     and
          (threeFiveSevenIsActive == false  or   -- this is not continuation of this game
           dealer ~= player.color)          then -- Button was not pressed by the dealer
          return
   end--if

  if      gameRound == 0 then
          gameRound = gameRound + 1
          for _,playerColor in ipairs(newSeatedPlayers) do
              mainDeck.deal(1, playerColor)
              mainDeck.deal(1, playerColor)
              mainDeck.deal(1, playerColor)
          end--for
          clearView357Cards()
          clearDeclareIndicators()
          timeToDeclare = true
          updateMessage("Round "..threeFiveSevenRound..": Losers Pay $"..threeFiveSevenLosersPay)
  elseif  gameRound == 1              and
          declaringIsFinished == true then -- prevents accidental dealing before declarin
          gameRound = gameRound + 1
          for _,playerColor in ipairs(newSeatedPlayers) do
              mainDeck.deal(1, playerColor)
              mainDeck.deal(1, playerColor)
          end--for
          clearView357Cards()
          clearDeclareIndicators()
          timeToDeclare = true
          updateMessage("Round "..threeFiveSevenRound..": Losers Pay $"..threeFiveSevenLosersPay)
  elseif  gameRound == 2              and
          declaringIsFinished == true then
          gameRound = gameRound + 1
          for _,playerColor in ipairs(newSeatedPlayers) do
              mainDeck.deal(1, playerColor)
              mainDeck.deal(1, playerColor)
          end--for
          clearView357Cards()
          clearDeclareIndicators()
          timeToDeclare     = true
          dealingIsFinished = true
          updateMessage("Round "..threeFiveSevenRound..": Losers Pay $"..threeFiveSevenLosersPay)
  end--if
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * *  End 3-5-7  * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * *  Begin 7 Card Stud  * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function deal7CardStud(player) -- Deal the game of Seven Card Stud
   if      gameRound == 0         and
           aGameIsActive == false then
           sevenCardStudIsActive = true
           hiLoBothGameIsActive  = true
           aGameIsActive         = true
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           attributeTable = {text="✓ 7 Card Stud",textColor="White"}
           UI.setAttributes("GamePicker_7CardStud", attributeTable)
           autoAnte(player.color)
           updateMessage("Good Luck!")
           broadcastToAll("Dealing 7 Card Stud")
   elseif  gameRound >= 0                 and
           (sevenCardStudIsActive == false or   -- Button was pressed while this game is not active
            dealer ~= player.color)        then -- Button was not pressed by the dealer
           return
   end--if

   if      gameRound == 0 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
               mainDeck.deal(1, playerColor)
               mainDeck.dealToColorWithOffset(fourthCardPosition, true, playerColor)
           end--for
  elseif   gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if  (handZone == 0) then print(playerColor .. " is an empty hand")
               else
                    mainDeck.dealToColorWithOffset(fifthCardPosition, true, playerColor)
               end--if
           end--for
  elseif   gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then   
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if (handZone == 0) then
                   print(playerColor .. " is an empty hand")
               else
                   mainDeck.dealToColorWithOffset(sixthCardPosition, true, playerColor)
               end--if
           end--for
  elseif   gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if (handZone == 0) then
                   print(playerColor .. " is an empty hand")
               else
                   mainDeck.dealToColorWithOffset(seventhCardPosition, true, playerColor)
               end--if
           end--for
  elseif   gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if (handZone == 0) then
                   print(playerColor .. " is an empty hand")
               else
                   mainDeck.deal(1, playerColor)
               end
           end--for
          clearDeclareIndicators()
          timeToDeclare     = true
          dealingIsFinished = true
   end--if
end--function

--[[* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * *  End 7 Card Stud  * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *]]

--[[* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * *   Begin 7 Card Stud Spit Replace Spit * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *]]
function deal7CardStudSpitReplaceSpit(player) -- Deal the game of Seven Card Stud Spit Replace Spit
   if      gameRound     == 0     and
           aGameIsActive == false then
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           sevenCardStudSpitReplaceSpitIsActive = true
           hiLoBothGameIsActive                 = true
           attributeTable = {text="✓ 7 Card Stud Spit Replace Spit",textColor="White"}
           UI.setAttributes("GamePicker_7CardStudSpitReplaceSpit", attributeTable)
           autoAnte(player.color)
           updateMessage("Good Luck!")
           broadcastToAll("Dealing 7 Card Stud Spit Replace Spit")
   elseif  gameRound >= 0                                 and
           (sevenCardStudSpitReplaceSpitIsActive == false or -- Button was pressed while this game is not active
           dealer ~= player.color)                        then -- Button was not pressed by the dealer
           return
   end--if

   if      gameRound == 0 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -4
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
           x =  4
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
               mainDeck.deal(1, playerColor)
               mainDeck.dealToColorWithOffset(fourthCardPosition, true, playerColor)
           end--if
   elseif  gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if   (handZone == 0) then print(playerColor .. " is an empty hand")
               else mainDeck.dealToColorWithOffset(fifthCardPosition, true, playerColor)
               end--if
           end--if
   elseif  gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if (handZone == 0) then
                   print(playerColor .. " is an empty hand")
               else
                   mainDeck.dealToColorWithOffset(sixthCardPosition, true, playerColor)
               end--if
           end--if
   elseif  gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if (handZone == 0) then
                   print(playerColor .. " is an empty hand")
               else
                  mainDeck.dealToColorWithOffset(seventhCardPosition, true, playerColor)
               end--if
            end--for
   elseif  gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if (handZone == 0) then
                   print(playerColor .. " is an empty hand")
               else
                   mainDeck.deal(1, playerColor)
               end--if
           end--if
           updateMessage("Next: Flip 1st Spit Card")
   elseif  gameRound == 5 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -4
           z =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           timeToReplaceCard = true
           updateMessage("Next: Deal Replace Card")
   elseif  gameRound == 6                       and
           verifyAllBetsHaveBeenMade () == true and
           timeToReplaceCard == false           then
           gameRound = gameRound + 1
           x =  4
           z =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           clearDeclareIndicators()
           timeToDeclare     = true
--           dealingIsFinished = true
           updateMessage("Declare")
   end--if
end--function



--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * End 7 Card Stud Spit Replace Spit * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * *   Begin 7 x 2 * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function deal7x2(player) -- Deal the game of 7 x 2
  if  gameRound     == 0     and
      aGameIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
      sevenXTwoIsActive    = true
      hiLoBothGameIsActive = true
      aGameIsActive        = true
      attributeTable = {text="✓ 7 x 2",textColor="White"}
      UI.setAttributes("GamePicker_7x2", attributeTable)
      autoAnte(player.color)
      updateMessage("Good Luck!")
      broadcastToAll("Dealing  7 x 2")
  elseif  gameRound >= 0               and
          (sevenXTwoIsActive == false or -- Button was pressed while another game is active
           dealer ~= player.color)    then -- Button was not pressed by the dealer
          return
  end--if

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
       x = -9.9
       z =   3
       r =   0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -6.6
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  6.6
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  9.9
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -9.9
       z = -02
       r =   0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -6.6
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  6.6
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  9.9
       z = -02
       r =   0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })

       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
  elseif   gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -9.9
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -9.9
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6.6
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6.6
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -3.3
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -3.3
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  0
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  0
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  3.3
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3.3
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  6.6
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  6.6
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 5 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  9.9
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  9.9
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           clearDeclareIndicators()
           timeToDeclare     = true
--           dealingIsFinished = true
           updateMessage("Declare")
   end--if
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * *   End 7 x 2 * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * Begin Boxes and Corners * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealBoxesAndCorners(player) -- Deal the game of Boxes and Corners
  if       gameRound     == 0     and
           aGameIsActive == false then
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           boxesAndCornersIsActive = true
           hiLoBothGameIsActive    = true
           aGameIsActive           = true
           attributeTable = {text="✓ Boxes & Corners",textColor="White"}
           UI.setAttributes("GamePicker_BoxesAndCorners", attributeTable)
          -- Get new order of seated player based on dealer
           autoAnte(player.color)
           updateMessage("Good Luck!")
           broadcastToAll("Dealing Boxes and Corners")
  elseif   gameRound >= 0                     and
           (boxesAndCornersIsActive == false or -- Button was pressed while another game is active
            dealer ~= player.color)          then -- Button was not pressed by the dealer
           return
  end--if

  if       gameRound == 0 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           -- Deal common card
           x = -6
           z =  5
           r =  0
           print("Bx: ", x, " z: ", z, " r: ", r)
           adjustCardCoordinates(player.color, x, z)
           print("Ax: ", x, " z: ", z, " r: ", r)
           print("--------------------------------")

           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })

           x = -2
           z =  5
           r =  0
           print("Bx: ", x, " z: ", z, " r: ", r)

           adjustCardCoordinates(player.color, x, z)
           print("Ax: ", x, " z: ", z, " r: ", r)
           print("--------------------------------")

           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x =  2
           z =  5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x =  6
           z =  5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x = -6
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x = -2
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x =  2
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x =  6
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x = -6
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x = -2
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x =  2
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })
           x =  6
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false })

           for _,playerColor in ipairs(newSeatedPlayers) do --Deal each player  2 down cards and 1 up card
               mainDeck.deal(1, playerColor)
               mainDeck.deal(1, playerColor)
               mainDeck.dealToColorWithOffset(fourthCardPosition, true, playerColor)
           end--for
  elseif   gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -2
           z =  5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -2
           z =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -2
           z = -5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  6
           z =  5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  6
           z =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  6
           z = -5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  2
           z =  5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  2
           z =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  2
           z = -5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
  elseif   gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -6
           z =  5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6
           z =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6
           z = -5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
   elseif  gameRound == 5 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if  (handZone == 0) then print(playerColor .. " is an empty hand")
               else mainDeck.deal(1, playerColor)
               end--if
           end--for
           timeToReplaceCard = true
--           dealingIsFinished = true
           timeToDeclare     = true
           updateMessage("Next: Replace Card")
   end--if
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * End Boxes and Corners * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * *  Begin Bundles  * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealBundles(player) -- Deal the game of Bundles
  if       gameRound == 0         and
           aGameIsActive == false then
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           bundlesIsActive      = true
           hiLoBothGameIsActive = true
           aGameIsActive     = true
           attributeTable = {text="✓ Bundles",textColor="White"}
           UI.setAttributes("GamePicker_Bundles", attributeTable)
           autoAnte(player.color)
           updateMessage("Good Luck!")
           broadcastToAll("Dealing Bundles")
   elseif  gameRound >= 0             and
           (bundlesIsActive == false or   -- Button was pressed while another game is active
            dealer ~= player.color)  then -- Button was not pressed by the dealer
           return
   end--if
   if      gameRound == 0 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           --deal the Common Cards
           x = -12
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -9.1
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -6.2
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -2.9
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  0
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  2.9
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  6.2
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  9.1
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  12.00
           z =  2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  0
           z = -2.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  0
           z = -6.75
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  0
           z = -11.25
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth=false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })

           -- Deal the Hands
           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
           end--for
   elseif  gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -13
           z =   3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -10.00
           z =   3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -7
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -3.50
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -0.50
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  2.50
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  6
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  9
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  12
           z =  3.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
   elseif  gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -0.50
           z = -1
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
   elseif  gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -0.50
           z = -5.50
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
   elseif  gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -0.50
           z = -10
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           clearDeclareIndicators()
           timeToDeclare     = true
--           dealingIsFinished = true
           updateMessage("Declare")
   end--if
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * *  End Bundles *  * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * Begin Burn the Biffel * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealBurnTheBiffel(player) -- Deal the game of Burn the Biffel
  if     gameRound     == 0     and
         aGameIsActive == false then
         newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
         burnTheBiffelIsActive = true
         hiLoBothGameIsActive  = true
         aGameIsActive         = true
         goodCard1PositionMarkedBad = false
         goodCard2PositionMarkedBad = false
         goodCard3PositionMarkedBad = false
         goodCard4PositionMarkedBad = false
         goodCard5PositionMarkedBad = false
         attributeTable = {text="✓ Burn the Biffel",textColor="White"}
         UI.setAttributes("GamePicker_BurnTheBiffel", attributeTable)
         autoAnte(player.color)
         createZonesForBurnTheBiffelCards(player.color)
         updateMessage("Good Luck!")
         broadcastToAll("Dealing Burn The Biffel")
  elseif gameRound >= 0                 and
        (burnTheBiffelIsActive == false or -- Button was pressed while another game is active
         dealer ~= player.color)        then -- Button was not pressed by the dealer
        return
  end--if

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
       x = -6.6
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  6.6
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -6.6
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  6.6
       z = -2
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })

       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
  elseif   gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           identifyGoodAndBadCards() --placed here because of callback. This identifies all the good and bad cards.
           x = -6.6
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6.6
           z =  -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           burnTheBiffelRemoveCardFromHand(cardZone2)
           burnTheBiffelMarkGoodCardBad(gameRound-1)
           badCard1Position.y = 2
           noBag.takeObject({smooth = false, position=badCard1Position})
  elseif   gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -3.3
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -3.3
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           burnTheBiffelRemoveCardFromHand(cardZone4)
           burnTheBiffelMarkGoodCardBad(gameRound-1)
           badCard2Position.y = 2
           noBag.takeObject({smooth = false, position=badCard2Position})
  elseif   gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  0
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  0
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           burnTheBiffelRemoveCardFromHand(cardZone6)
           burnTheBiffelMarkGoodCardBad(gameRound-1)
           badCard3Position.y = 2
           noBag.takeObject({smooth = false, position=badCard3Position})
  elseif   gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x =  3.3
           z =  3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3.3
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           burnTheBiffelRemoveCardFromHand(cardZone8)
           burnTheBiffelMarkGoodCardBad(gameRound-1)
           badCard4Position.y = 2
           noBag.takeObject({smooth = false, position=badCard4Position})
  elseif   gameRound == 5 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = 6.6
           z = 3
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  6.6
           z = -2
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           burnTheBiffelRemoveCardFromHand(cardZone10)
           burnTheBiffelMarkGoodCardBad(gameRound-1)
           clearDeclareIndicators()
           timeToDeclare     = true
--           dealingIsFinished = true
           updateMessage("Declare")
           badCard5Position.y = 2
           noBag.takeObject({smooth = false, position=badCard5Position})
   end--if
end--function

function createZonesForBurnTheBiffelCards(playerColor)
  zoneCounter = 0
  cardZone1 = ""
  cardZone2 = ""
  cardZone3 = ""
  cardZone4 = ""
  cardZone5 = ""
  cardZone6 = ""
  cardZone7 = ""
  cardZone8 = ""
  cardZone9 = ""
  cardZone10 = ""

  cardPosition = {x= -6.6, y= 0, z=  3} -- 1st good card
  cardRotation = {x=  0,   y= 0, z=  0}
  cardScale    = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition  = {x= -6.6, y= 0, z= -2} -- 1st bad card
  cardRotation  = {x=  0,   y= 0, z=  0}
  cardScale     = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition = {x= -3.3, y= 0, z=  3} -- 2nd good card
  cardRotation = {x=  0,   y= 0, z=  0}
  cardScale    = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition  = {x= -3.3, y= 0, z= -2} -- 2nd bad card
  cardRotation  = {x=  0,   y= 0, z=  0}
  cardScale     = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition = {x=  0,   y= 0, z=  3} -- 3rd good card
  cardRotation = {x=  0,   y= 0, z=  0}
  cardScale    = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition  = {x=  0,   y= 0, z= -2} -- 3rd bad card
  cardRotation  = {x=  0,   y= 0, z=  0}
  cardScale     = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition = {x=  3.3, y= 0, z=  3} -- 4th good card
  cardRotation = {x=  0,   y= 0, z=  0}
  cardScale    = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition  = {x= 3.3, y= 0, z= -2} -- 4th bad card
  cardRotation  = {x= 0,   y= 0, z=  0}
  cardScale     = {x= 2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition = {x=  6.6, y= 0, z=  3} -- 5th good card
  cardRotation = {x=  0,   y= 0, z=  0}
  cardScale    = {x=  2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)

  cardPosition  = {x= 6.6, y= 0, z= -2} -- 5th bad card
  cardRotation  = {x= 0,   y= 0, z=  0}
  cardScale     = {x= 2.9, y= 5, z=  4}
  adjustZoneCoordinates(playerColor)
  burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)
end--function

function burnTheBiffelSpawnZone(cardPosition, cardRotation, cardScale)
  zoneSpawn = {type              = "ScriptingTrigger",
               position          = cardPosition,
               rotation          = cardRotation,
               scale             = cardScale,
               callback          = "burnTheBiffelZoneCallback",
               callback_owner    = self,
               sound             = false,
               snap_to_grid      = true}
  spawnObject(zoneSpawn)
end--function

function burnTheBiffelZoneCallback(zoneSpawned)
  zoneCounter = zoneCounter + 1
  if     zoneCounter == 1  then
         cardZone1          = zoneSpawned.getGUID()
         savedZone1Spawned  = zoneSpawned --used to delete zone
  elseif zoneCounter == 2  then
         cardZone2          = zoneSpawned.getGUID()
         savedZone2Spawned  = zoneSpawned
  elseif zoneCounter == 3  then
         cardZone3          = zoneSpawned.getGUID()
         savedZone3Spawned  = zoneSpawned
  elseif zoneCounter == 4  then
         cardZone4          = zoneSpawned.getGUID()
         savedZone4Spawned  = zoneSpawned
  elseif zoneCounter == 5  then
         cardZone5          = zoneSpawned.getGUID()
         savedZone5Spawned  = zoneSpawned
  elseif zoneCounter == 6  then
         cardZone6          = zoneSpawned.getGUID()
         savedZone6Spawned  = zoneSpawned
  elseif zoneCounter == 7  then
         cardZone7          = zoneSpawned.getGUID()
         savedZone7Spawned  = zoneSpawned
  elseif zoneCounter == 8  then
         cardZone8          = zoneSpawned.getGUID()
         savedZone8Spawned  = zoneSpawned
  elseif zoneCounter == 9  then
         cardZone9          = zoneSpawned.getGUID()
         savedZone9Spawned  = zoneSpawned
  elseif zoneCounter == 10 then
         cardZone10          = zoneSpawned.getGUID()
         savedZone10Spawned  = zoneSpawned
  end
end--function

function identifyGoodAndBadCards()
   local objectInCardZone = getObjectFromGUID(cardZone1).getObjects()
   goodCard1Name     = objectInCardZone[1].getName()
   goodCard1Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone2).getObjects()
   badCard1Name     = objectInCardZone[1].getName()
   badCard1Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone3).getObjects()
   goodCard2Name     = objectInCardZone[1].getName()
   goodCard2Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone4).getObjects()
   badCard2Name     = objectInCardZone[1].getName()
   badCard2Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone5).getObjects()
   goodCard3Name     = objectInCardZone[1].getName()
   goodCard3Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone6).getObjects()
   badCard3Name     = objectInCardZone[1].getName()
   badCard3Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone7).getObjects()
   goodCard4Name     = objectInCardZone[1].getName()
   goodCard4Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone8).getObjects()
   badCard4Name     = objectInCardZone[1].getName()
   badCard4Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone9).getObjects()
   goodCard5Name     = objectInCardZone[1].getName()
   goodCard5Position = objectInCardZone[1].getPosition()

   local objectInCardZone = getObjectFromGUID(cardZone10).getObjects()
   badCard5Name     = objectInCardZone[1].getName()
   badCard5Position = objectInCardZone[1].getPosition()
end--function

function burnTheBiffelRemoveCardFromHand(cardZone)
  local objectInCardZone = getObjectFromGUID(cardZone).getObjects()
  local badCardName = objectInCardZone[1].getName()

   for _,playerColor in ipairs(newSeatedPlayers) do -- Search thru all players
       color = playerColor
       local handObjects = Player[color].getHandObjects()
       for i, j in pairs(handObjects) do -- search hand for card
           if  j.getName() == badCardName then
               if simulationIsActive == false then
                  printToAll(convertColorToPlayerName(color).." burns a "..badCardName)
               end
               muckCard(j)
           end--if
       end--For
   end--for
end--function

function burnTheBiffelMarkGoodCardBad(round)
   if    round == 1 then
         if goodCard1Name == badCard1Name       and
            goodCard1PositionMarkedBad == false then
            goodCard1Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard1Position})
            goodCard1PositionMarkedBad = true
         end--if
  elseif round == 2 then
         if (goodCard1Name == badCard1Name  or
             goodCard1Name == badCard2Name) and
            goodCard1PositionMarkedBad == false then
            goodCard1Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard1Position})
            goodCard1PositionMarkedBad = true
         end--if
         if (goodCard2Name == badCard1Name  or
             goodCard2Name == badCard2Name) and
            goodCard2PositionMarkedBad == false then
            goodCard2Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard2Position})
            goodCard2PositionMarkedBad = true
         end--if
  elseif round == 3 then
         if (goodCard1Name == badCard1Name  or
             goodCard1Name == badCard2Name  or
             goodCard1Name == badCard3Name) and
            goodCard1PositionMarkedBad == false then
            goodCard1Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard1Position})
            goodCard1PositionMarkedBad = true
         end--if
         if (goodCard2Name == badCard1Name  or
             goodCard2Name == badCard2Name  or
             goodCard2Name == badCard3Name) and
            goodCard2PositionMarkedBad == false then
            goodCard2Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard2Position})
            goodCard2PositionMarkedBad = true
         end--if
         if (goodCard3Name == badCard1Name  or
             goodCard3Name == badCard2Name  or
             goodCard3Name == badCard3Name) and
            goodCard3PositionMarkedBad == false then
            goodCard3Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard3Position})
            goodCard3PositionMarkedBad = true
         end--if
  elseif round == 4 then
         if (goodCard1Name == badCard1Name  or
             goodCard1Name == badCard2Name  or
             goodCard1Name == badCard3Name  or
             goodCard1Name == badCard4Name) and
            goodCard1PositionMarkedBad == false then
            goodCard1Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard1Position})
            goodCard1PositionMarkedBad = true
         end--if
         if (goodCard2Name == badCard1Name  or
             goodCard2Name == badCard2Name  or
             goodCard2Name == badCard3Name  or
             goodCard2Name == badCard4Name) and
            goodCard2PositionMarkedBad == false then
            goodCard2Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard2Position})
            goodCard2PositionMarkedBad = true
         end--if
         if (goodCard3Name == badCard1Name  or
             goodCard3Name == badCard2Name  or
             goodCard3Name == badCard3Name  or
             goodCard3Name == badCard4Name) and
            goodCard3PositionMarkedBad == false then
            goodCard3Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard3Position})
            goodCard3PositionMarkedBad = true
         end--if
         if (goodCard4Name == badCard1Name  or
             goodCard4Name == badCard2Name  or
             goodCard4Name == badCard3Name  or
             goodCard4Name == badCard4Name) and
            goodCard4PositionMarkedBad == false then
            goodCard4Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard4Position})
            goodCard4PositionMarkedBad = true
         end--if
  elseif round == 5 then
         if (goodCard1Name == badCard1Name  or
             goodCard1Name == badCard2Name  or
             goodCard1Name == badCard3Name  or
             goodCard1Name == badCard4Name  or
             goodCard1Name == badCard5Name) and
            goodCard1PositionMarkedBad == false then
            goodCard1Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard1Position})
            goodCard1PositionMarkedBad = true
         end--if
         if (goodCard2Name == badCard1Name  or
             goodCard2Name == badCard2Name  or
             goodCard2Name == badCard3Name  or
             goodCard2Name == badCard4Name  or
             goodCard2Name == badCard5Name) and
            goodCard2PositionMarkedBad == false then
            goodCard2Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard2Position})
            goodCard2PositionMarkedBad = true
         end--if
         if (goodCard3Name == badCard1Name  or
             goodCard3Name == badCard2Name  or
             goodCard3Name == badCard3Name  or
             goodCard3Name == badCard4Name  or
             goodCard3Name == badCard5Name) and
            goodCard3PositionMarkedBad == false then
            goodCard3Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard3Position})
            goodCard3PositionMarkedBad = true
         end--if
         if (goodCard4Name == badCard1Name  or
             goodCard4Name == badCard2Name  or
             goodCard4Name == badCard3Name  or
             goodCard4Name == badCard4Name  or
             goodCard4Name == badCard5Name) and
            goodCard4PositionMarkedBad == false then
            goodCard4Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard4Position})
            goodCard4PositionMarkedBad = true
         end--if
         if (goodCard5Name == badCard1Name  or
             goodCard5Name == badCard2Name  or
             goodCard5Name == badCard3Name  or
             goodCard5Name == badCard4Name  or
             goodCard5Name == badCard5Name) and
            goodCard5PositionMarkedBad == false then
            goodCard5Position.y = 2
            xBag.takeObject({smooth = false, position=goodCard5Position})
            goodCard5PositionMarkedBad = true
         end--if
  end--if
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * End Burn the Biffel * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  Begin Cincinnati * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealCincinnati(player) -- Deal the game of Cincinatti
  if  gameRound     == 0     and
      aGameIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
      cincinnatiIsActive   = true
      hiLoBothGameIsActive = true
      aGameIsActive        = true
      attributeTable       = {text="✓ Cincinnati",textColor="White"}
      UI.setAttributes("GamePicker_Cincinnati", attributeTable)
      autoAnte(player.color)
      updateMessage("Good Luck!")
      broadcastToAll("Dealing Cincinnati")
  elseif  gameRound >= 0    and
          (cincinattiIsActive == false or -- Button was pressed while another game is active
           dealer ~= player.color) then -- Button was not pressed by the dealer
          return
  end

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
      --dealCommonCards
       x = -8
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -4
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  4
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  8
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
      -- dealHand()
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
  elseif  gameRound == 1 and -- flip 1st 3 cards
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = -8
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -4
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x =  0
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 2 and -- flip 4th card
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  4
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z}) -- flip 5th card
  elseif  gameRound == 3 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  8
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          clearDeclareIndicators()
          timeToDeclare     = true
--          dealingIsFinished = true
          updateMessage("Declare")
  end
end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  End Cincinnati * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  Begin Death Wheel * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealDeathWheel(player) -- Deal the game of DeathWheel
  if  gameRound     == 0     and
      aGameIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
      deathWheelIsActive    = true
      hiLoBothGameIsActive = true
      aGameIsActive        = true
      attributeTable       = {text="✓ Death Wheel",textColor="White"}
      UI.setAttributes("GamePicker_DeathWheel", attributeTable)
      autoAnte(player.color)
      updateMessage("Good Luck!")
      broadcastToAll("Dealing Death Wheel")
  elseif  gameRound >= 0    and
          (deathWheelIsActive == false or -- Button was pressed while another game is active
           dealer ~= player.color)     then -- Button was not pressed by the dealer
          return
  end

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
      --dealCommonCards
       x =  8
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  5.5
       z = -5.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z = -8
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -5.5
       z = -5.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -8
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -5.5
       z =  5.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  8
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  5.5
       z =  5.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
      -- dealHand()
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
  elseif  gameRound == 1 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  5.5
          z = -5.5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -5.5
          z = -5.5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -5.5
          z =  5.5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x =  5.5
          z =  5.5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 2 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  8
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -8
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 3 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  0
          z = -8
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x =  0
          z =  8
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          clearDeclareIndicators()
          timeToDeclare     = true
--          dealingIsFinished = true
          updateMessage("Declare")
  end
end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  End Death Wheel * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  Begin Iron Cross * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealIronCross(player) -- Deal the game of IronCross
  if  gameRound     == 0     and
      aGameIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
      ironCrossIsActive    = true
      hiLoBothGameIsActive = true
      aGameIsActive        = true
      attributeTable       = {text="✓ IronCross",textColor="White"}
      UI.setAttributes("GamePicker_IronCross", attributeTable)
      autoAnte(player.color)
      updateMessage("Good Luck!")
      broadcastToAll("Dealing Iron Cross")
  elseif  gameRound >= 0    and
          (ironCrossIsActive == false or -- Button was pressed while another game is active
           dealer ~= player.color) then -- Button was not pressed by the dealer
          return
  end

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
      --dealCommonCards
       x =  0
       z =  5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  4
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z = -5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -4
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  0
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
      -- dealHand()
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
  elseif  gameRound == 1 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = 0
          z = 5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 2 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = 4
          z = 0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 3 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  0
          z = -5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 4 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = -4
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 5 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  0
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          clearDeclareIndicators()
          timeToDeclare     = true
--          dealingIsFinished = true
          updateMessage("Declare")
  end
end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  End Iron Cross * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * *  Begin Jacks or Better, Trips to Win* * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealJacksOrBetter(player)
  if      gameRound == 0 and
          (aGameIsActive         == false or
           jacksOrBetterIsActive == true) then
          newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
          jacksOrBetterIsActive = true -- Sets Jacks or Better to Active
          aGameIsActive         = true
          attributeTable = {text="✓ Jacks or Better    Trips to Win",textColor="White"}
          UI.setAttributes("GamePicker_JacksOrBetter", attributeTable)
          jacksOrBetterRound = jacksOrBetterRound + 1
          if jacksOrBetterRound == 1 then
             autoAnte(player.color)
             broadcastToAll("Dealing Jacks or Better, Trips to Win")
          end
          updateMessage("Round "..jacksOrBetterRound)
  elseif  gameRound >= 0                  and
          (jacksOrBetterIsActive == false or -- Button was pressed while another game is active
           dealer ~= player.color)        then -- Button was not pressed by the dealer
          return
  end
  if  gameRound == 0 then
      gameRound = gameRound + 1
      -- Player who does not ante does not get cards. Prevents dealing to players who have folded
      for _,playerColor in ipairs(newSeatedPlayers) do
          if betTable[playerColor] > 0 then
             mainDeck.deal(1, playerColor)
             mainDeck.deal(1, playerColor)
             mainDeck.deal(1, playerColor)
             mainDeck.deal(1, playerColor)
             mainDeck.deal(1, playerColor)
          end
      end
      timeToReplaceCard = true
  elseif  gameRound == 1 then
          for _,playerColor in ipairs(newSeatedPlayers) do
              if  betTable[playerColor] > 0 then
                  handZone = #Player[playerColor].getHandObjects()
                  if (handZone == 0) then
                      print(playerColor .. " is an empty hand")
                  elseif (handZone == 1) then
                          mainDeck.deal(4, playerColor)
                  elseif (handZone == 2) then
                          mainDeck.deal(3, playerColor)
                  elseif (handZone == 3) then
                          mainDeck.deal(2, playerColor)
                  elseif (handZone == 4) then
                          mainDeck.deal(1, playerColor)
                  end
              end
          end
          dealingIsFinished = true
  end
end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * *  End Jack or Better * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  * * *
* * * * * * * * * * * * * * * * * * Begin Lo Ma  * * * * * * * * * * * *  * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  * * *
]]
function dealLoMa(player) -- Deal the game of Lo Ma
  if       gameRound > 0           and
           (loMaIsActive == false  or   -- this is not continuation of this game
           dealer ~= player.color) then -- Button was not pressed by the dealer
           return
  elseif   gameRound == 0          and
           (aGameIsActive == false or
            loMaIsActive  == true)   then
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           loMaRound = loMaRound + 1
           if  loMaRound == 1 then
               autoAnte(player.color)
               attributeTable    = {text="✓ Lo Ma",textColor="White"}
               UI.setAttributes("GamePicker_LoMa", attributeTable)
               broadcastToAll("Dealing Lo Ma")
           end--if
           playerAutoAnte()
           if  loMaHasWon == false then --Amount if Ma wins is handled in the betting function
               loMaLosersPay = (2 + numberOfActivePlayers)
           end--if
           loMaIsActive      = true -- Sets Lo Ma as the active Game
           inOutGameIsActive = true
           aGameIsActive     = true -- Indicates that a game is being played
           updateMessage("Round "..loMaRound.." Losers Pay $"..loMaLosersPay)
           createZoneForMaCards(player.color)
   end--if

   if gameRound == 0 then
      gameRound = gameRound + 1
           -- Deal the Common Cards
           x = -9
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard1 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x = -6
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard2 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x = -3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard3 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x =  0
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard4 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x =  3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard5 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           -- Deal Hand to Players
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 1st card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 2nd card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 3rd card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 4th card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 5th card to each player
               mainDeck.deal(1, playerColor)
           end--for
           clearDeclareIndicators()
           dealingIsFinished   = true
           timeToDeclare       = true
           updateMessage("Round "..loMaRound.." Losers Pay $"..loMaLosersPay.." - Declare In or Out")
   elseif  gameRound           == 1    and --flip Ma's cards
           declaringIsFinished == true then
           gameRound = gameRound + 1
           x = -9
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  0
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           Wait.time(function() sortLoMaHand() end, 1.0)
           updateMessage("Round "..loMaRound.." Losers Pay $"..loMaLosersPay)
   elseif  gameRound == 2 then --deal players 6th card
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               if playerColor ~= nil then
                   mainDeck.dealToColorWithOffset(sixthCardPosition, true, playerColor)
                   Wait.time(function() sortLoMaPlayerHand(playerColor) end, 1)
               end--if
           end--for
   elseif  gameRound == 3 then --deal Ma's 6th card
           gameRound = gameRound + 1
           x =  7.5
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard6 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = true})
           --Wait.time(function() sortLoMaHand() end, 1)
   elseif gameRound == 4 then -- Deal Players 7th card.
          gameRound = gameRound + 1
          for _,playerColor in ipairs(newSeatedPlayers) do
               if playerColor~= nil then
                   mainDeck.dealToColorWithOffset(seventhCardPosition, true, playerColor)
                   Wait.time(function() sortLoMaPlayerHand(playerColor) end, 1)
               end--if
           end--for
   elseif gameRound == 5 then -- Deal Ma's 7th card.
          gameRound = gameRound + 1
          x =  10.5
          z =  0
          r =  0
          adjustCardCoordinates(player.color, x, z)
          maCard7 = {x, 0, z}
          mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = true})
          --Wait.time(function() sortLoMaHand() end, 1)
          dealingIsFinished = true
   end--if
end--function

function createZoneForMaCards(color)
  if     color== "White" or
         color== "Red"   then
         yRotate = 00
  elseif color== "Orange" or --270 degree Rotation
         color== "Yellow" then
         yRotate = 90
  elseif color== "Blue" then --180 degree Rotation
         yRotate = 180
  elseif color== "Purple" or -- 90 degree Rotation
         color== "Pink"   then
         yRotate = 270
  end

      zoneSpawn = {type              = "ScriptingTrigger",
                   position          = {x=00,  y=3.51,    z=0},
                   rotation          = {x=00,  y=yRotate, z=0},
                   scale             = {x=22,  y=5.10,    z=4},
                   callback          = "zoneCallback",
                   callback_owner    = self,
                   sound             = false,
                   snap_to_grid      = true}
      spawnObject(zoneSpawn)
end--function


function zoneCallback(zoneSpawned)
   maHandZone = zoneSpawned.getGUID()
   maZoneSpawned = zoneSpawned
end--function

  function sortLoMaHand()
     local cards = {} -- Table to store the sortable list of cards present in the hand.
     local cardPositions = {} -- Table to store the list of card positions in the hand.
     -- Grab the list of cards in the hand.  We'll use this to populate our tables.
     local objectsInMaZone = getObjectFromGUID(maHandZone).getObjects()
     local numberOfCards = #objectsInMaZone
     local cardPositions = {maCard1, maCard2, maCard3, maCard4, maCard5, maCard6, maCard7}

     for i, j in pairs(objectsInMaZone) do  -- Populate both tables. j is the card
         -- Bag or Deck returns {{string name, string description, string GUID, int index, string lua_script, string lust_script_state}, ...})
         local cardName     = j.getName()
         local cardSuit     = j.getDescription()
         table.insert(cards, {j, cardName})

     end--for

     table.sort(cards, sortLoMaLogic)      -- Sort the list of cards.
     arrangeCardsWithoutPairs(cards)

     for  i, j in ipairs(cards) do   --  apply the list of card positions in order to physically rearrange them.
          j[1].setPosition(cardPositions[i])
     end--for
  end--function

  function sortLoMaPlayerHand(playerColor)
    function sortLoMaPlayerHandCoroutine()
         for i=1, 40  do coroutine.yield(0) end
         color = playerColor
         local cards = {} -- Table to store the sortable list of cards present in the hand.
         cardPositions = {} -- Table to store the list of card positions in the hand.
         -- Grab the list of cards in the hand.  We'll use this to populate our tables.
         local cardZone = playerCardZone[playerColor]
         objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()
         local numberOfCards = #objectsInPlayerCardZone

           -- Populate both tables.
           for i, j in pairs(objectsInPlayerCardZone) do -- j is the card
             -- Bag or Deck returns {{string name, string description, string GUID, int index, string lua_script, string lust_script_state}, ...})
             local cardName     = j.getName()
             local cardSuit     = j.getDescription()
             table.insert(cards, {j, cardName})
         end--for

         table.sort(cards, sortLoMaLogic)      -- Sort the list of cards.
         arrangeCardsWithoutPairs(cards)

         maPlayerCard = _G.color.."Cards"
         cardPositions = {_G[maPlayerCard].upCard1,
                          _G[maPlayerCard].upCard2,
                          _G[maPlayerCard].upCard3,
                          _G[maPlayerCard].upCard4,
                          _G[maPlayerCard].upCard5,
                          _G[maPlayerCard].upCard6,
                          _G[maPlayerCard].upCard7}

         for  i, j in ipairs(cards) do   --  apply the list of card positions in order to physically rearrange them.
              j[1].setPosition(cardPositions[i])
         end--for
         return 1
       end--Coroutine
          startLuaCoroutine(Global, "sortLoMaPlayerHandCoroutine")
  end--function

function sortLoMaLogic(card1, card2)
   -- Grab the relevant information for both cards.
  card1Number = card1[1].getName()
  card1NumberIndex = refCardOrderIndex[card1Number]
  card1Suit = card1[1].getDescription()
  card1SuitIndex = refSuitOrderIndex[card1Suit]

  card2Number = card2[1].getName()
  card2NumberIndex = refCardOrderIndex[card2Number]
  card2Suit = card2[1].getDescription()
  card2SuitIndex = refSuitOrderIndex[card2Suit]

   return card1NumberIndex < card2NumberIndex
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * End Lo Ma* * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * *   Begin Hi Ma   * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealHiMa(player) -- Deal the game of Hi Ma
  if       gameRound > 0           and
           (hiMaIsActive == false  or   -- this is not continuation of this game
           dealer ~= player.color) then -- Button was not pressed by the dealer
           return
  elseif   gameRound == 0          and
           (aGameIsActive == false or
            hiMaIsActive  == true) then
           newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
           hiMaRound = hiMaRound + 1
           if  hiMaRound == 1 then
               autoAnte(player.color)
               attributeTable    = {text="✓ Hi Ma",textColor="White"}
               UI.setAttributes("GamePicker_HiMa", attributeTable)
               broadcastToAll("Dealing Hi Ma")
           end--if
           playerAutoAnte()
           if  hiMaHasWon == false then --Amount if Ma wins is handled in the betting function
               hiMaLosersPay = (2 + numberOfActivePlayers)
           end--if
           hiMaIsActive      = true -- Sets Lo Ma as the active Game
           inOutGameIsActive = true
           aGameIsActive     = true -- Indicates that a game is being played
           updateMessage("Round "..hiMaRound.." Losers Pay $"..hiMaLosersPay)
           createZoneForMaCards(player.color)
   end--if

   if gameRound == 0 then
      gameRound = gameRound + 1
           -- Deal the Common Cards
           x = -9
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard1 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x = -6
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard2 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x = -3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard3 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x =  0
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard4 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           x =  3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard5 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = false})
           -- Deal Hand to Players
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 1st card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 2nd card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 3rd card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 4th card to each player
               mainDeck.deal(1, playerColor)
           end--for
           for _,playerColor in ipairs(newSeatedPlayers) do -- Deals 5th card to each player
               mainDeck.deal(1, playerColor)
           end--for
           clearDeclareIndicators()
           dealingIsFinished   = true
           timeToDeclare       = true
           updateMessage("Round "..hiMaRound.." Losers Pay $"..hiMaLosersPay.." - Declare In or Out")
   elseif  gameRound           == 1    and --flip Ma's cards
           declaringIsFinished == true then
           gameRound = gameRound + 1
           x = -9
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -6
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  0
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           Wait.time(function() analyzeHiMaHand() end, 1.0)
           updateMessage("Round "..hiMaRound.." Losers Pay $"..hiMaLosersPay)
   elseif  gameRound == 2 then --deal players 6th card
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               if playerColor ~= nil then
                   mainDeck.dealToColorWithOffset(sixthCardPosition, true, playerColor)
                   Wait.time(function() analyzeHiMaPlayerHand(playerColor) end, 1)
               end--if
           end--for
   elseif  gameRound == 3 then --deal Ma's 6th card
           gameRound = gameRound + 1
           x =  7.5
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           maCard6 = {x, 0, z}
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = true})
           --Wait.time(function() analyzeHiMaHand() end, 1)
   elseif gameRound == 4 then -- Deal Players 7th card.
          gameRound = gameRound + 1
          for _,playerColor in ipairs(newSeatedPlayers) do
               if playerColor~= nil then
                   mainDeck.dealToColorWithOffset(seventhCardPosition, true, playerColor)
                   Wait.time(function() analyzeHiMaPlayerHand(playerColor) end, 1)
               end--if
           end--for
   elseif gameRound == 5 then -- Deal Ma's 7th card.
          gameRound = gameRound + 1
          x =  10.5
          z =  0
          r =  0
          adjustCardCoordinates(player.color, x, z)
          maCard7 = {x, 0, z}
          mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {0, r, 180}, flip = true})
          --Wait.time(function() analyzeHiMaHand() end, 1)
          dealingIsFinished = true
   end--if
end--function

  function analyzeHiMaHand()
     local cards = {} -- Table to store the sortable list of cards present in the hand.
     local cardPositions = {} -- Table to store the list of card positions in the hand.
     -- Grab the list of cards in the hand.  We'll use this to populate our tables.
     local objectsInMaZone = getObjectFromGUID(maHandZone).getObjects()
     local numberOfCards = #objectsInMaZone
     local cardPositions = {maCard1, maCard2, maCard3, maCard4, maCard5, maCard6, maCard7}

     for i, j in pairs(objectsInMaZone) do  -- Populate both tables. j is the card
         -- Bag or Deck returns {{string name, string description, string GUID, int index, string lua_script, string lust_script_state}, ...})
         local cardName     = j.getName()
         local cardSuit     = j.getDescription()
         table.insert(cards, {j, cardName})

     end--for

     table.sort(cards, sortHiMaLogic)      -- Sort the list of cards.
     arrangeCardsWithoutPairs(cards)

     for  i, j in ipairs(cards) do   --  apply the list of card positions in order to physically rearrange them.
          j[1].setPosition(cardPositions[i])
     end--for
  end--function

  function analyzeHiMaPlayerHand(playerColor)
    function analyzeHiMaPlayerHandCoroutine()
         for i=1, 40  do coroutine.yield(0) end
         color = playerColor
         local cards = {} -- Table to store the sortable list of cards present in the hand.
         cardPositions = {} -- Table to store the list of card positions in the hand.
         -- Grab the list of cards in the hand.  We'll use this to populate our tables.
         local cardZone = playerCardZone[playerColor]
         objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()
         local numberOfCards = #objectsInPlayerCardZone

           -- Populate both tables.
           for i, j in pairs(objectsInPlayerCardZone) do -- j is the card
             -- Bag or Deck returns {{string name, string description, string GUID, int index, string lua_script, string lust_script_state}, ...})
             local cardName     = j.getName()
             local cardSuit     = j.getDescription()
             table.insert(cards, {j, cardName})
         end--for

         table.sort(cards, sortHiMaLogic)      -- Sort the list of cards.
         arrangeCardsWithoutPairs(cards)

         maPlayerCard = _G.color.."Cards"
         cardPositions = {_G[maPlayerCard].upCard1,
                          _G[maPlayerCard].upCard2,
                          _G[maPlayerCard].upCard3,
                          _G[maPlayerCard].upCard4,
                          _G[maPlayerCard].upCard5,
                          _G[maPlayerCard].upCard6,
                          _G[maPlayerCard].upCard7}

         for  i, j in ipairs(cards) do   --  apply the list of card positions in order to physically rearrange them.
              j[1].setPosition(cardPositions[i])
         end--for
         return 1
       end--Coroutine
          startLuaCoroutine(Global, "analyzeHiMaPlayerHandCoroutine")
  end--function

function sortHiMaLogic(card1, card2)
   -- Grab the relevant information for both cards.
  card1Number = card1[1].getName()
  card1NumberIndex = refCardOrderIndex[card1Number]
  card1Suit = card1[1].getDescription()
  card1SuitIndex = refSuitOrderIndex[card1Suit]

  card2Number = card2[1].getName()
  card2NumberIndex = refCardOrderIndex[card2Number]
  card2Suit = card2[1].getDescription()
  card2SuitIndex = refSuitOrderIndex[card2Suit]

   return card1NumberIndex > card2NumberIndex
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * ** * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * End hi Ma * *  * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * ** * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  Begin Omaha  * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealOmaha(player) -- Deal the game of Omaha
  if  gameRound     == 0     and
      aGameIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
      omahaIsActive        = true
      hiLoBothGameIsActive = true
      aGameIsActive        = true
      attributeTable       = {text="✓ Omaha",textColor="White"}
      UI.setAttributes("GamePicker_Omaha", attributeTable)
      autoAnte(player.color)
      updateMessage("Good Luck!")
      broadcastToAll("Dealing Omaha")
  elseif  gameRound >= 0    and
          (omahaIsActive == false or -- Button was pressed while another game is active
           dealer ~= player.color) then -- Button was not pressed by the dealer
          return
  end

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
      --dealCommonCards
       x = -5
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -1
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  3
       z =  3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x = -3
       z = -3
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
       x =  1
       z = -3
       r =  0
       adjustCardCoordinates(player.color, x, z)

       mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
      -- dealHand()
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
       for _,playerColor in ipairs(newSeatedPlayers) do
           mainDeck.deal(1, playerColor)
       end--for
  elseif  gameRound == 1 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = -5
          z =  3
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -1
          z =  3
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x =  3
          z =  3
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 2 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = -3
          z = -3
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 3 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  1
          z = -3
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          clearDeclareIndicators()
          timeToDeclare     = true
--          dealingIsFinished = true
          updateMessage("Declare")
  end
end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * *  End Omaha  * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * * *
* * * * * * * * * * * * * * Begin Rows and Columns with a Spit   * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * * *
]]
function dealRowsAndColumnsWithASpit(player) -- Deal the game of Rows and Columns with a Spit
  if  gameRound     == 0     and
      aGameIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
      rowsAndColumnsWithASpitIsActive = true
      hiLoBothGameIsActive            = true
      aGameIsActive                   = true
      attributeTable = {text="✓ Rows & Columns  with a Spit",textColor="White"}
      UI.setAttributes("GamePicker_RowsAndColumnsWithASpit", attributeTable)
      autoAnte(player.color)
      updateMessage("Good Luck!")
      broadcastToAll("Dealing Rows And Columns With A Spit")
  elseif  gameRound >= 0                              and
          (rowsAndColumnsWithASpitIsActive == false  or -- Button was pressed while another game is active
           dealer ~= player.color)                   then -- Button was not pressed by the dealer
          return
  end

  if       gameRound == 0 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -5
           z =  5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -1
           z =  5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  3
           z =  5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -5
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -1
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  3
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -5
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x = -1
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  3
           z = -5
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })
           x =  7
           z =  0
           r =  0
           adjustCardCoordinates(player.color, x, z)
           mainDeck.takeObject({smooth = false, index=0, position = {x, 0, z}, rotation = {180, r, 0}, flip = false })

           for _,playerColor in ipairs(newSeatedPlayers) do
               mainDeck.deal(1, playerColor)
               mainDeck.deal(1, playerColor)
               mainDeck.dealToColorWithOffset(fourthCardPosition, true, playerColor)
           end
  elseif  gameRound == 1 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = -5
          z =  5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -1
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x =  3
          z = -5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 2 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x =  3
          z =  5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -5
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -1
          z = -5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 3 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          x = -5
          z = -5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x = -1
          z =  5
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          x =  3
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
  elseif  gameRound == 4 and
          verifyAllBetsHaveBeenMade () == true then
          gameRound = gameRound + 1
          for _,playerColor in ipairs(newSeatedPlayers) do
              handZone = #Player[playerColor].getHandObjects()
              if (handZone == 0) then
                 print(playerColor .. " is an empty hand")
              else mainDeck.deal(1, playerColor)
              end
          end
          timeToReplaceCard = true
          updateMessage("Next: Deal Replace Card")
  elseif  gameRound == 5                       and
          verifyAllBetsHaveBeenMade () == true and
          timeToReplaceCard == false            then
          gameRound = gameRound + 1
          x =  7
          z =  0
          adjustCardCoordinates(player.color, x, z)
          buttonClicked({x, 1, z})
          clearDeclareIndicators()
          timeToDeclare     = true
--          dealingIsFinished = true
          updateMessage("Declare")
  end
end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * End Rows and Columns with a Spit  * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * Deal Slide  * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function dealSlide(player) -- Deal the game of Slide
  if     gameRound     == 0     and
         aGameIsActive == false then
         newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
         slideIsActive = true
         hiLoBothGameIsActive  = true
         aGameIsActive         = true
         attributeTable = {text="✓ Slide",textColor="White"}
         UI.setAttributes("GamePicker_Slide", attributeTable)
         autoAnte(player.color)
         createZonesForSlideCards(player.color)
         updateMessage("Good Luck!")
         broadcastToAll("Dealing Slide")
  elseif gameRound >= 0                 and
        (slideIsActive == false  or -- Button was pressed while another game is active
         dealer ~= player.color) then -- Button was not pressed by the dealer
        return
  end--if

  if   gameRound == 0 and
       verifyAllBetsHaveBeenMade () == true then
       gameRound = gameRound + 1
       x = -3.3
       z =  7.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  7.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z =  7.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z =  2.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z =  2.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z =  2.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z = -2.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z = -2.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z = -2.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x = -3.3
       z = -7.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  0
       z = -7.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })
       x =  3.3
       z = -7.5
       r =  0
       adjustCardCoordinates(player.color, x, z)
       mainDeck.takeObject({smooth = false, index=0, position = {x, 1, z}, rotation = {180, r, 0}, flip = false })


       for _,playerColor in ipairs(newSeatedPlayers) do --Deal each player  2 down cards and 1 up card
           mainDeck.deal(1, playerColor)
           mainDeck.deal(1, playerColor)
           mainDeck.dealToColorWithOffset(fourthCardPosition, true, playerColor)
       end
  elseif   gameRound == 1 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -3.3
           z =  7.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -0.0
           z =  7.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3.3
           z =  7.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           row = 1
           slideCards(row)
  elseif   gameRound == 2 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -3.3
           z =  2.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -0.0
           z =  2.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3.3
           z =  2.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           row = 2
           slideCards(row)
  elseif   gameRound == 3 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -3.3
           z = -2.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -0.0
           z = -2.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3.3
           z = -2.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           row = 3
           slideCards(row, player.color)
  elseif   gameRound == 4 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           x = -3.3
           z = -7.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x = -0.0
           z = -7.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           x =  3.3
           z = -7.5
           adjustCardCoordinates(player.color, x, z)
           buttonClicked({x, 1, z})
           row = 4
           slideCards(row,player.color)
   elseif  gameRound == 5 and
           verifyAllBetsHaveBeenMade () == true then
           gameRound = gameRound + 1
           for _,playerColor in ipairs(newSeatedPlayers) do
               handZone = #Player[playerColor].getHandObjects()
               if  (handZone == 0) then print(playerColor .. " is an empty hand")
               else mainDeck.deal(1, playerColor)
               end--if
           end--for
           timeToReplaceCard = true
--           dealingIsFinished = true
           timeToDeclare     = true
           updateMessage("Next: Replace Card")
   end--if
end--function

function createZonesForSlideCards(playerColor)
  zoneCounter = 0
  cardZone1 = ""
  cardZone2 = ""
  cardZone3 = ""
  cardZone4 = ""
  cardZone5 = ""
  cardZone6 = ""
  cardZone7 = ""
  cardZone8 = ""
  cardZone9 = ""
  cardZone10 = ""
  cardZone11 = ""
  cardZone12 = ""

  x = -3.3
  y =  0
  z =  7.5
  cardPosition = {x, y, z}
  cardRotation = {x=  0.0, y= 0, z=  0.0}
  cardScale    = {x=  2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  0
  y =  0
  z =  7.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  3.3
  y =  0
  z =  7.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x = -3.3
  y =  0
  z =  2.5
  cardPosition = {x, y, z}
  cardRotation = {x=  0.0, y= 0, z=  0.0}
  cardScale    = {x=  2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  0
  y =  0
  z =  2.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  3.3
  y =  0
  z =  2.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x = -3.3
  y =  0
  z = -2.5
  cardPosition = {x, y, z}
  cardRotation = {x=  0.0, y= 0, z=  0.0}
  cardScale    = {x=  2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  0
  y =  0
  z = -2.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  3.3
  y =  0
  z = -2.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x = -3.3
  y =  0
  z = -7.5
  cardPosition = {x, y, z}
  cardRotation = {x=  0.0, y= 0, z=  0.0}
  cardScale    = {x=  2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  0
  y =  0
  z = -7.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

  x =  3.3
  y =  0
  z = -7.5
  cardPosition = {x, y, z}
  cardRotation = {x= 0.0, y= 0, z=  0.0}
  cardScale    = {x= 2.9, y= 5, z=  4.0}
  adjustZoneCoordinates(playerColor)
  slideSpawnZone(cardPosition, cardRotation, cardScale)

end--function

function slideSpawnZone(cardPosition, cardRotation, cardScale)
  zoneSpawn = {type              = "ScriptingTrigger",
               position          = cardPosition,
               rotation          = cardRotation,
               scale             = cardScale,
               callback          = "slideZoneCallback",
               callback_owner    = self,
               sound             = false,
               snap_to_grid      = true}
  spawnObject(zoneSpawn)
end--function

function slideZoneCallback(zoneSpawned)
  zoneCounter = zoneCounter + 1
  if     zoneCounter == 1  then
         cardZone1          = zoneSpawned.getGUID()
         savedZone1Spawned  = zoneSpawned --used to delete zone
  elseif zoneCounter == 2  then
         cardZone2          = zoneSpawned.getGUID()
         savedZone2Spawned  = zoneSpawned
  elseif zoneCounter == 3  then
         cardZone3          = zoneSpawned.getGUID()
         savedZone3Spawned  = zoneSpawned
  elseif zoneCounter == 4  then
         cardZone4          = zoneSpawned.getGUID()
         savedZone4Spawned  = zoneSpawned
  elseif zoneCounter == 5  then
         cardZone5          = zoneSpawned.getGUID()
         savedZone5Spawned  = zoneSpawned
  elseif zoneCounter == 6  then
         cardZone6          = zoneSpawned.getGUID()
         savedZone6Spawned  = zoneSpawned
  elseif zoneCounter == 7  then
         cardZone7          = zoneSpawned.getGUID()
         savedZone7Spawned  = zoneSpawned
  elseif zoneCounter == 8  then
         cardZone8          = zoneSpawned.getGUID()
         savedZone8Spawned  = zoneSpawned
  elseif zoneCounter == 9  then
         cardZone9          = zoneSpawned.getGUID()
         savedZone9Spawned  = zoneSpawned
  elseif zoneCounter == 10 then
         cardZone10          = zoneSpawned.getGUID()
         savedZone10Spawned  = zoneSpawned
  elseif zoneCounter == 11 then
         cardZone11          = zoneSpawned.getGUID()
         savedZone11Spawned  = zoneSpawned
  elseif zoneCounter == 12 then
         cardZone12         = zoneSpawned.getGUID()
         savedZone12Spawned = zoneSpawned
  end
end--function

function slideCards(row, playerColor)
  function slideCardsCoroutine()
--       coroutine.yield(0)
       if  row == 1 then
           local objectInCardZone = getObjectFromGUID(cardZone1).getObjects()
           card1Name     = objectInCardZone[1].getName()
           card1Suit     = objectInCardZone[1].getDescription()
           card1Position = objectInCardZone[1].getPosition()
           if   card1Suit == "Hearts"   or -- Column color for sliding
                card1Suit == "Diamonds" then
                column1Color = "Red"
           else column1Color = "Black"
           end
           local objectInCardZone = getObjectFromGUID(cardZone2).getObjects()
           card2Name     = objectInCardZone[1].getName()
           card2Suit     = objectInCardZone[1].getDescription()
           card2Position = objectInCardZone[1].getPosition()
           if   card2Suit == "Hearts"   or -- Column color for sliding
                card2Suit == "Diamonds" then
                column2Color = "Red"
           else column2Color = "Black"
           end
           local objectInCardZone = getObjectFromGUID(cardZone3).getObjects()
           card3Name     = objectInCardZone[1].getName()
           card3Suit     = objectInCardZone[1].getDescription()
           card3Position = objectInCardZone[1].getPosition()
           if   card3Suit == "Hearts"   or -- Column color for sliding
                card3Suit == "Diamonds" then
                column3Color = "Red"
           else column3Color = "Black"
           end
  elseif   row == 2 then
           muckedCards = ""
           for i=1, 180  do coroutine.yield(0) end
           local objectInCardZone = getObjectFromGUID(cardZone4).getObjects()
           card4Name     = objectInCardZone[1].getName()
           card4Suit     = objectInCardZone[1].getDescription()
           card4Position = objectInCardZone[1].getPosition()
           card4Rotation = objectInCardZone[1].getRotation()
           if   card4Suit == "Hearts"   or -- Card color for sliding
                card4Suit == "Diamonds" then
                card4Color = "Red"
           else card4Color = "Black"
           end
           if  card4Color ~= column1Color then
               muckCard(objectInCardZone[1])
               muckedCards = card4Name.." of "..card4Suit..". "
               card4Name = nil
           end
           local objectInCardZone = getObjectFromGUID(cardZone5).getObjects()
           card5Name     = objectInCardZone[1].getName()
           card5Suit     = objectInCardZone[1].getDescription()
           card5Position = objectInCardZone[1].getPosition()
           card5Rotation = objectInCardZone[1].getRotation()
           if   card5Suit == "Hearts"   or -- Card color for sliding
                card5Suit == "Diamonds" then
                card5Color = "Red"
           else card5Color = "Black"
           end
           if  card5Color ~= column2Color then
               muckCard(objectInCardZone[1])
               muckedCards = muckedCards..card5Name.." of "..card5Suit..". "
               card5Name = nil
           end
           local objectInCardZone = getObjectFromGUID(cardZone6).getObjects()
           card6Name     = objectInCardZone[1].getName()
           card6Suit     = objectInCardZone[1].getDescription()
           card6Position = objectInCardZone[1].getPosition()
           card6Rotation = objectInCardZone[1].getRotation()
           if   card6Suit == "Hearts"   or -- Card color for sliding
                card6Suit == "Diamonds" then
                card6Color = "Red"
           else card6Color = "Black"
           end
           if  card6Color ~= column3Color then
               muckCard(objectInCardZone[1])
               muckedCards = muckedCards..card6Name.." of "..card6Suit..". "
               card6Name = nil
           end
           if  muckedCards ~= "" then
               updateMessage(muckedCards.." Mucked")
           end
  elseif   row == 3 then
           muckedCards = ""
           for i=1, 180  do coroutine.yield(0) end
           local objectInCardZone = getObjectFromGUID(cardZone7).getObjects()
           card7Name     = objectInCardZone[1].getName()
           card7Suit     = objectInCardZone[1].getDescription()
           card7Position = objectInCardZone[1].getPosition()
           card7Rotation = objectInCardZone[1].getRotation()
           if   card7Suit == "Hearts"   or -- Card color for sliding
                card7Suit == "Diamonds" then
                card7Color = "Red"
           else card7Color = "Black"
           end
           if      card7Color ~= column1Color then
                   muckCard(objectInCardZone[1])
                   muckedCards = card7Name.." of "..card7Suit..". "
                   card7Name = nil
           elseif  card4Name == nil then
                   card4Name = card7Name
                   card7Name = nil
                   objectInCardZone[1].setPositionSmooth(card4Position)
                   objectInCardZone[1].setRotation(card4Rotation)
           end

           local objectInCardZone = getObjectFromGUID(cardZone8).getObjects()
           card8Name     = objectInCardZone[1].getName()
           card8Suit     = objectInCardZone[1].getDescription()
           card8Position = objectInCardZone[1].getPosition()
           card8Rotation = objectInCardZone[1].getRotation()
           if   card8Suit == "Hearts"   or -- Card color for sliding
                card8Suit == "Diamonds" then
                card8Color = "Red"
           else card8Color = "Black"
           end
           if      card8Color ~= column2Color then
                   muckCard(objectInCardZone[1])
                   muckedCards = muckedCards..card8Name.." of "..card8Suit..". "
                   card8Name = nil
           elseif  card5Name == nil then
                   card5Name = card8Name
                   card8Name = nil
                   objectInCardZone[1].setPositionSmooth(card5Position)
                   objectInCardZone[1].setRotation(card5Rotation)
           end

           local objectInCardZone = getObjectFromGUID(cardZone9).getObjects()
           card9Name     = objectInCardZone[1].getName()
           card9Suit     = objectInCardZone[1].getDescription()
           card9Position = objectInCardZone[1].getPosition()
           card9Rotation = objectInCardZone[1].getRotation()
           if   card9Suit == "Hearts"   or -- Card color for sliding
                card9Suit == "Diamonds" then
                card9Color = "Red"
           else card9Color = "Black"
           end
           if      card9Color ~= column3Color then
                   muckCard(objectInCardZone[1])
                   muckedCards = muckedCards..card9Name.." of "..card9Suit..". "
                   card9Name = nil
           elseif  card6Name == nil then
                   card6Name = card9Name
                   card9Name = nil
                   objectInCardZone[1].setPositionSmooth(card6Position)
                   objectInCardZone[1].setRotation(card6Rotation)
           end
           if  muckedCards ~= "" then
               updateMessage(muckedCards.." mucked")
           end
  elseif   row == 4 then
           muckedCards = ""
           for i=1, 180  do coroutine.yield(0) end
           local objectInCardZone = getObjectFromGUID(cardZone10).getObjects()
           card10Name     = objectInCardZone[1].getName()
           card10Suit     = objectInCardZone[1].getDescription()
           card10Position = objectInCardZone[1].getPosition()
           card10Rotation = objectInCardZone[1].getRotation()
           if   card10Suit == "Hearts"   or -- Card color for sliding
                card10Suit == "Diamonds" then
                card10Color = "Red"
           else card10Color = "Black"
           end
           if      card10Color ~= column1Color then
                   muckCard(objectInCardZone[1])
                   muckedCards = card10Name.." of "..card10Suit..". "
           elseif  card4Name == nil then
                   card4Name = card10Name
                   objectInCardZone[1].setPositionSmooth(card4Position)
                   objectInCardZone[1].setRotation(card4Rotation)
           elseif  card7Name == nil then
                   card7Name = card10Name
                   objectInCardZone[1].setPositionSmooth(card7Position)
                   objectInCardZone[1].setRotation(card7Rotation)
           end

           local objectInCardZone = getObjectFromGUID(cardZone11).getObjects()
           card11Name     = objectInCardZone[1].getName()
           card11Suit     = objectInCardZone[1].getDescription()
           card11Position = objectInCardZone[1].getPosition()
           card11Rotation = objectInCardZone[1].getRotation()
           if   card11Suit == "Hearts"   or -- Card color for sliding
                card11Suit == "Diamonds" then
                card11Color = "Red"
           else card11Color = "Black"
           end
           if      card11Color ~= column2Color then
                   muckCard(objectInCardZone[1])
                   muckedCards = muckedCards..card11Name.." of "..card11Suit..". "
           elseif  card5Name == nil then
                   card5Name = card11Name
                   objectInCardZone[1].setPositionSmooth(card5Position)
                   objectInCardZone[1].setRotation(card5Rotation)
           elseif  card8Name == nil then
                   card8Name = card11Name
                   objectInCardZone[1].setPositionSmooth(card8Position)
                   objectInCardZone[1].setRotation(card8Rotation)
           end
           local objectInCardZone = getObjectFromGUID(cardZone12).getObjects()
           card12Name     = objectInCardZone[1].getName()
           card12Suit     = objectInCardZone[1].getDescription()
           card12Position = objectInCardZone[1].getPosition()
           card12Rotation = objectInCardZone[1].getRotation()
           if   card12Suit == "Hearts"   or -- Card color for sliding
                card12Suit == "Diamonds" then
                card12Color = "Red"
           else card12Color = "Black"
           end
           if      card12Color ~= column3Color then
                   muckCard(objectInCardZone[1])
                   muckedCards = muckedCards..card12Name.." of "..card12Suit..". "
           elseif  card6Name == nil then
                   card6Name = card12Name
                   objectInCardZone[1].setPositionSmooth(card6Position)
                   objectInCardZone[1].setRotation(card6Rotation)
           elseif  card9Name == nil then
                   card9Name = card12Name
                   objectInCardZone[1].setPositionSmooth(card9Position)
                   objectInCardZone[1].setRotation(card9Rotation)
           end
           if  muckedCards ~= "" then
               updateMessage(muckedCards.." Mucked")
           end
   end
   return 1
   end--function
   startLuaCoroutine(Global,"slideCardsCoroutine")
end--function
--[[
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * End Slide * * * * * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
]]
function verifyAllBetsHaveBeenMade (player, value, id)
-- Verifies that all player bets are either zero or equal to allow for the next round to be dealt
    maximumBet = 0
    continueToNextRound = true
    for _,playerColor in ipairs(newSeatedPlayers) do
        if betTable[playerColor] > maximumBet then maximumBet = betTable[playerColor] end
    end
    for _,playerColor in ipairs(newSeatedPlayers) do
        if betTable[playerColor] ~= maximumBet  and
            betTable[playerColor] ~= 0          then
        continueToNextRound = false
        end
    end
return continueToNextRound
end--function


function selectACardToReplace (player, value, id)
   if  timeToReplaceCard                     == true  and
       (boxesAndCornersIsActive              == true  or
        rowsAndColumnsWithASpitIsActive      == true  or
        slideIsActive                        == true  or
        sevenCardStudSpitReplaceSpitIsActive == true) then
       aReplaceGameIsActive = true
   else
       UI.setAttribute("SelectReplaceCardName", "value", "NAME")
       UI.setAttribute("SelectReplaceCardSuit", "value", "SUIT")
       return
   end

   if      id == "SelectReplaceCardName"   and -- This field has changed
           replaceCard[player.color].Name   ~= "" then
           replaceCard[player.color].Name    = ""
           replaceCard[player.color].Confirm = false
   elseif  id == "SelectReplaceCardSuit"   and -- This field has changed
           replaceCard[player.color].Suit   ~= "" then
           replaceCard[player.color].Suit    = ""
           replaceCard[player.color].Confirm = false
   end

   if id == "SelectReplaceCardName" then
       if      value == "Ace"    then replaceCard[player.color].Name    = "Ace"
       elseif  value == "Two"    then replaceCard[player.color].Name    = "2"
       elseif  value == "Three"  then replaceCard[player.color].Name    = "3"
       elseif  value == "Four"   then replaceCard[player.color].Name    = "4"
       elseif  value == "Five"   then replaceCard[player.color].Name    = "5"
       elseif  value == "Six"    then replaceCard[player.color].Name    = "6"
       elseif  value == "Seven"  then replaceCard[player.color].Name    = "7"
       elseif  value == "Eight"  then replaceCard[player.color].Name    = "8"
       elseif  value == "Nine"   then replaceCard[player.color].Name    = "9"
       elseif  value == "Ten"    then replaceCard[player.color].Name    = "10"
       elseif  value == "Jack"   then replaceCard[player.color].Name    = "Jack"
       elseif  value == "Queen"  then replaceCard[player.color].Name    = "Queen"
       elseif  value == "King"   then replaceCard[player.color].Name    = "King"
       elseif  value == "None"   then replaceCard[player.color].Name    = "None"
       elseif  value == "NAME"   then replaceCard[player.color].Name    = ""
                                     replaceCard[player.color].Confirm = false
       end--if
       return
   end

   if id == "SelectReplaceCardSuit" then
       if      value == "Spades"   then replaceCard[player.color].Suit    = "Spades"
       elseif  value == "Hearts"   then replaceCard[player.color].Suit    = "Hearts"
       elseif  value == "Diamonds" then replaceCard[player.color].Suit    = "Diamonds"
       elseif  value == "Clubs"    then replaceCard[player.color].Suit    = "Clubs"
       elseif  value == "None"     then replaceCard[player.color].Suit    = "None"
       elseif  value == "SUIT"     then replaceCard[player.color].Suit    = ""
                                       replaceCard[player.color].Confirm = false
       end--if
       return
   end--if

   if  (replaceCard[player.color].Suit ~= ""      and -- The Confirm Replace Card button must have been pressed
        replaceCard[player.color].Name ~= "")     or
       (replaceCard[player.color].Suit == "None"  or -- The Confirm Replace Card button must have been pressed
        replaceCard[player.color].Name == "None") then
       replaceCardFound = verifyCardIsInPlayersHand(player.color, replaceCard[player.color].Name, replaceCard[player.color].Suit)
       if  replaceCardFound then
           replaceCard[player.color].Confirm = true
       else
           pokerCube.AssetBundle.playTriggerEffect(6) --replace card not found
           UI.setAttribute("SelectReplaceCardName", "value", "NAME")
           UI.setAttribute("SelectReplaceCardSuit", "value", "SUIT")
           return
       end
   else return
   end--if

   if  confirmReplaceCardButtonActive[player.color] == true then -- Button was in ACTIVE mode. Return to INACTIVE mode.
       pokerCube.AssetBundle.playTriggerEffect(11)
       attributeTable = {text="Confirm Replace Card", textColor="White"}
       UI.setAttributes("ConfirmReplaceCard_"..player.color, attributeTable)
       UI.setAttribute("SelectReplaceCardName", "value", "NAME")
       UI.setAttribute("SelectReplaceCardSuit", "value", "SUIT")
       confirmReplaceCardButtonActive[player.color] = false
       replaceCard[player.color].Name    = ""
       replaceCard[player.color].Suit    = ""
       replaceCard[player.color].Confirm = false
   else -- Button was pressed. Put in ACTIVE mode.
       pokerCube.AssetBundle.playTriggerEffect(11)
       attributeTable = {text="✓ Confirm Replace Card",textColor="White"}
       UI.setAttributes("ConfirmReplaceCard_"..player.color, attributeTable)
       confirmReplaceCardButtonActive[player.color] = true
   end


   activePlayerCount = 0
   for color,_ in ipairs(newSeatedPlayers) do
   end

   for _,active in ipairs(newSeatedPlayers) do -- Search thru all players
       handZone = #Player[active].getHandObjects()
       if (handZone > 0) then --If player has cards then they are an active player
           activePlayerCount = activePlayerCount + 1
       end --if
   end --for

   if  replaceCardIndicatorsAreFrozen == false then
       -- Indicate which players have pressed the Confirm Replace Card button
       local replaceCount = 0
       for _,playerColor in ipairs(newSeatedPlayers) do -- Search thru all players
           if  replaceCard[playerColor].Confirm == true then
               declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
               declareStatus.TextTool.setFontColor(playerColor)
               declareStatus.TextTool.setFontSize(300)
               declareStatus.setValue("☺")
               UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", "☺")
               replaceCount = replaceCount + 1
           else    declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
                   declareStatus.TextTool.setFontColor("White")
                   declareStatus.setValue(" ")
                   UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", " ")
                   replaceCount = replaceCount - 1
           end--if
           if  activePlayerCount == replaceCount then  -- All players have declared so lets display the result
               replaceCardIndicatorsAreFrozen = true
               printToAll("Replace Indicators are Locked")
               replaceTheCards()
               clearReplaceIndicators()
               if      boxesAndCornersIsActive == true or
                       slideIsActive == true           then
                       updateMessage("Next: Declare")
               elseif  sevenCardStudSpitReplaceSpitIsActive == true  or
                       rowsAndColumnsWithASpitIsActive == true       then
                       updateMessage("Next: Flip Spit Card")
               end--if
           end--if
       end--for
   end--if
end--function

function verifyCardIsInPlayersHand(color, replaceCardName, replaceCardSuit)
   if replaceCard[color].Name == "None" or
      replaceCard[color].Suit == "None" then
       return true
   end

   local handObjects = Player[color].getHandObjects()
   for i, j in pairs(handObjects) do -- search hand for card
       local cardName     = j.getName()
       local cardSuit     = j.getDescription()
       local cardPosition = j.getPosition()
       if cardName..cardSuit == replaceCard[color].Name..replaceCard[color].Suit then
          replaceCard[color].Position = cardPosition
          replaceCard[color].Location = "Hand"
          return true
       end
   end--for

   local cardZone = playerCardZone[color]
   objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()
   for i, j in pairs(objectsInPlayerCardZone) do -- search up cards for card
       local cardName     = j.getName()
       local cardSuit     = j.getDescription()
       local cardPosition = j.getPosition()
       if cardName..cardSuit == replaceCard[color].Name..replaceCard[color].Suit then
          replaceCard[color].Position = cardPosition
          replaceCard[color].Location = "Table"
          return true
       end
   end
   return false
end--function

function replaceTheCards()
   for _,playerColor in ipairs(newSeatedPlayers) do -- Search thru all players
       if  replaceCard[playerColor].Location == "Hand" then
           local handObjects = Player[playerColor].getHandObjects()
           for i, j in pairs(handObjects) do -- search hand for card
               local cardName     = j.getName()
               local cardSuit     = j.getDescription()
               if  cardName..cardSuit == replaceCard[playerColor].Name..replaceCard[playerColor].Suit then
                   muckCard(j)
                   Wait.time(function() mainDeck.deal(1, playerColor, 1) end, 1.0)
                   balanceTable[playerColor] = balanceTable[playerColor] -  1.00
                   updateBalanceDisplay(playerColor, balanceTable[playerColor])
                   buyTable[playerColor] = buyTable[playerColor] +  1.00
                   updateBuyDisplay(playerColor, buyTable[playerColor])
                   potAmount = potAmount +  1.00
                   updatePotDisplay(potAmount)
               end--if
           end--for-
       elseif replaceCard[playerColor].Location == "Table" then
              local cardZone = playerCardZone[playerColor]
              objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()
              for i, j in pairs(objectsInPlayerCardZone) do -- search up cards for card
                   local cardName     = j.getName()
                   local cardSuit     = j.getDescription()
                   local cardPosition = j.getPosition()
                   if  cardName..cardSuit == replaceCard[playerColor].Name..replaceCard[playerColor].Suit then
                       muckCard(j)
                       if     playerColor == "Orange" or
                              playerColor == "Yellow" or
                              playerColor == "Purple" or
                              playerColor == "Pink"   then
                              r = 90
                       else   r = 0
                       end
                       mainDeck.takeObject({smooth = false, index=0, position = replaceCard[playerColor].Position , rotation = {180, r, 180}, flip = false})
                       balanceTable[playerColor] = balanceTable[playerColor] -  0.50
                       updateBalanceDisplay(playerColor, balanceTable[playerColor])
                       buyTable[playerColor] = buyTable[playerColor] +  0.50
                       updateBuyDisplay(playerColor, buyTable[playerColor])
                       potAmount = potAmount +  0.50
                       updatePotDisplay(potAmount)
                   end--if
               end--for
           end--if
   end--for
end--function

function clearDeclareIndicators()
  declaringIsFinished        = false
  declareIndicatorsAreFrozen = false
  timeToDeclare              = false

   for _,playerColor in ipairs(getSeatedPlayers()) do -- Search thru all players
       declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
       declareStatus.setValue(" ")
       declareIndicators = {}
--       declareIndicators[playerColor]  = nil
       loButtonActive[playerColor]     = false
       hiButtonActive[playerColor]     = false
       bothButtonActive[playerColor]   = false
       inButtonActive[playerColor]     = false
       outButtonActive[playerColor]    = false
       buttonId = "FunctionPicker_"..string.sub(playerColor,1,2).."_" --Reset Declare buttons
       attributeTable = {text="Lo",textColor="White"}
       UI.setAttributes(buttonId.."Lo", attributeTable)
       attributeTable = {text="Hi",textColor="White"}
       UI.setAttributes(buttonId.."Hi", attributeTable)
       attributeTable = {text="Both",textColor="White"}
       UI.setAttributes(buttonId.."Both",  attributeTable)
       attributeTable = {text="In",textColor="White"}
       UI.setAttributes(buttonId.."In", attributeTable)
       attributeTable = {text="Out",textColor="White"}
       UI.setAttributes(buttonId.."Out", attributeTable)
       loButtonActive[playerColor]    = false
       hiButtonActive[playerColor]    = false
       bothButtonActive[playerColor]  = false
       inButtonActive[playerColor]    = false
       outButtonActive[playerColor]   = false
       UI.setAttribute("ActivePlayersPanelDeclare"..playerColor,    "text", " ")
   end--for
end--function

function clearReplaceIndicators()
   replaceCardIndicatorsAreFrozen = false
   timeToReplaceCard              = false
   for _,playerColor in ipairs(getSeatedPlayers()) do -- Search thru all players
       declareStatus = getObjectFromGUID(declareStatusLabels[playerColor])
       declareStatus.TextTool.setFontColor("White")
       declareStatus.setValue(" ")
       UI.setAttribute("ActivePlayersPanelDeclare"..playerColor, "text", " ")
       attributeTable = {text="Confirm Replace Card", textColor="White"}
       UI.setAttributes("ConfirmReplaceCard_"..playerColor, attributeTable)
       UI.setAttribute("SelectReplaceCardName", "value", "NAME")
       UI.setAttribute("SelectReplaceCardSuit", "value", "SUIT")
       confirmReplaceCardButtonActive[playerColor] = false
       replaceCard[playerColor].Name     = ""
       replaceCard[playerColor].Suit     = ""
       replaceCard[playerColor].Location = ""
       replaceCard[playerColor].Position = ""
       replaceCard[playerColor].GUID     = ""
       replaceCard[playerColor].Confirm  = false
   end--for
end--function

function showHand(player,_,_) -- Show a players hand
   -- see if this was an auto show or a button was pressed
     if     player.color == "White"  or player == "White"  then color = "White"
     elseif player.color == "Red"    or player == "Red"    then color = "Red"
     elseif player.color == "Orange" or player == "Orange" then color = "Orange"
     elseif player.color == "Yellow" or player == "Yellow" then color = "Yellow"
     elseif player.color == "Blue"   or player == "Blue"   then color = "Blue"
     elseif player.color == "Purple" or player == "Purple" then color = "Purple"
     elseif player.color == "Pink"   or player == "Pink"   then color = "Pink"
     end--if

     if  dealingIsFinished == true then
         cardsInHandCount = #Player[color].getHandObjects()
         if  cardsInHandCount == 0 then
             return 1
         else
             cardsInHand = Player[color].getHandObjects()
             handDeck    = group(cardsInHand)[1]
             handDeck.setPosition(_G[_G.color.."Cards"].target)
         end--if
     else return 1
     end--if
     if      burnTheBiffelIsActive == true then    -- We do not know how many cards are in the players hand
             if     cardsInHandCount == 1 then
                    handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
             elseif cardsInHandCount == 2 then
                    handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
                    handDeck.dealToColorWithOffset(secondCardPosition, false, color)
             elseif cardsInHandCount == 3 then
                    handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
                    handDeck.dealToColorWithOffset(secondCardPosition, false, color)
                    handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
             elseif cardsInHandCount == 4 then
                    handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
                    handDeck.dealToColorWithOffset(secondCardPosition, false, color)
                    handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
                    handDeck.dealToColorWithOffset(fourthCardPosition, false, color)
             end--if
     elseif  omahaIsActive      == true or
             bundlesIsActive    == true or
             deathWheelIsActive == true or
             ironCrossIsActive  == true then -- There are 4 cards in the players hand
             handDeck.dealToColorWithOffset(firstCardPosition,   false, color)
             handDeck.dealToColorWithOffset(secondCardPosition,  false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,   false, color) 
             handDeck.dealToColorWithOffset(fourthCardPosition,  false, color)
     elseif  boxesAndCornersIsActive         == true or
             slideIsActive                   == true or
             rowsAndColumnsWithASpitIsActive == true then -- There are 3 cards in the players hand
             handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
             handDeck.dealToColorWithOffset(secondCardPosition, false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
     elseif  threeFiveSevenIsActive == true then -- There are 7 cards in the players hand
             handDeck.dealToColorWithOffset(firstCardPosition,   false, color)
             handDeck.dealToColorWithOffset(secondCardPosition,  false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,   false, color)
             handDeck.dealToColorWithOffset(fourthCardPosition,  false, color)
             handDeck.dealToColorWithOffset(fifthCardPosition,   false, color)
             handDeck.dealToColorWithOffset(sixthCardPosition,   false, color)
             handDeck.dealToColorWithOffset(seventhCardPosition, false, color)
     elseif  sevenXTwoIsActive     == true or
             cincinnatiIsActive    == true or
             jacksOrBetterIsActive == true then -- There are 5 cards in the players hand
             handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
             handDeck.dealToColorWithOffset(secondCardPosition, false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
             handDeck.dealToColorWithOffset(fourthCardPosition, false, color)
             handDeck.dealToColorWithOffset(fifthCardPosition,  false, color)
     elseif  loMaIsActive == true then -- There are 7 cards in the players hand
             handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
             handDeck.dealToColorWithOffset(secondCardPosition, false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
             handDeck.dealToColorWithOffset(fourthCardPosition, false, color)
             handDeck.dealToColorWithOffset(fifthCardPosition,  false, color)
--             for i=1, 40  do coroutine.yield(0) end
             sortLoMaPlayerHand(color)
     elseif  hiMaIsActive == true then -- There are 5 cards in the players hand
             handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
             handDeck.dealToColorWithOffset(secondCardPosition, false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
             handDeck.dealToColorWithOffset(fourthCardPosition, false, color)
             handDeck.dealToColorWithOffset(fifthCardPosition,  false, color)
     elseif  sevenCardStudIsActive                == true or
             sevenCardStudSpitReplaceSpitIsActive == true then -- There are 3 cards in the players hand (Dup Code ?)
             handDeck.dealToColorWithOffset(firstCardPosition,  false, color)
             handDeck.dealToColorWithOffset(secondCardPosition, false, color)
             handDeck.dealToColorWithOffset(thirdCardPosition,  false, color)
     end--if
end--function

function showAllHands(player,_,_) -- Show all players hands
   if  declareIndicatorsAreFrozen == true then
       for playerColor, indicator in pairs(declareIndicators) do -- Search thru all players who have declared
           if      bothCount > 1 then
                   showHand(playerColor)
           elseif  bothCount == 1 and
                   (loCount >= 1   or
                    hiCount >= 1)  then
                   showHand(playerColor)
           elseif  loCount > 1 and
                   declareIndicators[playerColor] == "lo" then
                   showHand(playerColor)
           elseif  hiCount > 1 and
                   declareIndicators[playerColor] == "hi" then
                   showHand(playerColor)
           end--if
       end--for
   else for _,playerColor in ipairs(newSeatedPlayers) do -- Search thru all seated players
            showHand(playerColor)
        end--for
   end--if
end--function

function resetDeck(player)
   if testingModeIsActive == false then
      newSeatedPlayers = changeDealer(player.color)  -- Get new order of seated player based on dealer. This determines which player is delt the first card
   end
   handZone = 0
-- Make sure All Players have folded
  activePlayerCount = 0
  for _, playerColor in ipairs(newSeatedPlayers) do -- Search thru all players
      handZone = #Player[playerColor].getHandObjects()
      -- check to see if any player has cards in their hand
      if  handZone > 0 then
          activePlayerCount = activePlayerCount + 1
      else -- check to see if any player has cards on the table in front of their hand
        local cardZone = playerCardZone[playerColor]
        objectsInPlayerCardZone = getObjectFromGUID(cardZone).getObjects()

          if  #objectsInPlayerCardZone > 0 then
              activePlayerCount = activePlayerCount + 1 -- these players have not folded
          end--if
      end--if
  end--for

  if     activePlayerCount > 0 then
         updateMessage("All Players Have Not Folded")
  elseif potAmount > 0                                  and -- Money was left in the Pot
         (omahaIsActive                        == true  or -- These games should not have any money left in the pot
          bundlesIsActive                      == true  or
          burnTheBiffelIsActive                == true  or
          cincinnatiIsActive                   == true  or
          deathWheelIsActive                   == true  or
          ironCrossIsActive                    == true  or
          sevenXTwoIsActive                    == true  or
          rowsAndColumnsWithASpitIsActive      == true  or
          slideIsActive                        == true  or
          boxesAndCornersIsActive              == true  or
          sevenCardStudIsActive                == true  or
          sevenCardStudSpitReplaceSpitIsActive == true) then
          updateMessage("RESET is Not Allowed. POT is not empty")
  elseif  activePlayerCount == 0 and
          potAmount > 0          then   --This is 3-5-7, Jacks or Better, Lo Ma or Hi Ma and the game is continuing
          gameRound                  = 0
          declareIndicatorsAreFrozen = false
          dealingIsFinished          = false
          if threeFiveSevenIsActive == true then
             updateMessage("Deal Next Round")
             updateMessage("Round "..threeFiveSevenRound.." Losers Pay $"..threeFiveSevenLosersPay.." - Deal Next Round")
          end--if
          if     loMaIsActive == true then
                 updateMessage("Round "..loMaRound.." Losers Pay $"..loMaLosersPay.." - Deal Next Round")
                 if  maZoneSpawned ~= nil then maZoneSpawned.destruct() end
          elseif hiMaIsActive == true then
                 updateMessage("Round "..hiMaRound.." Losers Pay $"..hiMaLosersPay.." - Deal Next Round")
                 if  maZoneSpawned ~= nil then maZoneSpawned.destruct() end
          end--if
          clearDeclareIndicators()
          clearDeck()
          obtainDeck()
  elseif  activePlayerCount == 0 and
          potAmount         == 0 then --reset all indicators
          updateMessage("Select A Game")
          clearView357Cards() --Remove 357 view card display
          UI.hide("ThreeFiveSevenPointsPanel")
          UI.setAttribute("ThreeFiveSevenPointsName",  "text", " ")
          UI.setAttribute("ThreeFiveSevenPointsValue", "text", " ")
          threeFiveSevenRound     = 0
          loMaRound               = 0
          hiMaRound               = 0
          loMaHasWon              = false
          hiMaHasWon              = false
          jacksOrBetterRound      = 0
          loMaLosersPay           = 0
          hiMaLosersPay           = 0
          threeFiveSevenLosersPay = 0
          list = {}
          pointsFor357 = {White  = 0.0,
                          Red    = 0.0,
                          Orange = 0.0,
                          Yellow = 0.0,
                          Blue   = 0.0,
                          Purple = 0.0,
                          Pink   = 0.0}
          attributeTable = {text="3-5-7",textColor="White"}
          UI.setAttributes("GamePicker_3-5-7", attributeTable)
          attributeTable = {text="7 Card Stud",textColor="White"}
          UI.setAttributes("GamePicker_7CardStud", attributeTable)
          attributeTable = {text="7 Card Stud Spit Replace Spit",textColor="White"}
          UI.setAttributes("GamePicker_7CardStudSpitReplaceSpit", attributeTable)
          attributeTable = {text="7 x 2",textColor="White"}
          UI.setAttributes("GamePicker_7x2", attributeTable)
          attributeTable = {text="Boxes & Corners", textColor="White"}
          UI.setAttributes("GamePicker_BoxesAndCorners", attributeTable)
          attributeTable = {text="Bundles",textColor="White"}
          UI.setAttributes("GamePicker_Bundles", attributeTable)
          attributeTable = {text="Burn the Biffel",textColor="White"}
          UI.setAttributes("GamePicker_BurnTheBiffel", attributeTable)
          attributeTable = {text="Cincinnati",textColor="White"}
          UI.setAttributes("GamePicker_Cincinnati", attributeTable)
          attributeTable = {text="Death Wheel",textColor="White"}
          UI.setAttributes("GamePicker_DeathWheel", attributeTable)
          attributeTable = {text="Iron Cross",textColor="White"}
          UI.setAttributes("GamePicker_IronCross", attributeTable)
          attributeTable = {text="Jacks or Better Trips to Win",textColor="White"}
          UI.setAttributes("GamePicker_JacksOrBetter", attributeTable)
          attributeTable = {text="Lo Ma",textColor="White"}
          UI.setAttributes("GamePicker_LoMa", attributeTable)
          attributeTable = {text="Hi Ma",textColor="White"}
          UI.setAttributes("GamePicker_HiMa", attributeTable)
          attributeTable = {text="Omaha",textColor="White"}
          UI.setAttributes("GamePicker_Omaha", attributeTable)
          attributeTable = {text="Rows & Columns with a Spit",textColor="White"}
          UI.setAttributes("GamePicker_RowsAndColumnsWithASpit", attributeTable)
          attributeTable = {text="Slide",textColor="White"}
          UI.setAttributes("GamePicker_Slide", attributeTable)
          confirmReplaceCardButtonActive = {White  = false,
                                            Red    = false,
                                            Orange = false,
                                            Yellow = false,
                                            Blue   = false,
                                            Purple = false,
                                            Pink   = false}
          threeFiveSevenIsActive               = false
          sevenCardStudIsActive                = false
          sevenCardStudSpitReplaceSpitIsActive = false
          sevenXTwoIsActive                    = false
          boxesAndCornersIsActive              = false
          bundlesIsActive                      = false
          burnTheBiffelIsActive                = false
          cincinnatiIsActive                   = false
          deathWheelIsActive                   = false
          ironCrossIsActive                    = false
          jacksOrBetterIsActive                = false
          loMaIsActive                         = false
          hiMaIsActive                         = false
          omahaIsActive                        = false
          rowsAndColumnsWithASpitIsActive      = false
          slideIsActive                        = false
          dealingIsFinished                    = false
          timeToDeclare                        = false
          declareIndicatorsAreFrozen           = false
          timeToReplaceCard                    = false
          replaceCardIndicatorsAreFrozen       = false
          gameRound                            = 0
          aGameIsActive                        = false
          hiLoBothGameIsActive                 = false
          inOutGameIsActive                    = false
          playerIsSeated                       = false --used with giveto to be sure money is being sent to an active player

          if  maZoneSpawned ~= nil then maZoneSpawned.destruct() end

          if  savedZone1Spawned  ~= nil then savedZone1Spawned.destruct()  end
          if  savedZone2Spawned  ~= nil then savedZone2Spawned.destruct()  end
          if  savedZone3Spawned  ~= nil then savedZone3Spawned.destruct()  end
          if  savedZone4Spawned  ~= nil then savedZone4Spawned.destruct()  end
          if  savedZone5Spawned  ~= nil then savedZone5Spawned.destruct()  end
          if  savedZone6Spawned  ~= nil then savedZone6Spawned.destruct()  end
          if  savedZone7Spawned  ~= nil then savedZone7Spawned.destruct()  end
          if  savedZone8Spawned  ~= nil then savedZone8Spawned.destruct()  end
          if  savedZone9Spawned  ~= nil then savedZone9Spawned.destruct()  end
          if  savedZone10Spawned ~= nil then savedZone10Spawned.destruct() end
          if  savedZone11Spawned ~= nil then savedZone11Spawned.destruct() end
          if  savedZone11Spawned ~= nil then savedZone12Spawned.destruct() end

          clearDeclareIndicators()
          clearReplaceIndicators()
          clearDeck()
          obtainDeck()
--          Wait.time(function() saveXML() end, 5.0)
--          Wait.time(function() reLoadXML() end, 5.0)
  end--if
end--function

--function saveXML()
--  print("Get XML")
--   xml = UI.getXml()
--end

--function reLoadXML()
--  print("reLoad XML")
--  UI.setXml(xml)
--end
--[[
* * * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * *  End Reset Deck  * * * * * * * * * * * * * * *
* * * * * * * * * * * * * * * * * * * * * * * * *  * * * * * * * * * * * * * * *
]]
function changePlayerColor(player,_,color)
  seatColor = string.sub(color, string.len("colorPicker_") + 1) -- Get color name
  Player[player.color].changeColor(seatColor)
end--function

function toggleEndOfGameDisplay(_,value,_)
   if   value == "True" then
        UI.show("EndOfGamePaymentsPanel")
   else
        UI.hide("EndOfGamePaymentsPanel")
   end
end

function endOfGamePayments(_,_,_)

   winnerBalanceTable = {}
   loserBalanceTable = {}
   displayPaymentsTable = {}
   playerCount = 0
   winnerCount = 0
   loserCount  = 0
   noMorePayments = false
   winnerTotal = 0
   loserTotal = 0

   for color,value in pairs(balanceTable) do
       if     value > 0 then
              winnerTotal = winnerTotal + value
              playerCount = playerCount + 1
              winnerCount = winnerCount + 1
              table.insert(winnerBalanceTable,{color=color, value=value})
       elseif value < 0 then
              loserTotal = loserTotal + (value * -1)
              playerCount = playerCount + 1
              loserCount  = loserCount  + 1
              table.insert(loserBalanceTable,{color=color, value=value})
       elseif value == 0 then
              table.insert(winnerBalanceTable,{color=color, value=value})
              table.insert(loserBalanceTable,{color=color, value=value})
       end--if
   end

   if     loserTotal  == 0 and
          winnerTotal == 0 then
          updateMessage("No Balances")
--   elseif variance > 0 then
--          updateMessage("Can Not Compute Payments Due To Negative Variance")
   else   calculatePayments()
   end
end--function

function calculatePayments()
   function calculatePaymentsCoroutine()
       repeat
--     print("Repeat")
           noMorePayments = true

           coroutine.yield(0)
           table.sort(winnerBalanceTable, function(a,b) return a.value > b.value end)
           for _,line in ipairs(winnerBalanceTable) do
           end--for

           coroutine.yield(0)
           table.sort(loserBalanceTable, function(a,b) return a.value < b.value end)
           for _,line in ipairs(loserBalanceTable) do
           end--for

           coroutine.yield(0)
           for i,k in pairs(loserBalanceTable) do
--               if  winnerBalanceTable[1] == nil then
--                   printToAll("Variance Error in Balances")
--                   return 1 end

               if      winnerBalanceTable[1] ~= nil                                   and
                       loserBalanceTable[i].value ~= 0                                and
                       winnerBalanceTable[1].value + loserBalanceTable[i].value >= 0  then --Biggest winner is more than biggest loser
                       noMorePayments = false
                       formatPaymentLine(loserBalanceTable[i].color, loserBalanceTable[i].value)
                       winnerBalanceTable[1].value = winnerBalanceTable[1].value + loserBalanceTable[i].value -- reduce winner balance by the payment
                       if  winnerBalanceTable[1].value == 0 then
                           table.remove(winnerBalanceTable, 1)
                       end
                       loserBalanceTable[i].value = 0

               elseif  winnerBalanceTable[1] ~= nil     and
                       loserBalanceTable[i].value ~= 0  then --Biggest winner is less than biggest loser
                       noMorePayments = false
                       loserBalanceTable[i].value = loserBalanceTable[i].value + winnerBalanceTable[1].value  -- reduce loser balance by the payment
                       formatPaymentLine(loserBalanceTable[i].color,  (winnerBalanceTable[1].value * -1))
                       table.remove(winnerBalanceTable, 1)
               end
           end--for

           coroutine.yield(0)
           for i,value in pairs(loserBalanceTable) do
               if  winnerBalanceTable[1] ~= nil                                   and
                   loserBalanceTable[i].value ~= 0                                and
                   winnerBalanceTable[1].value + loserBalanceTable[i].value < 0  then --Biggest winner is less than biggest loser
                   noMorePayments = false
                   loserBalanceTable[i].value = winnerBalanceTable[1].value + loserBalanceTable[i].value -- reduce loser balance by the payment
                   formatPaymentLine(loserBalanceTable[i].color, (winnerBalanceTable[1].value * -1))
                   table.remove(winnerBalanceTable, 1)
               end--if
           end--for
       until(noMorePayments == true)

       UI.show("EndOfGamePaymentsPanel")
       line = "Calculating..."
       UI.setAttribute("EndOfGamePaymentsDisplay",  "text", line)

       for i=1, 80  do coroutine.yield(0) end
       table.sort(displayPaymentsTable, function(a,b) return a < b end)

       line = ""
       for l=1, #displayPaymentsTable do
           line = line..displayPaymentsTable[l].."\n"
       end--for
       UI.setAttribute("EndOfGamePaymentsDisplay",  "text", line)
   return 1
 end--function
   startLuaCoroutine(Global,"calculatePaymentsCoroutine")
end--function

function formatPaymentLine(loserColor, loserValue)
   convertColorToPlayerName(loserColor)
   loserName = playerName
   convertColorToPlayerName(winnerBalanceTable[1].color)
   winnerName = playerName
   if     loserName == "Mitchell" then
          payTabs = "\t"
   elseif loserName == "Herb"    or
          loserName == "MarkF"   or
          loserName == "Marvin"  then
          payTabs = "\t\t"
   elseif loserName == "Paul"   or
          loserName == "Susan"    or
          loserName == "MarkH"  then
          payTabs = "\t\t\t"
   end--if
   if     winnerName == "Mitchell" then
          dollarTabs = "\t"
   elseif winnerName == "Herb"   or
          winnerName == "MarkF"  or
          winnerName == "Marvin" then
          dollarTabs = "\t\t"
   elseif winnerName == "Paul"   or
          winnerName == "Susan"    or
          winnerName == "MarkH"  then
          dollarTabs = "\t\t\t"
   end--if

   if     winnerName == "Paul"      then winnerName = winnerName.." - ".."@PaulMRubin"
   elseif winnerName == "MarkF"     then winnerName = winnerName.." - ".."@Mark-Fichtenbaum"
   elseif winnerName == "Susan"     then winnerName = winnerName.." - ".."@Susan-Hecht-1"
   elseif winnerName == "Mitchell"  then winnerName = winnerName.." - ".."@Jillian-Mund"
   elseif winnerName == "MarkH"     then winnerName = winnerName.." - ".."@Mark-Hecht-6"
   elseif winnerName == "Herb"      then winnerName = winnerName.." - ".."@Herb-Sussman-1"
   elseif winnerName == "Marvin"    then winnerName = winnerName.." - ".."@Marvin-Bader"
   end--if

   if loserValue ~= 0 then
      line = loserName..payTabs.."pays\t"..winnerName..dollarTabs.."$"..loserValue*-1 -- Longer Name
      table.insert(displayPaymentsTable, line)
   end
end--function