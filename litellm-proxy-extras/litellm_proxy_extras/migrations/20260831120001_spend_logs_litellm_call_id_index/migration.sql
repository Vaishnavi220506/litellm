-- The litellm_call_id index on LiteLLM_SpendLogs is built by the migration job after
-- migrate deploy, through litellm_proxy_extras/request_log_indexes.py: concurrently on a
-- plain table and per partition on a partitioned one. The serving proxy never builds it.
-- Postgres refuses CREATE INDEX CONCURRENTLY on a partitioned parent, so this migration
-- no longer runs it.
SELECT 1;
