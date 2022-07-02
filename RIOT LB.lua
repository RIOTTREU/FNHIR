function HOME()
oc = gg.choice({
   'PLAYER',
   'FN BOSS',
   'EXIT' 
},nil,[[DEVELOPER : RIOT]])
if oc == nil then else
    if co == 1 then
        CLASSPY()
    end
    if co == 2 then
        CLASSBS()
    end
    if oc == 3 then
        os.exit()
    end
    RIOT = -1
end
end
--CLASSPLAY 
function CLASSPY()
    PY = gg.multiChoice({
        'CrossAuto',
        'SpeeRun',
        'RunHackMap',
        'Back'
    },nil,[[CLASS PLAYER]])
    if PY == nil then else
        if PY[1] then
            CrossAuto()
        end
        if PY[2] then
            SpeeRun()
        end
        if PY[3] then
            RunHackMap()
        end
        if PY[4] then
            HOME()
        end
        RIOT = -1
    end
end
function CrossAuto()
    gg.clearResults()
    r = {"224"}
    gg.setRanges(gg.REGION_JAVA_HEAP)
    gg.searchNumber("11001" , gg.TYPE_DWORD)
    gg.refineNumber("11001", gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[1] = {}
        p[1].address = q[1].address + r[i]
        p[1].flags = 4
        p[1].value = 16777216
        p[1].freeze = true
        p[1].name = "CrossAuto"
        gg.setValues(p)
        gg.addListItems(p)
    end
    gg.clearResults()
    gg.toast("AutoScript [ok]")
end
function SpeeRun()
    gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
    gg.refineNumber("3", gg.TYPE_DWORD)
    q = gg.getResults(1)
    offset = 0xA4
    p = {}
    p[1] = {}
    p[1].address = q[1].address + 0xA4
    p[1].flags = gg.TYPE_FLOAT
    p[1].value = 9
    p[1].freeze = true
    gg.setValues(p)
    gg.clearResults()
    gg.toast("SpeedRun [ok]")
end
function RunHackMap()
    gg.clearResults()
    gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
    gg.refineNumber("3", gg.TYPE_DWORD)
    q = gg.getResults(1)
    offset = 0xD4
    p = {}
    p[1] = {}
    p[1].address = q[1].address + 0xD4
    p[1].flags = gg.TYPE_FLOAT
    p[1].value = 2
    p[1].freeze = true
    gg.setValues(p)
    gg.clearResults()
    gg.toast("RunHackMap [ok]")
end

--CLASS BOSS
function CLASSBS()
    BS = gg.multiChoice({
        'มังกรศิลาเฟลเซน',
        'มังกรไฟเบลอาร์ด',
        'ราชันมังกรไกเซอร์',
        --'--',
        'กลีบ'
    },nil,[[CLASS BOSS]])
    if BS == nil then else
        if BS == 1 then sb01() end
        if BS == 2 then sb02() end
        if BS == 3 then sb03() end
        if BS == 4 then HOME() end
    end
end
--NPC1=4
--NPC2=8
function sb01()
    gg.clearResults()
    r = {"8"}
    gg.searchNumber("128;7;9;0:13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[1] = {}
        p[1].address = q[1].address +r[i]
        p[1].flags = 4
        p[1].value = 8
        p[1].freeze = false
        p[1].name = "มังกรศิลาเฟลเซน"
        gg.addListItems(p)
    end
end
function sb02()
    gg.clearResults()
    r = {"4"}
    gg.searchNumber("128;1;6;0:13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[1] = {}
        p[1].address = q[1].address +r[i]
        p[1].flags = 4
        p[1].value = 4
        p[1].freeze = false
        p[1].name = "มังกรไฟเบลอาร์ด"
        gg.addListItems(p)
    end
end
function sb03()
    gg.clearResults()
    r = {"4"}
    gg.searchNumber("128;4;0;0:13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[1] = {}
        p[1].address = q[1].address +r[i]
        p[1].flags = 4
        p[1].value = 3
        p[1].freeze = false
        p[1].name = "ราชันมังกรไกเซอร์"
        gg.addListItems(p)
    end
end
--function sb04()
    --gg.clearResults()
    --r = {"4"}
    --gg.searchNumber("128;4;0;0:13",gg.TYPE_DWORD)
    --gg.refineNumber("128",gg.TYPE_DWORD)
    --q = gg.getResults(1)
    --for i = 1,#r do
        --p = {}
        --p[1] = {}
        --p[1].address = q[1].address +r[i]
        --p[1].flags = 4
        --p[1].value = 3
        --p[1].freeze = false
        --p[1].name = "--"
        --gg.addListItems(p)
    --end
--end





while true do
    if gg.isVisible(true) then
        RIOT = 1
        gg.setVisible(false)
    end
    if RIOT == 1 then
        HOME()
    end
end
