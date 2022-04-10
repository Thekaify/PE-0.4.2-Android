function onCreate()
	-- background shit
	makeLuaSprite('white', 'white', 0, 0);
	setScrollFactor('white', 0, 0);
	
	addLuaSprite('white', false);
end
function onCountdownTick(counter)
	counter = 0;
	triggerEvent('Camera Follow Pos','640','360');
end
function onBeatHit()
	if curBeat == 4 then
		function onUpdate()
			for i=0,3 do
				noteTweenAlpha(i+16, i, math.floor(curStep/9999), 0.3)
			end
		end
	end
end