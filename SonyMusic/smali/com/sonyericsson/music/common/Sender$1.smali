.class Lcom/sonyericsson/music/common/Sender$1;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/Sender;->sendArtistTracks(Lcom/sonyericsson/music/MusicActivity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$artistId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sonyericsson/music/common/Sender$1;->val$appContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/sonyericsson/music/common/Sender$1;->val$artistId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/common/Sender$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    iget-wide v1, p0, Lcom/sonyericsson/music/common/Sender$1;->val$artistId:J

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/Sender$1;->val$appContext:Landroid/content/Context;

    const-string v2, "_id"

    invoke-static {v1, v0, v2}, Lcom/sonyericsson/music/common/Sender;->sendFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 166
    throw v1

    :cond_0
    :goto_0
    return-void
.end method
