require_relative 'encryptor_solution'
require 'set'

describe "encryptor" do

  it "generate a hash table given a rotation value" do

      expect(Encryptor.cipher(1).to_a.to_set).to eq({" "=>"!", "!"=>"\"", "\""=>"#", "#"=>"$", "$"=>"%", "%"=>"&", "&"=>"'", "'"=>"(", "("=>")", ")"=>"*", "*"=>"+", "+"=>",", ","=>"-", "-"=>".", "."=>"/", "/"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>":", ":"=>";", ";"=>"<", "<"=>"=", "="=>">", ">"=>"?", "?"=>"@", "@"=>"A", "A"=>"B", "B"=>"C", "C"=>"D", "D"=>"E", "E"=>"F", "F"=>"G", "G"=>"H", "H"=>"I", "I"=>"J", "J"=>"K", "K"=>"L", "L"=>"M", "M"=>"N", "N"=>"O", "O"=>"P", "P"=>"Q", "Q"=>"R", "R"=>"S", "S"=>"T", "T"=>"U", "U"=>"V", "V"=>"W", "W"=>"X", "X"=>"Y", "Y"=>"Z", "Z"=>"[", "["=>"\\", "\\"=>"]", "]"=>"^", "^"=>"_", "_"=>"`", "`"=>"a", "a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>" "}.to_a.to_set)
     
      expect(Encryptor.cipher(10).to_a.to_set).to eq({" "=>"*", "!"=>"+", "\""=>",", "#"=>"-", "$"=>".", "%"=>"/", "&"=>"0", "'"=>"1", "("=>"2", ")"=>"3", "*"=>"4", "+"=>"5", ","=>"6", "-"=>"7", "."=>"8", "/"=>"9", "0"=>":", "1"=>";", "2"=>"<", "3"=>"=", "4"=>">", "5"=>"?", "6"=>"@", "7"=>"A", "8"=>"B", "9"=>"C", ":"=>"D", ";"=>"E", "<"=>"F", "="=>"G", ">"=>"H", "?"=>"I", "@"=>"J", "A"=>"K", "B"=>"L", "C"=>"M", "D"=>"N", "E"=>"O", "F"=>"P", "G"=>"Q", "H"=>"R", "I"=>"S", "J"=>"T", "K"=>"U", "L"=>"V", "M"=>"W", "N"=>"X", "O"=>"Y", "P"=>"Z", "Q"=>"[", "R"=>"\\", "S"=>"]", "T"=>"^", "U"=>"_", "V"=>"`", "W"=>"a", "X"=>"b", "Y"=>"c", "Z"=>"d", "["=>"e", "\\"=>"f", "]"=>"g", "^"=>"h", "_"=>"i", "`"=>"j", "a"=>"k", "b"=>"l", "c"=>"m", "d"=>"n", "e"=>"o", "f"=>"p", "g"=>"q", "h"=>"r", "i"=>"s", "j"=>"t", "k"=>"u", "l"=>"v", "m"=>"w", "n"=>"x", "o"=>"y", "p"=>"z", "q"=>" ", "r"=>"!", "s"=>"\"", "t"=>"#", "u"=>"$", "v"=>"%", "w"=>"&", "x"=>"'", "y"=>"(", "z"=>")"}.to_a.to_set)

      expect(Encryptor.cipher(-20).to_a.to_set).to eq({" "=>"g", "!"=>"h", "\""=>"i", "#"=>"j", "$"=>"k", "%"=>"l", "&"=>"m", "'"=>"n", "("=>"o", ")"=>"p", "*"=>"q", "+"=>"r", ","=>"s", "-"=>"t", "."=>"u", "/"=>"v", "0"=>"w", "1"=>"x", "2"=>"y", "3"=>"z", "4"=>" ", "5"=>"!", "6"=>"\"", "7"=>"#", "8"=>"$", "9"=>"%", ":"=>"&", ";"=>"'", "<"=>"(", "="=>")", ">"=>"*", "?"=>"+", "@"=>",", "A"=>"-", "B"=>".", "C"=>"/", "D"=>"0", "E"=>"1", "F"=>"2", "G"=>"3", "H"=>"4", "I"=>"5", "J"=>"6", "K"=>"7", "L"=>"8", "M"=>"9", "N"=>":", "O"=>";", "P"=>"<", "Q"=>"=", "R"=>">", "S"=>"?", "T"=>"@", "U"=>"A", "V"=>"B", "W"=>"C", "X"=>"D", "Y"=>"E", "Z"=>"F", "["=>"G", "\\"=>"H", "]"=>"I", "^"=>"J", "_"=>"K", "`"=>"L", "a"=>"M", "b"=>"N", "c"=>"O", "d"=>"P", "e"=>"Q", "f"=>"R", "g"=>"S", "h"=>"T", "i"=>"U", "j"=>"V", "k"=>"W", "l"=>"X", "m"=>"Y", "n"=>"Z", "o"=>"[", "p"=>"\\", "q"=>"]", "r"=>"^", "s"=>"_", "t"=>"`", "u"=>"a", "v"=>"b", "w"=>"c", "x"=>"d", "y"=>"e", "z"=>"f"}.to_a.to_set)

  end

  it "encrypt a single character" do

      expect(Encryptor.encrypt_letter("A",1)).to eq("B")
     
      expect(Encryptor.encrypt_letter("A",5)).to eq("F")

      expect(Encryptor.encrypt_letter("A",-2)).to eq("?")

  end

  it "encrypt a string" do

      expect(Encryptor.encrypt("Hello, World!",10)).to eq("Rovvy6*ay!vn+")

      expect(Encryptor.encrypt("Oh the humanity!",50)).to eq("&?RK?<R?LD8E@KPS")

      expect(Encryptor.encrypt("Meet me at Elephant Lake on the 9th",-17)).to eq("<TTcj\\TjPcj4[T_WP]cj;PZTj^]jcWTj(cW")

  end

  it "decrypt a string" do

      expect(Encryptor.decrypt("Rovvy6*ay!vn+",10)).to eq("Hello, World!")

      expect(Encryptor.decrypt("&?RK?<R?LD8E@KPS",50)).to eq("Oh the humanity!")

      expect(Encryptor.decrypt("<TTcj\\TjPcj4[T_WP]cj;PZTj^]jcWTj(cW",-17)).to eq("Meet me at Elephant Lake on the 9th")
  end

end