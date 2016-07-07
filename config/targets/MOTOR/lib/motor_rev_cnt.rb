require 'cosmos/conversions/conversion'
module Cosmos
  class MotorRevCnt < Conversion
    def call(value, packet, buffer)
      return (packet.read('RAW_CNT', :RAW).to_i / 9600)
    end
  end
end