def Caesar_Cipher (changed = '')
    puts "Whats the string?"
    string = gets.chomp
    puts "Whats the shift?"
    shift = gets.chomp
    shift = shift.to_i

    string.each_char do |char|
        baseline = char.ord < 91 ? 65 : 97
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            change = (((char.ord - baseline) + shift) % 26) + baseline
            changed += change.chr
        else
            changed += char
        end
    end
    puts changed
    changed
end

Caesar_Cipher()