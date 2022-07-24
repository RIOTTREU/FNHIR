function RIOT(address,flags,freeze,name,value)
    set = {}
    set[1] = {}
    set[1].address = address
    set[1].flags = flags
    set[1].value = value
    set[1].freeze = freeze
    set[1].name = name
    gg.setValues(set)
    gg.addListItems(set)
    gg.clearResults(set)
end

function Home()
    E = gg.choice({
        'Function Player',
		'Function Boss (Berken)',
        'EXIT'
    },nil,[[DEVELOPER : RIOT]])
    if E == nil then
    else
        if E == 1 then py() end
		if E == 2 then berken() end
        if E == 3 then os.exit() end
    end
end
function py()
    gg.clearResults()
    T = {"224"}
    gg.setRanges(2)
    gg.searchNumber("11001" , gg.TYPE_DWORD)
    gg.refineNumber("11001", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + T[1],4,true,"SkipTheTaik",16777216)
    gg.sleep(500)
    gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
    gg.refineNumber("3", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + 0xA4,16,true,"SpeedRun",9)
    gg.sleep(500)
    RIOT(R[1].address + 0xD4,16,true,"SpeedRun",2)
    gg.sleep(500)
    RIOT(R[1].address + 0xA8,4,true,"ki1",0)
    gg.clearResults()
	T = {"-128"}
	gg.searchNumber("27018", gg.TYPE_DWORD)
	gg.refineNumber("27018", gg.TYPE_DWORD)
	R = gg.getResults(1)
    RIOT(R[1].address + T[1],4,true,"ki",15)
    gg.clearResults()
	gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
	gg.refineNumber("3", gg.TYPE_DWORD)
	q = gg.getResults(1)
	offset = 0x8C
		p = {}
		p[1] = {}
		p[1].address = q[1].address + 0x8C
		p[1].flags = gg.TYPE_FLOAT
		p[1].value = 0
		p[1].freeze = true
		p[1].freezeType = gg.FREEZE_IN_RANGE
		p[1].freezeFrom = -250
		p[1].freezeTo = 0
		gg.setValues(p)
		gg.addListItems(p)
	gg.clearResults()
    gg.clearResults()
    gg.searchNumber('0;0;0;180;0;0::21',gg.TYPE_DWORD)
    gg.refineNumber('180',gg.TYPE_DWORD)
    t = gg.getResults(100)
    for i, v in ipairs(t) do
	t[i].value = '-1'
	t[i].freeze = true
	t[i].name = "เกิดทันที"
    gg.addListItems(t)
    gg.clearResults()
    end
    gg.sleep(1000)
    gg.clearResults()
    gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
    gg.refineNumber("11001~20008", gg.TYPE_DWORD)
    Results = gg.getResults(1)
    Results = gg.getResults(1)
    offset = -100
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].name = "map info"
    s[1].value = 700
    gg.setValues(s)
    gg.addListItems(s)
    offset = -88
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 20224
    gg.setValues(s)
    offset = -84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value =  21504
    gg.setValues(s)
    offset = 204
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 16842752
    gg.setValues(s)
    gg.clearResults()
    gg.toast("เสร็จละโว้ยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยยย")
end
function berken()
gg.clearResults()
gg.searchNumber("11001~20008;0~255;-1::9" , gg.TYPE_DWORD)
gg.refineNumber("11001~20008", gg.TYPE_DWORD)
Results = gg.getResults(1)
Results = gg.getResults(1)
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 34760
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 17920
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  24832
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
while true do
t = gg.getListItems()
for i, v in ipairs(t) do
     if v.value == 34700 then
gg.sleep(3000)
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 34760
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 17920
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  24832
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
end
     if v.value == 700 then
gg.sleep(6000)
Results = gg.getResults(1)
offset = -100
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].name = "map info"
s[1].value = 34760
gg.setValues(s)
gg.addListItems(s)
offset = -88
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 17920
gg.setValues(s)
offset = -84
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value =  24832
gg.setValues(s)
offset = 204
s = {}
s[1] = {}
s[1].address = Results[1].address + offset
s[1].flags = 4
s[1].freeze = false
s[1].value = 16842752
gg.setValues(s)
end
end
end
end



while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        Home()
    end
end