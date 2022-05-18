.class public Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;
.super Ljava/lang/Object;
.source "MusicWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;
    }
.end annotation


# instance fields
.field private final mAlbumArtCacheSize:I

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mClosed:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentAlbumArt:Landroid/graphics/Bitmap;

.field private mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mClosed:Z

    .line 61
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07015f

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mAlbumArtCacheSize:I

    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    .line 67
    new-instance p1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 68
    new-instance p1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;
    .locals 4

    .line 149
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->requestAlbumArtAndGetSourceIcon(Lcom/sonyericsson/music/common/Track;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, ""

    const v3, 0x7f100187

    .line 152
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 159
    :cond_0
    new-instance p1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    iget-object v3, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setTrack(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    .line 160
    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setSourceIcon(Landroid/graphics/Bitmap;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    return-object p1
.end method

.method private requestAlbumArtAndGetSourceIcon(Lcom/sonyericsson/music/common/Track;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 169
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 171
    invoke-static {v3, v2}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v7, v1

    .line 175
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v2, :cond_4

    if-eqz v7, :cond_4

    .line 177
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 180
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 181
    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget v6, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mAlbumArtCacheSize:I

    new-instance v8, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;

    invoke-direct {v8, p0, v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;-><init>(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$1;)V

    move v5, v6

    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    :cond_3
    return-object v0

    .line 185
    :cond_4
    invoke-static {v1}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v2, :cond_6

    .line 187
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAlbumArtUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v7, p1

    .line 190
    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget v6, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mAlbumArtCacheSize:I

    new-instance v8, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;

    invoke-direct {v8, p0, v0}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$WidgetOnDecodedListener;-><init>(Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;Lcom/sonyericsson/music/musicwidget/MusicWidgetManager$1;)V

    move v5, v6

    invoke-virtual/range {v2 .. v8}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->load(Ljava/lang/String;IIILjava/lang/String;Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;)Z

    return-object v0

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->setAlbumArt(Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 123
    iget-boolean v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mClosed:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    new-instance v1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setBufferingSpinnerState(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setPlayStatus(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mClosed:Z

    :cond_0
    return-void
.end method

.method public handlePlaybackIntent(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mClosed:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-virtual {v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->hasWidgets()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p2

    .line 84
    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setBufferingSpinnerState(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 83
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    goto/16 :goto_3

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    goto :goto_3

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    iget-object p3, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 109
    iget-object p1, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p2

    .line 110
    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setBufferingSpinnerState(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setPlayStatus(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    goto :goto_3

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 96
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 98
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez v0, :cond_5

    .line 100
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    goto :goto_2

    .line 102
    :cond_5
    new-instance p1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    iget-object p2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;)V

    .line 104
    :goto_2
    iget-object p2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    .line 105
    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setBufferingSpinnerState(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p3}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setPlayStatus(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 104
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public populateAllViews(Lcom/sonyericsson/music/common/Track;Z)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-virtual {v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->hasWidgets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setupIntents()Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setPlayStatus(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mCurrentAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setAlbumArt(Landroid/graphics/Bitmap;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->populateAllViews(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public setupButtons(Z)V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-virtual {v0}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->hasWidgets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    new-instance v1, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setupIntents()Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->setPlayStatus(Z)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    .line 135
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->populateAllViews(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void
.end method

.method public updateArt(Lcom/sonyericsson/music/common/Track;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->mRemoteViewsManager:Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/musicwidget/MusicWidgetManager;->createTrackAndIconBuilder(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager$WidgetRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/musicwidget/RemoteViewsManager;->partiallyUpdateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method
