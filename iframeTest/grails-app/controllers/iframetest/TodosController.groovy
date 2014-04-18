package iframetest

class TodosController {

	def documenttools = [
		[ id : 0, name :'one', description: 'first', url : 'http://public.puravida-software.com', image:''],
		[ id : 1, name :'two', description: 'two', url : 'http://public.puravida-software.com/empresa', image:'']
	]

    def index() {
		return 	[documenttools :documenttools] 	
	}
	
	def lientools (long id){		
		String tool = documenttools.find{ it.id == id}.url 
		String link = "<iframe contenteditable='true' name='allocine' src='${tool}' height='400' width='800'> </ iframe>"
		render link
	}
}
