.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;
.super Ljava/lang/Object;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveObject"
.end annotation


# instance fields
.field final mCacheInsertMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInserts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mMemCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;",
            ">;)V"
        }
    .end annotation

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;->mMemCache:Ljava/util/List;

    .line 1090
    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;->mInserts:Ljava/util/List;

    .line 1091
    iput-object p3, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;->mCacheInsertMap:Ljava/util/List;

    return-void
.end method
