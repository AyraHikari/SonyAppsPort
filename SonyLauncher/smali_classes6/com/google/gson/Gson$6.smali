.class final Lcom/google/gson/Gson$6;
.super Lcom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/Gson;->atomicLongArrayAdapter(Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/concurrent/atomic/AtomicLongArray;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$longAdapter:Lcom/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/google/gson/TypeAdapter;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/google/gson/Gson$6;->val$longAdapter:Lcom/google/gson/TypeAdapter;

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

    .line 365
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson$6;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 6
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 376
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/google/gson/Gson$6;->val$longAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 378
    .local v1, "value":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v1    # "value":J
    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 381
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 382
    .local v1, "length":I
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>(I)V

    .line 383
    .local v2, "array":Ljava/util/concurrent/atomic/AtomicLongArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 384
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->set(IJ)V

    .line 383
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 386
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson$6;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/concurrent/atomic/AtomicLongArray;)V
    .locals 5
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/concurrent/atomic/AtomicLongArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 369
    iget-object v2, p0, Lcom/google/gson/Gson$6;->val$longAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    .line 372
    return-void
.end method
