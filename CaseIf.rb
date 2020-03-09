print "Masukan umur anda : "
$umur = gets.to_i

print "Masukan Berat anda : "
$berat = gets.to_i

class Decission
    def initialize(umur, berat)
        @umur = umur
        @berat = berat
    end

    def show()
        case @umur
            when 0 .. 5
                umur = "Anda Adalah Balita"
            when 6 .. 13
                umur = "Anda Masih Anak-anak"
            when 14 .. 20
                umur = "Anda Seorang Remaja"
            when 21 .. 40
                umur = "Anda Sudah Dewasa"
            else
                umur = "Anda Sudah Tua"
        end

        case @berat
            when 0 .. 10
                berat = "Berat cukup"
            when 11 .. 40
                berat = "Anda Kurang Berat Badan"
            when 41 .. 75
                berat = "Berat Anda Sudah Ideal"
            else
                berat = "Anda Kelebihan Berat Badan"
        end
        
        if @umur <= 5
            pend = "Belum Bersekolah"
        elsif @umur >= 6 && @umur <= 13
            pend = "Pendidikan Sekolah Dasar"
        elsif @umur >= 14 && @umur <= 16
            pend = "Pendidikan Sekolah Menengah Pertama"
        elsif @umur >= 17 && @umur <= 19
            pend = "Pendidikan Anda Sekolah Menengah Pertama"
        else
            pend = "Anda Sudah Bekerja"
        
        end

        puts "\n#{umur} & #{berat} & #{pend}"

    end
end

decission = Decission.new($umur, $berat)
decission.show