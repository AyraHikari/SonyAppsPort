.class Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;
.super Landroid/os/AsyncTask;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;->runIntent()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 2

    .line 316
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    const-string v0, "ALBUM_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 321
    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    .line 324
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 310
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 330
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 331
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 330
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    iget-object v0, v0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    const/4 v1, 0x0

    .line 333
    invoke-virtual {v0, p1, v1, v1}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    .line 334
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/ViewRequestController;->access$000(Lcom/sonyericsson/music/MusicActivity;)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/music/MusicActivity;->showLandingPage()V

    .line 337
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->this$0:Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    iget-object p1, p1, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const v0, 0x7f100124

    invoke-static {p1, v0}, Lcom/sonyericsson/music/ViewRequestController;->access$100(Lcom/sonyericsson/music/MusicActivity;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 310
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler$1;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
