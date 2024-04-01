#!/usr/bin/env ruby
# frozen_string_literal: true

# Test-Klasse und eine Ergänzung und noch etwas und schon wieder.
class MegaGreeter
  attr_accessor :names

  # Erzeuge das Objekt
  def initialize(names = 'Welt')
    @names = names
  end

  # Sag Hallo zu allen
  def sag_hallo
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('each')
      # @names ist ein Liste, durchlaufe sie!
      @names.each do |name|
        puts "Hallo, #{name}!"
      end
    else
      puts "Hallo, #{@names}!"
    end
  end

  # Sag Tschuess zu allen
  def sag_tschuess
    if @names.nil?
      puts '...'
    elsif @names.respond_to?('join')
      # Verbinde die Listenelemente mit einem Komma
      puts "Tschuess, #{@names.join(', ')}, bis bald!"
    else
      puts "Tschuess, #{@names}, bis bald!"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  mg = MegaGreeter.new
  mg.sag_hallo
  mg.sag_tschuess

  # Aendere den Namen in "Maximilian"
  mg.names = 'Maximilian'
  mg.sag_hallo
  mg.sag_tschuess

  # Aendere den Namen in ein Array von Namen
  mg.names = %w[Albert Bianca Carl-Heinz David Engelbert]
  mg.sag_hallo
  mg.sag_tschuess

  # Andere in nil
  mg.names = nil
  mg.sag_hallo
  mg.sag_tschuess
end
