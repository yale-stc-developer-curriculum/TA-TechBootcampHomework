require_relative '../deaf_grandma.rb'

describe "deaf grandma" do

  it "asks you to speak up when she can't hear you" do

      expect(DeafGrandma.responds("Hi there")).to eq("HUH?! SPEAK UP, SONNY!")
     
      expect(DeafGrandma.responds("Tomorrow's going to be a beautiful day outside.")).to eq("HUH?! SPEAK UP, SONNY!")

      expect(DeafGrandma.responds("I SAID YeS")).to eq("HUH?! SPEAK UP, SONNY!")

  end

  it "shouts back at you, when you yell at her" do

      expect(DeafGrandma.responds("ABSOLUTELY NOT")).to match(/^NO\, NOT SINCE 19[0-9][0-9]\!$/)

      expect(DeafGrandma.responds("LEAVE ME ALONE!")).to match(/^NO\, NOT SINCE 19[0-9][0-9]\!$/)

      expect(DeafGrandma.responds("BL@A&&HQW3RCVDSAF!@#$$$$")).to match(/^NO\, NOT SINCE 19[0-9][0-9]\!$/)

      expect(DeafGrandma.responds("1, 2, 3, 4")).to match(/^NO\, NOT SINCE 19[0-9][0-9]\!$/)

      expect(DeafGrandma.responds("2014")).to match(/^NO\, NOT SINCE 19[0-9][0-9]\!$/)

  end

  # test DeafGrandma's ability to reset BYE counter
  it "tells you not to leave" do

      expect(DeafGrandma.responds("BYE")).to eq("Don't go...")

      expect(DeafGrandma.responds("BYE")).to eq("Don't go...")

      expect(DeafGrandma.responds("")).not_to eq("Don't go...")

  end

  # test DeafGrandma's ability to exit
  it "won't let you leave until you say BYE three times" do             

    begin
      
      expect(DeafGrandma.responds("BYE")).to eq("Don't go...")

      expect(DeafGrandma.responds("BYE")).to eq("Don't go...")
      
      DeafGrandma.responds("BYE")
      
      fail

    rescue SystemExit
    end

  end

end
