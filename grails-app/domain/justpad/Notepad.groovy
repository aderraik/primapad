package justpad

class Notepad {

	String chave, conteudo

    static constraints = {
    	chave unique:true
    	conteudo nullable:true, maxSize:40000
    }

    static mapping = {
    	conteudo sqlType: 'text'
    }
}
