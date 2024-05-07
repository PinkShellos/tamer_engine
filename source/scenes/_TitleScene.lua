_TitleScene = {}
class("_TitleScene").extends(NobleScene)
local scene = _TitleScene

function scene:setValues()
    self.background = Graphics.image.new("assets/images/background2")

    self.color1 = Graphics.kColorBlack
    self.color2 = Graphics.kColorWhite

    self.menu = nil
    self.sequence = nil

    self.menuX = 15
    self.menuY = 160


end

-- local logoFont = Graphics.font.new("assets/fonts/Pixel-Digivolve-70")
-- local logoText = Noble.Text.drawText("Tamer Engine", 200, 120)
-- local TxtSprite = NobleSprite.new(TamerTXT, 200, 120)
-- This is the background color of this scene.
scene.backgroundColor = Graphics.kColorWhite

-- This runs when your scene's object is created, which is the
-- first thing that happens when transitioning away from another scene.
function scene:init()
    scene.super.init(self)
    self.logo = Graphics.image.new("assets/images/tamer-engine-logo")

    self:setValues()

    -- variable1 = 100
    -- _TitleScene.variable2 = "string"
    -- ...

    -- Your code here
end

-- When transitioning from another scene, this runs as soon as this
-- scene needs to be visible (this moment depends on which transition type is used).
function scene:enter()
    scene.super.enter(self)
    -- Your code here
end

-- This runs once a transition from another scene is complete.
function scene:start()
    scene.super.start(self)
    -- Your code here
end

-- This runs once per frame.
function scene:update()
    scene.super.update(self)
    -- Your code here
    Graphics.setColor(self.color1)

    self:drawLogo()

end

-- This runs once per frame, and is meant for drawing code.
function scene:drawBackground()
    scene.super.drawBackground(self)
    -- Your code here
    self.background:draw(0, 0)
end

-- This runs as as soon as a transition to another scene begins.
function scene:exit()
    scene.super.exit(self)
    -- Your code here
    Noble.transition(BattleScene, nil, Noble.Transition.Imagetable, {
        imagetable = Graphics.imagetable.new("libraries/noble/assets/images/ImagetableTransition"),
        rotateExit = true
    })
end

-- This runs once a transition to another scene completes.
function scene:finish()
    scene.super.finish(self)
    -- Your code here
end

function scene:pause()
    scene.super.pause(self)
    -- Your code here
end
function scene:resume()
    scene.super.resume(self)
    -- Your code here
end

-- Define the inputHander for this scene here, or use a previously defined inputHandler.

-- scene.inputHandler = someOtherInputHandler
-- OR
scene.inputHandler = {
    -- A button
    --
    AButtonDown = function()			-- Runs once when button is pressed.
        -- Your code here
        scene:exit()
    end
}

function scene:drawLogo()
    Graphics.setColor(self.color2)
    self.logo:setInverted(false)
    self.logo:draw(0, 0)
end
