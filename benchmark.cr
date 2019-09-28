require "benchmark"

enum CMD
  XFER
  UPDATE_INV
  EQITEM
  FILLER1
  FILLER2
  FILLER3
  FILLER4
  FILLER5
  FILLER6
  FILLER7
  FILLER8
  FILLER9
  FILLER10
  FILLER11
  FILLER12
  FILLER13
  FILLER14
  FILLER15
  FILLER16
  FILLER17
  FILLER18
  FILLER19
  FILLER20
  FILLER21
  FILLER22
  FILLER23
  FILLER24

  FILLER25
  FILLER26
  FILLER27
  FILLER28
  FILLER29
  FILLER30
end

# CREATE CONSTANTS SO THE TESTING BENCHMARK IS FAIR when rand picks a COMMAND!
# The purpose is to simulate  a real game server as commands might come in randomly.

STRING_COMMANDS = CMD.names

CMD_INDEX_VALUES = Array(Int32).new

CMD.names.each_with_index do |v, i|
  CMD_INDEX_VALUES << i
end

Benchmark.ips do |x|
  x.report("case_when_enum") { case_when_enum }
  x.report("case_when_string") { case_when_string }
end

def handle_xfer
end

def handle_update_inv
end

def handle_eq_item
end

def handle_filler1
end

def handle_filler2
end

def handle_filler3
end

def handle_filler4
end

def handle_filler5
end

def handle_filler6
end

def handle_filler7
end

def handle_filler8
end

def handle_filler9
end

def handle_filler10
end

def handle_filler11
end

def handle_filler12
end

def handle_filler13
end

def handle_filler14
end

def handle_filler15
end

def handle_filler16
end

def handle_filler17
end

def handle_filler18
end

def handle_filler19
end

def handle_filler20
end

def handle_filler21
end

def handle_filler22
end

def handle_filler23
end

def handle_filler24
end

def handle_filler25
end

def handle_filler26
end

def handle_filler27
end

def handle_filler28
end

def handle_filler29
end

def handle_filler30
end

def case_when_enum
  # Pick a random ENUM
  cmd = CMD.from_value CMD_INDEX_VALUES.shuffle[0]

  case cmd
  when CMD::XFER
    handle_xfer()
  when CMD::UPDATE_INV
    handle_update_inv()
  when CMD::EQITEM
    handle_eq_item()
  when CMD::FILLER1
    handle_filler1()
  when CMD::FILLER2
    handle_filler2()
  when CMD::FILLER3
    handle_filler3()
  when CMD::FILLER4
    handle_filler4()
  when CMD::FILLER5
    handle_filler5()
  when CMD::FILLER6
    handle_filler6()
  when CMD::FILLER7
    handle_filler7()
  when CMD::FILLER8
    handle_filler8()
  when CMD::FILLER9
    handle_filler9()
  when CMD::FILLER10
    handle_filler10()
  when CMD::FILLER11
    handle_filler11()
  when CMD::FILLER12
    handle_filler12()
  when CMD::FILLER13
    handle_filler13()
  when CMD::FILLER14
    handle_filler14()
  when CMD::FILLER15
    handle_filler15()
  when CMD::FILLER16
    handle_filler16()
  when CMD::FILLER17
    handle_filler17()
  when CMD::FILLER18
    handle_filler18()
  when CMD::FILLER19
    handle_filler19()
  when CMD::FILLER20
    handle_filler20()
  when CMD::FILLER21
    handle_filler21()
  when CMD::FILLER22
    handle_filler22()
  when CMD::FILLER23
    handle_filler23()
  when CMD::FILLER24
    handle_filler24()
  when CMD::FILLER25
    handle_filler25()
  when CMD::FILLER26
    handle_filler26()
  when CMD::FILLER27
    handle_filler27()
  when CMD::FILLER28
    handle_filler28()
  when CMD::FILLER29
    handle_filler29()
  when CMD::FILLER30
    handle_filler30()
  end
end

def case_when_string
  # PICK  A RANDOM STRING COMMAND
  cmd = CMD.names.shuffle[0]
  case cmd
  when "XFER"
    handle_xfer()
  when "UPDATE_INV"
    handle_update_inv()
  when "EQITEM"
    handle_eq_item()
  when "FILLER1"
    handle_filler1()
  when "FILLER2"
    handle_filler2()
  when "FILLER3"
    handle_filler3()
  when "FILLER4"
    handle_filler4()
  when "FILLER5"
    handle_filler5()
  when "FILLER6"
    handle_filler6()
  when "FILLER7"
    handle_filler7()
  when "FILLER8"
    handle_filler8()
  when "FILLER9"
    handle_filler9()
  when "FILLER10"
    handle_filler10()
  when "FILLER11"
    handle_filler11()
  when "FILLER12"
    handle_filler12()
  when "FILLER13"
    handle_filler13()
  when "FILLER14"
    handle_filler14()
  when "FILLER15"
    handle_filler15()
  when "FILLER16"
    handle_filler16()
  when "FILLER17"
    handle_filler17()
  when "FILLER18"
    handle_filler18()
  when "FILLER19"
    handle_filler19()
  when "FILLER20"
    handle_filler20()
  when "FILLER21"
    handle_filler21()
  when "FILLER22"
    handle_filler22()
  when "FILLER23"
    handle_filler23()
  when "FILLER24"
    handle_filler24()
  when "FILLER25"
    handle_filler25()
  when "FILLER26"
    handle_filler26()
  when "FILLER27"
    handle_filler27()
  when "FILLER28"
    handle_filler28()
  when "FILLER29"
    handle_filler29()
  when "FILLER30"
    handle_filler30()
  end
end
