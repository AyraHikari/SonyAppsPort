.class public Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;
.super Lcom/sonyericsson/music/ViewRequestController$IntentHandler;
.source "ViewRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/ViewRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewUriHandler"
.end annotation


# instance fields
.field private mCheckDownload:Z

.field private final mStartPlayback:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;ZZ)V
    .locals 0

    .line 452
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;-><init>(Lcom/sonyericsson/music/MusicActivity;Landroid/content/Intent;)V

    .line 453
    iput-boolean p4, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->mStartPlayback:Z

    .line 454
    iput-boolean p3, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->mCheckDownload:Z

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;)Z
    .locals 0

    .line 446
    iget-boolean p0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->mCheckDownload:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;Landroid/content/Intent;Z)V
    .locals 0

    .line 446
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->handleViewUriIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method private getPlaylistUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/16 v0, 0x2e

    .line 477
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 479
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 482
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    invoke-static {v0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistId(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    .line 492
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getTrackUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 501
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "file"

    .line 503
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "content"

    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 506
    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/DBUtils;->getTrackIdBasedOnPath(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 509
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private handleMusicIntentForContainers(Landroid/content/Intent;)V
    .locals 2

    .line 561
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 562
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getPlayerController()Lcom/sonyericsson/music/player/PlayerController;

    move-result-object v0

    const/4 v1, 0x0

    .line 564
    invoke-virtual {v0, p1, v1, v1}, Lcom/sonyericsson/music/player/PlayerController;->open(Landroid/net/Uri;IZ)V

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/ViewRequestController;->access$000(Lcom/sonyericsson/music/MusicActivity;)V

    return-void
.end method

.method private handleViewUriIntent(Landroid/content/Intent;Z)V
    .locals 8

    .line 570
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 571
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->shouldDownloadFileInstead(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 572
    iget-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    const v1, 0x7f10021d

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/sonyericsson/music/MusicActivity;->showToastOnUiThread(II)V

    .line 574
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->startDownload(Landroid/net/Uri;)V

    .line 576
    iget-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 582
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v1, "file"

    .line 583
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 584
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 585
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 586
    iget-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 587
    invoke-static {p2, v0}, Lcom/sonyericsson/music/common/DBUtils;->getDataPathForMediaStoreUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    .line 592
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const-string v1, ".m3u"

    .line 593
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 594
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->getPlaylistUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 596
    iget-object p2, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    new-instance v0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$2;-><init>(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 610
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->getTrackUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 619
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v0, "com.sonyericsson.music.extra.ARTIST"

    const-string v1, "android.intent.extra.artist"

    .line 622
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.extra.ALBUM"

    const-string v2, "android.intent.extra.album"

    .line 624
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sonyericsson.music.extra.TITLE"

    const-string v4, "android.intent.extra.title"

    .line 626
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sonyericsson.music.extra.START_POSITION"

    .line 627
    invoke-virtual {p1, v4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    move v4, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    goto :goto_1

    :cond_4
    move-object v5, v0

    move-object v6, v5

    move-object v7, v6

    const/4 v4, 0x0

    .line 635
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    new-instance p2, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$3;-><init>(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private isStreamable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/midi"

    .line 549
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/sp-midi"

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/mid"

    .line 551
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/imy"

    .line 552
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/imelody"

    .line 553
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private shouldDownloadFileInstead(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "http"

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 533
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->isStreamable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private startDownload(Landroid/net/Uri;)V
    .locals 3

    .line 557
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/music/DownloadViewContent;

    iget-object v2, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    invoke-direct {v1, v2, p1}, Lcom/sonyericsson/music/DownloadViewContent;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public runIntent()V
    .locals 2

    .line 459
    iget-boolean v0, p0, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->mStartPlayback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isContainerUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;->handleMusicIntentForContainers(Landroid/content/Intent;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/ViewRequestController$IntentHandler;->mActivity:Lcom/sonyericsson/music/MusicActivity;

    new-instance v1, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler$1;-><init>(Lcom/sonyericsson/music/ViewRequestController$ViewUriHandler;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/MusicActivity;->doAsync(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
