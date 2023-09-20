; <COMPILER: v1.1.33.09>
#NoEnv
SetWorkingDir %A_ScriptDir%
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1
CoordMode, mouse, Screen
SetTimer, RemoveToolTip, -10000
ToolTip, Script by Nom patreon.com/nomscripts`nCtrl+1/2 Add point`nAlt+1/2 Clear points`n1/2 Click points`nF6 to exit`nF5 toggle display,0,0
class JSON
{
class Load extends JSON.Functor
{
Call(self, ByRef text, reviver:="")
{
this.rev := IsObject(reviver) ? reviver : false
this.keys := this.rev ? {} : false
static quot := Chr(34), bashq := "\" . quot
, json_value := quot . "{[01234567890-tfn"
, json_value_or_array_closing := quot . "{[]01234567890-tfn"
, object_key_or_object_closing := quot . "}"
key := ""
is_key := false
root := {}
stack := [root]
next := json_value
pos := 0
while ((ch := SubStr(text, ++pos, 1)) != "") {
if InStr(" `t`r`n", ch)
continue
if !InStr(next, ch, 1)
this.ParseError(next, text, pos)
holder := stack[1]
is_array := holder.IsArray
if InStr(",:", ch) {
next := (is_key := !is_array && ch == ",") ? quot : json_value
} else if InStr("}]", ch) {
ObjRemoveAt(stack, 1)
next := stack[1]==root ? "" : stack[1].IsArray ? ",]" : ",}"
} else {
if InStr("{[", ch) {
static json_array := Func("Array").IsBuiltIn || ![].IsArray ? {IsArray: true} : 0
(ch == "{")
? ( is_key := true
, value := {}
, next := object_key_or_object_closing )
: ( value := json_array ? new json_array : []
, next := json_value_or_array_closing )
ObjInsertAt(stack, 1, value)
if (this.keys)
this.keys[value] := []
} else {
if (ch == quot) {
i := pos
while (i := InStr(text, quot,, i+1)) {
value := StrReplace(SubStr(text, pos+1, i-pos-1), "\\", "\u005c")
static tail := A_AhkVersion<"2" ? 0 : -1
if (SubStr(value, tail) != "\")
break
}
if (!i)
this.ParseError("'", text, pos)
value := StrReplace(value,  "\/",  "/")
, value := StrReplace(value, bashq, quot)
, value := StrReplace(value,  "\b", "`b")
, value := StrReplace(value,  "\f", "`f")
, value := StrReplace(value,  "\n", "`n")
, value := StrReplace(value,  "\r", "`r")
, value := StrReplace(value,  "\t", "`t")
pos := i
i := 0
while (i := InStr(value, "\",, i+1)) {
if !(SubStr(value, i+1, 1) == "u")
this.ParseError("\", text, pos - StrLen(SubStr(value, i+1)))
uffff := Abs("0x" . SubStr(value, i+2, 4))
if (A_IsUnicode || uffff < 0x100)
value := SubStr(value, 1, i-1) . Chr(uffff) . SubStr(value, i+6)
}
if (is_key) {
key := value, next := ":"
continue
}
} else {
value := SubStr(text, pos, i := RegExMatch(text, "[\]\},\s]|$",, pos)-pos)
static number := "number", integer :="integer"
if value is %number%
{
if value is %integer%
value += 0
}
else if (value == "true" || value == "false")
value := %value% + 0
else if (value == "null")
value := ""
else
this.ParseError(next, text, pos, i)
pos += i-1
}
next := holder==root ? "" : is_array ? ",]" : ",}"
}
is_array? key := ObjPush(holder, value) : holder[key] := value
if (this.keys && this.keys.HasKey(holder))
this.keys[holder].Push(key)
}
}
return this.rev ? this.Walk(root, "") : root[""]
}
ParseError(expect, ByRef text, pos, len:=1)
{
static quot := Chr(34), qurly := quot . "}"
line := StrSplit(SubStr(text, 1, pos), "`n", "`r").Length()
col := pos - InStr(text, "`n",, -(StrLen(text)-pos+1))
msg := Format("{1}`n`nLine:`t{2}`nCol:`t{3}`nChar:`t{4}"
,     (expect == "")     ? "Extra data"
: (expect == "'")    ? "Unterminated string starting at"
: (expect == "\")    ? "Invalid \escape"
: (expect == ":")    ? "Expecting ':' delimiter"
: (expect == quot)   ? "Expecting object key enclosed in double quotes"
: (expect == qurly)  ? "Expecting object key enclosed in double quotes or object closing '}'"
: (expect == ",}")   ? "Expecting ',' delimiter or object closing '}'"
: (expect == ",]")   ? "Expecting ',' delimiter or array closing ']'"
: InStr(expect, "]") ? "Expecting JSON value or array closing ']'"
:                      "Expecting JSON value(string, number, true, false, null, object or array)"
, line, col, pos)
static offset := A_AhkVersion<"2" ? -3 : -4
throw Exception(msg, offset, SubStr(text, pos, len))
}
Walk(holder, key)
{
value := holder[key]
if IsObject(value) {
for i, k in this.keys[value] {
v := this.Walk(value, k)
if (v != JSON.Undefined)
value[k] := v
else
ObjDelete(value, k)
}
}
return this.rev.Call(holder, key, value)
}
}
class Dump extends JSON.Functor
{
Call(self, value, replacer:="", space:="")
{
this.rep := IsObject(replacer) ? replacer : ""
this.gap := ""
if (space) {
static integer := "integer"
if space is %integer%
Loop, % ((n := Abs(space))>10 ? 10 : n)
this.gap .= " "
else
this.gap := SubStr(space, 1, 10)
this.indent := "`n"
}
return this.Str({"": value}, "")
}
Str(holder, key)
{
value := holder[key]
if (this.rep)
value := this.rep.Call(holder, key, ObjHasKey(holder, key) ? value : JSON.Undefined)
if IsObject(value) {
static type := A_AhkVersion<"2" ? "" : Func("Type")
if (type ? type.Call(value) == "Object" : ObjGetCapacity(value) != "") {
if (this.gap) {
stepback := this.indent
this.indent .= this.gap
}
is_array := value.IsArray
if (!is_array) {
for i in value
is_array := i == A_Index
until !is_array
}
str := ""
if (is_array) {
Loop, % value.Length() {
if (this.gap)
str .= this.indent
v := this.Str(value, A_Index)
str .= (v != "") ? v . "," : "null,"
}
} else {
colon := this.gap ? ": " : ":"
for k in value {
v := this.Str(value, k)
if (v != "") {
if (this.gap)
str .= this.indent
str .= this.Quote(k) . colon . v . ","
}
}
}
if (str != "") {
str := RTrim(str, ",")
if (this.gap)
str .= stepback
}
if (this.gap)
this.indent := stepback
return is_array ? "[" . str . "]" : "{" . str . "}"
}
} else
return ObjGetCapacity([value], 1)=="" ? value : this.Quote(value)
}
Quote(string)
{
static quot := Chr(34), bashq := "\" . quot
if (string != "") {
string := StrReplace(string,  "\",  "\\")
, string := StrReplace(string, quot, bashq)
, string := StrReplace(string, "`b",  "\b")
, string := StrReplace(string, "`f",  "\f")
, string := StrReplace(string, "`n",  "\n")
, string := StrReplace(string, "`r",  "\r")
, string := StrReplace(string, "`t",  "\t")
static rx_escapable := A_AhkVersion<"2" ? "O)[^\x20-\x7e]" : "[^\x20-\x7e]"
while RegExMatch(string, rx_escapable, m)
string := StrReplace(string, m.Value, Format("\u{1:04x}", Ord(m.Value)))
}
return quot . string . quot
}
}
Undefined[]
{
get {
static empty := {}, vt_empty := ComObject(0, &empty, 1)
return vt_empty
}
}
class Functor
{
__Call(method, ByRef arg, args*)
{
if IsObject(method)
return (new this).Call(method, arg, args*)
else if (method == "")
return (new this).Call(arg, args*)
}
}
}
Class JSONFile {
static Instances := []
__New(File) {
FileExist := FileExist(File)
JSONFile.Instances[this] := {File: File, Object: {}}
ObjRelease(&this)
FileObj := FileOpen(File, "rw")
if !IsObject(FileObj)
throw Exception("Can't access file for JSONFile instance: " File, -1)
if FileExist {
try
JSONFile.Instances[this].Object := JSON.Load(FileObj.Read())
catch e {
this.__Delete()
throw e
} if (JSONFile.Instances[this].Object = "")
JSONFile.Instances[this].Object := {}
} else
JSONFile.Instances[this].IsNew := true
return this
}
__Delete() {
if JSONFile.Instances.HasKey(this) {
ObjAddRef(&this)
JSONFile.Instances.Delete(this)
}
}
__Call(Func, Param*) {
if JSONFile.Instances[this].HasKey(Func)
return JSONFile.Instances[this][Func]
if (Func = "JSON")
return StrReplace(JSON.Dump(this.Object(),, Param.1 ? A_Tab : ""), "`n", "`r`n")
if (Func = "Save") {
try
New := this.JSON(Param.1)
catch e
return false
FileObj := FileOpen(this.File(), "w")
FileObj.Length := 0
FileObj.Write(New)
FileObj.__Handle
return true
}
if (Func = "Fill") {
if !IsObject(Param.2)
Param.2 := []
for Key, Val in Param.1 {
if (A_Index > 1)
Param.2.Pop()
HasKey := Param.2.MaxIndex()
? this.Object()[Param.2*].HasKey(Key)
: this.Object().HasKey(Key)
Param.2.Push(Key)
if IsObject(Val) && HasKey
this.Fill(Val, Param.2), Param.2.Pop()
else if !HasKey
this.Object()[Param.2*] := Val
} return
}
return Obj%Func%(this.Object(), Param*)
}
__Set(Key, Val) {
return this.Object()[Key] := Val
}
__Get(Key) {
return this.Object()[Key]
}
}
guiCount:=1
width:=30
height:=30
display := True
hoverColor := "Red"
points1:= []
points2:= []
init_points(points1,"Red")
init_points(points2,"Green")
SetTimer, hover, 1
return
1::
click_points(points1)
return
2::
click_points(points2)
return
^1::
hoverColor := "Red"
add_point(points1, "Red")
return
^2::
hoverColor := "Blue"
add_point(points2, "Blue")
return
!1::
clear_points(points1)
return
!2::
clear_points(points2)
return
F5::
display := !display
if (!display) {
hide_gui()
} else {
display_gui()
}
return
hover:
if (display) {
MouseGetPos, currx, curry
overlay_rect(currx, curry, width, height, 3, hoverColor, False)
}
return
F6::
ExitApp
return
init_points(ByRef points,color) {
global width, height, guiCount, js
tempPoints := []
For index, p In points
{
num := overlay_rect(p.currx, p.curry, width, height, 3, color, True)
tempPoints.push({"currx":p.currx,"curry":p.curry,"x1":p.x1,"y1":p.y1,"x2":p.x2,"y2":p.y2,"gui":p.num})
}
points := tempPoints
}
clear_points(ByRef points) {
For index, p In points
{
num := p.gui
Gui %num%: Destroy
}
points := []
}
add_point(ByRef points, color) {
global width, height, guiCount, js
if (points.MaxIndex() > 2) {
   ;; return
}
MouseGetPos, currx, curry
num := overlay_rect(currx, curry, width, height, 3, color)
x1 := currx - width/2
x2 := currx + width/2
y1 := curry - height/2
y2 := curry + height/2
points.push({"currx":currx,"curry":curry,"x1":x1,"y1":y1,"x2":x2,"y2":y2,"gui":num})
js.save()
}
click_points(ByRef points) {
MouseGetPos, currx, curry
For index, p In points
{
click_box(p.x1, p.y1, p.x2, p.y2)
;;Sleep, 500
Sleep, 5
}
MouseMove currx, curry
}
overlay_rect(X:=0, Y:=0, W:=0, H:=0, T:=3, cc:="Red", incr:=True) {
global guiCount
X -= W/2
Y -= H/2
w2:=W-T
h2:=H-T
txt := abs(mod(guiCount,99)+1)
Gui %txt%: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x08000000 +E0x80020
Gui %txt%: Color, %cc%
Gui %txt%: Show, w%W% h%H% x%X% y%Y% NA
WinSet, Transparent, 150
WinSet, Region, 0-0 %W%-0 %W%-%H% 0-%H% 0-0 %T%-%T% %w2%-%T% %w2%-%h2% %T%-%h2% %T%-%T%
if (incr) {
guiCount += 1
}
return txt
}
hide_gui() {
loop, 99 {
Gui %A_Index%: Hide
}
}
display_gui() {
loop, 99 {
Gui %A_Index%: +LastFound +AlwaysOnTop -Caption +ToolWindow +E0x08000000 +E0x80020
Gui %A_Index%: Show
}
}
click_box(x1, y1, x2, y2) {
ToolTip
x += target_random(x1,(x1+x2)/2,x2)
y += target_random(y1,(y1+y2)/2,y2)
MouseMove(x, y)
Click
}
MouseMove(x,y,Speed:=2)
{
MouseGetPos, x0, y0
xd := x-x0, yd := y-y0
z := Sqrt(xd*xd+yd*yd)//Speed
xd := xd/z, yd := yd/z
Loop,% z {
MouseMove, x0+=xd, y0+=yd, 1
MouseGetPos, xx, yy
xdd := x-xx, ydd := y-yy
if (Sqrt(xdd*xdd+ydd*ydd) < 5) {
sleep, 1
}
}
;;Sleep, rand_range(20,30)
Sleep, rand_range(2,3)
}
rand_range(min, max) {
return (min+max)/2
}
target_random(min, target, max){
Return, target
}
RemoveToolTip:
ToolTip
return
