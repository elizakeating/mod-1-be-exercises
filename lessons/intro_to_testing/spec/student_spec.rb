#only need to require rspec for before ruby 3
require "rspec"
require "./lib/student"


describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new("Penelope")

      expect(student).to be_an_instance_of(Student)
    end
    it 'has readable attributes' do
      # test it has a name
      # test it has cookies
      student = Student.new("Penelope")

      expect(student.name).to eq("Penelope")
      expect(student.cookies).to eq([])
    end
  end
  describe '#add_cookie' do
    it 'can add cookies' do
      # test it can add cookies
      student = Student.new("Penelope")
      student.add_cookie("Chocolate Chunk")
      student.add_cookie("Snickerdoodle")

      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
    end
  end
end

# query method => method that returns some value
# command method => methods that perform some action on some object