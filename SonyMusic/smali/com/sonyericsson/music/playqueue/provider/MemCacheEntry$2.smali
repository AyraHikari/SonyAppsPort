.class Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$2;
.super Ljava/lang/Object;
.source "MemCacheEntry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;)I
    .locals 3

    .line 54
    iget-wide v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    iget-wide p1, p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    check-cast p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$2;->compare(Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;)I

    move-result p1

    return p1
.end method
