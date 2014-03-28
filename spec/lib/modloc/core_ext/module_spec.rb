require 'spec_helper'
require 'fixtures/sample'

describe Module do

  def sample_with_line(line)
    dir  = File.dirname(__FILE__)
    file = File.join dir, '../../../fixtures/sample.rb'
    expect(File.exist? file).to be_true
    file = File.expand_path file
    [file, line]
  end

  def lines(*lines)
    lines.map do |line|
      sample_with_line(line)
    end.sort
  end

  describe '#source_locations' do
    context 'for Foo' do
      it 'should return the proper locations' do
        expect(Foo.source_locations)
        .to eq lines(2, 9, 14, 30, 36)
      end
    end

    context 'for Bar' do
      it 'should return the proper locations' do
        expect(Bar.source_locations)
        .to eq lines(5, 19, 24, 42, 48)
      end
    end

    context 'for Foo::Baz' do
      it 'should return the proper locations' do
        expect(Foo::Baz.source_locations)
        .to eq lines(10, 32)
      end
    end

    context 'for Bar::Baz' do
      it 'should return the proper locations' do
        expect(Bar::Baz.source_locations)
        .to eq lines(20, 44)
      end
    end

    context 'for Foo::Raz' do
      it 'should return the proper locations' do
        expect(Foo::Raz.source_locations)
        .to eq lines(15, 38)
      end
    end

    context 'for Bar::Raz' do
      it 'should return the proper locations' do
        expect(Bar::Raz.source_locations)
        .to eq lines(25, 50)
      end
    end

    context 'for Foo::Taz' do
      it 'should return the proper locations' do
        expect(Foo::Taz.source_locations)
        .to eq lines(55)
      end
    end

    context 'for Boo::Saz' do
      it 'should return the proper locations' do
        expect(Bar::Saz.source_locations)
        .to eq lines(58)
      end
    end
  end

end