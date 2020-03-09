puts "\n\n---------- Welcome to Rby_Calculator -----------\n\n"
puts "Pilih Salah Satu :"
puts "1. Pertambahan"
puts "2. Pengurangan"
puts "3. Perkalian"
puts "4. Pembagian\n\n"
puts "------------------------------------------------\n\n"

print "Masukan Pilihan Anda : "
$choice = gets.to_i
if $choice == nil or $choice == 0
    raise ArgumentError.new("You Must Choice one")
elsif $choice > 4
    raise ArgumentError.new("No Choice")
end


class Choice 
    def initialize (pilihan)
        @choice = pilihan
    end

    def show_choice ()

        case @choice
            when @choice = 1
                puts "\n  -- Anda Masuk Di Menu Pertambahan -- \n\n"

                print "Masukan Nilai Pertama = "
                i = gets.to_f

                print "Masukan Nilai Kedua = "
                x = gets.to_f
                
                nilai = i + x

                puts "\nHasil Yang Didapatkan #{nilai}"

            when @choice = 2
                puts "\n  -- Anda Masuk Di Menu Pengurangan -- \n\n"

                print "Masukan Nilai Pertama = "
                i = gets.to_f

                print "Masukan Nilai Kedua = "
                x = gets.to_f
                
                nilai = i - x

                puts "\nHasil Yang Didapatkan #{nilai}"

            when @choice = 3
                puts "\n  -- Anda Masuk Di Menu Perkalian -- \n\n"

                print "Masukan Nilai Pertama = "
                i = gets.to_f

                print "Masukan Nilai Kedua = "
                x = gets.to_f
                
                nilai = i * x

                puts "\nHasil Yang Didapatkan #{nilai}"

            when @choice = 4
                puts "\n  -- Anda Masuk Di Menu Pembagian -- \n\n"

                print "Masukan Nilai Pertama = "
                i = gets.to_f

                print "Masukan Nilai Kedua = "
                x = gets.to_f
                
                nilai = i / x

                puts "\nHasil Yang Didapatkan #{nilai}\n"

            end
    end

end

choice_obj = Choice.new($choice)
choice_obj.show_choice()
