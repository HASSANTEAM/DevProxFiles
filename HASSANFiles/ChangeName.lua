local function ChangeName(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local abbs = DevAbs:get("HASSANTEAM:Name"..result.id_)
if not result.first_name_ then 
if abbs then 
DevAbs:del("HASSANTEAM:Name"..result.id_) 
end
end
if result.first_name_ then 
if abbs and abbs ~= result.first_name_ then 
local abs_text = {
"اسمك "..result.first_name_.." لماذا غيرت اسمك 🌚😹",
"اسمك الجديد لم يعجبني، 🤤♥️ ",
"لماذا غيرت اسمك  "..result.first_name_.."\n فكرت لا أحد يعلم انت غيرت اسمك ؟ 🌚😹",
"اسمك "..result.first_name_.." لماذا غيرت اسمك ؟، 🤤♥️", 
}
abbss = math.random(#abs_text)
Dev_Abs(msg.chat_id_, msg.id_, 1, abs_text[abbss], 1, 'html')
end  
DevAbs:set("HASSANTEAM:Name"..result.id_, result.first_name_)  
end
end
end,nil) 
end
end

end
return {
HASSAN = ChangeName
}
