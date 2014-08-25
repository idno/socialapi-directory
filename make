#!/bin/sh
pushd .
cd ../socialapi-pages
rm -rf jp-JP es-AR pt-BR nl css js images index.html
wget -nH -erobots=off -p http://localhost:8888/index.html
wget -nH -erobots=off -p http://localhost:8888/redirect.html
for __LOCALE in en-US zh-TW fr gl de it ja ru es
do
  rm -rf $__LOCALE
  wget -r -nH -erobots=off http://localhost:8888/$__LOCALE/activated/
  rm $__LOCALE/activated/index.html
  wget -r -nH -erobots=off http://localhost:8888/$__LOCALE/
  wget -nH -erobots=off -p http://localhost:8888/$__LOCALE/sharePanel.html
done

# old goal.com pages
wget -nH -erobots=off -p http://localhost:8888/id/goal.html
wget -nH -erobots=off -p http://localhost:8888/id/
wget -nH -erobots=off -p http://localhost:8888/es-AR/goal.html
wget -nH -erobots=off -p http://localhost:8888/es-AR/
wget -nH -erobots=off -p http://localhost:8888/pt-BR/goal.html
wget -nH -erobots=off -p http://localhost:8888/pt-BR/
wget -nH -erobots=off -p http://localhost:8888/nl/goal.html
wget -nH -erobots=off -p http://localhost:8888/nl/

popd
