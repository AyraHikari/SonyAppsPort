.class public final Lcom/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p1, "json"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 81
    const-string v0, " to Json"

    const-string v1, "Failed parsing JSON source: "

    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 82
    .local v2, "lenient":Z
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 84
    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "lenient":Z
    .end local p0    # "this":Lcom/google/gson/JsonParser;
    .end local p1    # "json":Lcom/google/gson/stream/JsonReader;
    throw v4

    .line 85
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "lenient":Z
    .restart local p0    # "this":Lcom/google/gson/JsonParser;
    .restart local p1    # "json":Lcom/google/gson/stream/JsonReader;
    :catch_1
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/StackOverflowError;
    new-instance v4, Lcom/google/gson/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "lenient":Z
    .end local p0    # "this":Lcom/google/gson/JsonParser;
    .end local p1    # "json":Lcom/google/gson/stream/JsonReader;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v3    # "e":Ljava/lang/StackOverflowError;
    .restart local v2    # "lenient":Z
    .restart local p0    # "this":Lcom/google/gson/JsonParser;
    .restart local p1    # "json":Lcom/google/gson/stream/JsonReader;
    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0
.end method

.method public parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;
    .locals 4
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 58
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 60
    .local v1, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    const-string v3, "Did not consume the entire document."

    invoke-direct {v2, v3}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/google/gson/JsonParser;
    .end local p1    # "json":Ljava/io/Reader;
    throw v2
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .restart local p0    # "this":Lcom/google/gson/JsonParser;
    .restart local p1    # "json":Ljava/io/Reader;
    :cond_1
    :goto_0
    return-object v1

    .line 68
    .end local v0    # "jsonReader":Lcom/google/gson/stream/JsonReader;
    .end local v1    # "element":Lcom/google/gson/JsonElement;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 66
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 64
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 65
    .local v0, "e":Lcom/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
