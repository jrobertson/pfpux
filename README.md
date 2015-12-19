# Introducing the Project File Publisher using XML (PFPuX) gem

    require 'pfpux'

    PFPuX.new '/tmp/trinkets', '/tmp/trinkets2', '1st commit'

The above example copies a directory to another directory using the Rsync gem and the Dir-to-XML gem. The message (1st commit) is added to the description of the file in the index file (dir.xml) when a new file is added or modified.

## Resources

* pfpux https://rubygems.org/gems/pfpux

pfpux rsync dirtoxml gem publisher
