--this is just for handling the crowd in actin sus, the rest of the assets are in the .json file

local ded = false

function onStepHit()
    if curStep == 105 then
        ded = true
    end
end

function onUpdate()
    if not ded then 
        makeLuaSprite('crowd2', 'crowd2', 588, 364)
        makeLuaSprite('crowd1', 'crowd1', 323, 254)
        removeLuaSprite('crowd1ded')
        removeLuaSprite('crowd2ded')

        scaleObject('crowd1', 0.55, 0.55)
        scaleObject('crowd2', 0.55, 0.55)

        setScrollFactor('crowd1', 0.9, 0.9)
        setScrollFactor('crowd2', 0.9, 0.9)
    
        addLuaSprite('crowd1', true)
        addLuaSprite('crowd2', true)
    else
        removeLuaSprite('crowd1')
        removeLuaSprite('crowd2')
        makeLuaSprite('crowd1ded', 'crowd1ded', 413, 254)
        makeLuaSprite('crowd2ded', 'crowd2ded', 588, 364)

        scaleObject('crowd1ded', 0.55, 0.55)
        scaleObject('crowd2ded', 0.55, 0.55)
    
        setScrollFactor('crowd1ded', 0.9, 0.9)
        setScrollFactor('crowd2ded', 0.9, 0.9)

        addLuaSprite('crowd1ded', true)
        addLuaSprite('crowd2ded', true)
    end
end