
class String
  def is_palindrome?
    downcase == reverse.downcase
  end
end
