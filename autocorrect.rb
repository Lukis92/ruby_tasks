class Autocorrect
  def autocorrect(input)
    input = input.downcase
    chars = input.split('')
    chars.each_with_index do |c, index|
      if c .eql? 'u'
        chars[index] = 'your sister'
      end
    end
    return chars
  end
end
