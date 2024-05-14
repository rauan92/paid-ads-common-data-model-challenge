SELECT * FROM {{ ref('stg_src_facebook') }}
UNION ALL
SELECT * FROM {{ ref('stg_src_twitter') }}
UNION ALL
SELECT * FROM {{ ref('stg_src_bing') }}
UNION ALL
SELECT * FROM {{ ref('stg_src_tiktok') }}