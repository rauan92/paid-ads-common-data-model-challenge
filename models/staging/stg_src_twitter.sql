SELECT 
  --SAFE_DIVIDE(SUM(spend),SUM(engagements)) AS cost_per_engage,
  --NULL AS conversion_cost,
  --SUM(impressions) AS impressions,
  --SAFE_DIVIDE(SUM(spend), SUM(clicks)) AS cpc
  date,
  NULL AS add_to_cart,
  SUM(clicks) AS clicks,
  SUM(comments) AS comments, 
  SUM(engagements) AS engagements,
  SUM(impressions) AS impressions,
  NULL AS installs,
  SUM(likes) AS likes,
  SUM(url_clicks) AS link_clicks,
  NULL AS post_click_conversions,
  NULL AS post_view_conversions,
  NULL AS posts,
  NULL AS purchase,
  NULL AS registrations,
  NULL AS revenue,
  NULL AS shares,
  SUM(spend) AS spend,
  NULL AS total_conversions,
  SUM(video_total_views) AS video_views,
  NULL AS ad_id,
  NULL AS adset_id,
  campaign_id,
  channel,
  NULL AS creative_id,
  NULL AS placement_id
FROM {{ ref('src_promoted_tweets_twitter_all_data') }}
GROUP BY 
  date,
  ad_id,
  adset_id,
  campaign_id,
  channel,
  creative_id,
  placement_id


  
  
  
