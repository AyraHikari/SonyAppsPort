.class public Lcom/sonyericsson/music/ViewRequestController;
.super Ljava/lang/Object;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;,
        Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;,
        Lcom/sonyericsson/music/ViewRequestController$ViewArtistHandler;,
        Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;,
        Lcom/sonyericsson/music/ViewRequestController$MediaSearchHandler;,
        Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;,
        Lcom/sonyericsson/music/ViewRequestController$PlayFromSearchHandler;,
        Lcom/sonyericsson/music/ViewRequestController$SearchHandler;,
        Lcom/sonyericsson/music/ViewRequestController$LandingPageHandler;,
        Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
    }
.end annotation


# static fields
.field private static final GA_SOURCE_EXTERNAL_LINK:Ljava/lang/String; = "external_link"

.field private static final GA_SOURCE_EXTERNAL_SEARCH:Ljava/lang/String; = "external_search"

.field private static final PLAYLIST_FILEEXTENSION_M3U:Ljava/lang/String; = ".m3u"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 0

    .line 44
    invoke-static {p0}, Lcom/sonyericsson/music/ViewRequestController;->backToPlayer(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/MusicActivity;I)V
    .locals 0

    .line 44
    invoke-static {p0, p1}, Lcom/sonyericsson/music/ViewRequestController;->showFailedToast(Lcom/sonyericsson/music/MusicActivity;I)V

    return-void
.end method

.method private static backToPlayer(Lcom/sonyericsson/music/MusicActivity;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 673
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 675
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/MusicUtils;->openPlayerFragment(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/MusicActivity;->triggerOpenPlayerTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method static getIntentHandler(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 79
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "android.intent.action.VIEW"

    .line 81
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez v2, :cond_5

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 84
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    invoke-direct {v0, p0, p1, v3, v4}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;ZZ)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "vnd.android.cursor.dir/playlist"

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewPlaylistHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "vnd.android.cursor.dir/artists"

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewArtistHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewArtistHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_4
    const-string v1, "vnd.android.cursor.dir/albums"

    .line 89
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 90
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewAlbumHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    const-string v5, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 94
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$PlayFromSearchHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$PlayFromSearchHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    const-string v5, "android.intent.action.SEARCH"

    .line 95
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v2, :cond_b

    .line 98
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$SearchHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$SearchHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    const-string v5, "android.intent.action.MEDIA_SEARCH"

    .line 100
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v2, :cond_b

    .line 103
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$MediaSearchHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$MediaSearchHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto :goto_1

    :cond_8
    const-string v5, "com.sonyericsson.music.action.START_PLAYBACK"

    .line 105
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v2, :cond_9

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 107
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 108
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;

    invoke-direct {v0, p0, p1, v4, v3}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;ZZ)V

    goto :goto_1

    :cond_9
    const-string v3, "com.sonyericsson.music.action.VIEW_SEARCH_RESULT"

    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    .line 113
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewSearchResultHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    goto :goto_1

    :cond_a
    const-string v2, "com.sonyericsson.music.action.SHOW_LANDING_PAGE"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 117
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$LandingPageHandler;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$LandingPageHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    :cond_b
    :goto_1
    return-object v0
.end method

.method private static showFailedToast(Lcom/sonyericsson/music/MusicActivity;I)V
    .locals 1

    .line 683
    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$1;-><init>(Lcom/sonyericsson/music/MusicActivity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
