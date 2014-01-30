require 'Cell'

  describe Cell do

    context "initialization" do
      let(:puzzle) { '01500300200010090627'+
                      '00684304900020175010'+
                      '40380003905000900081'+
                      '04086007002503720460'+
                      '0'}
      let(:grid) { Cell.new }
    

        it 'should return true if cell filled out' do
          expect(cell.value).to be_true
        end

    end
  end


















