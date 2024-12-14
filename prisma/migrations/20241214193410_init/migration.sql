-- CreateTable
CREATE TABLE "Post" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Post_pkey" PRIMARY KEY ("id")
);

-- seed
INSERT INTO "Post" ("id", "title", "content", "created_at", "updated_at") VALUES ('1', 'Hello World', 'This is my first post', '2024-12-14T19:34:10.000Z', '2024-12-14T19:34:10.000Z');