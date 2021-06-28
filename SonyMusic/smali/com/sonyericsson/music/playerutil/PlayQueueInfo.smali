.class public Lcom/sonyericsson/music/playerutil/PlayQueueInfo;
.super Ljava/lang/Object;
.source "PlayQueueInfo.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayQueueCursor:Landroid/database/Cursor;

.field private mPlayQueueUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueUri:Landroid/net/Uri;

    return-object v0
.end method

.method public openCursor()Z
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    .line 53
    invoke-static {v2}, Lcom/sonyericsson/music/common/DBUtils;->getPlayQueueProjection(Z)[Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v1, v0, v3}, Lcom/sonyericsson/music/common/DBUtils;->getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    iput-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    return v2

    :cond_1
    if-eqz v0, :cond_2

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call openCursor() with no uri set is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueUri:Landroid/net/Uri;

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueCursor:Landroid/database/Cursor;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->mPlayQueueUri:Landroid/net/Uri;

    return-void
.end method
