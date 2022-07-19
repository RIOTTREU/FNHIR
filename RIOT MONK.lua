function HOME()
ff = gg.choice({
'py',
'ล็อกตีน',
'exit'
},0,[[]])
if ff == 0 then else
if ff == 1 then atkf() gg.sleep(50) atks() gg.sleep(50) atkst() gg.sleep(50) mud() end
if ff == 2 then lock() end
if ff == 3 then os.exit() end
end
end

function atkf()
	gg.clearResults()
	r = {"-128"}
	gg.searchNumber("27018", gg.TYPE_DWORD)
	gg.refineNumber("27018", gg.TYPE_DWORD)
	q = gg.getResults(1)
	for i = 1,#r do
		p = {}
		p[i] = {}
		p[i].address = q[1].address + r[i]
		p[i].flags = gg.TYPE_DWORD
		p[i].value = 15
		p[i].freeze = true
gg.setValues(p)
		gg.addListItems(p)
end
gg.clearResults()
gg.clearResults()	
gg.toast("Okเสร็จละ ตีไกล ดราก้อนคลอ")
end

function atks()
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
end

function atkst()
	gg.clearResults()
	gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
	gg.refineNumber("3", gg.TYPE_DWORD)
	q = gg.getResults(1)
	offset = 0xA8
		p = {}
		p[1] = {}
		p[1].address = q[1].address + 0xA8
		p[1].flags = gg.TYPE_FLOAT
		p[1].value = 0
		p[1].freeze = true
		gg.setValues(p)
		gg.addListItems(p)
	gg.clearResults()
	gg.toast("Okเสร็จละ ตีรัว")
end

function mud()
gg.clearResults()
gg.searchNumber('0;0.1::5',gg.TYPE_FLOAT)
gg.refineNumber('0.1',gg.TYPE_FLOAT)
t = gg.getResults(100)
for i, v in ipairs(t) do
	t[i].value = '0'
	t[i].freeze = false
	t[i].name = "มุดแมพ"
 gg.setValues(t)
gg.clearResults()
end
end

function lock()
gg.clearResults()
	gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
	gg.refineNumber("3", gg.TYPE_DWORD)
	q = gg.getResults(1)
	offset = 0xA4
		p = {}
		p[1] = {}
		p[1].address = q[1].address + 0xA4
		p[1].flags = gg.TYPE_FLOAT
		p[1].value = 0
		p[1].freeze = true
		gg.setValues(p)
		gg.addListItems(p)
	gg.clearResults()
end


while true do
if gg.isVisible(true) then
gg.setVisible(false)
HOME()
end
end