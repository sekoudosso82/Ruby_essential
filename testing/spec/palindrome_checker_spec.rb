require_relative '../lib/palindrome_cheker'

RSpec.describe PalindromeChecker do 
    describe '#check' do
       let(:checker) {PalindromeChecker.new} 
        it 'returns true when given a palaindrome' do 
            word = "racecar"
            result = checker.check(word)
            expect(result).to be true
        end 
        it 'returns false when word is not a palaindrome' do 
            word = 'not_a_palaindrome'
            result = checker.check(word)
            expect(result).to be false
        end 
        it 'returns true when given a palaindrome with space' do 
            word = 'taco cat'
            result = checker.check(word)
            expect(result).to be true
        end 
        it 'returns true when given a palaindrome of mixed case' do 
            word = 'NeverOddOrEven'
            result = checker.check(word)
            expect(result).to be true
        end 

        # pending case to be write 
        xit 'return true when given a palindrome with snake case'
        xit 'other thing'
        xit 'something else'

    end
end 