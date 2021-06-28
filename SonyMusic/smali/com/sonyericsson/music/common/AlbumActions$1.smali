.class final Lcom/sonyericsson/music/common/AlbumActions$1;
.super Ljava/lang/Object;
.source "AlbumActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/AlbumActions;->sendLocalAlbum(Lcom/sonyericsson/music/MusicActivity;J)V
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

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/music/common/AlbumActions$1;->val$appContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/sonyericsson/music/common/AlbumActions$1;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/sonyericsson/music/common/AlbumActions$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    iget-wide v1, p0, Lcom/sonyericsson/music/common/AlbumActions$1;->val$id:J

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/AlbumActions$1;->val$appContext:Landroid/content/Context;

    const-string v2, "_id"

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/music/common/Sender;->sendFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 61
    throw v1

    :cond_0
    :goto_0
    return-void
.end method
