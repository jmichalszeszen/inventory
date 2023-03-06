<?php
      include "database.php";

      $json = file_get_contents('php://input');
      $data = json_decode($json,true);
     
      $data_return = new stdClass();
      $error = 0;
      $message = "";

      if(!empty($data))
      {
	 $arrayOfItens  = array();
	 for($x=0; $x<sizeof($data); $x++)
	 {
   	   foreach($data[$x] as $name => $valor)
           {
              switch($name)
              {
		 case 'host_name':
	           $host_name=$valor;
		   break;
		 case 'ipv4_address':
                   $ipv4_address=$valor;
		   break;
		 case 'ipv6_address':
                   $ipv6_address=$valor;
		   break;
                 default:
                   $error = "3";
                   $message = "Not recognized variable $name";
	       } 
	   }
         }
         $data_return = [ "data_return" => $arrayOfItens, 
                     "size" => sizeof($arrayOfItens),
                     "error"   => [ "code" => $error , "message" => $message ]
                   ];
      }
      else
      {
	 $data_return = [ "data_return" => [],
                      "size" => "0",
	   	      "error"   => [ "code" => "1", "message" => "NO DATA" ]
		    ];
      }

      $return_json = json_encode($data_return);
      echo $return_json;
?>
