<!-- Code generated for API Clients. DO NOT EDIT. -->

#### Example Response

```json
{
	"next_page_uri": null,
	"tls_edges": [
		{
			"backend": null,
			"created_at": "2024-09-10T19:55:24Z",
			"description": "acme tls edge",
			"hostports": ["example.com:443"],
			"id": "edgtls_2ltSxO4wRKBXXrk9tiawyua2kCo",
			"ip_restriction": null,
			"metadata": "{\"environment\": \"staging\"}",
			"mutual_tls": null,
			"policy": null,
			"tls_termination": null,
			"traffic_policy": null,
			"uri": "https://api.ngrok.com/edges/tls/edgtls_2ltSxO4wRKBXXrk9tiawyua2kCo"
		},
		{
			"backend": {
				"backend": {
					"id": "bkdhr_2ltSw5Wh8NNVlAKgThl3msgqc7z",
					"uri": "https://api.ngrok.com/backends/http_response/bkdhr_2ltSw5Wh8NNVlAKgThl3msgqc7z"
				},
				"enabled": true
			},
			"created_at": "2024-09-10T19:55:14Z",
			"description": "acme tls edge",
			"hostports": ["endpoint-example2.com:443"],
			"id": "edgtls_2ltSw6Y7SttlrgUG5N4fMeNOla5",
			"ip_restriction": null,
			"mutual_tls": null,
			"policy": null,
			"tls_termination": null,
			"traffic_policy": null,
			"uri": "https://api.ngrok.com/edges/tls/edgtls_2ltSw6Y7SttlrgUG5N4fMeNOla5"
		}
	],
	"uri": "https://api.ngrok.com/edges/tls"
}
```
