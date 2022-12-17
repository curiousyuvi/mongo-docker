version: "3.1"

services:
  mongo:
    image: mongo
    restart: always
    ports:
      - "27017:27017"
    networks:
      - mongo-network
    volumes:
      - mongo-data:/data/db
    environment:
      MONGO_INITDB_ROOT_USERNAME: admin
      MONGO_INITDB_ROOT_PASSWORD: Admin123

  mongo-express:
    image: mongo-express
    restart: always
    ports:
      - 8081:8081
    environment:
      ME_CONFIG_MONGODB_ADMINUSERNAME: admin
      ME_CONFIG_MONGODB_ADMINPASSWORD: Admin123
      ME_CONFIG_MONGODB_URL: mongodb://admin:Admin123@mongo:27017/
    networks:
      - mongo-network
    depends_on:
      - mongo

networks:
  mongo-network:
    driver: bridge

volumes:
  mongo-data:
    driver: local
