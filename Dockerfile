FROM metabase/metabase:latest

# Render sets PORT env var; tell Metabase to listen on it
ENV MB_JETTY_PORT=${PORT:-3000}

# Allocate more heap from available memory
ENV JAVA_OPTS="-Xmx512m -Xms256m"

EXPOSE ${PORT:-3000}

# Use shell form so env vars get expanded
CMD ["sh", "-c", "export MB_JETTY_PORT=${PORT:-3000} && /app/run_metabase.sh"]
