.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;
.super Ljava/lang/Object;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheInsertMapEntry"
.end annotation


# static fields
.field static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mId:J

.field mInsertId:I

.field mSourcePlayOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1043
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(JII)V
    .locals 0

    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    iput-wide p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    .line 1056
    iput p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mInsertId:I

    .line 1057
    iput p4, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mSourcePlayOrder:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1067
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1071
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    .line 1073
    iget-wide v3, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    iget-wide v5, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1078
    iget-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    long-to-int v0, v0

    return v0
.end method
