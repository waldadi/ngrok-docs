<!-- Code generated for API Clients. DO NOT EDIT. -->

#### Example Response

```json
{
	"endpoints": [
		{
			"created_at": "2024-09-10T19:55:17Z",
			"hostport": "8a0b154f56c0.ngrok.paid:443",
			"id": "ep_2ltSwSy6Nm2Lcd79ZQ9c7BeeDkQ",
			"principal_id": {
				"id": "usr_2ltStws6MiusgDndbKs6Fb0CCpV",
				"uri": ""
			},
			"proto": "https",
			"public_url": "https://8a0b154f56c0.ngrok.paid",
			"tunnel": {
				"id": "tn_2ltSwSy6Nm2Lcd79ZQ9c7BeeDkQ",
				"uri": "https://api.ngrok.com/tunnels/tn_2ltSwSy6Nm2Lcd79ZQ9c7BeeDkQ"
			},
			"tunnel_session": {
				"id": "ts_2ltSwPuLx2p9UeRQh2skkV2RM49",
				"uri": "https://api.ngrok.com/tunnel_sessions/ts_2ltSwPuLx2p9UeRQh2skkV2RM49"
			},
			"type": "ephemeral",
			"updated_at": "2024-09-10T19:55:17Z",
			"upstream_url": "http://localhost:80",
			"url": "https://8a0b154f56c0.ngrok.paid"
		},
		{
			"created_at": "2024-09-10T19:55:14Z",
			"domain": {
				"id": "rd_2ltSw8dWZkIcBb2YkhDUDZQxV2q",
				"uri": "https://api.ngrok.com/reserved_domains/rd_2ltSw8dWZkIcBb2YkhDUDZQxV2q"
			},
			"edge": {
				"id": "edgtls_2ltSw6Y7SttlrgUG5N4fMeNOla5",
				"uri": "https://api.ngrok.com/edges/tls/edgtls_2ltSw6Y7SttlrgUG5N4fMeNOla5"
			},
			"hostport": "endpoint-example2.com:443",
			"id": "ep_2ltSw2LYy38FNnx1azGIs71UgoB",
			"proto": "tls",
			"public_url": "tls://endpoint-example2.com",
			"type": "edge",
			"updated_at": "2024-09-10T19:55:14Z"
		}
	],
	"next_page_uri": null,
	"uri": "https://api.ngrok.com/endpoints"
}
```
