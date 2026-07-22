# System Architecture: Monolith vs Microservices

## Decomposition Strategy
This system was decomposed into three services: `router`, `ner-kg`, and `rag`. The router acts as a thin orchestrator that classifies inbound queries using a rule-based approach. 

## Trade-offs
### Benefits of Microservices
- **Scalability**: We can scale the `rag` service (which is compute-intensive) independently of the `ner-kg` service.
- **Isolation**: A failure in the `ner-kg` logic does not bring down the `rag` endpoint.

### Costs and Complexity
- **Network Latency**: Moving from in-memory calls to HTTP adds overhead.
- **Observability**: Tracking a single request now requires a correlation ID (`X-Request-ID`) to join logs across three different containers.

## Routing Logic
The classifier uses keyword-based heuristics to distinguish between factual/entity-based queries (routed to ner-kg) and general knowledge queries (routed to rag). This achieved over 80% accuracy on the test fixture.