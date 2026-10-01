-- The (api_key, startTime) index on LiteLLM_SpendLogs is built by the migration job after
-- migrate deploy, through litellm_proxy_extras/request_log_indexes.py: concurrently on a
-- plain table and per partition on a partitioned one. The serving proxy never builds it.
-- A migration cannot do either without blocking spend-log writes or failing on a
-- partitioned table.
SELECT 1;
