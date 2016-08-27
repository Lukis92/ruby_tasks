require 'active_support/core_ext/string/filters'
def get_users_ids(string)
  #lstrip - remove leading whitespace
  #tstrip - remove trailing whitespace
  #strip - remove leading and trailing whitespace
  #squish - removeing all whitespace on both ends and groups multiple white
  #space to single space
  pattern = /uid/
  string = string.split(", ").map(&:strip)
  string.each do |s|
    s.squish!
    s.gsub!(/#/, "")
    s.gsub!(/^uid/, "")
    s.downcase!
  end
  print string
end
get_users_ids("uid12345")
get_users_ids("   uidabc  ")
get_users_ids("#uidswagger")
get_users_ids("uidone, uidtwo")
get_users_ids("uidMultipleuid")
get_users_ids("uidUId 123456789#0, uiduID 1234 5678 9, uidUidusEr, uidui#dPIp pI, uidUID1234 5, uidu i dHAcKe r, uidUID123, uiduId12, uiduiD12, uidU#iD12#, uidUI  d#1234567890")
#Expected: ["uidpassword", "uidu ser", "uidhax0r", "uidhax0r", "uid password", "uid.", "uid.", " uid1234", " uid12 345", "u i dsecret", "uid12345 6", "uid12345"]
#instead   ["uidpassword", "uidu ser", "uidhax0r", "uidhax0r", "uid  password", "uid.", "uid.", "  uid1234", "  uid12 345", "u  i dsecret", "uid12345 6", "uid12345"]
