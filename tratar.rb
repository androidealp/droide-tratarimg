require "tinify"
# Meu código api key and4563@gmail.com
Tinify.key = "key"

caminhoreal = 'C:/xampp/htdocs/github/droide-tratarimg/imgreal/'
caminhotratado = 'C:/xampp/htdocs/github/droide-tratarimg/imgtratar/'

puts "identifico a url para tratar..."
# Dir.glob(caminhoreal+'*') do |arquivo|
#   ext = File.extname(arquivo)
#   if ext == '.jpg' || ext == '.JPG' || ext == '.png'
#     filename = File.basename(arquivo, File.extname(arquivo))
#     filename = filename.tr(
# "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉÊËèéêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮįİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÒÓÔÕÖØòóôõöøŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠšſŢţŤťŦŧÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽž",
# "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnOOOOOOooooooOoOoOoRrRrRrSsSsSsSssTtTtTtUUUUuuuuUuUuUuUuUuUuWwYyyYyYZzZzZz")
#
#     arquivotratado = filename.downcase.gsub(/\W/,'-')
#     arquivotratado = caminhotratado+arquivotratado+ext.downcase
#     File.rename(arquivo, arquivotratado)
#     puts arquivotratado;
#   end
# end
#
# puts "Acentuação e espaços tratados para formato web!"
#
# puts "Redimensionando as imagens para o padrão desejado...."

Dir.glob(caminhoreal+'*') do |arquivo|
  puts "Tratando #{arquivo}...."
  ext = File.extname(arquivo)
  if ext == '.jpg' || ext == '.JPG' || ext == '.png'
    source = Tinify.from_file(arquivo)
    filename = File.basename(arquivo, File.extname(arquivo))
    source.to_file(caminhotratado+filename+ext.downcase)

    puts "Imagem #{arquivo} tratada!"
    # resized = source.resize(
    #       method: "fit",
    #       width: 800,
    #       height: 600
    #     )
    # resized.to_file(arquivo);
  end
end

puts "Finalizado!"
