.class Lcom/sonyericsson/music/delete/DeletePlaylistTask;
.super Landroid/os/AsyncTask;
.source "DeletePlaylistTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mPlaylistUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mAppContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mPlaylistUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    .line 39
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mPlaylistUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mPlaylistUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v1, Lcom/sonyericsson/music/playlist/PlaylistOperation;

    iget-object v2, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/playlist/PlaylistOperation;-><init>(Landroid/content/Context;)V

    .line 45
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->deletePlaylist(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, p1

    .line 56
    :catch_0
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mAppContext:Landroid/content/Context;

    const v0, 0x7f100134

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mAppContext:Landroid/content/Context;

    const v0, 0x7f1002bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/delete/DeletePlaylistTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
