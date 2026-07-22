# Routing Analysis Report

## Routing Accuracy
The system achieved a routing accuracy of **80.00%** based on the provided fixture.

## Per-Service Metrics
- **router**: 16 successful requests recorded in metrics.
- **ner-kg**: 10 successful requests recorded in metrics.
- **rag**: 11 successful requests recorded in metrics.

## Routing Pattern
Observed Decision Distribution: 8 requests to RAG (53.3%), 7 requests to NER-KG (46.7%).

## Cross-Service Correlation
The router generates a unique `X-Request-ID` for every inbound request. This ID is propagated to downstream services (rag or ner-kg) via HTTP headers. Verification confirms that the same ID appears in logs across service boundaries, enabling precise request tracing and debugging in this distributed topology.
