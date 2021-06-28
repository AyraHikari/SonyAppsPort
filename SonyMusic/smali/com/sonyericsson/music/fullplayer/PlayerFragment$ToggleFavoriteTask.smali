.class Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;
.super Landroid/os/AsyncTask;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/fullplayer/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToggleFavoriteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMetadataView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/fullplayer/MetadataView;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlayerFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/music/fullplayer/PlayerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/fullplayer/PlayerFragment;Lcom/sonyericsson/music/fullplayer/MetadataView;Landroid/net/Uri;)V
    .locals 1

    .line 1231
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mPlayerFragment:Ljava/lang/ref/WeakReference;

    .line 1233
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mMetadataView:Ljava/lang/ref/WeakReference;

    .line 1234
    iput-object p3, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mTrackUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 1239
    iget-object p1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mPlayerFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    if-eqz p1, :cond_0

    .line 1242
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mTrackUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    long-to-int v2, v0

    .line 1245
    invoke-static {p1, v2}, Lcom/sonyericsson/music/common/MusicUtils;->isFavorite(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x0

    .line 1247
    invoke-static {v2, p1, v0, v1, v3}, Lcom/sonyericsson/music/common/MusicUtils;->modifyFavoritesPlaylist(ZLandroid/content/Context;JZ)Z

    move-result p1

    if-eqz p1, :cond_0

    xor-int/lit8 p1, v2, 0x1

    .line 1249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mPlayerFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/fullplayer/PlayerFragment;

    .line 1260
    iget-object v1, p0, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->mMetadataView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/fullplayer/MetadataView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 1262
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/fullplayer/MetadataView;->setFavoriteIndicator(Z)V

    .line 1263
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1002b9

    goto :goto_0

    :cond_0
    const p1, 0x7f1002bc

    .line 1265
    :goto_0
    invoke-static {v0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment;->access$2800(Lcom/sonyericsson/music/fullplayer/PlayerFragment;I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1222
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/fullplayer/PlayerFragment$ToggleFavoriteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
