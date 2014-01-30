require 'Grid'

  describe Grid do

    context "initialization" do 
      let(:puzzle) { '01500300200010090627'+
                      '00684304900020175010'+
                      '40380003905000900081'+
                      '04086007002503720460'+
                      '0'}
      let(:grid) { Grid.new(puzzle) }
      
       it 'should have 81 cells' do
        expect(grid.cells.length).to eq(81)
      end

       it 'should have an unsolved first cell' do
        expect(grid.cells.first).to eq(0)
      end

      it 'should have 9 rows' do
        expect(grid.rows.count).to eq 9
      end

      it 'should have a solved second cell with value 1' do
        pending
      end

    end
  end










      

      
   





















