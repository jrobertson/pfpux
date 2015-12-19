#!/usr/bin/env ruby

# file: pfpux.rb

require 'rsync'
require 'dir-to-xml'


class PFPuX

  def initialize(dir, target, msg='')

    directories = rsync dir, target
    
    directories.each do |dirpath, files|

      dtx = DirToXML.new File.join(target, dirpath)

      files.each do |filename|

        row = dtx.find_by_filename filename
        next unless row

        row[:description] = msg
      end
      
      dtx.save if files.any?

    end

  end

  private

  def rsync(dir, target)
    
    h = {}

    Rsync.run(dir, target ,'-a') do |result|

      if result.success?

        result.changes.each do |change|

          puts ":: #{change.filename} (#{change.summary})"
          s = change.filename

          if s[-1] == '/' then

            curkey = s
            h.merge!(curkey => []) 

          else
            curkey = File.dirname(s)
            h.merge!(curkey => []) unless h.has_key? curkey
            h[curkey] << File.basename(s)
          end

        end
      else
        puts result.error
      end

    end

    return h
  end

end
