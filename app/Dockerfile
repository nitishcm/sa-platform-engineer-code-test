FROM openjdk:11

WORKDIR /app

RUN useradd -u 8787 appcontainer

USER appcontainer

COPY --chown=appcontainer:appcontainer ./ ./

EXPOSE 8080

CMD ["sh", "/app/docker-entrypoint/entrypoint.sh"]