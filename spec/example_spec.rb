require 'spec_helper'

describe server(:web) do
    describe http('http://web') do
          it "responds content including 'Apache HTTP Server Test Page'" do
            expect(response.body).to include('Apache HTTP Server Test Page')
          end

          it "responds as 'text/html; charset=UTF-8'" do
            expect(response.headers['content-type']).to eq("text/html; charset=UTF-8")
          end
    end
end

