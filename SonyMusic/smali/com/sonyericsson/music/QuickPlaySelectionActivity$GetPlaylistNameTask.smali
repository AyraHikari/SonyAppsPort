.class Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;
.super Landroid/os/AsyncTask;
.source "QuickPlaySelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/QuickPlaySelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetPlaylistNameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/QuickPlaySelectionActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/QuickPlaySelectionActivity;)V
    .locals 1

    .line 417
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 413
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 425
    aget-object p1, p1, v1

    const/4 v1, -0x1

    .line 428
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->convertMediastoreUriId(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "com.sonyericsson.music.musicinfo"

    .line 433
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v1

    .line 437
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 413
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->setPlaylistName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
