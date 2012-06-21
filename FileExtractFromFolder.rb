# This is a script to extract all the zip files from the folder
# @adi
# kind of ridiculous how this script is just 10 lines including the comments.
require 'FileUtils'

puts 'What is the Folder containing the zip Files' 
ZipsFolder = gets.chomp

puts 'What is the folder to copy to ' 
CopyTo = gets.chomp
Dir.chdir(ZipsFolder)
ZipFiles = Dir.glob('**/*.zip')
ZipFiles.each do |zip|
FileUtils.copy_file(zip , CopyTo+ zip.split('/').last)
end 
