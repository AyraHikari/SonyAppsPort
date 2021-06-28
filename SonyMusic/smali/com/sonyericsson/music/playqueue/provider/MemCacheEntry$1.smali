.class final Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$1;
.super Ljava/lang/Object;
.source "MemCacheEntry.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;)I
    .locals 0

    .line 47
    iget p1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    iget p2, p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 44
    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    check-cast p2, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$1;->compare(Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;)I

    move-result p1

    return p1
.end method
