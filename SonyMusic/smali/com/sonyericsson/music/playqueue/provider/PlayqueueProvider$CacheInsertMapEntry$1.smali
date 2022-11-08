.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry$1;
.super Ljava/lang/Object;
.source "PlayqueueProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;)I
    .locals 2

    .line 1046
    iget-wide v0, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    iget-wide p1, p2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1043
    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    check-cast p2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry$1;->compare(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;)I

    move-result p1

    return p1
.end method
