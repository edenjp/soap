def xml_payload()

  @post_action_cep            = '<soapenv:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:byjg="urn:http://www.byjg.com.br">
   <soapenv:Header/>
   <soapenv:Body>
      <byjg:obterCEP soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">
         <logradouro xsi:type="xsd:string">'+@parameters['logradouro']+'</logradouro>
         <localidade xsi:type="xsd:string">'+@parameters['localidade']+'</localidade>
         <UF xsi:type="xsd:string">'+@parameters['UF']+'</UF>
      </byjg:obterCEP>
   </soapenv:Body>
</soapenv:Envelope>'

end
