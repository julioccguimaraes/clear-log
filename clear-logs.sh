#!/usr/bin/env bash

# exclui os arquivos compactados
echo removendo arquivos compactados...
rm -f /var/log/*.gz

# podemos remover o conteúdo dos arquivos ao invés de deletá-los
# dessa forma mantemos a estrutura dos arquivos e suas permissões
echo limpando o conteúdo dos arquivos...
truncate *.log --size 0

# se mesmo assim quisermos excluir os arquivos, podemos usar o comando find
# para filtrar os arquivos .log e removê-los

echo excluindo os arquivos...
find /var/log -name '*.log' -exec rm -f {} \;

echo limpeza dos arquivos de log concluída!
