curl -X PUT "gs-search:9200/tmx_data?pretty" -H 'Content-Type: application/json' -d'
{  
    "settings": {    
        "number_of_shards": 5,    
        "number_of_replicas": 1  
    },  
    "mappings": {
        "properties":{
            "src": {"type": "text"},
            "target": {"type": "text"}
        }
    }
}'