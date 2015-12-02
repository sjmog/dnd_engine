def stub_roll(value)
  allow(Kernel).to receive(:rand).and_return value
end