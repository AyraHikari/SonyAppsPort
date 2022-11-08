.class Lcom/sonyericsson/music/delete/DeleteUtils$1;
.super Ljava/lang/Object;
.source "DeleteUtils.java"

# interfaces
.implements Lcom/sonyericsson/music/delete/DeleteUtils$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/delete/DeleteUtils;->deleteTracks(Landroid/content/ContentResolver;Lcom/sonyericsson/music/proxyservice/aidl/IMediaPlayback;Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentPlayingTrackId:J

.field final synthetic val$failedCount:[I

.field final synthetic val$removedUris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(JLjava/util/ArrayList;[I)V
    .locals 0

    .line 77
    iput-wide p1, p0, Lcom/sonyericsson/music/delete/DeleteUtils$1;->val$currentPlayingTrackId:J

    iput-object p3, p0, Lcom/sonyericsson/music/delete/DeleteUtils$1;->val$removedUris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sonyericsson/music/delete/DeleteUtils$1;->val$failedCount:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(J)Z
    .locals 3

    .line 81
    iget-wide v0, p0, Lcom/sonyericsson/music/delete/DeleteUtils$1;->val$currentPlayingTrackId:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDeleted(J)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeleteUtils$1;->val$removedUris:Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onFailed(J)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeleteUtils$1;->val$failedCount:[I

    const/4 p2, 0x0

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-void
.end method
