import grails.plugins.metadata.GrailsPlugin
import org.grails.gsp.compiler.transform.LineNumber
import org.grails.gsp.GroovyPage
import org.grails.web.taglib.*
import org.grails.taglib.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_justpad_notepadedit_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/notepad/edit.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("layout"),'content':("notepad")],-1)
printHtmlPart(1)
invokeTag('set','g',5,['var':("entityName"),'value':(message(code: 'notepad.label', default: 'Notepad'))],-1)
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(3)
invokeTag('javascript','asset',8,['src':("application")],-1)
printHtmlPart(1)
invokeTag('javascript','asset',9,['src':("spring-websocket")],-1)
printHtmlPart(4)
expressionOut.print(createLink(uri: '/stomp'))
printHtmlPart(5)
out.print(params.chave)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',55,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
invokeTag('message','g',57,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(9)
if(true && (flash.message)) {
printHtmlPart(10)
expressionOut.print(flash.message)
printHtmlPart(11)
}
printHtmlPart(12)
createTagBody(2, {->
printHtmlPart(13)
createTagBody(3, {->
printHtmlPart(14)
if(true && (error in org.springframework.validation.FieldError)) {
printHtmlPart(15)
expressionOut.print(error.field)
printHtmlPart(16)
}
printHtmlPart(17)
invokeTag('message','g',65,['error':(error)],-1)
printHtmlPart(18)
})
invokeTag('eachError','g',66,['bean':(this.notepad),'var':("error")],3)
printHtmlPart(19)
})
invokeTag('hasErrors','g',68,['bean':(this.notepad)],2)
printHtmlPart(12)
createTagBody(2, {->
printHtmlPart(20)
invokeTag('hiddenField','g',70,['name':("version"),'value':(this.notepad?.version)],-1)
printHtmlPart(21)
invokeTag('textArea','g',73,['name':("conteudo"),'value':(this.notepad?.conteudo),'id':("conteudo"),'rows':("18"),'class':("txtArea")],-1)
printHtmlPart(22)
})
invokeTag('form','g',75,['resource':(this.notepad),'method':("PUT")],2)
printHtmlPart(23)
})
invokeTag('captureBody','sitemesh',77,[:],1)
printHtmlPart(24)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1479339488000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
