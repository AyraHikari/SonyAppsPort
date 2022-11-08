.class final Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1585
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .locals 4
    .param p1, "reader"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1587
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    if-eqz v0, :cond_0

    .line 1588
    move-object v0, p1

    check-cast v0, Lcom/google/gson/internal/bind/JsonTreeReader;

    invoke-virtual {v0}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 1589
    return-void

    .line 1591
    :cond_0
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1592
    .local v0, "p":I
    if-nez v0, :cond_1

    .line 1593
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    .line 1595
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1596
    const/16 v1, 0x9

    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 1597
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1598
    const/16 v1, 0x8

    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_0

    .line 1599
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1600
    const/16 v1, 0xa

    iput v1, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 1605
    :goto_0
    return-void

    .line 1602
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1603
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
