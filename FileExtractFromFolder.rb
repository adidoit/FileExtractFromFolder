# This is a script to extract all the MT zip files from the folder
# @adi
# kind of ridiculous how this script is just 10 lines including the comments.
require 'FileUtils'

Dir.chdir('D:\Seeburger\Messages\ANSI_X12\\ZIPS')
ZipFiles = Dir.glob('**/*.zip')
ZipFiles.each do |zip|
FileUtils.copy_file(zip , 'D:\\Seeburger\\Messages\\' + zip.split('/').last)
end 