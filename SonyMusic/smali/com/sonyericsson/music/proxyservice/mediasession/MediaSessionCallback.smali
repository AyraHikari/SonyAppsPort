.class public Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;
.super Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.source "MediaSessionCallback.java"

# interfaces
.implements Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;
    }
.end annotation


# static fields
.field public static final MEDIA_SESSION_CUSTOM_COMMAND_SHUFFLE_NEXT:Ljava/lang/String; = "com.sonyericsson.music.mediasession.customcommand.SHUFFLE_NEXT"


# instance fields
.field private mCurrentPlaybackState:I

.field private mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

.field private mIsStarted:Z

.field private mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    return-void
.end method

.method private playContainer(Ljava/lang/String;)Z
    .locals 4

    .line 269
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->interpret(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;

    move-result-object p1

    .line 270
    iget-object v0, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->contentUri:Landroid/net/Uri;

    .line 271
    iget p1, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->containerPos:I

    .line 273
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {v1, v0, p1, v3}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2

    .line 278
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v3

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {v1, v0, p1, v3}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2

    .line 280
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {p1, v0, v3, v2}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private playRootCategory(Ljava/lang/String;)Z
    .locals 3

    .line 257
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_NON_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserIdAsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v1, v0, v2}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2

    :cond_0
    return v0
.end method

.method private playSingleTrack(Ljava/lang/String;)Z
    .locals 3

    .line 345
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->interpret(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;

    move-result-object p1

    .line 346
    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->contentUri:Landroid/net/Uri;

    .line 348
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {v0, p1, v1, v1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    const/4 p1, 0x1

    return p1
.end method

.method private playTrackInContainer(Ljava/lang/String;)Z
    .locals 5

    .line 305
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->interpret(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;

    move-result-object p1

    .line 306
    iget-object v0, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    iget p1, p1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->containerPos:I

    .line 309
    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->equals(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    sget-object v1, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->TRACKS_BROWSABLE:Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MusicLibraryCategory;->getMediaBrowserIdAsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1, p1, v3}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2

    .line 315
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 317
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {v1, v0, p1, v3}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2

    .line 324
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    return v3

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {v1, v0, p1, v3}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayContent(Landroid/net/Uri;IZ)V

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 367
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz p2, :cond_0

    const-string p2, "com.sonyericsson.music.mediasession.customcommand.SHUFFLE_NEXT"

    .line 368
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    invoke-interface {p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onShuffleNext()V

    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 138
    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onStartWinding(Z)V

    :cond_0
    return-void
.end method

.method public onHeadsetHookPattern(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$ClickState;)V
    .locals 1

    .line 383
    sget-object v0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$1;->$SwitchMap$com$sonyericsson$music$common$CustomHeadsetHookHandler$ClickState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 404
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->onSkipToPrevious()V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->onSkipToNext()V

    goto :goto_0

    .line 385
    :pswitch_2
    iget p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mCurrentPlaybackState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->onPause()V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->onPlay()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 186
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/16 v1, 0x4f

    if-eq v1, v0, :cond_0

    const/16 v1, 0x55

    if-ne v1, v0, :cond_3

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->handleHeadsetHook()V

    return v2

    :cond_1
    if-ne v1, v2, :cond_3

    const/16 v1, 0x5a

    if-eq v1, v0, :cond_2

    const/16 v1, 0x59

    if-ne v1, v0, :cond_3

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_3

    .line 199
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onStopWinding()V

    return v2

    .line 206
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlay()V

    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 231
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz p2, :cond_1

    .line 232
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId;->interpret(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;

    move-result-object p2

    .line 233
    iget-object v0, p2, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->contentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget p2, p2, Lcom/sonyericsson/music/proxyservice/mediabrowser/MediaBrowserId$MediaBrowserPlaybackInfo;->containerPos:I

    .line 241
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 246
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->playRootCategory(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 247
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->playContainer(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 248
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->playTrackInContainer(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 249
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->playSingleTrack(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 149
    invoke-interface {v0, v1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onStartWinding(Z)V

    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onSeekTo(J)V

    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onSkipToNext()V

    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onSkipToPrevious()V

    :cond_0
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    long-to-int p2, p1

    const/4 p1, 0x1

    sub-int/2addr p2, p1

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0, p2, p1}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onSetPlayQueuePosition(IZ)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;->onStop()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mIsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mIsStarted:Z

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->onDestroy()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    return-void
.end method

.method public start(Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mIsStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mIsStarted:Z

    .line 73
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mListener:Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback$MediaSessionCallbackListener;

    .line 74
    new-instance p1, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-direct {p1}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    .line 75
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mHeadsetHookHandler:Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/music/common/CustomHeadsetHookHandler;->setListener(Lcom/sonyericsson/music/common/CustomHeadsetHookHandler$HeadsetHookPatternListener;)V

    :cond_0
    return-void
.end method

.method public updatePlaybackState(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/mediasession/MediaSessionCallback;->mCurrentPlaybackState:I

    return-void
.end method
