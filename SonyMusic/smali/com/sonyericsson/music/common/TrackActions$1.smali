.class final Lcom/sonyericsson/music/common/TrackActions$1;
.super Ljava/lang/Object;
.source "TrackActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/TrackActions;->addToFavourites(Lcom/sonyericsson/music/MusicActivity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/music/common/TrackActions$1;->val$appContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/sonyericsson/music/common/TrackActions$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/common/TrackActions$1;->val$appContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/sonyericsson/music/common/TrackActions$1;->val$id:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v0, v1, v2, v4}, Lcom/sonyericsson/music/common/MusicUtils;->modifyFavoritesPlaylist(ZLandroid/content/Context;JZ)Z

    return-void
.end method
