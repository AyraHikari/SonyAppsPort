.class public final Lokio/PeekSource;
.super Ljava/lang/Object;
.source "PeekSource.kt"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeekSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeekSource.kt\nokio/PeekSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n1#2:75\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000eH\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokio/PeekSource;",
        "Lokio/Source;",
        "upstream",
        "Lokio/BufferedSource;",
        "(Lokio/BufferedSource;)V",
        "buffer",
        "Lokio/Buffer;",
        "closed",
        "",
        "expectedPos",
        "",
        "expectedSegment",
        "Lokio/Segment;",
        "pos",
        "",
        "close",
        "",
        "read",
        "sink",
        "byteCount",
        "timeout",
        "Lokio/Timeout;",
        "external__okio__android_common__okio-lib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private expectedPos:I

.field private expectedSegment:Lokio/Segment;

.field private pos:J

.field private final upstream:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .locals 2
    .param p1, "upstream"    # Lokio/BufferedSource;

    const-string v0, "upstream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    .line 31
    invoke-interface {p1}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v0

    iput-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    .line 32
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v1, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 33
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lokio/Segment;->pos:I

    :goto_0
    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 28
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/PeekSource;->closed:Z

    .line 72
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 8
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_8

    .line 40
    iget-boolean v2, p0, Lokio/PeekSource;->closed:Z

    xor-int/2addr v2, v4

    if-eqz v2, :cond_7

    .line 44
    iget-object v2, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-eqz v2, :cond_1

    .line 45
    iget-object v5, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v2, v5, :cond_2

    iget v2, p0, Lokio/PeekSource;->expectedPos:I

    iget-object v5, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v5, v5, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v5, Lokio/Segment;->pos:I

    if-ne v2, v5, :cond_2

    :cond_1
    move v3, v4

    .line 43
    :cond_2
    if-eqz v3, :cond_6

    .line 49
    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    return-wide v0

    .line 50
    :cond_3
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    iget-wide v1, p0, Lokio/PeekSource;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    move-result v0

    if-nez v0, :cond_4

    const-wide/16 v0, -0x1

    return-wide v0

    .line 52
    :cond_4
    iget-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    if-nez v0, :cond_5

    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v0, p0, Lokio/PeekSource;->expectedSegment:Lokio/Segment;

    .line 57
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, v0, Lokio/Segment;->pos:I

    iput v0, p0, Lokio/PeekSource;->expectedPos:I

    .line 60
    :cond_5
    iget-object v0, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 61
    .local v0, "toCopy":J
    iget-object v2, p0, Lokio/PeekSource;->buffer:Lokio/Buffer;

    iget-wide v4, p0, Lokio/PeekSource;->pos:J

    move-object v3, p1

    move-wide v6, v0

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 62
    iget-wide v2, p0, Lokio/PeekSource;->pos:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokio/PeekSource;->pos:J

    .line 63
    return-wide v0

    .line 43
    .end local v0    # "toCopy":J
    :cond_6
    const/4 v0, 0x0

    .line 47
    .local v0, "$i$a$-check-PeekSource$read$3":I
    nop

    .line 43
    .end local v0    # "$i$a$-check-PeekSource$read$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Peek source is invalid because upstream source was used"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_7
    const/4 v0, 0x0

    .line 40
    .local v0, "$i$a$-check-PeekSource$read$2":I
    nop

    .end local v0    # "$i$a$-check-PeekSource$read$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_8
    const/4 v0, 0x0

    .line 39
    .local v0, "$i$a$-require-PeekSource$read$1":I
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "byteCount < 0: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-PeekSource$read$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 67
    iget-object v0, p0, Lokio/PeekSource;->upstream:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
