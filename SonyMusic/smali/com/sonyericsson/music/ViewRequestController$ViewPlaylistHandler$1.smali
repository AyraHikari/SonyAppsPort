.class Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;
.super Landroid/os/AsyncTask;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;->runIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field databaseId:I

.field final synthetic this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, -0x1

    .line 397
    iput p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->databaseId:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 401
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    const-string v0, "playlist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    .line 405
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 406
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 405
    invoke-static {v0, p1}, Lcom/sonyericsson/music/playlist/PlaylistOperation;->convertMediastoreUriId(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->databaseId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SemcMusicPlayer"

    const-string v0, "Attempted to VIEW playlist with non-numeric database Id"

    .line 410
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    iget p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->databaseId:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 416
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 417
    iget v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->databaseId:I

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 396
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 429
    iget p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->databaseId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 430
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 432
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, p1, v1, v1}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    .line 434
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/ViewRequestController;->access$000(Lcom/sonyericsson/music/MusicActivity;)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const v0, 0x7f1001d2

    invoke-static {p1, v0}, Lcom/sonyericsson/music/ViewRequestController;->access$100(Lcom/sonyericsson/music/MusicActivity;I)V

    .line 439
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->showLandingPage()V

    :goto_0
    return-void
.end method
