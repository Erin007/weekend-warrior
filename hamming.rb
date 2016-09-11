class Hamming
attr :dna_seq_1, :dna_seq_2

def initialize
  @dna_seq_1 = dna_seq_1
  @dna_seq_2 = dna_seq_2
end

  def self.compute(dna_seq_1, dna_seq_2)

    hamming_distance = 0
    i = 0
    dna_seq_1.chars
    dna_seq_2.chars

    if dna_seq_1.length == dna_seq_2.length
      #puts "They are the same length"
        (dna_seq_1.length).times do |i|
        if dna_seq_1[i] != dna_seq_2[i]
            hamming_distance +=1
          end
        end

      return hamming_distance

    else
      raise ArgumentError
    end
  end
end
