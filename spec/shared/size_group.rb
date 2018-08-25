RSpec.shared_examples 'sizeable' do
  let(:task) { Task.new }

  it 'knows a one-point story is small' do
    allow(task).to receive(:size).and_return(1)
    expect(task).to be_small
  end

  it 'knows a five-point story is epic' do
    allow(task).to receive(:size).and_return(5)
    expect(task).to be_epic
  end
end
