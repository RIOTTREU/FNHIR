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

function HOME()
    FGG = gg.choice({
        'เมนูภาษาไทย',
        'English menu',
        '[ออก]/[exit]'
    },nil,"DEVELOPER : RIOT\nกรุณาเลือกภาษา\nPlease select a language")
    if FGG == nil then
    else
        if FGG == 1 then
            TH()
        end
        if FGG == 2 then
            EN()
        end
        if FGG == 3 then
            os.exit()
    end
    end
end

function EN()
    oc = gg.choice({
        'Function Player',
        'Function Boss',
        'Function Warp the city',
        'EXIT'
    },nil,[[DEVELOPER : RIOT]])
    if oc == nil then
    else
        if oc == 1 then
            FNCLASSPYEN()
        end
        if oc == 2 then
            CLASSBS()
        end
        if oc == 3 then
            wtc()
        end
        if oc == 4 then
            gg.clearList(true) os.exit()
        end
    end
end

function TH()
    oc = gg.choice({
        'ฟังชั้นพื้นฐานของผู้เล่น',
        'ฟังชั้นข้ามบอส',
        'ฟังชั้นวาป',
        'ออก'
    },nil,[[DEVELOPER : RIOT]])
    if oc == nil then
    else
        if oc == 1 then
            FNCLASSPY()
        end
        if oc == 2 then
            CLASSBSTH()
        end
        if oc == 3 then
            wtc()
        end
        if oc == 4 then
            gg.clearList(true) os.exit()
        end
    end
end
function FNCLASSPY()
    FP = gg.choice({
        'ฟังชั้นพื้นฐาน(แบบรวม)',
        'ฟังชั้นพื้นฐาน(แบบแยก)',
        'กลับ'
    },nil,[[DEVELOPER : RIOT]])
    if FP == nil then
    else
        if FP == 1 then
            CLASSPY()
        end
        if FP == 2 then
            FNPY()
        end
        if FP == 3 then
            TH()
        end
    end
end

function FNCLASSPYEN()
    FP = gg.choice({
        'Listen to the basics (included)',
        'Listen to the basics (separately)',
        'Back'
    },nil,[[DEVELOPER : RIOT]])
    if FP == nil then
    else
        if FP == 1 then
            CLASSPY()
        end
        if FP == 2 then
            FNPYEN()
        end
        if FP == 3 then
            EN()
        end
    end
end

function FNPYEN()
    P = gg.multiChoice({
        'Automatic Skip',
        'Run Fast',
        'Run Through The Wall',
        'Back'
    },nil,[[DEVELOPER : RIOT]])
    if P == nil then
    else
        if P[1] then
            ASU()
        end
        if P == 2 then
            SN()
        end
        if P[3] then
            SNA()
        end
        if P[4]then
            EN()
        end
    end
end

function FNPY()
    P = gg.multiChoice({
        'กดข้ามออโต้',
        'วิ่งเร็ว',
        'วิ่งทะลุ',
        'กลับ'
    },nil,[[DEVELOPER : RIOT]])
    if P == nil then
    else
        if P[1] then
            ASU()
        end
        if P == 2 then
            SN()
        end
        if P[3] then
            SNA()
        end
        if P[4]then
            TH()
        end
    end
end

function ASU()
    gg.clearResults()
    T = {"224"}
    gg.setRanges(2)
    gg.searchNumber("11001" , gg.TYPE_DWORD)
    gg.refineNumber("11001", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + T[1],4,true,"SkipTheTaik",16777216)
end

function SN()
    gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
    gg.refineNumber("3", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + 0xA4,16,true,"SpeedRun",9)
end

function SNA()
    gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
    gg.refineNumber("3", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + 0xD4,16,true,"SpeedRun",2)
end

function CLASSPY()
    gg.clearResults()
    T = {"224"}
    gg.setRanges(2)
    gg.searchNumber("11001" , gg.TYPE_DWORD)
    gg.refineNumber("11001", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + T[1],4,true,"SkipTheTaik",16777216)
    gg.searchNumber("3;1;-1;0~9999::13", gg.TYPE_DWORD)
    gg.refineNumber("3", gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + 0xA4,16,true,"SpeedRun",9)
    RIOT(R[1].address + 0xD4,16,true,"SpeedRun",2)
end

function CLASSBSTH()
    CB = gg.choice({
        'บอส ตอนที่ 1',
        'บอส ตอนที่ 2',
        'บอส ตอนที่ 3 Developing',
        'บอส ตอนที่ 4 not updated⪻',
        'บอส ตอนที่ 5 not updated⪻',
        'กลับ'
    },nil,[[DEVELOPER : RIOT]])
    if CB == nil then
    else
        if CB == 1 then
            BE1()
        end
        if CB == 2 then
            BE2()
        end
        if CB == 3 then
            BE3()
        end
        if CB == 4 then
            BE4()
        end
        if CB == 5 then
            BE5()
        end
        if CB == 6 then
            TH()
        end
    end
end
function CLASSBS()
    CB = gg.choice({
        'Boss Episode 1',
        'Boss Episode 2',
        'Boss Episode 3 Developing',
        'Boss Episode 4 not updated⪻',
        'Boss Episode 5 not updated⪻',
        'Back'
    },nil,[[DEVELOPER : RIOT]])
    if CB == nil then
    else
        if CB == 1 then
            BE1E()
        end
        if CB == 2 then
            BE2E()
        end
        if CB == 3 then
            BE3E()
        end
        if CB == 4 then
            BE4E()
        end
        if CB == 5 then
            BE5E()
        end
        if CB == 6 then
            EN()
        end
    end
end

BS = 0
if io.open("/storage/emulated/0/Download/RIOT.lua") then
else io.open("/storage/emulated/0/Download/RIOT.lua","w")
end
file = io.open([[/storage/emulated/0/Download/RIOT.lua]],[[r]]):read([[*a]])
load(file)()
function BE1()
    BS = gg.choice({
        'มังกรศิลาเฟลเซน',
        'มังกรไฟเบลอาร์ด',
        'ราชันมังกรไกเซอร์',
        'เวเทนเดธ',
		'เทพมารกรีเซีย',
		'ชตรุม',
		'วิซาเลออน',
		'โคลอนทรี',
		'เวอร์นอส',
		'มังกรลมเบราเซน',
		'ไฮดรา',
		'บองเกีย',
		'มังกรน้ำแข็งไอเซน',
		'ซอร์แวน',
		'เฮลิออส',
		'กรีเซีย(ปลอม)',
		'อาโกลาคานส์',
		'ชริงเกิล',
		'เดคิสมัน',
        'เบลเซด',
		'มังกรทรายแชนท์',
		'บอสไฮท์',
		'มาเธอร์',
		'มาทาโดรา',
		'มังกรความมืดฟินสดัน',
		'ไคเซพิลซ์',
		'ทาลันเต',
		'กูรี',
		'อานูบิเตส',
		'กูซานอส',
		'มังกรฟ้าฮิมเมล',
		'พลาซูดา',
		'อาวุธซูร์วิเนีย',
		'โชโจ',
		'กังคาคุ',
		'กังเอ',
		'มิเนนากะ',
		'รูปปั้นอิซุรุกิ',
		'เมทัลบราว',
		'กาเรล',
        'ซีมอฟ',
		'รอสซัม',
		'จาเว็ค',
		'มังกรสายฟ้าลิทซ์',
		'ซีมแคร็กเกอร์',
		'อาซีมอฟ',
		'เมซาลูนา',
		'เซียนัส',
        'Back'
    },BS,[[DEVELOPER : RIOT]])
    if BS ~= nil then RT = BS end
        if BS == 1 then sb01() end --มังกรศิลาเฟลเซน
        if BS == 2 then sb02() end --มังกรไฟเบลอาร์ด
        if BS == 3 then sb03() end --ราชันมังกรไกเซอร์
		if BS == 4 then sb04() end --เวเทนเดธ
		if BS == 5 then sb05() end --เทพมารกรีเซีย
		if BS == 6 then sb06() end --ชตรุม
		if BS == 7 then sb07() end --วิซาเลออน
		if BS == 8 then sb08() end --โคลอนทรี
		if BS == 9 then sb09() end --เวอร์นอส
		if BS == 10 then sb10() end --มังกรลมเบราเซน
		if BS == 11 then sb11() end --ไฮดรา
		if BS == 12 then sb12() end --บองเกีย
		if BS == 13 then sb13() end --มังกรน้ำแข็งไอเซน
		if BS == 14 then sb14() end --ซอร์แวน
		if BS == 15 then sb15() end --เฮลิออส
		if BS == 16 then sb16() end --กรีเซีย(ปลอม)
		if BS == 17 then sb17() end --อาโกลาคานส์
		if BS == 18 then sb18() end --ชริงเกิล
		if BS == 19 then sb72() end --เดคิสมัน
        if BS == 20 then sb73() end --เบลเซด
		if BS == 21 then sb19() end --มังกรทรายแชนท์
		if BS == 22 then sb20() end --บอสไฮท์
		if BS == 23 then sb21() end --มาเธอร์
		if BS == 24 then sb22() end --มาทาโดรา
		if BS == 25 then sb23() end --มังกรความมืดฟินสดัน
		if BS == 26 then sb24() end --ไคเซพิลซ์
		if BS == 27 then sb25() end --ทาลันเต
		if BS == 28 then sb26() end --กูรี
		if BS == 29 then sb27() end --อานูบิเตส
		if BS == 30 then sb28() end --กูซานอส
		if BS == 31 then sb29() end --มังกรฟ้าฮิมเมล
		if BS == 32 then sb30() end --พลาซูดา
		if BS == 33 then sb31() end --อาวุธซูร์วิเนีย
		if BS == 34 then sb32() end --โชโจ
		if BS == 35 then sb33() end --กังคาคุ
		if BS == 36 then sb34() end --กังเอ
		if BS == 37 then sb35() end --มิเนนากะ
		if BS == 38 then sb36() end --รูปปั้นอิซุรุกิ
		if BS == 39 then sb37() end --เมทัลบราว
		if BS == 40 then sb38() end --กาเรล
        if BS == 41 then sb74() end --ซีมอฟ
		if BS == 42 then sb39() end --รอสซัม
		if BS == 43 then sb40() end --จาเว็ค
		if BS == 44 then sb41() end --มังกรสายฟ้าลิทซ์
		if BS == 45 then sb42() end --ซีมแคร็กเกอร์
		if BS == 46 then sb43() end --อาซีมอฟ
		if BS == 47 then sb44() end --เมซาลูนา
		if BS == 48 then sb45() end --เซียนัส
        if BS == 49 then CLASSBS() end 
        if BS == 1 then gg.alert("") end
        if BS == nil then BS = RT end
        LOG =[[BS=]]..BS..[[]]
    io.open("/storage/emulated/0/Download/RIOT.lua","w"):write(LOG)
end
function sb01()
    gg.clearResults()
    T = {"8"}
    gg.searchNumber("128;7;9;0::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + T[1],4,false,"มังกรศิลาเฟลเซน",8)
end
function sb02()
    gg.clearResults()
    T = {"8"}
    gg.searchNumber("128;1;6;0::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    R = gg.getResults(1)
    RIOT(R[1].address + T[1],4,false,"มังกรไฟเบลอาร์ด",4)
end
function sb03() --ราชันมังกรไกเซอร์ ok 
    gg.clearResults()
    r = {"4"}
    gg.searchNumber("128;4;0;0::13",gg.TYPE_DWORD)
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
        gg.setValues(p)
        gg.addListItems(p)
    end
end
function sb04() --เวเทนเดธ ok 
    gg.clearResults()
    r = {"4"}
	t = {"8"}
    gg.searchNumber("128;6;7;0::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[1] = {}
        p[1].address = q[1].address +r[i]
        p[1].flags = 4
        p[1].value = 8
        p[1].freeze = false
        p[1].name = "เวเทนเดธ1"
        gg.setValues(p)
        gg.addListItems(p)
		p[1].address = q[1].address +t[i]
		p[1].flags = 4
        p[1].value = 8
        p[1].freeze = false
        p[1].name = "เวเทนเดธ2"
		gg.setValues(p)
        gg.addListItems(p)
    end
end
function sb05() --เทพมารกรีเซีย ok
    J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "เวเทนเดธ1" then
	v.value = 2
	gg.setValues(J)
	end
	end
end
function sb06() --ชตรุมok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 5
        p[1].freeze = false
        p[1].name = "ชตรุม"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb07() --วิซาเลออนOK          ต้องมีฟังชั้นกลับเมือง 
    gg.clearResults()
    gg.searchNumber("128;5;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("5",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 3
        p[1].freeze = false
        p[1].name = "วิซาเลออน"
        gg.setValues(p)
        gg.addListItems(p)
    gg.sleep(5000)
    gg.clearResults()
    r = {"204"}
    gg.searchNumber("11001;0~255;-1::9",gg.TYPE_DWORD)
    gg.refineNumber("11001",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address + r[1]
        p[1].flags = 4
        p[1].value = 999999999
        p[1].freeze = false
        p[1].name = "วาป"
        gg.setValues(p)
end
function sb08() --โคลอนทรีok
    gg.clearResults()
    gg.searchNumber("128;7;7;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8
        p[1].freeze = false
        p[1].name = "โคลอนทรี"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb09() --เวอร์นอสok
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 6
        p[1].freeze = false
        p[1].name = "เวอร์นอส"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb10() --มังกรลมเบราเซนok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7
        p[1].freeze = false
        p[1].name = "มังกรลมเบราเซน"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb11() --ไฮดรา ok 
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 6
        p[1].freeze = false
        p[1].name = "ไฮดรา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb12() --บองเกีย ok 
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 6
        p[1].freeze = false
        p[1].name = "บองเกีย"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb13() --มังกรน้ำแข็งไอเซน ok 
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 4
        p[1].freeze = false
        p[1].name = "มังกรน้ำแข็งไอเซน"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb14() --ซอร์แวน2 ok
    gg.clearResults()
    r = {"4"}
    t = {"8"}
    y = {"12"}
    U = {"16"}
    gg.searchNumber("128;9;9;9::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
        p[1].address = q[1].address +r[1]
        p[1].flags = 4
        p[1].value = 10
        p[1].freeze = false
        p[1].name = "ซอร์แวน1"
        gg.setValues(p)
        gg.addListItems(p)
        p[1].address = q[1].address +t[1]
        p[1].flags = 4
        p[1].value = 10
        p[1].freeze = false
        p[1].name = "ซอร์แวน2"
        gg.setValues(p)
        gg.addListItems(p)
        p[1].address = q[1].address +y[1]
        p[1].flags = 4
        p[1].value = 10
        p[1].freeze = false
        p[1].name = "ซอร์แวน3"
        gg.setValues(p)
        gg.addListItems(p)
        p[1].address = q[1].address +U[1]
        p[1].flags = 4
        p[1].value = 10
        p[1].freeze = false
        p[1].name = "ซอร์แวน4"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb15() --เฮลิออส Ok
    gg.clearResults()
	r = {"4"}
	t = {"8"}
	y = {"12"}
	U = {"16"}
    gg.searchNumber("128;14;14;14::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address +r[1]
        p[1].flags = 4
        p[1].value = 15
        p[1].freeze = false
        p[1].name = "เฮลิออส1"
        gg.setValues(p)
        gg.addListItems(p)
		p[1].address = q[1].address +t[1]
        p[1].flags = 4
        p[1].value = 15
        p[1].freeze = false
        p[1].name = "เฮลิออส2"
        gg.setValues(p)
        gg.addListItems(p)
		p[1].address = q[1].address +y[1]
        p[1].flags = 4
        p[1].value = 15
        p[1].freeze = false
        p[1].name = "เฮลิออส3"
        gg.setValues(p)
        gg.addListItems(p)
		p[1].address = q[1].address +U[1]
        p[1].flags = 4
        p[1].value = 15
        p[1].freeze = false
        p[1].name = "เฮลิออส4"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb16() --กรีเซีย(ปลอม) ok
    gg.clearResults()
    gg.searchNumber("128;11;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("11",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 9
        p[1].freeze = false
        p[1].name = "กรีเซีย(ปลอม)"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb17() --อาโกลาคานส์ ok
    J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "กรีเซีย(ปลอม)" then
	v.value = 5
	gg.setValues(J)
	end
	end
end
function sb18() --ชริงเกิล ok 
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 4
        p[1].freeze = false
        p[1].name = "ชริงเกิล"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb19() --มังกรทรายแชนท์ Ok
    gg.clearResults()
    gg.searchNumber("128;6;9;9::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8
        p[1].freeze = false
        p[1].name = "มังกรทรายแชนท์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb20() --บอสไฮท์ Ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 4
        p[1].freeze = false
        p[1].name = "บอสไฮท์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb21() --มาเธอร์ ok
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 9 --4
        p[1].freeze = false
        p[1].name = "มาเธอร์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb22() --มาทาโดรา Ok
    gg.clearResults()
	r = {"8"}
    gg.searchNumber("128;7;7;0::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address +r[1]
        p[1].flags = 4
        p[1].value = 6 --
        p[1].freeze = false
        p[1].name = "มาทาโดรา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb23() --มังกรความมืดฟินสดัน OK
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 9 --
        p[1].freeze = false
        p[1].name = "มังกรความมืดฟินสดัน"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb24() --ไคเซพิลซ์ Ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --8
        p[1].freeze = false
        p[1].name = "ไคเซพิลซ์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb25() --ทาลันเต Ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 6 --
        p[1].freeze = false
        p[1].name = "ทาลันเต"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb26() --กูรี OK
    gg.clearResults()
	r = {"4"}
	t = {"8"}
    gg.searchNumber("128;10;10;0::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address +r[1]
        p[1].flags = 4
        p[1].value = 12 --
        p[1].freeze = false
        p[1].name = "กูรี1"
        gg.setValues(p)
        gg.addListItems(p)
		p[1].address = q[1].address +t[1]
        p[1].flags = 4
        p[1].value = 12 --
        p[1].freeze = false
        p[1].name = "กูรี2"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb27() --อานูบิเตส OK
    gg.clearResults()
    gg.searchNumber("128;15;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("15",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 17 --
        p[1].freeze = false
        p[1].name = "อานูบิเตส"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb28() --กูซานอส ok
    gg.clearResults()
    gg.searchNumber("128;10;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("10",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "กูซานอส"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb29() --มังกรฟ้าฮิมเมล ok
    gg.clearResults()
    gg.searchNumber("128;3;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("3",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "มังกรฟ้าฮิมเมล"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb30() --พลาซูดา ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "พลาซูดา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb31() --อาวุธซูร์วิเนีย Ok
    gg.clearResults()
    gg.searchNumber("128;7;7;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "อาวุธซูร์วิเนีย"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb32() --โชโจ Ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "โชโจ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb33() --กังคาคุ OK
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "กังคาคุ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb34() --กังเอ OK
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "กังเอ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb35() --มิเนนากะ OK
    gg.clearResults()
    gg.searchNumber("128;11;12;0::13",gg.TYPE_DWORD)
    gg.refineNumber("11",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 13 --
        p[1].freeze = false
        p[1].name = "มิเนนากะ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb36() --รูปปั้นอิซุรุกิ OK
    gg.clearResults()
    gg.searchNumber("128;17;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("17",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 18 --
        p[1].freeze = false
        p[1].name = "รูปปั้นอิซุรุกิ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb37() --เมทัลบราว OK
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เมทัลบราว"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb38() --กาเรล OK
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "กาเรล"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb39() --รอสซัม ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "รอสซัม"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb40() --จาเว็ค ok 
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "จาเว็ค"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb41() --มังกรสายฟ้าลิทซ์ ok
    gg.clearResults()
    gg.searchNumber("128;15;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("15",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 16 --
        p[1].freeze = false
        p[1].name = "มังกรสายฟ้าลิทซ์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb42() --ซีมแคร็กเกอร์ ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "ซีมแคร็กเกอร์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb43() --อาซีมอฟ ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "อาซีมอฟ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb44() --เมซาลูนา ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "เมซาลูนา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb45() --เซียนัส ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "เซียนัส"
        gg.setValues(p)
        gg.addListItems(p)
end


BS = 0
if io.open("/storage/emulated/0/Download/RIOT.lua") then
else io.open("/storage/emulated/0/Download/RIOT.lua","w")
end
file = io.open([[/storage/emulated/0/Download/RIOT.lua]],[[r]]):read([[*a]])
load(file)()
function BE2()
    BS = gg.choice({
        'เบลเซนอยด์',
		'ห้วหน้ากอง เบลเซม',
		'เบลเซดัม',
		'มากอนจา',
		'จิดู',
		'เบลเซนอม',
		'เบลเซโทล',
		'กบอล',
		'เกลุสต์',
		'กาดาฟ',
		'มังกรผู้พิทักษ์',
		'ราชันมังกรไกเซอร์2',
		'มอร์ดาส',
		'วีดา',
		'เนียปา',
		'เนโต',
		'เซเลเซากา',
		'นักรบแห่งแสง',
		'มอร์เบลเซม',
		'เซลทิซิส',
		'อิมเซ็ท',
		'โทโทรัส',
		'เนทรัม',
		'ผู้ตามล่า',
		'ยูซิรุส',
		'ราอาทอน',
        'Back'
    },BS,[[DEVELOPER : RIOT]])
    if BS == 0 then else
        if BS ~= nil then RT = BS end
        if BS == 1 then sb46() end --เบลเซนอยด์
		if BS == 2 then sb47() end --ห้วหน้ากอง เบลเซม
		if BS == 3 then sb48() end --เบลเซดัม
		if BS == 4 then sb49() end --มากอนจา
		if BS == 5 then sb50() end --จิดู
		if BS == 6 then sb51() end --เบลเซนอม
		if BS == 7 then sb52() end --เบลเซโทล
		if BS == 8 then sb53() end --กบอล
		if BS == 9 then sb54() end --เกลุสต์
		if BS == 10 then sb55() end --กาดาฟ
		if BS == 11 then sb56() end --มังกรผู้พิทักษ์
		if BS == 12 then sb57() end --ราชันมังกรไกเซอร์2
		if BS == 13 then sb58() end --มอร์ดาส
		if BS == 14 then sb59() end --วีดา
		if BS == 15 then sb60() end --เนียปา
		if BS == 16 then sb61() end --เนโต
		if BS == 17 then sb62() end --เซเลเซากา
		if BS == 18 then sb63() end --นักรบแห่งแสง
		if BS == 19 then sb64() end --มอร์เบลเซม
		if BS == 20 then sb65() end --เซลทิซิส
		if BS == 21 then sb66() end --อิมเซ็ท
		if BS == 22 then sb67() end --โทโทรัส
		if BS == 23 then sb68() end --เนทรัม
		if BS == 24 then sb69() end --ผู้ตามล่า
		if BS == 25 then sb70() end --ยูซิรุส
		if BS == 26 then sb71() end --ราอาทอน
        if BS == 27 then CLASSBS() end 
        if BS == 1 then gg.alert("") end
        if BS == nil then BS = RT end
        LOG =[[BS=]]..BS..[[]]
    io.open("/storage/emulated/0/Download/RIOT.lua","w"):write(LOG)
    end
end
function sb46() --เบลเซนอยด์ ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เบลเซนอยด์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb47() --ห้วหน้ากอง เบลเซม ok
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "ห้วหน้ากอง เบลเซม"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb48() --เบลเซดัม Ok    
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เบลเซดัม"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb49() --มากอนจา Ok
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "มากอนจา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb50() --จิดู OK
    J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "มากอนจา" then
	v.value = 7
	gg.setValues(J)
	end
	end
end
function sb51() --เบลเซนอม OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เบลเซนอม"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb52() --เบลเซโทล OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เบลเซโทล"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb53() --กบอล OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "กบอล"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb54() --เกลุสต์ OK 
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เกลุสต์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb55() --กาดาฟ OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "กาดาฟ"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb56() --มังกรผู้พิทักษ์ OK
    gg.clearResults()
    gg.searchNumber("128;0;8;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "มังกรผู้พิทักษ์"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb57() --ราชันมังกรไกเซอร์2 OK
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "ราชันมังกรไกเซอร์2"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb58() --มอร์ดาส OK
    J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "ราชันมังกรไกเซอร์2" then
	v.value = 7
	gg.setValues(J)
	end
	end
end
function sb59() --วีดา OK
    gg.clearResults()
	r = {"4"}
	t = {"8"}
    gg.searchNumber("128;8;8;0::13",gg.TYPE_DWORD)
    gg.refineNumber("128",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address +r[1]
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "วีดา1"
        gg.setValues(p)
        gg.addListItems(p)
		p[1].address = q[1].address +t[1]
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "วีดา2"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb60() --เนียปา OK  
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เนียปา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb61() --เนโต OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เนโต"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb62() --เซเลเซากา OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เซเลเซากา"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb63() --นักรบแห่งแสง OK
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "นักรบแห่งแสง"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb64() --มอร์เบลเซม OK
        J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "นักรบแห่งแสง" then
	v.value = 7
	gg.setValues(J)
	end
	end
end
function sb65() --เซลทิซิส ok
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "เซลทิซิส"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb66() --อิมเซ็ท ok
    gg.clearResults()
    gg.searchNumber("128;8;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("8",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "อิมเซ็ท"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb67() --โทโทรัส ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "โทโทรัส"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb68() --เนทรัม ok
    J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "โทโทรัส" then
	v.value = 8
	gg.setValues(J)
	end
	end
end
function sb69() --ผู้ตามล่า ok
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "ผู้ตามล่า"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb70() --ยูซิรุส
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "ยูซิรุส"
        gg.setValues(p)
        gg.addListItems(p)
end
function sb71() --ราอาทอน b01/b02/MD
B = gg.choice({"ข้ามร่าง1","ข้ามร่าง2","ไปที่ดราฟ","กลับ"},nil,[[DEVELOPER : RIOT]])
	if B == 1 then b01() end --เลขNPC
	if B == 2 then b02() end --เลขแมพ
	if B == 3 then MD() end 
	if B == 4 then CLASSBS() end 
	RIOT = -1
end
function sb72() --เดคิสมัน ok 
    J=gg.getListItems()
	for i,v in ipairs(J) do
	if v.name == "กรีเซีย(ปลอม)" then
	v.value = 9
	gg.setValues(J)
	end
	end
end
function sb73() --เบลเซด ok
    gg.clearResults()
    r = {"-100"}
    gg.searchNumber("11001;0;-1;0::13",gg.TYPE_DWORD)
    gg.refineNumber("11001",gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[i] = {}
        p[i].address = q[1].address + r[i]
        p[i].flags = 4 
        p[i].value = 8960
        p[i].freeze = true
        gg.setValues(p)
        gg.addListItems(p)
        gg.sleep(8000)
        p[i].address = q[1].address + r[i]
        p[i].flags = 4 
        p[i].value = 8960
        p[i].freeze = false
        gg.setValues(p)
        gg.addListItems(p)
    end	
    gg.clearResults()
    gg.toast("ข้ามได้เลยจ้าาา")
end
function sb74() --ซีมอฟ ok
    gg.clearResults()
    gg.searchNumber("128;7;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("7",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 8 --
        p[1].freeze = false
        p[1].name = "ยูซิรุส"
        gg.setValues(p)
        gg.addListItems(p) 
end
function b01() --ราอาทอน 1 
    gg.clearResults()
        gg.searchNumber("128;9;0;0::13",gg.TYPE_DWORD)
        gg.refineNumber("9",gg.TYPE_DWORD)
        q = gg.getResults(1)
        p = {}
            p[1] = {}
            p[1].address = q[1].address 
            p[1].flags = 4
            p[1].value = 8 --
            p[1].freeze = false
            p[1].name = "ข้ามร่าง1"
            gg.setValues(p)
            gg.addListItems(p)
end
function b02() --ราอาทอน 2 
    gg.clearResults()
    r = {"-100"}
    gg.searchNumber("11001",gg.TYPE_DWORD)
    gg.refineNumber("11001",gg.TYPE_DWORD)
    q = gg.getResults(1)
    for i = 1,#r do
        p = {}
        p[i] = {}
        p[i].address = q[1].address + r[i]
        p[i].flags = 4 
        p[i].value = 30560
        p[i].freeze = true
        gg.sleep(400)
        gg.setValues(p)
        gg.addListItems(p)
        p[i].freeze = false
        gg.sleep(5000)
        p[i].address = q[1].address + r[i]
        p[i].flags = 4 
        p[i].value = 30461
        p[i].freeze = true
        gg.sleep(400)
        gg.setValues(p)
        gg.addListItems(p)
        p[i].freeze = false
    end	
    gg.clearResults()
    gg.toast("ข้ามได้เลยจ้าาา")
end
function MD() ---ราอาทอน 3 ok
    gg.clearResults()
    r = {"-100"}
    t = {"204"}
        gg.searchNumber("11001;0;-1;0::13",gg.TYPE_DWORD)
        gg.refineNumber("11001",gg.TYPE_DWORD)
        q = gg.getResults(1)
        for i = 1,#r do
            p = {}
            p[1] = {}
            p[1].address = q[1].address +r[i]
            p[1].flags = 4
            p[1].value = 20300 --
            p[1].freeze = false
            p[1].name = "ดราฟ"
            gg.setValues(p)
            gg.addListItems(p)
            p[1].address = q[1].address +t[i]
            p[1].flags = 4
            p[1].value = 16842752 --
            p[1].freeze = false
            gg.setValues(p)
        end
end

BS = 0
if io.open("/storage/emulated/0/Download/RIOT.lua") then
else io.open("/storage/emulated/0/Download/RIOT.lua","w")
end
file = io.open([[/storage/emulated/0/Download/RIOT.lua]],[[r]]):read([[*a]])
load(file)()
function BE3()
    BS = gg.choice({
        'อิไรย์',
        'Back'
    },BS,[[DEVELOPER : RIOT]])
    if BS ~= nil then RT = BS end
        if BS == 1 then cb01() end
    if BS == 2 then CLASSBS() end 
    if BS == 1 then gg.alert("") end
    if BS == nil then BS = RT end
    LOG =[[BS=]]..BS..[[]]
io.open("/storage/emulated/0/Download/RIOT.lua","w"):write(LOG)
end
function cb01() --อิไรย์ OK
    gg.clearResults()
    gg.searchNumber("128;6;0;0::13",gg.TYPE_DWORD)
    gg.refineNumber("6",gg.TYPE_DWORD)
    q = gg.getResults(1)
    p = {}
        p[1] = {}
		p[1].address = q[1].address 
        p[1].flags = 4
        p[1].value = 7 --
        p[1].freeze = false
        p[1].name = "อิไรย์"
        gg.setValues(p)
        gg.addListItems(p)
end


    





















function wtc()
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
    s[1].value = 80000
    gg.setValues(s)
    gg.addListItems(s)
    offset = -88
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value = 12800
    gg.setValues(s)
    offset = -84
    s = {}
    s[1] = {}
    s[1].address = Results[1].address + offset
    s[1].flags = 4
    s[1].freeze = false
    s[1].value =  7680
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
end


















while true do
    if gg.isVisible(true) then
        gg.setVisible(false)
        HOME()
    end
end
