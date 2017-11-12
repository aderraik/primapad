<img src="./logo.png" width="150" align="right">

# PRIMAPAD
[![MIT license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/timgrossmann/InstaPy/blob/master/LICENSE)
[![built with Selenium](https://img.shields.io/badge/built%20with-Selenium-yellow.svg)](https://github.com/SeleniumHQ/selenium)
[![built with Grails](https://img.shields.io/badge/built%20with-Grails-red.svg)](https://www.python.org/)
[![Travis](https://img.shields.io/travis/rust-lang/rust.svg)](https://travis-ci.org/timgrossmann/InstaPy)

### Compilação e _Deploy_:

```bash
1. Verificar o arquivo _grails-app/conf/application.yml_ com as senhas e usuário

2. Gerar o arquivo war: _grails prod war_

3. Copiar o arquivo build/libs/justapad-0.1.war para o servidor em: _primapad/build/libs_

4. ROdar o script _stop.sh_ para parar a versão que está rodando.

5. Executar o script _run.sh_ para iniciar a nova versão.
```

### Basic Installation:

```bash
1. Somente com java instalado na maquina
 - baixar justapad-0.1.war da pasta target
 - rodar comando java -jar justapad-0.1.war
 
2. Com Tomcat instalado
 - Incluir pacote justapad-0.1.war na pasta webapps
 - Reiniciar container para deploy da aplicaÃ§Ã£o
```

