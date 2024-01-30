module Geocaching
  module Codes
    class ARQM
      CODES = {
        '0011010': {ltrs: 'A', figs: '-'},
        '0011001': {ltrs: 'B', figs: '?'},
        '1001100': {ltrs: 'C', figs: ':'},
        '0011100': {ltrs: 'D', figs: 'wru'},
        '0111000': {ltrs: 'E', figs: '3'},
        '0010011': {ltrs: 'F', figs: ''},
        '1100001': {ltrs: 'G', figs: ''},
        '1010010': {ltrs: 'H', figs: ''},
        '1110000': {ltrs: 'I', figs: '8'},
        '0100011': {ltrs: 'J', figs: 'bell'},
        '0001011': {ltrs: 'K', figs: '('},
        '1100010': {ltrs: 'L', figs: ')'},
        '1010001': {ltrs: 'M', figs: '.'},
        '1010100': {ltrs: 'N', figs: ','},
        '1000110': {ltrs: 'O', figs: '9'},
        '1001010': {ltrs: 'P', figs: '0'},
        '0001101': {ltrs: 'Q', figs: '1'},
        '1100100': {ltrs: 'R', figs: '4'},
        '0101010': {ltrs: 'S', figs: "'"},
        '1000101': {ltrs: 'T', figs: '5'},
        '0110010': {ltrs: 'U', figs: '7'},
        '1001001': {ltrs: 'V', figs: '='},
        '0100101': {ltrs: 'W', figs: '2'},
        '0010110': {ltrs: 'X', figs: '/'},
        '0010101': {ltrs: 'Y', figs: '6'},
        '0110001': {ltrs: 'Z', figs: '+'},
        '1000011': {ltrs: "\r", figs: "\r"},
        '1011000': {ltrs: "\n", figs: "\n"},
        '0001110': ->(this) { this.mode = :ltrs },
        '0100110': ->(this) { this.mode = :figs },
        '1101000': {ltrs: " ", figs: " "},
        '0000111': {ltrs: "", figs: ""},
        '0110100': {ltrs: "RQ", figs: "RQ"},
        '0101001': {ltrs: "α", figs: "α"},
        '0101100': {ltrs: "β", figs: "β"},
      }
      attr_reader :code_stream, :mode
      attr_writer :mode

      def initialize(code_stream)
        @code_stream = code_stream
        @mode = :ltrs
      end

      def decode
        result = []
        code_stream.each do |code|
          item = CODES[code.to_sym]
          if item
            if item.is_a?(Hash)
              result << item[mode]
            elsif item.is_a?(Proc)
              item.call(self)
            end
          else
            # raise "Undefined code sequence: #{code}"
          end
        end
        result
      end
    end
  end
end
