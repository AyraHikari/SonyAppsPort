.class abstract Lcom/sonyericsson/music/metadata/SaveInfoTask;
.super Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
.source "SaveInfoTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/sonyericsson/music/metadata/EditMusicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

.field private final mId:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sonyericsson/music/metadata/EditMusicInfo;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mContext:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 26
    iput-wide p4, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mId:J

    return-void
.end method


# virtual methods
.method protected varargs doTaskInBackground([Ljava/lang/String;)Lcom/sonyericsson/music/metadata/EditMusicInfo;
    .locals 3

    .line 31
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mContext:Landroid/content/Context;

    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mId:J

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sonyericsson/music/metadata/SaveInfoTask;->saveInfo(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)Lcom/sonyericsson/music/metadata/EditMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/SaveInfoTask;->doTaskInBackground([Ljava/lang/String;)Lcom/sonyericsson/music/metadata/EditMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/sonyericsson/music/metadata/EditMusicInfo;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mContext:Landroid/content/Context;

    const v1, 0x7f10009a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    .line 38
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistArtChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/SaveInfoTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils;->clearCaches(Landroid/content/Context;)V

    .line 42
    :cond_1
    invoke-super {p0, p1}, Lcom/sonyericsson/music/common/RetainedAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/sonyericsson/music/metadata/EditMusicInfo;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/metadata/SaveInfoTask;->onPostExecute(Lcom/sonyericsson/music/metadata/EditMusicInfo;)V

    return-void
.end method

.method abstract saveInfo(Landroid/content/Context;JLcom/sonyericsson/music/metadata/EditMusicInfo;)Lcom/sonyericsson/music/metadata/EditMusicInfo;
.end method
