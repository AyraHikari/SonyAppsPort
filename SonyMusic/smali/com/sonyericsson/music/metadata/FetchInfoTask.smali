.class abstract Lcom/sonyericsson/music/metadata/FetchInfoTask;
.super Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
.source "FetchInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mId:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/FetchInfoTask;->mAppContext:Landroid/content/Context;

    .line 24
    iput-wide p3, p0, Lcom/sonyericsson/music/metadata/FetchInfoTask;->mId:J

    return-void
.end method


# virtual methods
.method protected varargs doTaskInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/FetchInfoTask;->mAppContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/FetchInfoTask;->mId:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/metadata/FetchInfoTask;->populateInfo(Landroid/content/Context;J)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/FetchInfoTask;->doTaskInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method abstract populateInfo(Landroid/content/Context;J)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Landroid/util/Pair<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method
