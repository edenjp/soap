def cep_xml_payload
	'<x:Envelope xmlns:x="http://schemas.xmlsoap.org/soap/envelope/" xmlns:www="urn:http://www.byjg.com.br">
	    <x:Header/>
	    <x:Body>
	        <www:obterLogradouro>
	            <www:cep>'+@parameters['cep']+'</www:cep>
	            <www:usuario>'+@parameters['user']+'</www:usuario>
	            <www:senha>'+@parameters['password']+'</www:senha>
	        </www:obterLogradouro>
	    </x:Body>
	</x:Envelope>'	
end

