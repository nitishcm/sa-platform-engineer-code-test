FROM openjdk:11



WORKDIR /app

RUN useradd appcontainer

USER appcontainer

COPY --chown=appcontainer:appcontainer bin ./
COPY --chown=appcontainer:appcontainer testData.json testData.json

COPY  --chown=appcontainer:appcontainer docker-entrypoint/entrypoint.sh docker-entrypoint/entrypoint.sh

EXPOSE 8080

CMD ["sh", "/app/docker-entrypoint/entrypoint.sh"]