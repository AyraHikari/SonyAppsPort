.class final Lcom/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 8
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 100
    .local v0, "bitset":Ljava/util/BitSet;
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "i":I
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 103
    .local v2, "tokenType":Lcom/google/gson/stream/JsonToken;
    :goto_0
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_4

    .line 105
    sget-object v3, Lcom/google/gson/internal/bind/TypeAdapters$36;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v2}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 122
    new-instance v3, Lcom/google/gson/JsonSyntaxException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid bitset value type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "stringValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    move v4, v5

    .line 119
    .local v4, "set":Z
    :cond_1
    goto :goto_1

    .line 116
    .end local v4    # "set":Z
    :catch_0
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    .end local v3    # "stringValue":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v4

    .line 111
    .local v4, "set":Z
    goto :goto_1

    .line 107
    .end local v4    # "set":Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v4, v5

    .line 108
    .restart local v4    # "set":Z
    :cond_2
    nop

    .line 124
    :goto_1
    if-eqz v4, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 127
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 129
    .end local v4    # "set":Z
    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 131
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "src"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 137
    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 142
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 143
    .local v1, "value":I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 141
    .end local v1    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 146
    return-void
.end method
