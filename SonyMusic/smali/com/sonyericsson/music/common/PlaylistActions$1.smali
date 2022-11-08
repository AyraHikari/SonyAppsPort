.class Lcom/sonyericsson/music/common/PlaylistActions$1;
.super Ljava/lang/Object;
.source "PlaylistActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/PlaylistActions;->sendPlaylist(Lcom/sonyericsson/music/MusicActivity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/sonyericsson/music/MusicActivity;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$appContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$id:J

    iput-object p4, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$appContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$id:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 79
    :try_start_0
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistProjection(Z)[Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$id:J

    long-to-int v4, v3

    .line 78
    invoke-static {v0, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/common/PlaylistActions$1;->val$activity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "audio_id"

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/Sender;->sendFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void
.end method
