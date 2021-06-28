.class public Lcom/sonyericsson/music/common/GenreActions;
.super Ljava/lang/Object;
.source "GenreActions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToDialog(Lcom/sonyericsson/music/MusicActivity;Landroidx/fragment/app/FragmentManager;Lcom/sonyericsson/music/common/MenuUtils$GenreData;)V
    .locals 5

    .line 26
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getGenreId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    sget-object p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getGenreName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sonyericsson/music/dialogs/AddToDialog;->newInstance(Landroid/net/Uri;Ljava/lang/String;)Lcom/sonyericsson/music/dialogs/AddToDialog;

    move-result-object p0

    const-string p2, "addto_dialog"

    .line 35
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public static enqueueGenre(Lcom/sonyericsson/music/player/PlayerController;Lcom/sonyericsson/music/common/MenuUtils$GenreData;Z)V
    .locals 4

    .line 43
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->getGenreId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/PlayerController;->isServiceSet()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "external"

    .line 47
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    .line 49
    invoke-virtual {p0, p1, v0, p2}, Lcom/sonyericsson/music/player/PlayerController;->enqueue(Landroid/net/Uri;IZ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method
