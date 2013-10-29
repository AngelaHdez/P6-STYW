require 'spec_helper'
require 'pp'

describe RockPaperScissors::App do
	#let(:app) {Rack::MockRequest.new(RockPaperScissors::App.new)}
	def app
        Rack::MockRequest.new(Rack::Session::Cookie.new(RockPaperScissors::App.new, 
        	:secret =>'cookie')) 
  	end


	context "/" do
		it "debe devolver el codigo 200 success" do
			res = app.get("/")
			res.status.should == 200
			
			
		end

		it "debe mostrar RPS" do
			app.post('/').should match('RPS')
		end
	end	

	context "/?choice=scissors" do 
		it "debe devolver el codigo 200" do
			app.get("/?choice=scissors").status.should == 200
		end

		it "debe mostrar tijeras" do 
			app.get("/?choice=scissors").body.should match("http://banot.etsii.ull.es/alu4079/STYW/rps/tijeras.png")
		end

		it "resultado" do
			app.get("/?choice=scissors").body.include?('<h2>Ganaste!</h2>')

		end
	end

	context "/?choice=scissors" do 
		it "debe tener boton jugar " do
			app.post("/?choice=scissors").body.should match("<a href='/'>")
			app.post("/?choice=scissors").body.should match("Juega otra vez")
		end
	end

	

	context "/?choice=rock" do 
		it "debe devolver el codigo 200" do
			app.get("/?choice=rock").status.should == 200
		end

		it "debe mostrar roca" do 
			app.get("/?choice=rock").body.should match("http://banot.etsii.ull.es/alu4079/STYW/rps/piedra.png")
		end

	end

	context "/?choice=paper" do 
		it "debe devolver el codigo 200" do
			app.get("/?choice=paper").status.should == 200
		end

		it "debe mostrar papel" do 
			app.get("/?choice=paper").body.should match("http://banot.etsii.ull.es/alu4079/STYW/rps/papel.png")
		end

	end

	##cookie
end